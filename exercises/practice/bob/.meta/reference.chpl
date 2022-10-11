module Bob {
  proc response(question : string) {
    var s = question.strip();
    if s.isEmpty() then return "Fine. Be that way!";
    else if s.endsWith("?") then {
      if s.isUpper() then return "Calm down, I know what I'm doing!";
      else return "Sure.";
    } else if s.isUpper() then return "Whoa, chill out!";
    else return "Whatever.";
  }
}
