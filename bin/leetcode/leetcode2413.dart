import 'package:leetcode_dart/leetcode_dart.dart';
// import 'package:test/test.dart';

void main() {
  var a = smallestEvenMultiple(18);
  print("$a");
}


int smallestEvenMultiple(int n) {
  int digit = n;

  while(digit % n != 0 || digit % 2 != 0) {
    digit++;
  }

  return digit;
}