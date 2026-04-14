class Password{
  String _password = "";

  Password({required String password}) : _password = password;

  set password(String value){
    _password = value;
  }

  String get password => _password;

  bool isValid() {
    if (8 > password.length || password.length > 16)
    {
      return false;
    }

    bool upper = password.contains(RegExp(r'[A-Z]'));
    bool lower = password.contains(RegExp(r'[a-z]'));
    bool number = password.contains(RegExp(r'[0-9]'));

    return upper && lower && number;
  }
}