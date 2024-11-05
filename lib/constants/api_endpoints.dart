class ApiEndpoints {
  static const String _baseUrl = 'https://sso-api.easevents.app/api/v1/auth';

  static const String _signInEndpoint = '$_baseUrl/login';
  static const String _signUpEndpoint = '$_baseUrl/register';
  static const String _googleSigninEndpoint = '$_baseUrl/social-login';
  static const String _googleSigninAuthEndpoint =
      '$_baseUrl/social-login/authenticate';
  static const String _verifySignUpEndpoint = '$_baseUrl/register/verify';
  static const String _resetPasswordEndpoint = '$_baseUrl/reset-password';
  static const String _verifyResetPasswordEndpoint =
      '$_baseUrl/reset-password/verify';
  static const String _changePasswordEndpoint =
      '$_baseUrl/reset-password/change-password';

  static String get signInEndpoint => _signInEndpoint;
  static String get signUpEndpoint => _signUpEndpoint;
  static String get googleSigninEndpoint => _googleSigninEndpoint;
  static String get googleSigninAuthEndpoint => _googleSigninAuthEndpoint;
  static String get verifySignUpEndpoint => _verifySignUpEndpoint;
  static String get resetPasswordEndpoint => _resetPasswordEndpoint;
  static String get verifyResetPasswordEndpoint => _verifyResetPasswordEndpoint;
  static String get changePasswordEndpoint => _changePasswordEndpoint;
}
