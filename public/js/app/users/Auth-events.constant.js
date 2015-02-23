(function() {
	'use strict';

	angular
		.module('vault.users')
		.constant('AuthEvents', {
			loginSuccess: 'auth-login-success',
			loginFailed: 'auth-login-failed',
			logoutSuccess: 'auth-logout-success'
		});

	
})();	