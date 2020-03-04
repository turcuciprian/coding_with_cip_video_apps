import React, {useState} from "react";
import ChildA from "./childA";

const OurParentComponent = () => {
    const [parentStateValue, setParentStateValue] = useState('');
    return <div className="parent">
        Parent Contents:<br/>{parentStateValue}
        <ChildA parentFunction={(newValue)=>{
            setParentStateValue(newValue);
        }} parentValue="test parent prop value"/>
        <button onClick={()=>{
            setParentStateValue('test 123');
        }}>Change Parent State</button>
    </div>
}

export default OurParentComponent;