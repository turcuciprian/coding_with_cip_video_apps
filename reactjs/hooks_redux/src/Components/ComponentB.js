import React from "react";
import { useSelector } from "react-redux";

const ComponentB = () => {
    const listItemsData = useSelector(state => state.listItems);
    return <div className="component-B">
        <h3>List Items:</h3>
        {listItemsData.map((item, index) => {
            return <div key={`eachItem${index}`}>{item.toString()}</div>
        })}

    </div>
}
export default ComponentB;