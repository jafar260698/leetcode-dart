

void main(List<String> arguments) {
  var list = [1,2,3,4];
  containsDuplicate(list);
}

bool containsDuplicate(List<int> nums) {
  List<int> list = nums;
  list.sort();

  for(int i=0; list.length-1>0; i++){
    if(list[i] == list[i+1]) {
      return true;
    }
  }

  return false;
}