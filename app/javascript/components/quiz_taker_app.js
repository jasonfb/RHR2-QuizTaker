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
  const [exam, setExam] = useState(null);

  useEffect(() => {
    // will get invoked where componentDidMount would have been invoked in a class
    // setup goes here
    console.log("setup.....")
    QuizActions.loadStatus()
      .then(
        (result) => {
          console.log("I am in QuizTakerApp")
          console.log("result is ", result);
          if(result.exam_is_in_progress) {
            console.log("setting exam to", result.exam)
            // setExam(result.exam);
          } else {
            // do nothing here, let the user start their own exam
          }
        },
        (error) => {
          // setIsLoaded(true);
          setError(error);
        }
      )
    ;

    return () => {
      // will get invoked on componentWillUmount
      // cleanup goes here
    }
  }) // end of useEffect

  const startNewQuiz = () => {
    QuizActions.startNewExam()
      .then(
        result => {
          setExam(result.exam);
        }
      )
  }

  const start_button = (exam === null) ?
    <div>
      <button onClick={startNewQuiz} type={"submit"} >Start New Quiz</button>
    </div>
    : ""

  return (
    <StyledQuizTaker>
      <div className={"container"} >
        <div className={"row"} >
          <div className={"col-md-12"} >
            Welcome to Quiz Taker
            {start_button}
          </div>
        </div>
      </div>
    </StyledQuizTaker>
  )
}

export default QuizTakerApp;