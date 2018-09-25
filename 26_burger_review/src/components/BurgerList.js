import React, { Component } from 'react';
import BurgerItem from './BurgerItem'

const BurgerList = (props) => {

  const mapBurgers = props.burgers.map(burg => <BurgerItem key={burg.id} burger={burg} handleDelete={props.handleDelete} handleShow={props.handleShow}/>)

  return (
    <div className="BurgerList">
      {mapBurgers}
    </div>
  )
}

export default BurgerList
