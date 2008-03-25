\version "2.10.33"

\header {
 mutopiatitle = "Dies sind die heil'gen zehn Gebot'"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 679"
 mutopiainstrument = "Organ"
 date = ""
 source = "Edition Peters 8661"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2008/Mar/25"

 title = \markup { \fontsize #0 "Fughetta" \fontsize #-1 "super:" \fontsize #0 "Dies sind die heil'gen zehn Gebot'" }
 subtitle = "Manualiter"
 composer = "Johann Sebastian Bach"
 opus = "BWV 679"
 footer = "Mutopia-2008/03/25-1374"
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
   head-separation = 0.6 \cm
   foot-separation = 0.2 \cm
   page-top-space = 0 \cm
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

halsup       = { \stemUp \tieUp \slurUp \dotsUp }
halsdown     = { \stemDown \tieDown \slurDown \dotsDown }
up           = { \change Staff = "right" \halsdown }
down         = { \change Staff = "left" \halsup }

shiftnote = #(define-music-function (parser location xy)
                                (number-pair?)
   #{
      \once \override Stem     #'extra-offset = #$xy
      \once \override NoteHead #'extra-offset = #$xy
   #})

sopran = {
   \new Voice \relative d'' {
      \global
      \halsup
      \partial 8 d8\rest
      \override MultiMeasureRest #'staff-position = #4 R8*12
      R8*12
      R8*12
      R8*12
      %% Takt  5 ==================================================
      f2.\rest f4\rest f8\rest f4\rest g,8
      g8 g g g g g g h g g d' g,
      g8 f' g, g a h c16 d e8 d c h a
      h16 c d8 c h a g fis4 fis'8 g4 e8
      fis4 g8 fis4 e8 d4 e8 d4 c!8
      %% Takt 10 ==================================================
      h4 f'8\rest f4\rest cis8 d4 a8 a4 h8
      c!16 d e8 d c h a h4 d'8\rest c4\rest \once \override Stem #'length = #8 cis,8
      d8 d d d d d d h d d gis, d'
      d8 e, d' d c h cis4 d8 e4 d8
      cis4 d8 e4 cis8 a2.~
      %% Takt 15 ==================================================
      a4 g8 fis!4 g8 a4 d8 fis4 g8
      a4 \once \override NoteColumn #'X-extent = #'( 0 . 3 ) fis,8 g4 a8 d,4 g8 h4 d8
      g4 d8 h4 d8 g,4 f'8\rest f4\rest h,8
      \once \override Dots #'extra-offset = #'( 0.4 . 0 )
         \once \override Tie #'staff-position = #4 c2.~ c4 a8 d4 c8
      h16 a g8 f'! f e d cis16 h! a8 g' g f e
      %% Takt 20 ==================================================
      d4 e8 d4 c8 h4 f'!8 e4 gis8
      a4 h8 a4 g!8 fis4 dis8 e4 fis!8
      g4 a8\rest a4\rest a8\rest f!2.
      e16 f g8 a, a h c d16 e fis8 g, g a h
      c2. d
      %% Takt 25 ==================================================
      e16 d c8 h' h a g fis16 e d8 c' c h a
      g4 f8\rest h,4.~ h4 g8 e4 e'8~
      e8 d16 c h a d4.~ d8 c16 h a g c4.~
      c4.~ c8 h a h16 c d8 g, g a h
      a16 h c4~ c8 h a d16 e f!8 h, h c d
      %% Takt 30 ==================================================
      e8 fis g c,4.~ c8 h a g4.~
      g4. f!~ f8 g16 f e d e4 fis8
      g4 h8 c4 a8 h4 d8\rest fis,!4 g8\rest
      g4 d'8\rest d4\rest g,8 g g g g g g
      %% Takt 35 ==================================================
      g8 h g g d' g, g f' g, g a h
      c16 d e8 d c h a \once \override NoteColumn #'X-extent = #'( 0 . 5 ) h4.~ h
      \bar "|."
   }
}

alt = {
   \new Voice \relative d' {
      \global
      \halsdown
      \partial 8 g8\rest
      \override MultiMeasureRest #'staff-position = #-2 R8*12
      R8*12
      e4\rest e8\rest e4\rest d8 d d d d d d
      d8 fis d d a' d, d c' d, d e fis!
      %% Takt  5 ==================================================
      g16 a h8 a g f! e f16 g a8 g f e d
      e4 d8 e4 c8 d4 e8 d4 c8
      \down h4 d8 g,4 f8 g4 e'8\rest e4\rest \up d8
      d4 d8 d4 cis8 \shiftOn \halsup d4 \once \override Rest #'extra-offset = #'( 1 . 0 ) d'8\rest
         \once \override Rest #'extra-offset = #'( 1.4 . -0.3 ) f4\rest \halsup cis8
      d4 \once \override Rest #'extra-offset = #'( 1 . 0 ) d8\rest
         \once \override Rest #'extra-offset = #'( 1.4 . 0 ) d4\rest cis8 a4 c8 h4 a8
      %% Takt 10 ==================================================
      g4 g8\rest g4\rest g8 a4 c,8\rest c4\rest f!8
      g4 e8\rest e4\rest \shiftOff \shiftnote #'( 0.6 . 0 ) d8 \shiftOn g16 a h8 a \once \override Beam #'positions = #'( 2.3 . 1.8 ) g fis e
      \halsdown fis4 e8\rest e4\rest e8\rest e2.\rest
      e4\rest e8\rest e4\rest  gis8 g! g g g g g
      g8 e g g cis, g' g \down a, \up g' g fis e
      %% Takt 15 ==================================================
      fis4 e8 d4 e8 fis4 a8 d4 e8
      fis4 e8 d4 c8 h4 d,8 \halsup g4 h8
      d4 h8 g4 h8 d,4 g8\rest g4\rest g8
      \once \override Stem #'length = #6 g4 e8 fis4 g8 a4 fis8 fis4 fis8
      g4 \halsdown g8\rest g4\rest g8\rest e4\rest g8\rest g4 \rest g8
      %% Takt 20 ==================================================
      f16 e d8 c'! c h a gis16 fis e8 d' d c h
      a4 d8\rest d4\rest d8\rest h4\rest \halsup c!8 h4 dis8
      e4 h8\rest c2. h4.~
      h4 e,8 \halsdown a4 g8 fis4 e8 d4 g8
      e16 d c8 h' h a g fis16 e d8 c' c h a
      %% Takt 25 ==================================================
      g4.~ g8 a h a4 g8\rest g4\rest d8~
      d16 c h8 a' a g f! e16 d c8 h' h a g
      fis4. h16 c h a g fis e4. a16 h a g fis! e
      fis16 g a8 d, d e fis g2.~
      g4 fis8 fis g a g2.~
      %% Takt 30 ==================================================
      g8 a h a4 g8 fis4. e~
      e4. d~ d~ d8 c4
      \halsup d4 g8 g4 fis8 g4 g8\rest c,4 c8\rest
      \halsdown d4 d8 g4 f!8 e4 c8\rest c4\rest e8
      d4 c8\rest c4\rest c8\rest \down \shiftOff g4 \up c8\rest c4\rest f8
      %% Takt 35 ==================================================
      e4 e8\rest e4\rest \halsup \shiftOn fis8 \tieDown g4.~ g
   }
}

tenor = {
   \new Voice \relative g {
      \global
      \halsup
      \partial 8 g8
      g8 g g g g g g h g g d' g,
      g8 f' g, g a h c16 d e8 d c h a
      h16 c d8 c h a g fis4 d8 fis4 a8
      c4 a8 fis4 a8 d,4 c'8 h4 a8
      %% Takt  5 ==================================================
      h4 c8\rest c4\rest cis8 d4 a8 a4 h8
      c!4 h8 c4 a8 h4 c8 h4 a8
      \shiftOn g4 f8 e4 d8 e4 d8\rest d4\rest fis!8
      \shiftOff g4 fis8 g a b a4 \up a'8 h!4 g8
      a4 h8 a4 g8 fis4 e8\rest c4\rest d8
      %% Takt 10 ==================================================
      d4 a8\rest a4\rest e'8 d4 d,8\rest d4\rest d'8
      c4 f,8\rest f4\rest \shiftnote #'( 0.6 . 0 ) d'8 d4 a8\rest a4\rest \down a8
      a4 g8 fis4 a8 gis4 a8\rest a4\rest f!8
      h,4 a'8\rest a4\rest h8 a4 h8 cis4 h8
      a4 h8 a4 e8 fis4 a8 h4 cis8
      %% Takt 15 ==================================================
      c!8 c c c c c c a c c fis, c'
      c8 d, c' c h a g4 h8 \up d4 g8
      h4 g8 d4 g8 h,4 a8\rest a4\rest d8
      c4 c8 d4 e8 d4 d8 d4 d8
      d4 \down a8 b4 a8 g4 b!8 e,4 a8
      %% Takt 20 ==================================================
      a4 a8\rest a4\rest a8\rest c4\rest c8\rest c4\rest d!8
      c!16 h a8 \up g'! g fis e dis16 cis \down h8 \up a'! a g fis!
      e16 fis g8 \down a, a h c! \up d!16 e f!8 \down g, g a h
      c2.~ c4. h~
      h8 a g a h c~ c h a h c d~
      %% Takt 25 ==================================================
      d8 e16 d c h c4.~ c8 d16 c h a h8 c d
      e,4 f!8 e4 d8 c4 g'8 c4 h8
      a16 h c8 d, d e fis g16 a h8 c, c d e
      d2.~ d16 c h8 e e4 d8
      c16 h a8 d d4 c8 h16 a g8 f'! f e d
      %% Takt 30 ==================================================
      c16 h a8 g' g fis e d a'\rest a\rest d4.
      c2. h4.~ h4 a8
      h4 \up d8 e4 c8 d4 a8\rest \down a4 a8\rest
      h4.~ h8 c d c4 c8\rest c4\rest c8
      g4 c8\rest c4\rest c8\rest \shiftOn d,4 a'8\rest a4\rest g8
      %% Takt 35 ==================================================
      g4 a8\rest a4\rest \up es'8 d4.~ d
   }
}

bass = {
   \new Voice \relative d {
      \global
      \halsdown
      \partial 8 h8\rest
      \override MultiMeasureRest #'staff-position = #-2 R8*12 * 4
      %% Takt  5 ==================================================
      R8*12
      R8*12
      R8*12
      h4\rest h8\rest h4\rest d8 d d d d d d
      d8 fis d d a' d, d c'! d, d e fis!
      %% Takt 10 ==================================================
      g16 a h8 a g f! e f16 g a8 g f e d
      e4 d8\rest d4\rest fis8 g4 fis8 e4 a8
      d,4 e8 d4 c!8 h4 c8 h4 a8
      gis4 h8 e,4 e'8 a,4 g8\rest g4\rest g8\rest
      a4 g8\rest g4\rest g8\rest g4\rest g8\rest g4\rest a'8
      %% Takt 15 ==================================================
      d,4 d8\rest d4\rest d8\rest d4 h8\rest h4\rest h8\rest
      h4\rest h8\rest h4\rest fis'8 f f f f f f
      f8 d f f h, f' f g, f' f e d
      e16 d c8 h' h a g fis16 e d8 c' c h a
      g4.~ g4 f!8 e4 d8 d4 cis8
      %% Takt 20 ==================================================
      d4 h8\rest h4\rest dis8 e4. d4\rest e8
      a4 d,8\rest d4\rest ais'8 h4 d,8\rest d4\rest h'8
      e,8 h\rest h\rest h4\rest h8\rest h2.\rest
      R8*12
      R8*12
      %% Takt 25 ==================================================
      R8*12
      \override MultiMeasureRest #'staff-position = #-4 R8*12
      R8*12
      R8*12
      R8*12
      %% Takt 30 ==================================================
      e,4\rest e8\rest e4\rest a8 h16 c d8 e, e fis g
      a16 h c8 d, d e f! g4.~ g4 g8
      g8 g g g g g g h g g d' g,
      g8 f'! g, g a h c16 d e8 d c h a
      h4 d8 f4 d8 h4 d8 h4 g8
      %% Takt 35 ==================================================
      c8 g f e \tempo 8 = 220 d \tempo 8 = 160 c g'4.~ g
   }
}


right = {
   \clef "treble"
   <<
      \sopran
      \alt
   >>
}

left = {
   \clef "bass"
   <<
      \tenor
      \bass
   >>
}

\score {
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

   \layout{
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
   >>

   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 272 8)
      }
   }
}
