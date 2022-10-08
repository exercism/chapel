use UnitTest;

use Leap;

proc testYearNotDivisibleBy4InCommonYear(test : borrowed Test) throws {
  test.assertFalse(isLeapYear(2015));
}

proc testYearDivisibleBy2NotDivisibleBy4InCommonYear(test : borrowed Test) throws {
  test.assertFalse(isLeapYear(1970));
}

proc testYearDivisibleBy4NotDivisibleBy100InLeapYear(test : borrowed Test) throws {
  test.assertTrue(isLeapYear(1996));
}

proc testYearDivisibleBy4And5IsStillALeapYear(test : borrowed Test) throws {
  test.assertTrue(isLeapYear(1960));
}

proc testYearDivisibleBy100NotDivisibleBy400InCommonYear(test : borrowed Test) throws {
  test.assertFalse(isLeapYear(2100));
}

proc testYearDivisibleBy100ButNotBy3IsStillNotALeapYear(test : borrowed Test) throws {
  test.assertFalse(isLeapYear(1900));
}

proc testYearDivisibleBy400IsLeapYear(test : borrowed Test) throws {
  test.assertTrue(isLeapYear(2000));
}

proc testYearDivisibleBy400ButNotBy125IsStillALeapYear(test : borrowed Test) throws {
  test.assertTrue(isLeapYear(2400));
}

proc testYearDivisibleBy200NotDivisibleBy400InCommonYear(test : borrowed Test) throws {
  test.assertFalse(isLeapYear(1800));
}

UnitTest.main();
