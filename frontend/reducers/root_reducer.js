import { combineReducers } from 'redux';
import ErrorsReducer from './errors_reducer';
import GifReducer from './gif_reducer';
import PublicationReducer from './publication_reducer';

const RootReducer = combineReducers({
  publications: PublicationReducer
});

export default RootReducer;
