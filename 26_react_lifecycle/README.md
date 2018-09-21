# React Component Lifecycle
[Docs](https://reactjs.org/docs/react-component.html#the-component-lifecycle)

[React Lifecycle Methods Diagram](http://projects.wojtekmaj.pl/react-lifecycle-methods-diagram/)


### Birth (Mounting)
- *constructor(props)*
  - called before it is mounted
- *render()*
- *componentDidMount()*
  - invoked immediately after a component is mounted (inserted into the tree) 
  - make requests to remote endpoints or websocket connections here

### Life (Updating)
- *componentDidUpdate(prevProps, prevState)*
  - invoked immediately after updating occurs 
  - not called for the initial render
  - watch out for infinite loops if setting state!
- *render()*

### Death (Unmounting)
- *componentWillUnmount()*
  - invoked immediately before a component is unmounted and destroyed
  - use for cleanup such as invalidating timers, canceling network requests, or cleaning up any subscriptions from componentDidMount().