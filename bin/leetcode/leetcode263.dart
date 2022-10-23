
void main(List<String> arguments) {
  print(isUgly(24));
  print(isUgly2(24));
}


bool isUgly(int n) {
  if(n == 0) return false;
  int a = n;

  while(a != 1) {
    if(a % 2 == 0) {
      a = a ~/ 2;
    } else if(a % 3 == 0) {
      a = a ~/ 3;
    } else if(a % 5 == 0) {
      a = a ~/ 5;
    } else {
      return false;
    }
  }

  return true;
}

bool isUgly2(int n) {
  if (n <= 0) return false;
  for (int primeNumber in [2, 3, 5]){
    while (n % primeNumber == 0){
      n = n ~/ primeNumber;
    }
  }
  return n==1;
}