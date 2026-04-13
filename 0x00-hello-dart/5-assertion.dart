void main(List<String> args) {
  int score = int.parse(args[0]);
  if (score >= 80) {
    print("You Passed");
  } else {
    print("The score must be bigger or equal to 80");
  }
}