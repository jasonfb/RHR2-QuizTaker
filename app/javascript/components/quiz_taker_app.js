import React, {useEffect, useState} from "react";
import styled from 'styled-components'
import '../dispatcher/index'
import QuizActions from '../actions/quiz_actions'
const StyledQuizTaker = styled.div`
  border: solid 2px grey;
  width: 100%;
  margin: 5em;
  text-align: center;
`


const QuizTakerApp = (props) => {
  const [isLoaded, setIsLoaded] = useState(false);
  const [quiz, setItem] = useState([]);

  useEffect(() => {
    // will get invoked where componentDidMount would have been invoked in a class
    // setup goes here
    console.log("setup.....")
    QuizActions.loadStatus()
      .then(
        (result) => {
          console.log("I am in QuizTakerApp")
          console.log("result is ", result);
          // setIsLoaded(true);
          // setQuiz(result);
          // alert('set the quiz and loaded')
        },
        // Note: it's important to handle errors here
        // instead of a catch() block so that we don't swallow
        // exceptions from actual bugs in components.
        (error) => {
          // setIsLoaded(true);
          // setError(error);
        }
      )
    ;

    return () => {
      // will get invoked on componentWillUmount— use for cleanup
      console.log("cleanup.....")

    }
  })

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