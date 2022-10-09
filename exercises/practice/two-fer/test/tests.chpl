use UnitTest;

use TwoFer;

proc testNoNameGiven(test : borrowed Test) throws {
  test.assertEqual(twoFer(), "One for you, one for me.");
}

proc testANameGiven(test : borrowed Test) throws {
  test.assertEqual(twoFer("Alice"), "One for Alice, one for me.");
}

proc testAnotherNameGiven(test : borrowed Test) throws {
  test.assertEqual(twoFer("Bob"), "One for Bob, one for me.");
}

UnitTest.main();
