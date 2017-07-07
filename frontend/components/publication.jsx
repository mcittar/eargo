import React from 'react';

class Publication extends React.Component {
  constructor(props){
    super(props);
  }

  render() {
    const { info } = this.props;
    let created = `Launched in ${info.year}`;
    let editor;
    let owner;
    let type;

    if (info.site_type) {
      let capital = info.site_type.toLowerCase().replace( /\b./g, a => {
        return a.toUpperCase();
      });
      type = ` (${capital})`;
    }

    if (info.editor) {
      editor = `Editor: ${info.editor}`;
    }

    if (info.creator) {
      created += ` by ${info.creator.split(", ").join(" and ")}`;
    }

    if (info.owner) {
      owner = `Owned By: ${info.owner}`;
    }

    return(
        <section className='spotlight'>
          <div className='image'>
            <img src={ info.logo }/>
          </div>
          <div className='content'>
            <div>
              <span className='name'>{ info.name }{ type }</span>
            </div>
            <div>{ created }</div>
            <a href={ info.url }>{ info.url }</a>
            <div>{ editor }</div>
            <div>{ owner }</div>
          </div>
        </section>
    );
  }
}

export default Publication;
