import React, { Component } from 'react';
import ChallengeShowTile from '../components/ChallengeShowTile';

class ChallengeShowContainer extends  Component {
  constructor(props) {
      super(props)
      this.state = {
        challengeInfo: {}
      }
  }

  componentDidMount(){
    fetch(`/api/v1/challenges/${this.props.params.id}`, {
      credentials: 'same-origin'
    })
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
        error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    .then(body => {
debugger
      this.setState({
        challengeInfo: body
        
      })
    })
  }

  render(){
    const chalDets = this.state.challengeInfo;

    return(
      <div>
        yoskibroski
      </div>
    )
  }

}
export default ChallengeShowContainer;
