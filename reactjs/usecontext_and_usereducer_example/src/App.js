import React, { useState } from "react";
import "./App.css";
import MyForm from "./MyForm";
import { StateProvider } from "./store";
import ComponentB from "./ComponentB";

function App() {
  const [myFieldValue, setMyFieldValue] = useState("");
  return (
    <div className="App">
      <header className="App-header">
        <StateProvider>
          <MyForm />
          <br />
          <ComponentB />
        </StateProvider>
      </header>
    </div>
  );
}

export default App;
