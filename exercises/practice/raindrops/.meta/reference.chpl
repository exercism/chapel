module Raindrops {
  proc raindrops(num : int) {
    var drops = "";
    if num % 3 == 0 then drops += "Pling";
    if num % 5 == 0 then drops += "Plang";
    if num % 7 == 0 then drops += "Plong";
    if drops.isEmpty() then drops = num : string;
    return drops;
  }
}
