

void main(List<String> arguments) {
  print(divide(1, 1));
}

int divide(int dividend, int divisor) {

  if (dividend == 0) return 0;

  bool isNegative = false;
  int a = dividend.abs();
  int b = divisor.abs();
  int lastNum = 0;
  if((dividend < 0 && divisor > 0) || (dividend >0 && divisor < 0)){ isNegative = true; }


  if(a == 1 || b == 1) {
    if ((2147483647 <= a && a <= 2147483648) || (2147483647 <= b && b <= 2147483648)) {
      return 2147483647 * (isNegative ? -1 : 1);
    }
    return dividend * divisor;
  }

    while (a >= b) {
      a = a - b;
    }

    lastNum = (dividend.abs() - a);
    int i = 0;

    while(lastNum > 0) {
      i++;
      lastNum = lastNum - b;
    }

    return i  * (isNegative ? -1 : 1);
}