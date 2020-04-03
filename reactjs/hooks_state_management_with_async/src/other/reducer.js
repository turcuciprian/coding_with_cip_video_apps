import { createContext } from "react";
import { FETCHING, SUCCESS, ERROR } from "../actions/actionTypes";

export const myContext = createContext();

export const initialState = {
  status: null,
  reponse: null
};

export const reducer = (state = initialState, { type, response } = {}) => {
  //
  switch (type) {
    case FETCHING:
      return { ...initialState, status: FETCHING };
    case SUCCESS:
      return { ...state, status: SUCCESS, response };
    case ERROR:
      return { ...state, status: ERROR, response };
    default:
      return state;
  }
};
