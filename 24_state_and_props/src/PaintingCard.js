import React, { Component } from 'react'

export default class PaintingCard extends Component {
  render() {
    const {image, title, artist} = this.props.painting

    return (
      <div className='item'>
        <div className='ui small image'>
          <img src={image} alt=''/>
        </div>
        <div className='middle aligned content'>
          <div className='header'>{title} by {artist.name}</div>
        </div>
      </div>
    )
  }
}