use UnitTest;

use Allergies;

proc testNotAllergicToAnythingEggs(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo(0, "eggs"));
}

proc testAllergicOnlyToEggs(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo(1, "eggs"));
}

proc testAllergicToEggsAndSomethingElse(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo(3, "eggs"));
}

proc testAllergicToSomethingButNotEggs(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo(2, "eggs"));
}

proc testAllergicToEverythingEggs(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo(255, "eggs"));
}

proc testNotAllergicToAnythingPeanuts(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo(0, "peanuts"));
}

proc testAllergicOnlyToPeanuts(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo(2, "peanuts"));
}

proc testAllergicToPeanutsAndSomethingElse(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo(7, "peanuts"));
}

proc testAllergicToSomethingButNotPeanuts(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo(5, "peanuts"));
}

proc testAllergicToEverythingPeanuts(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo(255, "peanuts"));
}

proc testNotAllergicToAnythingShellfish(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo(0, "shellfish"));
}

proc testAllergicOnlyToShellfish(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo(4, "shellfish"));
}

proc testAllergicToShellfishAndSomethingElse(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo(14, "shellfish"));
}

proc testAllergicToSomethingButNotShellfish(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo(10, "shellfish"));
}

proc testAllergicToEverythingShellfish(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo(255, "shellfish"));
}

proc testNotAllergicToAnythingStrawberries(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo(0, "strawberries"));
}

proc testAllergicOnlyToStrawberries(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo(8, "strawberries"));
}

proc testAllergicToStrawberriesAndSomethingElse(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo(28, "strawberries"));
}

proc testAllergicToSomethingButNotStrawberries(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo(20, "strawberries"));
}

proc testAllergicToEverythingStrawberries(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo(255, "strawberries"));
}

proc testNotAllergicToAnythingTomatoes(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo(0, "tomatoes"));
}

proc testAllergicOnlyToTomatoes(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo(16, "tomatoes"));
}

proc testAllergicToTomatoesAndSomethingElse(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo(56, "tomatoes"));
}

proc testAllergicToSomethingButNotTomatoes(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo(40, "tomatoes"));
}

proc testAllergicToEverythingTomatoes(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo(255, "tomatoes"));
}

proc testNotAllergicToAnythingChocolate(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo(0, "chocolate"));
}

proc testAllergicOnlyToChocolate(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo(32, "chocolate"));
}

proc testAllergicToChocolateAndSomethingElse(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo(112, "chocolate"));
}

proc testAllergicToSomethingButNotChocolate(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo(80, "chocolate"));
}

proc testAllergicToEverythingChocolate(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo(255, "chocolate"));
}

proc testNotAllergicToAnythingPollen(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo(0, "pollen"));
}

proc testAllergicOnlyToPollen(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo(64, "pollen"));
}

proc testAllergicToPollenAndSomethingElse(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo(224, "pollen"));
}

proc testAllergicToSomethingButNotPollen(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo(160, "pollen"));
}

proc testAllergicToEverythingPollen(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo(255, "pollen"));
}

proc testNotAllergicToAnythingCats(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo(0, "cats"));
}

proc testAllergicOnlyToCats(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo(128, "cats"));
}

proc testAllergicToCatsAndSomethingElse(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo(192, "cats"));
}

proc testAllergicToSomethingButNotCats(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo(64, "cats"));
}

proc testAllergicToEverythingCats(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo(255, "cats"));
}

proc testNoAllergies(test : borrowed Test) throws {
  test.assertTrue(listAllergens(0).isEmpty());
}

proc testJustEggs(test : borrowed Test) throws {
  test.assertEqual(listAllergens(1), ["eggs"]);
}

proc testJustPeanuts(test : borrowed Test) throws {
  test.assertEqual(listAllergens(2), ["peanuts"]);
}

proc testJustStrawberries(test : borrowed Test) throws {
  test.assertEqual(listAllergens(8), ["strawberries"]);
}

proc testEggsAndPeanuts(test : borrowed Test) throws {
  test.assertEqual(listAllergens(3), ["eggs", "peanuts"]);
}

proc testMoreThanEggsButNotPeanuts(test : borrowed Test) throws {
  test.assertEqual(listAllergens(5), ["eggs", "shellfish"]);
}

proc testLotsOfStuff(test : borrowed Test) throws {
  test.assertEqual(listAllergens(248), ["strawberries", "tomatoes", "chocolate", "pollen", "cats"]);
}

proc testEverything(test : borrowed Test) throws {
  test.assertEqual(listAllergens(255), ["eggs", "peanuts", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"]);
}

proc testNoAllergenScoreParts(test : borrowed Test) throws {
  test.assertEqual(listAllergens(509), ["eggs", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"]);
}

proc testNoAllergenScorePartsWithoutHighestValidScore(test : borrowed Test) throws {
  test.assertEqual(listAllergens(257), ["eggs"]);
}

UnitTest.main();
