\version "2.6.4"

\header {
 mutopiatitle = "Alle Menschen müssen sterben"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 643"
 mutopiainstrument = "Organ"
 date = ""
 source = "Bach-Album, Ernst H. Wolfram (editor), 6787, C. F. Peters, Leipzig"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2006/Mar/15"

 title = "Alle Menschen müssen sterben"
 composer = "Johann Sebastian Bach"
 opus="BWV 643"

 footer = "Mutopia-2006/03/27-710"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }

}

\include "deutsch.ly"

global = {
   \key g \major
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
   \new Voice \relative g' {
      \global
      \halsup
      \repeat volta 2 {
         g4 g fis d
         e4 fis g g\fermata
         h4 h c c
         h4 h a2\fermata
      }
      %% Takt 5 ==============================================
      h4 c8 cis d4 g,
      fis \shiftOff e fis8 e d4\fermata
      h'4 h a a
      g4 g fis2\fermata
      g4 g a a
      %% Takt 10 =============================================
      h4 h c2\fermata
      h4 h a g~
      g16 a g a fis4\trill g2\fermata \bar "|."
   }
}

alt = {
   \new Voice \relative h {
      \global
      \halsdown
      \repeat volta 2 {
         h8 d h16\rest e d e fis8 \staffdown a, d16\rest h a h
         g8 \staffup c~ c16 d c d \staffdown h h a h g8 h~
         h16 \staffup g' fis g e8 g~ g16 a g a fis8 a~
         a16 g fis g d8 g~ g16 fis e fis d d c d
      }
      %% Takt 5 ==============================================
      h8 g'~ g16 a g a fis8 \staffdown a, \staffup d16 e d e
      fis8 d~ \shiftOn d16 cis h cis d cis h cis d8 \staffdown fis,
      g16 \staffup g' fis g e8 cis~ cis16 fis e fis dis8 h~
      h16 e dis fis e8 e~ e16 dis! e cis dis4
      e16 \staffdown h a h c8 \staffup e~ e16 c h c d8 fis
      %% Takt 10 =============================================
      g16 d c d e8 gis a16 e d e fis8 a
      h16 g fis g e8 e~ e16 d c d h8 d
      e8 e d4~ d16 \staffdown h c a h4\fermata
   }
}

tenor = {
   \new Voice \relative g {
      \global
      \halsdown
      \repeat volta 2 {
         g8 h r16 cis h cis d8 d, r16 g fis g
         e8 g16 e a h a h g d c d h8 d
         g16 h a h g8 e'8~ e16 c h c a8 fis'
         d16 h a h g8 d'~ d16 a g a fis fis e fis
      }
      %% Takt 5 ==============================================
      g8 d'16 h e fis e fis d8 fis, h16 cis h cis
      d8 a \shiftOn h16 e, d e d a' g a fis8 d~
      d16 h' a h g8 e~ e16 a g a fis8 dis
      e16 g fis a g h ais cis fis, h gis ais! h4~
      h16 g fis g e8 c'~ c16 a g a fis8 d'~
      %% Takt 10 =============================================
      d16 h a h g8 e'~ e16 c h c a8 fis'
      g16 h, a h c8 g~ g16 fis e fis g8 h
      a8 c~ c16 h c a h d, e c d4_\fermata
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
   \relative g {
      \repeat volta 2 {
         r16 g fis g e8 a r16 d, c! d h8 g
         r16 c h c a8 d g,4 r16 g fis g
         e8 e' r16 e d e a,8 a' r16 d, c d
         g,8 g' r16 g, fis g d4 d'
      }
      %% Takt 5 ==============================================
      r16 g fis g e8 a r16 d, cis d h8 e
      r16 d cis d \shiftOn g,8 a d,4 r16 d' c d
      g,8 g' r16 cis, h cis fis,8 fis' r16 h, a h
      e,8 e'~ e16 dis e ais, h4 r16 h a h
      e,8 e' r16 c h c fis,8 fis' r16 d c d
      %% Takt 10 =============================================
      g,8 g' r16 e d e a,8 a' r16 d, c d
      g,8 g' r16 c, h c fis,8 fis' r16 g fis g
      cis,8 a r16 d c d g,2\fermata
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
   \new PianoStaff {
      \unfoldRepeats {
         <<
            \context Staff = right {
               \set Staff.midiInstrument = "church organ"
               \context Voice = right \right
            }
            \context Staff = left {
                     \set Staff.midiInstrument = "church organ"
                     \context Voice = left \left
            }
            \context Staff = pedal \transpose c c, {
               \set Staff.midiInstrument = "contrabass"
               \context Voice = pedal \pedal
            }
         >>
      }
   }
   \midi{ \tempo 4 = 64 }
}
