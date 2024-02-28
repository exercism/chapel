use UnitTest;
use WordCount;

proc testCountOneWord(test : borrowed Test) throws {
  var expected = [ "word" => 1 ];
  test.assertEqual(countWords("word"), expected);
}
proc testCountOneOfEachWord(test : borrowed Test) throws {
  var expected = [ "one" => 1, "of" => 1, "each" => 1 ];
  test.assertEqual(countWords("one of each"), expected);
}
proc testMultipleOccurrencesOfAWord(test : borrowed Test) throws {
  var expected = [ "one" => 1, "fish" => 4, "two" => 1, "red" => 1, "blue" => 1 ];
  test.assertEqual(countWords("one fish two fish red fish blue fish"), expected);
}
proc testHandlesCrampedLists(test : borrowed Test) throws {
  var expected = [ "one" => 1, "two" => 1, "three" => 1 ];
  test.assertEqual(countWords("one,two,three"), expected);
}
proc testHandlesExpandedLists(test : borrowed Test) throws {
  var expected = [ "one" => 1, "two" => 1, "three" => 1 ];
  test.assertEqual(countWords("one,\ntwo,\nthree"), expected);
}
proc testIgnorePunctuation(test : borrowed Test) throws {
  var expected = [ "car" => 1, "carpet" => 1, "as" => 1, "java" => 1, "javascript" => 1 ];
  test.assertEqual(countWords("car: carpet as java: javascript!!&@$%^&"), expected);
}
proc testIncludeNumbers(test : borrowed Test) throws {
  var expected = [ "testing" => 2, "1" => 1, "2" => 1 ];
  test.assertEqual(countWords("testing, 1, 2 testing"), expected);
}
proc testNormalizeCase(test : borrowed Test) throws {
  var expected = [ "go" => 3, "stop" => 2 ];
  test.assertEqual(countWords("go Go GO Stop stop"), expected);
}
proc testWithApostrophes(test : borrowed Test) throws {
  var expected = [ "first" => 1, "don't" => 2, "laugh" => 1, "then" => 1, "cry" => 1, "you're" => 1, "getting" => 1, "it" => 1 ];
  test.assertEqual(countWords("'First: don't laugh. Then: don't cry. You're getting it.'"), expected);
}
proc testWithQuotations(test : borrowed Test) throws {
  var expected = [ "joe" => 1, "can't" => 1, "tell" => 1, "between" => 1, "large" => 2, "and" => 1 ];
  test.assertEqual(countWords("Joe can't tell between 'large' and large."), expected);
}
proc testSubstringsFromTheBeginning(test : borrowed Test) throws {
  var expected = [ "joe" => 1, "can't" => 1, "tell" => 1, "between" => 1, "app" => 1, "apple" => 1, "and" => 1, "a" => 1 ];
  test.assertEqual(countWords("Joe can't tell between app, apple and a."), expected);
}
proc testMultipleSpacesNotDetectedAsAWord(test : borrowed Test) throws {
  var expected = [ "multiple" => 1, "whitespaces" => 1 ];
  test.assertEqual(countWords(" multiple   whitespaces"), expected);
}
proc testAlternatingWordSeparatorsNotDetectedAsAWord(test : borrowed Test) throws {
  var expected = [ "one" => 1, "two" => 1, "three" => 1 ];
  test.assertEqual(countWords(",\n,one,\n ,two \n 'three'"), expected);
}
proc testQuotationForWordWithApostrophe(test : borrowed Test) throws {
  var expected = [ "can" => 1, "can't" => 2 ];
  test.assertEqual(countWords("can, can't, 'can't'"), expected);
}

UnitTest.main();
