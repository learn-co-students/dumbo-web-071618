import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import BurgerContainer from './components/BurgerContainer'
import BurgerDisplay from './components/BurgerDisplay'

class App extends Component {

  state = {
    burgers: [],
    currentBurgId: null
  }


  componentDidMount() {
    fetch("http://localhost:3001/burgers")
      .then(res => res.json())
      .then(this.initialList)
    }

  initialList = (burgerList) => {
    this.setState({burgers: burgerList})
  }

  handleShow = (currentBurgId) => {
    this.setState({currentBurgId})
  }

  handleDelete = (bID) => {
    const deleteArray = this.state.burgers.filter(burg => burg.id !== bID)

    this.setState({burgers: deleteArray})
  }

  handleSetCategory = (e) => {
    const newArray = this.state.burgers.map(burger => {
      if(burger.id === this.state.currentBurgId) {
        return {...burger, category: e.target.value}
      }else {
        return burger
      }
    })

    this.setState({
      burgers: newArray
    }, this.persistBurg)
  }

  persistBurg = () => {
    const burg = this.state.burgers.find(burger => burger.id === this.state.currentBurgId)

    fetch(`http://localhost:3001/burgers/${burg.id}`, {
      method: 'PATCH',
      headers: {
        "Content-Type": 'application/json'
      },
      body: JSON.stringify(burg)
    })
    .then(res => res.json())
    .then(console.log)

  }


  findBurger = () => {
    if(this.state.currentBurgId !== null) {
      return this.state.burgers.find(burg => burg.id === this.state.currentBurgId)
    }else{
      return this.state.burgers[0]
    }
  }





  render() {
    console.log("STATE", this.state);
    return (
      <div id="App">
        <BurgerContainer burgers={this.state.burgers} handleDelete={this.handleDelete} handleShow={this.handleShow}/>
        <BurgerDisplay handleSetCategory={this.handleSetCategory} burger={this.findBurger()}/>
      </div>
    );
  }
}

export default App;
