import { EventEmitter } from 'events';
import Dispatcher from '../dispatcher';
import ActionTypes from '../constants';

const CHANGE = 'CHANGE';
let _quizState = [];

class QuizStore extends EventEmitter {

  constructor() {
    super();

    // Registers action handler with the Dispatcher.
    Dispatcher.register(this._registerToActions.bind(this));
  }

  // Switches over the action's type when an action is dispatched.
  _registerToActions(action) {
    switch(action.actionType) {
      case ActionTypes.LOAD_QUIZ:
        this._loadQuiz(action.payload);
        break;
    }
  }

  // Adds a new item to the list and emits a CHANGED event.
  _loadQuiz(item) {
    item.id = _walletState.length;
    _quizState.push(item);
    this.emit(CHANGE);
  }

  // Hooks a React component's callback to the CHANGED event.
  addChangeListener(callback) {
    this.on(CHANGE, callback);
  }

  // Removes the listener from the CHANGED event.
  removeChangeListener(callback) {
    this.removeListener(CHANGE, callback);
  }
}

export default new QuizStore();