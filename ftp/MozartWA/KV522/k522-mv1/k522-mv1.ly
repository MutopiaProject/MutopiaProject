\version "2.18.2"
\include "english.ly"
#(set-global-staff-size 16)

\header {
  title = "Divertimento: Ein Musikalischer Spass (A Musical Joke)"
  composer = "Wolfgang Amadeus Mozart, 1787"
  opus = "K. 522"
  subtitle = "Movement I"
%mutopia headers
  mutopiatitle = "Ein Musikalischer Spass (A Musical Joke) Mv 1"
  mutopiacomposer = "MozartWA"
  mutopiaopus = "KV 522"
  mutopiainstrument = "Orchestra: Horns, Violin, Viola, 'Cello"
  date = "1787"
  source = "free-scores.com"
  style = "Classical"
  license = "Public Domain"
  maintainer = "Martin Willett"
  maintainerEmail = "mwillett1@cox.net"
  maintainerWeb = "http://harvestsongmedia.com/"
  lastupdated = "2015/August/29"
  
 footer = "Mutopia-2015/09/01-553"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}
global = {
 \time 4/4
}

horn = \relative c'' {
\set Staff.instrumentName = "Corni in F "
\set Staff.midiInstrument = "brass section"
%1
\repeat volta 2 {
| <a f'>4^\markup { Allegro } <a f'> <a f'> r
| <c g'> <c g'> <c g'> r
| <f a>8 <g bf> <a c> <g bf> <f a>4 <c g'>
| <a f'>4 <a f'> <a f'> r 
| <c g'> <c g'> <c g'> r
| <f a>8 <g bf> <a c> <g bf> <f a>4 <c g'>
| <a f'>4 <a f'> <a f'> r
| <f f'>4 <f f'>4 <f f'>4 <f f'>4
| <a f'>4 <a f'>4 <a f'>4 <a f'>4
%10
| <c g'> <c g'> <c g'> <c g'>
| <a f'> <a f'> <a f'> r
| <f' g>1_(\p
| <f a> )
| <c g'>
| <a f'>4 <a f'> <a f'> r
| <c g'>2\f <c, g''>
| <f a'>4 <c' c'> g' g
| <c, g'> <c g'> <c, g''> <c g''>  
| <f a'> <c' c'> g' r
%20
| r1
| r1
| r1
| r1
| \set doubleSlurs = ##t <g g>1\p(  
| <g g>)(
| <g g>)
| <c, g'>4\f r <c c'> r
| f4 g a2
| <c, g'>4 <c g'>8. <c g'>16 <c c'>4 <c c'>8. <c c'>16
%30
| f4 g <c, g'> <c c'>8 <c c'>
| <c c'>4 <c c'>8 <c c'> <c c'>4 <c c'>8 <c c'>
| <c c'>4 <c, g''> <c g''> r } 
| <f' g> <f g> <f g> r
| <c g'> <c g'> <c g'> r
| <f g>8 <f g> <f g> <f g> <f g> <f g> <f g> <f g>
| <c g'>4 <c g'> <c g'> r
| r1
| r1
| <f, f'>4 <f f'> <f f'> r
%40
| <f f'>4 <f f'> <f f'> r
| <f f'>8 <f f'> <f f'> <f f'> <f f'> <f f'> <f f'> <f f'>
| <f f'>4 <f f'> <f f'> r
| r1
| r1
| r1
| <c' g'>4\p <c g'> <c g'> r
| r1
| <c g'>2 <f a>
| <c g'>4 <f a>8 <g bf> <a c>4 <g bf>8 <f a>
%50
| <c g'>4 <c g'> <c g'>8 <g' bf>\f <f a> <c g'>
| <a f'>4 <a f'> <a f'> r
| <c g'> <c g'> <c g'> r
| <f a>8 <g bf> <a c> <g bf> <f a>4 <c g'>
| <a f'> <a f'> <a f'> r
| <f f'> <f f'> <f f'> <f f'>
| <a f'> <a f'> <a f'> <a f'>
| <f' g>1\p~
| <f a>1
| <f, f'>4\f <f f'> <f f'> <f f'> 
%60
| <f f'> <f f'> <f f'> <f f'>
| <f f'>2 bf'8 a g f
| <c c'>4 <c, c'>8. <c c'>16 <c c'>4 r
| <f c'>2 <f c'>2
| <f f'>4 <f f'> <c' g'> <c, g''>
| <f c'> <f c'> <f c'> <f c'>
| <f f'> <a f'>8~ <f f'> <c g''>4 r
| r1
| r1
| r1
%70
| r1
| <c c'>1~
| <c c'>~
| <c c'>
| <f c'>4 r <a f'> r
| r2 \tuplet 3/2 { <a f'>8 <a f'> <a f'> } \tuplet 3/2 { <a f'>8 <a f'> <a f'> }
| <a f'>4 <f' a>8. <f a>16 <f a>4 <f a>8. <f a>16
| <f g>4 <c g'> <a f'>8 <f' a> <g bf> <c, g'>
| <a f'>4 <a f'>8 <a f'> <a f'>8 <c g'> <f a> <a, f'>
| \appoggiatura <a a'>16 <c g'>4 <c g'>8 <c g'> <c g'>2 
%80
| <a' c>8 <bf d> <a c> <g bf> <f a>4 <c g'>
| <a f'>4 <a f'>8 <a f'> <a f'> <c g'> <f a> <a, f'>
| \appoggiatura <bf c'>16 <f' bf>4 <f bf>8 <f bf> <f bf>2
| <bf d>8 <bf d> <a c> <g bf> <f a>4 <c g>
| <a f'>4 a8 c f4 <c c'>8 <a a'>
| <a f'>4 a8 c f4 <c c'>8 <a a'>
| <f f'>4 <a c>8 <a c> <a c> <a c> <a c> <a c>
| <a c>4 <f a>8 <f a> <f a> <f a> <f a> <f a>
| <f a>2. r4
 
}
violinOne = 
\relative c''{
  \set Staff.instrumentName = "Violino I "
  \set Staff.midiInstrument = "viola"
%1
| <a f'>4 <a f'> <a f'> r
| <c g'> <c g'> <c g'> r
| a'8 bf c bf a4 g
| <a, f'>4 <a f'> <a f'> r
| <c g'> <c g'> <c g'> r
| a'8 bf c bf a4 g
| <a, f'>4 <a f'> <a f'> r
| \tuplet 3/2 { d'8 c bf } \tuplet 3/2 { d c bf } \tuplet 3/2 { d c bf } \tuplet 3/2 { d c bf }
| \tuplet 3/2 { c bf a } \tuplet 3/2 { c bf a } \tuplet 3/2 { c bf a } \tuplet 3/2 { c bf a }
%10
| \tuplet 3/2 { bf a g } \tuplet 3/2 { bf a g } \tuplet 3/2 { bf a g } \tuplet 3/2 { bf a g }
| a4 a a r
| b2~\p b8( c d b)
| d( c) c c d( c bf? a)
| a( g) g g g( f g a)
| f4 f f r
| g2\f c
| \tuplet 3/2 { a8 g f } \tuplet 3/2 { e d c } d4 d
| g g c c
| \tuplet 3/2 { a8 g f } \tuplet 3/2 { e d c } d4 r
%20
| g,8\p d' b d g, d' b d
| g, e' c e g, e' c e
| g, f' d f g, f' d f
| g, g' e g g, g' e g
| \appoggiatura c16 b2 \appoggiatura c16 b2 
| \appoggiatura d16 c2 \appoggiatura d16 c2 
| \appoggiatura e16 d2 \appoggiatura e16 d2
| \tuplet 3/2 { e8\f d c } \tuplet 3/2 { b a g } \tuplet 3/2 { c b a } \tuplet 3/2 { g f e }
| f4 g a2
| \tuplet 3/2 { e'8\f d c } \tuplet 3/2 { b a g } \tuplet 3/2 { c b a } \tuplet 3/2 { g f e }
%30
| f4 g c, e8 g
| c4 e,8 g c4 e,8 g
| c4 <e, c'> <e c'> r
| <f d'> <f d'> <f d'> r
| <e c'> <e c'> <e c'> r
| <f d'>8 <f d'> <f d'> <f d'> <f d'> <f d'> <f d'> <f d'>
| <e c'>4 <e c'> <e c'> r
| g4\p f8 ef d4 c
| bf4 bf bf r
| <ef\f c'> <ef c'> <ef c'> r 
%40
| <d bf'> <d bf'> <d bf'> r
| <ef c'>8 <ef c'> <ef c'> <ef c'> <ef c'> <ef c'> <ef c'> <ef c'>
| <d bf'>4 <d bf'> <d bf'> r
| f4\p e!8 d c4 b!
| a a a r
| d8 ef d c bf!4 a
| g g g8 a bf c
| d ef d c bf4 a
| g4 a8 bf c4 bf8 a
| g4 a8 bf c4 bf8 a
%50
| g4 g g8 c\f d e
| <a, f'>4 <a f'> <a f'> r
| <c g'> <c g'> <c g'> r
| a'8 bf c bf a4 g
| f f f r
| \tuplet 3/2 { d'8 c bf } \tuplet 3/2 { d c bf } \tuplet 3/2 { d c bf } \tuplet 3/2 { d c bf }
| \tuplet 3/2 { c bf a } \tuplet 3/2 { c bf a } \tuplet 3/2 { c bf a } \tuplet 3/2 { c bf a }
| b!2\p~ b8( c d b)
| d8( c) c c c4 r
| \tuplet 3/2 { d8\f c bf } \tuplet 3/2 { d c bf } \tuplet 3/2 { d c bf } \tuplet 3/2 { d c bf }
%60
| \tuplet 3/2 { c bf a } \tuplet 3/2 { c bf a } \tuplet 3/2 { c bf a } \tuplet 3/2 { c bf a }
| d8 c bf a bf a g f
| c'4 c,8. c16 c4 r
| c2 f
| \tuplet 3/2 { d8 c bf } \tuplet 3/2 { a g f } g4 g
| c4 c f f
| \tuplet 3/2 { d'8 c bf } \tuplet 3/2 { a g f } g4 r
| c,8\p g' c, g' c, g' c, g'
| c, a' f a c, a' f a
| c, bf' g bf c, bf' g bf
%70
| c, c' a c c, c' a c
| \appoggiatura f,16 e2 \appoggiatura f16 e2
| \appoggiatura g16 f2 \appoggiatura g16 f2
| \appoggiatura a16 g2 \appoggiatura a16 g2
| \tuplet 3/2 { a8\f g f } \tuplet 3/2 { e d c } \tuplet 3/2 { f e d } \tuplet 3/2 { c bf a }
| bf4 c d2
| \tuplet 3/2 { a'8 g f } \tuplet 3/2 { e d c } \tuplet 3/2 { f e d } \tuplet 3/2 { c bf a }
| bf4 c f8 c\ff d e
| f4 f8 f f g a f
| \appoggiatura a16 g4 g8 g g2
%80
| c8 d c bf a4 g
| f4 f8 f f g a f
| \appoggiatura c'16 bf4 bf8 bf bf2
| d8 d c bf a4 g
| f4 a,8 c f4 c'8 a
| f4 a,8 c f4 c'8 a
| f4 <a, f'>8 <a f'> <a f'> <a f'> <a f'> <a f'>
| <a f'>1~
| <a f'>2. r4

}

violinTwo = 
\relative c''{
  \set Staff.instrumentName = "Violino II "
  \set Staff.midiInstrument = "viola"
%1
| <a f'>4 <a f'> <a f'> r
| <c e> <c e> <c e> r
| f8 g a g f4 e
| <a, f'>4 <a f'> <a f'> r
| <c e> <c e> <c e> r
| f8 g a g f d e c
| <a f'>4 <a f'> <a f'> r
| \tuplet 3/2 { bf8 c d } \tuplet 3/2 { bf c d } \tuplet 3/2 { bf c d } \tuplet 3/2 { bf c d } 
| \tuplet 3/2 { a bf c } \tuplet 3/2 { a bf c } \tuplet 3/2 { a bf c } \tuplet 3/2 { a bf c }
%10  
| \tuplet 3/2 { g' f e } \tuplet 3/2 { g f e } \tuplet 3/2 { g f e } \tuplet 3/2 { g f e }
| <a, f'>4 <a f'> <a f'> r
| d8\p( f d f d f d f)
| a,( c f c a c f c)
| bf( c e c bf c e c)
| a\staccato c\staccato a\staccato c\staccato a4\staccato r
| <g, e'>4\f <g e'> <g e'> <g e'>
| <a f'> c' b b
| e,8 f g f e f g e
| \tuplet 3/2 { f8 g a } \tuplet 3/2 { b c a } b4 r4
%20
| b,4\p b b b
| c c c c
| d d d d
| e e e e
| g8\staccato d'\staccato b\staccato d\staccato g,\staccato d'\staccato b\staccato d\staccato
| g,\staccato e'\staccato c\staccato e\staccato g,\staccato e'\staccato c\staccato e\staccato
| g, f' d f g, f' d f
| \tuplet 3/2 { e\f d c } \tuplet 3/2 { b a g } \tuplet 3/2 { c' b a } \tuplet 3/2 { g f e }
| f4 g a2
| \tuplet 3/2 { e8 d c } \tuplet 3/2 { b a g } \tuplet 3/2 { c' b a } \tuplet 3/2 { g f e }
%30
| f4 g c, e8 g
| <c, e>4 e8 g <c, e>4 e8 g
| <c, e>4 <c e> <c e> r
| <d f>4 <d f> <d f> r
| <c e> <c e> <c e> r
| <d f>8 <d f> <d f> <d f> <d f> <d f> <d f> <d f>
| <c e>4 <c e> <c e> r
| ef\p d8 c bf4 a
| bf d, d r
| <ef c'>\f <ef c'> <ef c'> r
%40
| <d bf'> <d bf'> <d bf'> r
| <ef c'>8 <ef c'> <ef c'> <ef c'> <ef c'> <ef c'> <ef c'> <ef c'>
| <d bf'>4 <d bf'> <d bf'> r
| d'\p c8 b a4 gs
| a c, c r
| bf'8 c bf a g4 f
| e4 e e8 f g a
| bf c bf a g4 f
| e4 f8 g a4 g8 f
| e4 f8 g a4 g8 f
%50
| e4 e e8 c'\f d e
| f c f c f a g f
| g c, g' c, g' bf a g
| f g a g f d e c
| f d c bf a g a f
| \tuplet 3/2 { bf8 c d } \tuplet 3/2 { bf c d } \tuplet 3/2 { bf c d } \tuplet 3/2 { bf c d }
| \tuplet 3/2 { a bf c } \tuplet 3/2 { a bf c } \tuplet 3/2 { a bf c } \tuplet 3/2 { a bf c }
| d8\p( f d f d f d f)
| a,( c f c a c f c)
| \tuplet 3/2 { bf8\f c d } \tuplet 3/2 { bf c d } \tuplet 3/2 { bf c d } \tuplet 3/2 { bf c d }
%60
| \tuplet 3/2 { a bf c } \tuplet 3/2 { a bf c } \tuplet 3/2 { a bf c } \tuplet 3/2 { a bf c }
| d'8 c bf a bf a g f
| c'4 c,8. c16 c4 r
| a,8\staccato c\staccato f\staccato c\staccato a\staccato c\staccato f\staccato c\staccato
| bf d f d g, c e c
| a bf c bf a bf c a
| \tuplet 3/2 { f' g a } \tuplet 3/2 { bf c d } e4 r
| e,\p e e e
| f f f e8 f
| g8 a g f g e f g
%70
| a4 a a a
| c,8\staccato g'\staccato e\staccato g\staccato c,\staccato g'\staccato e\staccato g\staccato
| c,\staccato a'\staccato f\staccato a\staccato c,\staccato a'\staccato f\staccato a\staccato
| c, bf' g bf c, bf' g bf
| \tuplet 3/2 { a'\f g f } \tuplet 3/2 { e d c } \tuplet 3/2 { f e d } \tuplet 3/2 { c bf a }
| bf4 c d2
| \tuplet 3/2 { a'8 g f } \tuplet 3/2 { e d c } \tuplet 3/2 { f e d } \tuplet 3/2 { c bf a }
| bf4 c f,8 a\ff bf g
| a4 a8 a a bf c d
| \appoggiatura f16 e4 e8 e e2
%80
| a8 bf a g f4 e
| <a, f'> a8 a a bf c a
| \appoggiatura ef'16 d4 d8 d d2
| bf'8 bf a g f d e! c
| f4 a,8 c f4 c'8 a
| f4 a,8 c f4 c'8 a
| f4 <a, f'>8 <a f'> <a f'> <a f'> <a f'> <a f'>
| <a f'>1~
| <a f'>2. r4
}

viola = 
\relative c'{
  \set Staff.instrumentName = "Viola "
  \set Staff.midiInstrument = "viola"
\clef alto
%1
| c4 c c r
| e e e r
| f f8 g a bf c c
| c,4 c c r
| e e e r
| f f8 g a bf c c  
| c,4 c c r
| bf4 bf bf bf
| f' f f f
%10
| e e e e
| c' c c r
| b,2\p( d)
| a( c)
| g( bf?)
| c4 c c r
| e,\f  e e e
| d f' d d
| c8 d e d c d e c
| d4 f d r
%20
| { g1\p~ \startTrillSpan }
| g1~
| g1~
| g1  
| \grace { f16[ g16] } d4\stopTrillSpan f8 e d4 f
| e4 g8 f e4 g
| f4 d'8 c b4 d
| c\f r \tuplet 3/2 { c8 b a } \tuplet 3/2 { g f e }
| f4 g a2
| \tuplet 3/2 { e'8 d c } \tuplet 3/2 { b a g } \tuplet 3/2 { c b a } \tuplet 3/2 { g f e }
%30
| f4 g c, e8 g
| g4 e8 g g4 e8 g
| e4 e e r
| <b d>4 <b d> <b d> r
| <c e> <c e> <c e> r
| <b d>8  <b d> <b d> <b d> <b d> <b d> <b d> <b d>
| <c e>4 <c e> <c e> r
| c\p g' f ef
| d f f r
| <c a'>\f <c a'> <c a'> r
%40
| <bf? f'> <bf f'> <bf f'> r
| <c a'>8 <c a'> <c a'> <c a'> <c a'> <c a'> <c a'> <c a'>
| <bf f'>4 <bf f'> <bf f'> r
| bf\p f' e? d
| c e e r
| d, d d d
| e e e e
| d d d d
| e2 f
| g2 a8 bf c d
%50
| c4 c c8 c\f d e
| f c f c f a g f
| g c, g' c, g' bf a g
| c f e d c bf a g
| f d c bf a g a f
| bf4 bf bf bf
| f' f f f
| b,2\p( d)
| a( c)
| bf?4\f bf bf bf
%60
| f' f f f
| d'8 c bf a bf a g f
| c'4 <c,, c'>8. <c c'>16 <c c'>4 r
| a''4 a a a 
| g bf, e g,
| f'8 g a g f g a f
| \tuplet 3/2 { d8 e f } \tuplet 3/2 { g a bf} c4 r
| { c1~\p \startTrillSpan }
| c1~
| c1~
%70
| c1 \stopTrillSpan
| \grace { bf32[ c32 ] } bf2 c8( bf) a\staccato g\staccato
| f4( d'2) \appoggiatura c16 bf4
| \appoggiatura a16 g4 \appoggiatura f16 e4 \appoggiatura f16 e4 \appoggiatura d16 c4
| f\f r \tuplet 3/2 { f8 e d } \tuplet 3/2 { c bf a }
| bf4 c d2
| \tuplet 3/2 { a'8 g f } \tuplet 3/2 {e d c } \tuplet 3/2 {f e d } \tuplet 3/2 {c bf a }
| bf4 c f,8 d'\ff c a
| a bf c d e f g a
| g f e d c bf a g
%80
| f e f g a bf c bf
| a d c bf a g f e
| d f e f g a bf c
| d e f g a bf c bf
| a4 a,8 c f4 c'8 a
| a4 a,8 c f4 c'8 a
| f4 <f c'>8 <f c'> <f c'> <f c'> <f c'> <f c'>
| <f c'>1~
| <f c'>2. r4
}

cello = 
\relative c{
  \set Staff.instrumentName = "Basso "
  \set Staff.midiInstrument = "cello"
  \clef bass
% 1
| f4 f f r
| c c c r
| f f8 g a bf c c,
| f4 f f r
| c c c r
| f f8 g a bf c c,
| f4 f f r
| bf bf bf bf
| f f f f
% 10
| c c c c
| f f f r
| g\p g g g
| f f f f
| c c c c
| f f f r
| c\f c c c
| f a g g
| c,8 d e d c d e c
| f4 a g2
% 20
| g4\p g g g
| e e e e
| b b b b
| c c c c
| g' g g g
| e e e e
| b b b b
| c\f r \tuplet 3/2 { c'8 b a } \tuplet 3/2 { g f e }
| f4 g a2
| \tuplet 3/2 { e'8 d c } \tuplet 3/2 { b a g } \tuplet 3/2 { c b a } \tuplet 3/2 { g f e }  
% 30
| f4 g c, e8 g
| c4 e,8 g c4 e,8 g 
| c4 c, c r
\repeat volta 2 {
| b4 b b r
| c c c r
| b8 b b b b b b b
| c4 c c r
| ef2\p f
| bf,4 bf bf r
| a\f a a r
% 40
| bf bf bf r
| a8 a a a a a a a
| bf4 bf bf r
| d2\p e?
| a,4 a a r
| bf bf bf bf
| c c c c
| bf bf bf bf
| c8 bf a g f g a bf
| c8 bf a g f g a bf
%50
| c4 c c8 c\f d e
| f4 f f r
| c c c r
| f4 f8 g a bf c c,
| f4 f f r
| bf4 bf bf bf
| f f f f
| g\p g g g
| f f f f
| bf\f bf bf bf
% 60
| f f f f
| d'8 c bf a bf a g f
| c'4 c,8. c16 c4 r
| f f f f
| bf, d c c 
| f8 g a g f g a f
| bf c d bf c4 r
|c\p c c c
| a a a a
| g g g g
% 70
| f f f f
| e e e e
| d d d d
| c c c8 bf a g
| f4\f r \tuplet 3/2 { f''8 e d } \tuplet 3/2 { c bf a }
| bf4 c d2
| \tuplet 3/2 {a8 g f } \tuplet 3/2 { e d c } \tuplet 3/2 { f e d } \tuplet 3/2 { c bf a }
| bf4 c f, a8\ff c
| f8 g a bf c d e f
| e d c bf a g f e
%80
| d c d e f g a bf
| c bf a g f e d c
| bf a g a bf c d e
| f g a bf c4 c,
| f4 a,8 c f4 c'8 a
| f4 a,8 c f4 c'8 a
| f4 f8 f f f f f
| f1~
| f2. r4 }  


}
\score {
\new StaffGroup <<
  \new Staff << \global \key f\major \horn >>
  \new Staff << \global \key f\major \violinOne >>
  \new Staff << \global \key f\major \violinTwo >>
  \new Staff << \global \key f\major \viola >>
  \new Staff << \global \key f\major \cello >>
>>
\layout { }

  \midi {
    \tempo 4 = 118
    }


}
