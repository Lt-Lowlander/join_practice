import React, { Component } from 'react';
import { Link } from 'react-router';
import ChallengeIndexTile from '../components/ChallengeIndexTile';

class ChallengeIndexContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      challengesArray: []
    }
  }

  componentDidMount(){
    fetch(`/api/v1/challenges`, {
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
      this.setState({
        challengesArray: body
      })
    })
  }

  render(){
    const foundChallenges = this.state.challengesArray;
    let challenges = foundChallenges.map(project => {
      return(
        <ChallengeIndexTile
          key={project.id}
          id={project.id}
          title={project.title}
        />
      )
    })
    return(
      <div>
        <b>
          List of Projects
        </b>
        <ul>
          {challenges}
        </ul>
      </div>
    )
  }
}

export default ChallengeIndexContainer;
