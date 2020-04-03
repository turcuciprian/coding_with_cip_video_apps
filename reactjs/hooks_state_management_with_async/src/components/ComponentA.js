import React, { useContext } from "react";
import { ComponentAWrapper } from "../other/styledComponents";
import { myContext } from "../other/reducer";

export const ComponentA = () => {
  const tempContext = useContext(myContext);
  return (
    <ComponentAWrapper>
      <button onClick={tempContext.makeRequest}>Do Async Request</button>
    </ComponentAWrapper>
  );
};
