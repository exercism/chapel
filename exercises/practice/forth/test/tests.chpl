use UnitTest;
use UnitTest.TestError;
use List;
use Forth;

proc testParsingAndNumbersNumbersJustGetPushedOntoTheStack(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 2 3 4 5"]), new list([1, 2, 3, 4, 5]));
}

proc testParsingAndNumbersPushesNegativeNumbersOntoTheStack(test : borrowed Test) throws {
  test.assertEqual(evaluate(["-1 -2 -3 -4 -5"]), new list([-1, -2, -3, -4, -5]));
}

proc testAdditionCanAddTwoNumbers(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 2 +"]), new list([3]));
}

proc testAdditionErrorsIfThereIsNothingOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["+"]);
    throw new AssertionError("Function was expected to throw an error");
  } catch e : IllegalArgumentError {
    test.assertEqual(e.message(), "empty stack");
  } catch e {
    throw e;
  }
}

proc testAdditionErrorsIfThereIsOnlyOneValueOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["1 +"]);
    throw new AssertionError("Function was expected to throw an error");
  } catch e : IllegalArgumentError {
    test.assertEqual(e.message(), "only one value on the stack");
  } catch e {
    throw e;
  }
}

proc testSubtractionCanSubtractTwoNumbers(test : borrowed Test) throws {
  test.assertEqual(evaluate(["3 4 -"]), new list([-1]));
}

proc testSubtractionErrorsIfThereIsNothingOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["-"]);
    throw new AssertionError("Function was expected to throw an error");
  } catch e : IllegalArgumentError {
    test.assertEqual(e.message(), "empty stack");
  } catch e {
    throw e;
  }
}

proc testSubtractionErrorsIfThereIsOnlyOneValueOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["1 -"]);
    throw new AssertionError("Function was expected to throw an error");
  } catch e : IllegalArgumentError {
    test.assertEqual(e.message(), "only one value on the stack");
  } catch e {
    throw e;
  }
}

proc testMultiplicationCanMultiplyTwoNumbers(test : borrowed Test) throws {
  test.assertEqual(evaluate(["2 4 *"]), new list([8]));
}

proc testMultiplicationErrorsIfThereIsNothingOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["*"]);
    throw new AssertionError("Function was expected to throw an error");
  } catch e : IllegalArgumentError {
    test.assertEqual(e.message(), "empty stack");
  } catch e {
    throw e;
  }
}

proc testMultiplicationErrorsIfThereIsOnlyOneValueOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["1 *"]);
    throw new AssertionError("Function was expected to throw an error");
  } catch e : IllegalArgumentError {
    test.assertEqual(e.message(), "only one value on the stack");
  } catch e {
    throw e;
  }
}

proc testDivisionCanDivideTwoNumbers(test : borrowed Test) throws {
  test.assertEqual(evaluate(["12 3 /"]), new list([4]));
}

proc testDivisionPerformsIntegerDivision(test : borrowed Test) throws {
  test.assertEqual(evaluate(["8 3 /"]), new list([2]));
}

proc testDivisionErrorsIfDividingByZero(test : borrowed Test) throws {
  try {
    evaluate(["4 0 /"]);
    throw new AssertionError("Function was expected to throw an error");
  } catch e : IllegalArgumentError {
    test.assertEqual(e.message(), "divide by zero");
  } catch e {
    throw e;
  }
}

proc testDivisionErrorsIfThereIsNothingOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["/"]);
    throw new AssertionError("Function was expected to throw an error");
  } catch e : IllegalArgumentError {
    test.assertEqual(e.message(), "empty stack");
  } catch e {
    throw e;
  }
}

proc testDivisionErrorsIfThereIsOnlyOneValueOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["1 /"]);
    throw new AssertionError("Function was expected to throw an error");
  } catch e : IllegalArgumentError {
    test.assertEqual(e.message(), "only one value on the stack");
  } catch e {
    throw e;
  }
}

proc testCombinedArithmeticAdditionAndSubtraction(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 2 + 4 -"]), new list([-1]));
}

proc testCombinedArithmeticMultiplicationAndDivision(test : borrowed Test) throws {
  test.assertEqual(evaluate(["2 4 * 3 /"]), new list([2]));
}

proc testDupCopiesAValueOnTheStack(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 dup"]), new list([1, 1]));
}

proc testDupCopiesTheTopValueOnTheStack(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 2 dup"]), new list([1, 2, 2]));
}

proc testDupErrorsIfThereIsNothingOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["dup"]);
    throw new AssertionError("Function was expected to throw an error");
  } catch e : IllegalArgumentError {
    test.assertEqual(e.message(), "empty stack");
  } catch e {
    throw e;
  }
}

proc testDropRemovesTheTopValueOnTheStackIfItIsTheOnlyOne(test : borrowed Test) throws {
  test.assertTrue(evaluate(["1 drop"]).isEmpty());
}

proc testDropRemovesTheTopValueOnTheStackIfItIsNotTheOnlyOne(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 2 drop"]), new list([1]));
}

proc testDropErrorsIfThereIsNothingOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["drop"]);
    throw new AssertionError("Function was expected to throw an error");
  } catch e : IllegalArgumentError {
    test.assertEqual(e.message(), "empty stack");
  } catch e {
    throw e;
  }
}

proc testSwapSwapsTheTopTwoValuesOnTheStackIfTheyAreTheOnlyOnes(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 2 swap"]), new list([2, 1]));
}

proc testSwapSwapsTheTopTwoValuesOnTheStackIfTheyAreNotTheOnlyOnes(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 2 3 swap"]), new list([1, 3, 2]));
}

proc testSwapErrorsIfThereIsNothingOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["swap"]);
    throw new AssertionError("Function was expected to throw an error");
  } catch e : IllegalArgumentError {
    test.assertEqual(e.message(), "empty stack");
  } catch e {
    throw e;
  }
}

proc testSwapErrorsIfThereIsOnlyOneValueOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["1 swap"]);
    throw new AssertionError("Function was expected to throw an error");
  } catch e : IllegalArgumentError {
    test.assertEqual(e.message(), "only one value on the stack");
  } catch e {
    throw e;
  }
}

proc testOverCopiesTheSecondElementIfThereAreOnlyTwo(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 2 over"]), new list([1, 2, 1]));
}

proc testOverCopiesTheSecondElementIfThereAreMoreThanTwo(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 2 3 over"]), new list([1, 2, 3, 2]));
}

proc testOverErrorsIfThereIsNothingOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["over"]);
    throw new AssertionError("Function was expected to throw an error");
  } catch e : IllegalArgumentError {
    test.assertEqual(e.message(), "empty stack");
  } catch e {
    throw e;
  }
}

proc testOverErrorsIfThereIsOnlyOneValueOnTheStack(test : borrowed Test) throws {
  try {
    evaluate(["1 over"]);
    throw new AssertionError("Function was expected to throw an error");
  } catch e : IllegalArgumentError {
    test.assertEqual(e.message(), "only one value on the stack");
  } catch e {
    throw e;
  }
}

proc testUserDefinedWordsCanConsistOfBuiltInWords(test : borrowed Test) throws {
  test.assertEqual(evaluate([": dup-twice dup dup ;", "1 dup-twice"]), new list([1, 1, 1]));
}

proc testUserDefinedWordsExecuteInTheRightOrder(test : borrowed Test) throws {
  test.assertEqual(evaluate([": countup 1 2 3 ;", "countup"]), new list([1, 2, 3]));
}

proc testUserDefinedWordsCanOverrideOtherUserDefinedWords(test : borrowed Test) throws {
  test.assertEqual(evaluate([": foo dup ;", ": foo dup dup ;", "1 foo"]), new list([1, 1, 1]));
}

proc testUserDefinedWordsCanOverrideBuiltInWords(test : borrowed Test) throws {
  test.assertEqual(evaluate([": swap dup ;", "1 swap"]), new list([1, 1]));
}

proc testUserDefinedWordsCanOverrideBuiltInOperators(test : borrowed Test) throws {
  test.assertEqual(evaluate([": + * ;", "3 4 +"]), new list([12]));
}

proc testUserDefinedWordsCanUseDifferentWordsWithTheSameName(test : borrowed Test) throws {
  test.assertEqual(evaluate([": foo 5 ;", ": bar foo ;", ": foo 6 ;", "bar foo"]), new list([5, 6]));
}

proc testUserDefinedWordsCanDefineWordThatUsesWordWithTheSameName(test : borrowed Test) throws {
  test.assertEqual(evaluate([": foo 10 ;", ": foo foo 1 + ;", "foo"]), new list([11]));
}
 
proc testUserDefinedWordsCannotRedefineNonNegativeNumbers(test : borrowed Test) throws {
  try {
    evaluate([": 1 2 ;"]);
    throw new AssertionError("Function was expected to throw an error");
  } catch e : IllegalArgumentError {
    test.assertEqual(e.message(), "illegal operation");
  } catch e {
    throw e;
  }
}

proc testUserDefinedWordsCannotRedefineNegativeNumbers(test : borrowed Test) throws {
  try {
    evaluate([": -1 2 ;"]);
    throw new AssertionError("Function was expected to throw an error");
  } catch e : IllegalArgumentError {
    test.assertEqual(e.message(), "illegal operation");
  } catch e {
    throw e;
  }
}

proc testUserDefinedWordsErrorsIfExecutingANonExistentWord(test : borrowed Test) throws {
  try {
    evaluate(["foo"]);
    throw new AssertionError("Function was expected to throw an error");
  } catch e : IllegalArgumentError {
    test.assertEqual(e.message(), "undefined operation");
  } catch e {
    throw e;
  }
}

proc testUserDefinedWordsOnlyDefinesLocally(test : borrowed Test) throws {
  var result1 = evaluate([": + - ;", "1 1 +"]);
  var result2 = evaluate(["1 1 +"]);
  test.assertEqual([result1, result2], [new list([0]), new list([2])]);
}

proc testCaseInsensitivityDupIsCaseInsensitive(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 DUP Dup dup"]), new list([1, 1, 1, 1]));
}

proc testCaseInsensitivityDropIsCaseInsensitive(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 2 3 4 DROP Drop drop"]), new list([1]));
}

proc testCaseInsensitivitySwapIsCaseInsensitive(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 2 SWAP 3 Swap 4 swap"]), new list([2, 3, 4, 1]));
}

proc testCaseInsensitivityOverIsCaseInsensitive(test : borrowed Test) throws {
  test.assertEqual(evaluate(["1 2 OVER Over over"]), new list([1, 2, 1, 2, 1]));
}

proc testCaseInsensitivityUserDefinedWordsAreCaseInsensitive(test : borrowed Test) throws {
  test.assertEqual(evaluate([": foo dup ;", "1 FOO Foo foo"]), new list([1, 1, 1, 1]));
}

proc testCaseInsensitivityDefinitionsAreCaseInsensitive(test : borrowed Test) throws {
  test.assertEqual(evaluate([": SWAP DUP Dup dup ;", "1 swap"]), new list([1, 1, 1, 1]));
}

UnitTest.main();
