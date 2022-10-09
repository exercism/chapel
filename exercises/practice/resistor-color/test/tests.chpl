use UnitTest;

use ResistorColor;

proc testColorCodesBlack(test : borrowed Test) throws {
  test.assertEqual(colorCode("black"), 0);
}

proc testColorCodesWhite(test : borrowed Test) throws {
  test.assertEqual(colorCode("white"), 9);
}

proc testColorCodesOrange(test : borrowed Test) throws {
  test.assertEqual(colorCode("orange"), 3);
}

proc testColors(test : borrowed Test) throws {
  test.assertEqual(colors(), ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]);
}

UnitTest.main();
