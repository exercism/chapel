use UnitTest;

use Darts;

proc testMissedTarget(test : borrowed Test) throws {
  test.assertEqual(score(-9, 9), 0);
}

proc testOnTheOuterCircle(test : borrowed Test) throws {
  test.assertEqual(score(0, 10), 1);
}

proc testOnTheMiddleCircle(test : borrowed Test) throws {
  test.assertEqual(score(-5, 0), 5);
}

proc testOnTheInnerCircle(test : borrowed Test) throws {
  test.assertEqual(score(0, -1), 10);
}

proc testExactlyOnCentre(test : borrowed Test) throws {
  test.assertEqual(score(0, 0), 10);
}

proc testNearTheCentre(test : borrowed Test) throws {
  test.assertEqual(score(-0.1, -0.1), 10);
}

proc testJustWithinTheInnerCircle(test : borrowed Test) throws {
  test.assertEqual(score(0.7, 0.7), 10);
}

proc testJustOutsideTheInnerCircle(test : borrowed Test) throws {
  test.assertEqual(score(0.8, -0.8), 5);
}

proc testJustWithinTheMiddleCircle(test : borrowed Test) throws {
  test.assertEqual(score(-3.5, 3.5), 5);
}

proc testJustOutsideTheMiddleCircle(test : borrowed Test) throws {
  test.assertEqual(score(-3.6, -3.6), 1);
}

proc testJustWithinTheOuterCircle(test : borrowed Test) throws {
  test.assertEqual(score(-7.0, 7.0), 1);
}

proc testJustOutsideTheOuterCircle(test : borrowed Test) throws {
  test.assertEqual(score(7.1, -7.1), 0);
}

proc testAsymmetricPositionBetweenTheInnerAndMiddleCircles(test : borrowed Test) throws {
  test.assertEqual(score(0.5, -4), 5);
}

UnitTest.main();
