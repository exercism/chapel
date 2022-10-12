module Allergies {
  const allergens = ["eggs", "peanuts", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"];

  proc isAllergicTo(score: int, allergen: string) {
    var (_, idx) = allergens.find(allergen);
    return (1 << idx) & score != 0;
  }

  proc listAllergens(score: int) {
    return [allergen in allergens] if isAllergicTo(score, allergen) then allergen;
  }
}
