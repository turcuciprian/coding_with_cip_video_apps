import React from "react";
import { useSelector } from "react-redux";

const OutputComponent = () => {
  const counter = useSelector((state) => state.counter);
  return <div>{counter}</div>;
};
export default OutputComponent;
