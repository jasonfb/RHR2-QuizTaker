import Dispatcher from '../dispatcher';
import ActionTypes from 'constants';




class QuizActions {
  loadStatus() {
    return fetch("/me").then(res => res.json());

  }

  loadRandomQuiz() {

    Dispatcher.dispatch({
      actionType: ActionTypes.LOAD_QUIZ
    });
    return fetch("/quiz/random").then(res => res.json());
  }


}

export default new QuizActions();