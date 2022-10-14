use UnitTest;

use NucleotideCount;
use UnitTest.TestError;


proc testEmptyStrand(test : borrowed Test) throws {
  var strand = "";
  test.assertEqual(nucleotideCounts(strand), [ "A" => 0, "C" => 0, "G" => 0, "T" => 0 ]);
}

proc testCanCountOneNucleotideInSingleCharacterInput(test : borrowed Test) throws {
  var strand = "G";
  test.assertEqual(nucleotideCounts(strand), [ "A" => 0, "C" => 0, "G" => 1, "T" => 0 ]);
}

proc testStrandWithRepeatedNucleotide(test : borrowed Test) throws {
  var strand = "GGGGGGG";
  test.assertEqual(nucleotideCounts(strand), [ "A" => 0, "C" => 0, "G" => 7, "T" => 0 ]);
}

proc testStrandWithMultipleNucleotides(test : borrowed Test) throws {
  var strand = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC";
  test.assertEqual(nucleotideCounts(strand), [ "A" => 20, "C" => 12, "G" => 17, "T" => 21 ]);
}

proc testStrandWithInvalidNucleotides(test : borrowed Test) throws {
  try {
    nucleotideCounts("AGXXACT");
    throw new AssertionError("Function was expected to throw an error");
  } catch e : IllegalArgumentError {
    test.assertEqual(e.message(), "Invalid nucleotide in strand");
  } catch e {
    throw e;
  }
}

UnitTest.main();
