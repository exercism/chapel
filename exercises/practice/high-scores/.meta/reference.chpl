module HighScores {
  use Sort;

  proc latest(scores: [] int) {
   return scores.last;
  }

  proc personalBest(scores: [] int) {
    sort(scores);
    return scores.last;
  }

  proc personalTopThree(scores: [] int) {
    sort(scores);
    return [i in 1..min(3, scores.size)] scores[scores.size-i];
  }
}
