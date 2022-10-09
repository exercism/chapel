use UnitTest;

use Allergies;

proc testTestingForEggsAllergyNotAllergicToAnything(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo("eggs"));
}

proc testTestingForEggsAllergyAllergicOnlyToEggs(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo("eggs"));
}

proc testTestingForEggsAllergyAllergicToEggsAndSomethingElse(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo("eggs"));
}

proc testTestingForEggsAllergyAllergicToSomethingButNotEggs(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo("eggs"));
}

proc testTestingForEggsAllergyAllergicToEverything(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo("eggs"));
}

proc testTestingForPeanutsAllergyNotAllergicToAnything(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo("peanuts"));
}

proc testTestingForPeanutsAllergyAllergicOnlyToPeanuts(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo("peanuts"));
}

proc testTestingForPeanutsAllergyAllergicToPeanutsAndSomethingElse(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo("peanuts"));
}

proc testTestingForPeanutsAllergyAllergicToSomethingButNotPeanuts(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo("peanuts"));
}

proc testTestingForPeanutsAllergyAllergicToEverything(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo("peanuts"));
}

proc testTestingForShellfishAllergyNotAllergicToAnything(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo("shellfish"));
}

proc testTestingForShellfishAllergyAllergicOnlyToShellfish(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo("shellfish"));
}

proc testTestingForShellfishAllergyAllergicToShellfishAndSomethingElse(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo("shellfish"));
}

proc testTestingForShellfishAllergyAllergicToSomethingButNotShellfish(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo("shellfish"));
}

proc testTestingForShellfishAllergyAllergicToEverything(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo("shellfish"));
}

proc testTestingForStrawberriesAllergyNotAllergicToAnything(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo("strawberries"));
}

proc testTestingForStrawberriesAllergyAllergicOnlyToStrawberries(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo("strawberries"));
}

proc testTestingForStrawberriesAllergyAllergicToStrawberriesAndSomethingElse(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo("strawberries"));
}

proc testTestingForStrawberriesAllergyAllergicToSomethingButNotStrawberries(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo("strawberries"));
}

proc testTestingForStrawberriesAllergyAllergicToEverything(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo("strawberries"));
}

proc testTestingForTomatoesAllergyNotAllergicToAnything(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo("tomatoes"));
}

proc testTestingForTomatoesAllergyAllergicOnlyToTomatoes(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo("tomatoes"));
}

proc testTestingForTomatoesAllergyAllergicToTomatoesAndSomethingElse(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo("tomatoes"));
}

proc testTestingForTomatoesAllergyAllergicToSomethingButNotTomatoes(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo("tomatoes"));
}

proc testTestingForTomatoesAllergyAllergicToEverything(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo("tomatoes"));
}

proc testTestingForChocolateAllergyNotAllergicToAnything(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo("chocolate"));
}

proc testTestingForChocolateAllergyAllergicOnlyToChocolate(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo("chocolate"));
}

proc testTestingForChocolateAllergyAllergicToChocolateAndSomethingElse(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo("chocolate"));
}

proc testTestingForChocolateAllergyAllergicToSomethingButNotChocolate(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo("chocolate"));
}

proc testTestingForChocolateAllergyAllergicToEverything(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo("chocolate"));
}

proc testTestingForPollenAllergyNotAllergicToAnything(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo("pollen"));
}

proc testTestingForPollenAllergyAllergicOnlyToPollen(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo("pollen"));
}

proc testTestingForPollenAllergyAllergicToPollenAndSomethingElse(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo("pollen"));
}

proc testTestingForPollenAllergyAllergicToSomethingButNotPollen(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo("pollen"));
}

proc testTestingForPollenAllergyAllergicToEverything(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo("pollen"));
}

proc testTestingForCatsAllergyNotAllergicToAnything(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo("cats"));
}

proc testTestingForCatsAllergyAllergicOnlyToCats(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo("cats"));
}

proc testTestingForCatsAllergyAllergicToCatsAndSomethingElse(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo("cats"));
}

proc testTestingForCatsAllergyAllergicToSomethingButNotCats(test : borrowed Test) throws {
  test.assertFalse(isAllergicTo("cats"));
}

proc testTestingForCatsAllergyAllergicToEverything(test : borrowed Test) throws {
  test.assertTrue(isAllergicTo("cats"));
}

proc testListWhenNoAllergies(test : borrowed Test) throws {
  test.assertEqual(list({{input}}), []);
}

proc testListWhenJustEggs(test : borrowed Test) throws {
  test.assertEqual(list({{input}}), ["eggs"]);
}

proc testListWhenJustPeanuts(test : borrowed Test) throws {
  test.assertEqual(list({{input}}), ["peanuts"]);
}

proc testListWhenJustStrawberries(test : borrowed Test) throws {
  test.assertEqual(list({{input}}), ["strawberries"]);
}

proc testListWhenEggsAndPeanuts(test : borrowed Test) throws {
  test.assertEqual(list({{input}}), ["eggs", "peanuts"]);
}

proc testListWhenMoreThanEggsButNotPeanuts(test : borrowed Test) throws {
  test.assertEqual(list({{input}}), ["eggs", "shellfish"]);
}

proc testListWhenLotsOfStuff(test : borrowed Test) throws {
  test.assertEqual(list({{input}}), ["strawberries", "tomatoes", "chocolate", "pollen", "cats"]);
}

proc testListWhenEverything(test : borrowed Test) throws {
  test.assertEqual(list({{input}}), ["eggs", "peanuts", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"]);
}

proc testListWhenNoAllergenScoreParts(test : borrowed Test) throws {
  test.assertEqual(list({{input}}), ["eggs", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"]);
}

proc testListWhenNoAllergenScorePartsWithoutHighestValidScore(test : borrowed Test) throws {
  test.assertEqual(list({{input}}), ["eggs"]);
}

UnitTest.main();
