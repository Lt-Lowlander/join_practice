import React from 'react';

const TaskShowTile = (props) => {
  return(
    <li>
      <b>
        {props.name}
      </b>
      <div>
        {props.desc}
      </div>
      <div>
        Due: {props.due}
      </div>
    </li>
  )
}

export default TaskShowTile;
