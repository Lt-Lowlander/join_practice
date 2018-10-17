import React, { Component } from 'react';
import ChallengeShowTile from '../components/ChallengeShowTile';
import TaskShowTile from '../components/TaskShowTile';

class ChallengeShowContainer extends  Component {
  constructor(props) {
    super(props)
    this.state = {
      challengeInfo: {},
      group: [],
      chores: []
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
        group: body.users,
        chores: body.tasks
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
    let assignments = this.state.chores.map(task => {
      return (
        <TaskShowTile
          key={task.id}
          id={task.id}
          name={task.name}
          desc={task.description}
          due={task.due_date}
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
        <div className="task-list">
          <b>
            Project Tasks
          </b>
          <ol>
            {assignments}
          </ol>
        </div>
      </div>
    )
  }
}
export default ChallengeShowContainer;
