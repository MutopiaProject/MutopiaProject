\version "2.16.0"
\header {
  title = "String Quartet in G major"
  subtitle = "Op. 76 No. 1"
  composer = "Franz Joseph Haydn (1732-1809)"

  mutopiatitle = "String Quartet in G major"
  mutopiacomposer = "HaydnFJ"
  mutopiaopus = "Op. 76 No. 1"
  mutopiainstrument = "String Quartet"
  date = "1796-1797"
  source = "Kalmus"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Maurizio Tomasi"
  maintainerEmail = "zio_tom78@hotmail.com"

  footer = "Mutopia-2005/12/23-383"
  tagline = ""
}

% General markings and annotations for each movement

headerI = "Allegro con spirito."
headerII = "Adagio sostenuto."
headerIII = "Menuet. Presto."
headerIV = "Finale. Allegro ma non troppo."

timeI = \time 2/2
timeII = \time 2/4
timeIII = { \time 3/4 \partial 4 }
timeIV = { \time 2/2 \partial 4 }

markingsIII =  {
  s4
  s2.*39

  s2
  \mark \markup {\bold Trio.}
  s4

  s2.*33 s2
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'self-alignment-X = #1
  \mark \markup { \large { \italic "Menuetto D.C." } }
}

