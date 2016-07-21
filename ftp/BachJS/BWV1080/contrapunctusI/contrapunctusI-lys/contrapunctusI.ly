\version "2.18.2"

\paper {
  %#(set-paper-size "letter")
}

\header{
  title="Die Kunst der Fuge"
  piece=\markup{\hspace #10 \bold \huge "Contrapunctus I"}
  opus="BWV 1080"
  composer="Johann Sebastian BACH (1685 - 1750)"

  mutopiatitle = "Die Kunst der Fuge, Contrapunctus I"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 1080"
  mutopiainstrument = "Harpsichord, Piano"
  date = "?-1750"
  source = "Breitkopf & Härtel, 1885"
  style = "Baroque"
  license = "Public Domain"
  maintainer = "Pierre-Luc Gauthier"
  maintainerEmail = "parts@gauthier.pl"
  maintainerWeb = "http://gauthier.pl/"

 footer = "Mutopia-2016/07/21-693"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Voices

\include "structure.ily"
\include "soprano.ily"
\include "alto.ily"
\include "tenor.ily"
\include "bass.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parts

part-soprano = \new Staff {
  << \structure \clef soprano \soprano >>
}
part-alto = \new Staff {
  << \structure \clef alto \alto >>
}
part-tenor = \new Staff {
  << \structure \clef tenor \tenor >>
}
part-bass = \new Staff {
  << \structure \clef bass \bass >>
}

pianoPart = {
  \new PianoStaff <<
    \new Staff  = "upper" <<
      \clef treble
      \set Staff.soloText = #"soprano"
      \set Staff.soloIIText = #"alto"
      \set Staff.aDueText = #"sopranoalto"
      \partcombine <<\structure \soprano>> <<\structure \alto>>
    >>
    \new Staff = "lower" <<
      \structure
      \clef bass
      \set Staff.soloText = #"tenor"
      \set Staff.soloIIText = #"bass"
      \set Staff.aDueText = #"tenor + bass"
      \partcombine \tenor \bass
    >>
  >>
}

fullTraditionalScore = {
  <<
    \new StaffGroup
    <<
      \part-soprano
      \part-alto
      \part-tenor
      \part-bass
    >>
    \pianoPart
  >>
}

midiScore = <<
      \structure
      \new Staff \with {
        midiInstrument = "violin"
      } \soprano
      \new Staff \with {
        midiInstrument = "viola"
      } \alto
      \new Staff \with {
        midiInstrument = "cello"
      } \tenor
      \new Staff \with {
        midiInstrument = "contrabass"
      } \bass
    >>

scoreContent = {
  \fullTraditionalScore
}

\score{
  \scoreContent
  \layout {
    \accidentalStyle Score.modern-cautionary
    \set Score.skipBars = ##t
  }
}
\score {
  \midiScore
  \midi {\tempo 4=120}
}

