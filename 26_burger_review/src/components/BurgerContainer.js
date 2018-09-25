import React, { Component } from 'react';
import BurgerList from './BurgerList'
import BurgerFilter from './BurgerFilter'

export default class BurgerContainer extends Component {
  state = {
    term: 'All'
  }

  handleFilter = (e) => {
    const term = e.target.value

    this.setState({term})
  }

  filterBurgerList = () => {
    if (this.state.term === 'All') {
      return this.props.burgers
    }else{
      return this.props.burgers.filter(burg => burg.category === this.state.term)
    }
  }


  render(){
    console.log("FLIT stat", this.state);
    return (
      <div className="BurgerContainer">
        <BurgerFilter handleFilter={this.handleFilter}/>
        <BurgerList burgers={this.filterBurgerList()} handleDelete={this.props.handleDelete} handleShow={this.props.handleShow}/>
      </div>
    )
  }
}
