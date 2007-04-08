\version "2.6.0"
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
  maintainerWeb = "http://www.geocities.com/zio_tom78/"
  lastupdated = "2005/Dec/03"

  footer = "Mutopia-2005/12/23-383"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
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
  \skip2.*39

  s2
  \once \override TextScript   #'extra-offset = #'(-4 . 3)
  s4^\markup { \fontsize #2 \bold "Trio." }

  \skip2.*33 s2
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'self-alignment-X = #1
  \mark \markup { \large { \italic "Menuetto D.C." } }
}

