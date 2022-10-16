module Diamond {
  const ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

  proc rows(letter: string) {
    var idx = ALPHABET.find(letter): int,
        res: [0..#(2*idx+1)] string;

    for i in 0..#(2*idx+1) {
      var pad = abs(idx-i),
          half = " " * pad + ALPHABET[idx-pad] + " " * (idx-pad);
      res[i] = half + reverse(half[0..half.size-2]);
    }
    return res;
  }

  proc reverse(s: string) {
    var res = "";
    for c in s do res = c + res;
    return res;
  }
}
