use UnitTest;

use CircularBuffer; 

proc Test.assertReadError(ref buffer: circularBuffer) throws {
  var expected = "Cannot read from an empty buffer.";
  try {
    buffer.read();
    throw new AssertionError("Test was expected to throw an error.");
  } catch e: Error {
    assertEqual(e.message(), expected);
  }
}

proc Test.assertWriteError(ref buffer: circularBuffer, item: int) throws {
  var expected = "Cannot write to full buffer.";
  try {
    buffer.write(item);
    throw new AssertionError("Test was expected to throw an error.");
  } catch e: Error {
    assertEqual(e.message(), expected);
  }
}

proc testReadingEmptyBufferShouldFail(test : borrowed Test) throws {
  var buffer = new circularBuffer(1);
  test.assertReadError(buffer);
}

proc testCanReadAnItemJustWritten(test : borrowed Test) throws {
  var buffer = new circularBuffer(1);
  buffer.write(1);
  test.assertEqual(buffer.read(), 1);
}

proc testEachItemMayOnlyBeReadOnce(test : borrowed Test) throws {
  var buffer = new circularBuffer(1);
  buffer.write(1);
  test.assertEqual(buffer.read(), 1);
  test.assertReadError(buffer);
}

proc testItemsAreReadInTheOrderTheyAreWritten(test : borrowed Test) throws {
  var buffer = new circularBuffer(2);
  buffer.write(1);
  buffer.write(2);
  test.assertEqual(buffer.read(), 1);
  test.assertEqual(buffer.read(), 2);
}

proc testFullBufferCantBeWrittenTo(test : borrowed Test) throws {
  var buffer = new circularBuffer(1);
  buffer.write(1);
  test.assertWriteError(buffer, 2);
}

proc testAReadFreesUpCapacityForAnotherWrite(test : borrowed Test) throws {
  var buffer = new circularBuffer(1);
  buffer.write(1);
  test.assertEqual(buffer.read(), 1);
  buffer.write(2);
  test.assertEqual(buffer.read(), 2);
}

proc testReadPositionIsMaintainedEvenAcrossMultipleWrites(test : borrowed Test) throws {
  var buffer = new circularBuffer(3);
  buffer.write(1);
  buffer.write(2);
  test.assertEqual(buffer.read(), 1);
  buffer.write(3);
  test.assertEqual(buffer.read(), 2);
  test.assertEqual(buffer.read(), 3);
}

proc testItemsClearedOutOfBufferCantBeRead(test : borrowed Test) throws {
  var buffer = new circularBuffer(1);
  buffer.write(1);
  buffer.clear();
  test.assertReadError(buffer);
}

proc testClearFreesUpCapacityForAnotherWrite(test : borrowed Test) throws {
  var buffer = new circularBuffer(1);
  buffer.write(1);
  buffer.clear();
  buffer.write(2);
  test.assertEqual(buffer.read(), 2);
}

proc testClearDoesNothingOnEmptyBuffer(test : borrowed Test) throws {
  var buffer = new circularBuffer(1);
  buffer.clear();
  buffer.write(1);
  test.assertEqual(buffer.read(), 1);
}

proc testOverwriteActsLikeWriteOnNonFullBuffer(test : borrowed Test) throws {
  var buffer = new circularBuffer(2);
  buffer.write(1);
  buffer.overwrite(2);
  test.assertEqual(buffer.read(), 1);
  test.assertEqual(buffer.read(), 2);
}

proc testOverwriteReplacesTheOldestItemOnFullBuffer(test : borrowed Test) throws {
  var buffer = new circularBuffer(2);
  buffer.write(1);
  buffer.write(2);
  buffer.overwrite(3);
  test.assertEqual(buffer.read(), 2);
  test.assertEqual(buffer.read(), 3);
}

proc testOverwriteReplacesTheOldestItemRemainingInBufferFollowingARead(test : borrowed Test) throws {
  var buffer = new circularBuffer(3);
  buffer.write(1);
  buffer.write(2);
  buffer.write(3);
  test.assertEqual(buffer.read(), 1);
  buffer.write(4);
  buffer.overwrite(5);
  test.assertEqual(buffer.read(), 3);
  test.assertEqual(buffer.read(), 4);
  test.assertEqual(buffer.read(), 5);
}

proc testInitialClearDoesNotAffectWrappingAround(test : borrowed Test) throws {
  var buffer = new circularBuffer(2);
  buffer.clear();
  buffer.write(1);
  buffer.write(2);
  buffer.overwrite(3);
  buffer.overwrite(4);
  test.assertEqual(buffer.read(), 3);
  test.assertEqual(buffer.read(), 4);
  test.assertReadError(buffer);
}

UnitTest.main();
