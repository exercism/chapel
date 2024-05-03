module Anagram {

  use Sort;

  proc normaliseString(s: string) {
   var v = [c in s] c.toLower();
   sort(v);
   return "".join(v);
  }

  proc findAnagrams(s: string, candidates: [] string) {
    const normalised = normaliseString(s);
    return [c in candidates] if c.toLower() != s.toLower() && normaliseString(c) == normalised then c;
  }

}
