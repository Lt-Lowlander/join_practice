import React from 'react';

let full_name;
const TaskShowTile = (props) => {
  props.workers.forEach(function(teammate) {
    if (teammate.id == props.match) {
      full_name = `${teammate.first_name} ${teammate.last_name}`;
      return(full_name)
    }
  });

  return(
    <li>
      <b>
        {props.name}
      </b>
      <div>
        Description: {props.desc}
      </div>
      <div>
        Due: {props.due}
      </div>
      <div>
        Owner: {full_name}
      </div>
    </li>
  )
}

export default TaskShowTile;
