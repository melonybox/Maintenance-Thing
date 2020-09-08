import React, { Component } from 'react';
import GoogleLogin from 'react-google-login';
import logo from '../logo.svg';
import '../css/App.css';

class App extends Component {

  onSignIn = (googleUser) => {
    debugger
    var profile = googleUser.getBasicProfile();
    console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
    console.log('Name: ' + profile.getName());
    console.log('Image URL: ' + profile.getImageUrl());
    console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
  }

  render(){
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <GoogleLogin
            clientId="1020775263438-kiovhnjri4lad9gvr281hk0rlv6mab9m.apps.googleusercontent.com"
            buttonText="Login"
            onSuccess={this.onSignIn}
            onFailure={this.onSignIn}
            cookiePolicy={'single_host_origin'}
          />
          <p>
            Edit <code>src/components/App.js</code> and save to reload.
          </p>
          <a
            className="App-link"
            href="https://reactjs.org"
            target="_blank"
            rel="noopener noreferrer"
          >
            Learn React
          </a>
        </header>
      </div>
    )
  }
}

export default App;
