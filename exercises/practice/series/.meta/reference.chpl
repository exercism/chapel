module Series {
  proc slices(s: string, n: int) throws {
    if s.isEmpty() then throw new IllegalArgumentError("series cannot be empty");
    if n < 0 then throw new IllegalArgumentError("slice length cannot be negative");
    else if n == 0 then throw new IllegalArgumentError("slice length cannot be zero");
    else if n > s.size then throw new IllegalArgumentError("slice length cannot be greater than series length");
    return [i in 0..(s.size - n)] s[i..#n];
  }
}
