module Pangram {
  const ALPHABET = "abcdefghijklmnopqrstuvwxyz";

  proc isPangram(sentence: string): bool {
    var low_sentence = sentence.toLower();
    return && reduce [letter in ALPHABET] low_sentence.find(letter) >= 0;
  }
}
