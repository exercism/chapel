use UnitTest;

use Pangram;

proc testEmptySentence(test : borrowed Test) throws {
  test.assertFalse(isPangram(""));
}

proc testPerfectLowerCase(test : borrowed Test) throws {
  test.assertTrue(isPangram("abcdefghijklmnopqrstuvwxyz"));
}

proc testOnlyLowerCase(test : borrowed Test) throws {
  test.assertTrue(isPangram("the quick brown fox jumps over the lazy dog"));
}

proc testMissingTheLetterX(test : borrowed Test) throws {
  test.assertFalse(isPangram("a quick movement of the enemy will jeopardize five gunboats"));
}

proc testMissingTheLetterH(test : borrowed Test) throws {
  test.assertFalse(isPangram("five boxing wizards jump quickly at it"));
}

proc testWithUnderscores(test : borrowed Test) throws {
  test.assertTrue(isPangram("the_quick_brown_fox_jumps_over_the_lazy_dog"));
}

proc testWithNumbers(test : borrowed Test) throws {
  test.assertTrue(isPangram("the 1 quick brown fox jumps over the 2 lazy dogs"));
}

proc testMissingLettersReplacedByNumbers(test : borrowed Test) throws {
  test.assertFalse(isPangram("7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog"));
}

proc testMixedCaseAndPunctuation(test : borrowed Test) throws {
  test.assertTrue(isPangram("\"Five quacking Zephyrs jolt my wax bed.\""));
}

proc testAMAndAMAre26DifferentCharactersButNotAPangram(test : borrowed Test) throws {
  test.assertFalse(isPangram("abcdefghijklm ABCDEFGHIJKLM"));
}

UnitTest.main();
