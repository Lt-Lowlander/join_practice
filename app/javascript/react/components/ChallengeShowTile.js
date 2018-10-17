import React from 'react';

let full_name;
const ChallengeShowTile = (props) => {
  full_name = `${props.first} ${props.last}`
  return(
    <li>
        {full_name}
    </li>
  )
}

export default ChallengeShowTile;
