\version "2.6.0"
\include "deutsch.ly"

\header {
  title = "Fantasia"
  opus = "KV 594"
  composer = "Wolfgang Amadeus Mozart (1756-1791)"
  lastupdated = "2005/Jul/24"
  date = "1790"
  source = "Edition Peters 7241"
  style = "classical"
  copyright = "Public Domain"
  enteredby="Felix Braun"
  maintainer="Felix.Braun@mail.McGill.ca"

  mutopiatitle = "Fantasia"
  mutopiacomposer = "MozartWA"
  mutopiainstrument = "Piano Duet"
  mutopiaopus = "KV594"
  
  footer = "Mutopia-2005/07/25-570"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

adagio = { \key f \minor \time 3/4 \tempo 4=74}
allegro = { \key f \major \time 4/4 \tempo 4=116}

dudel = {e16[ f e f]}
dodil = {f16[ g f g]}
dildo = {as16[ g as g]}
duldo = {a[ g a g]}
daldo = {as16[ g as f]}
deldu = {g16[ f g f]}
deldo = {g16[ f g e]}
doldo = {g16[ f g es]}
ddudel = { \dudel \deldu }
ddodel = { \dudel \deldo }
ddaldo = { \dodil \daldo }
ddodil = { \dodil \duldo }

secondoIntro = \relative c { f4( as c) | e,( g c) | es,!( ges c) | d,( f b)}
