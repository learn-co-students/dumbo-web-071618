import React from 'react'


class Painting extends React.Component {

  render() {
    console.log(this.props)
    return (
      <div>
        <h3>{this.props.painting.title}</h3>
        <h5>{this.props.painting.artist.name}</h5>
        <img src={this.props.painting.image} />
      </div>
    )
  }
}

export default Painting