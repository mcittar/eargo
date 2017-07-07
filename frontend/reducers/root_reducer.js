import { combineReducers } from 'redux';
import PublicationReducer from './publication_reducer';

const RootReducer = combineReducers({
  publications: PublicationReducer
});

export default RootReducer;
