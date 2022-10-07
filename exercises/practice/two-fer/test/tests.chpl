use UnitTest;

use TwoFer;

proc test_no_name_given(test : borrowed Test) throws {
  test.assertEqual(two_fer(), "One for you, one for me.");
}

proc test_a_name_given(test : borrowed Test) throws {
  test.assertEqual(two_fer("Alice"), "One for Alice, one for me.");
}

proc test_another_name_given(test : borrowed Test) throws {
  test.assertEqual(two_fer("Bob"), "One for Bob, one for me.");
}

UnitTest.main();
