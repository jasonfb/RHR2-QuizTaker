import React, {useState, useEffect} from 'react'
import styled from 'styled-components'
import '../dispatcher/index'
import QuizActions from '../actions/quiz_actions'

const StyledExam = styled.div`

`

const Exam = (props) => {

  const exam_name = props.exam ? props.exam.name : ""
  return (
    <StyledExam>
      <h1>
        Exam {exam_name}
      </h1>
    </StyledExam>
  )
}


export default Exam;