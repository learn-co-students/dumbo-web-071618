import React from 'react';
import ReactDOM from 'react-dom';
import Painting from './Painting'
import arts from '../arts'

class App extends React.Component {

  bork() {
    console.log(arts)
    return (
      <div>
        {arts.map(art => <Painting painting={art} />)}

        {/* [<Painting painting={arts[1]} />,
        <Painting painting={arts[2]} />] */}
      </div>
    )
  }
}


ReactDOM.render(<App />, document.getElementById('main'))
