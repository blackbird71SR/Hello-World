import React from "react";
import ReactDOM from "react-dom";

const HelloWorld = () => {
  return <h1>Hell World, from ReactJs!</h1>
}

ReactDOM.render(
  <HelloWorld />, 
  document.getElementById("root")
);