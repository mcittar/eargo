import PublicationReducer from '../publication_reducer';
import RootReducer from '../root_reducer';
import { createStore } from 'redux';

const pub1 = { data: { name: "TEST" } };
const pub2 = { data: { name: "SECONDTEST" } };

describe('Reducers', () => {
  describe('PublicationReducer', () => {

    test('should initialize with an empty object as the default state', () => {
      expect(PublicationReducer(undefined, {})).toEqual([]);
    });

    describe('handling the RECEIVE_PUBLICATIONS action', () => {
      let action, testPub;

      beforeEach(() => {
        action = { type: 'RECEIVE_PUBLICATIONS', publications: pub1 };
      });

      test('should replace the state with the action\'s publications', () => {
        const state = PublicationReducer(undefined, action);
        expect(state).toEqual(pub1);
      });

      test('should not modify the old state', () => {
        let oldState = { 1: 'oldState' };
        PublicationReducer(oldState, action);
        expect(oldState).toEqual({ 1: 'oldState' });
      });
    });

  });
});
