import React from 'react';
import PublicationContainer from './publication_container';

const Main = ({ children }) => (
  <div id='main'>
    <PublicationContainer />
    { children }
  </div>
);

export default Main;
