module Meetup {
  use Time;
  const day2num = ["Monday" => 0,
                   "Tuesday" => 1,
                   "Wednesday" => 2,
                   "Thursday" => 3,
                   "Friday" => 4,
                   "Saturday" => 5,
                   "Sunday" => 6];
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
