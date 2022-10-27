

void main(List<String> arguments) {
  print(divide(-2147483648, -1));
}

int divide(int dividend, int divisor) {

  bool isNegative = false;
  int counter = 0;


  int a = dividend.abs();
  int b = divisor.abs();

  if(b > a) return 0;
  if((dividend < 0 && divisor > 0) || (dividend >0 && divisor < 0)){ isNegative = true; }

  if(a == 1 || b == 1) {
    if(dividend == -2147483648 && divisor == -1) return 2147483647;
    return dividend * divisor;
  }

  while (a >= b) {
    a = a - b;
    counter++;
  }

  return counter  * (isNegative ? -1 : 1);
}
