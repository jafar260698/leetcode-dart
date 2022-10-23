

void main(List<String> arguments) {
  print(isPalindrome("0P"));
  print(isPalindrome2("0P"));
  print(isPalindrome3("0P"));
}

bool isPalindrome(String s) {
  // 65 -> 90
  // 97 -> 122
  String a = "";

  for(var i = 0; s.length > i; i++) {
    int value = s[i].codeUnitAt(0);

    if(value >= 65 && value <= 90) {
      a = a + String.fromCharCode(value + 32);
    } else if((value >= 97 && value<= 122) || (value >= 48 && value <= 57)) {
      a = a + s[i];
    }
  }


  String reversed = "";
  for(var j = a.length-1; j >= 0; j--) {
    reversed += a[j];
  }

  print(a);
  print(reversed);


  return a == reversed;
}

bool isPalindrome2(String s) {
  s = s.toLowerCase().replaceAll(RegExp("[^a-zA-Z0-9]"), "");
  int right = (s.length / 2).floor();
  int left = s.length % 2 == 0 ? right - 1 : right;

  while (left >= 0 && right < s.length) {
    if (s[left] != s[right]) return false;

    left--;
    right++;
  }

  return true;
}

bool isPalindrome3(String s) {
  s = s.replaceAll(RegExp("[^A-Za-z0-9]"), '').toLowerCase();

  int a = 0, b = s.length - 1;

  while(b > a) {
    if(s[b] != s[a]) return false;

    b--;
    a++;
  }

  return true;
}
