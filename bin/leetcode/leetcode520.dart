

void main(List<String> arguments) {
  print(detectCapitalUse("Leetcode"));
}

bool detectCapitalUse(String word) {
  int lengthOf = word.length;
  bool firstTime = true;

  int counter1 = 0;
  int counter2 = 0;
  int counter3 = 0;

  for(var i = 0; word.length > i; i++) {
    int value = word[i].codeUnitAt(0);

    if(isUppercase(value)) {
      counter1++;
    }
    if(isLowercase(value)) {
      counter2++;
    }

    if(firstTime) {
      if(isUppercase(value)){
        counter3++;
      }
      firstTime = false;
    } else {
      if(isLowercase(value)) {
        counter3++;
      }
    }
  }

  if(counter1 == lengthOf || counter2 == lengthOf || counter3 == lengthOf) return true;
  return false;
}

bool isUppercase(int value) {
  if(value >= 65 && value <= 90) {
    return true;
  }
  return false;
}

bool isLowercase(int value) {
  if(value >= 97 && value <= 122) {
    return true;
  }
  return false;
}