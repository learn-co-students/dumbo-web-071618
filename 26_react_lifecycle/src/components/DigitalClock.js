import React, { Component } from 'react'

class DigitalClock extends Component {
  constructor() {
    super()
    console.log('digital clock constructor')
    this.state = {time: new Date().toLocaleTimeString()}
  }


  componentDidMount()  {
    console.log('clock mounted')
    this.interval = setInterval(() => {
      this.setState({time: new Date().toLocaleTimeString()})
    }, 1000)
  }

  componentWillUnmount() {
    clearInterval(this.interval)
  }

  render () {
    console.log('clock rendered', this.state)
    return (
      <div className="app-children">
        <h2 id="digital">
          {this.state.time}
        </h2>
      </div>
    )
  }
}

export default DigitalClock