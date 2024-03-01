module RomanNumerals {


  private proc helper(n : int, (unit, five, next) : 3 * string) {
    if n == 9 then return unit + next;
    else if n >= 5 then return five + (unit * (n - 5));
    else if n == 4 then return unit + five;
    else return unit * n;
  }

  proc toRomanNumeral(in n: int): string {
    var res : string = "M" * (n / 1000);
    n %= 1000;

    res += helper(n / 100, ("C", "D", "M"));
    n %= 100;

    res += helper(n / 10, ("X", "L", "C"));
    n %= 10;

    res += helper(n, ("I", "V", "X"));
    return res;
  }

}
