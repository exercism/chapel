module RomanNumerals {


  private proc helper(n: int, symbols: 3 * string) {
    var (unit, five, next) = symbols;
    if n == 9 then return unit + next;
    else if n >= 5 then return five + (unit * (n - 5));
    else if n == 4 then return unit + five;
    else return unit * n;
  }

  proc toRomanNumeral(in n: int): string {
    var res : string = "M" * (n / 1000);
    n = n % 1000;
    res += helper(n / 100, ("C", "D", "M"));
    n = n % 100;
    res += helper(n / 10, ("X", "L", "C"));
    n = n % 10;
    res += helper(n, ("I", "V", "X"));
    return res;
  }

}
