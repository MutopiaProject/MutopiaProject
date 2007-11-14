\version "2.10.33"

\header {
 mutopiatitle = "Christ ist erstanden"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 627"
 mutopiainstrument = "Organ"
 date = "1714"
 source = "Autograph"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Nov/11"

 title = "Christ ist erstanden"
 composer = "Johann Sebastian Bach"
 opus="BWV 627"
 footer = "Mutopia-2007/11/14-1158"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key a \minor
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

halsup        = { \stemUp \tieUp \slurUp }
halsdown      = { \stemDown \tieDown \slurDown }
halsneutral   = { \stemNeutral \tieNeutral }
shifttiedown  = { \once \override Tie #'extra-offset = #'( 0 . -0.4 ) }
shifttieup    = { \once \override Tie #'extra-offset = #'( 0 . 0.4 ) }
shifttieupp   = { \once \override Tie #'extra-offset = #'( 0 . 1 ) }
staffup       = { \change Staff = "right" \halsdown }
staffdown     = { \change Staff = "left" \halsup }

sopran = {
   \new Voice \relative a' {
      \global
      \halsup
      \partial 2 a2^\markup { \bold "1. Vers." }
      gis2 a
      c2 d
      a2\fermata a
      f2 g
      %% Takt  5 ==================================================
      a2 f
      e2 f
      d2\fermata f
      g2 e
      d2 c
      %% Takt 10 ==================================================
      f2 g
      a2\fermata a
      f2 g
      a2 f
      e2 d
      %% Takt 15 ==================================================
      g1
      f2 d
      d1
      d1 \bar "||" \break

      %% Vers 2
      \set Score.currentBarNumber = #1
      a'2^\markup { \bold "Vers. 2" } a
      gis2 a
      c2 d
      a2\fermata a
      %% Takt  5 ==================================================
      f2 g
      a2 f
      e2 f
      d1\fermata
      g2 g
      %% Takt 10 ==================================================
      d2 c
      f2 g
      a2\fermata g
      a2 g
      f2 g
      %% Takt 15 ==================================================
      a2 f
      e2 f
      g1
      f2 d
      d1
      %% Takt 20 ==================================================
      d1\fermata \bar "||" \break

      %% Vers 3
      \set Score.currentBarNumber = #1
      a'2^\markup { \bold "Vers. 3" } g
      f2 g
      a2 c
      a1\fermata
      %% Takt  5 ==================================================
      c2. b4
      a2 c
      a2 g
      f1\fermata
      a2 g
      %% Takt 10 ==================================================
      f2 e
      d4~ d16 d e fis g fis e fis g fis g a
      d,2\fermata g
      g2 e
      d2 c
      %% Takt 15 ==================================================
      f2 g
      a2\fermata a
      f2 g
      a2 f
      e2 f
      %% Takt 20 ==================================================
      g1
      f2 d
      \shifttieup d1~
      d1^\fermata \bar "|."
   }
}

alt = {
   \new Voice \relative f' {
      \global
      \halsdown \dotsDown
      \partial 2 r8 f16 e f4~
      f8 e16 d e4 c8\rest e4 d16 e
      c8 a'16[ gis] a4 g8\rest a4 g16 a
      f4. e16 f e4. d16 e
      d8 \staffdown a16 g a4 \staffup d8 c!16 b c4~
      %% Takt  5 ==================================================
      c8 c16 b c8 cis d8 d16 cis d4~
      d8 cis16 h! cis4 r8 d16 cis d4
      \staffdown r8 a16 g a4 \staffup d8 d4 c!16 d
      \staffdown b8 b16 a b4 c8\rest c16 b c4~
      c8 b16 a b4~ b8 a16 g a4~
      %% Takt 10 ==================================================
      a8 d16 c d4~ d8 c16 b c4~
      c8 c4 b16 c a8 c16 h c8 cis
      d8 a16 g a4 d8 c16 b c4~
      c8 c16 b c8 cis d8 d16 cis d4~
      d8 cis16 h cis4 r8 a16 g a4
      %% Takt 15 ==================================================
      r8 b16 a b4 a8 \staffup e'16 d e4~
      e8 d16 cis d4 \staffdown c8\rest c!16 b c4
      c8\rest b16 a b8 \staffup d16 c d8 g16 fis \tieUp g4~
      \once \override Stem #'length = #8.5 g8 g4 \tempo 4 = 52 fis16 e \tempo 4 = 36 fis2\fermata

      %% Vers 2
      \tempo 4 = 72 r2 r8 d16 c d8 \staffdown a
      \shifttieupp h4~ h16 c h c a8 \staffup e' fis gis!
      a4~ a16 b g! a f!8 d16 cis d8 g
      f8 f~ f16 g f g e8 cis~ cis16 d h cis
      %% Takt  5 ==================================================
      d8 \staffdown a b c! \staffup d e16 f e4_\prall
      f4~ f16 g e f d8 d16 cis d e c d
      h!16 d cis d32 e cis8. d16 d4. cis!8
      r8 d16 c! d8 \staffdown fis,! b4~ b16 c a b
      g8 h! c \staffup d e16 f d e c e d c~
      %% Takt 10 ==================================================
      c8 \staffdown h!16 a b4~ b8 a16 g a b g a
      f8 d'16 cis d8 a d g, c16 d b! c
      a8 d16 c d8 a b d c16 d b c
      a16 c h! cis \staffup d4~ d16 e d e cis!4
      \staffdown r8 d16 cis d8 a d g, c16 d b c
      %% Takt 15 ==================================================
      a8 c16 h! c8 cis \staffup d16 e cis e d4~
      d8 d cis16 d h! cis d8 \staffdown b!16 a b8 fis
      b4~ b16 \staffup d cis d e d cis h! \staffdown a4~
      a4~ a16 b g a fis8 g16 fis g8 a
      b8 d16 c! d8 a b4~ b16 c \tempo 4 = 64 b c
      %% Takt 20 ==================================================
      a1

      %% Vers 3
      \tempo 4 = 76 \staffup r4 e'16\rest f g f e4~ e16 e f e
      d8 \staffdown c!16 b a4 \staffup d16 f e d c4
      c16\rest c d e f4~ f16 a g f e g f e
      f16 c d e f4 e16\rest c d e f4~
      %% Takt  5 ==================================================
      f16 c d e f4~ f16 f e d c4~
      c16 c d e f4~ f16 a g f e c d e
      f16 g f e d4~ d16 f e d c4~
      c16 d c d \staffdown b2~ b16 b a g
      f16 \staffup c' d e! f4~ f4~ f16[ e32 d e8~]
      %% Takt 10 ==================================================
      e16 e d cis d4~ d4~ d16[ c!32 h! c8~]
      c16 c \staffdown b a b4~ b16 a g a b8 a
      g4 r r2
      \staffup r16 h! c d e f e d c8 \staffdown g c4~
      c16 c b a b4~ b16 b a g a4~
      %% Takt 15 ==================================================
      a16 a g a b c a b g8 d' c8.[ b16]
      a4 \staffup r16 c d e f e f g f4~
      f2~ f16 f e d e4
      r16 f e d c8 cis d4~ d16 d c d
      \staffdown b4~ b16 a g a f a h \staffup cis d4~
      %% Takt 20 ==================================================
      d16 f e d cis8 \staffdown h a4 r16 cis h cis
      a4 c!~ c8 b c4~
      c16 c b a b4~ b8 b16 a b8 b~
      b16 b c b a2.^\fermata
   }
}

tenor = {
   \new Voice \relative d' {
      \global
      \partial 2 r8 d4 c16 d
      h2 r8 a16 gis a4
      r8 c16 h c4 r8 a16 gis a4
      r8 d16 cis d4~ d8 cis16 h cis4
      d8 f,16 e \tieDown f4~ f8 e16 d e4
      %% Takt  5 ==================================================
      f8 a16 g \tieNeutral a4~ a8 b16 a b4~
      b8 a16 g a4~ a8 a4 g16 a
      \halsdown f8 f16 e f4~ f8 f16 e f4~
      f8 e4 d16 e c8 e a4~
      a8 d, g4~ g8 c, f4~
      %% Takt 10 ==================================================
      f8 f16 e f4~ f8 e16 d e4
      r8 f16 e f4 r8 f4 e16 f
      d8 f16 e f4~ f8 e16 d e4
      f8 a16 g a4~ a8 b!16 a b4~
      b8 e, a4~ a8 f4 e16 f
      %% Takt 15 ==================================================
      d8 g4 f16 g e8 a4 g16 a
      d,8 f16 e f4 r8 fis16 e fis4
      r8 g16 fis g8 b16 a b8 b16 a b4~
      b8 a16 g a4~ a2

      %% Vers 2
      r8 a16[ g a8 e] f4~ f16 g f g
      e8 e'4 d8 e8[ a,16 gis a8 d,]
      e8 e f! g! a a h! cis
      d8 d~ d16 e d e cis8 a16 g a8 e
      %% Takt  5 ==================================================
      f4~ f16 g e f d8 b'!16 a b c b c
      a8 c d e a,4. a8
      g8 a16 b a4~ a~ a16 b g a
      f8 fis g a d,4~ d16 e f8
      e8 g16 f g a h!8 c h16 a g4~
      %% Takt 10 ==================================================
      g8 g16 fis g8 d g c, f16 g e f
      d8 e f4~ f8 e16 d e f d e
      f4 f~ f16 g f g e f d e
      f4~ f16 g f g e4~ e16 f e f
      d16 e d e f4~ f8 e16 d e f d e
      %% Takt 15 ==================================================
      f8 a16 g a4~ a4~ a16 f e d
      a'8 b a16 b g a f g e f d4~
      d16 f! e f g8 f e a16 g a8 e
      d8 f16 e f8 cis d8 e16 d e8 fis!
      g4 r8 g16 fis g4~ g16 a g a
      %% Takt 20 ==================================================
      fis1

      %% Vers 3
      r16 a h cis \tieUp d4~ d16 d cis! h cis4
      d16 b a g \tieDown f4~ f16 a g f e4
      \tieUp f4~ f16 e f g a c b a g b a g
      f4 r16 c d e f4 r16 e f g
      %% Takt  5 ==================================================
      a4~ a16 a b a g4~ g16 g a g
      f4~ f16 e f g a c b a g b a g
      f16 c d e f4~ f16 a g f e8 es~
      es16 f es f \tieDown d4~ d16 d c b c4~
      c4 r16 a' b c d c b a g8. g16
      %% Takt 10 ==================================================
      c8 a r16 f g a b a g f e8. e16
      a8 fis g4 c,2~
      c16 c b a b a b c d f! e d c h c d
      e8 g c4 r16 d, e f g f g a
      d,16 d e fis g4~ g16 c, d e f4~
      %% Takt 15 ==================================================
      f2~ f16 e d e e8. d32 e
      f16 c d e f e f g a g a b \tieUp c4~
      c16 a g f b8 a g a16 b c4~
      c16 c, d e f8 g a16 g f e \tieDown d4~
      d16 f e d cis4 d16 cis d e \tieUp f4~
      %% Takt 20 ==================================================
      f16 d e f g8 f e4 r16 e d e
      f4 \tieDown f4~ f8 g a4~
      a16 d, e fis g4~ g8 g16 fis! g8 g~
      \tempo 4 = 70 g4~ g16 g fis e << \new Voice { \stemUp fis2^\fermata }
                                       \new Voice { \stemDown h,16\rest \tempo 4 = 56 e d \tempo 4 = 34 cis \tempo 4 = 12 d4^\fermata }
                                    >>
   }
}

pedal = {
   \global
   \clef "bass"
   \relative e {
      \partial 2 r2
      r8 e4 d16 e c8 c4 h16 c
      a8 a'4 g!16 a f8 f4 e16 f
      d2_\fermata r
      r8 d4 c16 d b8 c4 b16 c
      %% Takt  5 ==================================================
      f,8 f'4 e16 f d8 b4 a16 b
      g8 a4 g16 a d,2
      r8 d'4 c16 d b8 b4 a16 b
      g4 r4 r8 a4 g16 a
      f8 g4 f16 g e8 f4 e16 f
      %% Takt 10 ==================================================
      d8 d'4 c16 d b8 c4 b16 c
      f,2 r2
      r8 d'4 c16 d b8 c4 b16 c
      f,8 f'4 e16 f d8 b4 a16 b
      g8 a4 g16 a f8 d'4 c!16 d
      %% Takt 15 ==================================================
      h!8 e4 d16 e cis2
      r8 d4 c!16 d b8 b4 a16 b
      g2 r8 g'4 fis16 g
      d2 d,2

      %% Vers 2
      R1
      r8 e'16 d e8 h c4~ c16 d h c
      a8 a'16 g a8 e f4~ f16 g e f
      d8 f16 e f8 d a'4 a,
      %% Takt  5 ==================================================
      r8 d16 c d8 a b g c c,
      f8 f'16 e f8 cis d e f d
      g8 e a a, d, d'16 cis d8 a
      b4~ b16 c! a b g8 g'16 f! g8 d
      e4~ e16 f d e c8 d e f
      %% Takt 10 ==================================================
      g4~ g16 a f! g e8 f16 e f8 c
      d4~ d16 e c! d b8 c16 b c8 c,
      f4 r r2
      r8 f'16 e f8 h,!8 r e16 d e8 a,
      d4~ d16 e c! d b8 c16 b c8 c,
      %% Takt 15 ==================================================
      f8 f'~ f16 g e f d8 e f g
      a8 g16 e a8 a, b4~ b16 c! a b
      g8 e'16 d e8 h! cis4~ cis16 d h cis
      d,8 d'16 cis d8 a b4~ b16 c! a b
      g2 r8 g'16 fis g8 g,
      %% Takt 20 ==================================================
      d'1_\fermata

      %% Vers 3
      R1
      r4 r16  d c! d b4 r16 c b c
      f,8 e d4 a'8 b c4
      f,2~ f8 e d4
      %% Takt  5 ==================================================
      a'8 g f4 c'8 d e4
      f8 e d4 a8 b c4
      f,4 r16 d' c d b4 r16 c b c
      a4 r16 b a b f2
      f'8 e! d c b g c b
      %% Takt 10 ==================================================
      a8 f b a g e a g
      fis8 d g fis e d e fis
      g8 fis g a b g a h
      c8 h c d e d e f
      g4 r16 g f! g e4 r16 f e f
      %% Takt 15 ==================================================
      d4 r16 d c d b4  r16 c b c
      f,2. r16 f' e f
      d4 r16 d c d b4 r16 c b c
      f,4 r16 f' e f d8 c b a
      g8 e a4 d, r16 d' c! d
      %% Takt 20 ==================================================
      h4 r16 e d e cis e d e a,8 a'
      d,16 f e f a, c b c b d c d fis, a g a
      g4 r16 d' c d b d c d g, b a b
      d,1 _\fermata
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
            \set Staff.midiInstrument = "trombone"
            \transpose d d, \pedal
         }
      >>
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 76 4)
      }
   }
}
