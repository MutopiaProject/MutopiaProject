\version "2.10.33"

\header {
   mutopiatitle = "Jesus Christus, unser Heiland"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 666"
   mutopiainstrument = "Organ"
   date = ""
   source = "Edition Peters 8661"
   style = "Baroque"
   copyright = "Creative Commons Attribution-ShareAlike 3.0"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"
   lastupdated = "2008/Jan/26"

   title = "Jesus Christus, unser Heiland, der von uns den Zorn Gottes wand"
   subtitle = "(alio modo)"
   composer = "Johann Sebastian Bach"
   opus="BWV 666"
 footer = "Mutopia-2008/01/26-1270"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}
\include "deutsch.ly"

global = {
   \key e \minor
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
diffdot       = { \once \override Staff.NoteCollision #'merge-differently-dotted = ##t }
sri           = { \set stemRightBeamCount = #1 }
srii          = { \set stemRightBeamCount = #2 }
sli           = { \set stemLeftBeamCount = #1 }
slii          = { \set stemLeftBeamCount = #2 }
sbcli         = { \sli \srii }
sbcre         = { \slii }

sopran = {
   \new Voice \relative e' {
      \global
      \halsup
      s1. * 4
      %% Takt  5 ==================================================
      s1.
      e4.^"Choral" h' h a
      h4. e,4 fis8 g4. g
      g4.~ g8 fis g fis2.
      e1.~
      %% Takt 10 ==================================================
      e4. h'\rest d2.\rest
      s1.
      s1.
      s1.
      g,4.^"Choral" g g e
      %% Takt 15 ==================================================
      g4. a h a
      g4. fis e2.~
      e2.~ e4. d'4.\rest
      s1.
      s1.
      %% Takt 20 ==================================================
      s1.
      f2.\rest g,4.^"Choral" g
      g4~ g16 f e4~ e16 fis g4. a
      h4. a g2.
      d'16\rest g, a h c d e h c d e fis g4. a\rest
      %% Takt 25 ==================================================
      s1. * 5
      %% Takt 30 ==================================================
      s1.
      s1.
      f4.\rest d^"Choral" e d4~ d16 c
      h4~ h16 a g4~ g16 a h4. a
      g4. fis e2.~
      %% Takt 35 ==================================================
      e8 d'\rest d\rest d4.\rest d2.\rest
      s2. d'8\rest gis,4~ \once \override Tie #'staff-position = #10 \once \override Dots #'extra-offset = #'(0 . 0.3 ) gis4.~
      \once \override Dots #'extra-offset = #'( -0 . 0.9 ) gis4. h16 a gis! fis e d
         \once \override NoteColumn #'force-hshift = #-1 c a' gis! fis! e d \once \override Tie #'staff-position = #6 c4.~
      \once \override Stem #'details #'beamed-lengths = #'( 4.2 ) c16 h a g! fis e dis!4. r16 h e dis! \tieDown e8~ e4.
   }
}

alt = {
   \new Voice \relative h {
      \global
      \halsneutral
      R1.
      h8 e dis e4.~ e8 fis e d4.~
      d8 e d c4. h~ h8 e dis
      e4 \clef "bass" e,8 a4.~ a8 g fis g c! h
      %% Takt  5 ==================================================
      \clef "treble" \halsdown c8 f e f dis \tieUp e~ \dotsUp e4. dis!
      \tieDown e4.~ e8 g fis g4 e8 cis fis e
      fis4 dis8 h e dis \dotsDown e2.~
      e8 e dis e2. dis!8 h c!
      gis8 c h c4.~ c2.
      %% Takt 10 ==================================================
      h4. c4.\rest e2.\rest
      \halsneutral r8 g d e d c h c d \down g,4 a8
      h8 \up h' fis \halsneutral g fis e dis4 g8 fis4.~
      fis8 h, e dis e fis h, e h c \down h a
      \once \override Stem #'length = #'7 g8 \up c\rest c\rest h4.\rest c2.\rest
      %% Takt 15 ==================================================
      c8\rest g' d e d c c\rest h e dis e fis~
      fis8 e h c h a h4 d!8~ d4 c8
      h8 e h c h a gis4. c4.\rest
      \halsneutral r2. r16 g'! fis e d c h e d c h a
      g4. r4. r16 a h c d e fis h, c d e fis
      %% Takt 20 ==================================================
      g8 d g~ g16 g fis g e fis g a g f e d \tieUp e4.~
      e16 e d c d8 d4.~ \halsdown d16 d c h c8~ c16 c h a h8~
      h16 h c d \once \override Tie #'staff-position = #-6 e8~ e16 d c h a8 c16\rest fis e d c h a e' d c h a
      g8 d' g~ g fis16 e fis8 g4 f8 e4.
      d8 \down c16\rest g a h \up c d e fis! g a h4. d16\rest \halsup e d c h a
      %% Takt 25 ==================================================
      g16 h a g c8~ c16 c h a d8~ d16 c h a h8~ h16 a g fis g8~
      g16 fis g a h g c h c fis, a c h a h e, fis g a g a c h a
      g16 fis e g fis e a4. h a4~ a16 g
      fis4~ fis16 e d4~ d16 e fis4. e
      d4. cis h8 fis' h~ h ais4
      %% Takt 30 ==================================================
      h8\rest e16 d cis h ais8 fis ais h4 fis8 g4 d16 e
      f4. fis g~ g8 fis4
      \halsdown g8. \sbcli fis16 \sbcre g a h4.~ h16 h a g c h a4.~
      a8 g fis~ fis e dis e4. fis~
      fis8 e d! c8. c16 h8~ h4.~ h16 c d h c d
      %% Takt 35 ==================================================
      c8 c\rest c\rest c4.\rest h'2.\rest
      s2. s4. \halsup \shiftOn f'!16 \shiftOff e \tieDown \once \override Tie #'extra-offset = #'( 0 . 0.5 ) f4~
      \shiftOn \once \override Dots #'extra-offset = #'( -0 . 1 ) f4. d8 h\rest h\rest \stemDown c \shiftOff h\rest h\rest g16\rest \stemUp h a gis! \tieUp a8~
      \shiftOn a8 \shiftOff e\rest c\rest \down c16\rest h c a h8 e8\rest c\rest c16\rest a h4.
   }
}

altzwo = {
   \new Voice \relative a {
      \global
      s1. * 19
      %% Takt 20 ==================================================
      \halsdown s2. s4. a16\rest d c h c8~
      c4~ c16 c h a h4 s2.
      %% Takt 22 ==================================================
   }
}

tenor = {
   \new Voice \relative e {
      \global
      \halsup
      e8 h' a h4.~ h8 c h a4.~
      a4. g8 c h c4 c8\rest fis, h a
      h4.~ h8 e, a dis,4 h8 e4 h8
      cis4.~ cis8 e dis e2.~
      %% Takt  5 ==================================================
      e8 a g! a fis! g fis h a h fis a~
      a8 g fis g4.~ g8 fis g fis4.~
      fis8 g a g4 fis8 e2.~
      e8 g fis g dis e fis dis e \diffdot h e dis!
      e4. a8\rest gis a~ a a gis a4.
      %% Takt 10 ==================================================
      gis4. c4.\rest s2.
      g4. g g \shiftOn e4 fis8
      g4. \shiftOff a h a
      g4. fis e~ e4 \shiftOn dis8
      \once \override Stem #'length = #'5 e8 \shiftOff d'8\rest d\rest c4.\rest a8\rest g d e d c
      %% Takt 15 ==================================================
      h8 d g~ g4 fis8 g4. fis
      f8\rest h, e dis e fis gis4.~ gis4 a8
      h8 h, e~ e d c h4.~ h8. \sli \srii h16 \slii cis dis
      e16 dis e fis g! a h a h fis g a g4. g
      g4. e g a
      %% Takt 20 ==================================================
      h4. a g~ g4~ g16 fis!
      g4.~ g8. \sbcli f16 \sbcre e d e4~ e16 e d4.~
      d16[ d c h c8~] c16[ g a h c d] e8 g e fis!4.
      g16 a g fis e d c e d c h a h8 d'4~ d8 c16 h c8
      h8 d,8\rest d\rest f4.\rest a\rest \up d
      %% Takt 25 ==================================================
      e4. d4~ d16 c \down h4~ h16 a g4~ g16 a
      h4. a g fis
      e4. \up fis' e8\rest g16 fis e d cis8 a cis
      d4 \down ais8 h4 fis8 gis4. ais!
      h4.~ h8 ais4 h c8\rest \up e16\rest g fis e d cis!
      %% Takt 30 ==================================================
      h16 d cis h e8~ e16 e d cis! fis8~ fis16 e d cis d8~ d16 c \down h a! h8~
      h16 gis a h c! d \up es d es \down a, c es d c d \down g, a h c h c \up e d c
      \down h16 c h a g fis g a g f e d c8 c'4~ c16 c h a d8~
      d16 c h a h8~ h16 a g fis g8~ g16 fis g a h g c! h c fis, a c
      h16 a h e, fis g a g a8. a16 gis4.~ gis16 fis e gis fis e
      %% Takt 35 ==================================================
      a8 c\rest c\rest e4.\rest \up g2.\rest
      s1.
      \halsup \shiftOnnn \once \override NoteColumn #'force-hshift = #2 d'16 \shiftOff c d4 \shiftOnn h8 \shiftOff e,\rest e\rest \stemDown
         a e\rest e\rest a,\rest a\rest c16\rest \stemUp \once \override Tie #'staff-position = #-3 fis~
      \shiftOnn fis8 \shiftOff \down \halsdown d,\rest d\rest d\rest d16\rest \diffdot a'8. s8 d,8\rest d\rest d16\rest \halsup fis gis!4
   }
}

bass = {
   \new Voice \relative g, {
      \global
      \halsdown
      g4.\rest h8 e dis e4.~ e8 fis e
      dis8 cis h c4 g8 a4 fis8 h4 fis8
      gis4 e8 a4.~ a8 h a g4.~
      g8 a g fis4 h8 e,4.~ e8 a gis
      %% Takt  5 ==================================================
      a2. h
      e4.~ e4 d!8 e4 cis8 \diffdot fis4 cis8
      dis4 h8 g4.\rest e8 c'! h c ais h
      ais2.~ ais8 h ais h4.
      e2. e4.~ e8 dis e
      %% Takt 10 ==================================================
      \halsneutral e,4.~ e8. \set stemLeftBeamCount = #1 \set stemRightBeamCount = #2 h'16 \set stemLeftBeamCount = #2 cis dis e dis e fis g! a h a h fis g a
      \halsdown h,4.\rest h\rest h8\rest e h c h a
      g8 e' d c4. h8\rest h e dis e fis
      h,8 e h c h a g4. a4 h8
      e,8 g' d! e d c h e h c h a
      %% Takt 15 ==================================================
      g4 h8 c4 d8 g,4 a8 h cis dis
      e,4. a d,!8 e' h c h a
      gis4. a e d\rest
      \once \override MultiMeasureRest #'staff-position = #-2 R1.
      e16\rest e fis g a h c g a h c d e fis e d c h a e' d c h a
      %% Takt 20 ==================================================
      g16 a' g fis e d c8 a d e4 h8 c4.
      g2.~ g4.~ g4~ g16 f
      e4~ e16 d c8 c\rest e\rest g2.\rest
      g2.\rest e16\rest g a h c d e h c d e fis!
      g8 g,8\rest g\rest g4.\rest g g\rest
      %% Takt 25 ==================================================
      r8 c'16 h a g fis8 d fis g4 dis8 e4 h8
      cis4. dis e~ e8 dis!4
      \diffdot e8 e, g\rest r16 e'' d! c h a g fis e d g8~ g16 g fis e a8~
      a16 g fis e fis8~ fis16 e d cis d8~ d16 cis d e fis d g! fis g cis,! e g
      fis16 e fis h, cis d e d e g fis e d cis! h d cis h fis'4.
      %% Takt 30 ==================================================
      g4. fis4~ fis16 e d4~ d16 c! h4~ h16 cis
      d4. c! h a
      g4. g\rest e8\rest c''16 h a g fis!8 d fis
      g4 dis8 e4 h8 cis4. dis!
      e4.~ e8 dis d~ d16 c! d gis, a h c4.~
      %% Takt 35 ==================================================
      c16 h c a c e a gis a e a c \up e d e a, c e a gis a e a c
      e16 d e a, c e a gis a fis! dis h gis'! fis gis f d h \once \override NoteColumn #'force-hshift = #1 d c d h gis e
      \once \override NoteColumn #'force-hshift = #2 h'16 a h gis f d gis!8 s4 s2.
      dis8 s4 \down \halsdown e,,8\rest e\rest g16\rest fis' gis8 \tempo 8 = 136
         s4 \tempo 8 = 120 e,8\rest \tempo 8 = 96 h'16\rest \tempo 8 = 60 dis \tempo 8 = 20 e8\fermata
      \bar "|."
   }
}

right = {
   \clef "treble"
   <<
      \sopran
      \alt
      \altzwo
   >>
}

left = {
   \clef "bass"
   <<
      \tenor
      \bass
   >>
}

pedal = {
   \global
   \clef "bass"
   \relative e, {
      \override Score.VerticalAxisGroup #'remove-first = ##t
      s1. * 35
      r2. e~
      e1.~
      e1.
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
      \context { \RemoveEmptyStaffContext }

   }
}

\score {
   \transpose c d { % Chorton
      \unfoldRepeats {
         <<
            \context Staff = right {
               \set Staff.midiInstrument = "pan flute"
               \right
            }
            \context Staff = right {
               \set Staff.midiInstrument = "recorder"
               \transpose c c' \right
            }
            \context Staff = left {
               \set Staff.midiInstrument = "pan flute"
               \left
            }
            \context Staff = left {
               \set Staff.midiInstrument = "recorder"
               \transpose c c' \left
            }
            \new Staff {
               \set Staff.midiInstrument = "pan flute"
               \transpose c c, \pedal
            }
            \new Staff {
               \set Staff.midiInstrument = "recorder"
               \pedal
            }
         >>
      }
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 144 8)
      }
   }
}
