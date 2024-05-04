module Gigasecond {
  // implement reference solution
  use Time;

  const gigasecond = new timeDelta(seconds=1000000000);

  proc addGigasecond(moment: dateTime) {
    return moment + gigasecond;
  }
}
