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
        <div className='header'>
          <div className='eargo-logo'>
            <img src='https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Logo_for_company_Eargo.jpg/220px-Logo_for_company_Eargo.jpg'></img>
          </div>
          <span className='mentions'>Mentions</span>
        </div>
        <div className='index'>
          { display }
        </div>
      </section>

    );
  }
}

export default PublicationIndex;
