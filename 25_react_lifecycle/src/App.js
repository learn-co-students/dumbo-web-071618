import React, { Component } from 'react';
import WidgetSelector from './components/WidgetSelector'
import StockTicker from './components/StockTicker'
import DigitalClock from './components/DigitalClock'

class App extends Component {
  constructor(props) {
    super(props)
    console.log('app constructor');
    this.state = {showClock: true}
  }

  toggleShow = (e) => {
    console.log(e)
    this.setState((prevState) => {
      return {showClock: !prevState.showClock}
    })
  }

  render() {
    console.log('app render', this.state)
    return (
      <div id='app'>
        <WidgetSelector toggleShow={this.toggleShow} />
        { this.state.showClock
          ? <DigitalClock />
          : <StockTicker />
        }
      </div>
    )
  }
}

export default App;


