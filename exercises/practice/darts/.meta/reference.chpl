module Darts {
  proc score(x: real, y: real) {
    var d2 = x ** 2 + y ** 2;
    if d2 <= 1 then return 10;
    else if d2 <= 25 then return 5;
    else if d2 <= 100 then return 1;
    else return 0;
  }
}
