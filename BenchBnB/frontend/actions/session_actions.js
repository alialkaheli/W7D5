import * as sessionUtil from '../util/session_api_util';
export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const LOGOUT_CURRENT_USER = 'LOGOUT_CURRENT_USER';

const  receiveUser = (user) =>({
  user: user,
  type: RECEIVE_CURRENT_USER
});

const  logoutUser = () =>({
  type: LOGOUT_CURRENT_USER
});

export const login = (user) => dispatch => (
  sessionUtil.login(user).then( user => dispatch(receiveUser(user)))
);

export const signup = (user) => dispatch => (
  sessionUtil.signup(user).then( user => dispatch(receiveUser(user)))
);

export const logout = () => dispatch => (
  sessionUtil.logout().then( () => dispatch(logoutUser()))
);
