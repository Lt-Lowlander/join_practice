import React, { Component } from 'react';
import ChallengeShowTile from '../components/ChallengeShowTile';

class ChallengeShowContainer extends  Component {
  constructor(props) {
    super(props)
    this.state = {
      challengeInfo: {},
      group: []
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
      this.setState({
        challengeInfo: body,
        group: body.users
      })
    })
  }

  render(){
    let chalDets = this.state.challengeInfo;
    let team = this.state.group.map(member => {
      return(
        <ChallengeShowTile
          key={member.id}
          id={member.id}
          first={member.first_name}
          last={member.last_name}
        />
      )
    });
    return(
      <div>
        <div className="project-deets">
          <b>
            {chalDets.title}
          </b>
          <p>
            {chalDets.description}
          </p>
          <p></p>
        </div>
        <div className="member-list">
          <b>
            Team Members
          </b>
          <ul>
            {team}
          </ul>
        </div>
      </div>
    )
  }
}
export default ChallengeShowContainer;
