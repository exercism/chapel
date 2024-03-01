use UnitTest;
use RomanNumerals;

proc test_1_is_I(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(1), "I");
}

proc test_2_is_II(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(2), "II");
}

proc test_3_is_III(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(3), "III");
}

proc test_4_is_IV(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(4), "IV");
}

proc test_5_is_V(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(5), "V");
}

proc test_6_is_VI(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(6), "VI");
}

proc test_9_is_IX(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(9), "IX");
}

proc test_16_is_XVI(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(16), "XVI");
}

proc test_27_is_XXVII(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(27), "XXVII");
}

proc test_48_is_XLVIII(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(48), "XLVIII");
}

proc test_49_is_XLIX(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(49), "XLIX");
}

proc test_59_is_LIX(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(59), "LIX");
}

proc test_66_is_LXVI(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(66), "LXVI");
}

proc test_93_is_XCIII(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(93), "XCIII");
}

proc test_141_is_CXLI(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(141), "CXLI");
}

proc test_163_is_CLXIII(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(163), "CLXIII");
}

proc test_166_is_CLXVI(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(166), "CLXVI");
}

proc test_402_is_CDII(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(402), "CDII");
}

proc test_575_is_DLXXV(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(575), "DLXXV");
}

proc test_666_is_DCLXVI(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(666), "DCLXVI");
}

proc test_911_is_CMXI(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(911), "CMXI");
}

proc test_1024_is_MXXIV(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(1024), "MXXIV");
}

proc test_1666_is_MDCLXVI(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(1666), "MDCLXVI");
}

proc test_3000_is_MMM(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(3000), "MMM");
}

proc test_3001_is_MMMI(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(3001), "MMMI");
}

proc test_3999_is_MMMCMXCIX(test : borrowed Test) throws {
  test.assertEqual(toRomanNumeral(3999), "MMMCMXCIX");
}

UnitTest.main();
