const addToList = (newListItem) =>{
    return {
        type: 'ADD_ITEM',
        payload: newListItem
    }
}
export default addToList;