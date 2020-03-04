import React from "react";
import ChildB from "./childB";

const ChildA = () => {
    return <div className="childA">
        ChildA Contents
        <ChildB />

    </div>
}
export default ChildA;