mbreak = {} % {\break}
midVoice = {
  \voiceThree\stemDown
  \set fingeringOrientations = #'(left)
}
poco = _\markup{\italic "poco"}
dol = -\markup{\italic "dol."}

% segno as mark for nicer placement
mySegno = {
  \once\override Score.RehearsalMark.font-size = #1
  \mark\markup{\musicglyph #"scripts.segno" }
}
