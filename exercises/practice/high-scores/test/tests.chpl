use UnitTest;

use HighScores;


proc testLatestScore(test : borrowed Test) throws {
  test.assertEqual(latest([100, 0, 90, 30]), 30);
}

proc testPersonalBest(test : borrowed Test) throws {
  test.assertEqual(personalBest([40, 100, 70]), 100);
}

proc testTop3ScoresPersonalTopThreeFromAListOfScores(test : borrowed Test) throws {
  test.assertEqual(personalTopThree([10, 30, 90, 30, 100, 20, 10, 0, 30, 40, 40, 70, 70]), [100, 90, 70]);
}

proc testTop3ScoresPersonalTopHighestToLowest(test : borrowed Test) throws {
  test.assertEqual(personalTopThree([20, 10, 30]), [30, 20, 10]);
}

proc testTop3ScoresPersonalTopWhenThereIsATie(test : borrowed Test) throws {
  test.assertEqual(personalTopThree([40, 20, 40, 30]), [40, 40, 30]);
}

proc testTop3ScoresPersonalTopWhenThereAreLessThan3(test : borrowed Test) throws {
  test.assertEqual(personalTopThree([30, 70]), [70, 30]);
}

proc testTop3ScoresPersonalTopWhenThereIsOnlyOne(test : borrowed Test) throws {
  test.assertEqual(personalTopThree([40]), [40]);
}

UnitTest.main();
