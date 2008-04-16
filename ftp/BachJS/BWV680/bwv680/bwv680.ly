\version "2.10.33"

\header {
   mutopiatitle = "Wir glauben all an einen Gott"
   mutopiacomposer = "BachJS"
   mutopiaopus = "BWV 680"
   mutopiainstrument = "Organ"
   date = "1739"
   source = "Edition Peters 8662"
   style = "Baroque"
   copyright = "Creative Commons Attribution-ShareAlike 3.0"
   maintainer = "Urs Metzger"
   maintainerEmail = "urs@ursmetzger.de"
   lastupdated = "2008/Mar/28"

   title = "Wir glauben all an einen Gott"
   subtitle = "In Organo pleno"
   composer = "Johann Sebastian Bach"
   opus="BWV 680"
 footer = "Mutopia-2008/04/16-1376"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key a \minor
   \time 2/4
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
   #(revert-auto-beam-setting '(end * * 2 4) 1 4)
   #(override-auto-beam-setting '(end 1 16 2 4) 1 4)
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

halsup      = { \stemUp \tieUp \slurUp \dotsUp }
halsdown    = { \stemDown \tieDown \slurDown \dotsDown }
halsneutral = { \stemNeutral \tieNeutral \slurNeutral \dotsNeutral }
up          = { \change Staff = "right" \halsdown }
down        = { \change Staff = "left" \halsup }

diskant = {
   \new Voice \relative b'' {
      \global
      \halsup
      \partial 8 s8
      s2 * 94
      %% Takt 95 ==================================================
      c8\rest b4 a8~
      a16 g a b g a f! g
   }
}

sopran = {
   \new Voice \relative d'' {
      \global
      \halsup
      \partial 8 d8\rest
      \override MultiMeasureRest #'staff-position = #4 R2
      R2
      \once \override MultiMeasureRest #'staff-position = #6 R2
      R2
      %% Takt  5 ==================================================
      R2*5
      %% Takt 10 ==================================================
      R2
      \once \override MultiMeasureRest #'extra-offset = #'( -0.5 . 0 ) R2
      R2
      f4\rest f8\rest e~
      e8 a4 gis8
      %% Takt 15 ==================================================
      a8 g!16 f e f g e
      f4 e
      d4~ d8 e16 d
      c4. c8
      h4~ h16 c a h
      %% Takt 20 ==================================================
      cis16 d h cis d a d8~
      d16 c! d h! c b c a
      b4 a
      g4 h8\rest g~
      g8 c4 h!8
      %% Takt 25 ==================================================
      c8 b16 a g a b g
      a8 b16 c d8 g~
      g8 c, f4~
      f8 e!4 f8~
      f8 g16 a g4~
      %% Takt 30 ==================================================
      g8 c, f4~
      f8 f e es~
      es8 es d des
      c2~
      c16 h! c a h c d h
      %% Takt 35 ==================================================
      e2~ e16 d e c d e f d
      g2~
      g16 g a g fis g e fis
      g8 d g f!~
      f8 e f\rest g~
      %% Takt 40 ==================================================
      g16 e f8~
      f16 d e8~
      e16 c h! c d c h a
      g8 c~ c16 d h c
      d4~ d16 e c d
      %% Takt 45 ==================================================
      e16 f d e f c f8~
      f16 e! g f e d! c8~
      c8 f4 e8
      f8 es!16 d c d es c
      d4 c
      %% Takt 50 ==================================================
      b4 d8\rest d~
      d8 g4 fis8
      g8 f!16 e d e f d
      e4 d
      c4 f8\rest e~
      %% Takt 55 ==================================================
      e8 a4 gis8
      a8 g!16 f e f g e
      f4 e
      d4 f8\rest a~
      a16 g fis g a b c a
      %% Takt 60 ==================================================
      b8 d, g4~
      g8 fis4 g8~
      g8 a16 b a4~
      a8 d, g4~
      g8 g fis f~
      %% Takt 65 ==================================================
      f8 f e es
      d2~
      d16 c d b c d es c
      f2~
      f16 es f d e f g e
      %% Takt 70 ==================================================
      a2~
      a16 a b a g a f g
      a8 e a g~
      g16 g a g fis g e fis
      g8 d g f!~
      %% Takt 75 ==================================================
      f16 f g f e f d e
      f16 c d e f4~
      f16 f e d e4~
      e16 a, h! cis d4~
      d16 d c! b c4~
      %% Takt 80 ==================================================
      c16 f, g a b4~
      b16 b a g a4~
      a16 d, e! f g4~
      g16 f g e f8. e16
      f8 e d'4\rest
      %% Takt 85 ==================================================
      \once \override MultiMeasureRest #'staff-position = #6 R2
      a'4\rest a8\rest e~
      e8 a4 gis8
      a8 g!16 f e f g e
      f8 e d16 f e d
      %% Takt 90 ==================================================
      cis16 d e f g a b g
      a4~ a16 f b a
      b16 a g f e8 a
      d,16 e f d \once \override Tie #'staff-position = #4 e4~
      e16 d e f d4~
      %% Takt 95 ==================================================
      \once \override Beam #'positions = #'( 3 . 0.6 ) d8 \stemDown g \stemUp \shiftOn cis,4
      d4 \once \override Rest #'extra-offset = #'( -0.6 . 0 ) c\rest
      e16 d e g f g e f
      d2~
      d4. cis8
      %% Takt 100 =================================================
      d4.^\fermata
   }
}

alt = {
   \new Voice \relative e' {
      \global
      \halsdown
      \partial 8 e8\rest
      \once \override MultiMeasureRest #'staff-position = #-2 R2
      g4\rest g8\rest a8~
      a8 d4 cis8
      d8 c!16 b a b c a
      %% Takt  5 ==================================================
      b4 a
      g4~ g8 a16 g
      f4~ f8 f
      e4~ e16 f d e
      fis16 g e fis g d g8~
      %% Takt 10 ==================================================
      g16 f! g e f e f d
      e16 fis gis a h! d c h
      c16 h a gis a c h a
      gis8 a4 gis8
      a16 g! f e d f e d
      %% Takt 15 ==================================================
      c4 g'8\rest g16\rest e'~
      e16 c d8~ d16 h c8~
      c16 a gis a h a gis! fis
      e8 a4 c,8
      f!8 d4 e8~
      %% Takt 20 ==================================================
      e8 e \down a,16 \up a' b a
      g8 e c\rest d~
      d8 g4 fis8
      g8 f!16 e! d e f d
      e4 d
      %% Takt 25 ==================================================
      c16 \down g \up c d e f g8~
      g16 f g a b! a b g
      a4 g8\rest c~
      c16 a b8~ b16 g a8~
      a16 f e f g f e d
      %% Takt 30 ==================================================
      c8 f4 a8~
      d8 b4 a16 g
      f4 e16\rest f g f
      e!16 d! e c f4~
      f4~ f16 e f d
      %% Takt 35 ==================================================
      gis16 a h gis a4~
      a4~ a16 g! a f
      h16 c d h c4~
      c2~
      c16 c d c h c a h
      %% Takt 40 ==================================================
      c8 b16 a g a b g
      a4 g
      f4. g16 f
      e4. e8
      a8 f4 g8~
      %% Takt 45 ==================================================
      g8 g c,16 c' des c
      b4~ b8 c16 b
      a4 g
      f4 e8\rest f~
      f8 b4 a8
      %% Takt 50 ==================================================
      b8 a16 g fis g a fis
      g4 g\rest
      g4\rest g8\rest g~
      g8 c4 h8
      c8 h16 a gis a h gis
      %% Takt 55 ==================================================
      a4 g\rest
      g4\rest g8\rest a~
      a8 d4 cis8
      d8 c!16 b a b c a
      b4 a
      %% Takt 60 ==================================================
      g4 g8\rest d'~
      d16 b c8~ c16 a b8~
      b16 g fis g a g fis! e!
      d8 g4 b8
      es8 c4 h!16 a
      %% Takt 65 ==================================================
      g4 g16\rest g as g
      fis16 e! fis d g4~
      g4~ g16 f g es
      a16 b c a b4~
      b4~ b16 a b g
      %% Takt 70 ==================================================
      cis16 d e cis d4~
      d8 cis d4~
      d16 d e d cis d h! cis
      d8 a d c!~
      c16 c d c h c a h
      %% Takt 75 ==================================================
      c8 g c b
      a8 g\rest g16\rest a b a
      g4~ g16 f g e
      f4 e16\rest f g f
      es4~ es16 d es c
      %% Takt 80 ==================================================
      d4 c16\rest d es d
      c4~ c16 b c a
      b4~ b16 h cis d
      e4~ e16 cis d8~
      d8 cis e\rest a~
      %% Takt 85 ==================================================
      a8 d4 cis8
      d16 e d c! h! c d h
      c4 h
      a2~
      a16 d8 c!16 h4
      %% Takt 90 ==================================================
      a4 h8\rest e~
      e16 a, d cis d4~
      d4~ d16 cis8 c16
      b4 g16\rest d' cis h
      a4 g8\rest a
      %% Takt 95 ==================================================
      b8 g~ g16 f g a
      f8 fis g a
      b4 a16 b g a
      f16 fis g gis a8 h!
      a2
      %% Takt 100 =================================================
      a4.
   }
}

tenor = {
   \new Voice \relative d' {
      \global
      \partial 8 d8~
      d8 a'4 gis8
      a8 g!16 f e f g e
      f4 e
      d2~
      %% Takt  5 ==================================================
      d8 cis4 d8~
      d8 e16 f e4~
      e8 a, d4~
      d8 d cis c~
      c8 c \clef "bass" h![ b]
      %% Takt 10 ==================================================
      a8 d, r a'16 h!
      c8 h16 a gis e a8~
      a8 e'4 dis8
      e8 d!16 c h c d h
      c4 h
      %% Takt 15 ==================================================
      a2~
      a8 gis4 a8~
      a8 h16 c h4~
      h8 e, a4~
      a8 a gis g~
      %% Takt 20 ==================================================
      g8 g fis f
      e8 a, e' fis
      g16 a b c d es d c
      h!16 a g a h c d h
      c16 h a g f a g f
      %% Takt 25 ==================================================
      e8 c r c'~
      c8 f4 e8
      f8 es16 d c d es c
      d4 c
      b4. c16 b
      %% Takt 30 ==================================================
      a4. a8
      g4~ g16 a f g
      a16 b g a b4~
      b4 a16 g a f
      d'2~
      %% Takt 35 ==================================================
      d4 c16 h c a
      \clef "treble" f'2~
      f4 e16 d e c
      a'8 g a d,
      g4~ g16 f e d
      %% Takt 40 ==================================================
      \clef "bass" c2~
      c8 h!4 c8~
      c8 d16 e d4~
      d8 g, c4~
      c8 c h b~
      %% Takt 45 ==================================================
      b8 b a as
      g8 c, c' e
      f16 e d c b d c b
      a16 g f g a b c a
      b16 a g f e! d e fis
      %% Takt 50 ==================================================
      g16 a b c d es d c
      b16 a b g a h c a
      h16 a g a h c d h
      c16 h a g fis e fis gis
      a16 h c d e f e d
      %% Takt 55 ==================================================
      c16 h c a h cis d h
      cis h a h cis d e cis
      d16 c! b a g f g a
      \clef "treble" b16 c! d e fis8 d~
      d8 g4 fis8
      %% Takt 60 ==================================================
      g8 f!16 es d es f d
      es4 d
      c4. d16 c
      \clef "bass" b4. b8
      a4~ a16 h! g a
      %% Takt 65 ==================================================
      h16 c a h c4~
      c4 b16 a b g
      \clef "treble" es'2~
      es4 d16 c d b
      g'2~
      %% Takt 70 ==================================================
      g4 f16 e! f d
      b'8 a \stemUp b4 \stemNeutral
      a4 r8 a
      d,4 r8 d
      g4 r8 g
      %% Takt 75 ==================================================
      c,4 r8 c
      f8 \clef "bass" f, a f
      h!8 g cis a
      d8 d, f d
      g8 es a f
      %% Takt 80 ==================================================
      b8 b, d b
      e!8 c fis d
      g8 f! e d
      cis16 a h cis d e f g
      a16 g a b a g f e
      %% Takt 85 ==================================================
      f16 d e f e f g e
      f8 fis g gis
      a16 h! c d e f e d
      c16 h a h cis d e cis
      \clef "treble" d8 a'4 gis8
      %% Takt 90 ==================================================
      a8 g!16 f e f g e
      f2
      e4. f8
      g2
      f2
      %% Takt 95 ==================================================
      e2
      \clef "bass" d2~
      d4 cis
      d8 e << \new Voice { \halsup f!4~
                           f8 e16 d e4
                           d4.^\fermata }
              \new Voice { \halsdown \tempo 4 = 64 d,8\rest d16 e
                           f16 g \tempo 4 = 58 a8 g16_\prall f \tempo 4 = 38 g8
                           \tempo 4 = 20 fis4. }
           >>
   }
}

right = {
   \clef "treble"
   <<
      \diskant
      \sopran
      \alt
   >>
}

left = {
   \clef "treble"
   \tenor
}

pedal = {
   \global
   \clef "bass"
   \relative d {
      \partial 8 r8
      R2
      R2
      R2
      r8 d f d
      %% Takt  5 ==================================================
      g8 e a f
      b8 g cis a
      d8 c!16 d b c a b
      g16 a f g e8 a
      d,4 r
      %% Takt 10 ==================================================
      R2 * 5
      %% Takt 15 ==================================================
      r8 a c a
      d8 h e c
      f8 d
      gis8 e
      a8 g!16 a f g e f
      %% Takt 20 ==================================================
      d16 e c d h8 e
      a,4 r
      R2
      R2
      R2
      %% Takt 25 ==================================================
      R2
      R2
      R2
      r8 f a f
      b8 g c a
      %% Takt 30 ==================================================
      d8 b e c
      f8 e16 f d e c d
      b16 c a b g8 c
      f,4 r
      R2
      %% Takt 35 ==================================================
      R2 * 5
      %% Takt 40 ==================================================
      R2
      r8 c' e c
      f8 d g e
      a8 f h! g
      c8 h16 c a h g a
      %% Takt 45 ==================================================
      f16 g e f d8 g
      c,4 r
      R2
      R2
      R2
      %% Takt 50 ==================================================
      R2 * 5
      %% Takt 55 ==================================================
      R2 * 5
      %% Takt 60 ==================================================
      R2
      r8 g b g
      c8 a d b
      es8 c fis d
      g8 f!16 g es f d es
      %% Takt 65 ==================================================
      c16 d b c a8 d
      g,4 r
      R2 * 3
      %% Takt 70 ==================================================
      R2 * 5
      %% Takt 75 ==================================================
      R2 * 5
      %% Takt 80 ==================================================
      R2 * 5
      %% Takt 85 ==================================================
      R2 * 5
      %% Takt 90 ==================================================
      R2
      R2
      r8 d' f d
      g8 e a f
      b8 g cis a
      %% Takt 95 ==================================================
      d8 c!16 d b c a b
      g16 a f g e8 a
      d,16 e c! d b c a b
      g8 g' a a,
      b8 b' a gis
      %% Takt 100 =================================================
      a4 a,
      d,4._\fermata
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
         tempoWholesPerMinute = #(ly:make-moment 72 4)
      }
   }
}y
