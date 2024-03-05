use UnitTest;
use RnaTranscription;

proc test_empty_rna_sequence(test : borrowed Test) throws {
  test.assertTrue(toRna("").isEmpty());
}

proc test_rna_complement_of_cytosine_is_guanine(test : borrowed Test) throws {
  test.assertEqual(toRna("C"), "G");
}

proc test_rna_complement_of_guanine_is_cytosine(test : borrowed Test) throws {
  test.assertEqual(toRna("G"), "C");
}

proc test_rna_complement_of_thymine_is_adenine(test : borrowed Test) throws {
  test.assertEqual(toRna("T"), "A");
}

proc test_rna_complement_of_adenine_is_uracil(test : borrowed Test) throws {
  test.assertEqual(toRna("A"), "U");
}

proc test_rna_complement(test : borrowed Test) throws {
  test.assertEqual(toRna("ACGTGGTCTTAA"), "UGCACCAGAAUU");
}

UnitTest.main();
