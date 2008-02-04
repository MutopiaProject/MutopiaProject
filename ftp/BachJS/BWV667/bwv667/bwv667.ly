\version "2.10.33"

\header {
   mutopiatitle = "Komm Gott Schöpfer, Heiliger Geist"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 667"
   mutopiainstrument = "Organ"
   date = ""
   source = "Edition Peters 8662"
   style = "Baroque"
   copyright = "Creative Commons Attribution-ShareAlike 3.0"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"
   lastupdated = "2007/Jan/27"

   title = "Komm Gott Schöpfer, Heiliger Geist"
   subtitle = "In organo pleno"
   composer = "Johann Sebastian Bach"
   opus="BWV 667"
 footer = "Mutopia-2008/02/04-1273"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key c \major
   \time 12/8
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
}

\paper {
   head-separation = 0.4 \cm
   foot-separation = 0.4 \cm
   page-top-space = 0 \cm
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

halsup        = { \stemUp \tieUp \slurUp \dotsUp }
halsdown      = { \stemDown \tieDown \slurDown \dotsDown }
halsneutral   = { \stemNeutral \tieNeutral \slurNeutral \dotsNeutral }
shifttiedown  = { \once \override Tie #'extra-offset = #'( 0 . -0.4 ) }
shifttieup    = { \once \override Tie #'extra-offset = #'( 0 . 0.4 ) }
shifttieupp   = { \once \override Tie #'extra-offset = #'( 0 . 0.9 ) }
up            = { \change Staff = "right" \halsdown }
down          = { \change Staff = "left" \halsup }
sri           = { \set stemRightBeamCount = #1 }
srii          = { \set stemRightBeamCount = #2 }
sli           = { \set stemLeftBeamCount = #1 }
slii          = { \set stemLeftBeamCount = #2 }
sbcli         = { \sli \srii }
sbcre         = { \slii }

sopran = {
   \new Voice \relative g'' {
      \global
      \halsup
      \partial 8*3 s4.
      s1. * 4
      %% Takt  5 ==================================================
      s1. * 4
      s2. \once \override Tie #'staff-position = #9 g4~ g16 a h4.
      %% Takt 10 ==================================================
      c16\rest g c h c g e g c, e d c d f h, d c h c e a, c h a
      h4.~ h16 d c h a g fis4. d'8\rest g,8. f16~
      f16 a g f e d e4~ e16 e d4~ d16 e fis g a h \once \override Tie #'staff-position = #4 c8~
      c16 c h a h c d c d e fis g~ g8 c, f~ f h, e~
      e16 g f e d c h a g f e d e g a h c8~ c16 c h a h8
      %% Takt 15 ==================================================
      \once \override Tie #'staff-position = #2 c1.~
      c4.~ c16 c d e f8~ f16 a g f e d e g f e d c
      d4~ d16 d c4. g4~ g16 a h4.~
      h16 h cis d e f cis!4. d4~ d16 c b!4.
      a4~ a16 b c8 a d b!4.~ b16 b a g fis! g
      %% Takt 20 ==================================================
      \once \override Tie #'staff-position = #-2 \once \override Dots #'extra-offset = #'( -2 . 0 )  fis4.~ fis16 d g8. fis16 g4. d'4.\rest
      d16\rest h c d e fis g8 d g~ g16 f e d cis d e f g b a g
      f4.~ f16 f e d e8~ e16 g f e d c h! d e f g8~
      g16 b a g f e f4.~  f16 g f e d c h! c h a g f
      e4.~ e16 c d e f g a g f g a h! c h a h c d
      %% Takt 25 ==================================================
      << \new Voice \relative es'' { \halsup
            es4~ es16 es d4~ d16 d~ d16 d c h c8~ c16 c h a h d~
            \shiftOn d8 f \once \override Tie #'staff-position = #7 e!~ e es4 d4. \shiftOff
         }
         \new Voice \relative h' { \halsdown
            s2. s4. s4 h8~
            \shiftOnn \halsup \once \override Stem #'length = #4.5 h4 \once \override Tie #'staff-position = #1 c8~ c \tieDown c4~ c16 c h! a h8 \shiftOff
         }
         \new Voice \relative g'' { \halsup
            s1.
            \once \override Tie #'staff-position = #10 \once \override Dots #'extra-offset = #'( 0.3 . 0 ) g2.~ g4.
         }
      >>
   }
}

alt = {
   \new Voice \relative g' {
      \global
      \halsup
      \partial 8*3 \compressMusic #'( 3 . 2 ) { g4
         a4 g f g
         c4 d c\fermata c
         g4 } \compressMusic #'( 4 . 3 ) { a8. } \compressMusic #'( 2 . 1 ) { h16 } \compressMusic #'( 3 . 2 ) { c4 d
         e4 e d\fermata d
         %% Takt  5 ==================================================
         e4 c a g
         h4 cis d\fermata g,
         c!4 a f a
         g2
            } g8. \sbcli fis16 \sbcre g a h g a h c d
       e4~ e16 e d4.~ \shiftOn d16 h c d e8 \shiftOff \halsdown d16\rest a' g f e d
      %% Takt 10 ==================================================
      \shiftOn \once \override Stem #'length = #6 e8. \shiftOff f16\rest f8\rest s4. s2.
      e,16\rest a g f e8~ e4. c16\rest e d4 e16\rest d8. c8
      s2. s4. s4 \halsup \once \override Rest #'extra-offset = #'( 1.5 . 0 ) \once \override Rest #'X-extent = #'( 0 . 2.2 ) h'16\rest fis!
      \shiftOn \stemNeutral \once \override Stem #'length = #6 g4. \shiftOff \halsdown h a e\rest
      e8\rest c f~ f h,16 d c h c4~ c16 e f4~ f16 f~
      %% Takt 15 ==================================================
      f16 f e d e8~ e16 g f e d c f4.~ f16 a g f e d
      e8 f g a4~ a16 h! c4. g\rest
      g8\rest d g~ g16 g f e f8~ f16 f e d e8 f4.
      g4.~ g16 b a g fis g~ g16 g fis! e fis8~ fis16 d e fis g8~
      g16 g fis e fis8~ fis4.~ fis8 d g e4.~
      %% Takt 20 ==================================================
      \once \override NoteColumn #'force-hshift = #1 e16 e d c \down h! a h8. h16 a8 g4. \up e'16\rest a g f! e d
      c4.~ c16 c h a h c d4. e\rest
      h'16\rest e d c! b a b4. a g8. \sbcli a16 \sbcre h! cis
      d4.~ d16 e d c! h! a g4. c,\rest
      \down d4.\rest c16 \rest e, f g a b c8 a f e g fis
      %% Takt 25 ==================================================
      g16 \up d'' c h c8~ c16 c h a h8 \override Tie #'details #'height-limit = #3 g2.~
      \revert Tie #'details #'height-limit g4 b8~ b a4 \once \override NoteColumn #'force-hshift = #0.5 g4.
   }
}

tenor = {
   \new Voice \relative cis' {
      \global
      \halsdown \dotsDown
      \partial 8*3 r8 d16 c d8
      e8 c f d h e c d16 c d8 h e16 d e8~
      e8 f16 g a g f8 d g \compressMusic #'( 3 . 2 ) { e4 } r8 g16 f g8
      d8 h e c f16 e f8 g a16 g f e d8 g16 f g8~
      g8 e g c16 h a g a fis~ fis8 g16 fis g a h a g fis! g8~
      %% Takt  5 ==================================================
      g8 g c g e g~ g f!16 e f8~ f e16 d e8
      d8 g16 fis g8~ g g16 fis g8~ g f16 e f8~ f e16 d e8~
      e8 c f~ f e16 d e8~ e d16 cis d e f g f e d c
      h!16 d g,8 c16 d e d \appoggiatura d16 e8. f16 d4. c\rest
      h'16\rest d c h c8~ c16 c h a h8~ \once \override NoteColumn #'force-hshift = #0.5 h16 g a h \once \override NoteColumn #'force-hshift = #0.5 c8 f,4.
      %% Takt 10 ==================================================
      g8. \sbcli g16 \sbcre c h c g e g f e f a d, f e d e g c, e d \down c
      \halsneutral d4~ d16 d c4.~ c8. \sbcli c16 \sbcre h a h8. h16 a8
      \up h4.~ h16 d c h c8~ c16 c h a h8 a16 h c d e c
      d4. s4. s2.
      s1.
   }
}

bass = {
   \new Voice \relative d' {
      \global
      \partial 8*3 r8 h16 a h8
      c8 a d h g c a h16 a h8 g c16 h c8
      a16 g a h c8~ c h16 a h8 c8 g16 f g8 c,8 e'16 d e8
      h8 g c f, d'16 c d8 e e, a f d g
      c,16 e g f e d e8 c c'~ c h16~ a h8 g h16 a h g
      %% Takt  5 ==================================================
      c,8 c'16 h c8 e, c'16 h c8 f, a d h g c
      g16 a h c d h e g, a b a g a8 d, d' h g c!
      c,16 e f g a b c d c b a8~ a16 d, f a b!8 a16 cis, d e f8~
      f8 e16 d e f g8 c,! c'~ c8 \sbcli h16 \sbcre a h c d h c d e f!
      g4.~ g4~ g16 f e4.~ d
      %% Takt 10 ==================================================
      c8. s s4. s2.
      s1.
      g1.
      g4.~ g16 a h c d e c e a, c h a h d g, h a g
      a4. g~ g16 e f g a8~ a g f
      %% Takt 15 ==================================================
      g4~ g16 a b4.~ b16 b a g a h c4.~
      c16 d c b a g f g f e d g c,8 e g c4.~
      c16 c h a h8 c4.~ c r16 e d c h a
      g8 a b a b g a4.~ a16 fis g a b! c
      d4.~ d16 es d c b a g a g f! e! d cis4.
      %% Takt 20 ==================================================
      d4. \halsdown h\rest g16\rest g a h c d e4.~
      e8 d c d4. g~ g16 b a g f e
      \halsneutral d8 a' d g,8. \clef "treble" \sbcli g'16 \sbcre f e f e d e f8~ f e4
      d16 cis d e f g a g f e d c \clef "bass" h! a h c d e f e d c h a
      \halsdown g16 a g f e d c4. c2.~
      %% Takt 25 ==================================================
      c16 h c d es f! \halsneutral g a h c d g, \clef "treble" es'4~ es16 es d4.~
      \tempo 4 = 76 d16 f e! d e g \tempo 4 = 70 fis e \tempo 4 = 66 fis a g fis \tempo 4 = 58 g8 \tempo 4 = 40 d \tempo 4 = 16 g,
   }
}


right = {
   \clef "treble"
   <<
      \sopran
      \alt
      \tenor
   >>
}

left = {
   \clef "bass"
   <<

      \bass
   >>
}

pedal = {
   \global
   \clef "bass"
   \relative g {
      \partial 8*3 r8 r g
      r r f r r e r r d r r e
      r r f r r g c,4._\fermata r8 r c
      r r e r r d r r c r r h
      r r c r r c, g'4._\fermata r8 r g
      %% Takt  5 ==================================================
      r r c r r e r r f r r g
      r r g, r r e d4._\fermata r8 r e
      r r a r r cis r r d r r a
      r r c! r r e g2.~
      g1.~
      %% Takt 10 ==================================================
      g1.~
      g4. r4. r2.
      R1.
      g,2. a4. g
      f4. g c d
      %% Takt 15 ==================================================
      c2. r
      r2. c
      g4. a4~ a16 h c4. d
      e4. e d2.
      R1.
      %% Takt 20 ==================================================
      d2. e4. c
      a4. g4~ g16 a h4. cis
      d2.r
      r2. g,
      c4. a f4~ f16 g a4.
      %% Takt 25 ==================================================
      g1.~
      g2.~ g4.
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
      \context {
         \PianoStaff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
      }
      \context {
         \Staff      \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 3.5)
      }
      indent = 1.0\cm
   }
}

\score {
   <<
      \context Staff = right {
         \set Staff.midiInstrument = "church organ"
         \right
      }
      \context Staff = left {
         \set Staff.midiInstrument = "church organ"
         \left
      }
      \new Staff {
         \set Staff.midiInstrument = "church organ"
         \transpose g g, \pedal
      }
      \new Staff {
         \set Staff.midiInstrument = "tuba"
         \transpose g g, \pedal
      }
   >>
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
   }
}
