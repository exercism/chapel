module ResistorColor {
  proc colors() {
    return ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"];
  }

  proc colorCode(color : string) {
    var val = colors().find(color);
    return val;
  }
}
