class Password{
  late String password = "";

  Password();

  bool isValid() {
    if (8 > password.length || password.length > 16)
    {
      return false;
    }

    bool upper = password.contains(RegExp(r'[A-Z]'));
    bool lower = password.contains(RegExp(r'[a-z]'));
    bool number = password.contains(RegExp(r'[1-9]'));

    return upper && lower && number;
  }

  @override
  String toString(){
    return "Your Password is: $password";
  }
}