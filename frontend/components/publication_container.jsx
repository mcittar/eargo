import React from 'react';
import PublicationIndex from './publication_index';
import { connect } from 'react-redux';
import { scrapePublications } from '../actions/publication_actions';

const mapStateToProps = state => ({
  publications: state.publications
});

const mapDispatchToProps = dispatch => ({
  getPublications: () => dispatch(scrapePublications)
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(PublicationIndex);
