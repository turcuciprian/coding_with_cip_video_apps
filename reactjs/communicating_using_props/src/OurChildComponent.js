import React, { useState } from "react";
import GrandChildComponent from "./GrandchildComponent";

const OurChildComponent =(props)=>{
    const [childState, setChildState] = useState('original first child state');
    return <div class="first-child">
        <b>{childState}</b>
        <GrandChildComponent parentFunction={props.parentFunction} firstChildValue={childState} parentValue={props.parentValue} setChildState={setChildState} />
    </div>
}
export default OurChildComponent;