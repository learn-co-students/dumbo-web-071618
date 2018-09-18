### Props
- pass down parent to child
- require keys when you have an array of items
- object: key-value pairs
  - key is the think before the equals
  - value is in the curlies
  - parent is in charge of what the prop is named
- immutable, only parent can change (really, parent passes down new version)
- stands for properties


### State
- really resepresents what is happening to the component
  - initialize in constructor
  - initialize using `state = `
  - update using this.setState
    - thing that triggers rerender
    - only updates keys passed into it, doesn't erase top-level
- assign multiple keys
- a parent component can pass down its state as a prop
- state is internal to a component