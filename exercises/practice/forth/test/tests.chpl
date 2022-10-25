use UnitTest;

use Forth;


proc testParsingAndNumbersNumbersJustGetPushedOntoTheStack(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 2 3 4 5"]), [1, 2, 3, 4, 5]);
}

proc testParsingAndNumbersPushesNegativeNumbersOntoTheStack(test : borrowed Test) throws {
  test.assertEqual(evaluate(["-1 -2 -3 -4 -5"]), [-1, -2, -3, -4, -5]);
}

proc testAdditionCanAddTwoNumbers(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 2 +"]), [3]);
}

proc testAdditionErrorsIfThereIsNothingOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["+"]);
    throw new owned AssertionError("function was expected to throw an error");
  } catch e: IllegalArgumentError {
    test.assertEqual(e.message(), "empty stack");
  }
}

proc testAdditionErrorsIfThereIsOnlyOneValueOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["1 +"]);
    throw new owned AssertionError("function was expected to throw an error");
  } catch e: IllegalArgumentError {
    test.assertEqual(e.message(), "only one value on the stack");
  }
}

proc testSubtractionCanSubtractTwoNumbers(test : borrowed Test) throws {
  test.assertEqual(evaluate(["3 4 -"]), [-1]);
}

proc testSubtractionErrorsIfThereIsNothingOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["-"]);
    throw new owned AssertionError("function was expected to throw an error");
  } catch e: IllegalArgumentError {
    test.assertEqual(e.message(), "empty stack");
  }
}

proc testSubtractionErrorsIfThereIsOnlyOneValueOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["1 -"]);
    throw new owned AssertionError("function was expected to throw an error");
  } catch e: IllegalArgumentError {
    test.assertEqual(e.message(), "only one value on the stack");
  }
}

proc testMultiplicationCanMultiplyTwoNumbers(test : borrowed Test) throws {
  test.assertEqual(evaluate(["2 4 *"]), [8]);
}

proc testMultiplicationErrorsIfThereIsNothingOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["*"]);
    throw new owned AssertionError("function was expected to throw an error");
  } catch e: IllegalArgumentError {
    test.assertEqual(e.message(), "empty stack");
  }
}

proc testMultiplicationErrorsIfThereIsOnlyOneValueOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["1 *"]);
    throw new owned AssertionError("function was expected to throw an error");
  } catch e: IllegalArgumentError {
    test.assertEqual(e.message(), "only one value on the stack");
  }
}

proc testDivisionCanDivideTwoNumbers(test : borrowed Test) throws {
  test.assertEqual(evaluate(["12 3 /"]), [4]);
}

proc testDivisionPerformsIntegerDivision(test : borrowed Test) throws {
  test.assertEqual(evaluate(["8 3 /"]), [2]);
}

proc testDivisionErrorsIfDividingByZero(test : borrowed Test) throws {
  try {
    evaluate(["4 0 /"]);
    throw new owned AssertionError("function was expected to throw an error");
  } catch e: IllegalArgumentError {
    test.assertEqual(e.message(), "divide by zero");
  }
}

proc testDivisionErrorsIfThereIsNothingOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["/"]);
    throw new owned AssertionError("function was expected to throw an error");
  } catch e: IllegalArgumentError {
    test.assertEqual(e.message(), "empty stack");
  }
}

proc testDivisionErrorsIfThereIsOnlyOneValueOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["1 /"]);
    throw new owned AssertionError("function was expected to throw an error");
  } catch e: IllegalArgumentError {
    test.assertEqual(e.message(), "only one value on the stack");
  }
}

proc testCombinedArithmeticAdditionAndSubtraction(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 2 + 4 -"]), [-1]);
}

proc testCombinedArithmeticMultiplicationAndDivision(test : borrowed Test) throws {
  test.assertEqual(evaluate(["2 4 * 3 /"]), [2]);
}

proc testDupCopiesAValueOnTheStack(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 dup"]), [1, 1]);
}

proc testDupCopiesTheTopValueOnTheStack(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 2 dup"]), [1, 2, 2]);
}

proc testDupErrorsIfThereIsNothingOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["dup"]);
    throw new owned AssertionError("function was expected to throw an error");
  } catch e: IllegalArgumentError {
    test.assertEqual(e.message(), "empty stack");
  }
}

proc testDropRemovesTheTopValueOnTheStackIfItIsTheOnlyOne(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 drop"]), []);
}

proc testDropRemovesTheTopValueOnTheStackIfItIsNotTheOnlyOne(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 2 drop"]), [1]);
}

proc testDropErrorsIfThereIsNothingOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["drop"]);
    throw new owned AssertionError("function was expected to throw an error");
  } catch e: IllegalArgumentError {
    test.assertEqual(e.message(), "empty stack");
  }
}

proc testSwapSwapsTheTopTwoValuesOnTheStackIfTheyAreTheOnlyOnes(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 2 swap"]), [2, 1]);
}

proc testSwapSwapsTheTopTwoValuesOnTheStackIfTheyAreNotTheOnlyOnes(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 2 3 swap"]), [1, 3, 2]);
}

proc testSwapErrorsIfThereIsNothingOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["swap"]);
    throw new owned AssertionError("function was expected to throw an error");
  } catch e: IllegalArgumentError {
    test.assertEqual(e.message(), "empty stack");
  }
}

proc testSwapErrorsIfThereIsOnlyOneValueOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["1 swap"]);
    throw new owned AssertionError("function was expected to throw an error");
  } catch e: IllegalArgumentError {
    test.assertEqual(e.message(), "only one value on the stack");
  }
}

proc testOverCopiesTheSecondElementIfThereAreOnlyTwo(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 2 over"]), [1, 2, 1]);
}

proc testOverCopiesTheSecondElementIfThereAreMoreThanTwo(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 2 3 over"]), [1, 2, 3, 2]);
}

proc testOverErrorsIfThereIsNothingOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["over"]);
    throw new owned AssertionError("function was expected to throw an error");
  } catch e: IllegalArgumentError {
    test.assertEqual(e.message(), "empty stack");
  }
}

proc testOverErrorsIfThereIsOnlyOneValueOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["1 over"]);
    throw new owned AssertionError("function was expected to throw an error");
  } catch e: IllegalArgumentError {
    test.assertEqual(e.message(), "only one value on the stack");
  }
}

proc testUserDefinedWordsCanConsistOfBuiltInWords(test : borrowed Test) throws {
  test.assertEqual(evaluate([": dup-twice dup dup ;", "1 dup-twice"]), [1, 1, 1]);
}

proc testUserDefinedWordsExecuteInTheRightOrder(test : borrowed Test) throws {
  test.assertEqual(evaluate([": countup 1 2 3 ;", "countup"]), [1, 2, 3]);
}

proc testUserDefinedWordsCanOverrideOtherUserDefinedWords(test : borrowed Test) throws {
  test.assertEqual(evaluate([": foo dup ;", ": foo dup dup ;", "1 foo"]), [1, 1, 1]);
}

proc testUserDefinedWordsCanOverrideBuiltInWords(test : borrowed Test) throws {
  test.assertEqual(evaluate([": swap dup ;", "1 swap"]), [1, 1]);
}

proc testUserDefinedWordsCanOverrideBuiltInOperators(test : borrowed Test) throws {
  test.assertEqual(evaluate([": + * ;", "3 4 +"]), [12]);
}

proc testUserDefinedWordsCanUseDifferentWordsWithTheSameName(test : borrowed Test) throws {
  test.assertEqual(evaluate([": foo 5 ;", ": bar foo ;", ": foo 6 ;", "bar foo"]), [5, 6]);
}

proc testUserDefinedWordsCanDefineWordThatUsesWordWithTheSameName(test : borrowed Test) throws {
  test.assertEqual(evaluate([": foo 10 ;", ": foo foo 1 + ;", "foo"]), [11]);
}

proc testUserDefinedWordsCannotRedefineNonNegativeNumbers(test : borrowed Test) throws {
  try {
    evaluate([": 1 2 ;"]);
    throw new owned AssertionError("function was expected to throw an error");
  } catch e: IllegalArgumentError {
    test.assertEqual(e.message(), "illegal operation");
  }
}

proc testUserDefinedWordsCannotRedefineNegativeNumbers(test : borrowed Test) throws {
  try {
    evaluate([": -1 2 ;"]);
    throw new owned AssertionError("function was expected to throw an error");
  } catch e: IllegalArgumentError {
    test.assertEqual(e.message(), "illegal operation");
  }
}

proc testUserDefinedWordsErrorsIfExecutingANonExistentWord(test : borrowed Test) throws {
  try {
    evaluate(["foo"]);
    throw new owned AssertionError("function was expected to throw an error");
  } catch e: IllegalArgumentError {
    test.assertEqual(e.message(), "undefined operation");
  }
}

proc testUserDefinedWordsOnlyDefinesLocally(test : borrowed Test) throws {
  test.assertEqual(evaluateBoth([[": + - ;", "1 1 +"], {{instructionsSecond}}), [[0], [2]]);
}

proc testCaseInsensitivityDupIsCaseInsensitive(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 DUP Dup dup"]), [1, 1, 1, 1]);
}

proc testCaseInsensitivityDropIsCaseInsensitive(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 2 3 4 DROP Drop drop"]), [1]);
}

proc testCaseInsensitivitySwapIsCaseInsensitive(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 2 SWAP 3 Swap 4 swap"]), [2, 3, 4, 1]);
}

proc testCaseInsensitivityOverIsCaseInsensitive(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 2 OVER Over over"]), [1, 2, 1, 2, 1]);
}

proc testCaseInsensitivityUserDefinedWordsAreCaseInsensitive(test : borrowed Test) throws {
  test.assertEqual(evaluate([": foo dup ;", "1 FOO Foo foo"]), [1, 1, 1, 1]);
}

proc testCaseInsensitivityDefinitionsAreCaseInsensitive(test : borrowed Test) throws {
  test.assertEqual(evaluate([": SWAP DUP Dup dup ;", "1 swap"]), [1, 1, 1, 1]);
}

UnitTest.main();
