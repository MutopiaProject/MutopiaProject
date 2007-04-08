\version "2.6.4"

\header {
 mutopiatitle = "Es ist das Heil uns kommen her"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 638"
 mutopiainstrument = "Organ"
 date = ""
 source = "Bach-Album, Ernst H. Wolfram (editor), 6787, C. F. Peters, Leipzig"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2006/Mar/17"

 title = "Es ist das Heil uns kommen her"
 composer = "Johann Sebastian Bach"
 opus="BWV 638"

 footer = "Mutopia-2006/03/27-709"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }

}

\include "deutsch.ly"

global = {
   \key d \major
   \time 4/4
   #(set-accidental-style 'default)
}

#(set-default-paper-size "a4" 'landscape)

halsup = {
  \stemUp
  \tieUp
}

halsdown = {
  \stemDown
  \tieDown
}

staffup = {
   \change Staff = "right" \halsdown
}

staffdown = {
   \change Staff = "left" \halsup
}

sopran = {
   \new Voice \relative a' {
      \global
      \halsup
      \partial 4 a4
      \repeat volta 2 {
         a4 a a8. h16 c4
         h4 a g\fermata a8. g16
         fis8. e16 d8. e16 fis4 gis
      }
      \alternative {
         {
            a4 h a\fermata a
         }
         {
            \set Score.currentBarNumber = #4
            a4 h a\fermata a
         }
      }
      %% Takt 5 ==============================================
      d8 e16 d cis4 h cis
      d8. cis16 h4 a\fermata a
      d4 a h8 a16 g fis g fis g
      a4 g fis\fermata d
      e8 fis g4 fis e
      %% Takt 10 =============================================
      \once \override Tie #'extra-offset = #'( 0 . 0.4)
      d4~ d8 cis d4\fermata \bar "|."
   }
}

alt = {
   \new Voice \relative g' {
      \global
      \halsdown
      \partial 4 c,4\rest
      \repeat volta 2 {
         c4\rest e16\rest g fis e d fis e d g8 d~
         d8 g4 fis8 g4 e16\rest fis e d
         cis16 d cis8~ cis16 \staffdown h a g fis \staffup e' d cis h d cis h
      }
      \alternative {
         {
            a16 gis' fis e d fis e d cis4 cis4\rest
         }
         {
            a16 gis'! fis e d fis e d cis4 e16\rest g fis e
         }
      }
      %% Takt 5 ==============================================
      d16 a' gis fis e4~ e16 fis e d cis e fis g
      a16 h a g fis8 e16 d cis4 d8. e16
      fis16 h a g fis g fis e d2
      dis16 fis e dis d8 \staffdown ais h4 h~
      h8 a g a~ a[ \staffup d8]~ d8. cis16
      %% Takt 10 =============================================
      d16 e d c h8 a a4
   }
}

tenor = {
   \new Voice \relative a' {
      \global
      \partial 4 r16 g fis e
      \repeat volta 2 {
         d16 fis e d cis h a g fis a g fis g c h a
         g16 a g fis e e' d c h d h g r d' cis h
         a16 h a g fis g fis e d8 fis~ fis e~
      }
      \alternative {
         \relative e {
            e8 a4 gis8 a16 h a g fis g' fis e
         }
         \relative e {
            e8 a4 gis8 a16 h a g fis8 g
         }
      }
      %% Takt 5 ==============================================
      a8 h r16 cis h a gis a gis fis e g fis e
      d8 a'~ a16 a gis8 a16 h a g fis g fis e
      d4~ d16 e' d c h d c h a h a g
      fis16 a g fis e g fis e dis e d e fis a g fis
      e16 fis e d \stemDown cis e d cis d fis g a h a h cis
      %% Takt 10 =============================================
      fis,16 g a8~ a16 e fis g fis4\fermata
   }
}

right = {
   \clef treble
   <<
   \alt
   \sopran
   >>
}

left = {
   \clef bass
   <<
   \tenor
   >>
}

pedal = {
   \global
   \clef "bass"
   \relative d {
      \partial 4 d8 e
      \repeat volta 2 {
         fis8 g a a, \stemUp d d, e' fis
         \stemNeutral
         g8 h, c d g,4 fis8 g
         a8 fis h cis d h e d
      }
      \alternative {
         {
            cis8 d h e a,4 d8 e
         }
         {
            cis8 d h e a,4 d8 e
         }
      }
      %% Takt 5 ==============================================
      fis8 gis a a, e' e, a g
      fis8 e d e a4 d8 cis
      h8 cis d d, g4 d'8 e
      fis8 h, e e, h'4 h8 a
      g8 fis e a d, d' g, a
      %% Takt 10 =============================================
      h8 fis g a d,4_\fermata
   }
}

\score {
   \new PianoStaff {
      \set PianoStaff.instrument = \markup { \large \center-align {
         "" "" "Manuale." "" "" "" "" "" "" "" "Pedale." } \hspace #1.3 }
      <<
         \context Staff = right {
            \context Voice = right \right
         }
         \context Staff = left {
                  \context Voice = left \left
         }
         \context Staff = pedal {
            \context Voice = pedal \pedal
         }
      >>
   }
   \layout{}
}

\score {
   \unfoldRepeats{
      \new PianoStaff {
         <<
            \context Staff = right {
               \set Staff.midiInstrument = "church organ"
               \context Voice = right \right
            }
            \context Staff = left {
                     \set Staff.midiInstrument = "church organ"
                     \context Voice = left \left
            }
            \context Staff = pedal {
               \set Staff.midiInstrument = "contrabass"
               \context Voice = pedal \transpose d d, \pedal
            }
         >>
      }
   }
   \midi{ \tempo 4 = 62 }
}
