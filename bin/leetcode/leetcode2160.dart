

void main() {
  var a = minimumSum(4009);
  print("$a");
}

int minimumSum(int num) {
  var a = num;
  List<int>? listOfNum = [];

  while(a > 0){
    listOfNum.add(a % 10);
    a = a ~/ 10;
  }

  listOfNum.sort();

  var new1 = listOfNum[0] * 10 + listOfNum[2];
  var new2 = listOfNum[1] * 10 + listOfNum[3];

  return new1 + new2;
}