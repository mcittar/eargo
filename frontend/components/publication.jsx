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
          <div className='image'>
            <img src={ info.logo }/>
          </div>
          <div className='content'>
            <div>
              <span>{ info.name }</span><span>{ info.site_type }</span>
            </div>
            <div>Launched in { info.year } by { info.creator }</div>
            <div>{ info.url }</div>
            <div>Editor: { info.editor }</div>
            <div>Owned By: { info.owner }</div>
          </div>
        </section>
    );
  }
}

export default Publication;
