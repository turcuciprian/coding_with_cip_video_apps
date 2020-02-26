import React, { useState } from "react";
import "./App.css";
import MyForm from "./MyForm";
import theContext from "./theContext";
import ComponentB from "./ComponentB";

function App() {
  const [myFieldValue, setMyFieldValue] = useState("");
  const { Provider } = theContext;
  return (
    <div className="App">
      <header className="App-header">
        <Provider value={{ myFieldValue, setMyFieldValue }}>
          <MyForm />
          <br />
          <ComponentB />
        </Provider>
      </header>
    </div>
  );
}

export default App;
