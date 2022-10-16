module Gigasecond {
  // implement reference solution
  use Time;

  const gigasecond = new timedelta(seconds=1000000000);

  proc addGigasecond(moment: datetime) {
    return moment + gigasecond;
  }
}
