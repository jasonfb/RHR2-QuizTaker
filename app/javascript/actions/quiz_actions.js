import Dispatcher from '../dispatcher';
import ActionTypes from 'constants';




class QuizActions {
  loadStatus() {
    return fetch("/me").then(res => res.json());

  }

  startNewExam() {
    const csrfToken = document.querySelector("[name='csrf-token']").content
    console.log("startNewExam")

    Dispatcher.dispatch({
      actionType: ActionTypes.START_NEW_EXAM
    });
    return fetch("/exam",{
        headers: {
          "X-CSRF-Token": csrfToken,
          "Content-Type": "application/json"
        },
        method: 'POST',
        mode: 'cors',
        body: JSON.stringify({}) // body data type must match "Content-Type" header
      }
    ).then(res => res.json());
  }


}

export default new QuizActions();