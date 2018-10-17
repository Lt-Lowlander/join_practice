import React from 'react';
import { Link } from 'react-router';

const ChallengeIndexTile = (props) => {
  return(
    <div>
      <li>
        <Link to={`/challenges/${props.id}`}>
          {props.title}
        </Link>
      </li>
    </div>
  )
}

export default ChallengeIndexTile;
