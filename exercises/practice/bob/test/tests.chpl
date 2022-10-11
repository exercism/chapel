use UnitTest;

use Bob;

proc testStatingSomething(test : borrowed Test) throws {
  test.assertEqual(response("Tom-ay-to, tom-aaaah-to."), "Whatever.");
}

proc testShouting(test : borrowed Test) throws {
  test.assertEqual(response("WATCH OUT!"), "Whoa, chill out!");
}

proc testShoutingGibberish(test : borrowed Test) throws {
  test.assertEqual(response("FCECDFCAAB"), "Whoa, chill out!");
}

proc testAskingAQuestion(test : borrowed Test) throws {
  test.assertEqual(response("Does this cryogenic chamber make me look fat?"), "Sure.");
}

proc testAskingANumericQuestion(test : borrowed Test) throws {
  test.assertEqual(response("You are, what, like 15?"), "Sure.");
}

proc testAskingGibberish(test : borrowed Test) throws {
  test.assertEqual(response("fffbbcbeab?"), "Sure.");
}

proc testTalkingForcefully(test : borrowed Test) throws {
  test.assertEqual(response("Hi there!"), "Whatever.");
}

proc testUsingAcronymsInRegularSpeech(test : borrowed Test) throws {
  test.assertEqual(response("It's OK if you don't want to go work for NASA."), "Whatever.");
}

proc testForcefulQuestion(test : borrowed Test) throws {
  test.assertEqual(response("WHAT'S GOING ON?"), "Calm down, I know what I'm doing!");
}

proc testShoutingNumbers(test : borrowed Test) throws {
  test.assertEqual(response("1, 2, 3 GO!"), "Whoa, chill out!");
}

proc testNoLetters(test : borrowed Test) throws {
  test.assertEqual(response("1, 2, 3"), "Whatever.");
}

proc testQuestionWithNoLetters(test : borrowed Test) throws {
  test.assertEqual(response("4?"), "Sure.");
}

proc testShoutingWithSpecialCharacters(test : borrowed Test) throws {
  test.assertEqual(response("ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!"), "Whoa, chill out!");
}

proc testShoutingWithNoExclamationMark(test : borrowed Test) throws {
  test.assertEqual(response("I HATE THE DENTIST"), "Whoa, chill out!");
}

proc testStatementContainingQuestionMark(test : borrowed Test) throws {
  test.assertEqual(response("Ending with ? means a question."), "Whatever.");
}

proc testNonLettersWithQuestion(test : borrowed Test) throws {
  test.assertEqual(response(":) ?"), "Sure.");
}

proc testPrattlingOn(test : borrowed Test) throws {
  test.assertEqual(response("Wait! Hang on. Are you going to be OK?"), "Sure.");
}

proc testSilence(test : borrowed Test) throws {
  test.assertEqual(response(""), "Fine. Be that way!");
}

proc testProlongedSilence(test : borrowed Test) throws {
  test.assertEqual(response("          "), "Fine. Be that way!");
}

proc testAlternateSilence(test : borrowed Test) throws {
  test.assertEqual(response("\t\t\t\t\t\t\t\t\t\t"), "Fine. Be that way!");
}

proc testMultipleLineQuestion(test : borrowed Test) throws {
  test.assertEqual(response("\nDoes this cryogenic chamber make me look fat?\nNo."), "Whatever.");
}

proc testStartingWithWhitespace(test : borrowed Test) throws {
  test.assertEqual(response("         hmmmmmmm..."), "Whatever.");
}

proc testEndingWithWhitespace(test : borrowed Test) throws {
  test.assertEqual(response("Okay if like my  spacebar  quite a bit?   "), "Sure.");
}

proc testOtherWhitespace(test : borrowed Test) throws {
  test.assertEqual(response("\n\r \t"), "Fine. Be that way!");
}

proc testNonQuestionEndingWithWhitespace(test : borrowed Test) throws {
  test.assertEqual(response("This is a statement ending with whitespace      "), "Whatever.");
}

UnitTest.main();
