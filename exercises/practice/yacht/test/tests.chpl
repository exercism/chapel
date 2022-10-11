use UnitTest;

use Yacht;

proc testYacht(test : borrowed Test) throws {
  test.assertEqual(score([5, 5, 5, 5, 5], "yacht"), 50);
}

proc testNotYacht(test : borrowed Test) throws {
  test.assertEqual(score([1, 3, 3, 2, 5], "yacht"), 0);
}

proc testOnes(test : borrowed Test) throws {
  test.assertEqual(score([1, 1, 1, 3, 5], "ones"), 3);
}

proc testOnesOutOfOrder(test : borrowed Test) throws {
  test.assertEqual(score([3, 1, 1, 5, 1], "ones"), 3);
}

proc testNoOnes(test : borrowed Test) throws {
  test.assertEqual(score([4, 3, 6, 5, 5], "ones"), 0);
}

proc testTwos(test : borrowed Test) throws {
  test.assertEqual(score([2, 3, 4, 5, 6], "twos"), 2);
}

proc testFours(test : borrowed Test) throws {
  test.assertEqual(score([1, 4, 1, 4, 1], "fours"), 8);
}

proc testYachtCountedAsThrees(test : borrowed Test) throws {
  test.assertEqual(score([3, 3, 3, 3, 3], "threes"), 15);
}

proc testYachtOf3sCountedAsFives(test : borrowed Test) throws {
  test.assertEqual(score([3, 3, 3, 3, 3], "fives"), 0);
}

proc testFives(test : borrowed Test) throws {
  test.assertEqual(score([1, 5, 3, 5, 3], "fives"), 10);
}

proc testSixes(test : borrowed Test) throws {
  test.assertEqual(score([2, 3, 4, 5, 6], "sixes"), 6);
}

proc testFullHouseTwoSmallThreeBig(test : borrowed Test) throws {
  test.assertEqual(score([2, 2, 4, 4, 4], "full house"), 16);
}

proc testFullHouseThreeSmallTwoBig(test : borrowed Test) throws {
  test.assertEqual(score([5, 3, 3, 5, 3], "full house"), 19);
}

proc testTwoPairIsNotAFullHouse(test : borrowed Test) throws {
  test.assertEqual(score([2, 2, 4, 4, 5], "full house"), 0);
}

proc testFourOfAKindIsNotAFullHouse(test : borrowed Test) throws {
  test.assertEqual(score([1, 4, 4, 4, 4], "full house"), 0);
}

proc testYachtIsNotAFullHouse(test : borrowed Test) throws {
  test.assertEqual(score([2, 2, 2, 2, 2], "full house"), 0);
}

proc testFourOfAKind(test : borrowed Test) throws {
  test.assertEqual(score([6, 6, 4, 6, 6], "four of a kind"), 24);
}

proc testYachtCanBeScoredAsFourOfAKind(test : borrowed Test) throws {
  test.assertEqual(score([3, 3, 3, 3, 3], "four of a kind"), 12);
}

proc testFullHouseIsNotFourOfAKind(test : borrowed Test) throws {
  test.assertEqual(score([3, 3, 3, 5, 5], "four of a kind"), 0);
}

proc testLittleStraight(test : borrowed Test) throws {
  test.assertEqual(score([3, 5, 4, 1, 2], "little straight"), 30);
}

proc testLittleStraightAsBigStraight(test : borrowed Test) throws {
  test.assertEqual(score([1, 2, 3, 4, 5], "big straight"), 0);
}

proc testFourInOrderButNotALittleStraight(test : borrowed Test) throws {
  test.assertEqual(score([1, 1, 2, 3, 4], "little straight"), 0);
}

proc testNoPairsButNotALittleStraight(test : borrowed Test) throws {
  test.assertEqual(score([1, 2, 3, 4, 6], "little straight"), 0);
}

proc testMinimumIs1MaximumIs5ButNotALittleStraight(test : borrowed Test) throws {
  test.assertEqual(score([1, 1, 3, 4, 5], "little straight"), 0);
}

proc testBigStraight(test : borrowed Test) throws {
  test.assertEqual(score([4, 6, 2, 5, 3], "big straight"), 30);
}

proc testBigStraightAsLittleStraight(test : borrowed Test) throws {
  test.assertEqual(score([6, 5, 4, 3, 2], "little straight"), 0);
}

proc testNoPairsButNotABigStraight(test : borrowed Test) throws {
  test.assertEqual(score([6, 5, 4, 3, 1], "big straight"), 0);
}

proc testChoice(test : borrowed Test) throws {
  test.assertEqual(score([3, 3, 5, 6, 6], "choice"), 23);
}

proc testYachtAsChoice(test : borrowed Test) throws {
  test.assertEqual(score([2, 2, 2, 2, 2], "choice"), 10);
}

UnitTest.main();
