import React, { Component } from 'react';

class HelloWorld extends Component {
    constructor(propes) {
        super(props);

        this.state = {
            text: "Hello, world"
        }
    }

    render() {
        return(
            <div class="hello">
                <p class="world">
                    {this.state.text}
                </p>
            </div>
        );
    };
};

export default HelloWorld;