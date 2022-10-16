use UnitTest;

use Dominoes;

proc testEmptyInputEmptyOutput(test : borrowed Test) throws {
  var edges: [1..0] [0..1] int;
  test.assertTrue(canChain(edges));
}

proc testSingletonInputSingletonOutput(test : borrowed Test) throws {
  test.assertTrue(canChain([[1, 1]]));
}

proc testSingletonThatCantBeChained(test : borrowed Test) throws {
  test.assertFalse(canChain([[1, 2]]));
}

proc testThreeElements(test : borrowed Test) throws {
  test.assertTrue(canChain([[1, 2], [3, 1], [2, 3]]));
}

proc testCanReverseDominoes(test : borrowed Test) throws {
  test.assertTrue(canChain([[1, 2], [1, 3], [2, 3]]));
}

proc testCantBeChained(test : borrowed Test) throws {
  test.assertFalse(canChain([[1, 2], [4, 1], [2, 3]]));
}

proc testDisconnectedSimple(test : borrowed Test) throws {
  test.assertFalse(canChain([[1, 1], [2, 2]]));
}

proc testDisconnectedDoubleLoop(test : borrowed Test) throws {
  test.assertFalse(canChain([[1, 2], [2, 1], [3, 4], [4, 3]]));
}

proc testDisconnectedSingleIsolated(test : borrowed Test) throws {
  test.assertFalse(canChain([[1, 2], [2, 3], [3, 1], [4, 4]]));
}

proc testNeedBacktrack(test : borrowed Test) throws {
  test.assertTrue(canChain([[1, 2], [2, 3], [3, 1], [2, 4], [2, 4]]));
}

proc testSeparateLoops(test : borrowed Test) throws {
  test.assertTrue(canChain([[1, 2], [2, 3], [3, 1], [1, 1], [2, 2], [3, 3]]));
}

proc testNineElements(test : borrowed Test) throws {
  test.assertTrue(canChain([[1, 2], [5, 3], [3, 1], [1, 2], [2, 4], [1, 6], [2, 3], [3, 4], [5, 6]]));
}

proc testSeparateThreeDominoLoops(test : borrowed Test) throws {
  test.assertFalse(canChain([[1, 2], [2, 3], [3, 1], [4, 5], [5, 6], [6, 4]]));
}

UnitTest.main();
