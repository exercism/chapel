module HighScores {

  proc latest(scores: [] int) {
   return scores.last;
  }

  proc personalBest(scores: [] int) {
    var s = scores.sorted();
    return s.last;
  }

  proc personalTopThree(scores: [] int) {
    var s = scores.sorted();
    return [i in 1..min(3, s.size)] s[s.size-i];
  }
}
