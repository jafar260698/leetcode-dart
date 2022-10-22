

import 'dart:collection';

void main(List<String> arguments) {
  var list = [1,2,3,4];
  print(containsNearbyDuplicate(list, 5));
}

bool containsNearbyDuplicate(List<int> nums, int k) {

  HashMap<int,int> map = HashMap<int,int>();

  for(var i=0; nums.length > i; i++) {
    int current = nums[i];

    if(map.containsKey(current) && i - map[current]! <= k){
      return true;
    } else {
      map[current] = i;
    }
  }

  return false;
}