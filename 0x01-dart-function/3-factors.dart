int fact(int f) {
  if (f <= 1) {
    return (1);
  }

  int result = 1;
  for (int count = 1; count <= f; count++) {
    result *= count;
  }
  return (result);
}
