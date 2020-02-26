import React, { useReducer } from "react";

const initialState = { myFormFieldValue: "" };
const store = React.createContext();
const { Provider } = store;
const StateProvider = ({ children }) => {
  const reducer = (state, action) => {
    switch (action.type) {
      case "UPDATE_VALUE":
        return {
          ...state,
          myFormFieldValue: action.payload
        };
        break;
      default:
        throw Error();
        break;
    }
  };
  const [state, dispatch] = useReducer(reducer, initialState);
  return <Provider value={{ state, dispatch }}>{children}</Provider>;
};

export { store, StateProvider };
