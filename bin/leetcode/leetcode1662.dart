

void main() {
  var a = arrayStringsAreEqual(["ab", "c"], ["a", "bc"]);
  print("$a");
}

bool arrayStringsAreEqual(List<String> word1, List<String> word2) {
  String result1 = "";
  String result2 = "";


  for (var element in word1) {
    result1 = result1 + element;
  }

  for (var element in word2) {
    result2 = result2 + element;
  }

  return result1 == result2;
}