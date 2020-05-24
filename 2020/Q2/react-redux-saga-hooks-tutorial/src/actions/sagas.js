import { put, takeLatest, all } from "redux-saga/effects";
import axios from "axios";
const runOurAction = function* () {
  let remoteData;
  yield axios.get("https://httpbin.org/json").then((resp) => {
    remoteData = resp.data;
  });
  yield put({ type: "SET_DATA", payload: remoteData });
};
function* getAsyncDataWatcher() {
  yield takeLatest("GET_ASYNC_DATA", runOurAction);
}

export default function* rootSaga() {
  yield all([getAsyncDataWatcher()]);
}
