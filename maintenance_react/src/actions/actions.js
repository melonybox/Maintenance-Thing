export const getUserFetch = () => {
  return dispatch => {
    const token = localStorage.getItem("token")
    if (token) {
      return fetch("http://localhost:3000/api/v1/auto_login", {
        method: "GET",
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          "Authorization": token
        }
      })
        .then(resp => resp.json())
        .then(data => {
          if (data.errors) {
            // An error will occur if the token is invalid.
            // If this happens, you may want to remove the invalid token.
            localStorage.removeItem("token")
					  alert(data.errors)
          } else {
            if (data.current_chapter === null) {
              data.current_chapter = 0
              dispatch(loginUser(data))
            } else {
              dispatch(loginUser(data))
            }
          }
        })
    }
  }
}

export const userLoginFetch = data => {
  //data contains email and password
  return dispatch => {
    //this is part of redux-thunk
    return fetch("https://localhost:3000/api/v1/login", {
      //fetch to backend rails api
      method: "POST",
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: JSON.stringify(data)
    })
      .then(resp => resp.json())
      .then(data => {
        if (data.errors) {
          // Here you should have logic to handle invalid login credentials.
          // This assumes your Rails API will return a JSON object with a key of
          // 'message' if there is an error
          alert(data.errors)
        } else {
          dispatch(loginUser(data.user))
        }
      })
  }
}

export const userCreateFetch = data => {
  //data contains username, email and password
  return dispatch => {
    //this is part of redux thunk
    return fetch("https://localhost:3000/api/v1/users", {
      //fetch to backend rails api
      method: "POST",
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
      body: JSON.stringify(data)
    })
      .then(resp => resp.json())
      .then(data => {
        if (data.errors) {
          // Here you should have logic to handle invalid creation of a user.
          // This assumes your Rails API will return a JSON object with a key of
          // 'message' if there is an error with creating the user, i.e. invalid username
          alert(data.errors)
        } else {
          dispatch(loginUser(data.user))
        }
      })
  }
}

export const loginUser = data => ({
  type: 'LOGIN_USER',
  payload: data
})
