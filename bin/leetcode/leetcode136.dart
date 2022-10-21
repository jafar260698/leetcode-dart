

void main(List<String> arguments) {
  var list = [1,2,3,4];
  var a= singleNumber(list);
}


int singleNumber(List<int> nums) {

  var set1Number = nums.toSet();
  int sum = 0;
  int sumNums = 0;


  for (var element in set1Number) {
    sum = sum + element;
  }

  for (var element in nums) {
    sumNums = sumNums + element;
  }

  

  return 0;
}