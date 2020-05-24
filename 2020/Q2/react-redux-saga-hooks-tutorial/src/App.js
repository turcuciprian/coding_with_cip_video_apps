import React from 'react';
import './App.css';
import ActionComponent from './components/ActionComponent';
import OutputComponent from './components/OutputComponent';

function App() {
  return (
    <div className="App">
      <header className="App-header">
      <OutputComponent />
        <ActionComponent />

      </header>
    </div>
  );
}

export default App;
