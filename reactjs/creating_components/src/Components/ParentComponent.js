import React from "react";
import ChildA from "./childA";

const OurParentComponent = () => {
    return <div className="parent">
        Parent Contents
        <ChildA />
    </div>
}

export default OurParentComponent;