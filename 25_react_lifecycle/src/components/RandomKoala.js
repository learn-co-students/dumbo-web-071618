import React, { Component } from 'react'

class RandomKoala extends Component {
  constructor(props) {
    super(props)
    console.log('koala constructor')
    this.state = {koala: {}}
  }

  componentDidMount() {
    console.log('koala did mount')
    fetch('http://localhost:3000/koalas/1')
      .then(resp => resp.json())
      .then(resp => this.setState({koala: resp}))
  }

  render () {
    console.log('koala render', this.state)
    return (
      <div className="app-children">
        <img src={this.state.koala.image_url} alt=''/>
      </div>
    )
  }
}

export default RandomKoala