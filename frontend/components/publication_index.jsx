import React from 'react';
import Publication from './publication';

class PublicationIndex extends React.Component {
  constructor(props){
    super(props);
  }

  componentWillMount(){
    this.props.getPublications();
  }

  render() {
    let display = [];
    display = this.props.publications.map(publication => {
      return <Publication key={ publication.id } info={ publication }/>;
    });
    return(
      <section className='wrapper'>
        <div className='index'>
          { display }
        </div>
      </section>

    );
  }
}

export default PublicationIndex;
