const requestPrefix = 'useAsyncCustomHook/';

export const FETCHING = () =>({type:`${requestPrefix}FETCHING`});
export const SUCCESS = () =>({type:`${requestPrefix}SUCCESS`});
export const ERROR = () =>({type:`${requestPrefix}ERROR`});