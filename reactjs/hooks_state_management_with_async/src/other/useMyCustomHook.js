import { useReducer, useCallback } from "react"
import { initialState, reducer } from "./reducer"
import { fetching,error, success } from "../actions/actionCreators";
import axios from 'axios';

export const useMyCustomHook = url =>{
    const [state, dispatch] = useReducer(reducer, initialState);

    const makeRequest = useCallback(async ()=>{
        dispatch(fetching());
        try{
            const response = await axios.get(url);
            console.log(response);
            dispatch(success(response));

        }catch(e){
            dispatch(error(e));
        }


    }, [url,dispatch])
    return [state, makeRequest];

}