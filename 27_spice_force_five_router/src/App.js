import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import NotFound from './NotFound'
import Home from './Home'
import { SpiceGirl, Scary, Baby, Ginger, Posh, Sporty } from './spice-girls';
import { Route, NavLink, Switch } from 'react-router-dom';


export default class App extends Component {


  constructor(props){
    super(props)
    this.renderSpice = this.renderSpice.bind(this)
  }

  renderSpice(renderProps) {


    // console.log(renderProps.match.params.slug)

    const spiceGirl = this.state.spiceGirls.find((spiceGirl) => spiceGirl.slug == renderProps.match.params.slug)

    return <SpiceGirl gif={ spiceGirl.gif } adjective={ spiceGirl.adjective } />
    // return "SHKJADFKDJFH"

  }

  render() {

    const bunchOJSXNavLinks = this.state.spiceGirls.map((spice) => <li>
                <NavLink to={ "/spice/" + spice.slug }>{ spice.adjective }</NavLink>
              </li>)

    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h1 className="App-title">Welcome to Spice Force Five</h1>
          <aside className="sidebar">
            <ul>
              <li>
                <NavLink exact to="/">Home</NavLink>
              </li>
              {
                bunchOJSXNavLinks
              }
            </ul>
          </aside>
        </header>
{        
  // <Posh />
  //       <Scary />
  //       <Sporty />
  //       <Ginger /> 
  //       <Baby />
      }

        {
         // <Route path="/victoria-b" component={ Posh }/>
         // <Route path="/geri-h" component={ Ginger }/>
         // <Route path="/mel-c" component={ Sporty }/>
         // <Route path="/mel-b" component={ Scary }/>
         // <Route path="/emma-b" component={ Baby }/>
       }
         <Route path="/spice/:slug" render={ this.renderSpice } />
         <Route path="/" exact component={ Home } />


      </div>
    );
  }

  state = {
    spiceGirls: [
      {
        id: 1,
        adjective: "Scary",
        gif: "https://media.giphy.com/media/Eaa3LF8anrRm/giphy.gif",
        slug: "mel-b",
      },
      {
        id: 2,
        adjective: "Baby",
        gif: "https://media.giphy.com/media/PSfMwrLPXUtrO/giphy.gif",
        slug: "emma-b",
      },
      {
        id: 3,
        adjective: "Ginger",
        gif: "https://media.giphy.com/media/ZA1X3mZigRMoo/giphy.gif",
        slug: "geri-h",
      },
      {
        id: 4,
        adjective: "Posh",
        gif: "https://media.giphy.com/media/f4X5yhZlnZXLa/giphy.gif",
        slug: "victoria-b",
      },
      {
        id: 5,
        adjective: "Sporty",
        gif: "https://media.giphy.com/media/ag5PDZoSMrFuM/giphy.gif",
        slug: "mel-c",
      },
    ]
  }

}

