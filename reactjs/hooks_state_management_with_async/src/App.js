import React from "react";
import "./App.css";
import { ComponentA } from "./components/ComponentA";
import { ComponentB } from "./components/ComponentB";
import { myContext } from "./other/reducer";
import { useMyCustomHook } from "./other/useMyCustomHook";

function App() {
  const { Provider } = myContext;
  const [state, makeRequest] = useMyCustomHook('https://httpbin.org/json');
  return (
    <Provider value={{state, makeRequest}}>
      <div className="App">
        <header className="App-header">
          <ComponentA />
          <ComponentB />
        </header>
      </div>
    </Provider>
  );
}

export default App;
