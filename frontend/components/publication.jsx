import React from 'react';

class Publication extends React.Component {
  constructor(props){
    super(props);
  }

  render() {

    console.log(this.props);
    return(
      <div>
        <h1>{ this.props.info.id }</h1>
      </div>
    );
  }
}

export default Publication;
