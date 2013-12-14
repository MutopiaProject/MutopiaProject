\version "2.16.0"
\header {
  title = "String Quartet in D major"
  subtitle = "Op. 76 No. 5"
  composer = "Franz Joseph Haydn (1732-1809)"

  mutopiatitle = "String Quartet in D major"
  mutopiacomposer = "HaydnFJ"
  mutopiaopus = "Op. 76 No. 5"
  mutopiainstrument = "String Quartet"
  date = "1796-1797"
  source = "Kalmus"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Maurizio Tomasi"
  maintainerEmail = "zio_tom78@hotmail.com"

  footer = "Mutopia-2005/12/23-387"
  tagline = ""
}

% General markings and annotations for each movement

headerI = "Allegretto."
headerII = "Largo cantabile e mesto."
headerIII = "Menuetto. Allegro."
headerIV = "Finale. Presto."

timeI = { \time 6/8 \partial 8 }
timeII = { \time 2/2 \partial 4 }
timeIII = { \time 3/4 \partial 4 }
timeIV = { \time 2/4 \partial 8 }

markingsI =  {
  s8
  s2.*75

  \tempo "Allegro."
}

markingsIII =  {
  s4
  s2.*31

  s2
  \mark \markup {\bold "Trio."}
  s4

  s2.*32
  s2
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'self-alignment-X = #1
  \mark \markup { \large { \italic "Menuetto D.C." } }
}
