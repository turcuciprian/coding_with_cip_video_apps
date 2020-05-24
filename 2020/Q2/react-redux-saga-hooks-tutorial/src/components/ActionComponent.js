import React from "react";
import { useDispatch } from "react-redux";
import allActions from "../actions/allActions";

const ActionComponent = () => {
  const dispatch = useDispatch();
  const pullAsyncDataFunc = () => {
    //
    dispatch(allActions.getAsyncData());
  };
  return (
    <div>
      <button
        onClick={() => {
          dispatch(allActions.increment());
          //
        }}
      >
        Increment
      </button>{" "}
      -{" "}
      <button
        onClick={() => {
          dispatch(allActions.decrement());

          //
        }}
      >
        Decrement
      </button>
      <div>
        <button onClick={pullAsyncDataFunc}>Pull Async Data</button>
      </div>
    </div>
  );
};
export default ActionComponent;
