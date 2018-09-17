// React.createElement(tagtype, properties, children)
// ReactDOM.render(whatToRender, whereToPutIt)



const header = React.createElement('h1', {}, "Welcome to React")

// const headerObj = {
//   $$typeof: Symbol.for('react.element'),
//   props: {
//     children: "Welcome to React Part 2"
//   },
//   ref: null,
//   type: "h1"
// }

const painting = {
  id: '59bd5a519c18db5297a32479',
  collecting_institution: '',
  date: '1446',
  dimensions: {
    text: '11 1/2 Ã— 8 1/2 in',
    height: 11.5,
    width: 8.5,
    depth: null,
    diameter: null
  },
  slug: 'petrus-christus-portrait-of-a-carthusian',
  title: 'Portrait of a Carthusian',
  image:
    'https://d32dm0rphc51dk.cloudfront.net/pVc7CubFzVlPhbErTAqyYg/medium.jpg',
  artist: {
    name: 'Petrus Christus',
    hometown: 'Baarle-Hertog, Belgium',
    birthday: '1410',
    deathday: '1475'
  },
  votes: 64
}

// div
// h3 title
// h5 artist
// img image

const div = React.createElement('div', {}, [
  React.createElement('h3', {}, painting.title),
  React.createElement('h5', {}, painting.artist.name),
  React.createElement('img', {src: painting.image})
])

const myApp = () => {
  return [
    header,
    div
  ]
}



ReactDOM.render(myApp(), document.querySelector('#main'))
