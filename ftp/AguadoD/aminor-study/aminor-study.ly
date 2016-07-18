\version "2.18.2"

\header {
  title = "Study in A Minor"
  subtitle = "An Exercise from Nuevo Metodo para Guittare"
  source = "Schonenberger, Paris. Plate S. 1320" %"Statens musikbibliotek - The Music Library of Sweden"
  date = "ca. 1846"
  composer = "Dionisio Aguado"
  piece = "Section 2, Exercise No. 10"
  mutopiacomposer = "AguadoD"
  mutopiainstrument = "Guitar"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail dot com"
  moreInfo = "This is a very good first position warmup exercise for a beginner. Unlike many exercises it is lyrical and fun to play. The fingerings in the piece are from Aguado (with one correction to measure 15; see lilypond source notes). Devin Ulibarri found this piece at http://carkiv.musikverk.se/www/boije/Boije_0018.pdf on page 60."

 footer = "Mutopia-2016/07/18-1833"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper{ 
  top-margin = 8 \mm
  line-width = 171 \mm
  indent = 8 \mm
  top-markup-spacing.basic-distance = #6 %-dist. from bottom of top margin to the first markup/title
  markup-system-spacing.basic-distance = #7 %-dist. from header/title to first system
  system-system-spacing.basic-distance = #18
  top-system-spacing.basic-distance = #12
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
    a c e c a, c' e c a c e c c-3\3 e-4\2 e-0 e\2 |
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
    c-3\3 e-4\2 \override StringNumber.transparent = ##t e-0 e\2 b-3\3 d e d b-3\3 d e d a c e c |
    \revert StringNumber.transparent
    gis b e b e, b' e b e,,4  s4 |
    gis'16 b e b e, b' e b e,, b'' e b \once\set minimumFret=4 b d e d |
    a-3 c e c e, c' e c a, a' c a c, a' c a |
    d,-0\4 a' b a f a b a e gis b gis e, gis' d'-4\5 %{ The original has a "4" indicated for the string, but that is illogical because there is also a fingering of "4" indicated. Either this is an open D string, or the 5th fret of the A string performed with the 4th finger%} gis, |
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
      \override Fingering.font-size = #-4
      \override Fingering.add-stem-support = ##t
      \override StringNumber.add-stem-support = ##t
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
