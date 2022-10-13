module Isogram {
  proc isIsogram(s : string) {
    var seen : domain(string);
    for c in s {
      if c.isAlpha() {
        if seen.contains(c.toLower()) then return false;
        seen.add(c.toLower());
      }
    }
    return true;
  }
}
