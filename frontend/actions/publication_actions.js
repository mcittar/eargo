import * as APIUtil from '../util/publication_api_util';
export const RECEIVE_PUBLICATIONS = 'RECEIVE_PUBLICATIONS';

export const scrapePublications = () => dispatch => (
  APIUtil.scrapePublications().then(publications => {
    dispatch(receivePublications(publications));
  })
);

export const receivePublications = publications => ({
  type: RECEIVE_PUBLICATIONS,
  publications
});
