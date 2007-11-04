\version "2.10.33"

\header {
 mutopiatitle = "In dir ist Freude"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 615"
 mutopiainstrument = "Organ"
 date = "1715"
 source = "Edition Peters 8660"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Oct/30"

 title = "In dir ist Freude"
 composer = "Johann Sebastian Bach"
 opus="BWV 615"
 footer = "Mutopia-2007/11/04-1088"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key g \major
   \time 3/2
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
}

\paper {
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

halsup        = { \stemUp \tieUp }
halsdown      = { \stemDown \tieDown }
halsneutral   = { \stemNeutral \tieNeutral }
mmrestdown    = { \once \override MultiMeasureRest #'staff-position = #-2 }
mmrestdownn   = { \once \override MultiMeasureRest #'staff-position = #-4 }
mmrestup      = { \once \override MultiMeasureRest #'staff-position = #4 }
mmrestupp     = { \once \override MultiMeasureRest #'staff-position = #6 }
shifttiedown  = { \once \override Tie #'extra-offset = #'( 0 . -0.5 ) }
shifttieup    = { \once \override Tie #'extra-offset = #'( 0 . 0.5 ) }
staffup       = { \change Staff = "right" \halsdown }
staffdown     = { \change Staff = "left" \halsup }

sopran = {
   \new Voice \relative d'' {
      \global
      \halsup
      \mmrestup R1.
      d2 d c
      h2 r8 g d' g r a, d fis
      g8 d a c h d g, h a d fis, a
      %% Takt 5 ===================================================
      \shiftOn g8 d g a h2 a \shiftOff
      h8 g' fis e d c h d c h a c
      h8 d, e fis g a h c d e fis d
      g4 f\rest f2\rest f\rest
      d2 d c
      %% Takt 10 ==================================================
      h2. a4 g2
      d'2 d c
      h8 d, e fis g a h c d e fis d
      g8 e d c d h a g a g fis e
      fis2. a4 g a
      %% Takt 15 ==================================================
      h2. e,4 a2~
      a8 c h a g fis e fis g4 fis
      e2~ e8 fis g a h c d e
      fis,8 c' h a h a g a fis a g fis
      d'2 d c
      %% Takt 20 ==================================================
      h2 r8 g d' g r a, d fis
      g8 d a c h d g, h a d fis, a
      \shiftOn g8 d g a h2 a \shiftOff
      h8 g' fis e d c h d c h a c
      h8 d, e fis g a h c d e fis d
      %% Takt 25 ==================================================
      g4 f\rest f2\rest f\rest
      d2 d c
      h2. a4 g2
      d'2 d c
      h8 d, e fis g a h c d e fis d
      %% Takt 30 ==================================================
      g8 e d c d2 c
      h2. a4 g8 a h c
      d2 r8 g fis e fis2
      r8 f e d e d c h c2
      r8 c h a h4. h8 a4. a8
      %% Takt 35 ==================================================
      g2 s1
      r8 a h c r c d e d c h a
      h2. a4 g8 fis g4
      f'4\rest d8 c h a g a h4 a
      \repeat volta 2 {
         g4. d8 g2~ g8 fis g a
         %% Takt 40 ==================================================
         h2 c d
         e4. d8 c2 d\rest
         e4. e8 f2~ f8 a g f
         e4 d c2 d\rest
         r8 e d c h c h c c4.\prallprall h16 c
         %% Takt 45 ==================================================
         d1 d2
         f8\rest d c h a h a h \shiftOn h4.\prallprall \shiftOff a16 h
         c1 c2
         c2 c h
         a1 a2
         %% Takt 50 ==================================================
         h2 c a
      }
      g1.^\fermata
   }
}

alt = {
   \new Voice \relative d'' {
      \global
      \halsup
      \mmrestdown R1.
      \mmrestdown R1.
      s1.
      s1.
      %% Takt 5 ===================================================
      d2 d c
      s1.
      s1.
      s1.
      f,4\rest \shiftOn a h2 a
      %% Takt 10 ==================================================
      g2. fis4 d2
      c'2 h a \shiftOff
      s1.
      s1.
      s1.
      %% Takt 15 =================================================
      s1.
      s1.
      s1.
      s1.
      \halsdown g4 e\rest e2\rest e\rest
      %% Takt 20 ==================================================
      s1.
      s1.
      \halsup d'2 d c
      s1.
      s1.
      %% Takt 25 ==================================================
      s1.
      f,4\rest \shiftOn a h2 a
      g2. fis4 d2
      c'2 h a \shiftOff
      s1.
      %% Takt 30 ==================================================
      s2 g8\rest h a g \shiftOn a2 \shiftOff
      \halsdown g1.~
      g8 fis g a h2 h8\rest c h a
      g2 r r8 h a g
      fis!2 r8 fis g4~ g8 e fis4
      %% Takt 35 ==================================================
      g2 r2 e8\rest d e f
      e2 << \new Voice { \halsup a1
                         \once \override Rest #'extra-offset = #'( 1 . 0 )  e8\rest \shiftOn a g fis g4 fis d d \shiftOff }
            \new Voice { \halsdown d1~
                         d2 s2 }
         >>
      g4\rest a g s r8 d r c~
      \repeat volta 2 {
         c8 a h4~ h2 r
         %% Takt 40 ==================================================
         r8 a' g f r g f e r f e d
         r8 h' c g e2 g\rest
         r8 g c4~ c8 e d c h!2
         r8 g r f e2 g\rest
         \mmrestdownn R1.
         %% Takt 45 ==================================================
         \dotsDown g8\rest h a g fis! g fis g gis4._\prallprall fis16 gis
         a1 a2
         r8 a g! fis! e fis e fis fis4._\prallprall e16 fis
         d8 g fis e d e d e e4._\prallprall d16 e
         fis1 \halsup \shiftOn fis2 \shiftOff
         %% Takt 50 ==================================================
         g1 \shiftOn fis2 \shiftOff
      }
      d1.
    }
}

tenor = {
   \new Voice \relative d' {
      \global
      \halsup
      s1.
      s1.
      d2 d c
      h8 \staffup g' fis e d c h d c \staffdown h a c
      %% Takt 5 ===================================================
      h2 r8 g \staffup d' g \staffdown r a, \staffup d fis
      g8 \staffdown \halsneutral d,, e fis g a h c d e fis d
      g8 fis g a h c \staffup d e fis g a fis
      h4 g\rest g2\rest g\rest
      a,4\rest fis' g2 d
      %% Takt 10 ==================================================
      d2. c4 h2
      fis'2 g s
      s2 \staffdown a,\rest a\rest
      h2 h \staffup cis
      d2. c!4 h c
      %% Takt 15 ==================================================
      d8 f e d c2~ c8 d \staffdown h c
      h1 r8 h r a~
      a8 c h a g fis e fis g a h c
      s1.
      s1.
      %% Takt 20 ==================================================
      d2 d c
      h8 \staffup g' fis e d c h d c \staffdown h a c
      h2 r8 g \staffup d' g \staffdown r a, \staffup d fis
      g8 \staffdown \halsneutral d,, e fis g a h c d e fis d
      g8 fis g a h c \staffup d e fis g a fis
      %% Takt 25 ==================================================
      h4 g\rest g2\rest g\rest
      a,4\rest fis' g2 d
      d2. c4 h2
      fis'2 g s
      s1.
      %% Takt 30 ==================================================
      s1.
      \staffdown \halsneutral r8 e d c h a g fis e fis g a
      \halsup h8 a h c d2 c
      h2. a4 g h
      a2 r8 a h c d2
      %% Takt 35 ==================================================
      d2 r8 h c d h2
      c2. h4 a2
      g2 s1
      d'4\rest d~ d8 c h a g4 fis
      \repeat volta 2 {
         g1 a2\rest
         %% Takt 40 ==================================================
         s1.
         c2 s1
         s1.
         s1.
         s1.
         %% Takt 45 ==================================================
         s1.
         \halsneutral r8 f e d c d c d d4._\prallprall c16 d
         e8 c h a g a g a a4.\prallprall g16 a
         h4 fis2 g c4~
         c1 \staffup c2
         %% Takt 50 ==================================================
         d2 e4 c d c\laissezVibrer
      }
      h1.
   }
}

bass = {
   \new Voice \relative d' {
      \global
      \halsdown
      d2 d c
      h8 d a c h d g, h a d fis, a
      g8 d g a h2 a
      g4 r r2 r
      %% Takt 5 ===================================================
      s1.
      s1.
      s1.
      s1.
      r8 \halsneutral e' d c h a g a fis a g fis
      %% Takt 10 ==================================================
      g8 g, a h c d e fis g a h g
      a fis g a h c \staffup d e fis g e fis
      g4 g,\rest s1
      s1.
      \staffdown \halsneutral r8 h a g a fis e d e c! h a
      %% Takt 15 ==================================================
      gis2 a8 h' a g! fis! e dis e
      dis2 e~ e4 dis!
      e2 r r
      d'2 d c
      h8 d a c h d g, h a d fis, a
      %% Takt 20 ==================================================
      g8 d g a h2 a
      g4 r r2 r
      s1.
      s1.
      s1.
      %% Takt 25 ==================================================
      s1.
      r8 \halsneutral e' d c h a g a fis a g fis
      g8 g, a h c d e fis g a h g
      a fis g a h c \staffup d e fis g e fis
      g4 g,\rest c2\rest c\rest
      %% Takt 30 ==================================================
      c2\rest c\rest c8\rest fis e d
      s1.
      \staffdown \halsdown s2 r8 h a g r a g fis
      g2 c,4 d e c
      d4 e8 fis g2 a
      %% Takt 35 ==================================================
      r8 g a h g4 fis g2
      \dotsDown a2. g4 fis e
      d2 r8 d' r c h a h4
      r4 fis g2 d~
      \repeat volta 2 {
         d2~ d8 g, a h c d e fis
         %% Takt 40 ==================================================
         \halsneutral g4 g, a a' h h,
         \halsdown c2 r8 h' c g e c e g
         c4. b8 a g f e d f e d
         c8 e g h! c4 c, r2
         R1.
         %% Takt 45 ==================================================
         R1.
         s1.
         s1.
         s1.
         r8 d fis a \halsneutral c h a g fis e d c
         %% Takt 50 ==================================================
         h8 g h d g fis e d c h a \tieUp d~
      }
      <d g,>1.^\fermata
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
   \bass
   >>
}

pedal = {
   \global
   \clef "bass"
   \relative d {
      r4 d g h,8 c d c d4
      g,4 r r2 r2
      r4 d' g h,8 c d c d4
      g,4 r r2 r2
      %% Takt 5 ===================================================
      r4 d' g h,8 c d c d4
      g,4 r r2 r2
      d''2 d c
      h8 d a c h d g, h a d fis, a
      g4 d g h,8 c d c d4
      %% Takt 10 ==================================================
      g,4 r r2 r2
      r4 d' g h,8 c d c d4
      g,4 r r2 r2
      R1.
      R1.
      %% Takt 15 ==================================================
      R1.
      r4 h e g,8 a h a h4
      e,2 r r
      r4 d' g h,8 c d c d4
      g,4 r r2 r2
      %% Takt 20 ==================================================
      r4 d' g h,8 c d c d4
      g,4 r r2 r2
      r4 d' g h,8 c d c d4
      g,4 r r2 r2
      d''2 d c
      %% Takt 25 ==================================================
      h8 d a c h d g, h a d fis, a
      g4 d g h,8 c d c d4
      g,4 r r2 r2
      r4 d' g h,8 c d c d4
      g,4 r r2 r2
      %% Takt 30 ==================================================
      R1.
      R1.
      r4 d' g h,8 c d c d4
      g,4 r r2 r2
      r2 d' c
      %% Takt 35 ==================================================
      h2. a4 g2
      g fis1
      g2 r4 d' g h,8 c
      d8 c d4 g h,8 c d c d4
      \repeat volta 2{
         g,1 r2
         %% Takt 40 ==================================================
         R1.
         r4 g' c e,8 f g f g4
         c,4 r r2 r2
         r4 g' c e,8 f g f g4
         c,2 r4 g' fis! e
         %% Takt 45 ==================================================
         d2 r4 d c h
         a2 r4 a' g f
         e2 r4 e d c
         h8 e d e h c h c c4.\prallprall h16 c
         d4 a d fis,8 g a g a4
         %% Takt 50 ==================================================
         d,1.
      }
      g1.^\fermata \bar "|."
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
         \PianoStaff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 4)
      }
      \context {
         \Staff      \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
      }
   }
}

\score {
   \unfoldRepeats {
      <<
         \new PianoStaff {
            <<
               \context Staff = right {
                  \set Staff.midiInstrument = "church organ"
                  \right
               }
               \context Staff = left {
                  \set Staff.midiInstrument = "church organ"
                  \left
               }
            >>
         }
         \context Staff = cf {
            \set Staff.midiMaximumVolume = #0.5
            \set Staff.midiInstrument = "recorder"
            \transpose d' d'' \alt
         }
         \context Staff = pedal {
            \set Staff.midiInstrument = "church organ"
            \pedal
         }
         \new Staff {
            \set Staff.midiInstrument = "trombone"
            \transpose d d, \pedal
         }
      >>
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 78 2)
      }
   }
}
