import React, { Component } from 'react';
import Navbar from './Navbar'
import PaintingContainer from './PaintingContainer'
import 'semantic-ui-css/semantic.min.css'

class App extends Component {
  render() {
    return (
      <div className="App">
        <Navbar />
        <PaintingContainer />
      </div>
    );
  }
}

export default App;
