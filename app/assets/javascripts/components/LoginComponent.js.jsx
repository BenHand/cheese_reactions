/* Globals React */
'use strict';
var LoginState = null;
var LogIn = React.createClass({
  render: function() {
      return (
          <div className='container login'>
            <form onSubmit={this.login}>
              <input type="text" placeholder="Name" className="field" ref="username"/>
              <input type="password" placeholder="Password" className="field" ref="password" />
              <input type="submit" value="Login" />
            </form>
          </div>
      );
  },
  login: function(e) {
    e.preventDefault();
    LoginState = true;
    var username = React.findDOMNode(this.refs.username).value.trim();
    var password = React.findDOMNode(this.refs.password).value.trim();
    $.post(
      "/sessions/create",
       {
         name: username,
         password: password
       }
    )

  }
});

