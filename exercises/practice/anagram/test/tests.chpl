use UnitTest;

use Anagram;

proc testNoMatches(test : borrowed Test) throws {
  var anagrams = findAnagrams("diaper", ["hello", "world", "zombies", "pants"]);
  test.assertTrue(anagrams.isEmpty());
}

proc testDetectsTwoAnagrams(test : borrowed Test) throws {
  var anagrams = findAnagrams("solemn", ["lemons", "cherry", "melons"]);
  test.assertEqual(anagrams, ["lemons", "melons"]);
}

proc testDoesNotDetectAnagramSubsets(test : borrowed Test) throws {
  var anagrams = findAnagrams("good", ["dog", "goody"]);
  test.assertTrue(anagrams.isEmpty());
}

proc testDetectsAnagram(test : borrowed Test) throws {
  var anagrams = findAnagrams("listen", ["enlists", "google", "inlets", "banana"]);
  test.assertEqual(anagrams, ["inlets"]);
}

proc testDetectsThreeAnagrams(test : borrowed Test) throws {
  var anagrams = findAnagrams("allergy", ["gallery", "ballerina", "regally", "clergy", "largely", "leading"]);
  test.assertEqual(anagrams, ["gallery", "regally", "largely"]);
}
proc testDetectsMultipleAnagramsWithDifferentCase(test : borrowed Test) throws {
  var anagrams = findAnagrams("nose", ["Eons", "ONES"]);
  test.assertEqual(anagrams, ["Eons", "ONES"]);
}
proc testDoesNotDetectNonAnagramsWithIdenticalChecksum(test : borrowed Test) throws {
  var anagrams = findAnagrams("mass", ["last"]);
  test.assertTrue(anagrams.isEmpty());
}
proc testDetectsAnagramsCaseInsensitively(test : borrowed Test) throws {
  var anagrams = findAnagrams("Orchestra", ["cashregister", "Carthorse", "radishes"]);
  test.assertEqual(anagrams, ["Carthorse"]);
}
proc testDetectsAnagramsUsingCaseInsensitiveSubject(test : borrowed Test) throws {
  var anagrams = findAnagrams("Orchestra", ["cashregister", "carthorse", "radishes"]);
  test.assertEqual(anagrams, ["carthorse"]);
}
proc testDetectsAnagramsUsingCaseInsensitivePossibleMatches(test : borrowed Test) throws {
  var anagrams = findAnagrams("orchestra", ["cashregister", "Carthorse", "radishes"]);
  test.assertEqual(anagrams, ["Carthorse"]);
}
proc testDoesNotDetectAnAnagramIfTheOriginalWordIsRepeated(test : borrowed Test) throws {
  var anagrams = findAnagrams("go", ["go Go GO"]);
  test.assertTrue(anagrams.isEmpty());
}
proc testAnagramsMustUseAllLettersExactlyOnce(test : borrowed Test) throws {
  var anagrams = findAnagrams("tapper", ["patter"]);
  test.assertTrue(anagrams.isEmpty());
}
proc testWordsAreNotAnagramsOfThemselves(test : borrowed Test) throws {
  var anagrams = findAnagrams("BANANA", ["BANANA"]);
  test.assertTrue(anagrams.isEmpty());
}
proc testWordsAreNotAnagramsOfThemselvesEvenIfLetterCaseIsPartiallyDifferent(test : borrowed Test) throws {
  var anagrams = findAnagrams("BANANA", ["Banana"]);
  test.assertTrue(anagrams.isEmpty());
}
proc testWordsAreNotAnagramsOfThemselvesEvenIfLetterCaseIsCompletelyDifferent(test : borrowed Test) throws {
  var anagrams = findAnagrams("BANANA", ["banana"]);
  test.assertTrue(anagrams.isEmpty());
}
proc testWordsOtherThanThemselvesCanBeAnagrams(test : borrowed Test) throws {
  var anagrams = findAnagrams("LISTEN", ["LISTEN", "Silent"]);
  test.assertEqual(anagrams, ["Silent"]);
}

UnitTest.main();
