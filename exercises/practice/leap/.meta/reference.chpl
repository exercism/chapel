module Leap {
  proc isLeapYear(year : int) {
    return year % 4 == 0 && (!(year % 100 == 0) || (year % 400 == 0));
  }
}
