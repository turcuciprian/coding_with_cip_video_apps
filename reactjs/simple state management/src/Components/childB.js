import React from "react";

const ChildB = (props) => {
    return <div className="childB">ChildB Contents<br />
        <button onClick={() => {
            //
            props.childAFunction('from ChildB')
        }}>Change ChildA State</button><br />
        <button onClick={() => {
            //
            props.parentFunction('from childB');
        }}>Change parent State</button><br/>
        {props.childAValue}
    </div>
}
export default ChildB;