String longestUniqueSubstring(String str) {
  Set<String> LetterSeen = {};
  int start = 0;
  int max = 0;
  int left = 0;

  for (int letterIndex = 0; letterIndex < str.length; letterIndex++) {
    while (LetterSeen.contains(str[letterIndex])) {
      LetterSeen.remove(str[left]);
      left++;
    }

    LetterSeen.add(str[letterIndex]);

    if (letterIndex - left + 1 > max) {
      max = letterIndex - left + 1;
      start = left;
    }
  }
  return str.substring(start, start + max);
}
