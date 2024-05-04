use UnitTest;
use Time;
use Gigasecond;

proc testFullTimeSpecified(test : borrowed Test) throws {
  var input    = new dateTime(2015, 01, 24, hour=22, minute=00, second=00),
      expected = new dateTime(2046, 10, 02, hour=23, minute=46, second=40);
  test.assertEqual(addGigasecond(input), expected);
}

proc testFullTimeWithDayRollOver(test : borrowed Test) throws {
  var input    = new dateTime(2015, 01, 24, hour=23, minute=59, second=59),
      expected = new dateTime(2046, 10, 03, hour=01, minute=46, second=39);
  test.assertEqual(addGigasecond(input), expected);
}

UnitTest.main();
