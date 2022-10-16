use UnitTest;

use Diamond;


proc testDegenerateCaseWithASingleARow(test : borrowed Test) throws {
  var expected = ["A"];
  test.assertEqual(rows("A"), expected);
}

proc testDegenerateCaseWithNoRowContaining3DistinctGroupsOfSpaces(test : borrowed Test) throws {
  var expected = [" A ", "B B", " A "];
  test.assertEqual(rows("B"), expected);
}

proc testSmallestNonDegenerateCaseWithOddDiamondSideLength(test : borrowed Test) throws {
  var expected = ["  A  ", " B B ", "C   C", " B B ", "  A  "];
  test.assertEqual(rows("C"), expected);
}

proc testSmallestNonDegenerateCaseWithEvenDiamondSideLength(test : borrowed Test) throws {
  var expected = ["   A   ", "  B B  ", " C   C ", "D     D", " C   C ", "  B B  ", "   A   "];
  test.assertEqual(rows("D"), expected);
}

proc testLargestPossibleDiamond(test : borrowed Test) throws {
  var expected = ["                         A                         ", "                        B B                        ", "                       C   C                       ", "                      D     D                      ", "                     E       E                     ", "                    F         F                    ", "                   G           G                   ", "                  H             H                  ", "                 I               I                 ", "                J                 J                ", "               K                   K               ", "              L                     L              ", "             M                       M             ", "            N                         N            ", "           O                           O           ", "          P                             P          ", "         Q                               Q         ", "        R                                 R        ", "       S                                   S       ", "      T                                     T      ", "     U                                       U     ", "    V                                         V    ", "   W                                           W   ", "  X                                             X  ", " Y                                               Y ", "Z                                                 Z", " Y                                               Y ", "  X                                             X  ", "   W                                           W   ", "    V                                         V    ", "     U                                       U     ", "      T                                     T      ", "       S                                   S       ", "        R                                 R        ", "         Q                               Q         ", "          P                             P          ", "           O                           O           ", "            N                         N            ", "             M                       M             ", "              L                     L              ", "               K                   K               ", "                J                 J                ", "                 I               I                 ", "                  H             H                  ", "                   G           G                   ", "                    F         F                    ", "                     E       E                     ", "                      D     D                      ", "                       C   C                       ", "                        B B                        ", "                         A                         "];
  test.assertEqual(rows("Z"), expected);
}

UnitTest.main();
