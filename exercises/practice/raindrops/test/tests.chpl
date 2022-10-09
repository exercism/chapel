use UnitTest;

use Raindrops;

proc testTheSoundFor1Is1(test : borrowed Test) throws {
  test.assertEqual(convert(1), "1");
}

proc testTheSoundFor3IsPling(test : borrowed Test) throws {
  test.assertEqual(convert(3), "Pling");
}

proc testTheSoundFor5IsPlang(test : borrowed Test) throws {
  test.assertEqual(convert(5), "Plang");
}

proc testTheSoundFor7IsPlong(test : borrowed Test) throws {
  test.assertEqual(convert(7), "Plong");
}

proc testTheSoundFor6IsPlingAsItHasAFactor3(test : borrowed Test) throws {
  test.assertEqual(convert(6), "Pling");
}

proc test2ToThePower3DoesNotMakeARaindropSoundAs3IsTheExponentNotTheBase(test : borrowed Test) throws {
  test.assertEqual(convert(8), "8");
}

proc testTheSoundFor9IsPlingAsItHasAFactor3(test : borrowed Test) throws {
  test.assertEqual(convert(9), "Pling");
}

proc testTheSoundFor10IsPlangAsItHasAFactor5(test : borrowed Test) throws {
  test.assertEqual(convert(10), "Plang");
}

proc testTheSoundFor14IsPlongAsItHasAFactorOf7(test : borrowed Test) throws {
  test.assertEqual(convert(14), "Plong");
}

proc testTheSoundFor15IsPlingplangAsItHasFactors3And5(test : borrowed Test) throws {
  test.assertEqual(convert(15), "PlingPlang");
}

proc testTheSoundFor21IsPlingplongAsItHasFactors3And7(test : borrowed Test) throws {
  test.assertEqual(convert(21), "PlingPlong");
}

proc testTheSoundFor25IsPlangAsItHasAFactor5(test : borrowed Test) throws {
  test.assertEqual(convert(25), "Plang");
}

proc testTheSoundFor27IsPlingAsItHasAFactor3(test : borrowed Test) throws {
  test.assertEqual(convert(27), "Pling");
}

proc testTheSoundFor35IsPlangplongAsItHasFactors5And7(test : borrowed Test) throws {
  test.assertEqual(convert(35), "PlangPlong");
}

proc testTheSoundFor49IsPlongAsItHasAFactor7(test : borrowed Test) throws {
  test.assertEqual(convert(49), "Plong");
}

proc testTheSoundFor52Is52(test : borrowed Test) throws {
  test.assertEqual(convert(52), "52");
}

proc testTheSoundFor105IsPlingplangplongAsItHasFactors35And7(test : borrowed Test) throws {
  test.assertEqual(convert(105), "PlingPlangPlong");
}

proc testTheSoundFor3125IsPlangAsItHasAFactor5(test : borrowed Test) throws {
  test.assertEqual(convert(3125), "Plang");
}

UnitTest.main();
