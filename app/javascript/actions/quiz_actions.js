import Dispatcher from '../dispatcher';
import ActionTypes from '../constants';

class Quiz_actions {

  loadQuiz() {
    // Note: This is usually a good place to do API calls.
    Dispatcher.dispatch({
      actionType: ActionTypes.LOAD_QUIZ,
      payload: item
    });
  }

}

export default new Quiz_actions();