import React from 'react';

class Publication extends React.Component {
  constructor(props){
    super(props);
  }

  render() {
    const { info } = this.props;
    console.log(this.props);
    return(
      <section className='spotlight'>
        <h1>{ info.id }</h1>
        <h1>{ info.name }</h1>
        <h1>{ info.url }</h1>
        <h1>{ info.logo }</h1>
        <h1>{ info.creator }</h1>
        <h1>{ info.editor }</h1>
        <h1>{ info.owner }</h1>
        <h1>{ info.year }</h1>
      </section>
    );
  }
}

export default Publication;
