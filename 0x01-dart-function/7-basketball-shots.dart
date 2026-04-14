int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int resultA = 0, resultB = 0, count = 1;
  for (var scoreA in teamA.values) {
    resultA = resultA + (scoreA * count);
    count++;
  }

  count = 1;
  for (var scoreB in teamB.values) {
    resultB = resultB + (scoreB * count);
    count++;
  }
  
  if (resultA == resultB) {
    return (0);
  } else if (resultA < resultB) {
    return (2);
  } else if (resultA > resultB) {
    return (1);
  }
  return (0);
}
