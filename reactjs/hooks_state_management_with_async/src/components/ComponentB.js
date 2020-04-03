import React, { useContext } from "react";
import { ComponentBWrapper } from "../other/styledComponents";
import { myContext } from "../other/reducer";

export const ComponentB = () => {
  const tempContext = useContext(myContext);

  const {author, date, title} =
    tempContext && tempContext.state && tempContext.state.response
      ? tempContext.state.response.data.slideshow
      : "";
  return (
    <ComponentBWrapper>
      <div>
        <b>Author:</b>
        {author}
      </div>
      <div>
        <b>Date:</b>
        {date}
      </div>
      <div>
        <b>Title:</b>
        {title}
      </div>
    </ComponentBWrapper>
  );
};
