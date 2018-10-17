import React, { Component } from 'react';
import { Router, Route, IndexRoute, browserHistory } from 'react-router';
import ChallengeIndexContainer from '../containers/ChallengeIndexContainer';
import ChallengeShowContainer from '../containers/ChallengeShowContainer';

class App extends Component {
  constructor(props){
    super(props);
    this.state = {
    }
  }
  render() {
    return(
      <Router history={browserHistory}>
        <Route path='/'>
          <IndexRoute component={ChallengeIndexContainer} />
          <Route path='/challenges' component={ChallengeIndexContainer} />
          <Route path='/challenges/:id' component={ChallengeShowContainer} />
        </Route>
      </Router>
    )
  }
}

export default App;
