module ResistorColor {
  // implement reference solution
  proc colors() {
    return ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"];
  }

  proc colorCode(color : string) {
    var (_, val) = colors().find(color);
    return val;
  }
}
