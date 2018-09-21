import React, { Component } from 'react'

class StockTicker extends Component {
  constructor() {
    super()
    console.log('ticker constructor')
    this.state = {
      price: Math.floor(Math.random() * 100),
      color: 'white'
    }
  }


  componentDidMount()  {
    console.log('ticker mounted')
    this.interval = setInterval(() => {
      this.setState({price:  Math.floor(Math.random() * 100)})
    }, 1000)
  }

  componentWillUnmount() {
    clearInterval(this.interval)
  }

  componentDidUpdate(prevProps, prevState) {
    if (prevState.price < this.state.price) {
      this.setState({color: 'green'})
    } else if (prevState.price > this.state.price) {
      this.setState({color: 'red'})
    }
  }

  render () {
    console.log(this.state)
    return (
      <div className="app-children">
        <div id="ticker">
          <h2>Flatiron</h2>
          <div style={{color: this.state.color}}>
            {this.state.price}
          </div>
        </div>
      </div>
    )
  }
}

export default StockTicker
