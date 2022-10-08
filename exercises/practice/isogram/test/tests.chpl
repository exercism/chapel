use UnitTest;

use Isogram;

proc testEmptyString(test : borrowed Test) throws {
  test.assertTrue(isIsogram(""));
}

proc testIsogramWithOnlyLowerCaseCharacters(test : borrowed Test) throws {
  test.assertTrue(isIsogram("isogram"));
}

proc testWordWithOneDuplicatedCharacter(test : borrowed Test) throws {
  test.assertFalse(isIsogram("eleven"));
}

proc testWordWithOneDuplicatedCharacterFromTheEndOfTheAlphabet(test : borrowed Test) throws {
  test.assertFalse(isIsogram("zzyzx"));
}

proc testLongestReportedEnglishIsogram(test : borrowed Test) throws {
  test.assertTrue(isIsogram("subdermatoglyphic"));
}

proc testWordWithDuplicatedCharacterInMixedCase(test : borrowed Test) throws {
  test.assertFalse(isIsogram("Alphabet"));
}

proc testWordWithDuplicatedCharacterInMixedCaseLowercaseFirst(test : borrowed Test) throws {
  test.assertFalse(isIsogram("alphAbet"));
}

proc testHypotheticalIsogrammicWordWithHyphen(test : borrowed Test) throws {
  test.assertTrue(isIsogram("thumbscrew-japingly"));
}

proc testHypotheticalWordWithDuplicatedCharacterFollowingHyphen(test : borrowed Test) throws {
  test.assertFalse(isIsogram("thumbscrew-jappingly"));
}

proc testIsogramWithDuplicatedHyphen(test : borrowed Test) throws {
  test.assertTrue(isIsogram("six-year-old"));
}

proc testMadeUpNameThatIsAnIsogram(test : borrowed Test) throws {
  test.assertTrue(isIsogram("Emily Jung Schwartzkopf"));
}

proc testDuplicatedCharacterInTheMiddle(test : borrowed Test) throws {
  test.assertFalse(isIsogram("accentor"));
}

proc testSameFirstAndLastCharacters(test : borrowed Test) throws {
  test.assertFalse(isIsogram("angola"));
}

proc testWordWithDuplicatedCharacterAndWithTwoHyphens(test : borrowed Test) throws {
  test.assertFalse(isIsogram("up-to-date"));
}

UnitTest.main();
