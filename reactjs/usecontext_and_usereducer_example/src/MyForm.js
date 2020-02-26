import React, { useState, useContext } from "react";
import { store } from "./store";

function MyForm() {
  const [my_value, setMyValue] = useState("");
  const tempContext = useContext(store);
  return (
    <div>
      <div>
        Local Value: <b>{my_value}</b>
      </div>
      <div>
        Context Value: <b>{tempContext.state.myFormFieldValue}</b>
      </div>
      <input
        type="text"
        value={my_value}
        onChange={newValue => {
          setMyValue(newValue.target.value);
        }}
      />
      <button
        onClick={() => {
          tempContext.dispatch({
            type: "UPDATE_VALUE",
            payload: my_value
          });
        }}
      >
        Save to Context
      </button>
    </div>
  );
}
export default MyForm;
