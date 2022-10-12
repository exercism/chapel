use UnitTest;
use UnitTest.TestError;
use CollatzConjecture; 

proc testZeroStepsForOne(test : borrowed Test) throws {
  test.assertEqual(steps(1), 0);
}

proc testDivideIfEven(test : borrowed Test) throws {
  test.assertEqual(steps(16), 4);
}

proc testEvenAndOddSteps(test : borrowed Test) throws {
  test.assertEqual(steps(12), 9);
}

proc testLargeNumberOfEvenAndOddSteps(test : borrowed Test) throws {
  test.assertEqual(steps(1000000), 152);
}

proc testZeroIsAnError(test : borrowed Test) throws {
  try {
    steps(0);
    throw new AssertionError("Function was expected to throw an error");
  } catch e : IllegalArgumentError {
    test.assertEqual(e.message(), "Only positive integers are allowed");
  } catch e {
    throw e;
  }
}

proc testNegativeValueIsAnError(test : borrowed Test) throws {
  try {
    steps(-15);
    throw new AssertionError("Function was expected to throw an error");
  } catch e : IllegalArgumentError {
    test.assertEqual(e.message(), "Only positive integers are allowed");
  } catch e {
    throw e;
  }
}

UnitTest.main();
