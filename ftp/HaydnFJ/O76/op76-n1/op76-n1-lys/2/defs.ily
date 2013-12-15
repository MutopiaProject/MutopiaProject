\version "2.16.0"
\header {
  title = "String Quartet in D minor (“Fifths”)"
  subtitle = "Op. 76 No. 2"
  composer = "Franz Joseph Haydn (1732-1809)"

  mutopiatitle = "String Quartet in D minor"
  mutopiacomposer = "HaydnFJ"
  mutopiaopus = "Op. 76 No. 2"
  mutopiainstrument = "String Quartet"
  date = "1796-1797"
  source = "Kalmus"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Maurizio Tomasi"
  maintainerEmail = "zio_tom78@hotmail.com"

 footer = "Mutopia-2013/12/14-384"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

% General markings and annotations for each movement

headerI = "Allegro"
headerII = "Andante o più tosto allegretto"
headerIII = "Menuetto. Allegro ma non troppo"
headerIV = "Finale. Vivace assai"

timeI = \time 4/4
timeII = { \time 6/8 \partial 8 }
timeIII = { \time 3/4 \partial 4 }
timeIV = { \time 2/4 \partial 8 }

markingsII =  {
  s8
  s2.*56

  s4^\markup { \large "più adagio e più piano" }
}

markingsIII =  {
  s4
  s2.*37

  s2
  \mark \markup { \bold "Trio." }
  s4

  s2.*42 s2
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'self-alignment-X = #1
  \mark \markup { \large { \italic "Menuetto D.C." } }
}

