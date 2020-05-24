import {counter,customAsyncData} from './counter';
import {combineReducers } from  'redux';
const rootReducer = combineReducers({counter,customAsyncData});
export default rootReducer;