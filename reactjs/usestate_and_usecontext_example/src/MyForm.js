import React, { useState, useContext } from "react";
import theContext from "./theContext";

function MyForm() {
  const [my_value, setMyValue] = useState("");
  const { myFieldValue, setMyFieldValue } = useContext(theContext);
  return (
    <div>
      <div>
        Local Value: <b>{my_value}</b>
      </div>
      <div>
        Context Value: <b>{myFieldValue}</b>
      </div>
      <input
        type="text"
        value={my_value}
        onChange={newValue => {
          setMyValue(newValue.target.value);
        }}
      />
      <button onClick={()=>{
          setMyFieldValue(my_value);
      }}>Save to Context</button>
    </div>
  );
}
export default MyForm;
