import React from "react";
import ReactDOM from "react-dom";

const HelloWorldReact = () => {
  return <h1>Hell World, from ReactJs!</h1>
}

ReactDOM.render(
  <HelloWorldReact />, 
  document.getElementById("root")
);