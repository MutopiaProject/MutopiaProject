\version "2.10.33"

\header {
 mutopiatitle = "Dies sind die heil'gen zehn Gebot'"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 678"
 mutopiainstrument = "Organ"
 source = "Edition Peters 8661"
 style = "Baroque"
 copyright = "Creative Commons Attribution-ShareAlike 3.0"
 maintainer = "Urs Metzger"
 maintainerEmail = "urs@ursmetzger.de"
 lastupdated = "2008/Mar/20"

 title = "Dies sind die heil'gen zehn Gebot'"
 subtitle = "a 2 Clav. e Pedale"
 composer = "Johann Sebastian Bach"
 opus="BWV 678"
 footer = "Mutopia-2008/03/23-1373"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "deutsch.ly"

global = {
   \key c \major
   \time 6/4
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
   #(revert-auto-beam-setting '(end * * * *) 1 4)
   #(revert-auto-beam-setting '(end * * * *) 2 4)
   #(revert-auto-beam-setting '(end * * * *) 3 4)
   #(revert-auto-beam-setting '(end * * * *) 4 4)
   #(revert-auto-beam-setting '(end * * * *) 5 4)
   #(override-auto-beam-setting '(end 1 16 * *) 1 4)
   #(override-auto-beam-setting '(end 1 16 * *) 2 4)
   #(override-auto-beam-setting '(end 1 16 * *) 3 4)
   #(override-auto-beam-setting '(end 1 16 * *) 4 4)
   #(override-auto-beam-setting '(end 1 16 * *) 5 4)
   #(override-auto-beam-setting '(end * * * *) 3 4)
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
halsneutral   = { \stemNeutral \tieNeutral \dotsUp }
mmrestdown    = { \once \override MultiMeasureRest #'extra-offset = #'( 0 . -1 ) }
mmrestdownn   = { \once \override MultiMeasureRest #'staff-position = #-2 }
mmrestdownnn  = { \once \override MultiMeasureRest #'staff-position = #-4 }
mmrestdownnnn = { \once \override MultiMeasureRest #'staff-position = #-6 }
mmrestup      = { \once \override MultiMeasureRest #'staff-position = #2 }
mmrestupp     = { \once \override MultiMeasureRest #'staff-position = #4 }
staffup       = { \change Staff = "right" \halsdown }
staffdown     = { \change Staff = "left" \halsup }

sopran = {
   \new Voice \relative h' {
      \global
      \halsup
      \once \override TextScript #'extra-offset = #'( -3.4 . 1 )
         h4^\markup { \normalsize \bold   "Canto fermo in Canone" } a g d'2.~
      d4 g, c~ c8 a h g h d
      e2. d~
      d8 h g h d g e2.
      %% Takt  5 ==================================================
      a16\rest d, e f e8( d) d( cis) f16\rest cis d e d8( c) c( h!)
      f'16\rest h, c d c8( b) b( a) a2.~
      a16 f g a g a g f f g f e e4 f8( e) e( d)
      d8 h g h d g e h'\rest h4\rest d\rest
      d8 h g h d g e4 f8( e) e( d)
      %% Takt 10 ==================================================
      d4 f\rest f\rest d16\rest f, g a g a g f f g f e
      e8 h'\rest h4\rest d\rest a'16\rest d, e f e8( d) d( cis)
      a'16\rest cis, d e d8( c) c( h) h2.~
      h16 gis a h a c e d c h a g f4 d'\rest f,~
      f8 d'\rest d4\rest d~ d16 c d e d8( c) c( h)
      %% Takt 15 ==================================================
      h4 d\rest d~ d16 c d e d f h a g f e d
      e2 es4 d2 des4
      c2.~ c16 a b c b c b a a b a g
      g2.~ g16 f g a g8( f) f( e)
      e8 d'\rest d4\rest d\rest a'16\rest d, e f e g c b a g fis e
      %% Takt 20 ==================================================
      fis8 f\rest f4\rest f\rest d16\rest a gis! fis! gis e h c d e fis gis
      a4 e8( f!) f( g!) g16 e' f g f8( e) e( d)
      d4 e fis g f\rest f\rest
      e'16\rest f,! g a g a g f f g f e e4 d c~
      c16 c h a h d f e d c h a g8 f'\rest f4\rest f\rest
      %% Takt 25 ==================================================
      d16\rest h c d c d c b b c b a b2.~
      b16 g a b a8( c) c( h) h4. d8 d( c)
      c16 d c b b c b a a b a g g4 d'\rest e~
      e16 e d c d f! h! a gis fis e d c d c h a e' d c h a h gis!
      a16 e d e f! e d e fis gis a h c8 h d c h a
      %% Takt 30 ==================================================
      f'!2.~ e~
      e8 a, h cis d cis d h cis! a cis e
      g!4. e8 cis a d16 cis! d8~ d16 e f g a g f e
      d16 c! h! a h d f e d c h a g a g f g h c d \once \override Beam #'positions = #'( 3.9 . 2.55 ) e g, f e
      fis8 f'\rest f4\rest a\rest f16\rest a, h c h8( a) a( gis!)
      %% Takt 35 ==================================================
      a2 d4\rest f16\rest b,16 c d c d c b b c b a
      a4 \once \override Tie #'staff-position = #-2 f2~ f4 e2
      f4 h\rest h\rest h2.\rest
      h16\rest f e d e d e f f e f g g4 h\rest h\rest
      h16\rest g f e f a d c! b a g f e2 \tieDown a4~
      %% Takt 40 ==================================================
      a8 f d f a d cis4 h\rest h\rest
      a16 g f e d e f g a h! c! a h8 h\rest h4\rest h\rest
      d16\rest g, a h c d e f g e d c h4 f'16\rest c d e f d c h
      c16 g' a b a8( g) g( fis) c'16\rest fis, g a g8( f) f( e)
      a16\rest e f g f8( es) es( d!) \tieUp d2.~
      %% Takt 45 ==================================================
      d16 b c d c d c b b c b a g2.~
      g16 c, d e f2~ f16 g f e f h! d c h a g f
      e4 f'4\rest a\rest f16\rest a, h c d8 h e4~
      e16 d c h c e a g! fis e d c h2 b4
      a2.~ a16 fis g a g8( f) f( e)
      %% Takt 50 ==================================================
      h'16\rest e, f g f8( es) es( d) d16 f e d e8( fis) fis( g)
      g4 h\rest d~ d16 d c b c8 a'\rest f4\rest
      d8 b f b d f~ f4~ f16 g, es' d c b a g
      f4 h'\rest h\rest a16\rest f g as g8( f) f( es!)
      \once \override Tie #'staff-position = #4 es2.~ es16 es f g f g f es es f es d
      %% Takt 55 ==================================================
      d4~ d8( es) es( f) a16\rest f es! d es8( f) f( g)
      c16\rest f, g as g as g f f g f es es2.~
      es16 d c b c b c d d c d es a,8 h\rest h4\rest h\rest
      a8 fis d fis a d h!4 c8 h c es
      f8 es f4. g8 es!2 a4\rest
      %% Takt 60 ==================================================
      c16\rest es, d c << \new Voice { \halsup d8([ fis) fis( g)] g2.^\fermata }
                          \new Voice { \halsdown \shiftOn s8 es![ es d] \stemUp d2. }
                       >>
    }
}

alt = {
   \new Voice \relative h {
      \global
      \halsdown
      c2.\rest h4 a g
      e'2. d~
      d4 g, c~ c8 a h g h d
      f4 d g~ g8 e c e g c
      %% Takt  5 ==================================================
      h2 b4 a2 as4
      g2.~ g16 e f g f g f e e f e d
      d2.~ d16 c d e d8( c) c( h)
      h8 d,\rest h4\rest f'\rest g'8 e c e g c
      h8 c,\rest a4\rest c4\rest g'16\rest c d e d8( c) c( h)
      %% Takt 10 ==================================================
      h16 e, f g f g f e e f e d d4 a\rest a\rest
      g'8 e c e g c h2 b8 a
      b4 e,\rest \once \override Tie #'staff-position = #-2 a~ a16 fis g a g8( f) f( e)
      e2.~ e16 c d e d f a g f e d c
      h16 f' g a g8( f) f( e) e4 f8( e) e( d)
      %% Takt 15 ==================================================
      d16 e d c d h g a h c d e f2 e4\rest
      g16\rest g a b a8( g) g( fis) g16\rest fis g a g8( f) f( e!)
      e16\rest e f g f8( es) es( d) d2.~
      d16 b c d c d c b b c b a a4 b8( a) a( g)
      g16 a' g f g e c d e f g a b8 g\rest g4\rest g\rest
      %% Takt 20 ==================================================
      g16\rest fis g a g h! d c h a gis fis e4 a,4\rest f\rest
      c'16\rest d c h c8( d) d( e) e e\rest e4\rest e\rest
      g16\rest c d e d8( c) c( h) h16 a h c h c h a a h a g
      g'8 g,\rest g4\rest g\rest g16\rest e f g f g f e e f e d
      d4 c\rest c\rest c16\rest a' g f g h d c h a g f
      %% Takt 25 ==================================================
      e2 f4~ f16 d e f e f e d d e d c
      c4. e8 e( d) d16 e d c d8(f) f( e)
      e4 g f~ f16 f e d e g c h! a g fis e
      fis8 a4  gis16 a h4~ h16 f e d e gis! h a gis fis! e d
      c8h d c h a e'2.~
      %% Takt 30 ==================================================
      e8 a, h cis d cis d h cis! a cis e
      f!2. e~
      e16 d cis h cis e g f e d cis h a b a g a cis! d e f e d e
      f4. d8 h! d g c,\rest a4\rest c8\rest \tieUp \once \override Stem #'length = #8 a'~
      a16 a gis fis! gis a h c d f, e d \tieDown e2.~
      %% Takt 35 ==================================================
      e16 f e d e8( f) f( g!) g2.~
      g16 g f e f e d c d c b a c16\rest b c d c d c b b c b a
      a16\rest a b c d e f e d c b! a g b a g a g a b b a b c
      c4 b a h16 d cis h cis e g f e d cis h
      cis4 a\rest a\rest a16\rest b'! a g a cis e d \once \override Beam #'positions = #'( -3 . -3 ) cis d h cis
      %% Takt 40 ==================================================
      d4 f,,\rest a\rest  e'8 cis a cis e g
      f8 a,\rest f4\rest a\rest d16 c! h a g a h c d e f d
      e4 e\rest e\rest e16\rest d e f g a h c d h a g
      e'2 es4 d2 des4
      \once \override Tie #'staff-position = #0 c2.~ c16 a b c b c b a a b a g
      %% Takt 45 ==================================================
      g4 e c~ c16 b c d c d c b b c b a
      a4 a8\rest a d c h!4 a\rest a\rest
      a16\rest b' a g a c f e d c h a gis2~ gis8 gis
      a4~ e\rest e\rest e16\rest dis e fis e8( d) d( cis)
      c16\rest cis d e d8( c) c( h!) h2.
      %% Takt 50 ==================================================
      b4 a2 as8 g g16 b! a g a8 b
      b8 d g, b d g es4~ es16 g c b! a! g f es!
      d4 c8\rest f b! d b16 c b a b4 e,\rest
      c16\rest es' d c d8( es) es( f) b,2.~
      b16 d c b c b c d d c d es! a,4 c2~
      %% Takt 55 ==================================================
      c16 c b a b8( c) c( d) g,16\rest d' c h c8( d) d( es!)
      d2.~ d16 h! c d c d c b b c b a!
      a2. c,16\rest d c b c b c d d c d es
      a,4 f\rest a\rest c8\rest g' e! g a c
      d8 c d4. h!8 g16 d' c h c8( d) d( es)
      %% Takt 60 ==================================================
      d4 \tempo 4 = 80 g,8\rest \once \override Beam #'positions = #'( -2.8 . -3.3 ) c \tempo 4 = 72 c \tempo 4 = 54 g g2.
    }
}

tenor = {
   \new Voice \relative g' {
      \global
      \halsup
      \override MultiMeasureRest #'staff-position = #4
      R1. * 4
      %% Takt 5 ===================================================
      R1.
      R1.
      R1.
      R1.
      g2.\rest g
      %% Takt 10 ==================================================
      g2. g
      g2. g
      g2 a4 h2.
      c2. g\rest
      R1.
      %% Takt 15 ==================================================
      R1.
      R1.
      R1.
      R1.
      g2.\rest c
      %% Takt 20 ==================================================
      d2. d
      c2. g
      g2 a4 h2.
      c2. g\rest
      R1.
      %% Takt 25 ==================================================
      R1. * 5
      %% Takt 30 ==================================================
      R1.
      R1.
      R1.
      g2.\rest c
      d2. d
      %% Takt 35 ==================================================
      c2. g
      a2. g
      f2. g\rest
      R1.
      R1.
      %% Takt 40 ==================================================
      R1. * 5
      %% Takt 45 ==================================================
      R1.
      g2.\rest g
      a2. h
      c2. g\rest
      R1.
      %% Takt 50 ==================================================
      R1.
      R1.
      b2. g2 a4
      b2.~ b2 g4\rest
      g2.\rest a~
      %% Takt 55 ==================================================
      a2. g~
      g2. g~
      g2.~ g2 g4
      fis2 f4 e!2 es4
      d2.~ d4 c8 h! c4~
      %% Takt 60 ==================================================
      c4 h a h2.^\fermata
    }
}

bass = {
   \new Voice \relative g {
      \global
      \halsdown
      \override MultiMeasureRest #'staff-position = #-2
      R1. * 4
      %% Takt 5 ===================================================
      R1.
      R1.
      f2.\rest g
      g2. g
      g2. g
      %% Takt 10 ==================================================
      g2 a4 h2.
      c2. f,2.\rest
      R1.
      R1.
      R1.
      %% Takt 15 ==================================================
      R1. * 5
      %% Takt 20 ==================================================
      R1.
      a2.\rest c
      d2. d
      c2. g
      g2 a4 h2.
      %% Takt 25 ==================================================
      c2. f,\rest
      R1.
      R1.
      R1.
      R1.
      %% Takt 30 ==================================================
      R1. * 5
      %% Takt 35 ==================================================
      R1.
      f2.\rest c'
      d2. d
      c2. g
      a2. g
      %% Takt 40 ==================================================
      f2. f\rest
      R1.
      R1.
      R1.
      R1.
      %% Takt 45 ==================================================
      f2.\rest g
      a2. h
      c2. a\rest
      R1.
      R1.
      %% Takt 50 ==================================================
      R1.
      b2. g2 a4
      b2.~ b2 r4
      R1.
      R1.
      %% Takt 55 ==================================================
      R1.
      R1.
      a2.\rest a~
      a2. g~
      g2. g
      %% Takt 60 ==================================================
      g2.~g
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
   \clef "alto"
   <<
      \tenor
      \bass
   >>
}

pedal = {
   \global
   \clef "bass"
   \relative g, {
      g1.~
      g1.~
      g1.~
      g4 h g c e c
      %% Takt 5 ===================================================
      g'4 g, g'~ g f8 e f4~
      f4 e d cis d c
      h4 g h c h c
      g4 h g c e c
      g'4 h g c h c
      %% Takt 10 ==================================================
      g4 g, r g h g
      c4 e c g' g, f
      e4 e' fis g g, gis
      a4 c e a f! d
      g4 h, g c h c
      %% Takt 15 ==================================================
      g4 h d g a h
      c4 c, c'~ c b8 a b4~
      b4 a g fis g f
      e4 c e f e f
      c4 e, g c, g' c~
      %% Takt 20 ==================================================
      c4 h a gis e r
      a4 g! f e c c''~
      c4 h a g g, f!
      e4 e' d c h c
      g4 g' f~ f e d
      %% Takt 25 ==================================================
      a' a, d g, c e
      f4 f, fis g g' gis
      a e f! c c'8 h c4~
      c4 h e, a c,8 d e4
      \once \override Tie #'staff-position = #-4 a,1.~
      %% Takt 30 ==================================================
      \once \override Tie #'staff-position = #-4 a1.~
      \once \override Tie #'staff-position = #-4 a1.~
      a4 a' g f e d~
      d4 g f e d c~
      c4 h a gis gis' e
      %% Takt 35 ==================================================
      a4 c, a e' c e
      f4 a f c' c, c'~
      c4 b8 a b4 e, f g
      a4 c, f~ f e8 d e4~
      e4 a, d~ d cis a
      %% Takt 40 ==================================================
      d4 f d a cis a
      d, f d g h g
      c!4 e c g' h g
      c4 c, c'~ c b8 a b4~
      b4 a g fis g f
      %% Takt 45 ==================================================
      e4 c f~ f e8 d e4~
      e4 d16 e c d h! c a h g4 d' g~
      g4 f8 e f4~ f e16 f d e c d h c
      a4 e' a~ a g8 fis g4~
      g4 fis e dis e d
      %% Takt 50 ==================================================
      cis4 d c h! c d,
      g4 b g c es c
      b4 d b es g es
      d f d g b g
      c,4 es c f a f
      %% Takt 55 ==================================================
      b,4 d b es es, r
      h'!4 g h c c, r
      c'4 a c d d, r
      r4 d'8 c d4~ d g, c~
      c4 h!8 a h g c4 es c
      %% Takt 60 ==================================================
      g'2. g,_\fermata
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
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \right
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose g' g''' \right
         }

         \new Staff {
            \set Staff.midiInstrument = "oboe"
            \left
         }
         \new Staff {
            \set Staff.midiInstrument = "recorder"
            \transpose g g' \left
         }

         \new Staff {
            \set Staff.midiInstrument = "pan flute"
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
         tempoWholesPerMinute = #(ly:make-moment 88 4)
      }
   }
}
