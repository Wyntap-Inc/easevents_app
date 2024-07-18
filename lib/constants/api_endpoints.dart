class ApiEndpoints {
  static const String _baseUrl = 'https://sso-api.easevents.app/api/v1';

  static const String _signInEndpoint = '$_baseUrl/auth/signin';
  static const String _signUpEndpoint = '$_baseUrl/auth/signup';
  static const String _verifySignUpEndpoint = '$_baseUrl/auth/signup/verify';
  static const String _resetPasswordEndpoint = '$_baseUrl/auth/reset-password';
  static const String _verifyResetPasswordEndpoint =
      '$_baseUrl/auth/reset-password/verify';
  static const String _changePasswordEndpoint =
      '$_baseUrl/auth/reset-password/change-password';

  static String get signInEndpoint => _signInEndpoint;
  static String get signUpEndpoint => _signUpEndpoint;
  static String get verifySignUpEndpoint => _verifySignUpEndpoint;
  static String get resetPasswordEndpoint => _resetPasswordEndpoint;
  static String get verifyResetPasswordEndpoint => _verifyResetPasswordEndpoint;
  static String get changePasswordEndpoint => _changePasswordEndpoint;
}
