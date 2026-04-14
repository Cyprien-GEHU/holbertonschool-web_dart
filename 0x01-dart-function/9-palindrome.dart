bool isPalindrome(String s)
{
    if (s.length <= 2){
    return (false);
  }
  int right = 0, left = s.length - 1;


  for (right; right < left; right++)
  {
    if (s[right] != s[left])
    {
      return (false);
    }
    left--;
  }

  return (true);
}