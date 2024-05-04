module Meetup {
  use Time;
  const day2num = ["Monday" => 1,
                   "Tuesday" => 2,
                   "Wednesday" => 3,
                   "Thursday" => 4,
                   "Friday" => 5,
                   "Saturday" => 6,
                   "Sunday" => 7];
  const ord2day = ["teenth" => 13,
                   "first" => 1,
                   "second" => 8,
                   "third" => 15,
                   "fourth" => 22,
                   "last" => 28];

  proc meetup(year: int, month: int, ord: string, weekday: string) {
    var targetDay = day2num[weekday],
        initialguess = new date(year, month, ord2day[ord]),
        daysdiff = (targetDay - initialguess.weekday(): int + 7) % 7,
        day = ord2day[ord] + daysdiff;

    try! if day > daysInMonth(year, month) then day -= 7;
    return new date(year, month, day);
  }
}
