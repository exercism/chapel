use UnitTest;

use Raindrops;

proc testTheSoundFor1Is1(test : borrowed Test) throws {
  test.assertEqual(raindrops(1), "1");
}

proc testTheSoundFor3IsPling(test : borrowed Test) throws {
  test.assertEqual(raindrops(3), "Pling");
}

proc testTheSoundFor5IsPlang(test : borrowed Test) throws {
  test.assertEqual(raindrops(5), "Plang");
}

proc testTheSoundFor7IsPlong(test : borrowed Test) throws {
  test.assertEqual(raindrops(7), "Plong");
}

proc testTheSoundFor6IsPlingAsItHasAFactor3(test : borrowed Test) throws {
  test.assertEqual(raindrops(6), "Pling");
}

proc test2ToThePower3DoesNotMakeARaindropSoundAs3IsTheExponentNotTheBase(test : borrowed Test) throws {
  test.assertEqual(raindrops(8), "8");
}

proc testTheSoundFor9IsPlingAsItHasAFactor3(test : borrowed Test) throws {
  test.assertEqual(raindrops(9), "Pling");
}

proc testTheSoundFor10IsPlangAsItHasAFactor5(test : borrowed Test) throws {
  test.assertEqual(raindrops(10), "Plang");
}

proc testTheSoundFor14IsPlongAsItHasAFactorOf7(test : borrowed Test) throws {
  test.assertEqual(raindrops(14), "Plong");
}

proc testTheSoundFor15IsPlingplangAsItHasFactors3And5(test : borrowed Test) throws {
  test.assertEqual(raindrops(15), "PlingPlang");
}

proc testTheSoundFor21IsPlingplongAsItHasFactors3And7(test : borrowed Test) throws {
  test.assertEqual(raindrops(21), "PlingPlong");
}

proc testTheSoundFor25IsPlangAsItHasAFactor5(test : borrowed Test) throws {
  test.assertEqual(raindrops(25), "Plang");
}

proc testTheSoundFor27IsPlingAsItHasAFactor3(test : borrowed Test) throws {
  test.assertEqual(raindrops(27), "Pling");
}

proc testTheSoundFor35IsPlangplongAsItHasFactors5And7(test : borrowed Test) throws {
  test.assertEqual(raindrops(35), "PlangPlong");
}

proc testTheSoundFor49IsPlongAsItHasAFactor7(test : borrowed Test) throws {
  test.assertEqual(raindrops(49), "Plong");
}

proc testTheSoundFor52Is52(test : borrowed Test) throws {
  test.assertEqual(raindrops(52), "52");
}

proc testTheSoundFor105IsPlingplangplongAsItHasFactors35And7(test : borrowed Test) throws {
  test.assertEqual(raindrops(105), "PlingPlangPlong");
}

proc testTheSoundFor3125IsPlangAsItHasAFactor5(test : borrowed Test) throws {
  test.assertEqual(raindrops(3125), "Plang");
}

UnitTest.main();
