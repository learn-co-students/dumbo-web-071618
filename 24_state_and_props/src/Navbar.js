import React, { Component } from 'react'

const colors = [
  "red",
  "orange",
  "yellow",
  "olive",
  "green",
  "teal",
  "blue",
  "violet",
  "purple",
  "pink",
  "brown",
  "grey",
  "black"
]

export default class Navbar extends Component {
  // constructor() {
  //   super()
  //   this.state = {color: this.randomColor()}
  //   this.handleClick = this.handleClick.bind(this)
  // }

  handleClick = () => {
    this.setState({color: this.randomColor()})
    // doesn't trigger rerender!
    // this.state.color = this.randomColor()
    // console.log(this.state)
  }

  randomColor = () => {
    const index = Math.floor(Math.random() * colors.length)
    return colors[index]
  }

  state = {color: this.randomColor()}

  render() {

    return (
      <div className={`ui ${this.state.color} inverted menu`}>
        <div className='header'>
          <div className='content'>Paintrset</div>
          <i className='icon paint brush'></i>
          <div className='sub header'>An App for Painting</div>
        </div>
        <div className='right menu'>
          <div className='item'>
            <div className='ui button' onClick={this.handleClick}>Gorgeous button</div>
          </div>
        </div>
      </div>
    )
  }
}

