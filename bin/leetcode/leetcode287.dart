

void main(List<String> arguments) {

}

// solution 1
int findDuplicate1(List<int> nums) {

  Set<int> ourList = {};

  for(int i=0; nums.length>i;i++){
    int before = ourList.length;
    ourList.add(nums[i]);
    int after = ourList.length;
    if(before == after) {
      return nums[i];
    }
  }

  return -1;
}

// solution 2
int findDuplicate2(List<int> nums) {

  nums.sort();

  for(int i=0;nums.length-1 > i; i++){
    if(nums[i] == nums[i+1]){
      return nums[i];
    }
  }

  return -1;
}

// solution 3
int findDuplicate3(List<int> nums) {

  for(int i=0; nums.length>i;i++) {
    for(int j=0; nums.length>j;j++) {
      if(nums[i] == nums[j] && i!=j){
        return nums[i];
      }
    }
  }

  return 0;
}
