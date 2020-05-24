import React from "react";
import { useSelector } from "react-redux";

const OutputComponent = () => {
  const counter = useSelector((state) => state.counter);
  const customAsyncData = useSelector((state) => state.customAsyncData).payload;

  const { author, date, title } =
    customAsyncData &&
    customAsyncData.slideshow &&
    customAsyncData.slideshow.author
      ? customAsyncData.slideshow
      : { author: "", date: "", title: "" };

  return <div>
  <div>
    <p>
      {author}<br/>
      {title}<br/>
      {date}<br/>
    </p>
  </div>
  <br/>
  {counter}</div>;
};
export default OutputComponent;
