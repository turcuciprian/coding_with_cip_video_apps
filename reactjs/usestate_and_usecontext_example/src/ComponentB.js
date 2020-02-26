import React, { useContext } from "react";
import theContext from "./theContext";

function ComponentB() {
  const { myFieldValue } = useContext(theContext);
  return (
    <div>
      Component B Value from Context:
      <br />
      {myFieldValue}
    </div>
  );
}
export default ComponentB;
