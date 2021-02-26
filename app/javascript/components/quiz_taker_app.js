import React, {useState, useEffect} from "react";

import styled from 'styled-components'

const StyledQuizTaker = styled.div`
  border: solid 2px grey;
  width: 100%;
  margin: 5em;
  text-align: center;
`

import '../dispatches/index'


const QuizTakerApp = (props) => {



  return (
    <StyledQuizTaker>
      <div className={"container"} >
        <div className={"row"} >
          <div className={"col-md-12"} >
            Welcome to Quiz Taker
          </div>

        </div>
      </div>
    </StyledQuizTaker>
  )
}

export default QuizTakerApp;