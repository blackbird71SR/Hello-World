// This is the REAL "hello world" for CUDA!
// It takes the string "Hello ", prints it, then passes it to CUDA with an array
// of offsets. Then the offsets are added in parallel to produce the string "World!"
// By Ingemar Ragnemalm 2010
 
#include <stdio.h>
 
const int N = 5; 
const int blocksize = 5; 
 
__global__ 
void hello(char *b) 
{
  switch(threadIdx.x){
    case 0: b[threadIdx.x] = 'W'; break;
    case 1: b[threadIdx.x] = 'o'; break;
    case 2: b[threadIdx.x] = 'r'; break;
    case 3: b[threadIdx.x] = 'l'; break;
    case 4: b[threadIdx.x] = 'd'; break;
    default: break;
  }
}
 
int main()
{
	char a[N] = "Hello";
	char b[N];
 
	char *bd;
	const int csize = N*sizeof(char);
 
	printf("%s", a);
 
	cudaMalloc( (void**)&bd, csize ); 
	
	dim3 dimBlock( blocksize, 1 );
	dim3 dimGrid( 1, 1 );
	hello<<<dimGrid, dimBlock>>>(bd);
	cudaMemcpy( b, bd, csize, cudaMemcpyDeviceToHost ); 
	cudaFree( bd );
	
	printf("%s %s\n", a, b);
	return EXIT_SUCCESS;
}
