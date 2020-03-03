import React, { useState } from 'react';
import './App.css';
import OurChildComponent from './OurChildComponent';

function App() {
  const [parentState, setParentState] = useState('original parent state');
  const myParentFunction = (newValue) => {
    setParentState(newValue);
  }
  return (
    <div className="App">
      <header className="App-header">
        <b>{parentState}</b>
        <OurChildComponent parentValue={parentState} parentFunction={myParentFunction} />
      </header>
    </div>
  );
}

export default App;
