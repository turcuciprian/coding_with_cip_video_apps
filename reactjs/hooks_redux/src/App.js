import React from 'react';
import './App.css';
import ComponentA from './Components/ComponentA';
import ComponentB from './Components/ComponentB';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <ComponentA />
        <ComponentB />
      </header>
    </div>
  );
}

export default App;
