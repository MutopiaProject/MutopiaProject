\version "2.18.2"
\header {
  title = "String Quartet in C major (“Emperor”)"
  subtitle = "Op. 76 No. 3"
  composer = "Franz Joseph Haydn (1732-1809)"

  mutopiatitle = "String Quartet in C major"
  mutopiacomposer = "HaydnFJ"
  mutopiaopus = "Op. 76 No. 3"
  mutopiainstrument = "String Quartet"
  date = "1796-1797"
  source = "Kalmus"
  style = "Classical"
  license = "Public Domain"
  maintainer = "Maurizio Tomasi"
  maintainerEmail = "zio_tom78@hotmail.com"

 footer = "Mutopia-2015/10/16-385"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

% General markings and annotations for each movement

headerI = "Allegro."
headerII = "Poco adagio cantabile."
headerIII = "Menuetto."
headerIV = "Finale: Presto."

timeI = { \time 4/4 \partial 8 }
timeII = { \time 2/2 \partial 2 }
timeIII = { \time 3/4 \partial 4 }
timeIV = \time 4/4

markingsI =  {
  s8
  s1*107

  s4-\markup { \italic { "la seconda volta più piano" } }
}

markingsII =  {
  s2
  s1*19

  s2
  \mark \markup {\bold "Var. I"}
  s2

  s1*19

  s2
  \time 4/4
  \mark \markup {\bold "Var. II"}
  s2

  s1*19

  s2
  \time 2/2
  \mark \markup {\bold "Var. III"}
  s2

  s1*19

  s2
  \mark \markup {\bold "Var. IV"}
  s2
}

markingsIII =  {
  s4
  s2.*55

  s2
  \mark \markup {\bold "Trio."}
  s4

  s2.*43 s2
  \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark.self-alignment-X = #1
  \mark \markup { \large { \italic "Menuetto D.C." } }
}
