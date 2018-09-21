import React, { Component } from 'react'

class WidgetSelector extends Component {
  constructor(props) {
    super(props)
    console.log('widgetselector constructor');
  }

  // toggleShow = () => {
  //   this.setState({})
  // }

  render () {
    return (
      <div className="app-children">
        <button onClick={this.props.toggleShow}>Switch View</button>
      </div>
    )
  }
}

export default WidgetSelector
