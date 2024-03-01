module RnaTranscription {

  const LOOKUP = ["A" => "U", "C" => "G", "G" => "C", "T" => "A"];

  proc toRna(dna: string): string {
    return "".join([c in dna] LOOKUP[c]);
  } 
}

