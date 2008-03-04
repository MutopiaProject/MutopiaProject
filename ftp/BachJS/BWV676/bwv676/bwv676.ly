\version "2.10.33"

\header {
 mutopiatitle = "Allein Gott in der Höh' sei Ehr'"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 676"
 mutopiainstrument = "Organ"
 date = ""
 source = "Peters 8661"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2008/Mar/1"

 title = "Allein Gott in der Höh' sei Ehr'"
 subtitle = "a 2 Clav. e Pedale"
 composer = "Johann Sebastian Bach"
 opus = \markup { \lower #2.5 "BWV 676" }
 footer = "Mutopia-2008/03/04-1327"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key g \major
   \time 6/8
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
}
\paper {
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

right = {
   \new Voice \relative g' {
      \global
      \partial 8 g16 a
      h16 g fis g a h c g fis g h c
      d16 c h a g fis e g a h c8~
      c16 h a g e'8~ e16 d e g fis a
      g16 h a g fis e d fis g a h g
      %% Takt 5 ===================================================
      a8 g fis~ fis e d~
      d8 a' a,~ a16 fis g a h cis
      d16 h cis d e fis g a g fis g e
      fis4.~ fis8 g16 a h g
      e4.~ e8 fis16 g a fis
      %% Takt 10 ==================================================
      d16 fis, g a h c d fis e d c h
      c16 e, fis g a h c e d c h a
      h16 g fis g a h c g fis g h c
      d16 c h a g fis e g a h c8~
      c16 h a g e'8~ e16 dis e g fis a
      %% Takt 15 ==================================================
      g16 a g fis e d! c e a h c e,
      dis16 h ais h cis dis e h ais! h dis! e
      fis16 e dis cis h a! g a g fis e dis
      e2.~
      e4. r4 dis'8
      %% Takt 20 ==================================================
      e4.~ e8 a fis
      g16 e dis e fis g a h c h a g
      fis16 d! cis d e fis g a h a g fis
      e2.~
      e8 a fis d4.~
      %% Takt 25 ==================================================
      d16 g a g e d c a' h a d, c
      h16 g fis g a h c g fis g h c
      d16 c h a g fis e g a h c8~
      c16 h a g e'8~ e16 d e g fis a
      g16 h a g fis e dis e fis g a fis
      %% Takt 30 ==================================================
      g16 h, c h a g fis h c h g fis
      e16 fis g a h c d! h a g fis8~
      fis16 g a h c,8~ c16 e d h c a
      h16 g fis g a h c g fis g h c
      d16 h a h c d e c a8 fis'
      %% Takt 35 ==================================================
      h,16( d g8) r r4 r8
      R2.
      r4 r8 r4 d16 e
      fis16 d cis d e fis g d cis d fis g
      a16 g fis e d cis h d e fis g8~
      %% Takt 40 ==================================================
      g16 fis e d h'8~ h16 a h d cis e
      d16 e d c! h a g a h c d h
      c16 d c h a g fis g a h c a
      h16 c h a g fis e4.~
      e16 h' a g fis e d4.~
      %% Takt 45 ==================================================
      d8 r4 r4 g16 a
      h4. c
      d4. c
      h4. a\downmordent
      h2.~
      %% Takt 50 ==================================================
      h4.~ h16 h, cis dis e fis
      g16 e dis e fis g a e dis e g a
      h16 a g fis e d! cis e fis g a8~
      a16 g fis e c'!8~ c16 h cis e dis fis
      e4.~ e8 a c,!
      %% Takt 55 ==================================================
      d!4.~ d8 g h,
      c16 g fis g a h c d e d c h
      a16 fis e fis g a h c d c h a
      g4.~ g8 e fis
      g2.~
      %% Takt 60 ==================================================
      g4. r4 fis8
      g4.~ g8 c a
      h2.
      h4. a4 h8
      c4 h8 a4.
      %% Takt 65 ==================================================
      g4 e8 fis4.\downmordent
      g4.~ g4 g8
      fis16 d cis d e fis g d cis d fis gis
      a4.~ a4 a8
      g!16 e dis e fis gis a e dis! e gis! ais
      %% Takt 70 ==================================================
      h8 d g~ g cis, fis~
      fis h, e~ e cis dis
      e16 h c! h a g fis a h a gis fis
      e16 fis gis  a h c d e d c d h
      c16 e f e d c h d e d cis h
      %% Takt 75 ==================================================
      a16 h cis d e f g a g fis g e
      fis8 d h'~ h e, a~
      a8 d, g~ g e fis
      g4 r8 g,4.
      a4. h
      %% Takt 80 ==================================================
      c4. h
      a4. gis\prall
      a4. r4 r8
      r16 e' a g f e d e f g a f
      g16 a g f e d cis d e f g e
      %% Takt 85 ==================================================
      f16 g f e d c! b4.~
      b16 f' e d cis h a4.~
      a16 h'! a g fis e d e d c! h a
      g16 c h a g fis e g fis e d c
      h16 g' fis g c d e a, gis a d e
      %% Takt 90 ==================================================
      fis16 h, ais h e fis g fis e dis e8~
      e16 dis cis h cis dis e g fis e dis e
      dis e fis8 a, g16 h e g, fis e
      dis8 r r r16 g fis g a h
      c16 g fis g h c d g, fis g c d
      %% Takt 95 ==================================================
      \once \override Tie #'staff-position = #4 e2.~
      \once \override Tie #'staff-position = #4 e4.~ e16 c h c d! e
      fis16 c h c e fis g c, h c fis g
      a16 fis e fis g a d,8 \once \override Tie #'staff-position = #6 g4~\mordent
      g8 fis8.\prallprall e32 fis g16 h, c! h a g
      %% Takt 100 =================================================
      fis16 h c h g fis e4.~
      e16 a h c d e fis d cis d e fis
      g16 d cis d fis g a g fis e d c
      h16 d cis h cis d e d cis d e8~
      e8 d16 cis d e fis4.
      %% Takt 105 =================================================
      fis4. e16 dis e g fis a
      g4 fis8 e4.
      d!4 h8 cis4.\prallmordent
      d4.~ d16 h e d c! h
      c16 d e4~ e16 c f e d c
      %% Takt 110 =================================================
      d16 e f4~ f16 d g f e d
      e4.~ e16 a, gis a h c
      d4.~ d16 g,! fis g a h
      c4.~ c16 e d c h a
      h8 r r r dis16 e fis8~
      %% Takt 115 =================================================
      fis16 h c h a g fis h c h g fis
      e8 fis16 g a h c h a g fis8~
      fis16 g a h c,8~ c16 e d h c a
      h2.
      h4. a4 h8
      %% Takt 120 =================================================
      c4 h8 a4.
      g4 e8 fis4.\prallmordent
      g4.~ g4 g16 a
      h16 g fis g a h c g fis g h c
      d16 c h a g fis e g a h c8~
      %% Takt 125 =================================================
      c16 h a g e'8~ e16 \tempo 4 = 76 d \tempo 4 = 70 e g \tempo 4 = 62 fis \tempo 4 = 48 a
      \tempo 4 = 26 g8 r r r4 r8
   }
}

left = {
   \new Voice \relative d' {
      \global
      \partial 8 r8
      R2.
      R2.
      R2.
      r4 r8 r4 d16 e
      %% Takt 5 ===================================================
      fis16 d cis d e fis g d cis d fis g
      a16 g fis e d cis h d e fis g8~
      g16 fis e d h'8~ h16 a h d cis e
      d16 e d c! h a g a h c d h
      c16 d c h a g fis g a h c a
      %% Takt 10 ==================================================
      h16 c h a g fis e4.~
      e16 h' a g fis e d4.~
      d4 r8 r4 g16 a
      h4. c
      d4. c
      %% Takt 15 ==================================================
      h4. a\downmordent
      h2.~
      h4.~ h16 h, cis dis e fis
      g16 e dis e fis g a e dis e g a
      h16 a g fis e d! cis e fis g a8~
      %% Takt 20 ==================================================
      a16 g fis e c'!8~ c16 h cis e dis fis
      e4.~ e8 a c,!
      d!4.~ d8 g h,
      c16 g fis g a h c d e d c h
      a16 fis e fis g a h c d c h a
      %% Takt 25 ==================================================
      g4.~ g8 e fis
      g2.~
      g4. r4 fis8
      g4.~ g8 c a
      h2.
      %% Takt 30 ==================================================
      h4. a4 h8
      c4 h8 a4.
      g4 e8 fis4.
      g4. r4 \clef "bass" g,16 a
      h16 g fis g a h c g fis g h c
      %% Takt 35 ==================================================
      d16 c h a g fis e g a h c8~
      c16 h a g \clef "treble" e'8~ e16 d e g fis a
      g16 h a g fis e d fis g a h g
      a8 g fis~ fis e d~
      d8 a' a,~ a16 fis g a h cis
      %% Takt 40 ==================================================
      d16 h cis d e fis g a g fis g e
      fis4.~ fis8 g16 a h g
      e4.~ e8 fis16 g a fis
      \clef "bass" d16 fis, g a h c d fis e d c h
      c16 e, fis g a h c e d c h a
      %% Takt 45 ==================================================
      h16 g fis g a h c g fis g h c
      d16 c h a g fis e g a h c8~
      c16 h a g \clef "treble" e'8~ e16 dis e g fis a
      g16 a g fis e d! c e a h c e,
      dis16 h ais h cis dis e h ais! h dis! e
      %% Takt 50 ==================================================
      fis16 e dis cis h a! \clef "bass" g a g fis e dis
      e2.~
      e4. r4 \clef "treble" dis'8
      e4.~ e8 a fis
      g16 e dis e fis g a h c h a g
      %% Takt 55 ==================================================
      fis16 d! cis d e fis g a h a g fis
      e2.~
      e8 a fis d4.~
      d16 g a g e d c a' h a d, c
      \clef "bass" h16 g fis g a h c g fis g h c
      %% Takt 60 ==================================================
      d16 c h a g fis e g a h c8~
      c16 h a g \clef "treble" e'8~ e16 d e g fis a
      g16 h a g fis e dis e fis g a fis
      g16 h c h a g fis h c h g fis
      e16 fis g a h c d! h a g fis8~
      %% Takt 65 ==================================================
      fis16 g a h c,8~ c16 e d h c a
      \clef "bass" h16 g fis g a h c g fis g h cis
      d4.~ d4 d8
      c!16 a gis a h cis d a gis a cis! dis
      \clef "treble" e4.~ e4 e8
      %% Takt 70 ==================================================
      d!16 fis g! fis e d cis e fis e dis cis
      h16 cis dis e fis g a h a g a fis
      g8 e c'~ c fis, h~
      h8 e, a~ a fis gis
      a8 c, f~ f h, e~
      %% Takt 75 ==================================================
      e8 a, d~ d h cis
      d16 a' h a g fis e g a g fis e
      d16 e fis g a h c! d c h c a
      h16 g fis g a h c g fis g h c
      d16 e f e d c h d e d c h
      %% Takt 80 ==================================================
      a16 \clef "bass" a, gis a h c d a gis a c d
      e16 a, gis a d e f e d cis d8~
      d16 c! h a h c \clef "treble" d f e d c h
      c4.~ c8 d16 e f d
      h4.~ h8 cis16 d e cis
      %% Takt 85 ==================================================
      a16 cis d e f g a c! b a g f!
      g16 h,! cis d e f g b a g fis e
      fis4 r8 a4.
      h4. c
      d4. c
      %% Takt 90 ==================================================
      h4. a\prallprall
      h4. r8 c,4~
      c16 h ais h cis dis e h ais h dis e
      fis16 h, ais h e fis g4.~
      g2.~
      %% Takt 95 ==================================================
      g16 e dis e fis gis a e dis e gis a
      h16 e, dis e a h c4.~
      c2.~
      c16 d,! cis d e fis g d cis d fis g
      a16 d, cis d g a h4.
      %% Takt 100 =================================================
      h4. a16 gis a c h d
      c4 h8 a4.
      g4 e8 fis4.\prallmordent
      g4.~ g16 e a g fis e
      fis16 fis, g a h cis d fis g fis e d
      %% Takt 105 =================================================
      cis16 fis g fis d cis h4.~
      h16 e fis g a h cis a gis a h cis
      d16 a gis a cis d e d cis h a g
      fis16 a gis fis gis a h a gis a h8~
      h8 a16 gis a h c h a h c8~
      %% Takt 110 =================================================
      c8 h16 a h c d c h c d8~
      d16 g,! fis! g a h c4.~
      c16 fis, e fis g a h4.~
      h16 d c h a g a4.~
      a16  h a g fis e dis e fis g a fis
      %% Takt 115 =================================================
      g8 dis e~ e dis!4\prall
      e16 g a h c8~ c16 d! c h c a
      h8 c16 h a g a4.~\downprall
      a16 h dis, e fis g a h a g a fis
      g16 h c h a g fis h c h g fis
      %% Takt 120 =================================================
      e16 fis g a h c d h a g fis8~
      fis16 g a h c,8~ c16 e d h c a
      \clef "bass" h16 g fis g a h c g fis! g h c
      d16 h a h c d \clef "treble" e8 d c~
      c16 a h c d8~ d16 h c d e fis
      %% Takt 125 =================================================
      g16 g, a h c d e fis g h a c
      h8 r r r4 r8
   }
}

pedal = {
   \global
   \clef "bass"
   \relative g, {
      \partial 8 r8
      g4 r8 a4 r8
      h4 r8 c4 a8
      e'4 c8 a4 d8
      g,4 a8 h4 g8
      %% Takt 5 ==============================================
      d'4 r8 e4 r8
      fis4 r8 g4 e8
      h'4 g8 e4 a8
      d,4 fis8 h4.~
      h4 e,8 a4.~
      %% Takt 10 ==================================================
      a4 d,8 g4 e8
      a4 g8 fis4 d8
      g4 fis8 e d c
      g4 r8 a4 r8
      h4 g8 a4 dis,8
      %% Takt 15 ==================================================
      e8 fis g~ \once \override Beam #'positions = #'( 0.5 . -0.5 ) g fis \stemDown a'~
      \stemNeutral a8 g fis g fis e
      dis h dis e4.~
      e8 g e c a' c,
      g8 h' g, a a' h,
      %% Takt 20 ==================================================
      c8 g' h, a fis' h,
      e8 g e c'4.~
      c8 fis, d h'4.~
      h8 a g a e g
      fis4 d8 g4 fis8
      %% Takt 25 ==================================================
      e4 c8 a c d
      g,8 h' g e c' e,
      h8 d' h, c c' d,
      e8 h' d, c a' d,
      g4 r8 fis4 r8
      %% Takt 30 ==================================================
      e8 e, e'~ e dis h
      r8 e g~ g fis16 h a h
      e,4 a8 d,!4 d'8
      g,4 fis8 e d c
      g2.~
      %% Takt 35 ==================================================
      g8 a h c h a
      e'4 c8 a4 d8
      g,4 a8 h4 g8
      d'4 r8 e4 r8
      fis4 r8 g4 e8
      %% Takt 40 ==================================================
      h'4 g8 e4 a8
      d,4 fis8 h4.~
      h4 e,8 a4.~
      a4 d,8 g4 e8
      a4 g8 fis4 d8
      %% Takt 45 ==================================================
      g4 fis8 e d c
      g4 r8 a4 r8
      h4 g8 a4 dis,8
      e8 fis g~ \once \override Beam #'positions = #'( 0.5 . -0.5 ) g fis \stemDown a'~
      \stemNeutral a8 g fis g fis e
      %% Takt 50 ==================================================
      dis h dis e4.~
      e8 g e c a' c,
      g8 h' g, a a' h,
      c8 g' h, a fis' h,
      e8 g e c'4.~
      %% Takt 55 ==================================================
      c8 fis, d h'4.~
      h8 a g a e g
      fis4 d8 g4 fis8
      e4 c8 a c d
      g,8 h' g e c' e,
      %% Takt 60 ==================================================
      h8 d' h, c c' d,
      e8 h' d, c a' d,
      g4 r8 fis4 r8
      e8 e, e'~ e dis h
      r8 e g~ g fis16 h a h
      %% Takt 65 ==================================================
      e,4 a8 d,!4 d'8
      g,4 fis8 e4 a8
      d,4 c!8 h4 e8
      a4 g8 fis4 h8
      e,4 d!8 cis4 fis8
      %% Takt 70 ==================================================
      h4 r8 a4 r8
      g4 r8 fis4 h8
      e,4 r8 d4 r8
      c4 r8 h4 e8
      a4 r8 g4 r8
      %% Takt 75 ==================================================
      f4 r8 e4 a8
      d,4 r8 c4 r8
      h4 r8 a4 d8
      g4 fis8 e d e
      f8 e fis g fis gis
      %% Takt 80 ==================================================
      a4. h
      c4. h
      a4. gis
      a4 c,8 f4.~
      f4 h,8 e4.~
      %% Takt 85 ==================================================
      e4 a,8 d e f
      e4 d8 cis4 a8
      d4 e8 fis! e fis
      g8 fis g a g a
      h4. c
      %% Takt 90 ==================================================
      d4. c
      h4. a
      h2.~
      h8 g dis e h' e,
      a,8 c' a, h d' h,
      %% Takt 95 ==================================================
      c8 g' c, fis, a' fis,
      gis8 h' gis, a e' a,
      d,8 fis' d, e g'! e,
      fis8 a' d, h e d
      c!8 a d g fis e
      %% Takt 100 =================================================
      dis8 e d c c' gis
      a8 a, h c d c
      h8 a g d'4.~
      d8 e d cis a cis
      d4.~ d8 cis h
      %% Takt 105 =================================================
      ais8 h a g g' dis
      e8 e, fis g a g
      fis8 e d a'4.~
      a8 h a gis e gis
      a8 c h a a' a,
      %% Takt 110 =================================================
      h8 d c h g h
      c4 h8 a4 fis8
      h4 a8 g4 e8
      a8 e' g fis d fis
      g4 a8 h4.
      %% Takt 115 =================================================
      h4. a4 h8
      c4 h8 a4.
      g4 e8 fis4.
      g8 fis e dis fis h,
      e8 e, e'~ e dis h
      %% Takt 120 =================================================
      r8 e g~ g8 fis16 h a h
      e,4 a8 d,!4 d'8
      g,4 f8 e d c
      g2.~
      g2.~
      %% Takt 125 =================================================
      g2.~
      g8 r r r4 r8
      \bar "|."
   }
}

\score {
   <<
      \new PianoStaff {
         <<
            \context Staff = right {
               \context Voice = right \right
            }
            \context Staff = left {
               \context Voice = left \left
            }
         >>
      }
      \context Staff = pedal {
         \context Voice = pedal \pedal
      }
   >>

   \layout{
      indent = 1.0\cm
   }
}

\score {
   \unfoldRepeats {
      <<
         \context Staff = right {
            \set Staff.midiInstrument = "pan flute"
            \right
         }
         \context Staff = right {
            \set Staff.midiInstrument = "recorder"
            \transpose g' g'' \right
         }
         \context Staff = left {
            \set Staff.midiInstrument = "recorder"
            \left
         }
         \context Staff = left {
            \set Staff.midiInstrument = "recorder"
            \transpose g' g''' \left
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \pedal
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose d d' \pedal
         }
      >>
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 82 4)
      }
   }
}
