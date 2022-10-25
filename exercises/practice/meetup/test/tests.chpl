use UnitTest;

use Meetup;


proc testWhenTeenthMondayIsThe13thTheFirstDayOfTheTeenthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 5, "teenth", "Monday"), new date(2013, 5, 13));
}

proc testWhenTeenthMondayIsThe19thTheLastDayOfTheTeenthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 8, "teenth", "Monday"), new date(2013, 8, 19));
}

proc testWhenTeenthMondayIsSomeDayInTheMiddleOfTheTeenthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 9, "teenth", "Monday"), new date(2013, 9, 16));
}

proc testWhenTeenthTuesdayIsThe19thTheLastDayOfTheTeenthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 3, "teenth", "Tuesday"), new date(2013, 3, 19));
}

proc testWhenTeenthTuesdayIsSomeDayInTheMiddleOfTheTeenthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 4, "teenth", "Tuesday"), new date(2013, 4, 16));
}

proc testWhenTeenthTuesdayIsThe13thTheFirstDayOfTheTeenthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 8, "teenth", "Tuesday"), new date(2013, 8, 13));
}

proc testWhenTeenthWednesdayIsSomeDayInTheMiddleOfTheTeenthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 1, "teenth", "Wednesday"), new date(2013, 1, 16));
}

proc testWhenTeenthWednesdayIsThe13thTheFirstDayOfTheTeenthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 2, "teenth", "Wednesday"), new date(2013, 2, 13));
}

proc testWhenTeenthWednesdayIsThe19thTheLastDayOfTheTeenthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 6, "teenth", "Wednesday"), new date(2013, 6, 19));
}

proc testWhenTeenthThursdayIsSomeDayInTheMiddleOfTheTeenthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 5, "teenth", "Thursday"), new date(2013, 5, 16));
}

proc testWhenTeenthThursdayIsThe13thTheFirstDayOfTheTeenthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 6, "teenth", "Thursday"), new date(2013, 6, 13));
}

proc testWhenTeenthThursdayIsThe19thTheLastDayOfTheTeenthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 9, "teenth", "Thursday"), new date(2013, 9, 19));
}

proc testWhenTeenthFridayIsThe19thTheLastDayOfTheTeenthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 4, "teenth", "Friday"), new date(2013, 4, 19));
}

proc testWhenTeenthFridayIsSomeDayInTheMiddleOfTheTeenthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 8, "teenth", "Friday"), new date(2013, 8, 16));
}

proc testWhenTeenthFridayIsThe13thTheFirstDayOfTheTeenthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 9, "teenth", "Friday"), new date(2013, 9, 13));
}

proc testWhenTeenthSaturdayIsSomeDayInTheMiddleOfTheTeenthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 2, "teenth", "Saturday"), new date(2013, 2, 16));
}

proc testWhenTeenthSaturdayIsThe13thTheFirstDayOfTheTeenthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 4, "teenth", "Saturday"), new date(2013, 4, 13));
}

proc testWhenTeenthSaturdayIsThe19thTheLastDayOfTheTeenthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 10, "teenth", "Saturday"), new date(2013, 10, 19));
}

proc testWhenTeenthSundayIsThe19thTheLastDayOfTheTeenthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 5, "teenth", "Sunday"), new date(2013, 5, 19));
}

proc testWhenTeenthSundayIsSomeDayInTheMiddleOfTheTeenthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 6, "teenth", "Sunday"), new date(2013, 6, 16));
}

proc testWhenTeenthSundayIsThe13thTheFirstDayOfTheTeenthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 10, "teenth", "Sunday"), new date(2013, 10, 13));
}

proc testWhenFirstMondayIsSomeDayInTheMiddleOfTheFirstWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 3, "first", "Monday"), new date(2013, 3, 4));
}

proc testWhenFirstMondayIsThe1stTheFirstDayOfTheFirstWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 4, "first", "Monday"), new date(2013, 4, 1));
}

proc testWhenFirstTuesdayIsThe7thTheLastDayOfTheFirstWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 5, "first", "Tuesday"), new date(2013, 5, 7));
}

proc testWhenFirstTuesdayIsSomeDayInTheMiddleOfTheFirstWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 6, "first", "Tuesday"), new date(2013, 6, 4));
}

proc testWhenFirstWednesdayIsSomeDayInTheMiddleOfTheFirstWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 7, "first", "Wednesday"), new date(2013, 7, 3));
}

proc testWhenFirstWednesdayIsThe7thTheLastDayOfTheFirstWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 8, "first", "Wednesday"), new date(2013, 8, 7));
}

proc testWhenFirstThursdayIsSomeDayInTheMiddleOfTheFirstWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 9, "first", "Thursday"), new date(2013, 9, 5));
}

proc testWhenFirstThursdayIsAnotherDayInTheMiddleOfTheFirstWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 10, "first", "Thursday"), new date(2013, 10, 3));
}

proc testWhenFirstFridayIsThe1stTheFirstDayOfTheFirstWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 11, "first", "Friday"), new date(2013, 11, 1));
}

proc testWhenFirstFridayIsSomeDayInTheMiddleOfTheFirstWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 12, "first", "Friday"), new date(2013, 12, 6));
}

proc testWhenFirstSaturdayIsSomeDayInTheMiddleOfTheFirstWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 1, "first", "Saturday"), new date(2013, 1, 5));
}

proc testWhenFirstSaturdayIsAnotherDayInTheMiddleOfTheFirstWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 2, "first", "Saturday"), new date(2013, 2, 2));
}

proc testWhenFirstSundayIsSomeDayInTheMiddleOfTheFirstWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 3, "first", "Sunday"), new date(2013, 3, 3));
}

proc testWhenFirstSundayIsThe7thTheLastDayOfTheFirstWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 4, "first", "Sunday"), new date(2013, 4, 7));
}

proc testWhenSecondMondayIsSomeDayInTheMiddleOfTheSecondWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 3, "second", "Monday"), new date(2013, 3, 11));
}

proc testWhenSecondMondayIsThe8thTheFirstDayOfTheSecondWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 4, "second", "Monday"), new date(2013, 4, 8));
}

proc testWhenSecondTuesdayIsThe14thTheLastDayOfTheSecondWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 5, "second", "Tuesday"), new date(2013, 5, 14));
}

proc testWhenSecondTuesdayIsSomeDayInTheMiddleOfTheSecondWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 6, "second", "Tuesday"), new date(2013, 6, 11));
}

proc testWhenSecondWednesdayIsSomeDayInTheMiddleOfTheSecondWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 7, "second", "Wednesday"), new date(2013, 7, 10));
}

proc testWhenSecondWednesdayIsThe14thTheLastDayOfTheSecondWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 8, "second", "Wednesday"), new date(2013, 8, 14));
}

proc testWhenSecondThursdayIsSomeDayInTheMiddleOfTheSecondWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 9, "second", "Thursday"), new date(2013, 9, 12));
}

proc testWhenSecondThursdayIsAnotherDayInTheMiddleOfTheSecondWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 10, "second", "Thursday"), new date(2013, 10, 10));
}

proc testWhenSecondFridayIsThe8thTheFirstDayOfTheSecondWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 11, "second", "Friday"), new date(2013, 11, 8));
}

proc testWhenSecondFridayIsSomeDayInTheMiddleOfTheSecondWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 12, "second", "Friday"), new date(2013, 12, 13));
}

proc testWhenSecondSaturdayIsSomeDayInTheMiddleOfTheSecondWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 1, "second", "Saturday"), new date(2013, 1, 12));
}

proc testWhenSecondSaturdayIsAnotherDayInTheMiddleOfTheSecondWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 2, "second", "Saturday"), new date(2013, 2, 9));
}

proc testWhenSecondSundayIsSomeDayInTheMiddleOfTheSecondWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 3, "second", "Sunday"), new date(2013, 3, 10));
}

proc testWhenSecondSundayIsThe14thTheLastDayOfTheSecondWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 4, "second", "Sunday"), new date(2013, 4, 14));
}

proc testWhenThirdMondayIsSomeDayInTheMiddleOfTheThirdWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 3, "third", "Monday"), new date(2013, 3, 18));
}

proc testWhenThirdMondayIsThe15thTheFirstDayOfTheThirdWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 4, "third", "Monday"), new date(2013, 4, 15));
}

proc testWhenThirdTuesdayIsThe21stTheLastDayOfTheThirdWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 5, "third", "Tuesday"), new date(2013, 5, 21));
}

proc testWhenThirdTuesdayIsSomeDayInTheMiddleOfTheThirdWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 6, "third", "Tuesday"), new date(2013, 6, 18));
}

proc testWhenThirdWednesdayIsSomeDayInTheMiddleOfTheThirdWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 7, "third", "Wednesday"), new date(2013, 7, 17));
}

proc testWhenThirdWednesdayIsThe21stTheLastDayOfTheThirdWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 8, "third", "Wednesday"), new date(2013, 8, 21));
}

proc testWhenThirdThursdayIsSomeDayInTheMiddleOfTheThirdWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 9, "third", "Thursday"), new date(2013, 9, 19));
}

proc testWhenThirdThursdayIsAnotherDayInTheMiddleOfTheThirdWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 10, "third", "Thursday"), new date(2013, 10, 17));
}

proc testWhenThirdFridayIsThe15thTheFirstDayOfTheThirdWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 11, "third", "Friday"), new date(2013, 11, 15));
}

proc testWhenThirdFridayIsSomeDayInTheMiddleOfTheThirdWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 12, "third", "Friday"), new date(2013, 12, 20));
}

proc testWhenThirdSaturdayIsSomeDayInTheMiddleOfTheThirdWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 1, "third", "Saturday"), new date(2013, 1, 19));
}

proc testWhenThirdSaturdayIsAnotherDayInTheMiddleOfTheThirdWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 2, "third", "Saturday"), new date(2013, 2, 16));
}

proc testWhenThirdSundayIsSomeDayInTheMiddleOfTheThirdWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 3, "third", "Sunday"), new date(2013, 3, 17));
}

proc testWhenThirdSundayIsThe21stTheLastDayOfTheThirdWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 4, "third", "Sunday"), new date(2013, 4, 21));
}

proc testWhenFourthMondayIsSomeDayInTheMiddleOfTheFourthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 3, "fourth", "Monday"), new date(2013, 3, 25));
}

proc testWhenFourthMondayIsThe22ndTheFirstDayOfTheFourthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 4, "fourth", "Monday"), new date(2013, 4, 22));
}

proc testWhenFourthTuesdayIsThe28thTheLastDayOfTheFourthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 5, "fourth", "Tuesday"), new date(2013, 5, 28));
}

proc testWhenFourthTuesdayIsSomeDayInTheMiddleOfTheFourthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 6, "fourth", "Tuesday"), new date(2013, 6, 25));
}

proc testWhenFourthWednesdayIsSomeDayInTheMiddleOfTheFourthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 7, "fourth", "Wednesday"), new date(2013, 7, 24));
}

proc testWhenFourthWednesdayIsThe28thTheLastDayOfTheFourthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 8, "fourth", "Wednesday"), new date(2013, 8, 28));
}

proc testWhenFourthThursdayIsSomeDayInTheMiddleOfTheFourthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 9, "fourth", "Thursday"), new date(2013, 9, 26));
}

proc testWhenFourthThursdayIsAnotherDayInTheMiddleOfTheFourthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 10, "fourth", "Thursday"), new date(2013, 10, 24));
}

proc testWhenFourthFridayIsThe22ndTheFirstDayOfTheFourthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 11, "fourth", "Friday"), new date(2013, 11, 22));
}

proc testWhenFourthFridayIsSomeDayInTheMiddleOfTheFourthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 12, "fourth", "Friday"), new date(2013, 12, 27));
}

proc testWhenFourthSaturdayIsSomeDayInTheMiddleOfTheFourthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 1, "fourth", "Saturday"), new date(2013, 1, 26));
}

proc testWhenFourthSaturdayIsAnotherDayInTheMiddleOfTheFourthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 2, "fourth", "Saturday"), new date(2013, 2, 23));
}

proc testWhenFourthSundayIsSomeDayInTheMiddleOfTheFourthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 3, "fourth", "Sunday"), new date(2013, 3, 24));
}

proc testWhenFourthSundayIsThe28thTheLastDayOfTheFourthWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 4, "fourth", "Sunday"), new date(2013, 4, 28));
}

proc testLastMondayInAMonthWithFourMondays(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 3, "last", "Monday"), new date(2013, 3, 25));
}

proc testLastMondayInAMonthWithFiveMondays(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 4, "last", "Monday"), new date(2013, 4, 29));
}

proc testLastTuesdayInAMonthWithFourTuesdays(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 5, "last", "Tuesday"), new date(2013, 5, 28));
}

proc testLastTuesdayInAnotherMonthWithFourTuesdays(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 6, "last", "Tuesday"), new date(2013, 6, 25));
}

proc testLastWednesdayInAMonthWithFiveWednesdays(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 7, "last", "Wednesday"), new date(2013, 7, 31));
}

proc testLastWednesdayInAMonthWithFourWednesdays(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 8, "last", "Wednesday"), new date(2013, 8, 28));
}

proc testLastThursdayInAMonthWithFourThursdays(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 9, "last", "Thursday"), new date(2013, 9, 26));
}

proc testLastThursdayInAMonthWithFiveThursdays(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 10, "last", "Thursday"), new date(2013, 10, 31));
}

proc testLastFridayInAMonthWithFiveFridays(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 11, "last", "Friday"), new date(2013, 11, 29));
}

proc testLastFridayInAMonthWithFourFridays(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 12, "last", "Friday"), new date(2013, 12, 27));
}

proc testLastSaturdayInAMonthWithFourSaturdays(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 1, "last", "Saturday"), new date(2013, 1, 26));
}

proc testLastSaturdayInAnotherMonthWithFourSaturdays(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 2, "last", "Saturday"), new date(2013, 2, 23));
}

proc testLastSundayInAMonthWithFiveSundays(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 3, "last", "Sunday"), new date(2013, 3, 31));
}

proc testLastSundayInAMonthWithFourSundays(test : borrowed Test) throws {
  test.assertEqual(meetup(2013, 4, "last", "Sunday"), new date(2013, 4, 28));
}

proc testWhenLastWednesdayInFebruaryInALeapYearIsThe29th(test : borrowed Test) throws {
  test.assertEqual(meetup(2012, 2, "last", "Wednesday"), new date(2012, 2, 29));
}

proc testLastWednesdayInDecemberThatIsAlsoTheLastDayOfTheYear(test : borrowed Test) throws {
  test.assertEqual(meetup(2014, 12, "last", "Wednesday"), new date(2014, 12, 31));
}

proc testWhenLastSundayInFebruaryInANonLeapYearIsNotThe29th(test : borrowed Test) throws {
  test.assertEqual(meetup(2015, 2, "last", "Sunday"), new date(2015, 2, 22));
}

proc testWhenFirstFridayIsThe7thTheLastDayOfTheFirstWeek(test : borrowed Test) throws {
  test.assertEqual(meetup(2012, 12, "first", "Friday"), new date(2012, 12, 7));
}

UnitTest.main();
