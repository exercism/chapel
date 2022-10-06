use UnitTest;

use helloWorld;

proc test_hello_world(test : borrowed Test) throws {
  test.assertEqual(hello(), "Hello, Worla!");
}

UnitTest.main();
