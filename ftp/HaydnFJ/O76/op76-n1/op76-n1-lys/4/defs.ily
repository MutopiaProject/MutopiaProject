\version "2.16.0"
\header {
  title = "String Quartet in B-flat major (“Sunrise”)"
  subtitle = "Op. 76 No. 4"
  composer = "Franz Joseph Haydn (1732-1809)"

  mutopiatitle = "String Quartet in B-flat minor"
  mutopiacomposer = "HaydnFJ"
  mutopiaopus = "Op. 76 No. 4"
  mutopiainstrument = "String Quartet"
  date = "1796-1797"
  source = "Kalmus"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Maurizio Tomasi"
  maintainerEmail = "zio_tom78@hotmail.com"

  footer = "Mutopia-2005/12/23-386"
  tagline = ""
}

% General markings and annotations for each movement

headerI = "Allegro con spirito"
headerII = "Adagio"
headerIII = "Menuetto. Allegro"
headerIV = "Finale. Allegro, ma non troppo"

timeI = \time 4/4
timeII = \time 3/4
timeIII = { \time 3/4 \partial 4 }
timeIV = { \time 2/2 \partial 4 }

markingsI = {}
markingsII = {}

markingsIII =  {
  s4
  s2.*51

  s4 \mark \markup {\bold "Trio."} s2

  s2.*53
  s2
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'self-alignment-X = #1
  \mark \markup { \large { \italic "Menuetto D.C." } }
}

markingsIV =  {
  s4
  s1*33

  s2.
  \mark \markup { "Minore" }
  s4

  s1*75

  s2
  \tempo "Più allegro"
  s2

  s1*17

  s2
  \tempo "Più presto"
  s2
}
