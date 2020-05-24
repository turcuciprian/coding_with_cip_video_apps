import React from "react";
import { useDispatch } from 'react-redux';
import allActions from '../actions'

const ActionComponent = () => {
    const dispatch = useDispatch();
  return (
    <div>
      <button
        onClick={() => {
            dispatch(allActions.counter.increment());
          //
        }}
      >
        Increment
      </button>{" "}
      -{" "}
      <button
        onClick={() => {
            dispatch(allActions.counter.decrement());

          //
        }}
      >
        Decrement
      </button>
    </div>
  );
};
export default ActionComponent;
