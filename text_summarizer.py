
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from time import time

ted_main_df = pd.read_csv('ted_main.csv', encoding = 'utf-8')
transcripts_df = pd.read_csv('transcripts.csv', encoding = 'utf-8')

from sklearn.feature_extraction.text import TfidfVectorizer
vectorizer = TfidfVectorizer(stop_words="english", use_idf=True,
                             ngram_range=(1,1),
                             min_df=0.05,
                             max_df=0.3)
t0 = time()
tfidf = vectorizer.fit_transform(transcripts_df['transcript'])

def rank_words(terms, feature_matrix):
    sums = feature_matrix.sum(axis = 0)
    data = []
    for col, term in enumerate(terms):
        data.append((term,sums[0,col]))
    ranked = pd.DataFrame(data, columns= ['term','rank']).sort_values('rank',ascending = False)
    return ranked
ranked = rank_words(terms =vectorizer.get_feature_names(),feature_matrix=tfidf)

figure, axis = plt.subplots(figsize=(20,12), ncols = 1, nrows = 1)
sns.barplot(x = 'term', y= 'rank',data = ranked[:20],palette = 'Reds_r', ax = axis)
plt.savefig('rank.png')

dic = {ranked.loc[i,'term'].upper():ranked.loc[i,'rank'] for i in range(0,len(ranked))}

from wordcloud import WordCloud
wordcloud = WordCloud(background_color='white',
                      max_words = 100).generate_from_frequencies(dic)
fig = plt.figure(1,figsize=(16,20))
plt.imshow(wordcloud,interpolation="bilinear")
plt.axis('off')
plt.savefig('wordcloud.png')

############
from sklearn.decomposition import LatentDirichletAllocation

n_topics =10
lda = LatentDirichletAllocation(n_components=n_topics,random_state=0)

topics = lda.fit_transform(tfidf)
top_n_words = 7
t_words,word_strengths = {},{}
for t_id,t in enumerate(lda.components_):
    t_words[t_id] = [vectorizer.get_feature_names()[i] for i in t.argsort()[:-top_n_words-1:-1]]
    word_strengths[t_id]= t[t.argsort()[:-top_n_words-1:-1]]
t_words    

    
from sklearn.decomposition import NMF
n_topics = 10
nmf = NMF(n_components=n_topics,random_state=0)
topics = nmf.fit_transform(tfidf)
top_n_words = 7
t_words,word_strengths = {},{}
for t_id,t in enumerate(nmf.components_):
    t_words[t_id] = [vectorizer.get_feature_names()[i] for i in t.argsort()[:-top_n_words-1:-1]]
    word_strengths[t_id]= t[t.argsort()[:-top_n_words-1:-1]]
t_words



from sklearn.pipeline import Pipeline
pipe = Pipeline([
    ('tfidf', vectorizer),
    ('nmf', nmf)
])

document_id = 4
t = pipe.transform([transcripts_df['transcript'].iloc[document_id]]) 
print('Topic distribution for document #{}: \n'.format(document_id),t)
print('Relevant topics for document #{}: \n'.format(document_id),np.where(t>0.01)[1])
print('\nTranscript:\n',transcripts_df['transcript'].iloc[document_id][:500],'...')

talk = ted_main_df[ted_main_df['url']==transcripts_df['url'].iloc[document_id]]
print('\nTrue tags from ted_main.csv: \n',talk['tags'])

t = pipe.transform(transcripts_df['transcript']) 
t = pd.DataFrame(t, columns=[str(t_words[i]) for i in range(0,10)])

new_t = t.melt()


fig, ax = plt.subplots(figsize=(12,6), ncols=1, nrows=1)
sns.violinplot(x="variable", y="value", data=new_t, palette='Reds', ax=ax)

plt.setp( ax.xaxis.get_majorticklabels(), rotation=-45, ha="left", rotation_mode="anchor") 

plt.show()
