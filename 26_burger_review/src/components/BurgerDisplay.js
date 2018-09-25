import React, { Component } from 'react';

const BurgerDisplay = (props) => {

  return (
    <div className="BurgerDisplay">
      <img src={props.burger.imgURL}/>
      <br/>
      <h1>{props.burger.name}</h1>
      <br/>
      <select value={props.burger.category} onChange={props.handleSetCategory}>
        <option value="Relatable">Relatable</option>
        <option value="Bougie">Bougie</option>
      </select>
    </div>
  )
}

BurgerDisplay.defaultProps = {
  burger: {
    imgURL: "",
    name: "choose burger",
    category: 'somthing'
  }
}

export default BurgerDisplay
