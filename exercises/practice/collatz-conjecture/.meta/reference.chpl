module CollatzConjecture {
  proc steps(in num: int) throws {
    if num <= 0 then throw new IllegalArgumentError("Only positive integers are allowed");
    var nsteps = 0;
    while num > 1 {
      if num % 2 then num = 3 * num + 1;
      else num /= 2;
      nsteps += 1;
    } 
    return nsteps;
  }
}
