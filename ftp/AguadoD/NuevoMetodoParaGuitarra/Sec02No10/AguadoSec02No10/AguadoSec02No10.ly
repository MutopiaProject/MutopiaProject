\version "2.16.1"

\header {
  title = "Study in A Minor"
  subtitle = "An Exercise from Nuevo Metodo para Guittare"
  source = "Statens musikbibliotek - The Music Library of Sweden"
  composer = "Dionisio Aguado"
  piece = "Section 2, Exercise No. 10"
  mutopiacomposer = "AguadoD"
  mutopiainstrument = "Guitar"
  style = "Classical"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail dot com"
  moreInfo = "This is a very good first position warmup exercise for a beginner. Unlike many exercises it is lyrical and fun to play. The fingerings in the piece are from Aguado."

 footer = "Mutopia-2012/12/01-1833"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Copyright © 2012. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

global = {
  \time 4/4
  \key a \minor
}

upperVoice = \relative c' {
  \voiceOne
  \set restrainOpenStrings = ##t
  \repeat volta 2 {
    a,16 c' e c a c e c b-4\3 d e d gis, b e b |
    a c e c a, c' e c a c e c c-3\3 e-4\2 e e-0\2 |
    b-3\3 d e d e,-1 d' e d gis, b e b e, d' e d |
    a-3 c e c e,-2 c' e c c,-4 c' e c e, c' e c |
    a, c' e c a c e c b\3 d e d gis, b e b |
    a c e c a, c' e c a cis-1 e cis g cis-1 e cis |
    f,-4 d' f d d, d' f d e, b' e b e,, gis' d'-4 gis, |
    a, a'-3 c a e a c a a,4 r4 |
  }
  \repeat volta 2 {
    gis'16 b e b e, b' e b e,, b'' e b b-4\3 d e d |
    a-3 c e c e,-2 c' e c e,, c'' e c c-3\3 e-4\2 e-0 e\2 |
    c-3\3 e-4\2 \override StringNumber #'transparent = ##t e-0 e\2 b-3\3 d e d b-3\3 d e d a c e c |
    \revert StringNumber #'transparent
    gis b e b e, b' e b e,,4  s4 |
    gis'16 c e c e, b' e b e,, b'' e b \once\set minimumFret=4 b d e d |
    a-3 c e c e, c' e c a, a' c a c, a' c a |
    d,-4\4 a' b a f a b a e gis b gis e, gis' d'-4 gis, |
    a, a' c a e a c a a,4 r4 |
  }
}

lowerVoice = \relative c' {
  \voiceTwo
  \set restrainOpenStrings = ##t
  \repeat volta 2 {
    a,4 a' \once\set minimumFret=4 b gis |
    a a, a' \once\set minimumFret=5 c |
    \once\set minimumFret=4 b e, gis e |
    a e c e |
    a, a' \once\set minimumFret=4 b gis |
    a a, a' g |
    f d e e, |
    a e' a, r4 |
  }
  \repeat volta 2 {
    gis' e e, \once\set minimumFret=4 b'' |
    a e e, \once\set minimumFret=5 c'' |
    \set minimumFret=4 c b b \set minimumFret=0 a |
    gis e e, b''4\rest |
    gis e e, \once\set minimumFret=4 b'' |
    a e a, c |
    d f e e, |
    a e' a, r4 |
  }
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = "acoustic guitar (nylon)"
      \override Fingering #'font-size = #-4
      \override Fingering #'add-stem-support = ##t
      \override StringNumber #'add-stem-support = ##t
    }
    <<
      \numericTimeSignature
      \clef "G_8"
      \global
      \mergeDifferentlyHeadedOn
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
%{
    \new TabStaff = "guitar tab" <<
      \clef moderntab
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \tempo 4=90
  }
}
