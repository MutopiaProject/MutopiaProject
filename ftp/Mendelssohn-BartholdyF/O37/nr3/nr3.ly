\version "2.10.33"
\include "deutsch.ly"

\header {
   mutopiatitle = "Praeludium und Fuge d-Moll"
   mutopiacomposer = "Mendelssohn-BartholdyF"
   mutopiaopus = "Op. 37"
   mutopiainstrument = "Organ"
   source = "C. F. Peters, ca. 1880"
   style = "Romantic"
   maintainer = "Urs Metzger"
   copyright = "Public Domain"
 footer = "Mutopia-2007/10/05-1044"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

diffdot      = { \override Staff.NoteCollision #'merge-differently-dotted = ##t }
forceshift   = { \once \override NoteColumn #'force-hshift = #1 }
forceshiftt  = { \once \override NoteColumn #'force-hshift = #2 }
halsdown     = { \stemDown \tieDown \slurDown }
halsneutral  = { \stemNeutral \tieNeutral \slurNeutral }
halsup       = { \stemUp \tieUp \slurUp}
mmrestdown   = { \once \override MultiMeasureRest #'staff-position = #-2 }
mmrestdownn  = { \once \override MultiMeasureRest #'staff-position = #-4 }
mmrestup     = { \once \override MultiMeasureRest #'staff-position = #4 }
mmrestupp    = { \once \override MultiMeasureRest #'staff-position = #6 }neutral      = { \stemNeutral \tieNeutral \slurNeutral \dotsNeutral }
nodiffdot    = { \override Staff.NoteCollision #'merge-differently-dotted = ##f }
shifttiedown = { \once \override Tie #'extra-offset = #'( 0 . -0.5 ) }
shifttieup   = { \once \override Tie #'extra-offset = #'( 0 . 0.5 ) }
shifttieupp   = { \once \override Tie #'extra-offset = #'( 0 . 1 ) }
staffdown    = { \change Staff = "left"  }
staffup      = { \change Staff = "right" }
textup       = { \once \override TextScript #'extra-offset = #'(0 . 1 ) }
dyntextup    = { \once \override DynamicText #'extra-offset = #'(0 . 1 ) }
showBrackets = { \override TupletBracket #'bracket-visibility = ##t }
hideBrackets = { \override TupletBracket #'bracket-visibility = ##f }
showTripletNumber = { \override TupletNumber #'transparent = ##f }
hideTripletNumber = { \override TupletNumber #'transparent = ##t }
triolen      = { #(override-auto-beam-setting '(end * * * *) 1 4)
                 #(override-auto-beam-setting '(end * * * *) 2 4)
                 #(override-auto-beam-setting '(end * * * *) 3 4)
                 #(override-auto-beam-setting '(end * * * *) 4 4)
                 \hideTripletNumber}
duolen       = { #(revert-auto-beam-setting '(end * * * *) 1 4)
                 #(revert-auto-beam-setting '(end * * * *) 2 4)
                 #(revert-auto-beam-setting '(end * * * *) 3 4)
                 #(revert-auto-beam-setting '(end * * * *) 4 4) }

global = {
   \key d \minor
   \time 2/2
   #(set-accidental-style 'default)
   \override Staff.NoteCollision #'merge-differently-dotted = ##t
   \hideBrackets
   \set tupletSpannerDuration = #(ly:make-moment 1 4)
   \override BreathingSign #'text = #(make-musicglyph-markup "scripts.caesura")
   #(override-auto-beam-setting '(end 1 16 * *) 1 4)
   #(override-auto-beam-setting '(end 1 16 * *) 2 4)
   #(override-auto-beam-setting '(end 1 16 * *) 3 4)
   #(override-auto-beam-setting '(end 1 16 * *) 4 4)
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

rechtsa = {
   \new Voice \relative d' {
      \global
      \once \override TextScript #'extra-offset = #'( -4 . 2 )
      d2^\markup { \large \bold "Allegro" } <e cis>
      <f~ d>2 f8 cis \textup d^\markup { \italic "ad libitum" } e
      f8 a b gis a d f cis
      d8 f b a g f e d
      %% Takt  5 ==================================================
      cis8 d f e d cis d b
      <a d,>2 <b d, b>
      <e, cis a>2 r
      R1
      \mmrestup R1
      %% Takt 10 ==================================================
      \mmrestup R1
      <d' a d,>2 <c a fis d>
      <b g d>2~ d,8 c b c
      d8 g b fis g b d a
      b8 d g cis, d a b g
      %% Takt 15 ==================================================
      <b f d>2 <e, cis>
      <a d,~> d,8 cis d e
      \stemUp f8 a b gis a d f cis
      d8 f b a g f e d
      cis8 e d cis d c b a
      %% Takt 20 ==================================================
      <g es>2^\markup { \italic "ritard."} cis,
      d2 \staffdown b
      \tieUp <a e>1~
      a2 \staffup r4 a^\markup { \italic "a tempo"}
      d4( f e cis)
      %% Takt 25 ==================================================
      \halsup d4( f b2~
      b4 a e f8 g)
      f8 d b' gis a e f d
      c!8 e a e dis fis d h'
      c,8 e a e'~ e c h a
      %% Takt 30 ==================================================
      gis8 a h d~ d h a gis
      a2 r4 a
      c4 b! a h
      d4 c h cis
      d4 a'\rest a\rest b,!
      %% Takt 35 ==================================================
      a4 d2 g,4~
      g8 f g a b g f e
      a4 s4 s2
      s1
      d2~ d8 f e d
      %% Takt 40 ==================================================
      c8 e a e dis fis d h'
      c,8 h a e'~ e c h a
      gis8 a h c d h a gis
      a4 g'\rest g\rest e,
      a4 e' <d gis,> h!
      %% Takt 45 ==================================================
      <c~ a>4 <f c> e cis
      d4 a' g e
      f4 b!~ b8 g f e
      \shifttieupp f2~ f8 e d g
      c,8 d c f b, d c b
      %% Takt 50 ==================================================
      a8 b c d es g f es
      d2~ d8 e! f g
      e2 r4 c
      f4( a g e)
      f4 a d,2~
      %% Takt 55 ==================================================
      d4 c g a8 b
      a8 c d f, e g es c'
      d,8 f b d, c e! c a'
      b,8 d g e c' a f'4~
      f8 a g f \afterGrace e2\trill { d16[ e] }
      %% Takt 60 ==================================================
      f8 s s4 s2
      s1
      s1
      s1
      s1
      %% Takt 65 ==================================================
      \stemDown <d b g>4 r <d c a> r
      <d h g>2 r
      <e d h>2 r
      \times 2/3 { \triolen \stemUp e8 c h a h c e, c' h a h c
      \neutral f8 c h a h c d c h f' d h
      %% Takt 70 ==================================================
      } \duolen e4 r r2
      <e cis b g>4 r <d a> f\rest
      \times 2/3 { \triolen <a d,>8 f! e d e f a, f' e d e f
      g8 d cis h cis d g e cis e cis a
      f'8 d c! b! d f e g a b a g
      %% Takt 75 ==================================================
      a8 e d c d e dis c a a' dis, c
      h' e, d! h d f e d h b cis e
      a,8 cis d a' d, h c e a c, fis a
      gis8 a h a gis f! e d e f e d
      c8 h d f d h a gis h e h gis
      %% Takt 80 ==================================================
      e'8 c h a h c e d c h c d
      e8 c h a h c d, c' h a h c
      d,8 gis a h a gis f' d h d h gis
      } \duolen a4 c h gis
      \halsup a4 c f2~
      %% Takt 85 ==================================================
      f4 e h c8 d
      c4( cis d e
      f4 a g e)
      s4 \times 2/3 { \triolen e8 f e d e f c! e f
      h,8 e f d e f c e f a, e' f } \duolen
      %% Takt 90 ==================================================
      \neutral h,8 f' e d c h a gis
      \halsup a4( c h gis)
      a4( a' g! e)
      f4~( <b! f> <a e> <fis es>)
      \neutral <g d>4( <c c,> <h fis> gis)
      %% Takt 95 ==================================================
      a8 c h a gis f! e d
      c8 e f a, gis h g e'
      f,8 a d f, e gis e c'
      d,8 f h gis e' c \halsup a'4~
      a8 c h a \afterGrace gis2\trill { fis16[ gis] }
      %% Takt 100 =================================================
      a8 s s4 s2
      s1
      s1
      s1
      \halsdown \times 2/3 { \triolen \showTripletNumber \tupletDown a,8 f e d e f \neutral a, f' e d e f
      %% Takt 105 =================================================
      \hideTripletNumber a8 f e d e f a g f e f g
      a8 g fis } \duolen c'16 a g fis es' c b! a c a g fis
      \stemUp a16 fis es d \stemDown es \staffdown \stemUp c a g fis g a b c \staffup \stemDown d e fis!
      \neutral g8 r d'16 c h a g a h c d e fis g
      g,8 r d16 c b! a g a b c d e fis g
      %% Takt 110 =================================================
      d16 e f! g a h cis d a h cis d e f g a
      b!16 g f e g e d cis e cis b! a cis a g e
      d'16 a g f a f e d g e d cis e cis b a
      f'16 d b a a' f e d g d e fis g a b c
      d16 b a g d' a g f! cis' b a g e' cis b a
      %% Takt 115 =================================================
      d16 d, f a d c! b a c b a g b a g fis
      g16 d g b e d c h d c h a c h a gis
      \halsup a8 d\rest cis4 d e
      s4 <b' d,> <a e> <fis a,>
      g4 e f! e~
      %% Takt 120 =================================================
      e16 d e f \neutral g a b a g f e d cis! d e f
      g16 f e d cis e g f e d cis b! s4
      \halsup d4 f e <cis a~>
      <d a>4 f \forceshift <b g>2~
      <b g>4 <a f> <e cis> <f d>8 <g e>
      %% Takt 125 =================================================
      <f d>2 r4 a,
      b4 d c! a
      b4 e d h
      c4 e d e
      f4( a g! e)
      %% Takt 130 =================================================
      s4 b'~ b4. a8~
      a4 g4~ g4. f8~
      f4 e a8 f d4~
      d8 f e d cis2\trill
      <d d,>2. \breathe d,4
      %% Takt 135 =================================================
      g4 b a \tieNeutral fis~
      <es' c fis,>4( <d b g>) r4 d,
      g4 b a \tieNeutral fis~
      <es' c fis,>4( <d b g>) r4 g,
      <d' f,!>4( <cis e,>) r4 e,
      %% Takt 140 =================================================
      <e' b g>4( <d a f>) r4 a
      e'4 g f e
      f4 d \tieUp a'2~
      a2 \afterGrace gis\trill { fis16[ gis] }
      a4 e g!2~
      %% Takt 145 =================================================
      g2 \afterGrace fis\trill { e16[ fis] }
      g4 d f!2~
      f1~
      f1~
      f1~
      %% Takt 150 =================================================
      f1~ f4 gis a d,
      \afterGrace cis1\trill { h16[ cis] }
      d1\fermata
   }
}

rechtsb = {
   \new Voice \relative d' {
      \global
      \halsdown \dotsDown
      s1*24
      %% Takt 25 ==================================================
      d1~
      d2 cis
      s1
      s1
      s1
      %% Takt 30 ==================================================
      s1*5
      %% Takt 35 ==================================================
      s1
      s1
      s4 <f' d> <f d> <f d>
      \stemUp \shiftOn <f d>2 <e c~>
      c2 h
      %% Takt 40 ==================================================
      \halsdown a4 e\rest e\rest f!
      e4 a2 d,4~
      d4 gis!2 e4
      a4 c h gis
      a2 s
      %% Takt 45 ==================================================
      s1
      s4 d~ d8 cis h cis
      <d a>8 cis d e \stemUp \shifttiedown c2~
      c8 b a b \stemDown g2~
      g4 a g s
      %% Takt 50 ==================================================
      a1~
      a8 b f as g2~
      g8 c g b a! b a g
      a8 b c f d f des g,
      c8 d! e f d b g f
      %% Takt 55 ==================================================
      e8 g c f,~ f f e4
      f4 s s2
      s1
      s2 s4 r8 g
      a2 c~
      %% Takt 60 ==================================================
      \times 2/3 { \triolen \showTripletNumber c8 a g \stemUp f g a c, a' g f g a
      \hideTripletNumber c8 a g f g a c b a g a b
      c8 a g f g a c, a' g f g a
      fis8 a b c b a \neutral es' c a fis' d c
      } \duolen b2 r
      %% Takt 65 ==================================================
      s1*15
      %% Takt 80 ==================================================
      s1
      s1
      s1
      s1
      \halsdown a1
      %% Takt 85 ==================================================
      gis4 a s2
      \times 2/3 { \triolen c8 h a cis b a d h a e' b a
      f'8 b, a a' h, a g' c,! a e' cis a
      f'8( e d } \duolen e4 d c
      h4 d c a)
      %% Takt 90 ==================================================
      s1
      a4 e fis gis
      a4 h cis e
      d2 a2
      s1
      %% Takt 95 ==================================================
      s1
      s1
      s1
      s2 s4 r8 h
      c2 e~
      %% Takt 100 =================================================
      \times 2/3 { \triolen \showTripletNumber e8 c h \tupletDown a h c \neutral e, c' h a h c
      \hideTripletNumber e8 c h a h c e d c h c d
      e8 d cis } \duolen g'16 e d cis b'! g f e g e d cis
      e16 cis b! a b g e d cis d e f g a h cis!
      \stemUp d8 s s4 s2
      %% Takt 105 =================================================
      s1*10
      %% Takt 115 =================================================
      s1
      s1
      s4 \halsup a4~ a2~
      <f' a,>4 s s2
      \halsdown d1
      %% Takt 120 =================================================
      cis4 s s2
      s2 s4 \halsup a~
      a2 g
      s2 e~
      \halsdown <e cis>4 <f d> <g e> <f d>8 <e cis>
      %% Takt 125 =================================================
      <f d>8 \staffdown \halsup \breathe a, b a gis h g e'
      f,8 \staffup \halsdown d' g d es fis a d,
      b'8 g gis a f! gis h e,~
      e8 a gis a gis a h d
      c8 h c cis d f <a, g>4
      %% Takt 130 =================================================
      <f' d f,>8 d b'! d, cis e c a'
      b,8 d g b, a cis a f'
      g, b e cis a4 h
      \shiftOff a1~
      <a fis>4 g2 s4
      %% Takt 135 =================================================
      s1
      s1
      s1
      s1
      b2 s
      %% Takt 140 =================================================
      s1
      \tieDown a1~
      a2 r4 f'~
      f2 e2~
      e4 g,\rest g\rest es'~
      %% Takt 145 =================================================
      es2 d~
      d4 e,\rest e\rest f
      c'4 es d b
      a4 c b f
      as4 h c as~
      %% Takt 150 =================================================
      as4 cis d gis,
      a!1~
      a1~
      a1
   }
}

linksa = {
   \global
   \clef "bass"
   \relative a {
      \dyntextup <a f>2^\f <a g e>
      <a f d>2 r
      R1
      R1
      %% Takt  5 ==================================================
      R1
      <a f>2 <g e>
      e2~ e8 cis e f
      g8 a b g e' cis b a
      g8 b \staffup \stemDown e d cis e g f
      %% Takt 10 ==================================================
      e8 g b a g e \staffdown \stemNeutral cis b
      a2 <a fis>
      <b g>2 r
      R1
      R1
      %% Takt 15 ==================================================
      g2 b
      <a f>2~ f8 e f g
      a8 cis \staffup \stemDown d e f g gis a
      b8 a g! f e d g f
      e8 g f e f a g f
      %% Takt 20 ==================================================
      \staffdown \halsdown <b, g>2 <a g e!>
      <f d>2 \tieDown <g d~>
      d2 cis
      <f d>2 r
      \stemUp a1
      %% Takt 25 ==================================================
      s1
      \halsdown a,1
      d2 r4 \neutral d
      a'4( c h gis)
      a4 c f2~
      %% Takt 30 ==================================================
      f4 e h! c8 d
      c8 a f' dis e h c a
      \staffup \halsdown d8 c d e f e g f
      e8 d e fis g fis a g
      f!8 a d a gis h g e'
      %% Takt 35 ==================================================
      f,8 e d a'~ a f e d
      cis d e f g e d cis
      d4 s4 s2
      s1
      s1
      %% Takt 40 ==================================================
      s1*15
      %% Takt 55 ==================================================
      s1
      s1
      s1
      s1
      \staffdown \halsup c1~
      %% Takt 60 ==================================================
      c2 s
      s1
      s1
      s1
      s1
      %% Takt 65 ==================================================
      s1*30
      %% Takt 95 ==================================================
      s1
      s1
      s1
      s1
      e1~
      %% Takt 100 =================================================
      e2 s
      s1
      s1
      s1
      s1
      %% Takt 105 =================================================
      s1*5
      %% Takt 110 =================================================
      s1
      s1
      s1
      s1
      s2 s4 a,~
      %% Takt 115 =================================================
      a4 s s2
      s1
      s1
      s1
      s1
      %% Takt 120 =================================================
      s1
      s2 s4 \staffup \halsdown a'16 g f e
      d8 c\rest b4\rest b4\rest e
      <f d>4 g8 f e4 d
      s1
      %% Takt 125 =================================================
      s1*5
      %% Takt 130 =================================================
      \staffdown \halsup d,4 f g a
      s1
      g'2 s2
      s1
      s1
      %% Takt 135 =================================================
      s1*5
      %% Takt 140 =================================================
      s1
      s1
      s1
      \staffdown \halsup h1
      <a cis,>2 r
      %% Takt 145 =================================================
      a1
      <g h,>2 r
      R1
      R1
      R1
      %% Takt 150 =================================================
      r2 \clef "bass" \neutral d,
      d'4 e f d
      \tieDown <g e a,~>1
      <f d a>1\fermata
   }
}

linksb = {
   \global
   \clef "bass"
   \relative d {
      s1*19
      %% Takt 20 ==================================================
      s1
      s1
      s1
      s1
      <f d>2 <g a,>
      %% Takt 25 ==================================================
      <f d b>2 \halsup <e~ g,>
      e4 f g f8 e
      f2 s
      s1
      s1
      %% Takt 30 ==================================================
      s1
      s1
      s1
      r2 r4 \neutral a,
      d4 f e cis
      %% Takt 35 ==================================================
      d4 f b2~
      b4 a e f8 g
      f8 e d e f g a h
      c8 h a h c \staffup \halsdown d e fis
      g fis e fis g4 gis
      %% Takt 40 ==================================================
      s1
      s1
      s1
      s1
      a,4\rest e' f e
      %% Takt 45 ==================================================
      e4 f <e' h> <b e,>
      a1
      s4 \staffdown f, c' \staffup b'!
      a4 f \staffdown \neutral d2
      e4 f s c
      %% Takt 50 ==================================================
      f,8 g a b c es d c
      b4 r r2
      s1
      s1
      r2 r4 b~
      %% Takt 55 ==================================================
      b4 a b c~
      c4 f,,( g a
      b4 d e f
      g4 b a d)
      c2 b
      %% Takt 60 ==================================================
      a2 r
      <c a f>4 r <c b g> r
      <c a f>2 r
      <d c a fis>2 r
      \times 2/3 { \triolen \showTripletNumber \tupletUp d8 b a g a b d, b' a g a b
      %% Takt 65 ==================================================
      \hideTripletNumber d8 b a g a b d c b a b c
      d8 h a g a h d, h' a g a h
      gis8 h c d c h f' d h \staffup \halsdown gis' e d
      } \duolen c2 \staffdown \neutral r
      <f c a>4 r <f d h> r
      %% Takt 70 ==================================================
      \times 2/3 { \triolen <g b,!>8 e d cis d e g, e' d cis d e
      b8 cis d e d cis fis d a \staffup \halsdown a' fis d
      } \duolen \staffdown \neutral a4 r r2
      <e' d h>4 r <e cis a> r
      \clef "treble" d2 c!
      %% Takt 75 ==================================================
      f2 fis
      gis4 a gis g
      fis4 f e dis
      d!1~
      d1
      %% Takt 80 ==================================================
      c4 r r2
      R1
      r2 r4 \clef "bass" e~
      \times 2/3 { \triolen e8 c h a h c gis h c d c h
      a8 c h a h c d, c' h a gis a
      %% Takt 85 ==================================================
      d8 e d c h a gis h a gis fis e } \duolen
      a4( b! h cis
      d4 f e cis)
      d4( c! h a
      gis h a d,)
      %% Takt 90 ==================================================
      gis2 r
      s1
      s1
      s1
      r2 r4 e
      %% Takt 95 ==================================================
      a4( c h gis)
      a4 \breathe a, h cis
      d4 f gis a
      h4 d c fis
      \halsdown e2 <d h>
      %% Takt 100 =================================================
      <c a> 2 r
      \neutral <e c a>4 r <e d h> r
      <e cis b>2 r
      R1
      a,2 r
      %% Takt 105 =================================================
      <a f d>4 r <a g e> r
      <a fis es>2 r
      \mmrestdown R1
      <g d h>4 r r2
      <g d b!>4 r r2
      %% Takt 110 =================================================
      <f d a>4 r <a f d> r
      <b e, cis>4 r r a,
      <d a f>4( f e cis)
      d4 f b2~
      b4 a e f8 g
      %% Takt 115 =================================================
      f4 <es' fis,> <d g,> <c a>
      b4 <f'! gis,> <e a,> <d h>
      \staffup \halsdown c16 a c e a g f e g f e d f e d cis
      d16 c! \staffdown \stemUp b a \neutral g f e d cis e d cis a' es d c
      h16 d c h g' d c b a c b a gis h a gis
      %% Takt 120 =================================================
      g!4 r r2
      s1
      s1
      s1
      s1
      %% Takt 125 =================================================
      s1
      s1
      r2 r4 e'
      a4 c h gis
      a2. a,4
      %% Takt 130 =================================================
      d2 e4 fis
      <b g>4 \clef "treble" <d b> <e cis> \tieDown <f d~>
      \shiftOn d4 e f r8 e
      f2 <g e>
      s2 s4 \neutral r4
      %% Takt 135 =================================================
      r4 \clef "bass" <d b> <es c> <c a>~
      <c a>4 <d b> r2
      r4 <d b> <es c> <c a>~
      <c a>4 <d b> r2
      b2 r4 cis~
      %% Takt 140 =================================================
      cis4 d r2
      \clef "treble" <g a,~>1
      <f a,>2 r
      c4\rest \halsdown d2.
      s1
      %% Takt 145 =================================================
      c4\rest c!2.
   }
}

pedal = {
   \global
   \clef "bass"
   \relative d {
      \dyntextup d2^\f a
      d,2 r
      R1
      R1
      %% Takt  5 ==================================================
      R1
      f2 g
      a2 r
      R1
      R1
      %% Takt 10 ==================================================
      R1
      fis'2 d
      g,2 r
      R1
      R1
      %% Takt 15 ==================================================
      g'2 g,
      f2 r
      R1
      R1
      R1
      %% Takt 20 ==================================================
      g2 a
      b2 g
      a1
      d,2 r
      R1
      %% Takt 25 ==================================================
      R1*5
      %% Takt 30 ==================================================
      R1*5
      %% Takt 35 ==================================================
      R1
      R1
      R1
      R1
      r2 r4 e
      %% Takt 40 ==================================================
      a4 c h gis
      a4 c f2~
      f4 e h c8 d
      c8 e a e dis fis d h'
      cis,8 e c e h d gis, e'
      %% Takt 45 ==================================================
      a,8 c a c gis h g e'
      fis,8 a f d' e,4 \breathe a
      d4 f e c!
      d4 f b2~
      b4 a e2
      %% Takt 50 ==================================================
      f2 r4 f,
      b4 d h g
      c4 e c a
      d4 c h b
      a4 f b g
      %% Takt 55 ==================================================
      c2. c,4
      f1~
      f1~
      f2. h4
      c1
      %% Takt 60 ==================================================
      f2 r
      f4 r e r
      es2 r
      d2 r
      g2 r
      %% Takt 65 ==================================================
      g4 r fis r
      f!2 r
      e2 r
      a2 r
      a4 r gis r
      %% Takt 70 ==================================================
      g!4 r r2
      g4 r fis r
      f! 4 r r2
      e4 r a r
      d,4 r r2
      %% Takt 75 ==================================================
      R1
      R1
      R1
      R1
      r2 r4 e,
      %% Takt 80 ==================================================
      a4 c h gis
      a4 c f2~
      f4 e h c8 d
      c2 e
      f2 d
      %% Takt 85 ==================================================
      e1
      a1~
      a2. a,4
      d1~
      d1~
      %% Takt 90 ==================================================
      d2 r4 d8 e
      c8 e a, e' dis fis d f
      c8 e f a e g cis, a'
      d,8 f d f cis e c a'
      h, d e g dis fis d h'
      %% Takt 95 ==================================================
      c,4 dis e e,
      a1~
      a1~
      a2. dis4
      e1
      %% Takt 100 =================================================
      a2 r
      a4 r gis r
      g!2 r
      R1
      f2 r
      %% Takt 105 =================================================
      d4 r cis r
      c!2 r
      R1
      h4 r r2
      b!4 r r2
      %% Takt 110 =================================================
      a4 r a r
      g4 r r2
      f4 r r2
      R1
      R1
      %% Takt 115 =================================================
      R1
      R1
      R1
      R1
      R1
      %% Takt 120 =================================================
      R1
      R1
      r4 d' a' a,
      b2 g
      a2. a4
      %% Takt 125 =================================================
      d4 f e cis
      d4 b a fis
      g4 c h gis
      a4 e' f e
      a4 a, h cis
      %% Takt 130 =================================================
      d1~
      d1~
      d2. gis4
      a1
      b!2. r4
      %% Takt 135 =================================================
      r2 r4 d,
      g2 r
      r2 r4 d
      g2 r
      g2 r
      %% Takt 140 =================================================
      f2 r
      cis1
      d2 r
      r2 e
      a,2 r
      %% Takt 145 =================================================
      r2 d,
      g2 gis
      a2 b!
      c2 d
      des2 c
      %% Takt 150 =================================================
      h2 b
      a1~
      a1
      d,1\fermata
      \bar "|."
   }
}

fugaglobal = {
   \key d \minor
   \time 2/2
   #(set-accidental-style 'default)
   \override Staff.NoteCollision #'merge-differently-dotted = ##t
   \hideBrackets
   \set tupletSpannerDuration = #(ly:make-moment 1 4)
   \override BreathingSign #'text = #(make-musicglyph-markup "scripts.caesura")
   #(override-auto-beam-setting '(end 1 16 * *) 1 4)
   #(override-auto-beam-setting '(end 1 16 * *) 2 4)
   #(override-auto-beam-setting '(end 1 16 * *) 3 4)
   #(override-auto-beam-setting '(end 1 16 * *) 4 4)
}

fugasopran = {
   \new Voice \relative g' {
      \fugaglobal \halsup
      \mmrestup R1
      \mmrestup R1
      \mmrestup R1
      \mmrestup R1
      %% Takt  5 ==================================================
      g2 a
      d,2 d'4\rest f
      e4 d c h8 c
      a4 d2 c4
      h4 a gis fis8 gis
      %% Takt 10 ==================================================
      a4 b! a g!
      cis2 d4 c
      b4 a8 b g4 d'~
      d4 e cis2
      d4 c! b! a
      %% Takt 15 ==================================================
      gis f' e2~
      e4 d8 c h4 a
      d4 c h2
      e4 d c2~
      c4 h8 a d4 h
      %% Takt 20 ==================================================
      gis2 a4 h
      c4 d e2~
      e4 d8 c h4 a
      h4 c d2~
      d4 c8 b! a4 gis
      %% Takt 25 ==================================================
      a2 h
      e,2 f'4\rest f
      e d c h!8 c
      a4 d2 c4
      h2 f'4\rest dis
      %% Takt 30 ==================================================
      e4 h c d!
      c2 h
      a4 h c2~
      c4 b! a b8 c
      b4 c d2~
      %% Takt 35 ==================================================
      d4 d g f
      e4 d c d8 e
      f2. f4
      e4 d c,\rest \stemDown es'
      \stemUp d2. c8 b
      %% Takt 40 ==================================================
      a4 b c8 d e!4
      f1~
      f4 g es2~
      es4 d c2~
      c4 f\rest f2\rest
      %% Takt 45 ==================================================
      \mmrestupp R1
      \mmrestupp R1
      c2 d
      g,2 a'4\rest b
      a4 g f e8 f
      %% Takt 50 ==================================================
      d4 g2 f4
      e4 a2 g4
      f4 b2 as4
      g1~
      g4 as8 g f2~
      %% Takt 55 ==================================================
      f4 g8 f es4 d
      c4 g'8 f es4 d
      c4 g'8 f es2~
      es4 a, b!4 d8 c
      b4 a g d'8 c
      %% Takt 60 ==================================================
      b4 a g2~
      g4 a8 g f!4 e
      f4 f'\rest f\rest c
      b4 g8 a b4 h
      c4 d8 h c2~
      %% Takt 65 ==================================================
      c4 es d c
      b4 a8 b g4 f'
      e!4 d8 e cis4 b'
      a4 g f e8 f
      d4 c! b a8 b
      %% Takt 70 ==================================================
      g4 f e2
      d4 cis d e
      d'4\rest b a g
      d'4\rest d e fis
      g4 a8 g b4 a\rest
      %% Takt 75 ==================================================
      f2\rest f4\rest b!
      a4 g f es8 f
      d4 f\rest f\rest as
      g4 f e d8 e
      c4 f2 e4
      %% Takt 80 ==================================================
      d2 e
      a,2 d4\rest b
      a4 g f e8 f
      d4 g2 f4
      e4 a2 g4
      %% Takt 85 ==================================================
      f4 b! a2
      b4 g'2 f4
      e!4 a2 g4
      f4 e8 d cis2
      d4 f b2~
      %% Takt 90 ==================================================
      b2. gis4
      a4 fis\rest fis2
      g4 f! e d
      cis2 d4 e
      d2 cis
      %% Takt 95 ==================================================
      d1^\fermata
   }
}

fugaalt = {
   \new Voice \relative d' {
      \fugaglobal \halsdown \dotsDown
      \once \override TextScript #'extra-offset = #'( -4 . 0 ) d2_\markup { "Volles Werk" } e
      a,2 e'4\rest b'
      a4 g f e8 f
      d4 g2 f4
      %% Takt  5 ==================================================
      e4 d cis h8 cis
      d4 \staffdown \halsup c! h a
      gis2 a4 \staffup \halsdown g'!
      f4 e8 f d4 a'
      f2 e4 d
      %% Takt 10 ==================================================
      cis2. d4
      e4 b' a2~
      a4 d, g a
      b2 a4 g
      f4 e d2~
      %% Takt 15 ==================================================
      d4 gis, e'2
      a4 f8 e d2~
      d4 c\rest e2~
      e2 f4 e
      d1~
      %% Takt 20 ==================================================
      d4 e fis gis!
      a4 h c2~
      c4 a e2\rest
      c4\rest a' b! h
      g2 c,~
      %% Takt 25 ==================================================
      c4 h8 c d2~
      d4 c8 h c4 d'
      c4 h a gis
      a1~
      a4 gis8 fis h!2~
      %% Takt 30 ==================================================
      h4 gis a h!8 a
      gis4 a8 fis gis4 d
      c4 d e fis8 gis
      a4 g! fis2
      g4 a b2~
      %% Takt 35 ==================================================
      b1~
      b2 a4 g
      f2 g
      c,2 \stemUp c'2~
      \stemDown c4 b8 a g2
      %% Takt 40 ==================================================
      f4 g a b
      a4 c b a
      g2 c4 b
      a4 b es,! f8 es
      c'4 b a g
      %% Takt 45 ==================================================
      fis4 g8 a d,4 g\rest
      g4\rest d'8 c b2~
      b4 a8 g f4 c\rest
      c2\rest c'~
      c4 b a g
      %% Takt 50 ==================================================
      f4 e8 f d4 g~
      g4 f e a~
      a4 g f h~
      h4 g c b
      as2. b8 as
      %% Takt 55 ==================================================
      g4 d' c h
      c4 d c h
      c4 d c a!8 g
      fis2 g4 a
      b4 fis g a
      %% Takt 60 ==================================================
      b4 fis g e!8 d
      cis1
      d4 b' a g
      f4 e8 f d4 g~
      g4 f e a~
      %% Takt 65 ==================================================
      a4 g fis8 g a4
      r4 es d c
      b4 c\rest c\rest f
      e4 b' a b
      a4 g8 a f4 e
      %% Takt 70 ==================================================
      d2~ d8 cis h cis
      s1
      <d f>4 <g e>8 <f d> <a f>4 a,\rest
      s1
      b'4\rest es d <c fis,>
      %% Takt 75 ==================================================
      <b g>4 e,\rest e\rest g'
      f4 e d e,\rest
      e2\rest e4\rest f'
      e!4 d c b!
      a4 g8 a f2~
      %% Takt 80 ==================================================
      f4 g8 a b4 g\rest
      e2 f
      cis2 a4\rest a'
      d4 c b a8 b
      g4 e'2 cis4
      %% Takt 85 ==================================================
      a4 f'2 es4
      d4 a8 b g4 d'
      e4 g, f cis'
      d4 h b a8 g
      f4 a d2~
      %% Takt 90 ==================================================
      d2 e4 d
      cis4 e,\rest a2
      g4 a b2~
      b2 h
      a2 g
      %% Takt 95 ==================================================
      f1
   }
}

fugatenor = {
   \fugaglobal
   \clef "bass"
   \relative d {
      R1*4
      %% Takt  5 ==================================================
      R1
      \mmrestdown R1
      \mmrestdown R1
      R1
      d2 e
      %% Takt 10 ==================================================
      a,2 r4 b'
      a4 g f e8 f
      d4 g2 f4
      e2. f8 e
      d4 e f d
      %% Takt 15 ==================================================
      h'2 a4 g!
      f2 fis
      g2 gis
      a4 r r2
      a2 h
      %% Takt 20 ==================================================
      e,2 r4 f'!
      e4 d c h8 c
      a4 d2 c4
      h4 a g f
      g4 r r2
      %% Takt 25 ==================================================
      R1
      r2 r4 gis
      a f' e2
      r4 \clef "treble" a8 g! f4 e
      dis2. fis4
      %% Takt 30 ==================================================
      e4 d! c f!
      e2 r
      R1
      c2 d
      g,2 r4 a'
      %% Takt 35 ==================================================
      g4 f e d8 e
      c4 f2 e4
      \clef "bass" d4 c h a8 h
      c4 b! a \clef "treble" f'~
      f2. e!4
      %% Takt 40 ==================================================
      f4 r r2
      R1
      R1
      R1
      d2 es
      %% Takt 45 ==================================================
      a,2 r4 c'
      b4 a g f!8 g
      e!4 a2 g8 f
      e4 r r2
      R1
      %% Takt 50 ==================================================
      R1
      R1
      r2 f2~
      f4 g8 f es4 des
      c4 es d! c
      %% Takt 55 ==================================================
      h2 c4 g'8 f
      es4 h c g'8 f
      es4 \clef "bass" h c2~
      c4 d8 c b!4 fis
      g4 d'8 c b4 fis
      %% Takt 60 ==================================================
      g4 d'8 c b2
      r2 r4 b
      a4 g f e8 f
      d4 g2 f4
      e4 a2 g4
      %% Takt 65 ==================================================
      fis2 r4 es'
      d4 c b a8 b
      g4 f' e! d8 e
      cis4 r r g'
      f4 e8 f d4 c
      %% Takt 70 ==================================================
      b4 a g2
      f4 a h cis
      s1
      \staffup \halsdown f4 e8 f d4 c!
      b4 a\rest a\rest s
      %% Takt 75 ==================================================
      \staffdown \neutral r4 cis, d e
      f4 g8 f a2
      b4 h c d
      e!4 f8 e g4 r
      R1
      %% Takt 80 ==================================================
      r2 g,
      a2 d,
      r4 e' d c!
      b4 a8 b g4 d'~
      d4 cis h e~
      %% Takt 85 ==================================================
      e4 d c! fis,
      g4 a b h
      c4 cis d e
      f2 e
      d4 a f'2~
      %% Takt 90 ==================================================
      f2 e~
      e4 r d2~
      d4 r e f
      g2 f4 e
      f2 e
      %% Takt 95 ==================================================
      d1^\fermata
   }
}

fugapedal = {
   \fugaglobal
   \clef "bass"
   \relative g, {
      R1*4
      %% Takt  5 ==================================================
      R1*5
      %% Takt 10 ==================================================
      R1
      R1
      R1
      g2 a
      d, r4 f'
      %% Takt 15 ==================================================
      e4 d c h8 c
      a4 d2 c4
      h4 e2 d4
      c4 h a g
      f1
      %% Takt 20 ==================================================
      e2 r
      r2 r4 e'
      f2 fis
      g2 r4 d
      es2 e
      %% Takt 25 ==================================================
      f2. d4
      gis4 e a r
      r4 d, e c
      f2. a,4
      h2. a'4
      %% Takt 30 ==================================================
      gis4 e a d,
      e1
      a,2 r
      R1
      R1
      %% Takt 35 ==================================================
      R1
      R1
      R1
      R1
      b2 c
      %% Takt 40 ==================================================
      f,2 r4 g'
      f4 es d c8 d
      b4 es2 d4
      c4 b a f
      b4 g c2~
      %% Takt 45 ==================================================
      c4 a fis' d
      g2 r4 g,
      c2 r4 b
      b' g e c
      f2 r4 a,
      %% Takt 50 ==================================================
      b2 r4 h
      c2 r4 cis
      d2 r4 d
      es2 r4 e
      f2 r4 f
      %% Takt 55 ==================================================
      g1~
      g2 r
      g2 a!
      d,1~
      d2 r
      %% Takt 60 ==================================================
      d2 e!
      a,2 r
      R1
      R1
      R1
      %% Takt 65 ==================================================
      R1*5
      %% Takt 70 ==================================================
      g2 a
      d,2 r4 b''!
      a4 g f e8 f
      d2 r4 es
      d4 c b a8 b
      %% Takt 75 ==================================================
      g4 a h cis
      d4 e8 d f4 fis
      g4 g, a h
      c4 d8 c e2
      f2 a4 f
      %% Takt 80 ==================================================
      b2 r4 g
      cis2 r4 d,
      a1~
      a1~
      a1~
      %% Takt 85 ==================================================
      a1~
      a1~
      a2 r
      gis2 a
      d,2 r4 f'
      %% Takt 90 ==================================================
      e4 d cis h8 cis
      a4 d2 c!4
      b!4 a g2~
      g2 gis
      a1
      %% Takt 95 ==================================================
      d,1 \fermata
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
            \huge "Praeludium III"
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
            \set Staff.midiInstrument = "church organ"
            \context Voice = pedal \transpose d d, \pedal
         }
      >>
   }

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 82 2)
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
            \huge "Fuge III"
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
