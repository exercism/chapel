use UnitTest;

use Series;
use UnitTest.TestError;


proc testSlicesOfOneFromOne(test : borrowed Test) throws {
  test.assertEqual(slices("1", 1), ["1"]);
}

proc testSlicesOfOneFromTwo(test : borrowed Test) throws {
  test.assertEqual(slices("12", 1), ["1", "2"]);
}

proc testSlicesOfTwo(test : borrowed Test) throws {
  test.assertEqual(slices("35", 2), ["35"]);
}

proc testSlicesOfTwoOverlap(test : borrowed Test) throws {
  test.assertEqual(slices("9142", 2), ["91", "14", "42"]);
}

proc testSlicesCanIncludeDuplicates(test : borrowed Test) throws {
  test.assertEqual(slices("777777", 3), ["777", "777", "777", "777"]);
}

proc testSlicesOfALongSeries(test : borrowed Test) throws {
  test.assertEqual(slices("918493904243", 5), ["91849", "18493", "84939", "49390", "93904", "39042", "90424", "04243"]);
}

proc testSliceLengthIsTooLarge(test : borrowed Test) throws {
  try {
    slices("12345", 6);
    throw new AssertionError("Function was expected to throw an error");
  } catch e : IllegalArgumentError {
    test.assertEqual(e.message(), "slice length cannot be greater than series length");
  } catch e {
    throw e;
  }
}

proc testSliceLengthCannotBeZero(test : borrowed Test) throws {
  try {
    slices("12345", 0);
    throw new AssertionError("Function was expected to throw an error");
  } catch e : IllegalArgumentError {
    test.assertEqual(e.message(), "slice length cannot be zero");
  } catch e {
    throw e;
  }
}

proc testSliceLengthCannotBeNegative(test : borrowed Test) throws {
  try {
    slices("123", -1);
    throw new AssertionError("Function was expected to throw an error");
  } catch e : IllegalArgumentError {
    test.assertEqual(e.message(), "slice length cannot be negative");
  } catch e {
    throw e;
  }
}

proc testEmptySeriesIsInvalid(test : borrowed Test) throws {
  try {
    slices("", 1);
    throw new AssertionError("Function was expected to throw an error");
  } catch e : IllegalArgumentError {
    test.assertEqual(e.message(), "series cannot be empty");
  } catch e {
    throw e;
  }
}

UnitTest.main();
