use UnitTest;
use DifferenceOfSquares;

proc test_square_of_sum(test: borrowed Test) throws {
  test.assertEqual(squareOfSum(0), 0);
  test.assertEqual(squareOfSum(1), 1);
  test.assertEqual(squareOfSum(5), 225);
  test.assertEqual(squareOfSum(100), 25502500);
}

proc test_sum_of_squares(test: borrowed Test) throws {
  test.assertEqual(sumOfSquares(0), 0);
  test.assertEqual(sumOfSquares(1), 1);
  test.assertEqual(sumOfSquares(5), 55);
  test.assertEqual(sumOfSquares(100), 338350);
}

proc test_difference_of_squares(test: borrowed Test) throws {
  test.assertEqual(differenceOfSquares(0), 0);
  test.assertEqual(differenceOfSquares(1), 0);
  test.assertEqual(differenceOfSquares(5), 170);
  test.assertEqual(differenceOfSquares(100), 25164150);
}

UnitTest.main();
