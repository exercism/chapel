module DifferenceOfSquares {
  proc sumOfSquares(n) do return + reduce (1..n)**2;
  
  proc squareOfSum(n) do return (+ reduce (1..n))**2;

  proc differenceOfSquares(n) do return squareOfSum(n) - sumOfSquares(n);
}
