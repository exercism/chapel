module NucleotideCount {
  proc nucleotideCounts(s: string) throws {
    var D = {"A", "C", "G", "T"};
    var count: [D] int;
    for c in s {
      if D.contains(c) then count[c] += 1;
      else throw new IllegalArgumentError("Invalid nucleotide in strand"); 
    }
    return count;
  }
}
