const increment = () => {
  return {
    type: "INCREMENT",
  };
};
const decrement = () => {
  return {
    type: "DECREMENT",
  };
};
const getAsyncData = () => {
  return {
    type: "GET_ASYNC_DATA",
  };
};

export default { increment, decrement, getAsyncData };
