\version "2.10.33"
\include "deutsch.ly"

\header {
   mutopiatitle = "Praeludium und Fuge c-Moll"
   mutopiacomposer = "Mendelssohn-BartholdyF"
   mutopiaopus = "Op. 37"
   mutopiainstrument = "Organ"
   source = "C. F. Peters, ca. 1880"
   style = "Romantic"
   maintainer = "Urs Metzger"
   copyright = "Public Domain"
 footer = "Mutopia-2007/10/03-1042"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

global = {
   \key c \minor
   \time 4/4
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
   head-separation = 0.4 \cm
   foot-separation = 0.8 \cm
   ragged-bottom = ##f
   ragged-last-bottom = ##f
   printallheaders=##t
}

forceshift   = { \once \override NoteColumn #'force-hshift = #1 }
forceshiftt  = { \once \override NoteColumn #'force-hshift = #2 }
halsdown     = { \stemDown \tieDown \slurDown }
halsneutral  = { \stemNeutral \tieNeutral \slurNeutral }
halsup       = { \stemUp \tieUp \slurUp}
staffup      = { \change Staff = "right" }
staffdown    = { \change Staff = "left"  }
diffdot      = { \override Staff.NoteCollision #'merge-differently-dotted = ##t }
nodiffdot    = { \override Staff.NoteCollision #'merge-differently-dotted = ##f }
neutral      = { \stemNeutral \tieNeutral \slurNeutral \dotsNeutral }
shifttiedown = { \once \override Tie #'extra-offset = #'( 0 . -0.5 ) }
shifttieup   = { \once \override Tie #'extra-offset = #'( 0 . 0.5 ) }

rechtsa = {
   \new Voice \relative g' {
      \global
      \once \override TextScript #'extra-offset = #'( -4 . 2 )
      r4^\markup { \large \bold "Vivace" } g\f g'4.( f8
      es8 d c h c g as g)
      f8( g as4. f8 d c)
      h8( f' d'4. h8 g f)
      %% Takt  5 ==================================================
      es8( g c es d h c es)
      es,8( g c es d h c es)
      es,8( g c es d h c g')
      \halsup fis8( g a g fis es! d4~)
      d8( f! es d es d c b)
      %% Takt 10 ==================================================
      a4 c8 es a2~
      a4( fis d fis
      g4) r8 d8 es4. d8
      g4. d8 c4. h!8
      g'4. c,8 d4. es8
      %% Takt 15 ==================================================
      f8( as g f es d f h,!)
      c8( d es2 d8 c)
      c2.( h8 c
      d4) h g \neutral <g' d h>4
      <g es c> 2 r
      %% Takt 20 ==================================================
      R1
      s1
      s1
      \halsup g,8( b es g f d es g)
      a,8( c es g fis d es c)
      %% Takt 25 ==================================================
      b8( d g b a fis g b)
      c,8( es g b as! es f as)
      b,8( d f as g d es g)
      ges8( d es ges as, b d f)
      g,8( b d f es h c es)
      %% Takt 30 ==================================================
      f,8( a c es d a b c) \break
      des2. des4
      c4 s s2
      s1
      s4 b b'4.( as!8
      %% Takt 35 ==================================================
      g8 f es d es b c b)
      a8( b c4. a8 f es)
      \neutral d8( as'! f'4. d8 b as)
      g8( b es g f d es g)
      g,8( b es g f d es g)
      %% Takt 40 ==================================================
      g,8( b es g f d es g,)
      \stemDown f8( as c es) f,( as b d)
      \halsup es1~
      es1~
      es1
      %% Takt 45 ==================================================
      e2 f~
      f2 b,~
      b1~
      b1
      h2 d
      %% Takt 50 ==================================================
      s1
      s1
      s4 c b'!4. b8
      \neutral as8( g f e f c des c)
      b8( c des4. b8 g f)
      %% Takt 55 ==================================================
      e8( b' g'4. e8 c b)
      as8( c f as g e f as)
      as,8( c f as g e f as)
      as,8( c f as g e f as)
      g8( f e f g e c b)
      %% Takt 60 ==================================================
      as4~ <c as>( <b g> <as f>)
      r4 <c a>( <b g> <a f>)
      r4 <f' f,>( <es c> d)
      r4 \halsup d( c h)
      r4 \neutral <g' b,!>( <c, as> <b g>)
      %% Takt 65 ==================================================
      \halsup as4 c~ <as'~ c,>2
      \tieDown <as des,~>2 \shiftOn des, \shiftOff
      e4 f2 e4
      f4 \breathe as, <as' f>4. <g es!>8
      <f d!>8 <es c> <d h> c <d h as> c <d h as> <es c g>
      %% Takt 70 ==================================================
      <f d f,>4 \breathe d, d'4. c8
      h8 d h d g c, f! h,!
      es4 \breathe es, \stemDown <es' c>4. <d b!>8
      \halsup <c a>8 <b g> <a fis> g <a fis es> g <a fis es> <b g d>
      c2. cis4
      %% Takt 75 ==================================================
      d4 es d2~
      d4 \breathe b <b' g>2~
      <b g>1~
      <b g>4 as <c as>2~
      <c as>1~
      %% Takt 80 ==================================================
      <c as>4 <h g>4 <f d>2~
      <f d h>1~
      \neutral <f d h>4 <e c> <g e b!>2~
      <g e b>4 <a fis> <b g>2
      \halsup <a fis>2 g4\rest \tieDown <g a,~>(
      %% Takt 85 ==================================================
      <fis a,>2) g4\rest <es g,>(
      <d fis,>2) s
      s1
      r4 f,! \tieUp f'2~
      f4 f, f'2~
      %% Takt 90 ==================================================
      f4 f, \neutral f'4.~( es8
      d8 c h a h f! g f
      es8 f g4) r4  <as! c,>
      <b! g des>2 r4 <c as c,>
      <des b g>2. \halsup <c as>4
      %% Takt 95 ==================================================
      b4 f' es2~
      es2 r4 \neutral <es as,>
      <e b g>2 r4 <e b g>
      <f c as>2 r4 f
      <fis es! c fis,>2 r4 fis
      %% Takt 100 =================================================
      <g d> g, g'4.( f!8
      es8 d c h c g as g)
      f8( g as4. f8 d c)
      h8( f' d'4. h8 g f)
      es8( g c es d h c es)
      %% Takt 105 =================================================
      d,8( as' c d c a h d)
      g,8( c es g f d es g)
      f,8( c' es f es c d f)
      b,8( es g b a fis g b)
      a,8( es' g a as e f as)
      %% Takt 110 =================================================
      g,8( h d g g, c es g
      fis8 d es! fis f cis d f
      es,8 g c d es h c es
      d,8 f c' d g, f' d h)
      \halsup \shifttieup c1~
      %% Takt 115 =================================================
      c4 d\rest s2
      \shiftOff des1
      \shiftOff d!1
      \stemUp es2 e
      f2. fis4
      %% Takt 120 =================================================
      \neutral g8 f! es! d f es d c
      as'8 f d c h g h d
      g4 \breathe g, g'4.( f8
      e8 des c b c g as g
      f4) \breathe f as'4.( g8
      %% Takt 125 =================================================
      f8 es d c d as b as
      g4) \breathe c c'4.( b8
      as8 g f e f c des c)
      h8( d f as g e f as)
      h,8( d f as g e f as
      %% Takt 130 =================================================
      es!8 c d f c a h d)
      g,2 \tieUp <g'~ es~ c>
      <g es a,>2 <f~ d as>
      <f g,>2 <es~ c~ fis,>
      <es c g>1
      %% Takt 135 =================================================
      \halsup d2. c4
      <c g>1^\fermata
   }
}

rechtsb = {
   \new Voice \relative c' {
      \global
      \halsdown \dotsDown
      s1*4
      %% Takt  5 ==================================================
      s1
      s1
      s1
      es4\rest c c'4. c8
      b8( a g fis g d es d)
      %% Takt 10 ==================================================
      c8( d es4. \staffdown \halsdown c8 a g)
      fis8( c' \staffup a'4. fis8 d c)
      b8( d g b a fis g b)
      h,8( d g h as! f! g h)
      c,8 es g c h g c4~
      %% Takt 15 ==================================================
      c4 h2.
      r8 b! as g as g f es
      d4 f8 as d2
      f,2. s4
      s1
      %% Takt 20 ==================================================
      s1
      \neutral g,8( c es g f d es g)
      f,8( c' es f es c d f)
      \halsdown es4 g b2
      a1
      %% Takt 25 ==================================================
      b1
      c1
      b1
      a2 as
      g ges
      %% Takt 30 ==================================================
      f1
      \dotsDown b2. b4~
      b4 s s2
      s4 \halsup f
         \once\override Slur #'control-points = #'( ( 1 . 5.0 ) ( 10 . 6.0 ) ( 24 . 3.0 ) ( 34 . -1.0 ) )
         \dotsNeutral f'4.( es!8
      \halsdown d8 c b a b f g f)
      %% Takt 35 ==================================================
      s1
      \staffdown \halsup es2. c4
      \staffup s1
      s1
      s1
      %% Takt 40 ==================================================
      s1
      s1
      \halsdown g'1
      as1
      <b g>2 <c as>
      %% Takt 45 ==================================================
      <des b>2 c
      s1
      s1
      <f, d>2 <g es>
      <as f>2 <g f>
      %% Takt 50 ==================================================
      \staffdown \halsup es,2 s
      \staffup s4 f' f'4. f8
      \halsdown e8 des c h c \staffdown \halsup g as g
      f4 g as g
      f4 e f des!
      %% Takt 55 ==================================================
      b4 des c g
      as4~ <c as> <des b> <c as>
      c4\rest \tieDown <c as~> <h as> <c as>
      c4\rest c h2
      b!4 g c2
      %% Takt 60 ==================================================
      s1
      s1
      s1
      s4 \staffup \halsdown as'!2.
      s1
      %% Takt 65 ==================================================
      s1
      s2 \halsup g'4 f
      s2 g,4 \halsdown b
      as4 s s \staffdown \breathe as,
      \staffup as'4. g8 s2
      %% Takt 70 ==================================================
      s4 f,\rest a\rest fis'
      g4 as g2~
      g4 s s \staffdown es,
      \staffup \dotsDown es'4. d8 s2
      <a' c,>4 \once \override BreathingSign #'extra-offset = #'(0 . -3.8) \breathe c, a'4. g8
      %% Takt 75 ==================================================
      fis8 a fis a d g, c fis,!
      b4 d,\rest d\rest g
      es'1~
      es2 r4 c
      f1~
      %% Takt 80 ==================================================
      f2 s
      s2 g,~
      g4 s4 s2
      s1
      f4\rest c \tieUp \shifttiedown c'2~
      %% Takt 85 ==================================================
      c4 c, \tieDown  \shifttieup c'2~
      c4 s4 s2
      s1
      s2 r4 <c as!>
      <h g>2 r4 as
      %% Takt 90 ==================================================
      g4 s4 s2
      s1
      s1
      s1
      s1
      %% Takt 95 ==================================================
      g2. b4
      as2 s
      s1
      s1
      s1
      %% Takt 100 =================================================
      s1*5
      %% Takt 105 =================================================
      s1*5
      %% Takt 110 =================================================
      s1*5
      %% Takt 115 =================================================
      s2 \stemUp \tieDown c~
      \stemDown \shiftOn \once \override Tie #'extra-offset = #'( 0 . 0.2 ) c1~
      \shiftOn c1~
      c1~
      c1
      %% Takt 120 =================================================
      \staffdown \shiftOff g,1
      d'1
      s1
      \shiftOn b1
      s1
      %% Takt 125 =================================================
      s1*5
      %% Takt 130 =================================================
      s1*5
      %% Takt 135 =================================================
      \staffup \shiftOff <h' g>1
   }
}

linksa = {
   \global
   \clef "bass"
   \relative c' {
      <es c g>2\f r
      <es c g>2 r
      <f c as>2 r
      <g, f d>2 r
      %% Takt  5 ==================================================
      <c g es>2 r
      <c g es>2 r
      <c g es>2 r
      <a fis d>2 r
      s1
      %% Takt 10 ==================================================
      s1*5
      %% Takt 15 ==================================================
      r4 g g'4.( f8
      es8 d c h c g as g)
      f8( g as4. f8 d c)
      h8( f' d'4. h8 g f)
      es8( g c es d h c es)
      %% Takt 20 ==================================================
      d,8( as' c d c a h d)
      es,4 g b!2
      r4 f as2
      g4 b es2~
      es2 d4 fis
      %% Takt 25 ==================================================
      g4 d g2~
      g2 f!4 es
      d2 b
      es2 f
      b,2 c~
      %% Takt 30 ==================================================
      c2 b
      s1
      s4 \staffup \breathe c \stemDown \slurUp
         \once \override Slur #'height-limit = #9
      c'4.( b8
      as8 g f e \staffdown \stemUp f8 c d! c)
      s1
      %% Takt 35 ==================================================
      s1
      s1
      \shiftOn \halsup b1~
      b4 g~ <es' g,>2~
      <es g,>4 g,~ <es' g,>2~
      %% Takt 40 ==================================================
      <es g,>4 g,~ <es' g,>2~
      \neutral <es c>2 <d b>4 <b~ as>
      <b g>4 s s2
      s1
      s1
      %% Takt 45 ==================================================
      s1
      \staffup \halsdown es4\rest b as'!4. as8
      g8 f es d es \staffdown \halsup b c b
      as8 c b as g b as g
      f8 g f es d g f d
      %% Takt 50 ==================================================
      \staffup r4 \halsup c' \halsdown b'!4. b8
      as8 g f e f \staffdown \halsup c des c
      b2 \clef "treble" \halsdown e
      f2. es!4
      des2. b4
      %% Takt 55 ==================================================
      \clef "bass" g4 f e2
      f1
      es!1
      \dotsDown d!2. d4
      e2. e4
      %% Takt 60 ==================================================
      f8 as c f e c des f
      es,8 a c es! des b c es
      d,!8 f b d! c a b d
      f,8 h d f es! c d f
      e,8 g c e f d e g
      %% Takt 65 ==================================================
      \staffup as8 e f as ges d! es ges
      f8 c des f \shiftOff b, des f b \shiftOn
      des8 g, as f \staffdown des b c c,
      \dotsUp f2. s4
      s1
      %% Takt 70 ==================================================
      s1
      s1
      r2 r4 s
      s1
      s1
      %% Takt 75 ==================================================
      s1
      s1
      s2 \halsup es'~
      es2 s2
      s1
      %% Takt 80 ==================================================
      s2 r4 d
      r4 g, s2
      s1
      s1
      s1
      %% Takt 85 ==================================================
      s1
      s4 \staffup \halsdown c c'4.( b8
      a8 g fis e fis \staffdown \halsup c d c
      h8 c \neutral d2.~)
      d4 \halsup d, d'2~
      %% Takt 90 ==================================================
      d4 s s2
      s1
      s1
      s1
      s1
      %% Takt 95 ==================================================
      s1*5
      %% Takt 100 =================================================
      s1*5
      %% Takt 105 =================================================
      r2 r4 \halsdown g,
      es'1
      \clef "treble" as1
      s1
      s1
      %% Takt 110 =================================================
      s1
      s1
      s1
      \halsup \shiftOff c,2 h
      es4\rest b! \staffup \halsdown b'!4. as8
      %% Takt 115 =================================================
      g8 f e d e \staffdown \halsup b c b
      as4 \breathe as \staffup \halsdown as'4. g8
      f8 es d c d \staffdown \halsup a h a
      \neutral g4 \breathe c, c'4. b!8
      as!8 g f e f c d c
      %% Takt 120 =================================================
      s2 \halsup c'
      s1
      s1
      c1~
      c2 h
      %% Takt 125 =================================================
      b!1~
      b2 c~
      c2 des
   }
}

linksb = {
   \global
   \clef "bass"
   \relative b {
      s1*30
      r4 g g'4.( f8
      e8 des c h c g as g)
      f4 g as a
      b4 c cis d
      %% Takt 35 ==================================================
      \staffup \halsdown es4 <as! f> g~ <g es>
      \staffdown c,4 b a2
      b4 as! f d
      es1~
      es4 es~ es2~
      %% Takt 40 ==================================================
      es4 es~ es2
      s1
      s4 \neutral \breathe es des'4. des8
      c8 b as g as es f es
      des8 f es des c es des c
      %% Takt 45 ==================================================
      b8 des c b a c f es
      \halsdown des2 d
      es2 g
      f2 es
      d2 h
      %% Takt 50 ==================================================
      c2 e
      f2 as
      g2 s
      s1
      s1
      %% Takt 55 ==================================================
      s1*5
      %% Takt 60 ==================================================
      s1*5
      %% Takt 65 ==================================================
      s1*5
      %% Takt 70 ==================================================
      s1*5
      %% Takt 75 ==================================================
      s1
      s1
      r4 es des'2~
      des4 c r2
      r4 f, \tieNeutral <f' d!>2~
      %% Takt 80 ==================================================
      <f d>2 s
      s1
      s1
      s1
      s2 r4 es
      %% Takt 85 ==================================================
      d2 s
      s1
      s1
      s1
      s2 r4 \neutral c
      %% Takt 90 ==================================================
      h4 d, d'4.( c8
      h8 a g fis g d' es d
      c4) es, es'2~
      es4 es, es'2~
      es4 es, es'4. es8(
      %% Takt 95 ==================================================
      des8 c b as b des, es des
      c8 des es4) r4 c'4
      <des b>2 r4 <des b>
      <c as>2 r2
      <es c a>2 r
      %% Takt 100 =================================================
      <d h g d>2 r
      <c g es>2 r
      <c f,> 2 r
      <g f d g,>2 r
      <g es c>2 r
      %% Takt 105 =================================================
      s1
      s1
      c2\rest c4\rest \halsdown b
      \neutral <g' es>1~
      <g es>2 <f d>~
      %% Takt 110 =================================================
      <f d>2 <es c>~
      <es c>2 \clef "bass" <d g,>~
      <d g,>2 <c a>
      \tieDown g1~
      g1~
      %% Takt 115 =================================================
      g1
      s1
      s1
      s1
      s1
      %% Takt 120 =================================================
      \halsdown \shiftOff <d h>2 <es! c>
      f2 g
      <c g e> r4 \stemUp c,
      \stemDown e1
      <as f>1~
      <as f>2 f
      %% Takt 125 =================================================
      g1
      as1
      \neutral <d! h as>1~
      <d h as>4 r r2
      R1
      %% Takt 130 =================================================
      r2 <c~ g>
      <c a>2 <d b!~>
      b2 <es c>~
      <es c>1
      <f d>1
      %% Takt 135 =================================================
      \once \override Script #'extra-offset = #'(0 . 0.3) es1^\fermata
   }
}

pedal = {
   \global
   \clef "bass"
   \relative c {
      c2\f r
      c2 r
      c2 r
      c2 r
      %% Takt  5 ==================================================
      c2 r
      b2 r
      a2 r
      d2 r
      g,2 r
      %% Takt 10 ==================================================
      g2 r
      g2 r
      g2 r
      f2 r
      es2 r
      %% Takt 15 ==================================================
      d2 r
      c2 r
      f2 r
      g2 r
      c,2 es
      %% Takt 20 ==================================================
      f2 g
      c2 g
      as2 b
      es2 d
      c2 d
      %% Takt 25 ==================================================
      g2 f!
      es2 f
      b,2 es
      c2 d
      es2 a,
      %% Takt 30 ==================================================
      b2. as!4
      g2 r4 g
      c2 r4 e
      f2 r4 f,
      b2 r
      %% Takt 35 ==================================================
      R1
      R1
      r2 r4 b
      es2 r4 a,
      b2 r4 a
      %% Takt 40 ==================================================
      b2 r4 c
      as!2 b
      es,1~
      es2 r
      R1
      %% Takt 45 ==================================================
      r2 f
      b1~
      b2 r2
      R1
      r2 g
      %% Takt 50 ==================================================
      c1~
      c2~ r
      R1
      R1
      R1
      %% Takt 55 ==================================================
      R1*5
      %% Takt 60 ==================================================
      R1*5
      %% Takt 65 ==================================================
      R1
      R1
      R1
      R1
      r4 f, f'4. es8
      %% Takt 70 ==================================================
      d8 f c d h d a h
      g8 h f g es g d es
      c2 r
      r4 c' c'4. b8
      a8 c g a fis a e fis
      %% Takt 75 ==================================================
      d fis c d b d a b
      g2 r
      r2 r4 as!
      as'2 r
      r2 r4 g,
      %% Takt 80 ==================================================
      g'2 r
      r2 r4 c,
      c'2 r4 cis,
      cis'2 r4 d,,
      d'1~
      %% Takt 85 ==================================================
      d1~
      d2 r
      R1
      g,1~
      g1~
      %% Takt 90 ==================================================
      g2 r
      R1
      es1~
      es~
      es2 r
      %% Takt 95 ==================================================
      R1
      r4 as as'2~
      as4 as, as'2~
      as4 as, as'4. as8
      a8( g fis e fis c d c)
      %% Takt 100 =================================================
      h2 r2
      c2 r
      as2 r
      g2 r
      c,2 es
      %% Takt 105 =================================================
      f2 g
      c2 g
      as2 b
      es2 b
      c2 d
      %% Takt 110 =================================================
      h2 c
      a2 h
      c2 fis,
      g1
      e1~
      %% Takt 115 =================================================
      e1
      f1~
      f2 fis
      g1
      as2 a
      %% Takt 120 =================================================
      h2 c
      f2 g
      e2 r
      r2 c
      des1
      %% Takt 125 =================================================
      d!1
      es2 e
      f1~
      f1~
      f4 r r2
      %% Takt 130 =================================================
      R1
      r2 es!
      f2 b,
      es2 as,
      g1~
      %% Takt 135 =================================================
      g1
      c,1^\fermata
      \bar "|."
   }
}


fugaglobal = {
   \key c \minor
   \time 12/8
   #(set-accidental-style 'default)
   \override Staff.NoteCollision #'merge-differently-dotted = ##t
}

fugasopran = {
   \new Voice \relative c' {
      \fugaglobal
      \partial 8 s8
      s1.
      s1.
      s1.
      s1.
      %% Takt  5 ==================================================
      s1.
      s1.
      s1.
      s1.
      s4. s s b'4\rest \halsup c,8
      %% Takt 10 ==================================================
      g'4 d8 a'4 d,8 b'4 g8 fis4 \breathe d'8
      es4 c8 a!4 f8 d'4 b8 g4 es8
      c'4 a8 fis d' c b a! g b4.~
      b8 g f e! c' b as g f f'4.~
      f8 es d c f es d c b des4.~
      %% Takt 15 ==================================================
      des8 c h c4.~ c8 b as g b es~
      es4. es4 d8 es4 c8 b c d
      es4.~ es8 d c b4 \tieDown \shifttieup des8~ des \tieUp c b
      as4.~ as8 d\rest f, b4 g8 c4 as8
      d4 h8 es4 c8 f4.~ f8 g as
      %% Takt 20 ==================================================
      g8 f es d es f es d c b c as!
      g!8 as c~ c b as~ as g b~ b as g~
      g8 f as~ as g f b4. des
      c4.~ c8 d! es g! f es f c d
      es8 g, as b c es des c b es g, a!
      %% Takt 25 ==================================================
      b4 d8\rest d4\rest c8 f4 c8 g'4 c,8
      as'8 as, b c d f es! d c f a, h!
      c4 f8\rest f4\rest d8 es4 cis8 d4 a!8
      d4 h8 c es d c4.~ c8 es d
      c4.~ c8 es d c es d c d c
      %% Takt 30 ==================================================
      b8 c b a! b a g a b c es! d
      a'8\rest g4~ g8 f!4~ f4.~ f8 es4~
      es4.~ es8 d4~ d8 g, a! h a h
      c8 h c d4 g,8 g'2.~
      g4.~ g4 a8\rest b\rest c, b a4.
      %% Takt 35 ==================================================
      g4. ges f'2.~
      f2. es
      des4. c~ c2.
      b4.~ b8 c b as c f e b' e,
      f4 as8 g f e f \once \override Tie #'extra-offset = #'( 0 . 0.8 ) b4~ b8 as g
      %% Takt 40 ==================================================
      as4.~ as8 g f g4.~ g8 g, c
      as'4 f8 des4 b8 g'4 es8 c4 as8
      f'4 des8 b4 g8 f'4 c8 as4 f8
      f'4 d!8 h4 g8 g'4 es8 c4 g'8
      g8 f es~ es d c~ c b as~ as g f~
      %% Takt 45 ==================================================
      f8 es g~ g a fis g4 g8 g'4.~
      g8 b, c des c b as4 f8 f'4.~
      f8 as, b c b as g4 f'8\rest f4\rest f8\rest
      d2.\rest d4\rest g,8 c4 f,8
      b4 e,8 as4 d,8 g h d g4 c,8
      %% Takt 50 ==================================================
      fis4 a,8 f'4 h,8 e4 g,8 es' a, d~
      d8 g, c~ c d h c as!4~ as8 g4~
      g8 fis4~ fis8 g h c es as~ as f d
      f8\rest es g~ g es c f\rest d f~ f es d
      c4 g8 des'4 g,8 c b as des4 g,8
      %% Takt 55 ==================================================
      c4 r8 r8 <c a>4 r8 <c g>4 r8 <c fis,>4
      h8\rest <c g>4 h8\rest <h f!>4 d8\rest <f h,>4 d8\rest <e c>4
      as8\rest g4 as8\rest f4 as8\rest as4 as8\rest g g,
      \neutral c4 g8 d'4 g,8 es'4 c8 h4 g'8
      as4 f8 d4 b!8 g'4 es8 c4 as8
      %% Takt 60 ==================================================
      \halsup f'8 <es c> <d h> es d c h! a! h c4 h8\rest
      r8 b f' es4. f8\rest as, es' d!4.
      d8\rest g, es'~ es d as~ as g es'~ es d g,
      es'4 h8 c4 g8 as4 e8 f4 des8
      c2. h2.
      %% Takt 65 ==================================================
      c1.^\fermata
   }
}

fugaalt = {
   \new Voice \relative c {
      \fugaglobal
      \halsdown
      \once \override TextScript #'extra-offset = #'( -8 . 1 )
      \partial 8 r8^\markup { \large \bold "Con moto" }
      R1.
      R1.
      r2. \staffdown \halsup c'4\rest c8\rest c4\rest \halsup c,8
      g'4 d8 a'4 d,8 b'4 g8 fis4 d'8
      %% Takt  5 ==================================================
      es4 c8 a4 f!8 d'4 b8 g4 es8
      c'4 a8 fis d' c b a g \staffup \tieDown f'!4.
      es8 d c f d h c es f g4.~
      g8 f as~ as f d r es g~ g es c
      r8 d f~ f es d c b! a \halsdown \dotsDown c b a
      %% Takt 10 ==================================================
      d8 c b es4 d8~ d d es d4 fis!8
      g8 a g f!4.~ f8 g f es4.~
      es8 f es d4.~ d4 g8 as! g f!
      e4 d8 c d e f4 b,8\rest as'4.~
      as8 g f es d c b4 c8\rest c\rest b' g
      %% Takt 15 ==================================================
      es4. as8 d,! es f4. es8 b'4~
      b8 as g c b as g4 a8 b r b
      c4 as!8 f4 d8 b'4 g8 es4 c8
      as'4 f8 d g f~ f es des c \shiftOn es as~
      as8 g f es g c~ c d es \stemUp \dotsUp d4.
      %% Takt 20 ==================================================
      s4. as4 d8 s2.
      \stemDown \dotsDown es,4.~ es8 d f~ f es d~ d c es~
      es8 d c b4.~ b8 as' g b4.~
      b8 as ges f4. g8 as b as4.~
      as8 g f\mf g as a b4. a8 g f~
      %% Takt 25 ==================================================
      f8 des es f g b as! g f b d, e
      f4 g8 as b h c4. h8 a g~
      g8 es f g a c b! c b a!4.
      as!8 b as g4.~ g8 a g fis4.~
      fis8 a g fis4.~ fis8 c' b a! b a\f
      %% Takt 30 ==================================================
      b8 a g fis e fis g fis g a! b c
      b4 es8 c4 a8 f a d b4 g8
      es8 g c a4 c8 h4 c,8\rest c4\rest c8\rest
      c2.\rest g'4\rest g8 c4 g8
      d'4 g,8 e'4 c8 f c d \override Stem #'details #'beamed-lengths = #'( 3.9 ) es! d \tieUp es~
      %% Takt 35 ==================================================
      es8 d es~ es d c \revert Stem #'details #'beamed-lengths g4\rest f8 b4 f8 \tieDown
      c'4 f,8 d'8 c b~b c des c b as
      g8 as b as g f e g b as g f
      e8 g f e4. c4\rest c8\rest c'4.~
      c8 des h c4 s8 s4 g'8 e!4 g8~
      %% Takt 40 ==================================================
      g8 f e f4.~ f8 e! des c4 b8
      as2. g4. ges8 f ges
      f4.~ f8 e f~ f4.~ f8 g f
      as8 g as~ as g f g4.~ g4 g8
      c4 b!8 as4 g8 f4 es8 d4 d8
      %% Takt 45 ==================================================
      c8 es4 c4. h8 c\rest g' b!4.~\mf
      b8 g as! b as g f4 f8 as4.~
      as8 f g as g f es4 es8 as4 des,8
      g4 c,8 f4 b,8 e4.~ e8 c f~
      f b, e~ e as, d! h d g es'!4 a,8
      %% Takt 50 ==================================================
      \shiftOff es'4 fis,8 d'4 g,8 c4 g8 fis!4.
      f!8 e es d as'! f es\f es4~ es8 d4~
      d8 c4 d f!8es4 c'8 b!4.~
      b4. as2. g4.~
      g4 g8 b4 g8 as g f b4 g8
      %% Takt 55 ==================================================
      as8 f c s4. s2.
      s4. c8\rest d4 es8\rest as!4 es8\rest g4
      h8\rest <es! c>4 h8\rest <d c>4 h8\rest <d h>4 h8\rest <d h>4
      s1.
      s1.
      %% Takt 60 ==================================================
      s4. \stemUp \shiftOn a4. \stemDown <g~ d> \stemUp g8 f s
      \stemDown s8 b! des~ des b g es as c~ c as f~
      f1.
      es4 <g~ d>8 <g c,>4 <es c~>8 \shiftOff \dotsUp c4.~ c4 \staffdown \halsup as8
      g1.
      %% Takt 65 ==================================================
      g1.^\fermata
   }
}

fugatenor = {
   \fugaglobal
   \clef "bass"
   \relative g, {
      \partial 8 \once \override TextScript #'extra-offset = #'( -2.5 . 0 ) g8^\markup { \italic forte }
      \once \override TextScript #'extra-offset = #'( 0 . -0.5 ) c4_\markup { \italic legato } g8 d'4 g,8 es'4 c8 h4 g'8
      as4 f8 d4 b!8 g'4 es8 c4 as8
      f'4 d8 h g' f \halsdown es d c es d c
      b!8 a g c a fis g b c \dotsDown d4.~
      %% Takt  5 ==================================================
      d8 c es~ es c a b\rest b d~ d b g
      b8\rest a c~ c b a g d' g h a! \neutral g~
      g2.~ g8 es'4 d8 es d
      c8 d c b!4.~ b8 c b as4.~
      as8 b as g4.~ g fis
      %% Takt 10 ==================================================
      g8 a b c4. b a8 b c
      b8 a c~ c d es d g, b~ b c d
      c4. a8 g fis g b d f! e d
      c8 g as! b as g f as c es! d c
      b4. f'4.~ f4 r8 r4 r8
      %% Takt 15 ==================================================
      r2. r4 r8 r4 b,8
      es4 b8 f'4 b,8 g'4 es8 d4 s8
      s1.
      r2. r4 es,8 as g f
      h4 d8~ d c b a4 \staffup \halsdown \dotsDown f'8 b!4.~
      %% Takt 20 ==================================================
      <es b>8 <d as> <es g,> f, g as <b g>4 <a ges>8 <b f> es, <f d>
      s1.
      \staffdown r2. r4 \neutral b,8 es4.~
      es4 c8 es4.~ es8 f g f4.
      es4 r8 r4 f,8 b4 f8 c'4 f,8
      %% Takt 25 ==================================================
      des'8 b c des es e f4. e8 d c
      f4 r8 r4 g,8 c4 g8 d'4 g,8
      es'8 c d es f fis g4. fis!8 d es
      f!4. es8 c b a c b a c, d
      es8 c b a c, d es4 c8 fis4 r8
      %% Takt 30 ==================================================
      r8 a' b c d c b c b a g fis
      g4 r8 r4 r8 r2.
      r2. r4 d8 g4 d8
      a'4 d,8 h'4 g8 b g as b as b~
      b8 as b~ b c b a4 b8 c b c~
      %% Takt 35 ==================================================
      c8 b c ~ c b a as2.~
      as4.~ as8 f d b'4 es,8 as4 es8
      b'4 es,8 c'4 as8 g4 c,8 f4 c8
      g'8 b as g4 \breathe \clef "treble" c8 f4 c8 g'4 c,8
      as'4 f8 e4 c'8 des!4 b!8 g4 e!8
      %% Takt 40 ==================================================
      c'4 as8 f4 des8 b'4 g8 e4 \clef "bass" c8~
      c8 as c f es! des~ des c b as4.~
      as8 b as g!4. as8 b c f,4.~
      f4 \clef "treble" f'8~ f es d~ d c h es d c
      c4 g'8 as4 c,8 d4 es8 f4 h,8
      %% Takt 45 ==================================================
      \clef "bass" c4 b!8 a4. g8 h d f e d
      e4.~ e4 c,8 f as c es des c
      des4.~ des4 b,8 es b' des c f, b~
      b8 es, as~ as des, g~ g c, b' as4 d,8
      g4 c,8 f4.~ f4 f8 es g c~
      %% Takt 50 ==================================================
      c8 h a h d g~ g e c~ c d a
      h8 c as! f4 g8 c, c'4~ c8 h!4~
      h8 a4 d4 r8 r4 r8 f, b d~
      d8 b g es as c~ c as f d g h
      r8 c4~ c8 c4~ c8 c4~ c8 c4~
      %% Takt 55 ==================================================
      c8 r c es!4 c8 es d c es4 c8
      es4. s4. s2.
      s1.
      r8 <c g>4 r8 <f g,>4 r8 <es c a fis>4 r8 <d h g>4
      r8 <f c as!>4 r8 <f b,! as>4 r8 <g es b g>4 r8 <g es>4
      %% Takt 60 ==================================================
      \stemUp f8 \staffup \halsdown g as c, d es s4. c4 c8\rest
      \staffdown \neutral r4 r8 r b des c4 r8 r as c
      h4 r8 r4 r8 r4 r8 r4 d8
      c4 s8 s4. \staffup \stemDown \shiftOff as4 \staffdown g8 \dotsDown f4.
      \stemDown es2. <f d>
      %% Takt 65 ==================================================
      <es c>1.
   }
}

fugapedal = {
   \fugaglobal
   \clef "bass"
   \relative g, {
      \partial 8 r8
      R1.
      R1.
      R1.
      R1.
      %% Takt  5 ==================================================
      R1.
      r2. r4 r8 r4 g8
      c4 g8 d'4 g,8 es'4 c8 h4 g'8
      as!4 f8 d4 b!8 g'4 es8 c4 as8
      f'4 d8 h g' f es d c es d c
      %% Takt 10 ==================================================
      b!8 a g c a fis g b c d4.~
      d8 c es~ es c a r b d~ d b g
      r a c~ c b a g4 d8 g4 g8
      c4. r4 c8 f4. r4 f8
      g4 es8 a4 f8 b4. g4 es8
      %% Takt 15 ==================================================
      as!4. f4 es8 d4. es4 g,8
      c4 b8 as4 b8 es8 c f b,4.
      r8 as' c~ c as f r g b~ b g es
      r8 f as~ as b as g4 r8 r4 r8
      r2. r4 r8 r4 b,8
      %% Takt 20 ==================================================
      es4 b8 f'4 b,8 g'4 es8 d4 b'8
      c4 as8 f4 d8 b'4 g8 es4 c8
      as'4 f8 d b' as g f es g f es
      as4. a b b,
      es4 r8 r4 r8 r2.
      %% Takt 25 ==================================================
      R1.
      R1.
      R1.
      R1.
      r2. r4 r8 r4 d8
      %% Takt 30 ==================================================
      g4 d8 a'4 d,8 b'4 g8 fis4 d8
      es4 c8 a4 f8 d'4 b8 g4 es8
      c'4 a8 fis4 d8 f2.~
      f4.~f8 g f e4 r8 e'4.
      d4. c r4 c8 f4 c8
      %% Takt 35 ==================================================
      g'4 c,8 a'4 c,8 d f es d es d
      c d c b4 as8 g4 r8 r4 r8
      R1.
      r4 r8 r4 c8 c'2.~
      c1.~
      %% Takt 40 ==================================================
      c2.~ c4.~ c4 c,8
      f2. es
      des2. c
      h4.~ h4 h8 es4.~ es4 es8
      as!4 g8 f4 es8 d4 c8 h4 g8
      %% Takt 45 ==================================================
      c4. d g, r4 r8
      R1.
      R1.
      R1.
      R1.
      %% Takt 50 ==================================================
      R1.
      r4 r8 r4 g8 c4 g8 d'4 g,8
      es'4 c8 h4 g'8 as!4 f8 d4 b!8
      g'4 es8 c4 as8 f'4 d8 h g' f
      es4. e f e
      %% Takt 55 ==================================================
      f4. fis g as!4 g,8
      g'4 g,8 g'4 g,8 g'4 g,8 g'4 g,8
      g'4 g,8 g'4 g,8 g'4 f,8 f'4.
      r8 es4 r8 h4 r8 c4 r8 g4
      r8 f4 r8 b!4 r8 es4 r8 as4~
      %% Takt 60 ==================================================
      as8 g f fis4. g as!4 c8
      des4 b8 g4 es8 c'4 as8 f4 d!8
      h'4 c8 h4 g8 h4 c8 h4 g8
      c4 g8 es4 c8 f4 c8 as4 f8
      g1.
      %% Takt 65 ==================================================
      c,1.^\fermata
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
            \huge "Praeludium I"
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
      tempoWholesPerMinute = #(ly:make-moment 144 4)
      }
    }
}

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
            \huge "Fuge I"
         }
      }
   }

   \layout{
      indent = 0.8\cm
   }
}

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
      tempoWholesPerMinute = #(ly:make-moment 280 8)
      }
    }
}
