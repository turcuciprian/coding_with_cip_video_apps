import React, { useState } from "react";
import ChildB from "./childB";

const ChildA = (props) => {
    const [childAState, setChildAState] = useState('');
    return <div className="childA">
        ChildA Contents:<br/>
        {childAState}
        <ChildB childAFunction={(newValue)=>{
            setChildAState(newValue)
        }} parentFunction={props.parentFunction} childAValue="from ChildA" />
        <button onClick={()=>{
            props.parentFunction('from ChildA');
        }}>Change parent State</button><br/>
        <button onClick={()=>{
            setChildAState('ChildA new state');
        }}>Change ChildA State</button><br/>
        {props.parentValue}

    </div>
}
export default ChildA;