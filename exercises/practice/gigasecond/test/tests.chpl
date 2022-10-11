use UnitTest;

use Gigasecond;

proc testFullTimeSpecified(test : borrowed Test) throws {
  test.assertEqual(from(new datetime(2015, 01, 24, hour=22, minute=00, second=00)), new datetime(2046, 10, 02, hour=23, minute=46, second=40));
}

proc testFullTimeWithDayRollOver(test : borrowed Test) throws {
  test.assertEqual(from(new datetime(2015, 01, 24, hour=23, minute=59, second=59)), new datetime(2046, 10, 03, hour=01, minute=46, second=39));
}

UnitTest.main();
