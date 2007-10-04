\version "2.10.33"
\include "deutsch.ly"

\header {
   mutopiatitle = "Praeludium und Fuge G-Dur"
   mutopiacomposer = "Mendelssohn-BartholdyF"
   mutopiaopus = "Op. 37"
   mutopiainstrument = "Organ"
   source = "C. F. Peters, ca. 1880"
   style = "Romantic"
   maintainer = "Urs Metzger"
   copyright = "Public Domain"
 footer = "Mutopia-2007/10/04-1043"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

global = {
   \key g \major
   \time 6/8
   #(set-accidental-style 'default)
   \override Staff.NoteCollision #'merge-differently-dotted = ##t
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

\paper {
   %annotate-spacing = ##t
   top-margin = 0.8 \cm
   bottom-margin = 0.8 \cm
   page-top-space = 0 \cm
   before-title-space = 0 \cm
   after-title-space = 0 \cm
   head-separation = 0 \cm
   foot-separation = 0.8 \cm
   ragged-bottom = ##f
   ragged-last-bottom = ##f
   printallheaders=##t
}

diffdot      = { \override Staff.NoteCollision #'merge-differently-dotted = ##t }
forceshift   = { \once \override NoteColumn #'force-hshift = #1 }
forceshiftt  = { \once \override NoteColumn #'force-hshift = #2 }
halsdown     = { \stemDown \tieDown \slurDown }
halsneutral  = { \stemNeutral \tieNeutral \slurNeutral }
halsup       = { \stemUp \tieUp \slurUp}
neutral      = { \stemNeutral \tieNeutral \slurNeutral \dotsNeutral }
nodiffdot    = { \override Staff.NoteCollision #'merge-differently-dotted = ##f }
shifttiedown = { \once \override Tie #'extra-offset = #'( 0 . -0.5 ) }
shifttieup   = { \once \override Tie #'extra-offset = #'( 0 . 0.5 ) }
staffdown    = { \change Staff = "left"  }
staffdownh   = { \change Staff = "left"  \halsup }
staffup      = { \change Staff = "right" }
staffuph     = { \change Staff = "right" \halsdown }

rechtsa = {
   \new Voice \relative g' {
      \global
      \stemUp \slurUp
      \once \override TextScript #'extra-offset = #'( -4 . 5 )
      s4.^\markup { \large \bold "Andante con moto" } g8( h c
      d4 g8 fis4 e8)
      s2.
      s2.
      %% Takt  5 ==================================================
      \tieUp a,2.~
      a4.~ a8h cis
      d4.~ d4 c!8~
      c8 a g fis g a
      g8 h d \stemNeutral <g~ h,~>4. \break
      %% Takt 10 ==================================================
      <g h,>8 <e ais,> <d h> cis <d h> <e ais,>
      \stemUp d4 r8 \stemNeutral <e g, e>4.~
      <e g,>8 <c! fis,> <h g> a <h g> <c fis,>
      <h g>8 d, g \stemUp h4.~
      h8 g fis e fis d
      %% Takt 15 ==================================================
      s4. \stemUp \slurUp a''8( fis d)
      h4.( cis8 d e)
      \nodiffdot a,4. a'8( fis d)
      h4.( cis8 d e)
      s4. \tieUp a4.~
      %% Takt 20 ==================================================
      a8 gis a h gis e
      <d a>4 cis8 d h g
      <fis d>4. <g cis,>8 e cis
      a'4 r8 d,( fis g
      a4 d8 cis4 h8
      %% Takt 25 ==================================================
      a4 fis8 d4 e8)
      fis8( g a~ a g e
      d4) \neutral d'8( a4 b8
      fis4 g8 a4 b8
      c4 d8 es4.)~
      %% Takt 30 ==================================================
      es8( d es f c es
      \stemUp \tieUp d4.)~ d4 es8
      b4.~ b4 b8
      d4.~ d4 es8
      \slurUp f8( g f <es c> d c
      %% Takt 35 ==================================================
      h4) \neutral g'8( <d h>4 <es c>8
      <h g>4 <c a!>8 <d h>4 <es c>8
      <f d>4) \breathe g,8 <g' es> <f d> <es! c>~
      <es c>8 <f d> <es c> <d as> <c g> <h f>
      \stemUp \tieUp c4.~ c8 es h!
      %% Takt 40 ==================================================
      c4.~ c8 f es
      d4.~ d8 g f
      es8 as <g c,>~ <g d> f <es c>~
      <es c> <d h!> <es c>~ <es c> <d h> c~
      c8 h c~ <c g> b <as! f>
      %% Takt 45 ==================================================
      s2.
      s2.
      s2.
      s2.
      a'2.~
      %% Takt 50 ==================================================
      a8 d, g fis! a g
      d4 es8 a, c b
      a8 d c b es d
      cis2.
      d4 a'8\rest g4.~
      %% Takt 55 ==================================================
      g8 fis! g a e! g
      fis4. \breathe \stemUp \slurUp \diffdot g,8( h! c
      d4 g8 fis4 e8)
      s2.
      s2.
      %% Takt 60 ==================================================
      a,2.~
      a8 fis g a4 <h g>8
      <c a>4.~ <c a>4 h8~
      h8 a g fis g a
      g8 h d \stemDown \tieNeutral <g h,>4.~
      %% Takt 65 ==================================================
      <g h,>8 <e ais,> <d h> cis <d h> <e ais,>
      \stemUp d4 f8\rest <e g,>4.~
      <e g,>8 <c! fis,> <h g> a <h g> <c fis,>
      h4 r8 <h f d>4.~
      h8 c h a fis! g
      %% Takt 70 ==================================================
      fis4 r8 \stemDown d'( h g)
      \stemUp e4.( fis8 g a)
      d,4 d'8\rest d( h g)
      e4.( fis8 g a)
      d,4. \stemUp \tieUp d'4.~
      %% Takt 75 ==================================================
      d8 cis d e cis \tieDown a~
      \stemUp <a c! d fis>4. \stemNeutral <g' h,>8 e c
      <h g>4. <c fis,>8 a fis
      <d' g,>4 \breathe \neutral g8( d4 e8
      h4 c8 d4 e8)
      %% Takt 80 ==================================================
      \stemUp \tieUp <f d>4. e~
      e8 fis! g a, c h
      g4 r8 \slurUp g( h c
      s4. \stemDown <fis c a>4~ <e c fis,>8)
      \stemUp d4.~ d4 c8
      %% Takt 85 ==================================================
      h8 a g fis g a
      g8( h c d e fis
      g h a g4.)~
      g2.^\fermata
   }
}

rechtsb = {
   \new Voice \relative g' {
      \global
      \stemDown \slurDown \tieDown \dotsDown
      \once \override TextScript #'extra-offset = #'( 0 . -1.3 )
      r4_\markup { \italic "mezzo piano" } r8 g4.~
      g4. a4 fis8
      \stemUp <g d'>4( h8 g4 <fis a>8)
      <g h>8( <a c> \tieNeutral <h d>~ <h d> <a c> \tieDown <g h>)~
      %% Takt  5 ==================================================
      \stemDown g8 fis e fis4.~
      fis4. e4 g8
      fis4 d8 g fis e
      d4. c
      h4 h8\rest \dotsUp g'4.
      %% Takt 10 ==================================================
      s2.
      h8 fis h s4.
      s2.
      s4. \stemUp \tieDown <d, h>~
      \stemDown <d h>4 h8\rest s4.
      %% Takt 15 ==================================================
      s2.
      s2.
      s2.
      s2.
      \stemUp \tieUp a'4.~ a8 \stemDown f' d
      %% Takt 20 ==================================================
      \stemUp \shiftOn h2.
      s2.
      s2.
      s2.
      \stemDown \tieDown \dotsDown h,8\rest h\rest d e4.~
      %% Takt 25 ==================================================
      e4 d8 h4.
      d8 e fis cis4.
      s2.
      s2.
      s2.
      %% Takt 30 ==================================================
      s2.
      g'8\rest g\rest b( f4 g8
      d4 es8 f4 g8
      as4 b8 h4.)~
      h4. fis!4.
      %% Takt 35 ==================================================
      g4 s2
      s2.
      s2.
      s2.
      \dotsDown es8 as e f4.~
      %% Takt 40 ==================================================
      f8 a! e! f!4 fis8
      g8 b fis! g4.~
      g4 g8~ g4.~
      g4. f4 es8
      g4 <as f>8 c,4.~
      %% Takt 45 ==================================================
      \stemUp <g' es c>8 <f d> <es! c> <f h,> <es c> <d h>
      c4 \breathe \neutral es'8( a,!4 b8
      fis!4 g8 a4 \stemUp b8
      c4 d8 <es c>4.)~
      \stemDown <es c>8 d c d a c
      %% Takt 50 ==================================================
      \dotsDown \tieDown \diffdot b2.
      d8 g,4~g4.
      a4. b~
      b4. a~
      a8 b c! b4.
      %% Takt 55 ==================================================
      a2.~
      a4. g4.~
      g4. d8 e fis
      \stemUp <g d'>4( h8 g4 <fis a>8)
      <g h>8( <a c> \tieNeutral <h d>~ <h d> <a c> \tieDown <g h>)~
      %% Takt 60 ==================================================
      \stemDown g8 fis e fis4.~
      fis8 d e fis e d
      c8 e d g fis g
      e4. d4 c8
      h4 h8\rest \shiftOff \dotsUp g'4.
      %% Takt 65 ==================================================
      s2.
      h8 fis h \stemUp e,4.
      s2.
      \stemDown g8 d g s4.
      \dotsDown e2.
      %% Takt 70 ==================================================
      d4 s2
      s4. c4.~
      c8 h c d4 s8
      s2.
      s4. d'8 b g
      %% Takt 75 ==================================================
      e2.
      s2.
      s2.
      s2.
      s2.
      %% Takt 80 ==================================================
      g2.~
      g4. fis
      s4. << \new Voice { \tieDown \stemDown
                          s8 h4~
                          <h d>4~ <h d g>8 }
             \new Voice { \tieDown \dotsDown \stemDown
                          g4.~
                          g4 s8 }
          >> s4.
      <h g>4. <a~ fis>4 <a e>8
      %% Takt 85 ==================================================
      d,4 r8 \staffdown \stemUp d \staffup \stemDown e fis
      g2.~
      g2.~
      g2.
   }
}

linksa = {
   \global
   \clef "bass"
   \relative h {
      \once \override TextScript #'extra-offset = #'( 0 . -0.3 )
      <h d>2.~_\markup { \italic "mezzo piano" }
      <h d>4. <a c>
      \stemDown \tieUp d4.~ \stemUp d4.~  d4. e4.
      %% Takt  5 ==================================================
      r4 r8 \stemUp d,8 fis g
      a4 d8 cis4 h8
      s2.
      s2.
      s2.
      %% Takt 10 ==================================================
      s2.
      s2.
      s2.
      s2.
      s4. \stemDown h4.
      %% Takt 15 ==================================================
      a4. s4.
      s4. \change Staff = "right" \tieDown \dotsDown \nodiffdot g'4.~
      g8 fis g s4.
      s4. g4.~
      g8 f e \shifttiedown f4.~
      %% Takt 20 ==================================================
      f!8 e d gis4.
      g!4. fis!4 g8
      s2.
      \staffdown \stemUp a,8 h cis d4.
      s2.
      %% Takt 25 ==================================================
      s2.*5
      %% Takt 30 ==================================================
      s2.*5
      %% Takt 35 ==================================================
      s2.*5
      %% Takt 40 ==================================================
      s2.*5
      %% Takt 45 ==================================================
      s2.
      s2.
      s2.
      \stemUp \dotsUp es2.
      s4. \tieUp d4.~
      %% Takt 50 ==================================================
      <d g,>4 \breathe \neutral g8 d4 es8
      b4 c8 d4 e!8
      f4 fis8 g4.~
      g8 fis g a e! g
      fis4 \breathe d8~ d es d
      %% Takt 55 ==================================================
      cis2.
      s8 \stemUp \tieUp d4~ d4.~
      d4. c
      d2.~
      d4. s4.
      %% Takt 60 ==================================================
      s2.*5
      %% Takt 65 ==================================================
      s2.
      s2.
      s2.
      s4. <g, g,>4.~
      g4. a
      %% Takt 70 ==================================================
      s2.
      s2.
      s2.
      s4. \staffup \stemDown \tieDown \dotsDown c~
      c8 \staffdown \stemUp \tieUp \dotsUp b a b4.~
      %% Takt 75 ==================================================
      b8 s4 \staffup \stemDown \dotsDown g'4.
      s2.
      s2.
      s4. \staffdown \stemUp \dotsUp g4.
      f4 e8 d4 c8
      %% Takt 80 ==================================================
      s2.
      s4. d~
      d4.~ d~
      d4 s2
      s2.
      %% Takt 85 ==================================================
      s4. \tieUp d4.~
      d2.~
      d2.~
      d2.^\fermata
      %% Takt 90 ==================================================
      %% Takt 95 ==================================================
      %% Takt 100 =================================================
   }
}

linksb = {
   \global
   \clef "bass"
   \relative h {
      s2.
      s2.
      \stemDown \tieDown h4.~ h4 a8
      g4. r4 r8
      %% Takt  5 ==================================================
      s4. \slurDown \dotsDown d4( e8
      fis4. g4 e8)
      \slurUp a4( fis8 d4 e8)
      fis8( c' h a g fis)
      g4 r8 \stemNeutral \tieNeutral \dotsUp <e' cis>4.~
      %% Takt 10 ==================================================
      <e cis>8 cis h ais fis' cis
      d4 r8 <c! a!>4.~
      <c a>8 a g fis d' a
      h4 r8 <g e>4.~
      <g e>4 r8 s4.
      %% Takt 15 ==================================================
      \staffup \stemDown \tieDown cis8 e a~ <a fis>4.~
      \slurDown <a fis>8( <g e> <fis d> \staffdown <e cis> <d h> <cis a>)
      d4 e8 \staffup <a fis>4.~
      <a fis>8( <g e> <fis d> \staffdown <e cis> <d h> <cis a>)
      d4 r8 s4.
      %% Takt 20 ==================================================
      s2.
      s4. r8 r d,~
      d8 h' a e a4~
      \dotsDown a4.~ a
      r8 r a~ a4 gis8
      %% Takt 25 ==================================================
      \neutral a4.~ a4 g!8
      fis8 e d e4 g8
      fis8 a d~ d fis, g
      r8 a( b) r c!( d)~
      d8 c b~ b a g
      %% Takt 30 ==================================================
      a2.
      b8 f b~ b as g~
      g8 f g r d( es)
      r8 f( g as f es
      d4.) es
      %% Takt 35 ==================================================
      r8 d' g~ g <as f> <g es>~
      <g es>8 <f d> <es c>~ <es c> <d h> <c a!>~
      <c a>8 h d g,4 as8
      c8 h c f es d
      c2.
      %% Takt 40 ==================================================
      <es c>4.~ <es c>8 d c
      \tieDown d4.~ <d f>8 es d
      c4 r8 r4.
      R2.
      R2.
      %% Takt 45 ==================================================
      \neutral c,8 d es d g f
      es g c~ c fis,! g
      r8 a( b) r c( \tieDown d)~
      d8 c \tieNeutral b~ b a g
      fis2.
      %% Takt 50 ==================================================
      s2.*5
      %% Takt 55 ==================================================
      s2.
      \tieDown c'!8 d c h!4.~
      h4. a
      \stemDown \tieDown h4.~ h4 a8
      g4. e'
      %% Takt 60 ==================================================
      a,4. d
      s2.
      s2.
      r8 c h a g fis
      g4 r8 <e' cis>4.~
      %% Takt 65 ==================================================
      <e cis>8 cis h ais fis' cis
      d4 r8 <c! a!>4.~
      <c a>8 a g fis d' a
      h4 r8 s4.
      \stemDown \tieDown c,4. cis
      %% Takt 70 ==================================================
      \neutral d8 fis a <d h>4.~
      <d h>8( <c a> <h g> <a fis> <g e> <fis d>)
      g4 a8 <d h>4.~
      <d h>8( <c a> <h g> <a fis> <g e> <fis d>)
      \tieDown g2.~
      %% Takt 75 ==================================================
      g8 a b a4.~
      <a d fis>4. <g h!>4 c8
      d8 e d a d4~
      d8 h d g f e~
      e8 d c~c h c
      %% Takt 80 ==================================================
      <d h>4. <e b g>~
      <e b g>4. c!~
      c8 h a h4.~
      h4 r8 r4 r8
      \neutral g,8( h c d e fis)
      %% Takt 85 ==================================================
      \stemDown \slurDown \tieDown \diffdot g8( h c d4 c8)
      h2.~
      h4.~ h8( g a)
      h2.
   }
}

pedal = {
   \global
   \clef "bass"
   \relative g {
      g2.~
      g2.~
      g2.~
      g4.~ c,
      %% Takt  5 ==================================================
      d2.~
      d2.~
      d4 c!8 h4 c8
      d2.
      g,4. e'4.
      %% Takt 10 ==================================================
      fis2.
      h,4 r8 c!4.
      d2.
      g,4 r8 g4.
      g'4. gis
      %% Takt 15 ==================================================
      a2.~
      a2.~
      a2.~
      a2.
      a,2.~
      %% Takt 20 ==================================================
      a2.~
      a4. h4.
      a4.~ a8 a' g
      fis2.
      r8 r fis e4 d8
      %% Takt 25 ==================================================
      cis4 d8 g,4.
      a2.
      d2.~
      d2.~
      d2.
      %% Takt 30 ==================================================
      c4. f,
      b2.~
      b2.~
      b4. as~
      as2.
      %% Takt 35 ==================================================
      g2.~
      g2.~
      g4 f'8 es4 f8
      g2.
      as2.
      %% Takt 40 ==================================================
      a!2.
      b4. h
      c4 \slurDown es,8( h!4 c8
      g4) c8( g4 as8
      es4) as8( es4 f8
      %% Takt 45 ==================================================
      g2.
      c,2.)~
      c2.~
      c2.
      d2.
      %% Takt 50 ==================================================
      g4 r8 r4 r8
      R2.*4
      %% Takt 55 ==================================================
      R2.
      r4 r8 g'4.~
      g2.~
      g2.~
      g4. c,4.
      %% Takt 60 ==================================================
      d4 r8 d,( fis g
      a4 d8 c4 h8)
      a4( fis8 d4 e8)
      c4. d
      g4 r8 e'4.
      %% Takt 65 ==================================================
      fis2.
      h,4 r8 c!4.
      d2.
      g4 r8 r4 r8
      R2.
      %% Takt 70 ==================================================
      d2.~
      d2.~
      d2.~
      d2.
      d,2.~
      %% Takt 75 ==================================================
      d2.~
      d4. e'
      d4.~ d4 c8
      h4.~ h4 c8
      g4.~ g4 c8
      %% Takt 80 ==================================================
      g4. cis~
      cis4. d
      g,2.~
      g2.~
      g2.~
      %% Takt 85 ==================================================
      g2.~
      g2.~
      g2.~
      g2.^\fermata
      \bar "|."
   }
}

fugaglobal = {
   \key g \major
   \time 4/2
   #(set-accidental-style 'default)
   \override Staff.NoteCollision #'merge-differently-dotted = ##t
}

fugasopran = {
   \new Voice
   \fugaglobal
   \clef "treble"
   \relative g' {
      R1*2
      R1*2
      R1*2
      R1*2
      %% Takt  5 ==================================================
      R1*2
      R1*2
      R1*2
      h1\rest \halsup g2 d
      h'2 a gis4( d' cis g)
      %% Takt 10 ==================================================
      fis( c'! h a) g( fis8 e <a a,>4 <g e>)
      fis4 <a g> <h fis> <cis e,> <d fis,> cis8 \shiftOn h \shiftOff <e h>4 <d gis,>
      <cis a>4 \tieDown <e a,~> <dis a> <e c!~> <fis c> dis! \tieUp h2~
      h4 d! cis d e cis a2~
      a4 a g fis e g fis e
      %% Takt 15 ==================================================
      d gis a cis d a g fis
      e4 h' a2~ a4 d2 <cis a>4
      d4 h gis a c!2 <h e,>4 e
      <a, e>2 <h fis>4 <cis g!> <d a> <fis d> e2~
      e4 e d d, fis( e d cis)
      %% Takt 20 ==================================================
      d4 e8 fis g2~ g4 eis fis g8 a
      h2 e, c'! h
      ais4( e' dis a) gis( d' cis g)
      fis4 g gis ais h cis d2~
      d4 cis8 h~ h4 ais h eis fis2~
      %% Takt 25 ==================================================
      fis4( dis e! d) cis( e d cis)
      d4 cis h ais h g2 fis4
      eis4 h'2 ais4 d2 cis~
      cis4 ais <h gis> <cis ais> d( fis e2)
      g4\rest e( dis2) g4\rest d( cis2)
      %% Takt 30 ==================================================
      e4\rest c!( h2~) h4 h ais4. h8
      h4 g e2~ e4 fis g a!
      fis4 a fis2~ fis4 g a h
      g4 h g2 g' c,
      a'2 g \stemDown fis!4( <c' a> <h g> <f d>)
      %% Takt 35 ==================================================
      \stemUp e1~ e4( h' a e)
      dis1~ dis4 <a' fis> g e
      ais, e' dis <a dis,> <gis d> <d' h> cis2
      s1 cis2 d4 f~
      f4 e8 d c4 f b,2. b4
      %% Takt 40 ==================================================
      a4 g c2~ c4 fis, d' c
      b4 a8 g es'2~ es4 a, f' es!~
      es4 d <f d>2~ <f d>4 <e c> <g e>2~
      <g e>4 <fis! d> <a c,>2 d, g,
      e'2 d cis4( g' fis c)
      %% Takt 45 ==================================================
      h!4( f' e b) a( es' d c!)
      b4 g'2 fis4 g e!2 cis4
      a'4( fis g h,!) c1~
      c4( a g h!) g( c h \neutral <f' h, g>)
      <e b g>4( <cis a e> <a' d, a> <fis! a,>) <d g,>( <h! g> <g' c, g> <f h, gis>)
      %% Takt 50 ==================================================
      \tieDown <e c a>4( <c g! e> <a fis! d> <e' a, fis>) <d h g>( <h g d> <a g e> <e' a, g>)
      <d h g>4( <h g d> <a g cis, > <e' cis g>) <es a,>( <a c,!~> <g es c> <es c~ g>)
      <d c~ fis,>4( <a' fis c> <g d> <e! a, g~>) <d h g>( <c a> <h g> <a fis>)
      <e' a, g e>2 r4 <a, fis d> <d g, d>2 r4 <g, e c>
      \halsup c1~ <c a>4 <h! g~> <a g> <d fis,>
      %% Takt 55 ==================================================
      cis4 g' fis c h f' e b
      a4 b a e g2 fis
      g2 r d' g,
      e'2 d cis4 g' fis c
      h4( f' e d c h c cis)
      %% Takt 60 ==================================================
      d1 g,2 c,
      a'2 g fis4 e d c
      h c d e g fis e fis
      g\breve^\fermata
   }
}

fugaalt = {
   \new Voice
   \fugaglobal
   \relative d' {
      R1*2
      R1*2
      R1*2
      R1*2
      %% Takt  5 ==================================================
      R1*2
      \halsdown d2 g, e' d
      cis4( g' fis c) h( f' e d)
      c4 h8 a d4 c h cis d c
      h4 d2 cis4 d gis, a cis!
      %% Takt 10 ==================================================
      d4 \staffdownh \halsup fis, g a \staffuph \halsdown d h s2
      s1 s4 \halsup \shiftOn gis'8 \shiftOff a s2
      s1*2
      s4 \halsdown d, e fis g! fis8 e a4 g
      fis4 e d cis h d cis2
      %% Takt 15 ==================================================
      s2 s4 e d fis g d~
      d2 cis4 e d fis e e
      s2 \stemUp \shiftOn e \stemDown <a fis>4 <fis dis> e <h' gis!>
      e,4 cis d e fis a \stemUp cis h
      \shiftOn a2~ \stemDown <a fis>4 d, h2 \staffdownh a4 g
      %% Takt 20 ==================================================
      fis2 \staffuph r4 d' \dotsDown cis2. c4
      h4 cis8 dis e2~ e4 e dis d
      cis4 ais h dis e gis! a e~
      e2 d4 cis fis2 h,
      g'!2 fis eis4( h' ais! e)
      %% Takt 25 ==================================================
      dis4( a'! g fis) e d8 cis fis2~
      fis4 <g e> <fis d> < e cis> <fis d> <d h>2 <cis! ais>4
      <h gis>4 <eis! h>2 <fis cis>4 r <h gis>2 <gis eis!>4
      fis2. e!4 \shiftOff h'1
      s2 r4 fis eis( h' ais e)
      %% Takt 30 ==================================================
      dis4( a'! gis d) cis g' fis e
      d1~ d2 cis
      d2 fis4 e~ e2 dis
      e2 h4\rest f' e2 c'4 b
      a4 h! c2 s1
      %% Takt 35 ==================================================
      d4( gis, a d) c1~
      c4 h a g a s4 s2
      s1*2
      \halsup c!4 h8 a gis4 \tieDown g~ \shiftOn g a8 g f4 a
      \halsdown g2 a s1
      %% Takt 40 ==================================================
      c,4\rest e f es d2. fis4
      g4 c,\rest a' g f2. a4
      \halsup b2 s2 s1
      s1 \halsdown b4 a g2~
      <g cis,>4 ( g fis d) g( cis, d fis)
      %% Takt 45 ==================================================
      g4( h, c! cis) g'2 fis!4 d\rest
      g2 d b'! a
      a4 es' d as g b a g
      fis2 <d h!>4 <g d> c, <g' e> <g f> s
      s1*2
      %% Takt 50 ==================================================
      s1*2
      s1*2
      s1*2
      s1*2
      \shiftOff <fis! es>2 d4\rest <g es> d2.  d4
      %% Takt 55 ==================================================
      g2 r4 a g2 r4 <g e>
      <g e>2 c,4\rest cis d1
      h4 <c a> <d h> <e c> <f d> <a f> < g e> < f d>
      e4 fis! g h a cis d fis,
      g4 h c h a2. b4
      %% Takt 60 ==================================================
      a4 fis g2 r4 h, c2~
      c2 h 4 d~ d c h a
      s2 s4 cis d1
      d\breve

   }
}

fugatenor = {
   \new Voice
   \fugaglobal
   \clef "bass"
   \relative g {
      R1*2
      R1*2
      r1 g2^\mf d
      h'2 a gis4( d' cis g)
      %% Takt  5 ==================================================
      fis4( c'! h a) g( fis8 e a4 g~)
      g4 fis g f e fis g2~
      g4( cis, d fis) g( h, c! d)
      e4 g fis a g2 a
      g4 fis e a d,2 e
      %% Takt 10 ==================================================
      \dotsDown d2. e4 d g e \staffuph cis'
      d4 cis d e d \once \override NoteColumn #'force-hshift = #2 fis e2~
      e4 e fis g! a g8 fis h4 a
      gis4 \staffdownh \neutral gis,~ gis fis e r r2
      a2 d, h' a
      %% Takt 15 ==================================================
      gis4 d' cis g fis c' h a
      g4 fis8 e a4 g fis4. g8 a4 s
      \staffuph <a' d,~>2 d,4 cis s1
      s1 s2 gis'
      \shiftOff g!2 s4\staffdownh \halsdown h, a( g fis e)
      %% Takt 20 ==================================================
      d2 \neutral h' ais a
      gis2 g4 fis e2 fis~
      fis4( g fis c'!) h r r h
      ais2 h4 cis d cis h g!
      e2 fis g fis
      %% Takt 25 ==================================================
      h1~ h2 ais
      h4 s1..
      s1*2
      s1 \staffuph fis'2 fis4\rest <cis'!~ g!>
      <cis fis,>2 s2 \staffdownh \halsdown h,2 fis
      %% Takt 30 ==================================================
      \staffuph \shiftOn fis'2 \staffdownh \neutral h, r1
      h2. b4 a1~
      a4 a c!2 h1~
      h4 h d2~ d4 c e g
      f2 e4 es d2 g,
      %% Takt 35 ==================================================
      gis4( d' c gis) a2 r4 g'!
      fis4 g fis e fis \staffuph dis'! e g,~
      g4 fis8 e h'4 h,~ h gis' a e
      dis2 e~ e \staffdownh \neutral d!~
      d4 e f2~ f4 f e2
      %% Takt 40 ==================================================
      s1*2
      s1*2
      \staffuph c4\rest f as2~ as4 g b!2~
      b4 a! \staffdownh \neutral r4 fis, g a b g
      s4 \staffuph \halsup \shiftOn b'4 a2 b! a
      %% Takt 45 ==================================================
      g2. g4 \staffdownh \neutral a,2( d,
      b'2 a) g4( d' cis g)
      fis4( c'! h! f) e2 es
      d4 \staffuph c' \staffdownh s2 s1
      s1*2
      %% Takt 50 ==================================================
      s1*2
      s1*2
      s1*2
      s1*2
      s1*2
      %% Takt 55 ==================================================
      \neutral <b g>2 r4 <d a> <d h g>2 r
      r4 e, a2~ a4 h \staffuph c d
      s1*2
      \once \override Rest #'extra-offset = #'( 1.1 . 0 ) h'4\rest c2 s4 \staffdownh s1
      \neutral g,2 c, a' g
      %% Takt 60 ==================================================
      fis4 c' h f e f e es
      d4 fis! g h, c d e fis
      g4 a h b <c! a>1
      \once \override Script #'extra-offset = #'(0 . 0.5) <h! g>\breve^\fermata
   }
}

fugapedal = {
   \fugaglobal
   \clef "bass"
   \relative d {
      d2\mf g, e' d
      cis4( g' fis c) h( f' e d)
      c4( h8 a d4 c~) c h2 a4
      g4 d'2 cis4 h gis a cis
      %% Takt  5 ==================================================
      d4 fis, g c! h2 cis4 e
      d2 h4 g c!2 h4 b
      a2 r4 d, e( g c h)
      a2 r4 d, e2 fis
      g a h a
      %% Takt 10 ==================================================
      h4 a g c h e cis a
      d4 e d cis h a gis e
      a4 g'! fis e dis h dis fis
      e4 fis e d! cis g' fis e
      d4 cis h a g e a2
      %% Takt 15 ==================================================
      h2 a r1
      r1 d2 a
      fis'2 e dis4 a' gis d
      cis4 g'! fis e d cis8 h e4 d
      cis h8 a d4 h g2 a
      %% Takt 20 ==================================================
      h2 r r1
      R1*2
      R1*2
      R1*2
      R1*2
      %% Takt 25 ==================================================
      R1*2
      r1 h2 fis
      d'2 cis h4( fis' eis h)
      ais4( e'! d cis) h( a8 gis cis4 h)
      ais4( gis8 fis h4 a) gis2 r4 ais
      %% Takt 30 ==================================================
      h2 r4 eis fis2 fis,
      g!1 \shifttiedown a!~
      a1 h~
      h1 c~
      c1 r
      %% Takt 35 ==================================================
      R1*2
      r1 h2 e,
      c'2 h e a,
      f'2  e a d,
      b'2 a g4( d' c g)
      %% Takt 40 ==================================================
      f4 b a g fis e8 d b'4 a
      g4 d' c b a g8 f d'4 c
      b2. h4 c2. cis,4
      d\breve~
      d\breve~
      %% Takt 45 ==================================================
      d\breve~
      d\breve~
      d\breve~
      d2 g, e' d
      cis4 g' fis c h f' e d
      %% Takt 50 ==================================================
      c4 h8 a d4 c h2 c
      d2 e fis g
      a2 h4 c d2 r4 d,
      cis4 g' fis c h f' e b
      a4 b a g fis g d d'
      %% Takt 55 ==================================================
      e2 r4 fis g2 r4 c,
      cis2. a4 d2. d,4
      g\breve~
      g\breve~
      g\breve~
      %% Takt 60 ==================================================
      g\breve~
      g\breve
      g'1 d
      g,\breve^\fermata
      \bar "|."
   }
}

% print
\score {
   <<
      \new PianoStaff {
         <<
            \context Staff = right {
               <<
                  \context Voice = rechtsa \rechtsa
                  \context Voice = rechtsb \rechtsb
               >>
            }
            \context Staff = left {
               <<
                  \context Voice = linksa \linksa
                  \context Voice = linksb \linksb
               >>
            }
         >>
      }
      \context Staff = pedal {
         \context Voice = pedal \pedal
      }
   >>
   \header {
      title = \markup {
         \center-align {
            "Drei Praeludien und Fugen"
            \small "(Thomas Attwood in London gewidmet)"
            " "
            \huge "Praeludium II"
         }
      }
      composer = "Felix Mendelssohn Bartholdy, op. 37"
   }

   \layout{
      indent = 1.1\cm
   }
}

% midi
\score {
   \new PianoStaff {
      <<
         \context Staff = right {
            \set Staff.midiInstrument = "church organ"
            \context Voice = rechtsa \rechtsa
         }
         \context Staff = rightb {
            \set Staff.midiInstrument = "church organ"
            \context Voice = rechtsb \rechtsb
         }
         \context Staff = left {
            \set Staff.midiInstrument = "church organ"
            \context Voice = linksa \linksa
         }
         \context Staff = leftb {
            \set Staff.midiInstrument = "church organ"
            \context Voice = linksb \linksb
         }
         \context Staff = pedal {
            \set Staff.midiInstrument = "tuba"
            \context Voice = pedal \transpose d d, \pedal
         }
         \context Staff = pedalzwo {
            \set Staff.midiInstrument = "church organ"
            \pedal
         }
      >>
   }

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 230 8)
      }
    }
}

% print
\score {
   <<
      \new PianoStaff {
         <<
            \context Staff = right {
               <<
                  \context Voice = fugaalt \fugaalt
                  \context Voice = fugasopran \fugasopran
               >>
            }
            \context Staff = left {
               <<
                  \context Voice = fugatenor \fugatenor
               >>
            }
         >>
      }
      \context Staff = fugapedal {
         \context Voice = fugapedal \fugapedal
      }
   >>

   \header {
      title = \markup {
         \center-align {
            " "
            \huge "Fuge II"
         }
      }
   }

   \layout{
      indent = 0.8\cm
   }
}

% midi
\score {
   \new PianoStaff {
      <<
         \context Staff = right {
            \set Staff.midiMinimumVolume = #0.9
            \set Staff.midiMaximumVolume = #0.9
            \set Staff.midiInstrument = "church organ"
            \context Voice = fugasopran \fugasopran
         }
         \context Staff = rightb {
            \set Staff.midiMinimumVolume = #0.9
            \set Staff.midiMaximumVolume = #0.9
            \set Staff.midiInstrument = "church organ"
            \context Voice = fugaalt \fugaalt
         }
         \context Staff = left {
            \set Staff.midiMinimumVolume = #0.9
            \set Staff.midiMaximumVolume = #0.9
            \set Staff.midiInstrument = "church organ"
            \context Voice = fugatenor \fugatenor
         }
         \context Staff = pedal {
            \set Staff.midiMinimumVolume = #0.7
            \set Staff.midiMaximumVolume = #0.7
            \set Staff.midiInstrument = "recorder"
            \context Voice = fugapedal \transpose d d, \fugapedal
         }
         \context Staff = fugapedalzwo {
            \set Staff.midiInstrument = "church organ"
            \fugapedal
         }
      >>
   }

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 2)
      }
    }
}
