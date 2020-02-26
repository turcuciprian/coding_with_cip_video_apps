import React, { useContext } from "react";
import { store } from "./store";

function ComponentB() {
  const tempContext = useContext(store);
  return (
    <div>
      Component B Value from Context:
      <br />
      {tempContext.state.myFormFieldValue}
    </div>
  );
}
export default ComponentB;
