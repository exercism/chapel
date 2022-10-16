module Yacht {
  const name2nums = ["ones" => 1, "twos" => 2, "threes" => 3, "fours" => 4, "fives" => 5, "sixes" => 6];

  proc score(nums: [] int, cat: string) {
    var sorted = nums.sorted();
    if name2nums.domain.contains(cat) then return getNumber(sorted, name2nums[cat]);
    else if cat == "full house" then return getFullHouse(sorted);
    else if cat == "four of a kind" then return getFourKind(sorted);
    else if cat == "little straight" then return getLittleStraight(sorted);
    else if cat == "big straight" then return getBigStraight(sorted);
    else if cat == "choice" then return getChoice(sorted);
    else return getYacht(sorted);
  }

  proc getNumber(vals: [] int, num: int) {
   return + reduce [v in vals] if v == num then v else 0;
  }

  proc getFullHouse(nums: [] int) {
    var twoThree = nums[0] == nums[2] && nums[3] == nums[4] && nums[2] != nums[3],
        threeTwo = nums[0] == nums[1] && nums[2] == nums[4] && nums[1] != nums[2];
    return if twoThree || threeTwo then + reduce nums else 0;
  }

  proc getFourKind(nums: [] int) {
    return if nums[0] == nums[3] || nums[1] == nums[4] then 4 * nums[1] else 0;
  }

  proc getLittleStraight(nums: [] int) {
    return if nums.equals([1, 2, 3, 4, 5]) then 30 else 0;
  }

  proc getBigStraight(nums: [] int) {
   return if nums.equals([2, 3, 4, 5, 6]) then 30 else 0;
  }

  proc getChoice(nums: [] int) {
    return + reduce nums;
  }

  proc getYacht(nums: [] int) {
    return if nums[0] == nums[4] then 50 else 0;
  }
}
