class AccountLogic {
  String _email = '';
  String _password = '';
  String _reEnterPassword = '';

  String get email => _email;

  String get password => _password;

  String get reEnterPassword => _reEnterPassword;

  set email(String value) => _email = value;

  set password(String value) => _password = value;

  set reEnterPassword(String value) => _reEnterPassword = value;
}
