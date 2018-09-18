import React, { Component } from 'react'
import PaintingCard from './PaintingCard'
import paintings from './artwork'

class PaintingContainer extends Component {
  render() {
    // console.log(paintings)
    const paintingList = paintings.map(p => <PaintingCard painting={p} key={p.slug} />)

    return (
      <div>
        {paintingList}
      </div>
    )
  }
}

export default PaintingContainer