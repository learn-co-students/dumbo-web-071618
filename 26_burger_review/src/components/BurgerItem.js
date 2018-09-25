import React, { Component } from 'react';

const BurgerItem = ({handleDelete, handleShow, burger: {name, id}}) => {
  // console.log('handle', handleShow);
  return (
    <div>
      <div className="BurgerItem">
        <h2>{name}</h2>
      </div>
      <div className="BurgerBottomBun">
        <button onClick={() => handleShow(id)}>Show</button>
        <button onClick={() => handleDelete(id)}>Delete</button>
      </div>
    </div>
  )
}

export default BurgerItem
