import React from "react";

const GrandChildComponent = (props) => {
    return <div className="second-child">
        <p>{props.parentValue}</p>
        <p>{props.firstChildValue}</p>
        <button onClick={() => {
            props.parentFunction('new custom parent state');
        }}>Change First Parent State</button>
        <br />
        <button onClick={() => props.setChildState('new first child state value')}>Change First Child State</button>
    </div>
}
export default GrandChildComponent;