\version "2.10.33"

\header {
 mutopiatitle = "Nun komm, der Heiden Heiland"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 659"
 mutopiainstrument = "Organ"
 source = "Edition Peters 8662"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2007/Dec/23"

 title = "Nun komm, der Heiden Heiland"
 subtitle = "a 2 Clav. e Pedale"
 composer = "Johann Sebastian Bach"
 opus="BWV 659"
 footer = "Mutopia-2008/02/19-1189"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key g \minor
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

halsup        = { \stemUp \tieUp \slurUp \dotsUp }
halsdown      = { \stemDown \tieDown \slurDown \dotsDown }

sopran = {
   \new Voice \relative g' {
      \global
      #(revert-auto-beam-setting '(end 1 32 4 4) 1 8)
      #(revert-auto-beam-setting '(end 1 32 4 4) 3 8)
      #(revert-auto-beam-setting '(end 1 32 4 4) 5 8)
      #(revert-auto-beam-setting '(end 1 32 4 4) 7 8)
      R1
      R1
      R1
      r4 g g fis8 g16 a
      %% Takt  5 ==================================================
      b4~ b16 g \appoggiatura a16 g32 fis g16 c4~ c16 a \appoggiatura b16 a32 g a16 \break
      d4~ d16 g,32 a b c d16 es8. d16 c b32 a a16 b32 c
      \appoggiatura g16 fis8 e16  d g4~ g32 a g fis g16 c32 a g8( fis!16.)\prall g32
      g2 r
      R1                                                                            \break
      %% Takt 10 ==================================================
      R1
      g8 b16 a b4\mordent c~ c16 b a b
      c16 d es8~ es16 c b c d es f8~ f16 d c d
      es16 f g8~ g16 c, d es \appoggiatura b16 a8 g16 f f'4~                        \break
      f16 g32 f es f d16 es4~ es16 a32 b c16 es, d4~
      %% Takt 15 ==================================================
      d16 g, g32\prall f g16 c32 b a16 b32 a g16 f16 g32 a b c d es f4~
      f16 g32 f es d c b d8( c16.)\prall b32 b2
      R1
      R1
      b8 c32 b a b c8 d32 c b c d16 b a b \appoggiatura b16 f'8. es32 d
      %% Takt 20 ==================================================
      c16 d32 c h16 c d es32 d c16 d es c h! c \appoggiatura c16 g'8. f32 es
      d16 g32 a b!16 f es( d) d( c) c fis32 g a16 es d( c) c( b)
      b16 g'16. \set stemLeftBeamCount = #2 \set stemRightBeamCount = #3 f!32 \set stemLeftBeamCount = #3 es d c d c h c8~ c16 es32 d c d es16~ es32 c as g as8~
      as16 es'32 d es c h c c as g as as g fis g fis16 a32 c es16 d d4~
      d32 g fis e d16. c32 b8( a32\prall g) a16 g2
      %% Takt 25 ==================================================
      R1
      R1
      R1
      r4 g \once \override TextScript #'extra-offset = #'(0 . -0.8) g^\markup { \hspace #0.3 \musicglyph #"scripts.mordent" \hspace #1 \musicglyph #"scripts.turn" } fis8 g16 a
      b4~ b16 g g32\prall fis g16 c4~ c16 a a32\prall g a16
      %% Takt 30 ==================================================
      d4~ d16 g,32 a b c d16 es8. d16 c b32 a a16 b32 c
      \appoggiatura g16 fis8 e16 d g4~ g32 a g fis! g c a16 g8( fis!16.\prall) g32
      g16 g' f!8~ f16 es!32 d g f es d f es d c b'!8~ b32 a b c b a g a
      g32 fis g a c,8~ c32 es d c d c b a b16 g'32 es cis d g,16 b8( a32\prall g) a16
      g1\fermata
      \bar "|."
   }
}

alt = {
   \new Voice \relative d' {
      \global
      \halsup
      e2\rest e4\rest d
      d4 c f4. es16 d
      es2 d~
      d4 c d2~
      %% Takt  5 ==================================================
      d4 e8\rest b~ b a16 g a4
      g'4\rest g8\rest g~ g fis g es
      d4 e8\rest b es!4 d8 c~
      c8 b16 c d8 c16 b a4. b16 c
      d8 es f g c,4. d16 es
      %% Takt 10 ==================================================
      f4. g16 f es2
      d4~ d8 es16 f g f es d c8 g'\rest
      g8\rest g f4~ f b8\rest b
      b4 g8\rest g f4 g8\rest as
      g4 g8\rest g f4 g8\rest f
      %% Takt 15 ==================================================
      g8 g\rest g g\rest c, g'\rest g\rest es
      d8 g f16 d es8~ es d16 es f8 es16 d
      c4. d16 es f2~
      f8 es16 d es8 c' fis, g a4~
      a8 g f!4~ f8 es d g
      %% Takt 20 ==================================================
      a8 h\rest h\rest h c c\rest h\rest a
      b!4 d8\rest b a4 h8\rest a
      g4 h16\rest f g f g8 g\rest g16\rest d es d
      es8 g\rest g\rest es d fis g a
      d,8 g g\rest d~ d c16 h c( d) d( es!)
      %% Takt 25 ==================================================
      es2~ es8 d16 c d( es) es( f!)
      f2~ f16 es g( f) f( es) es( d)
      d16 as' as( g) g( f) f( es) es8. f16 d8.\prall g16
      es f f( es) es( d) d( c) c( b!) b( a) a8 b16 c
      fis,4 e'8\rest b~ b a16 g a4
      %% Takt 30 ==================================================
      g'4\rest g8\rest g~ g fis g es
      d4 e8\rest b es!4 d8 c
      h8 c d h c[ d] c[ d16 b]
      a8[ g] fis[ a16 es'] d4~ d8. c16~
      c16 h f'! d es4 d2\fermata
   }
}

altzwei = {
   \new Voice \relative h {
      \global
      s1*33
      s16 \stemDown \tieDown \once \override Staff.NoteCollision #'merge-differently-dotted = ##t h8.~ \stemUp \shiftOn h16 h c8 h!2
   }
}

tenor = {
   \new Voice \relative g {
      \global
      \halsdown
      f4\rest g g f
      b4. a16 g a4 g~
      g4 c2 b8 a
      g8 fis g a b a16 g a4~
      %% Takt  5 ==================================================
      a8 g16 fis g4 d\rest d8\rest c'~
      c8 b16 a b8 d~ d16 c8 b16 a g c8
      a4 f8\rest g~ g c a4
      g2~ g4 f!~
      f4 b2 a4~
      %% Takt 10 ==================================================
      a8 h16 c d4~ d8 c16 h! c4~
      c8 b!16 c d4 f,8\rest g a a\rest
      a8\rest b c a b d16 c d8 f
      b,8 es16 d c4~ c8 b16 a b c d8~
      d8 c16 h c4~ c8 b!16 a! b4~
      %% Takt 15 ==================================================
      b8 a\rest es' a,\rest a a\rest a\rest a
      b4. a8 f4 b~
      b4 a~ a8 h16 c d c h a
      g4~ g8 a16 b! c d es4 d16 c
      b8 es4 d16 c b4. b8
      %% Takt 20 ==================================================
      f'8 c\rest c\rest f g f es4
      r8 d g f es d c\rest d
      d4 a16\rest d es d c8 f,\rest f16\rest h c h
      c8 a\rest a\rest c16 b! a!8 c d16( c) c( b)
      b8 g~ g fis g2~
      %% Takt 25 ==================================================
      g8 g16 fis g( a) a( b!) b2~
      b8 a16 g a( h) h( c) c2~
      c2~ c8. d16 h8._\prallprall a!32 h
      c8 f,\rest f4\rest f2\rest
      h,8\rest d g4 d\rest d8\rest c'~
      %% Takt 30 ==================================================
      c8 b16 a b8 d~ d16 c8 b16 a g c b
      a4 f8\rest g~ g c a4
      g8 a h! g~ g[ f] es[ d16 es]
      c8 es d fis! g4~ g8 fis
      \once\override Tie #'control-points = #'( ( 0.5 . -2.5 )
                                                ( 2.5 . -4.5 )
                                                ( 12.5 . -4.5 )
                                                ( 14.5 . -2.5 ) ) g4~ g8. fis16 g2
   }
}

right = {
   \clef "treble"
      \sopran
}

left = {
   <<
      \clef "alto"
      \alt
      \altzwei
      \tenor
   >>
}

pedal = {
   \global
   \clef "bass"
   \relative g, {
      g8 a b c d es d c
      b d f es d c h g
      c b! a g fis d g f
      es d es4 d2~
      %% Takt  5 ==================================================
      d8 d' es d e c f! e
      fis d g g, c d es! c
      d c b es! c a d d,
      g a b c d es d c
      b c d es f g f es
      %% Takt 10 ==================================================
      d c h g c d es c
      g' g, g' f es c f g
      a g a f b b, b' as
      g f es4~ es8 es, d c'
      h g c b a! f b d
      %% Takt 15 ==================================================
      es  d es d es d es c
      d es f f, b c d es
      f g f es d c h g
      c d c b! a g fis d
      g g' a f! b, c d es
      %% Takt 20 ==================================================
      f f, es d c d es c
      g' g' r g g fis r fis
      g f! es4~ es8 d c4~
      c8 c, c'4~ c8 a b fis
      g8 b c d es f! es d
      %% Takt 25 ==================================================
      c c, r c' g g' f! es
      d d, d' g, c es as, c
      f, f' es as g f g g,
      c d c b! a! d, d'4~
      d8 b es d e c f! e
      %% Takt 30 ==================================================
      fis d g g, c d es! c
      d c b es c a d d,
      g1~
      g2~ g8 b d d,
      g1_\fermata
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

altmidi = {
   \new Voice \relative d' {
      \global
      \halsup
      e2\rest e4\rest d
      d4 c f4. es16 d
      es2 d~
      d4 c d2~
      %% Takt  5 ==================================================
      d4 e8\rest b~ b a16 g a4
      g'4\rest g8\rest g~ g fis g es
      d4 e8\rest b es!4 d8 c~
      c8 b16 c d8 c16 b a4. b16 c
      d8 es f g c,4. d16 es
      %% Takt 10 ==================================================
      f4. g16 f es2
      d4~ d8 es16 f g f es d c8 g'\rest
      g8\rest g f4~ f b8\rest b
      b4 g8\rest g f4 g8\rest as
      g4 g8\rest g f4 g8\rest f
      %% Takt 15 ==================================================
      g8 g\rest g g\rest c, g'\rest g\rest es
      d8 g f16 d es8~ es d16 es f8 es16 d
      c4. d16 es f2~
      f8 es16 d es8 c' fis, g a4~
      a8 g f!4~ f8 es d g
      %% Takt 20 ==================================================
      a8 h\rest h\rest h c c\rest h\rest a
      b!4 d8\rest b a4 h8\rest a
      g4 h16\rest f g f g8 g\rest g16\rest d es d
      es8 g\rest g\rest es d fis g a
      d,8 g g\rest d~ d c16 h c( d) d( es!)
      %% Takt 25 ==================================================
      es2~ es8 d16 c d( es) es( f!)
      f2~ f16 es g( f) f( es) es( d)
      d16 as' as( g) g( f) f( es) es8. f16 es32 d64 es d es d16. g16 |
      es f f( es) es( d) d( c) c( b!) b( a) a8 b16 c
      fis,4 e'8\rest b~ b a16 g a4
      %% Takt 30 ==================================================
      g'4\rest g8\rest g~ g fis g es
      d4 e8\rest b es!4 d8 c
      h8 c d h c[ d] c[ d16 b]
      a8[ g] fis[ a16 es'] d4~ d8. c16~
      c16 h f'! d es4 d2\fermata
   }
}

tenormidi = {
   \new Voice \relative g {
      \global
      f4\rest g g f
      b4. a16 g a4 g~
      g4 c2 b8 a
      g8 fis g a b a16 g a4~
      %% Takt  5 ==================================================
      a8 g16 fis g4 d\rest d8\rest c'~
      c8 b16 a b8 d~ d16 c8 b16 a g c8
      a4 f8\rest g~ g c a4
      g2~ g4 f!~
      f4 b2 a4~
      %% Takt 10 ==================================================
      a8 h16 c d4~ d8 c16 h! c4~
      c8 b!16 c d4 f,8\rest g a a\rest
      a8\rest b c a b d16 c d8 f
      b,8 es16 d c4~ c8 b16 a b c d8~
      d8 c16 h c4~ c8 b!16 a! b4~
      %% Takt 15 ==================================================
      b8 a\rest es' a,\rest a a\rest a\rest a
      b4. a8 f4 b~
      b4 a~ a8 h16 c d c h a
      g4~ g8 a16 b! c d es4 d16 c
      b8 es4 d16 c b4. b8
      %% Takt 20 ==================================================
      f'8 c\rest c\rest f g f es4
      r8 d g f es d c\rest d
      d4 a16\rest d es d c8 f,\rest f16\rest h c h
      c8 a\rest a\rest c16 b! a!8 c d16( c) c( b)
      b8 g~ g fis g2~
      %% Takt 25 ==================================================
      g8 g16 fis g( a) a( b!) b2~
      b8 a16 g a( h) h( c) c2~
      c2~ c8. d16 c32. h64 \times 2/3 { c64 h c h c h~ } h16 a!32 h |
      c8 f,\rest f4\rest f2\rest
      h,8\rest d g4 d\rest d8\rest c'~
      %% Takt 30 ==================================================
      c8 b16 a b8 d~ d16 c8 b16 a g c b
      a4 f8\rest g~ g c a4
      g8 a h! g~ g[ f] es[ d16 es]
      c8 es d fis! g4~ g8 fis
      g4~ g8. fis16 g2
   }
}

sopranmidi = {
   \new Voice \relative g' {
      \global
      #(revert-auto-beam-setting '(end 1 32 4 4) 1 8)
      #(revert-auto-beam-setting '(end 1 32 4 4) 3 8)
      #(revert-auto-beam-setting '(end 1 32 4 4) 5 8)
      #(revert-auto-beam-setting '(end 1 32 4 4) 7 8)
      R1
      R1
      R1
      r4 g g fis8 g16 a
      %% Takt  5 ==================================================
      b4~ b16 g \appoggiatura a16 g32 fis g16 c4~ c16 a \appoggiatura b16 a32 g a16
      d4~ d16 g,32 a b c d16 es8. d16 c b32 a a16 b32 c
      g16 fis e d g4~ g32 a g fis g16 c32 a g8~ g64 fis g fis32. g32
      g2 r
      R1
      %% Takt 10 ==================================================
      R1
      g8 b16 a \times 2/3 { b32 a b~ } b8. c4~ c16 b a b
      c16 d es8~ es16 c b c d es f8~ f16 d c d
      es16 f g8~ g16 c, d es b a g f f'4~
      f16 g32 f es f d16 es4~ es16 a32 b c16 es, es d8.~
      %% Takt 15 ==================================================
      d16 g, a128 g a g f32 g16 c32 b a16 b32 a g16 f16 g32 a b c d es f4~
      f16 g32 f es d c b d8 \times 2/3 { d64 c d } c16 b32 b2
      R1
      R1
      b8 c32 b a b c8 d32 c b c d16 b a b b16 f'8 es32 d
      %% Takt 20 ==================================================
      c16 d32 c h16 c d es32 d c16 d es c h! c c16 g'8 f32 es
      d16 g32 a b!16 f es( d) d( c) c fis32 g a16 es d( c) c( b)
      b16 g'16. f!32 es d c d c h c8~ c16 es32 d c d es16~ es32 c as g as8~
      as16 es'32 d es c h c c as g as as g fis g fis16 a32 c es16 d d4~
      d32 g fis e d16. c32 b8~ b128 a b a g32 a16 g2
      %% Takt 25 ==================================================
      R1
      R1
      R1
      r4 g g64 fis g16.~ g32 \times 3/5 { a32 g fis g a } g16 fis64 g fis32 g16 a |
      a16 b64 a b32~ b8~ b16 g a128 g a g fis32 g16 c64 b c8..~ c16 a b128 a b a g32 a16 |
      %% Takt 30 ==================================================
      c16 \times 2/3 { d32 c d~ } d8~ d16 g,32 a b c d16 d16 es8 d16 c b32 a a16 b32 c
      g16 fis e d \times 2/3 { g32 fis g~ } g8.~ g32 a g fis! g c a16 g8 \times 4/5 { fis64 g fis g fis~ } \tempo 4 = 24 fis32 g32
      \tempo 4 = 33 g16 g' f!8~ f16 es!32 d g f es d f es d c b'!8~ b32 a b c b a g a
      g32 fis g a a16~ a64 c,32.~ c32 es d c d c b \tempo 4 = 24 a \tempo 4 = 28
         b16 g'32 \tempo 4 = 32 es cis d g,16 \tempo 4 = 30 \times 2/3 { g32 a b~ } b16 b128 a b a g32 \tempo 4 = 28 a16
      <<
         \new Voice { g1 }
         \new Voice { \tempo 4 = 24 s16 \tempo 4 = 28 s4. \tempo 4 = 20 s }
      >>
   }
}

\score {
   \unfoldRepeats {
      <<
         \new Staff {
            \set Staff.midiInstrument = "oboe"
            \sopranmidi
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose g' g''' \sopranmidi
         }
         \new Staff {
            \set Staff.midiInstrument = "pan flute"
            <<
            \altmidi
            \altzwei
            \tenormidi
            >>
         }
         \new Staff {
            \set Staff.midiInstrument = "pan flute"
            \pedal
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose c c, \pedal
         }
      >>
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 34 4)
      }
   }
}

% 09.02.2008: added missing tie h8.~ h16 in the last bar, altzwei
