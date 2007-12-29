\version "2.10.33"

\header {
 mutopiatitle = "Herr Jesu Christ, dich zu uns wend'"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 655"
 mutopiainstrument = "Organ"
 source = "Edition Peters 8660"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Dec/15"

 title = "Trio super: Herr Jesu Christ, dich zu uns wend'"
 subtitle = "à 2 Clav. e Pedale"
 composer = "Johann Sebastian Bach"
 opus="BWV 655"
 footer = "Mutopia-2007/12/29-1187"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key g \major
   \time 4/4
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
}

\paper {
   head-separation = 0.6 \cm
   foot-separation = 0.2 \cm
   page-top-space = 0 \cm
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

shiftscriptright  = { \once \override Script #'extra-offset = #'( 0.5 . 0 ) }
shifttiedown      = { \once \override Tie #'extra-offset = #'( 0 . -0.4 ) }
shifttieup        = { \once \override Tie #'extra-offset = #'( 0 . 0.4 ) }
shifttieupp       = { \once \override Tie #'extra-offset = #'( 0 . 0.9 ) }

right = {
   \global
   \clef "treble"
   \relative g' {
      r8 g16 a h c d c h8 d g fis
      g8 h,16 c d e d e d c d g fis e d c
      h8 d g fis g h a fis
      g16 a h g e g fis e a g fis g a e fis d
      %% Takt  5 ==================================================
      g16 fis g8~ g16 h a g fis e d cis h d cis e
      d2~ d16 fis e d cis8.\prall d16
      d8 r r4 r8 d,16 e fis g a g
      fis8 a d cis d fis e cis!
      d16 e fis g a h a h a g a h cis, h' a g
      %% Takt 10 ==================================================
      fis8 h16 a h4~ h8 e, a4~
      a8. h16 gis8. a16 a e a, h cis d e fis
      g!8 h, e g fis16 d h cis d e fis g
      a16 g fis e d cis h a' g fis e d cis h a g'
      fis16 e d cis h a g fis e cis'! d e \shiftscriptright cis8.\downprall d16
      %% Takt 15 ==================================================
      d8 a d cis d16 a d, e fis gis a h
      c!16 h a h c d e d c8 e a dis,
      e16 h e fis g a h a g8 h, e dis
      e16 fis g a h c h c h a h c dis, c' h a
      g8 h, e dis e g fis dis
      %% Takt 20 ==================================================
      e16 h e fis g a g a cis, d! cis e fis g fis g
      h,16 c! h dis \shifttieup e4~ e16 g fis e dis!8. e16
      e8 g16 fis e d! cis h a8 e' cis a
      r8 fis'16 e d cis h a g8 d' h g
      r8 e'16 d cis h ais gis fis8 cis' ais! fis'~
      %% Takt 25 ==================================================
      fis16 e d cis h a! g! fis' e d cis! h ais gis fis e'
      d16 cis h a! g fis e d cis! ais' h cis! ais8. h16
      h8 h16 cis d e fis e d8 fis h ais
      h16  h, d e fis g fis g fis e fis h ais gis fis e
      d8 fis, h ais h d cis ais!
      %% Takt 30 ==================================================
      h16 d cis h fis'4~ fis16 d cis h e4~
      e16 a,! h cis d4~ d16 g, fis e cis'!4~
      cis16 e d cis h a! g! fis e4 e'~
      e16 g fis e d cis h a g4 g'~
      g16 h a g fis e d cis h4 h'~
      %% Takt 35 ==================================================
      h16 e, fis g a h a g fis2~
      fis16 d e fis g fis e d cis4 r8 cis
      d16 cis h a g h a c h a g fis e g fis a
      g16 h a c h d cis e fis,8. g16 e8.\prall d16
      d8 a' d cis d16 cis d e fis g a g
      %% Takt 40 ==================================================
      fis8 fis,16 g a h c! d e g fis g a g fis e
      d8 g,16 a h c d c h8 d g fis
      g8 g,16 a h c d e f e d e f a g f
      e16 d e f g a g a g f! g c h a g f
      e8 g, c h c e d h
      %% Takt 45 ==================================================
      c16 d e c a c h a d c h c d a h g
      c16 h c8~ c16 e d c h8 e16 dis e4~
      e8 a, d!4~ d8. e16 cis8.\prall d16
      d8 d,16 e fis g a h c!8 e, a c
      h16 g e fis g a h c d c h a g fis e d'
      %% Takt 50 ==================================================
      c16 h a g fis e d c' h a g fis e d c8~
      c16[ d32 c h16 c32 d] a8. g16 g8 r r4
      r8 g'16 a h c d c h8 d g fis
      g16 d g, a h c d e d e d e d c d e
      d16 e fis g a h a g fis8 a, d cis
      %% Takt 55 ==================================================
      d16 a d, e fis g a g fis8 d' g fis
      g16 d g, a h c d c h g a h c4~
      c16 a h c d c d e fis g a fis d g a h
      c,16 h a h c d e d c h a g d'4~
      d8 g, c h c8 g16 a h c d c
      %% Takt 60 ==================================================
      h16 a h cis d8 cis d8 a16 h c d e d
      c16 h cis dis e8 dis e16 fis g fis e d cis! h
      a16 cis d e fis g a g fis g fis e \once \override Script #'extra-offset = #'( 0.2 . 0.5 ) e8.\upprall d16
      d4~ d16 h g e cis'4~ cis16 a d fis
      g16 fis e fis g a h a g fis e d a'4~
      %% Takt 65 ==================================================
      a8 d, g fis g d16 e fis g a g
      fis e fis gis a8 gis a e16 fis g a h a
      g16 fis g a h8 a~ a16 fis g e dis8.\prall e16
      e16 fis, g a h c! d! e fis g a fis d g a h
      c,16 h a h c d e d c h a g d'4~
      %% Takt 70 ==================================================
      d8 g, c h c16 h c d e f g f
      e8 g c h c g r h,
      c e d h c16 d e f g a g a
      g16 \tempo 4 = 78 f g \tempo 4 = 72 c h \tempo 4 = 56 a g \tempo 4 = 32 fis g2
      \bar "|."
   }
}

left = {
   \global
   \clef "treble"
   \relative g' {
      r2 r8 g16 a h c d c
      h8 d g fis g8 h a fis
      g8 h,16 c d e d e d c d g fis e d c
      h8 e16 dis e4. a,8 d4~
      %% Takt  5 ==================================================
      d8. e16 cis8.\prall d16 d2~
      d16 c! h a g h a c h a g fis e a g a
      fis8 d16 e fis g a g fis8 a d cis
      d8 fis,16 g a h a h a g a d cis h a g
      fis8 a d cis d fis e cis!
      %% Takt 10 ==================================================
      d16 e fis d h d cis h e d cis d e h cis a
      d16 cis d8~ d16 fis e d cis!8 e, a cis
      h16 g e fis g a h cis d8 fis, h d
      cis8 a fis d' h g e cis'!
      a8 fis d h' a8. g16 fis8 e16\prall d
      %% Takt 15 ==================================================
      d16 a d e fis g a g fis8 a d gis,
      a8 e a gis a16 e a, h cis dis e fis
      g!8 h, e dis e16 h e fis g a h a
      g8 h e dis e g fis dis!
      e16 fis, g a h c h c h a h e dis cis h a
      %% Takt 20 ==================================================
      g8 e h'4~ h8 a16 g a4~
      a8 g16 fis g a g h c a h c fis, h a h
      g8 e r4 r8 cis'16 h a g fis e
      d8 a' fis d r h'16 a g fis e d
      cis8 g' e cis r8 ais'16 gis fis e d cis!
      %% Takt 25 ==================================================
      h8 fis' d h' g e cis ais'
      fis8 d h g' fis8. e16 d8 cis16 h
      h8 fis' h ais h16 h, h' cis d e fis e
      d8 fis, h ais h d cis ais!
      h16 fis d e fis g fis g fis e fis h ais gis fis e
      %% Takt 30 ==================================================
      d4~ d16 d cis h g'4~ g16 e d cis!
      fis4~ fis16 h, cis d e4~ e16 \clef "bass" ais, gis fis
      d'2~ d16 fis e d cis h a! g!
      fis4 \clef "treble" fis'~ fis16 a g fis e d cis h
      a4 a'~ a16 c! h a g fis e d
      %% Takt 35 ==================================================
      cis4 r r16 a' h cis d e d cis
      h2~ h16 e, fis g a g fis e
      d1~
      d2~ d16 h' a h cis,8.\prall d16
      d16 cis d e fis g a g fis8 a d cis
      %% Takt 40 ==================================================
      d8 d,16 e fis g a h c! h a h c e d c
      h16 c h a g8 fis g16 fis g a h c d c
      h8 h,16 c d e f g a c h c d c h a
      g8 g c h c e d h
      c16 d e f g a g a g f! g c h a g f
      %% Takt 45 ==================================================
      e8 a16 gis a4~ a8 d, g4~
      g8. a16 fis8.\prall g16 g16 a h g e g fis e
      a16 g fis g a e fis d g fis g8~ g16 h a g
      fis4 r r8 a,,16 h c! d e fis
      g8 h, e g fis d'16 c h a g fis
      %% Takt 50 ==================================================
      e16 d' c h a g fis e d8 h'4 a16 g
      fis8 g16 a fis8. g16 g8 g,16 a h c d c
      h8 d g fis g16 fis g a h c d e
      d8 d, g fis g d' g fis
      g8 d e e,~ e16 a d, e fis g a g
      %% Takt 55 ==================================================
      fis8 a d c!~ c16 d, g, a h c d c
      h8 d g fis g16 e fis g a h a g
      fis4~ fis16 e fis g a h c4 h8
      a8 e a4~ a8 d, g16 f e d
      e16 d c d e f g f e d e fis g8 fis
      %% Takt 60 ==================================================
      g8 d16 e fis g a g fis e fis gis a8 gis
      a8 e16 fis g! a h a g2~
      g8 fis16 g a h cis a d a d4 cis!8
      d16 a fis d g4~ g16 e cis a fis'4
      e4 e'~ e8 a, d16 c! h a
      %% Takt 65 ==================================================
      h16 a g a h c d c h a h cis d8 cis
      d8 a16 h c! d e d c h cis dis e8 dis
      e8 h16 cis d! e fis e dis8 e,16 fis g a h a
      g8 e'4 d! c! h8
      a8 e a4~ a8 d, g16 f e d
      %% Takt 70 ==================================================
      e16 d c d e f g f e8 g c h
      c16 h c d e f g f e d e f g a g a
      g16 f g c h a g f e8 c r \stemUp h
      <<
         \new Voice { \stemUp            c8 e   d8.[    c16] d2 }
         \new Voice { \stemDown \tieDown r8 g,~ g16 c h a    h2 }
      >>
   }
}

pedal = {
   \global
   \clef "bass"
   \relative g, {
      R1
      r8 g h d h g d' r
      r8 g, h d h g d' d,
      g4 r8 g' fis4 r8 h
      %% Takt  5 ==================================================
      e,4 r8 a d, fis g a
      h4 r8 fis g e a a,
      d8 d, r4 r2
      r8 d' fis a fis d a' r
      r8 d, fis a fis d a' a,
      %% Takt 10 ==================================================
      d4 r8 d cis4 r8 fis
      h,4 r8 e a,4 r4
      e'4 r h r
      fis'4 r8 h, e4 r8 a,
      d4 r8 g~ g fis16 g a8 a,
      %% Takt 15 ==================================================
      d4 r r8 d c! h
      a4 r r8 a' g! fis
      e4 r r2
      r8 e g h g e h' r
      r8 e, g h g e h' h,
      %% Takt 20 ==================================================
      e4 r8 e fis4 r8 fis
      g4 r8 c a fis h h,
      e8 h' g e cis a g'4
      fis4 fis,2 fis'4
      e4 e,2 e'4
      %% Takt 25 ==================================================
      d4 g cis, fis
      h,4 e~ e8 d16 e fis8 fis,
      h4 r4 r2
      r8 h d fis d h fis' r
      r8 h, d fis d h fis' fis,
      %% Takt 30 ==================================================
      h4 r8 h e d cis a!
      d8 cis h h' cis ais fis ais
      h8 fis d h cis h a! cis
      d8 cis h d e d cis e
      fis e d fis g fis e g
      %% Takt 35 ==================================================
      a8 g fis e d cis h a
      g8 fis e g a g fis a
      h8 d e fis g fis g a
      h8 fis g a h g a a,
      d4 r r2
      %% Takt 40 ==================================================
      r8 d' c! h a g fis d
      g4 r r2
      r8 g f e d c h g
      c8 c e g e c g' r
      r8 c, e g e c g' g,
      %% Takt 45 ==================================================
      c4 r8 c' h4 r8 e,
      a4 r8 d, g4 r8 g
      fis4 r8 h e,4 r8 a
      d,4 r a r
      e'4 r h r8 e
      %% Takt 50 ==================================================
      a4 r8 d, g4 c,
      d8 g, d' d, g r r4
      r2 g2
      h4 d h4. a8
      h4 cis d2~
      %% Takt 55 ==================================================
      d2 r
      r2 e
      d8 c h4 a g~
      g4 fis g2~
      g2 r
      %% Takt 60 ==================================================
      R1
      R1
      r2 a2
      h4 h a d
      d4 cis d2~
      %% Takt 65 ==================================================
      d2 r
      R1
      r2 h
      c!4 h a g~
      g4 fis g2~
      %% Takt 70 ==================================================
      g1~
      g8 f e d c c' e g
      e8 c g'4 r8 c, e g
      e8 c g'4 g,2
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
         tempoWholesPerMinute = #(ly:make-moment 84 4)
      }
   }
}
