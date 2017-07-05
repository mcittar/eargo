import React from 'react';
import GifContainer from './gif_container';
import PublicationContainer from './publication_container';

const Main = ({ children }) => (
  <div id='main'>
    <GifContainer />
    { children }
  </div>
);

export default Main;
