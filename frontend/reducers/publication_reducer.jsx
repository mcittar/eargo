import { RECEIVE_PUBLICATIONS } from '../actions/publication_actions';

const PublicationReducer = (state = [], action) => {
  switch(action.type){
    case RECEIVE_PUBLICATIONS:
      return action.publications;
    default:
      return state;
  }
};

export default PublicationReducer;
