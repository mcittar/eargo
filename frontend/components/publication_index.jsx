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
      return <li key={ publication.id }>
              <Publication info={ publication }/>
            </li>;
    });
    return(
      <div>
        <ul>
          { display }
        </ul>
      </div>
    );
  }
}

export default PublicationIndex;
