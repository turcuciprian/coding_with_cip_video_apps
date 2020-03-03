import React, { useState } from "react";
import allActions from "../Actions";
import { useDispatch } from "react-redux";

const ComponentA = () => {
    const dispatch = useDispatch();
    const [textboxData, setTextboxData] = useState('');
    return <div className="component-A">
        <input type="text" placeholder="new item name" value={textboxData} onChange={(newData) => setTextboxData(newData.target.value)} /><br />
        <button onClick={() => {
            // to-do: dispatch action
            dispatch(allActions.addToList(textboxData));
            setTextboxData('');
        }}>Add List Item</button>
    </div>
}

export default ComponentA;