\version "2.10.33"

\header {
 mutopiatitle = "Wir danken dir, Herr Jesu Christ"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 623"
 mutopiainstrument = "Organ"
 date = "1715"
 source = "Edition Peters 8660"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Nov/7"

 title = "Wir danken dir, Herr Jesu Christ"
 subtitle = "Wir dancken dir H. Jesu Christ, daß du für uns gestorben bist"
 composer = "Johann Sebastian Bach"
 opus="BWV 623"
 footer = "Mutopia-2007/11/10-1132"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key g \major
   \time 3/4
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
}

\paper {
   head-separation = 0 \cm
   foot-separation = 0.2 \cm
   page-top-space = 0.6 \cm
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

halsup        = { \stemUp \tieUp \slurUp }
halsdown      = { \stemDown \tieDown \slurDown }
halsneutral   = { \stemNeutral \tieNeutral }
shifttiedown  = { \once \override Tie #'extra-offset = #'( 0 . -0.5 ) }
shifttieup    = { \once \override Tie #'extra-offset = #'( 0 . 0.4 ) }
shifttieupp   = { \once \override Tie #'extra-offset = #'( 0 . 0.9 ) }
staffup       = { \change Staff = "right" \halsdown }
staffdown     = { \change Staff = "left" \halsup }

sopran = {
   \new Voice \relative g' {
      \global
      \halsup
      g4 g g
      e4. fis8 g4
      a8 h16 c h8 a a4\prallmordent
      g2.\fermata
      %% Takt  5 ==================================================
      h4 h h
      e2 d4
      d4 cis2
      d2.\fermata
      h4 h h8 c16 d!
      %% Takt 10 ==================================================
      c2 h4
      a2 gis4
      a2.\fermata
      h4 h h
      a2 g4
      %% Takt 15 ==================================================
      g4 fis2
      g2.~
      g2.~
      g2.\fermata \bar "|."
   }
}

alt = {
   \new Voice \relative d' {
      \global
      \halsdown \dotsDown
      d4 c8\rest d16 c d4~
      d8 c16 d e8 d16 c h8 c16 d
      e4 d2~
      d8 e16 d e8 g16 fis! g8 h16 a
      %% Takt  5 ==================================================
      a8 g16 fis g4. d8
      g2 fis8 h16 a
      h8 a g[ a16 h] a g fis e
      fis16 e d cis d8 e fis16 a g fis
      g8 d e[ a16 g] fis4
      %% Takt 10 ==================================================
      g4. f16 e d8 e16 f
      e4. d16 c h8 c16 d
      c4. e16 dis e8 fis!
      g4 r8 d16 c d8 e
      fis4._\prall e16 fis g fis e d
      %% Takt 15 ==================================================
      e16 d c h c8 d16 e d8 c
      h8 d16 c d8 e f4~
      f8 e16 d c d c h c d e8~
      e8 d16 c d2_\fermata
   }
}

tenor = {
   \new Voice \relative h {
      \global
      h2 r8 g16 fis
      g8 e a4 g~
      g4. fis16 e fis8 g16 a
      h8 c16 h c8 g e'4
      %% Takt  5 ==================================================
      d4 r8 d16 c d8 h16 a
      h4. d16 cis d8 g16 fis
      g8 fis e4 r
      r8 a,16 g a8 c!16 h c8 h16 a
      g8 h e4. dis8
      %% Takt 10 ==================================================
      e8 g,16 f g8 a h[ c16 d!]
      c16 h a gis a8 h e,4~
      e8 a16 gis a8 h c[ h16 a]
      e'8 e,16 d! e8 fis g[ c16 h]
      c8 a d c h4
      %% Takt 15 ==================================================
      a4. h16 c h8 a
      g8 h16 a h8 c d16 c h a
      g16 a g f e8 g16 fis g8 c~
      \tempo 4 = 72 c4~ c8 \tempo 4 = 40 h16 a \tempo 4 = 12 h4\fermata
   }
}

right = {
   \clef "treble"
   <<
      \alt
      \sopran
   >>
}

left = {
   \clef "bass"
   \tenor
}

pedal = {
   \global
   \clef "bass"
   \relative g {
      r8 g16 fis g8 a h h,
      r8 c16 h c8 d e e,
      c4 d8 d'16 c d8 e
      f8 g, r e'16 d e8 fis
      %% Takt  5 ==================================================
      g8 g, r4 r
      r8 g'16 fis g8 a h h,
      r8 e16 d e8 fis g a,
      r8 fis'16 e fis8 g a d,
      r8 g16 fis g8 a h h,
      %% Takt 10 ==================================================
      r8 e16 d \stemDown e8 f g g,
      r8 \stemNeutral c16 h c8 d e e,
      a4 r r
      r4 r8 h16 a h8 c
      d8 c16 h c8 d e h
      %% Takt 15 ==================================================
      c8 a d,[ d'16 c] d8 e
      f8 g, r a16 g a8 h
      c8 c, r e'16 d e8 g16 fis!
      g4 g,2_\fermata
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
   \unfoldRepeats {
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
            \pedal
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose d d, \pedal
         }
      >>
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 86 4)
      }
   }
}
