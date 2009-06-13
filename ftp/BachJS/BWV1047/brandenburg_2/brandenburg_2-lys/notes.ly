\include "english.ly"

\version "2.10.29"

piano = \markup{\italic piano}
pianoparen = \markup{\italic (piano)}
forte = \markup{\italic forte}
forteparen = \markup{\italic (forte)}
pianissimo = \markup{\italic pianissimo}
pianissimoparen = \markup{\italic (pianissimo)}
tasto = \markup{\italic \line{Tasto solo}}


\header {
  title = \markup \center-align { "Brandenburg Concerto No. 2" }
  composer = \markup { "Johann Sebastian Bach" }
  mutopiatitle = "Brandenburg Concerto No. 2"
  subtitle = \markup{ \center-align { "BWV 1047"} }
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 1047"
  mutopiainstrument = "Trumpet, Flute, Oboe, Violin, Violone, Viola, Violincello"
  date = "1717-1723?"
  source = "Rust, 1871. Bach Gesellschaft Volume 19"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Andy Vaught"
  maintainerEmail = "andy.vaught@gmail.com"

 footer = "Mutopia-2009/06/13-1680"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}



%%%%%% First movement, Allegro %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Amovement = \markup{\bold\large "I - Allegro"}

Atromba = \new Voice { \relative c' {
  \clef treble
  \time 2/2
  \key c \major
  \transposition f
  \set Staff.midiInstrument = "Trumpet"
  \set Staff.instrumentName = \markup{ \bold Tromba. }

  \partial 8*1 c8

% Page 3

%{ 1 %}  e g e c  e g c g
%{ 2 %}  e g e c  e[ g]   c16 d e f
%{ 3 %}  g8 g g g g2 \trill ~
%{ 4 %}  g2. r8 c,8
%{ 5 %}  c g g e  e c c c'
%{ 6 %}  c g g e  e[ c] c g'16 g
%{ 7 %}  g4 r8 g16 g  g4 r8 g16 g
%{ 8 %}  g8[ c16 g] e c g'8 e4 r4
%{ 9 %}  r1

% Page 4

%{ 10 %}  r2 r4 r8 c
%{ 11 %}  e g e c  e g c g
%{ 12 %}  e g e c  e g c r
%{ 13 %}  r1
%{ 14 %}  r2 r4 r8 g
%{ 15 %}  g'16[ a b a]  g[ a b a]  g[ fs g a]  b[ c b a]
%{ 16 %}  g[ a b a]  g[ a b a]  g8 g, r4
%{ 17 %}  r1
%{ 18 %}  r2 r4 r8 g
%{ 19 %}  g'16[ a b a]  g[ a b a]  g[ fs g a]  b[ c b a]

% Page 5

%{ 20 %}  g[ a b a]  g[ a b a]  g8 g, r d'         
%{ 21 %}  e16[ fs e fs]  fs8. \trill e32 fs32 g16[ fs g a]  g[ fs e d]
%{ 22 %}  e[ d e g]  fs[ e d c]  d8 g, r d'16 d    
%{ 23 %}  d4 r8 d16 d d4 r8 d16 d                  
%{ 24 %}  d4 r8 d16 d d4 r8 d8                     
%{ 25 %}  d8[ g16 fs]  g8 d  d[ b'16 a16] b8 d,8   
%{ 26 %}  d8[ g16 fs] g8 d8 d[ b'16 a] b8 r8       
%{ 27 %}  r d,16[ e]  d8 g fs[ d16 e] d8 g         
%{ 28 %}  g, r8 r4 r4 r8 g'8                       
%{ 29 %}  a16[ b a b]  b8. \trill a32 b            

% Page 6

%{ 30 %}  c8[ c,16 d]  e[ f g e]  a[ f d f]  g,[ d' g f]  e[ f g e]  c8 e
%{ 31 %}  e1 \trill ~
%{ 32 %}  e2 r8 e a e
%{ 33 %}  f2 ~ f8 d g d
%{ 34 %}  e2 ~ e8 c f c
%{ 35 %}  d2 \trill ~ d8 c16 d e8[ d]
%{ 36 %}  c[ a'16 gs]  a8 e  e[ c'16 b] c8 e,
%{ 37 %}  e[ a16 gs]  a8 e  e[ c'16 b] c8 r
%{ 38 %}  r e,,16[ e] e8 r8 r8 e16[ e] e8 r

% Page 7

%{ 39 %}  r e16[ e] e8 e8 c4 r8 e'8            
%{ 40 %}  e[ c16 d] e8[ c16 d] e8 a e a        
%{ 41 %}  e[ c16 d] e8[ c16 d] e8 a e[ a16 g]  
%{ 42 %}  fs[ e d e]  fs[ e d e]  fs[ g fs e]  d[ e d e]
%{ 43 %}  fs[ e d e]  fs[ e d e]  fs[ g fs e]  d8 r8
%{ 44 %}  r1                                   
%{ 45 %}  r2 r4 r8 g,                          
%{ 46 %}  c g e g  c, g' e g                   

% Page 8

%{ 47 %}  c g e g  c,4 r8 g'16 g              
%{ 48 %}  g4 r8 g16 g g4 r8 g16 g             
%{ 49 %}  g4 r8 g16 g g4 r4                   
%{ 50 %}  r8 c, e g  c g e c                  
%{ 51 %}  e'8(^\piano e e e) e( e e e)        
%{ 52 %}  a( a a a) a( a a a)                 
%{ 53 %}  a16[ b c b]  a[ b a g]  fs[ g a g]  fs[ g a b]
%{ 54 %}  e,8 r8 r4 r2                        
%{ 55 %}  g,8 bf16^\forte bf  g8[ e'16 d]  c8[ g'16 f]  e[ d c bf!]

% Page 9

%{ 56 %}  c8[ f16 e]  f8 c  c[ a'16 g] a8 c,
%{ 57 %}  c[ f16 e]  f8 c  c[ a'16 g a8] c,16 c
%{ 58 %}  c4 r8 c,16 c c4 r8 c'16 c
%{ 59 %}  f[ g f g] g8. f16 f4 r4
%{ 60 %}  r1
%{ 61 %}  r1
%{ 62 %}  r1
%{ 63 %}  r1
%{ 64 %}  r1
%{ 65 %}  r2 r4 r8 d

% Page 10

%{ 66 %}  e16[ fs e fs]  fs8. \trill e32 fs  g16[ fs g a]  g[ a bf g]
%{ 67 %}  a[ bf a g]  fs[ e d c]  bf[ c d bf g8] g
%{ 68 %}  bf d bf g  bf d g d
%{ 69 %}  bf d bf g  bf d g r
%{ 70 %}  r8 d16[ d] d8 r8 r d16[ d] d8 r
%{ 71 %}  r d16[ d] d8 r r d16[ d] d8 r
%{ 72 %}  r8 f8(^\piano f f) f( f f f)
%{ 73 %}  e c,[_\forte e g] c[ g e c]

% Page 11

%{ 74 %}  e'(_\piano e e e) e( e e e)
%{ 75 %}  f[ _\forte d16 e]  f8[ d16 e] f8 a f a
%{ 76 %}  f[ d16 e]  f8[ d16 e] f8 a[ d a]
%{ 77 %}  bf4 r4 r8 g c g
%{ 78 %}  a4 r4 r8 f bf f
%{ 79 %}  g4 r4 r8 e a g
%{ 80 %}  f d f a  d a f a
%{ 81 %}  f d f a  d a f d

% Page 12

%{ 82 %}  r1
%{ 83 %}  r2 r4 r8 d16 e
%{ 84 %}  f[ e d e]  f[ e d e]  f[ g f e]  d[ e d e]
%{ 85 %}  f[ e d e]  f[ e d e]  f[ g f e]  d8 r8
%{ 86 %}  r8 e,( e e ) e ( e e e)
%{ 87 %}  e( e e e e4) r4
%{ 88 %}  r4 r8 e' e[ c16 d]  e8[ c16 d]
%{ 89 %}  e8 a e a  e[ c16 d] e8 a
%{ 90 %}  f a f a  g d g d
%{ 91 %}  e g e g  fs16[ g fs g]  a[ g fs e]

% Page 13

%{ 92 %}  a8( _\pianoparen a a) fs  g( g g) e
%{ 93 %}  fs16[ e fs g]  a[ g fs a]  g[ a b g] e8 r
%{ 94 %}  r4 r8 g ^\forteparen g[ e16 fs]  g8[ e16 fs]
%{ 95 %}  g8 b g b  g[ d16 fs]  d8 e
%{ 96 %}  e g e g   d fs d fs
%{ 97 %}  d fs d fs  c e c e
%{ 98 %}  c e c a'  fs r8 r e
%{ 99 %}  e r8 r4 r r8 e

% Page 14

%{ 100 %}  e r8 r4 r2                               
%{ 101 %}  r1                                       
%{ 102 %}  r2 r4 r8 c                               
%{ 103 %}  g[ e16 c]  g'8[ e16 c]  g'8 c g c        
%{ 104 %}  g[ e16 c]  g'8[ e16 c]  g'8[ c g] g16 g  
%{ 105 %}  g4 r8 g16 g g4 r8 g16 g                  
%{ 106 %}  g4 r8 g16 g g4 r4                        
%{ 107 %}  c8( _\piano c c c)  c( c c c)             
%{ 108 %}  d( d d d)  d( d d d)                     

% Page 15

%{ 109 %}  d_\forte g, d' d  g d d g,                   
%{ 110 %}  e(_\piano e e e)  e( e e e)                  
%{ 111 %}  e( e e e)  e( e e e)                          
%{ 112 %}  c( c c c)  c( c c c)                          
%{ 113 %}  g'[_\forteparen d'16 c]  d8 g,  g[ g'16 f]  g8 g,  
%{ 114 %}  g[ d'16 c]  d8 g, g[ g'16 f]  g8[ c,16 d]     
%{ 115 %}  c8 g g e  e c c c'                            
%{ 116 %}  c g g e  e c c g'16[ g]                       
%{ 117 %}  g8 r r g16 g g8 r r g16 g                     
%{ 118 %}  g8[ c16 g]  e[ c g'8] e4. \fermata            
  \bar "|."

\pageBreak
}}



ucirc = #(ly:export (ly:wide-char->utf-8 #x00FB))
agrave = #(ly:export (ly:wide-char->utf-8 #x00E0))


Aflute = \new Voice { \relative c' {
  \clef treble
  \time 2/2
  \key f \major
  \set Staff.midiInstrument = "Flute"
  \set Staff.instrumentName =
     \markup{\bold\center-align { Flauto.
     \line{(Fl{\hspace #-1.2 \ucirc \hspace #-1.2 }te \agrave bec.)} } }

  \partial 8*1 f'8

% Page 3

%{ 1 %}  c[ a16 bf] c8[ a16 bf] c8 f c f                
%{ 2 %}  c[ a16 bf] c8[ a16 bf] c8[ f c] f              
%{ 3 %}  g16[ f g a]  bf[ a bf a] g[ f e d] c[ f e f]   
%{ 4 %}  g[ f g a]  bf[ a bf a] g[ f e d] c[ bf a g]    
%{ 5 %}  f8[ a16 g] f8[ c'16 bf16] a8 f' c16[ bf a g]   
%{ 6 %}  f8[ a16 g] f8[ c'16 bf16] a8 f' c16[ d e f]    
%{ 7 %}  g[ a bf g] a[ f c f] g[ a bf g] a[ f c'8-|] 
%{ 8 %}  bf16[( a) g( f)] c8 e \trill f[ e16 d] c[ bf a g]
%{ 9 %}  f8 r r4 r2

% Page 4

%{ 10 %}  r2 r4 r8 f'
%{ 11 %}  c[ a16 bf] c8[ a16 bf] c8[ f c f]
%{ 12 %}  c[ a16 bf] c8[ a16 bf] c8[ f c] r
%{ 13 %}  r1                                         
%{ 14 %}  r2 r4 r8 a'
%{ 15 %}  g[ e16 f] g8[ e16 f] g8 c g c
%{ 16 %}  g[ e16 f] g8[ e16 f] g8[ c g] g
%{ 17 %}  a16[ b a b]  b8.[ \trill a32 b] c8[ c,16 d] e[ f g e]
%{ 18 %}  a[ f d f]  b,[ d g f]  e[ f g e c8] c'
%{ 19 %}  g[ e16 f] g8[ e16 f] g8[ c g c]

% Page 5

%{ 20 %}  g[ e16 f] g8[ e16 f] g8 c g16[ c e, c']
%{ 21 %}  f,[ c' f, c']  f,[ d' f, d'] g,[ e' g, e'] g,[ c g c]
%{ 22 %}  f,[ c' f, c']  f,[ b f b]  c[ g d g]  c,[ d e c]
%{ 23 %}  d[ c d e]  f[ e f e]  d[ c b a]  g[ c b c]
%{ 24 %}  d[ c d e]  f[ e f e]  d[ c b a g8]  c'
%{ 25 %}  c-.  g-. g-. e-.  e c c c'
%{ 26 %}  c g g e  e c c g'
%{ 27 %}  d16[ e f d]  e[ c g c] d[ e f d] e[ c g'8-|]
%{ 28 %}  f16[( e d c)] g8 b c4 r8 f
%{ 29 %}  f r g r  a r r f

% Page 6

%{ 30 %}  f r e r f r r d16 e
%{ 31 %}  f[ g a g]  f[ g a g]  f[ g f e]  d[ cs d e]
%{ 32 %}  f[ g a g]  f[ g a g]  f[ g f e]  d[ e d c]
%{ 33 %}  bf[ a bf c]  d[ c d bf]  e[ d e f]  g[ f g e]
%{ 34 %}  a[ g a bf]  c[ bf c a]  d[ cs d e]  f[ e f d]
%{ 35 %}  g8. f16  e[ d cs b]  a8. g16  f[ e d cs]
%{ 36 %}  d8[ f16 e]  d8[ a'16 g]  f8 d'  a16[ g f e]
%{ 37 %}  d8[ f16 e]  d8[ a'16 g]  f8 d'  a,16[ b cs d]
%{ 38 %}  e[ f g e]  f[ d a d]  e[ f g e]  f[ d a'8-|]

% Page 7

%{ 39 %}  g16[( f e d)]  a8 cs  d16[ f g a]  b[ cs d e]
%{ 40 %}  f[ e d e]  f[ e d e]  f[ g f e]  d[ cs d e]
%{ 41 %}  f[ e d e]  f[ e d e]  f[ g f e d8] d
%{ 42 %}  d[ b16 c]  d8[ b16 c]  d8 g d g
%{ 43 %}  d[ b16 c]  d8[ b16 c]  d8 g g,  g'16[ f]
%{ 44 %}  e[ d c d]  e[ d c d]  e[ f e d]  c[ b c d]
%{ 45 %}  e[ d c d]  e[ d c d]  e[ f e d c8] c
%{ 46 %}  c[ a16 bf]  c8[ a16 bf]  c8[ f c f]

% Page 8

%{ 47 %}  c8[ a16 bf]  c8[ a16 bf]  c8 f c a
%{ 48 %}  g16[ f g a]  bf[ a bf a]  g[ f e d]  c[f e f]
%{ 49 %}  g[ f g a]  bf[ a bf a]  g[ f e d]  c[ d c bf]
%{ 50 %}  a8  c'16[_\piano bf]  a[ bf a g]  f[ c d e]  f[ g a bf]
%{ 51 %}  c[ d ef d]  c[ d c bf]  a[ g fs g]  a[ bf c d]
%{ 52 %}  g,8[_\forte b16 a]  g8[ d'16 c]  b8 g' d16[ c b a]
%{ 53 %}  gs8(_\piano gs gs gs) gs( gs gs gs)
%{ 54 %}  a16[ cs e d]  cs[ d cs b]  a[ e f g]  a[ b! cs! d] 
%{ 55 %}  ef[ f g f]  ef[ d c! bf]  a[ bf a g]  f[ ef d c]

% Page 9

%{ 56 %}  bf8 r8 r4 r8 bf'_\forte bf f 
%{ 57 %}  f d d bf  bf bf' bf f
%{ 58 %}  c16[ d ef c]  d[ bf f bf]  c[ d ef c]  d[ bf f'8-|]
%{ 59 %}  ef16[( d c bf)]  f8 a8 bf4 r8 f'8
%{ 60 %}  g16[ a g a]  a8.[ \trill g32 a]  bf8[ bf,16 c]  d[ ef g d]
%{ 61 %}  g[ ef c ef]  a,[ c f ef]  d[ ef f d]  bf[ c d bf]
%{ 62 %}  g[ c g c]  a[ c a c]  bf[ d bf d]  bf[ g' bf, g']
%{ 63 %}  a,[ g' a, g']  a,[ fs' a, fs'] g8 g, r bf'
%{ 64 %}  bf[( af)] r8 af af([ g]) r ef
%{ 65 %}  ef( d) r f f[( ef)] r ef'

% Page 10

%{ 66 %}  ef( d) r d d( c) r g
%{ 67 %}  af f d b'  g c r g16 f
%{ 68 %}  ef[ d c d]  ef[ f g f]  ef[ d ef f]  g[ af g f]
%{ 69 %}  ef[ d c d]  ef[ f g f]  ef[ d ef f]  g[ f g a!]
%{ 70 %}  b[ a b c]  d[ c d ef]  f[ ef d c]  b![ a g a]
%{ 71 %}  b[ a b c]  d[ c d ef]  f[ ef d c]  b![ a b g]
%{ 72 %}  c8 c,[ e! g]  c[ g e c]
%{ 73 %}  f[ a16 g]  f8[ c'16 bf]  a8 f'  c16[ bf a g]

% Page 11

%{ 74 %}  fs8(_\piano fs fs fs) fs[( fs fs)] d'_\forte
%{ 75 %}  d1 ~
%{ 76 %}  d2 ~ d8 d, r g16 bf
%{ 77 %}  c,[ bf' c, bf']  c,[ bf' c, bf']  c,[a' c, a']  c,[a' c, a']
%{ 78 %}  bf,[ a' bf, a']  bf,[ a' bf, a']  bf,[ g' bf, g']  bf,[ g' bf, g']
%{ 79 %}  a,[ g' a, g']  a,[ g' a, g']  a,[fs' a, fs']  a,[ fs' a, fs']
%{ 80 %}  g,[ bf' d c]  bf[ c bf a]  g[ a bf c]  bf[ a g fs]
%{ 81 %}  g[ bf d c]  bf[ c bf a]  g[ a bf c]  d[ g, fs g]

% Page 12

%{ 82 %}  a[ bf c a]  bf[ g d g]  a[ bf c a]  bf[ g d'8-|]
%{ 83 %}  c16[( bf) a( g)] d8 fs g4 r8 d
%{ 84 %}  g16[ a bf a]  g[ a bf a]  g[ fs g a] bf[ c bf a]
%{ 85 %}  g[ a bf a]  g[ a bf a]  g[ a g f]  e[ f e d]
%{ 86 %}  cs[ b a b]  cs[ b a b]  cs[ b cs d]  e[ d e f]
%{ 87 %}  g[ f e f]  g[ f e f]  g[ a g f]  e[ g f e]
%{ 88 %}  f[ g a g]  f[ g a g]  f[ e d e]  f[ e d e]
%{ 89 %}  f[ g a g]  f[ g a g]  f[ e d e f8] a
%{ 90 %}  d16[ c bf c]  d[ c bf a] g8 r r g
%{ 91 %}  c16[ bf a bf]  c[ bf a g] f8 r r f

% Page 13

%{ 92 %}  e8(_\piano e e e)  e( e e e)
%{ 93 %}  d b( b b) c4 r8 c_\forte
%{ 94 %}  c[ a16 b]  c8[ a16 b]  c8 e c e
%{ 95 %}  c[ a16 b]  c8[ a16 b]  c8 e a e
%{ 96 %}  f2 ~ f8 d g d
%{ 97 %}  e2 ~ e8 c f c
%{ 98 %}  d2 ~ d8 b e d
%{ 99 %}  c[ e16 d]  e8[ a16 gs]  a8[ e16 d16]  e8[a,16 b]

% Page 14

%{ 100 %}  c8 a  a[ a'16 gs]  a8[ e16 d] e8 r
%{ 101 %}  r e'16 f e8[ a,]  gs8[ e'16 f]  e8[ a,16 gs]
%{ 102 %}  a8.[ b16]  b8.[ a16] a4 r8 f'
%{ 103 %}  c[ a16 bf!]  c8[ a16 bf]  c8 f c f
%{ 104 %}  c[ a16 bf]  c8[ a16 bf]  c8[ f c] f,
%{ 105 %}  g16[ f g a]  bf[ a bf a]  g[ f e d]  c[ f e f]
%{ 106 %}  g[ f g a]  bf[ a bf a]  g[ f e d]  c8 c
%{ 107 %}  d16[_\piano ef f ef]  d[ ef d c]  bf[ f g af]  bf[ c d ef!]
%{ 108 %}  f[ g af g]  f[ g f ef]  d[ c b c]  d[ ef! f g]

% Page 15

%{ 109 %}  c,8[_\forte e!16 d]  c8[ g'16 f]  e8 c'  g16[ f e d]
%{ 110 %}  cs8(_\piano cs cs cs) cs( cs cs cs)
%{ 111 %}  d16[ fs a g]  fs[ g fs e]  d[ a bf c]  d[ e fs! g]
%{ 112 %}  af8[_\forte f!16 ef]  d8[ af'16 g]  f8[ d'16 c]  b[ a g f]
%{ 113 %}  e!8 bf'! bf g  g e e g
%{ 114 %}  g bf bf g  g e e c
%{ 115 %}  f,[ a16 g]  f8 [ c'16 bf]  a8 f'  c16[ bf a g]
%{ 116 %}  f8[ a16 g]  f8 [ c'16 bf]  a8 f'  c16[ d e f]
%{ 117 %}  g[ a bf g]  a[ f c f]  g[ a bf g]  a[ f c'8-|]
%{ 118 %}  bf16[( a) g( f)] c8 e f4. \fermata
           \bar "|."
\pageBreak
}}


Aoboe = \new Voice { \relative c' {
  \clef treble
  \time 2/2
  \key f \major
  \set Staff.midiInstrument = "Oboe"
  \set Staff.instrumentName = \markup{\bold Oboe.}

  \partial 8*1 f'8

% Page 3

%{ 1 %}  c[ a16 bf] c8[ a16 bf] c8 f c f
%{ 2 %}  c[ a16 bf] c8[ a16 bf] c8[ f c] f
%{ 3 %}  g16[ f g a]  bf[ a bf a] g[ f e d] c[ f e f]
%{ 4 %}  g[ f g a]  bf[ a bf a] g[ f e d] c[ bf a g]
%{ 5 %}  f8[ a16 g] f8[ c'16 bf16] a8 f' c16[ bf a g]
%{ 6 %}  f8[ a16 g] f8[ c'16 bf16] a8 f' c16[ d e f]
%{ 7 %}  g[ a bf g] a[ f c f] g[ a bf g] a[ f c'8-|]
%{ 8 %}  bf16[( a) g( f)] c8 e \trill f[ e16 d] c[ bf a g]
%{ 9 %}  f8 r r4 r2

% Page 4

%{ 10 %}  r2 r4 r8 f'
%{ 11 %}  c[ a16 bf] c8[ a16 bf] c8[ f c f]
%{ 12 %}  c[ a16 bf] c8[ a16 bf] c8[ f c] c
%{ 13 %}  d16[ e d e]  e8.[ \trill d32 e]  f8[ f,16 g]  a[ bf c a]
%{ 14 %}  d[ bf g bf]  e,[ g c bf]  a[ bf c a f8] a'
%{ 15 %}  g[ e16 f]  g8[ e16 f]  g8 c g c
%{ 16 %}  g[ e16 f]  g8[ e16 f]  g8 c  g16[ c, e, c']
%{ 17 %}  f,[ c' f, c']  f,[ d' f, d']  g,[ e' g, e']  g,[ c g c]
%{ 18 %}  f,[ c' f, c']  f,[ b f b]  c[ d e c]  g[ c e c]
%{ 19 %}  g'8[ e16 f]  g8[ e16 f]  g8 c g c

% Page 5

%{ 20 %}  g[ e16 f]  g8[ e16 f]  g8 c g r
%{ 21 %}  r1
%{ 22 %}  r2 r4 r8 c,
%{ 23 %}  d16[ c d e]  f[ e f e]  d[ c b a]  g[ c b c]
%{ 24 %}  d[ c d e]  f[ e f e]  d[ c b a]  g[ f e d]
%{ 25 %}  c8[ e16 d]  c8[ g'16 f]  e8 c'  g16[ f e d]
%{ 26 %}  c8[ e16 d]  c8[ g'16 f]  e8 c'  g16[ a b c]
%{ 27 %}  d16[ e f d]  e[ c g c] d[ e f d] e[ c g'8-|]
%{ 28 %}  f16[( e d c)] g8 b c4 r8 f
%{ 29 %}  d r  bf! r  c r  r c

% Page 6

%{ 30 %}  bf r  g r  f r  r f
%{ 31 %}  f[ d16 e]  f8[ d16 e]  f8 a f a
%{ 32 %}  f[ d16 e]  f8[ d16 e]  f8 a f r
%{ 33 %}  r d' g d  e2 ~
%{ 34 %}  e8 c f c d2 ~
%{ 35 %}  d8 b e b  cs4. \trill d16 e
%{ 36 %}  f8 a, a f  f d d d'
%{ 37 %}  d a a f  f[ d d] a''
%{ 38 %}  e16[ f g e]  f[ d a d]  e[ f g e]  f[ d a'8-|]

% Page 7

%{ 39 %}  g16[( f e d)]  a8 cs  d8[ c16 bf]  a[ g f e]
%{ 40 %}  d[ e f e]  d[ e f e]  d[ e d e]  f[ g f e]
%{ 41 %}  d[ e f e]  d[ e f e]  d[ e d e]  f[ g a fs]
%{ 42 %}  g[ a b a]  g[ a b a]  g[ fs g a]  b[ c b a]
%{ 43 %}  g[ a b a]  g[ a b a]  g[ a b c d8] g
%{ 44 %}  g8[ e16 f]  g8[ e16 f]  g8 c g c
%{ 45 %}  g8[ e16 f]  g8[ e16 f]  g8 c r c,
%{ 46 %}  c[ f16 e]  f8 c  c[ c'16 bf]  c8 c,

% Page 8

%{ 47 %}  c [f16 e]  f8 c8  c[ c'16 bf]  c8 f,
%{ 48 %}  g16[ f g a]  bf[ a bf a]  g[ f e d]  c[f e f]
%{ 49 %}  g[ f g a]  bf[ a bf a]  g[ f e d]  c[ bf a bf]
%{ 50 %}  c8(_\piano c c c)  c( c c c)
%{ 51 %}  a_\forte[ c16 bf]  a8[ ef'16 d]  c8 a'  d,16[ c bf a]
%{ 52 %}  b8 g b d  g d b g 
%{ 53 %}  b_\piano( b b )b  b( b b b)
%{ 54 %}  a_\forte[ cs16 b]  a8[ e'16 d]  cs8 a'  e16[ d cs! b!]
%{ 55 %}  a8_\piano( a a a) a[( a a)] f'_\forte

% Page 9

%{ 56 %}  d[ bf16 c]  d8 bf'  bf f f d
%{ 57 %}  d bf bf bf'  bf[ f f] f
%{ 58 %}  c16[ d ef c]  d[ bf f bf]  c[ d ef c]  d[ bf f'8-|]
%{ 59 %}  ef16[( d c bf)]  f8 a8 bf4 r4
%{ 60 %}  r1
%{ 61 %}  r1
%{ 62 %}  r1
%{ 63 %}  r2 r4 r8 bf
%{ 64 %}  c16[ d c d]  d8.[ \trill c32 d]  ef8[ ef,16 f]  g[ af bf g]
%{ 65 %}  c[ af f af]  d,[ f bf af]  g[ af bf g]  ef[ f g ef]

% Page 10

%{ 66 %}  c[ f c f]  d[ f d f]  ef[ g ef g]  ef[ c' ef, c']
%{ 67 %}  d,[ c' d, c']  d,[ b' d, b']  c8 c,  r c'
%{ 68 %}  g[ ef16 f]  g8[ ef16 f]  g8 c g c
%{ 69 %}  g[ ef16 f]  g8[ ef16 f]  g8 c g16[ a b c]
%{ 70 %}  d[ c d ef]  f[ ef f ef]  d[ c b a]  g[ c b c]
%{ 71 %}  d[ c d ef]  f[ ef f ef]  d[ c b a]  g[ f ef d]
%{ 72 %}  c8 [e!16 d]  c8[ g'16 f]  e8 c'  g16[ f e d]
%{ 73 %}  c_\piano[a' c bf]  a[ bf a g]  f[ c d e] f[ g a bf]

% Page 11

%{ 74 %}  c[ d ef d]  c[ d c bf]  a[ bf a g]  fs[ a bf c]
%{ 75 %}  d8_\forte[ bf16 c]  d8[ bf16 c]  d8 g d g
%{ 76 %}  d8[ bf16 c]  d8[ bf16 c]  d8 g d r
%{ 77 %}  r g c g a2 ~
%{ 78 %}  a8 f bf f g2 ~
%{ 79 %}  g8 e a e  fs4. \trill g16 a
%{ 80 %}  bf8[ g16 fs]  g8 d  d[ bf'16 a]  bf8 d,
%{ 81 %}  d[ g16 fs]  g8 d  d[ bf'16 a] bf8 r

% Page 12

%{ 82 %}  r d,16 ef  d8[ g]  fs[ d16 ef]  d8 a'
%{ 83 %}  d,[ c16 bf]  a8 d  bf16[ a g a]  bf[ c d8]
%{ 84 %}  d[ bf16 c]  d8[ bf16 c]  d8 g d g
%{ 85 %}  d[ bf16 c]  d8[ bf16 c]  d8 g g, g
%{ 86 %}  g16[ f e f]  g[ f e f]  g8 cs g cs
%{ 87 %}  cs a e a  cs e a, cs
%{ 88 %}  d16[ e f e] d[ e f e] d[ e f e] d[ e f e]
%{ 89 %}  d[ e f e] d[ e f e] d[ e f e d8] r
%{ 90 %}  r4 r8 d  g16[ f e f]  g[ f e d]
%{ 91 %}  c8 r r c f16[ e d e]  f[ e d c]

% Page 13

%{ 92 %}  b8_\piano( b b ) gs  a( a a)  fs
%{ 93 %}  gs( gs gs gs) e4 r
%{ 94 %}  r r8 e'_\forte e[ c16 d16]  e8[ c16 d16]
%{ 95 %}  e8 a e a  e[ c16 d]  e8 a,
%{ 96 %}  f16[ e f g] a[ g a f]  b[ a b c]  d[ c d b]
%{ 97 %}  e[ d e f]  g[ f g e]  a[ gs a b]  c[ b c a]
%{ 98 %}  d8. c16  b[ a gs fs]  e8. d16  c[ b a gs]
%{ 99 %}  a4 r8  c16 b  a8[ a'16 gs]  a8[ e16 d]

% Page 14

%{ 100 %}  e8[ e16 d]  e8[ c16 b]  a8[ a'16 gs]  a8 e
%{ 101 %}  b16[ c d b]  c[ a e a]  b[ c d b]  c[ a  e'8-|]
%{ 102 %}  d16[( c b a)]  e8 gs a4  r8 f'
%{ 103 %}  c[ a16 bf!]  c8[ a16 bf]  c8 f c f
%{ 104 %}  c[ a16 bf]  c8[ a16 bf]  c8[ f c] f
%{ 105 %}  g16[ f g a]  bf[ a bf a]  g[ f e d]  c[ f e f]
%{ 106 %}  g[ f g a]  bf[ a bf a]  g[ f e d]  c[ bf a g]
%{ 107 %}  f8 bf[ d f]  bf f d bf
%{ 108 %}  d,[  f16 ef]  d8[ af'16 g]  f8 d'  g,16[ f ef d]

% Page 15

%{ 109 %}  e!8_\piano c'( c c)  g( g g g)
%{ 110 %}  g16[ a bf a]  g[ a g f]  e[ f g f]  e[ f g a]
%{ 111 %}  d,8_\forte[ fs16 e]  d8[ a'16 g]  fs8 d'  a16[g fs e]
%{ 112 %}  d8 d'_\piano([ d d)]  d( d d d)
%{ 113 %}  f,_\forte c' e e  g g e bf'
%{ 114 %}  bf g g e  e e c c
%{ 115 %}  f,[ a16 g]  f8 [ c'16 bf]  a8 f'  c16[ bf a g]
%{ 116 %}  f8[ a16 g]  f8 [ c'16 bf]  a8 f'  c16[ d e f]
%{ 117 %}  g[ a bf g]  a[ f c f]  g[ a bf g]  a[ f c'8-|]
%{ 118 %}  bf16[( a g f]) c8 e f4. \fermata
           \bar "|."
\pageBreak
}}


Aviolino = \new Voice { \relative c' {
  \clef treble
  \time 2/2
  \key f \major
  \set Staff.midiInstrument = "Violin"
  \set Staff.instrumentName = \markup{\bold Vionlino.}

  \partial 8*1 f'8

% Page 3

%{ 1 %}  c[ a16 bf] c8[ a16 bf] c8 f c f
%{ 2 %}  c[ a16 bf] c8[ a16 bf] c8[ f c] f
%{ 3 %}  g16[ f g a]  bf[ a bf a] g[ f e d] c[ f e f]
%{ 4 %}  g[ f g a]  bf[ a bf a] g[ f e d] c[ bf a g]
%{ 5 %}  f8[ a16 g] f8[ c'16 bf16] a8 f' c16[ bf a g]
%{ 6 %}  f8[ a16 g] f8[ c'16 bf16] a8 f' c16[ d e f]
%{ 7 %}  g[ a bf g] a[ f c f] g[ a bf g] a[ f c'8-|]
%{ 8 %}  bf16[( a) g( f)] c8 e \trill f4 r8 c
%{ 9 %}  d16[ e d e]  e8.[ \trill d32 e]  f8[ f,16 g]  a[ bf c a]

% Page 4

%{ 10 %}  d[ bf g bf]  e,[ g c bf]  a[ bf c a f8]  f'
%{ 11 %}  c[ a16 bf] c8[ a16 bf] c8[ f c f]
%{ 12 %}  c[ a16 bf] c8[ a16 bf] c8 f  c16[ f a, f']
%{ 13 %}  bf,[ f' bf, f']  bf,[ g' bf, g']  c,[ a' c, a']  c,[ f c f]
%{ 14 %}  bf,[ f' bf, f']  bf,[ e bf e]  f[ g a f]  c[ f a f]
%{ 15 %}  g8[ e16 f]  g8[ e16 f]  g8 c g c
%{ 16 %}  g[ e16 f]  g8[ e16 f]  g8[ c g] r
%{ 17 %}  r1
%{ 18 %}  r2 r4 r8 c
%{ 19 %}  g8[ e16 f]  g8[ e16 f]  g8 c g c

% Page 5

%{ 20 %}  g[ e16 f]  g8[ e16 f]  g8 c g r
%{ 21 %}  r1
%{ 22 %}  r2 r4 r8 c,
%{ 23 %}  d16[ c d e]  f[ e f e]  d[ c b a]  g[ c b c]
%{ 24 %}  d[ c d e]  f[ e f e]  d[ c b a]  g[ f e d]
%{ 25 %}  c8[ e16 d]  c8[ g'16 f]  e8 c'  g16[ f e d]
%{ 26 %}  c8[ e16 d]  c8[ g'16 f]  e8 c'  g16[ a b c]
%{ 27 %}  d16[ e f d]  e[ c g c] d[ e f d] e[ c g'8-|]
%{ 28 %}  f16[( e) d( c)] g8 b c16[ d c bf]  a[ g f ef] 
%{ 29 %}  d[ c bf a]  g[ c bf c]  a[ c d e]  f[ ef d c]

% Page 6

%{ 30 %}  bf[ f' e! f]  c[ e d e]  f[ c a c]  f[ c  a'8]
%{ 31 %}  a[ f16 g]  a8[ f16 g]  a8 d a d
%{ 32 %}  a[ f16 g]  a8[ f16 g]  a8 d  << { a16 f' a, f'} \\ { s8 d, } >>
%{ 33 %}  \repeat unfold 4 { << { bf'16[ f' bf, f'] } \\ { g,8[ g] } >> }
%{ 34 %}  \repeat unfold 2 { << { a16[ e' a, e'] } \\ { f,8[ f] } >> }
          \repeat unfold 2 { << { a16[ d a d] } \\ { f,8[ f] } >> }
%{ 35 %}  e16[ d' e, d']  e,[ d' e, d']  e,[ cs' e, cs']  e,[ cs' e, cs']
%{ 36 %}  d,8[ f'16 e]  d8[ a'16 g]  f8 d'  a16[ g f e]
%{ 37 %}  d8[ f16 e]  d8[ a'16 g]  f8 d'  a,16[ b cs d]
%{ 38 %}  e16[ f g e]  f[ d a d]  e[ f g e]  f[ d a'8-|]

% Page 7

%{ 39 %}  g16[( f) e( d)]  a8 cs  d8[ c16 bf]  a[ g f e]
%{ 40 %}  d[ e f e]  d[ e f e]  d[ cs d e]  f[ g f e]
%{ 41 %}  d[ e f e]  d[ e f e]  d[ cs d e]  f[ g a fs]
%{ 42 %}  g[ a b a]  g[ a b a]  g[ fs g a]  b[ c b a]
%{ 43 %}  g[ a b a]  g[ a b a]  g[ fs g a]  b[ c d b]
%{ 44 %}  c[ d e d]  c[ d e d]  c[ b c d]  e[ f e d]
%{ 45 %}  c[ d e d]  c[ d e d]  c[ b c d]  e[ f g e]
%{ 46 %}  a[ g f g]  a[ g f g]  a[ bf a g]  f[ e f g]

% Page 8

%{ 47 %}  a[ g f g]  a[ g f g]  a[ bf a g]  f[ g a f]
%{ 48 %}  g[ f g a]  bf[ a bf a]  g[ f e d]  c[f e f]
%{ 49 %}  g[ f g a]  bf[ a bf a]  g[ f e d]  c[ bf a g]
%{ 50 %}  f8[ a16 g]  f8[ c'16 bf]  a8 f'  c16[ bf a g]
%{ 51 %}  << { a8( a a a) a( a a a) } \\ { fs_\piano fs fs fs  fs fs fs fs } >>
%{ 52 %}  g16[ b d c]  b[ c b a]  g[ d e f!]  g[ f g a]
%{ 53 %}  b8_\forte[ d16 c]  b8[ f'16 e]  d8 b'  e,16[ d c b]
%{ 54 %}  cs8 a cs e  a e cs a
%{ 55 %}  c!_\piano( c c c) c([ c c)] a'_\forte

% Page 9

%{ 56 %}  bf f f d  d bf bf bf'
%{ 57 %}  bf f f d  d[ bf bf] f'
%{ 58 %}  c16[ d ef c]  d[ bf f bf]  c[ d ef c]  d[ bf f'8-|]
%{ 59 %}  ef16[( d) c( bf)]  f8 a \trill  bf[ a16 g]  f[ef d c]
%{ 60 %}  bf[ ef bf ef]  c[ ef c ef]  d[ f d f]  d[ bf' d, bf']
%{ 61 %}  c,[ bf' c, bf']  c,[ a' c, a']  bf8 bf, r d'
%{ 62 %}  e16[( fs) e( fs)]  fs8.[ \trill e32 fs]  g8[ g,16 a16]  bf[ c d bf]
%{ 63 %}  ef[ c a c]  fs,[ a d c]  bf[ c d bf]  g[ a bf g]
%{ 64 %}  ef[ af ef af]  f[ af f af]  g[ bf g bf]  g[ ef' g, ef']
%{ 65 %}  f,[ ef' f, ef']  f,[ d' f, d']  ef,4  r8 g'

% Page 10

%{ 66 %}  g( f)  r f  f( ef)  r c
%{ 67 %}  c( b)  r d  d( c)  r g
%{ 68 %}  c16[ g g b]  c[ g g b]  c[ g g b]  c[ g g b]
%{ 69 %}  c16[ g g b]  c[ g g b]  c[ g a b]  c[ d ef f]
%{ 70 %}  g[ f g a]  b[ a b c]  d8 g,  r d'
%{ 71 %}  g,16[ f g a]  b[ a b c]  d8 g,  r g16 af
%{ 72 %}  bf[ af g f]  g[ f e! d]  c[ g a! b]  c[ d e c]
%{ 73 %}  << { g'8 c,[( c c)] c(c c c) } \\ { r8 f,[_\piano f f] f f f f } >>

% Page 11

%{ 74 %}  a_\forte[ c16 bf]  a8[ ef'16 d]  c8 a'  d,16[ c bf a]
%{ 75 %}  bf[ c d c]  bf[ c d c]  bf[ c bf a]  g[ fs g a]
%{ 76 %}  bf[ c d c]  bf[ c d c]  bf[ c bf a]  g[ a g f]
%{ 77 %}  ef[ d ef f]  g[ f g ef]  a[ g a bf]  c[ bf c a]
%{ 78 %}  d[ c d ef]  f[ ef f d]  g[ fs g a]  bf[ a bf g]
%{ 79 %}  c8. bf16  a[ g fs e!]  d8. c16  bf[ a g fs]
%{ 80 %}  g8[ bf16 a]  g8[ d'16 c]  bf8 g'  d16[ c bf a]
%{ 81 %}  g8[ bf16 a]  g8[ d'16 c]  bf8 g'  d16[ e fs g]

% Page 12

%{ 82 %}  a[ bf c a]  bf[ g d g]  a[ bf c a]  bf[ g d'8-|]
%{ 83 %}  c16[( bf) a( g)] d8 fs g8[ f16 ef]  d[ c bf a]
%{ 84 %}  g8 d bf d  g, d' bf d
%{ 85 %}  g d bf d  g,4  r8 e''
%{ 86 %}  e16[ d cs d]  e[ d cs d]  e8 a e a
%{ 87 %}  e16[ d cs d]  e[ d cs d]  e8 a e a
%{ 88 %}  f16[ e d e]  f[ e d e]  f[ g a g]  f[ g a g]
%{ 89 %}  f[ e d e]  f[ e d e]  f[ g a g]  f[ e d c]
%{ 90 %}  bf[ a g a]  bf[ a g a]  bf[ g' bf, g']  bf,[ g' bf, g']
%{ 91 %}  a,[ g f g]  a[ g f g]  a[ f' a, f' ]  a,[ f' a, f' ]

% Page 13

%{ 92 %}  gs,16[ a b a]  gs[ a b a]  a[ a c a]  a[ a c a]
%{ 93 %}  b[ a d a]  b[ a d a]  c[ a b a] a8 \noBeam e
%{ 94 %}  e[ c16 d]  e8[ c16 d]  e8 a e a
%{ 95 %}  e[ c16 d]  e8[ c16 d]  e8 a e r
%{ 96 %}  r a d a b2 ~
%{ 97 %}  b8 g c g a2 ~
%{ 98 %}  a8 fs b fs  gs4.  a16 b
%{ 99 %}  c8[ a'16 gs]  a8 e  e[ c'16 b] c8 e,

% Page 14

%{ 100 %}  e[ a16 gs]  a8 e  e[ c'16 b] c8 e,
%{ 101 %}  b16[ c d b]  c[ a e a]  b[ c d b]  c[ a  e'8-|]
%{ 102 %}  d16[( c) b( a)]  e8 gs \trill a4  r8 f
%{ 103 %}  c[ a16 bf]  c8[ a16 bf]  c8 f c f
%{ 104 %}  c[ a16 bf]  c8[ a16 bf]  c8[ f c] f'
%{ 105 %}  g16[ f g a]  bf[ a bf a]  g[ f e d]  c[ f e f]
%{ 106 %}  g[ f g a]  bf[ a bf a]  g[ f e d]  c8 f
%{ 107 %}  bf,[ d16 c]  bf8[ f'16 ef]  d8 bf'  f16[ ef d c]
%{ 108 %}  << {b8( b b b) b( b b b)} \\ {f_\piano f f f d d d d} >>

% Page 15

%{ 109 %}  c'16[ e! g f]  e[ f e d]  c[ g a bf!]  c[ bf c d]
%{ 110 %}  e8_\forte [g16 f]  e8[ bf'16 a]  g8 e'  a,16[ g f e]
%{ 111 %}  fs8 d fs a  d a fs d
%{ 112 %}  f!16[ g af g]  f[ g f ef]  d[ ef f ef]  d[ c b a!]
%{ 113 %}  g4  r8 bf'!_\forte  bf g g c,
%{ 114 %}  e g g bf  bf g g c,
%{ 115 %}  f,[ a16 g]  f8 [ c'16 bf]  a8 f'  c16[ bf a g]
%{ 116 %}  f8[ a16 g]  f8 [ c'16 bf]  a8 f'  c16[ d e f]
%{ 117 %}  g[ a bf g]  a[ f c f]  g[ a bf g]  a[ f c'8-|]
%{ 118 %}  bf16[( a) g( f]) c8 e f4. \fermata
           \bar "|."
\pageBreak
}}



AviolinoI = \new Voice { \relative c' {
  \clef treble
  \time 2/2
  \key f \major
  \set Staff.midiInstrument = "Violin"
  \set Staff.instrumentName =
        \markup{\bold\center-align{ \line{Violino I}
                                    \line{di ripieno.}}}

  \partial 8*1 f'8

% Page 3

%{ 1 %}  c[ a16 bf] c8[ a16 bf] c8 f c f
%{ 2 %}  c[ a16 bf] c8[ a16 bf] c8[ f c] f
%{ 3 %}  g16[ f g a]  bf[ a bf a] g[ f e d] c[ f e f]
%{ 4 %}  g[ f g a]  bf[ a bf a] g[ f e d] c[ bf a g]
%{ 5 %}  f8[ a16 g] f8[ c'16 bf16] a8 f' c16[ bf a g]
%{ 6 %}  f8[ a16 g] f8[ c'16 bf16] a8 f' c16[ d e f]
%{ 7 %}  g[ a bf g] a[ f c f] g[ a bf g] a[ f c'8-|]
%{ 8 %}  bf16[( a) g( f)] c8 e \trill f4 r4
%{ 9 %}  r1

% Page 4

%{ 10 %}  r2 r4 r8 f
%{ 11 %}  c[ a16 bf] c8[ a16 bf] c8[ f c f]
%{ 12 %}  c[ a16 bf] c8[ a16 bf] c8 f c r
%{ 13 %}  r1
%{ 14 %}  r2 r4 r8 a'
%{ 15 %}  g8[ e16 f]  g8[ e16 f]  g8 c g c
%{ 16 %}  g[ e16 f]  g8[ e16 f]  g8[ c g] r
%{ 17 %}  r1
%{ 18 %}  r2 r4 r8 c
%{ 19 %}  g8[ e16 f]  g8[ e16 f]  g8 c g c

% Page 5

%{ 20 %}  g[ e16 f]  g8[ e16 f]  g8 c g r
%{ 21 %}  r1
%{ 22 %}  r2 r4 r8 c,
%{ 23 %}  d16[ c d e]  f[ e f e]  d[ c b a]  g[ c b c]
%{ 24 %}  d[ c d e]  f[ e f e]  d[ c b a]  g[ f e d]
%{ 25 %}  c8[ e16 d]  c8[ g'16 f]  e8 c'  g16[ f e d]
%{ 26 %}  c8[ e16 d]  c8[ g'16 f]  e8 c'  g16[ a b c]
%{ 27 %}  d16[ e f d]  e[ c g c] d[ e f d] e[ c g'8-|]
%{ 28 %}  f16[( e) d( c)] g8 b  c4 r
%{ 29 %}  r1

% Page 6

%{ 30 %}  r2 r4 r8 a_\piano
%{ 31 %}  a[ f16 g]  a8[ f16 g]  a8 d a d
%{ 32 %}  a[ f16 g]  a8[ f16 g]  a8[ d a] f'_\forte
%{ 33 %}  f2  e~
%{ 34 %}  e d ~
%{ 35 %}  d cs
%{ 36 %}  d8[ f16 e]  d8[ a'16 g]  f8 d'  a16[ g f e]
%{ 37 %}  d8[ f16 e]  d8[ a'16 g]  f8 d'  a,16[ b cs d]
%{ 38 %}  e16[ f g e]  f[ d a d]  e[ f g e]  f[ d a'8-|]

% Page 7

%{ 39 %}  g16[( f) e( d)]  a8 cs  d4  r8 d,16_\piano cs
%{ 40 %}  d8[ d16 cs]  d8[ d16 cs]  d8[ d16 cs d8]  d16_\pianissimo[ cs]
%{ 41 %}  d8[ d16 cs]  d8[ d16 cs]  d4  r8  g16_\piano fs
%{ 42 %}  g8[ g16 fs]  g8[ g16 fs]  g8[ g16 fs g8]  g16_\pianissimo[ fs]
%{ 43 %}  g8[ g16 fs]  g8[ g16 fs]  g4  r8  c16_\piano[ b]
%{ 44 %}  c8[ c16 b]  c8[ c16 b]  c8[ c16 b c8]  c16_\pianissimo[ b]
%{ 45 %}  c8[ c16 b]  c8[ c16 b]  c4  r8  f,16_\piano[ e]
%{ 46 %}  f8[ f16 e]  f8[ f16 e]  f8[ f16 e f8]  f16_\pianissimo[ e]

% Page 8

%{ 47 %}  f8[ f16 e]  f8[ f16 e]  f4  r8 f'8_\forte
%{ 48 %}  g16[ f g a]  bf[ a bf a]  g[ f e d]  c[f e f]
%{ 49 %}  g[ f g a]  bf[ a bf a]  g[ f e d]  c[ bf a g]
%{ 50 %}  f8_\piano c'4 a f  c'8 ~
%{ 51 %}  c  a4  fs d  d'8 ~
%{ 52 %}  d8  b4 g d  d'8 ~
%{ 53 %}  d  b4 gs e  e'8 ~
%{ 54 %}  e  cs4  a e  a8 ~
%{ 55 %}  a  ef'4  c! a  c8

% Page 9

%{ 56 %}  d8 r  r bf,16[ a]  bf8[ bf16 a]  bf8[ bf16 a]
%{ 57 %}  bf8 r r  bf16[ a]  bf8[ bf16 a bf8]  f''_\forte
%{ 58 %}  c16[ d ef c]  d[ bf f bf]  c[ d ef c]  d[ bf f'8-|]
%{ 59 %}  ef16[( d) c( bf)]  f8 a \trill  bf4 r
%{ 60 %}  r1
%{ 61 %}  r
%{ 62 %}  r
%{ 63 %}  r
%{ 64 %}  r
%{ 65 %}  r

% Page 10

%{ 66 %}  r
%{ 67 %}  r2 r4 r8 c_\piano
%{ 68 %}  g[ ef16 f]  g8[ ef16 f]  g8 c g c
%{ 69 %}  g[ ef16 f]  g8[ ef16 f]  g8[ c g] c_\forte
%{ 70 %}  d16[ c d ef]  f[ ef f ef]  d[ c b a]  g[ c b c]
%{ 71 %}  d[ c d ef]  f[ ef f ef]  d[ c b a]  g[ f ef d]
%{ 72 %}  c8_\piano c'4 g e! c8 ~
%{ 73 %}  c c'4 a f c8 ~

% Page 11

%{ 74 %}  c c'4 a fs d'8_\forte
%{ 75 %}  d8[ bf16 c]  d8[ bf16 c]  d8 g d g
%{ 76 %}  d8[ bf16 c]  d8[ bf16 c]  d8[ g d] g
%{ 77 %}  g2 a ~
%{ 78 %}  a g ~
%{ 79 %}  g fs
%{ 80 %}  g8_\forte[ bf,16 a]  g8[ d'16 c]  bf8 g'  d16[ c bf a]
%{ 81 %}  g8[ bf16 a]  g8[ d'16 c]  bf8 g'  d16[ e fs g]

% Page 12

%{ 82 %}  a[ bf c a]  bf[ g d g]  a[ bf c a]  bf[ g d'8-|]
%{ 83 %}  c16[( bf) a( g)] d8 fs g8[ f16 ef]  d[ c bf a]
%{ 84 %}  g8 d bf d  g, d' bf d
%{ 85 %}  g d bf d  g,4  r4
%{ 86 %}  g''1 ~
%{ 87 %}  g
%{ 88 %}  f ~
%{ 89 %}  f ~
%{ 90 %}  f2 e ~
%{ 91 %}  e d ~

% Page 13

%{ 92 %}  d c
%{ 93 %}  b a4 r8 a,16_\piano gs
%{ 94 %}  a8[ a16 gs]  a8[ a16 gs]  a8[ a16 gs]  a8[ a16 gs]
%{ 95 %}  a8[ a16 gs]  a8[ a16 gs]  a4 r
%{ 96 %}  f''1_\forte
%{ 97 %}  e
%{ 98 %}  d
%{ 99 %}  c8 e, e c  c a a a'

% Page 14

%{ 100 %}  a e e c  c a a e''
%{ 101 %}  b16[ c d b]  c[ a e a]  b[ c d b]  c[ a  e'8-|]
%{ 102 %}  d16[( c) b( a)]  e8 gs  a4  r8 f
%{ 103 %}  c[ a16 bf]  c8[ a16 bf]  c8 f c f
%{ 104 %}  c[ a16 bf]  c8[ a16 bf]  c8[ f c] f'
%{ 105 %}  g16[ f g a]  bf[ a bf a]  g[ f e d]  c[ f e f]
%{ 106 %}  g[ f g a]  bf[ a bf a]  g[ f e d]  c[ bf a g]
%{ 107 %}  f8_\piano  f'4 d bf f'8 ~
%{ 108 %}  f8 d4 b g g'8 ~

% Page 15

%{ 109 %}  g e4 c g g'8 ~
%{ 110 %}  g e4 cs a a'8 ~
%{ 111 %}  a fs4 d a d8 ~
%{ 112 %}  d af4 f d g8
%{ 113 %}  c,1 ~
%{ 114 %}  c
%{ 115 %}  f8_\forte[ a16 g]  f8 [ c'16 bf]  a8 f'  c16[ bf a g]
%{ 116 %}  f8[ a16 g]  f8 [ c'16 bf]  a8 f'  c16[ d e f]
%{ 117 %}  g[ a bf g]  a[ f c f]  g[ a bf g]  a[ f c'8-|]
%{ 118 %}  bf16[( a) g( f]) c8 e f4. \fermata
           \bar "|."
\pageBreak
}}



AviolinoII = \new Voice { \relative c' {
  \clef treble
  \time 2/2
  \key f \major
  \set Staff.midiInstrument = "Violin"
  \set Staff.instrumentName =
        \markup{\bold\center-align{ \line{Violino II}
                               \line{di ripieno.}}}

  \partial 8*1 c'8

% Page 3

%{ 1 %}  a[ f16 g]  a8[ f16 g]  a8 c f, c'
%{ 2 %}  a[ f16 g]  a8[ f16 g]  a8[ c f,] c'
%{ 3 %}  c16[ d e f]  g8 f  c4  r8 c
%{ 4 %}  c16[ d e f]  g8 f  c4  r8 f,16 e
%{ 5 %}  f8[ f16 e]  f8[ f16 e]  f8[ f16 e]  f8[ f16 e]
%{ 6 %}  f8[ f16 e]  f8[ f16 e]  f8[ f16 e]  f8 c'
%{ 7 %}  e g4 f8 e g f g
%{ 8 %}  c, bf a g a4 r
%{ 9 %}  r1

% Page 4

%{ 10 %}  r2 r4 r8 c
%{ 11 %}  a8[ f16 g]  a8[ f16 g]  a8 c f, c'
%{ 12 %}  a8[ f16 g]  a8[ f16 g]  a8 c a r
%{ 13 %}  r1
%{ 14 %}  r2 r4 r8 c
%{ 15 %}  c g c g  c g' e g
%{ 16 %}  c, g c g  c g' e r
%{ 17 %}  r1
%{ 18 %}  r2 r4 r8 e
%{ 19 %}  c g c g  c g' e g

% Page 5

%{ 20 %}  c, g c g  c g' e r
%{ 21 %}  r1
%{ 22 %}  r2 r4 r8 g,
%{ 23 %}  g16[ a b c]  d8 c g4  r8 g
%{ 24 %}  g16[ a b c]  d8 c g4  r8  c,16[ b]
%{ 25 %}  c4 r8  c16[ b]  c8[ c16 b] c8[ c16 b]
%{ 26 %}  c4 r8  c16[ b]  c8[ c16 b] c8 g'
%{ 27 %}  b8 d4 c8  b d c c
%{ 28 %}  c a g f  e4 r
%{ 29 %}  r1

% Page 6

%{ 30 %}  r2 r4 r8 a_\piano
%{ 31 %}  a[ f16 g]  a8[ f16 g]  a8 d a d
%{ 32 %}  a[ f16 g]  a8[ f16 g]  a8[ d a] r
%{ 33 %}  bf1_\forte
%{ 34 %}  a1
%{ 35 %}  g2. e4
%{ 36 %}  f r8  d'16 cs  d8[ d16 cs]  d8[ d16 cs]
%{ 37 %}  d4 r8  d16 cs  d8[ d16 cs]  d8 a
%{ 38 %}  cs  e4  d8 cs e d d

% Page 7

%{ 39 %}  d a a g  f4 r8  d16_\piano cs
%{ 40 %}  d8[ d16 cs]  d8[ d16 cs]  d8[ d16 cs d8]  d16_\pianissimo cs
%{ 41 %}  d8[ d16 cs]  d8[ d16 cs]  d4 r8  g16_\piano fs
%{ 42 %}  g8[ g16 fs]  g8[ g16 fs]  g8[ g16 fs g8]  g16_\pianissimo fs
%{ 43 %}  g8[ g16 fs]  g8[ g16 fs]  g4 r8  c16_\piano b
%{ 44 %}  c8[ c16 b]  c8[ c16 b]  c8[ c16 b c8]  c16_\pianissimo[ b]
%{ 45 %}  c8[ c16 b]  c8[ c16 b]  c4  r8  f,16_\piano[ e]
%{ 46 %}  f8[ f16 e]  f8[ f16 e]  f8[ f16 e f8]  f16_\pianissimo[ e]

% Page 8

%{ 47 %}  f8[ f16 e]  f8[ f16 e]  f4  r8 c'8_\forte
%{ 48 %}  c16[ d e f]  g8 f c4  r8 c8
%{ 49 %}  c16[ d e f]  g8 f c4  r4
%{ 50 %}  c,8 r f r  a r c r
%{ 51 %}  d, r fs r  a r c r
%{ 52 %}  d, r g r  b r d r
%{ 53 %}  e, r gs r  b r d r
%{ 54 %}  e, r a r  cs r e r
%{ 55 %}  f, r a r  b r ef r

% Page 9

%{ 56 %}  f, r r bf,16 a  bf8[ bf16 a] bf8[ bf16 a]
%{ 57 %}  bf8 r r bf16 a16  bf8[ bf16 a16 bf8]  bf'8_\forte
%{ 58 %}  a8 c4  bf8  a c bf bf
%{ 59 %}  bf g f f  f4 r
%{ 60 %}  r1
%{ 61 %}  r
%{ 62 %}  r
%{ 63 %}  r
%{ 64 %}  r
%{ 65 %}  r

% Page 10

%{ 66 %}  r
%{ 67 %}  r2 r4 r8 c'_\piano
%{ 68 %}  g[ ef16 f]  g8[ ef16 f]  g8 c g c
%{ 69 %}  g[ ef16 f]  g8[ ef16 f]  g8[ c g] r
%{ 70 %}  r g_\forte  g[ g,] r g' g[ g,]
%{ 71 %}  r g'  g[ g,] r g' g[ g,]
%{ 72 %}  c_\piano r e! r  g r bf r
%{ 73 %}  c, r f r  a r c r

% Page 11

%{ 74 %}  d, r fs r  a r c r
%{ 75 %}  bf_\forte[ g16 fs]  g8[ g16 fs]  g8[ g16 fs]  g8[ g16 fs]
%{ 76 %}  g8[ g16 fs]  g8[ g16 fs]  g8[ g16 fs]  g8 r
%{ 77 %}  ef'1
%{ 78 %}  d
%{ 79 %}  c2. a4
%{ 80 %}  bf r8  g'16 fs  g8[ g16 fs]  g8[ g16 fs]
%{ 81 %}  g4 r8  g16 fs  g8[ g16 fs]  g8 d

% Page 12

%{ 82 %}  fs a4 g8  fs a g a
%{ 83 %}  d, c bf a  bf4 r
%{ 84 %}  r8 d, bf d  g, d' bf d
%{ 85 %}  g d bf d  g,4 r4
%{ 86 %}  cs'1 ~
%{ 87 %}  cs
%{ 88 %}  d ~
%{ 89 %}  d ~
%{ 90 %}  d2 c ~
%{ 91 %}  c b ~

% Page 13

%{ 92 %}  b a
%{ 93 %}  gs a4 r8  a,16_\piano gs
%{ 94 %}  a8[ a16 gs]  a8[ a16 gs]  a8[ a16 gs]  a8[ a16 gs]
%{ 95 %}  a8[ a16 gs]  a8[ a16 gs]  a4 c'_\forte ~
%{ 96 %}  c2 b2 ~
%{ 97 %}  b a ~
%{ 98 %}  a gs
%{ 99 %}  a8 e e c  c a a a'

% Page 14

%{ 100 %}  a e e c  c a a a'
%{ 101 %}  gs b4 a8  gs b a a
%{ 102 %}  a f e e e4 r8 f
%{ 103 %}  c[ a16 bf]  c8[ a16 bf]  c8 f c f
%{ 104 %}  c[ a16 bf]  c8[ a16 bf]  c8[ f c] c'
%{ 105 %}  c16[ d e f]  g8 f c4 r8 c
%{ 106 %}  c16[ d e f]  g8 f  c16[ f e d] c[ bf a g]
%{ 107 %}  f8_\piano r bf r d r f r
%{ 108 %}  g, r b r d r f r

% Page 15

%{ 109 %}  g, r c r e r g r
%{ 110 %}  a, r cs r e r g r
%{ 111 %}  a, r d r fs r a r
%{ 112 %}  f! r d r b! r g r
%{ 113 %}  g,1 ~
%{ 114 %}  g
%{ 115 %}  c8_\forte[ f16 e] f8[ f16 e] f8[ f16 e] f8[ f16 e]
%{ 116 %}  f8[ f16 e] f8[ f16 e] f8[ f16 e] f8 c'
%{ 117 %}  e g4 f8  e g f g
%{ 118 %}  c, bf a g a4. \fermata
           \bar "|."
\pageBreak
}}



Aviola = \new Voice { \relative c' {
  \clef alto
  \time 2/2
  \key f \major
  \set Staff.midiInstrument = "Viola"

  \set Staff.instrumentName =
        \markup{\bold\center-align{ \line{Viola}
                                    \line{di ripieno.}}}

  \partial 8*1 a'8

% Page 3
%{ 1 %}  f c f c  f a c c,
%{ 2 %}  f c f c  f[ a c] a
%{ 3 %}  g bf e, c'  g4 r8 a
%{ 4 %}  g bf e, c'  g4 r8 c,16 bf
%{ 5 %}  c8[ c16 bf]  a8[ a16 g]  f8[ a16 g]  f8[c'16 bf]
%{ 6 %}  c8[ c16 bf]  a8[ a16 g]  f8[ a16 g]  f8 a'
%{ 7 %}  g c,4 a'8   g c,4 bf8
%{ 8 %}  f' d c c  c4 r
%{ 9 %}  r1

% Page 4
%{ 10 %}  r2 r4 r8  a'8
%{ 11 %}  f c f c  f a c c,
%{ 12 %}  f c f c  f a c r
%{ 13 %}  r1
%{ 14 %}  r2 r4 r8 f,
%{ 15 %}  g c g c  g e c e
%{ 16 %}  g c g c  g e c r
%{ 17 %}  r1
%{ 18 %}  r2 r4 r8 g'
%{ 19 %}  g c g c  g e c e

% Page 5
%{ 20 %}  g c g c  g e c r
%{ 21 %}  r1
%{ 22 %}  r2 r4 r8 g'
%{ 23 %}  d f b, g'  d4 r8 g
%{ 24 %}  d f b, g'  d4 r8 g,
%{ 25 %}  g8[ g16 f]  e8[ e16 d]  c4  r8 g'16 f
%{ 26 %}  g8[ g16 f]  e8[ e16 d]  c4  r8 e'
%{ 27 %}  d g,4 e'8 d8 g,4 g8
%{ 28 %}  c f e d  c4 r
%{ 29 %}  r1

% Page 6
%{ 30 %}  r2 r4 r8  a'_\piano
%{ 31 %}  a[ f16 g]  a8[ f16 g]  a8 d a d
%{ 32 %}  a[ f16 g]  a8[ f16 g]  a8[ d a] d,_\forte
%{ 33 %}  g,16[ f g a]  bf[ a bf g]  c8 c' r c,
%{ 34 %}  f,16[ e f g]  a[ g a f]  bf8 bf' r bf,
%{ 35 %}  e,16[ d e f]  g[ f g e]  a8 a' r a16 g
%{ 36 %}  a8[ a16 g]  f8[ f16 e] d4 r8  a'16 g
%{ 37 %}  a8[ a16 g]  f8[ f16 e] d4 r8  f8
%{ 38 %}  e a,4 f'8 e a,4 a8

% Page 7
%{ 39 %}  d f f e d4 r8 d16_\piano cs
%{ 40 %}  d8[ d16 cs]  d8[ d16 cs]  d8[ d16 cs d8]  d16_\pianissimoparen cs
%{ 41 %}  d8[ d16 cs]  d8[ d16 cs]  d4 r8  g16_\piano fs
%{ 42 %}  g8[ g16 fs]  g8[ g16 fs]  g8[ g16 fs g8]  g16_\pianissimo fs
%{ 43 %}  g8[ g16 fs]  g8[ g16 fs]  g4 r8  c16_\piano b
%{ 44 %}  c8[ c16 b]  c8[ c16 b]  c8[ c16 b c8]  c16_\pianissimo b
%{ 45 %}  c8[ c16 b]  c8[ c16 b]  c4 r8  f,16_\piano e
%{ 46 %}  f8[ f16 e]  f8[ f16 e]  f8[ f16 e f8]  f16_\pianissimo e

% Page 8
%{ 47 %}  f8[ f16 e]  f8[ f16 e]  f4 r8 a_\forte
%{ 48 %}  g bf e, c'  g4 r8 a
%{ 49 %}  g bf e, c'  g4 r4
%{ 50 %}  a,8_\piano r c r  f r a r
%{ 51 %}  fs r d r  fs r a r
%{ 52 %}  b, r d r  g r b r
%{ 53 %}  gs r e r  gs r b r
%{ 54 %}  cs, r e r  a r cs r
%{ 55 %}  a r f r  a r c! r

% Page 9
%{ 56 %}  bf r8 r8 bf,16 a bf8[ bf16 a] bf8[ bf16 a]
%{ 57 %}  bf8 r r bf16 a  bf8[ bf16 a bf8] d_\forte
%{ 58 %}  c f4 d8 c f4 f8
%{ 59 %}  bf, ef a, c d4 r
%{ 60 %}  r1
%{ 61 %}  r
%{ 62 %}  r
%{ 63 %}  r
%{ 64 %}  r
%{ 65 %}  r

% Page 10
%{ 66 %}  r
%{ 67 %}  r2 r4 r8 c'_\piano
%{ 68 %}  g[ ef16 f]  g8[ ef16 f]  g8 c g c
%{ 69 %}  g[ ef16 f]  g8[ ef16 f]  g8 c g r
%{ 70 %}  r g_\forteparen g[ g,] r g' g[ g,]
%{ 71 %}  r g' g[ g,] r g' g[ g,]
%{ 72 %}  g_\piano r c r  e! r g r
%{ 73 %}  a, r c r  f r a r

% Page 11
%{ 74 %}  a, r d r  fs r a r
%{ 75 %}  g_\forte[ g16 fs] g8[ g16 fs] g8[ g16 fs] g8[ g16 fs]
%{ 76 %}  g8[ g16 fs] g8[ g16 fs] g8[ g16 fs] g8 \noBeam g,
%{ 77 %}  c16[ bf c d]  ef[ d ef c]  f8 f, r f
%{ 78 %}  bf16[ a bf c]  d[c d bf]  ef8 ef, r ef
%{ 79 %}  a16[ g a bf]  c[ bf c a]  d8 d, r d''16 c
%{ 80 %}  d8[ d16 c]  bf8[ bf16 a] g4 r8 d'16 c
%{ 81 %}  d8[ d16 c]  bf8[ bf16 a] g4 r8 bf

% Page 12
%{ 82 %}  a8 d,4 bf'8 a d,4 d8
%{ 83 %}  g ef d d d4 r
%{ 84 %}  r8 d bf d  g, d' bf d
%{ 85 %}  g d bf d  g,4 r
%{ 86 %}  e'1 ~
%{ 87 %}  e1
%{ 88 %}  a ~
%{ 89 %}  a
%{ 90 %}  bf
%{ 91 %}  a

% Page 13
%{ 92 %}  gs2 e ~
%{ 93 %}  e e4 r8 a,16_\piano gs
%{ 94 %}  a8[ a16 gs]  a8[ a16 gs]  a8[ a16 gs]  a8[ a16 gs]
%{ 95 %}  a8[ a16 gs]  a8[ a16 gs]  a4 r8 a^\forte
%{ 96 %}  d16[ c d e]  f[ e f d]  g8 g, r g
%{ 97 %}  c16[ b c d]  e[ d e c]  f8 f, r f
%{ 98 %}  b16[ a b c]  d[ c d b]  e8 e, r e'8
%{ 99 %}  e e e c  c a a a'

% Page 14
%{ 100 %}  a e e c  c a a e'
%{ 101 %}  e e,4 e'8 e e,4 e'8
%{ 102 %}  a, d c b  c4 r8 f
%{ 103 %}  c[ a16 bf!] c8[ a16 bf]  c8 f c f
%{ 104 %}  c[ a16 bf] c8[ a16 bf]  c8[ f c] a'
%{ 105 %}  g bf e, c'  g4 r8 a8
%{ 106 %}  g bf e, c'  g16[ f e d]  c[ bf a g]
%{ 107 %}  d'8_\piano r f r  bf r d r
%{ 108 %}  b r g r  b r d r

% Page 15
%{ 109 %}  e, r g r  c r e r
%{ 110 %}  cs r a, r  cs r e r
%{ 111 %}  fs r a r  d, r fs r
%{ 112 %}  d r f! r  af r d, r
%{ 113 %}  e,1 ~
%{ 114 %}  e
%{ 115 %}  a8_\forte[ c16 bf]  a8[ a16 g]  f8[ a16 g] f8[ c'16 bf]
%{ 116 %}  c8[ c16 bf]  a8[ a16 g]  f8[ a16 g]  f8 a'
%{ 117 %}  g c,4 a'8 g c,4 c8
%{ 118 %}  f d c c  c4. \fermata
           \bar "|."
\pageBreak
}}



Aviolone = \new Voice { \relative c' {
  \clef bass
  \time 2/2
  \key f \major
  \set Staff.midiInstrument = "Violin"

  \set Staff.instrumentName =
        \markup{\bold\center-align{ \line{Violone}
                                    \line{di ripieno.}}}
  \partial 8*1 f,,8

% Page 3
%{ 1 %}  f'16[ g a g]  f[ g a g]  f[ e f g]  a[ bf a g]
%{ 2 %}  f[ g a g]  f[ g a g]  f[ e f g a8]  f
%{ 3 %}  e8 g c, f  e g c, a'
%{ 4 %}  e g c, f  e g c, bf
%{ 5 %}  a f a c  f c a c
%{ 6 %}  a f a c  f c a f
%{ 7 %}  c' e, f a  c e, f e'
%{ 8 %}  f bf, c c,  f4 r
%{ 9 %}  r1

% Page 4
%{ 10 %}  r2 r4 r8 f8
%{ 11 %}  f'16[ g a g]  f[ g a g]  f[ e f g]  a[ bf a g]
%{ 12 %}  f[ g a g]  f[ g a g]  f8 f, f' r
%{ 13 %}  r1
%{ 14 %}  r2 r4 r8 f
%{ 15 %}  e g e c  e g c g
%{ 16 %}  e g e c  e g c r
%{ 17 %}  r1
%{ 18 %}  r2 r4 r8 c,
%{ 19 %}  e g e c  e g c g

% Page 5
%{ 20 %}  e g e c  e g c r
%{ 21 %}  r1
%{ 22 %}  r2 r4 r8 e,
%{ 23 %}  b d g, c  b d g, c
%{ 24 %}  b d g, c  b d g, f
%{ 25 %}  e c e g  c g e g
%{ 26 %}  e c e g  c g e c
%{ 27 %}  a' b c e  g b, c e
%{ 28 %}  a f g g,  c4 r
%{ 29 %}  r1

% Page 6
%{ 30 %}  r2 r4 r8  f16_\piano e
%{ 31 %}  d[ e f e]  d[ e f e]  d[ cs d e]  f[ g f e]
%{ 32 %}  d[ e f e]  d[ e f e]  d_\forte[ cs d e]  f[ e f d]
%{ 33 %}  g8 g, r g'  c,16[ bf c d]  e[ d e c]
%{ 34 %}  f8 f, r f'  bf,16[ a bf c]  d[ c d bf]
%{ 35 %}  e8 e, r e'  a,16[ g a bf]  a[ g f e]
%{ 36 %}  d8 d' f a  d a f a
%{ 37 %}  f d f a  d a f d
%{ 38 %}  a' cs, d f  a cs, d f

% Page 7
%{ 39 %}  bf[ f16 g]  a8 a,  d[ d,] r a''_\piano
%{ 40 %}  d a f a  d,[ a' f] a_\pianissimo
%{ 41 %}  d a f a  d, d, r d'_\pianoparen
%{ 42 %}  g d b d  g,[ d' b]  d_\pianissimo
%{ 43 %}  g d b d  g, g' r g_\pianoparen
%{ 44 %}  c g e g  c,[ g' e] g_\pianissimoparen
%{ 45 %}  c g e g  c, c, r c'_\piano
%{ 46 %}  f16[ g a g]  f[ g a g]  f[ e f g]  a[ bf a g]

% Page 8
%{ 47 %}  f_\pianissimoparen[ g a g]  f[ g a g]  f[ e f g a8] f_\forteparen
%{ 48 %}  e g c, f  e g c, a'
%{ 49 %}  e g c, f  e g c, d
%{ 50 %}  ef8 r ef r ef r ef r
%{ 51 %}  d r d r  d r d r
%{ 52 %}  f r f r  f r f r
%{ 53 %}  e r e r  e r e r
%{ 54 %}  g r g r  g r g r
%{ 55 %}  f r f r  f r f r

% Page 9
%{ 56 %}  bf,_\forte[ d16 c]  bf8[ f'16 ef]  d8 bf' f16[ ef d c]
%{ 57 %}  bf8[ d16 c]  bf8[ f'16 ef]  d8 bf' f16[ ef d ef]
%{ 58 %}  f8 a, bf d  f a, bf d
%{ 59 %}  g ef f f,  bf4 r
%{ 60 %}  r1
%{ 61 %}  r
%{ 62 %}  r
%{ 63 %}  r
%{ 64 %}  r
%{ 65 %}  r

% Page 10
%{ 66 %}  r
%{ 67 %}  r2 r4 r8 c,
%{ 68 %}  c'16[ d ef d]  c[ d ef d]  c[ b c d] ef[ f ef d]
%{ 69 %}  c[ d ef d]  c[ d ef d]  c[ b c d ef8] c
%{ 70 %}  g' g, r g' \noBeam g g, r g'
%{ 71 %}  g g, r g' g g, g' f
%{ 72 %}  e! r e r  e r e r
%{ 73 %}  ef r ef r  ef r ef r

% Page 11
%{ 74 %}  d r d r  d r d r
%{ 75 %}  g16_\forteparen[ a bf a]  g[ a bf a]  g[ fs g a]  bf[ c bf a]
%{ 76 %}  g[ a bf a]  g[ a bf a]  g[ fs g a]  bf[ a bf g]
%{ 77 %}  c,8 c' r c  f,16[ ef f g]  a[ g a f]
%{ 78 %}  bf,8 bf' r bf  ef,16[ d ef f]  g[ f g ef]
%{ 79 %}  a,8 a' r a  d,16[ c d ef]  d[ c bf a]
%{ 80 %}  g8 d' d bf  bf g g g'
%{ 81 %}  g d d bf  bf g g g'

% Page 12
%{ 82 %}  d fs, g bf  d fs, g fs'
%{ 83 %}  g c, d d,  g4 r
%{ 84 %}  r1
%{ 85 %}  r2 r8 g'16 a bf[ a bf g]
%{ 86 %}  a8 e cs e  a, e' cs e
%{ 87 %}  a e cs e  a,4 r8 a'
%{ 88 %}  a[ f16 g]  a8[ f16 g]  a8[ d a d]
%{ 89 %}  a8[ f16 g]  a8[ f16 g]  a8[ d d, f]
%{ 90 %}  g8 bf g bf  c, e c e
%{ 91 %}  f a f a  b, d b d

% Page 13
%{ 92 %}  e e, r e'  e e, r e'
%{ 93 %}  e e, r e'  a,4 r8 e'_\piano
%{ 94 %}  a16[ b c b]  a[ b c b]  a[ b c b]  a[ b c b]
%{ 95 %}  a[ b c b] a[ b c b] a[ b c b] a_\forte[ b c a]
%{ 96 %}  d,8 d' r d  g,16[ fs g a]  b[ a b g]
%{ 97 %}  c,8 c' r c  f,16[ e f g]  a[ g a f]
%{ 98 %}  b,8 b' r b  e,16[ d e f]  e[ d c b!]
%{ 99 %}  a8[ c16 b]  a8[ e'16 d]  c8 a'  e16[ d c b!]

% Page 14
%{ 100 %}  a8[ c16 b]  a8[ e'16 d]  c8 a'  e16[ d c d]
%{ 101 %}  e8 gs, a c  e gs, a c
%{ 102 %}  f d e e,  a4 r8 f'
%{ 103 %}  c[ a16 bf]  c8[ a16 bf]  c8 f c f
%{ 104 %}  c[ a16 bf]  c8[ a16 bf]  c8[ f c] a'
%{ 105 %}  e g c, f  e g c, a'
%{ 106 %}  e g c, f  e16[ f e d]  c[ bf a g]
%{ 107 %}  af8_\piano r af r  af r af r
%{ 108 %}  g r g r  g r g r

% Page 15
%{ 109 %}  bf r bf r  bf r bf r
%{ 110 %}  a r a r  a r a r
%{ 111 %}  c r c r  c r c r
%{ 112 %}  b r b r  b r b r
%{ 113 %}  c_\forte[ e16 d]  c8[ g'16 f]  e8 bf'  g16[ f e d]
%{ 114 %}  c8[ e16 d]  c8[ g'16 f]  e8 bf'  g16[ a bf g]
%{ 115 %}  a8_\forte f, a c  f c a c
%{ 116 %}  a f a c  f c a f
%{ 117 %}  c' e, f a  c e, f e'
%{ 118 %}  f bf, c c, f4. \fermata
           \bar "|."
\pageBreak
}}



Avioloncello = \new Voice { \relative c' {
  \clef bass
  \time 2/2
  \key f \major
  \set Staff.midiInstrument = "Violincello"

  \set Staff.instrumentName =
        \markup{\bold\center-align{Violoncello
                               \line{e Cembalo}
                               \line{all' unisono.}}}

  \partial 8*1 f,,8

% Page 3
%{ 1 %}  f'16[ g a g]  f[ g a g]  f[ e f g]  a[ bf a g]
%{ 2 %}  f[ g a g]  f[ g a g]  f[ e f g a8]  f
%{ 3 %}  e8 g c, f  e g c, a'
%{ 4 %}  e g c, f  e g c, bf
%{ 5 %}  a f a c  f c a c
%{ 6 %}  a f a c  f c a f
%{ 7 %}  c' e, f a  c e, f e'
%{ 8 %}  f bf, c c,  f8 g[ a f]
%{ 9 %}  bf a g c  a g f f'

% Page 4
%{ 10 %}  bf,8 r c r  f, \noBeam f'16 g  a[ bf a g]
%{ 11 %}  f16[ g a g]  f[ g a g]  f[ e f g]  a[ bf a g]
%{ 12 %}  f[ g a g]  f[ g a g]  f[ e f g a8] f
%{ 13 %}  bf g a c  a g f a
%{ 14 %}  g r c r  f,[ g a] f

%{ 15 %}  e g e c  e g c g
%{ 16 %}  e g e c  e[ g c] c,
%{ 17 %}  f e d g  e d c e
%{ 18 %}  f r g r  c,[ d e] c
%{ 19 %}  e g e c  e g c g

% Page 5
%{ 20 %}  e g e c  e[ g c] c,
%{ 21 %}  f e d g  e d e c
%{ 22 %}  f r g g,  c[ d e] c
%{ 23 %}  b d g, c  b d g, e'
%{ 24 %}  b d g, c  b[ d g,] g'16 f
%{ 25 %}  e8 c e g  c g e g
%{ 26 %}  e c e g  c g e c
%{ 27 %}  g' b, c e  g b, c e
%{ 28 %}  a f g g,  c d16[ e] f[ g a f]
%{ 29 %}  bf8 a g c  a g f a

% Page 6
%{ 30 %}  bf r c r  r f,16 g a[ g f e]
%{ 31 %}  d[ e f e]  d[ e f e]  d[ cs d e]  f[ g f e]
%{ 32 %}  d[ e f e]  d[ e f e]  d[ cs d e]  f[ e f d]
%{ 33 %}  g[ f g a]  bf[ a bf g]  c,[ bf c d]  e[ d e c]
%{ 34 %}  f[ e f g]  a[ g a f]  bf,[ a bf c]  d[ c d bf]
%{ 35 %}  e[ d e f]  g[ f g e]  a,[ g a bf]  a[ g f e]
%{ 36 %}  d8 d' f a  d a f a
%{ 37 %}  f d f a  d a f d
%{ 38 %}  a' cs, d f  a cs, d f

% Page 7
%{ 39 %}  bf f16 g a8[ a,] d d, r a''
%{ 40 %}  d a f a  d,[ a' g] a
%{ 41 %}  d a f a  d, d, r d'
%{ 42 %}  g d b d  g,[ d' b] d
%{ 43 %}  g d b d  g, g' r g
%{ 44 %}  c g e g  c,[ g' e] g
%{ 45 %}  c g e g  c, g' c16[ bf a g]
%{ 46 %}  f[ g a g]  f[ g a g]  f[ e f g]  a[ bf a g]

% Page 8
%{ 47 %}  f[ g a g]  f[ g a g]  f[ e f g a8] f
%{ 48 %}  e g c, f  e g c, a'
%{ 49 %}  e g c, f  e g c, d
%{ 50 %}  ef_\piano( ef ef ef)  ef( ef ef ef)
%{ 51 %}  d( d d d)  d( d d d)
%{ 52 %}  f( f f f)  f( f f f)
%{ 53 %}  e( e e e)  e( e e e)
%{ 54 %}  g( g g g)  g( g g g)
%{ 55 %}  f( f f f)  f( f f f)

% Page 9
%{ 56 %}  bf,_\forte[ d16 c]  bf8[ f'16 ef]  d8 bf' f16[ ef d c]
%{ 57 %}  bf8[ d16 c]  bf8[ f'16 ef]  d8 bf' f16[ ef d ef]
%{ 58 %}  f8 a, bf d  f a, bf d
%{ 59 %}  g ef f f,  bf c[ d bf]
%{ 60 %}  ef d c f  d c bf d
%{ 61 %}  ef r f r  bf, c d bf
%{ 62 %}  c bf a d  bf a g bf
%{ 63 %}  c r d r  g, a bf g
%{ 64 %}  af g f bf  g f ef g
%{ 65 %}  af r bf r  ef, f g ef

% Page 10
%{ 66 %}  f ef d g  ef d c c'
%{ 67 %}  f d g g,  c d ef16[ f ef d]
%{ 68 %}  c[ d ef d]  c[ d ef d]  c[ b c d] ef[ f ef d]
%{ 69 %}  c[ d ef d]  c[ d ef d]  c[ b c d ef8] c
%{ 70 %}  g' g, r g' g[ g,] r g'
%{ 71 %}  g g, r g' g g, g' f
%{ 72 %}  e!_\piano( e e e) e( e e e)
%{ 73 %}  ef( ef ef ef) ef( ef ef ef)

% Page 11
%{ 74 %}  d( d d d)  d( d d d)
%{ 75 %}  g16_\forteparen[ a bf a]  g[ a bf a]  g[ fs g a]  bf[ c bf a]
%{ 76 %}  g[ a bf a]  g[ a bf a]  g[ fs g a]  bf[ a bf g]
%{ 77 %}  c,[ bf c d]  ef[ d ef c]  f[ ef! f g]  a[ g a f]
%{ 78 %}  bf,[ a bf c]  d[ c d bf]  ef[ d ef f]  g[ f g ef]
%{ 79 %}  a,[ g a bf]  c[ bf c a]  d[ c d ef]  d[ c bf a]
%{ 80 %}  g8 d' d bf  bf g g g'
%{ 81 %}  g d d bf  bf g g g'

% Page 12
%{ 82 %}  d fs, g bf  d fs, g fs'
%{ 83 %}  g c, d d, g4 r
%{ 84 %}  r1
%{ 85 %}  r2 r8  g'16 a bf[ a bf g]
%{ 86 %}  a8 e cs e  a, e' cs e
%{ 87 %}  a e cs e  a,4 r8 a'
%{ 88 %}  a[ f16 g]  a8[ f16 g]  a8[ d a d]
%{ 89 %}  a8[ f16 g]  a8[ f16 g]  a8[ d d, f]
%{ 90 %}  g8 bf g bf  e, c' c, e
%{ 91 %}  f a f a  d, b' b, d

% Page 13
%{ 92 %}  e e, r e'  e e, r e'
%{ 93 %}  e e, r e'  a,4 r8 e'
%{ 94 %}  a16[ b c b]  a[ b c b]  a[ b c b]  a[ b c b]
%{ 95 %}  a[ b c b] a[ b c b] a[ b c b] a[ b c a]
%{ 96 %}  d,[ c d e]  f[ e f d]  g[ fs g a]  b[ a b g]
%{ 97 %}  c,[ b c d]  e[ d e c]  f[ e f g]  a[ g a f]
%{ 98 %}  b,[ a b c]  d[ c d b]  e[ d e f]  e[ d c b!]
%{ 99 %}  a8[ c16 b]  a8[ e'16 d]  c8 a'  e16[ d c b!]

% Page 14
%{ 100 %}  a8[ c16 b]  a8[ e'16 d]  c8 a'  e16[ d c d]
%{ 101 %}  e8 gs, a c  e gs, a c
%{ 102 %}  f d e e,  a4 r8 f'_\tasto
%{ 103 %}  c[ a16 bf]  c8[ a16 bf]  c8 f c f
%{ 104 %}  c[ a16 bf]  c8[ a16 bf]  c8[ f c]
           a'^\markup{\bold\center-align{accomp. 6}}
%{ 105 %}  e g c, f  e g c, a'
%{ 106 %}  e g c, f  e16[ f e d]  c[ bf a g]
%{ 107 %}  << { af8( af af af) } \figuremode{<6 4 2>} >> af( af af af)
%{ 108 %}  << { g( g g g) } \figuremode{<7!>} >> g( g g g)

% Page 15
%{ 109 %}  << { bf( bf bf bf) } \figuremode{<6 4>} >> bf( bf bf bf)
%{ 110 %}  << { a( a a a) } \figuremode{<7+>} >> a( a a a)
%{ 111 %}  << { c( c c c) } \figuremode{<6 4 2>} >> c( c c c)
%{ 112 %}  b( b b b)  b( b b b)
%{ 113 %}  c_\forte[ e16 d]  c8[ g'16 f]  e8 bf'  g16[ f e d]
%{ 114 %}  c8[ e16 d]  c8[ g'16 f]  e8 bf'  g16[ a bf g]
%{ 115 %}  a8 f, a c  f c a c
%{ 116 %}  a f a c  f c a f
%{ 117 %}  c' e, f a  c e, f e'
%{ 118 %}  f bf, c c, f4. \fermata
           \bar "|."
\pageBreak
}}

%%%%%% Second movement, Andante %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Bmovement = \markup{ \bold\large "II - Andante " }

Bflute = \new Voice { \relative c'' {
   \clef treble
   \time 3/4
   \key f \major
   \set Staff.midiInstrument = "Flute"
   \set Staff.instrumentName =
      \markup{\bold\center-align { Flauto.
                                   \line{(Flute a bec.)} } }

% Page 16

%{ 1  %} R2.
%{ 2  %} R
%{ 3  %} R
%{ 4  %} R
%{ 5  %} r4 r a'
%{ 6  %} bf4. a8 g16( bf a8)
%{ 7  %} f4^\trill e8( d) a'4
%{ 8  %} b4.( c16 d) c( b c8)

%{ 9  %} gs4^\trill fs8( e) c'4
%{ 10 %} c8( b) r4 b8( c16 d)
%{ 11 %} b8( a) r4 a4
%{ 12 %} a8( gs) r4 gs
%{ 13 %} gs8( a) r4 a
%{ 14 %} a4. b8 e,16( a gs8)
%{ 15 %} a4 r c
%{ 16 %} c8( bf!) r4 bf8( c16 d)

%{ 17 %} bf8( a) r4 a
%{ 18 %} a8( g) r4 g8( a16 bf)
%{ 19 %} g8( f) r4 c'4
%{ 20 %} d4.( e16 f) e( g f8)
%{ 21 %} f4 e8^\trill( d) c( b)
%{ 22 %} g'4 f8( e) d( c)
%{ 23 %} c4 r r
%{ 24 %} R2.

%{ 25 %} r4 r d
%{ 26 %} ef4. d8 c16( ef d8)
%{ 27 %} \appoggiatura c16 bf8 d16( cs) d8 f16( e!) f4
%{ 28 %} f8( e) r4 e8( f16 g)
%{ 29 %} e8^\trill( d) r4 r
%{ 30 %} R2.
%{ 31 %} r4 r f
%{ 32 %} g4. f8 ef16( g) f8

% Page 17

%{ 33 %} ef8( d) r4 d,
%{ 34 %} d8( c) r4 r
%{ 35 %} r g' c
%{ 36 %} c8( bf) r4 bf
%{ 37 %} bf8( a) r4 d
%{ 38 %} ef4. d8 c16( g' f8)
%{ 39 %} ef( d) c^\trill( bf) a( g)
%{ 40 %} c4. bf8 a16( c bf8)

%{ 41 %} a8^\trill( g) r4 ef'
%{ 42 %} ef8( d) c( bf) c16( ef) d8
%{ 43 %} c( bf) a( g) r4
%{ 44 %} r r bf,
%{ 45 %} bf8( a) r4 g'4
%{ 46 %} g8( f) r4 r
%{ 47 %} r r g,
%{ 48 %} g8 f r4 f'

%{ 49 %} f8( e) r4 r
%{ 50 %} r a c
%{ 51 %} c8( b) r4 b
%{ 52 %} b8( c) r4 r
%{ 53 %} r c,4 ef
%{ 54 %} ef8( d) r4 f
%{ 55 %} f8( e!) r4 r
%{ 56 %} r e4 g

%{ 57 %} g8( f) r4 f
%{ 58 %} f8( e) r4 e8( f16 g)
%{ 59 %} e8( d) r4 d
%{ 60 %} d8( cs) r4 cs
%{ 61 %} cs8( d) r4 d
%{ 62 %} d4. e8 a,16( d cs8)
%{ 63 %} g'4( ~ g16 bf a8) \appoggiatura g16 f4 ~
%{ 64 %} f16( cs d8) d4( cs8.^\trill) d16
%{ 65 %} d2. \fermata  \bar "|."

\pageBreak
}}



Boboe = \new Voice { \relative c'' {
   \clef treble
   \time 3/4
   \key f \major
   \set Staff.midiInstrument = "Oboe"
   \set Staff.instrumentName =
      \markup{\bold\center-align { Oboe. }}

% Page 16

%{ 1  %} R2.
%{ 2  %} R2.
%{ 3  %} r4 r a
%{ 4  %} bf4.( a8) g16( bf a8)
%{ 5  %} f4^\trill e8( d) f'4
%{ 6  %} f8( e) r4 e8( f16 g)
%{ 7  %} d8( c) r4 f,
%{ 8  %} f8( e) r4 r

%{ 9  %} r r e'
%{ 10 %} f4. e8 d16( a' g8)
%{ 11 %} f( e) d( c) b^\trill( a)
%{ 12 %} d4. c8 b16( d c8)
%{ 13 %} b8( a) r4 f'
%{ 14 %} f8( e) d( c) d16( f e8)
%{ 15 %} d( c) b^\trill( a) c4
%{ 16 %} d4.( e16 f) e( g f8)

%{ 17 %} f4 e8^\trill( d) c( d)
%{ 18 %} c( bf) r4 bf8( c16 d)
%{ 19 %} bf8( a) r4 a
%{ 20 %} a8( g) r4 g8( a16 bf)
%{ 21 %} g8^\trill( f) r4 d'4
%{ 22 %} d8( c) c( b) b([ a16 b)]
%{ 23 %} c4 r r
%{ 24 %} R2.

%{ 25 %} R2.
%{ 26 %} R2.
%{ 27 %} r4 r a
%{ 28 %} bf4. a8 g16( bf a8)
%{ 29 %} f4^\trill e8( d) f'4
%{ 30 %} f8( ef) r4 ef8( f16 g)
%{ 31 %} ef8^\trill( d) r4 d
%{ 32 %} d8( c) r4 c8( d16 ef)

% Page 17

%{ 33 %} c8( bf) f'4 bf
%{ 34 %} bf8( a) r4 a4
%{ 35 %} a8( g) r4 r
%{ 36 %} r d g
%{ 37 %} g8( fs) r4 r
%{ 38 %} R2.
%{ 39 %} r4 r d
%{ 40 %} ef4. d8 c16( ef d8)

%{ 41 %} c( bf) a( g) a([ bf16 c)]
%{ 42 %} bf4.^\trill a8 a([ bf)]
%{ 43 %} g4 r d'
%{ 44 %} e!4.( f16 g) f( e f8)
%{ 45 %} cs4^\trill b8( a) r4
%{ 46 %} r r d4
%{ 47 %} d8( cs) r4 e
%{ 48 %} e8( d) r4 r

%{ 49 %} r e, g
%{ 50 %} g8( fs) r4 fs'
%{ 51 %} fs8( g) r4 r
%{ 52 %} r g,4 bf!
%{ 53 %} bf8( a) r4 a4
%{ 54 %} a8( bf) r4 r
%{ 55 %} r bf' d,
%{ 56 %} d8( cs) r4 e

%{ 57 %} e8( d) r4 r
%{ 58 %} R2.
%{ 59 %} r4 r d'
%{ 60 %} bf4. a8 g16([ bf a8)]
%{ 61 %} g( f) e( d) e([ f16 g)]
%{ 62 %} f4.^\trill e8 e([ f)]
%{ 63 %} cs4. d8 gs,4 ~
%{ 64 %} gs8 a f4^\trill e8( d)
%{ 65 %} d2. \fermata  \bar "|."

\pageBreak
}}


Bviolino = \new Voice { \relative c'' {
  \clef treble
  \time 3/4
  \key f \major
  \set Staff.midiInstrument = "Violin"
  \set Staff.instrumentName = \markup{\bold Vionlino.}

% Page 16

%{ 1  %} r4 r a
%{ 2  %} bf4. a8 g16( bf a8)
%{ 3  %} f4^\trill e8( d) f'4
%{ 4  %} f8( e) r4 e8( f16 g)
%{ 5  %} e8^\trill( d) r4 d4
%{ 6  %} d8( cs) r4 cs4
%{ 7  %} cs8( d) r4 r
%{ 8  %} r r f,

%{ 9  %} f8( e) r4 r
%{ 10 %} R2.
%{ 11 %} r4 r a'
%{ 12 %} f4. e8 d16( f e8)
%{ 13 %} d8( c) b( a) b([ c16 d)]
%{ 14 %} c4.^\trill b8 b([ c)]
%{ 15 %} \appoggiatura b16 a4 r r
%{ 16 %} R2.

%{ 17 %} r4 r c
%{ 18 %} d4.( e16 f) e( g f8)
%{ 19 %} f4( e8^\trill d) c( d)
%{ 20 %} c( bf) r4 bf8( c16 d)
%{ 21 %} bf8^\trill( a) r4 f'
%{ 22 %} f8( e) a( g) f( g)
%{ 23 %} e4 r g
%{ 24 %} a4. g8 f16( a g8)

% Page 17

%{ 25 %} e8^\trill( g16 fs) g8( bf16 a) bf4
%{ 26 %} bf8( a) r4 a8( bf16 c)
%{ 27 %} a8^\trill( g) r4 d'4
%{ 28 %} d8( cs) r4 cs
%{ 29 %} cs8( d) r4 a,4
%{ 30 %} bf4.( c16 d) ef( d ef8)
%{ 31 %} a,4^\trill g8( f) bf4
%{ 32 %} bf4. c8 a4^\trill

%{ 33 %} a8( bf) r4 r
%{ 34 %} r c f
%{ 35 %} f8( ef) r4 ef
%{ 36 %} ef8( d) r4 r
%{ 37 %} r r bf'
%{ 38 %} bf8( a) r4 a8( bf16 c)
%{ 39 %} a8^\trill( g) r4 g
%{ 40 %} g8( fs) r4 fs4

%{ 41 %} fs8( g) r4 g4
%{ 42 %} g4. a8 d,16( g fs8)
%{ 43 %} \appoggiatura fs16 g4 r4 bf,
%{ 44 %} bf8( a) r4 r
%{ 45 %} r r e'
%{ 46 %} e8( d) r4 f,4
%{ 47 %} f8( e) r4 r
%{ 48 %} r r d'

%{ 49 %} d8( cs) r4 cs
%{ 50 %} cs8( d) r4 r
%{ 51 %} r d f!
%{ 52 %} f8( e) r4 e
%{ 53 %} e8( f) r4 r
%{ 54 %} r f a
%{ 55 %} a8( g) r4 bf
%{ 56 %} bf8( a) r4 r

%{ 57 %} r r a,
%{ 58 %} bf4. a8 g16( d') c8
%{ 59 %} bf( a) g( f) e^\trill( d)
%{ 60 %} g4. f8 e16( g f8)
%{ 61 %} e8^\trill( d) r4 bf''
%{ 62 %} bf8( a) g( f) g a
%{ 63 %} \appoggiatura f16 e4.\trill f8 d4 ~
%{ 64 %} d8( e16 f) a,8( g) bf( a)
%{ 65 %} fs2.^\trill \fermata  \bar "|."

\pageBreak
}}


Bvioloncello = \new Voice { \relative c {
  \clef bass
  \time 3/4
  \key f \major
  \set Staff.midiInstrument = "Cello"

  \set Staff.instrumentName =
        \markup{\bold\center-align{Violoncello
                               \line{e Cembalo.}}}

% Page 16

%{ 1  %} d8 a' f a d, a'
%{ 2  %} g bf e, g cs, e
%{ 3  %} d a' f a d, f
%{ 4  %} g e cs e a, cs
%{ 5  %} d a f a d, f
%{ 6  %} g bf e, g a a'
%{ 7  %} d, a' f a d, g
%{ 8  %} gs, b e, gs a d

%{ 9  %} e b' gs b a c
%{ 10 %} d f b, d g, b
%{ 11 %} c e a, c f, a
%{ 12 %} b d gs, b e, e'
%{ 13 %} a, c f, a d, b
%{ 14 %} e d e4 e,
%{ 15 %} a8 e' c e a, c
%{ 16 %} bf! d g, bf c, c'

%{ 17 %} f, a g bf a c
%{ 18 %} bf d g, bf c c'
%{ 19 %} f, a g bf a c
%{ 20 %} bf d g, bf cs, e
%{ 21 %} d a' f a d, f
%{ 22 %} e f g4 g,
%{ 23 %} c8 e d f e g
%{ 24 %} f d b d g, b

%{ 25 %} c a bf! fs g bf
%{ 26 %} c ef a, c d d,
%{ 27 %} g e'! f cs d f
%{ 28 %} g bf e, g a a,
%{ 29 %} d a' f a d, f
%{ 30 %} g bf ef, g c, ef
%{ 31 %} f a d, f bf, d
%{ 32 %} ef c f4 f,

% Page 17

%{ 33 %} bf8 f' d f bf, d
%{ 34 %} f, c'' a c f, a
%{ 35 %} c, g' ef g c, ef
%{ 36 %} g, d'' bf d g, bf
%{ 37 %} d, a' fs a g bf
%{ 38 %} c ef a, c f,! a
%{ 39 %} bf d g, bf ef, g
%{ 40 %} a c fs, a d, d'

%{ 41 %} g, bf ef, g c, a
%{ 42 %} d c d4 d,
%{ 43 %} g8 d'' bf d g, bf
%{ 44 %} cs, e a, cs d g,
%{ 45 %} a e' cs e a, cs
%{ 46 %} d, a'' f a d, f
%{ 47 %} a, e' cs e a, cs
%{ 48 %} d, a'' f a d, f

%{ 49 %} a, e' cs e a, cs
%{ 50 %} d, a'' fs a d, fs
%{ 51 %} g, d'' b d g, b
%{ 52 %} c, g' e g c, e
%{ 53 %} f, c'' a c f, a
%{ 54 %} bf, f' d f bf, d
%{ 55 %} e, bf'' g bf e, g
%{ 56 %} a, e' cs e a, cs

%{ 57 %} d, a'' f a d, f
%{ 58 %} g bf e, g c, e
%{ 59 %} f a d, f bf, d
%{ 60 %} e g cs, e a, a'
%{ 61 %} d, f bf, d g, e
%{ 62 %} a g a2
%{ 63 %} bf2 b4 ~
%{ 64 %} b4 a2
%{ 65 %} d,2. \fermata  \bar "|."

\pageBreak
}}


%%%%%% Third movement, Allegro Assai %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Cmovement = \markup{\bold\large "III - Allegro Assai "}

Ctromba = \new Voice { \relative c'' {
  \clef treble
  \time 2/4
  \key c \major
  \transposition f
  \set Staff.midiInstrument = "Trumpet"
  \set Staff.instrumentName = \markup{ \bold Tromba. }
  \set Score.skipBars = ##t

% Page 18

%{  1 %}  c8 g' g^\trill f16 g
%{  2 %}  a8 g16 f g8 c
%{  3 %}  g^\trill e16 f g8^\trill f16 g
%{  4 %}  a8[ g16 f] g f e g
%{  5 %}  f e d f  e d c d
%{  6 %}  d c d e  f e d c
%{  7 %}  d8 g, g' r

%{  8 %}  g r g r
%{  9 %}  g r g r
%{ 10 %}  g a4 g8 ~
%{ 11 %}  g fs g16 fs e g
%{ 12 %}  fs e fs g  a g fs e
%{ 13 %}  fs e d e  fs g e fs
%{ 14 %}  g a fs g  a fs g a
%{ 15 %}  d,8 g, g'4 ~

% Page 19

%{ 16 %}  g8 f!16 e f8 f
%{ 17 %}  e16 d c d  e f d e
%{ 18 %}  f g e f  g a f g
%{ 19 %}  a g a bf  a g f e
%{ 20 %}  d c d e  f e f d
%{ 21 %}  e8 c16 d  e8 d16 e
%{ 22 %}  f8 e16 d  e8 c16 d
%{ 23 %}  e8 c16 d  e8 d16 e

%{ 24 %}  f8 r  e r
%{ 25 %}  d r  c r
%{ 26 %}  g r  c, r
%{ 27 %}  g' r r4
%{ 28 %}  R2*13
%{ 29 %}
%{ 30 %}
%{ 31 %}

% Page 20

%{ 32 %}
%{ 33 %}
%{ 34 %}
%{ 35 %}
%{ 36 %}
%{ 37 %}
%{ 38 %}
%{ 39 %}

%{ 40 %}
%{ 41 %}  g8 d' d c16 d
%{ 42 %}  e8 d16 c d8 g
%{ 43 %}  d e16 c  d8 c16 d
%{ 44 %}  e8 d16 c  d g a b
%{ 45 %}  c b a c  b a g b
%{ 46 %}  a g a b  c b a g
%{ 47 %}  a8 d, r d

% Page 21

%{ 48 %}  g g g fs16 e
%{ 49 %}  fs8 fs fs g16 fs
%{ 50 %}  e8 e e d16 c
%{ 51 %}  d8 d d e16 d
%{ 52 %}  c8[ e fs a]
%{ 53 %}  b16 c b a  g fs e d
%{ 54 %}  e fs d e  fs g e fs

%{ 55 %}  g a fs g  a g fs e
%{ 56 %}  d8 g16 a  fs8. g16
%{ 57 %}  g8 r r4
%{ 58 %}  R2*14
%{ 59 %}
%{ 60 %}
%{ 61 %}
%{ 62 %}

% Page 22

%{ 63 %}
%{ 64 %}
%{ 65 %}
%{ 66 %}
%{ 67 %}
%{ 68 %}
%{ 69 %}
%{ 70 %}

%{ 71 %}
%{ 72 %}  e,8 r e r
%{ 73 %}  e r e r
%{ 74 %}  e r e r
%{ 75 %}  e r e r
%{ 76 %}  e r e r
%{ 77 %}  e r e r

% Page 23

%{ 78 %}  e r e r
%{ 79 %}  e r r c'
%{ 80 %}  f f f e16 d
%{ 81 %}  e8 e e f16 e
%{ 82 %}  d8 d d c16 bf
%{ 83 %}  c8 c c d16 c
%{ 84 %}  bf8 bf' e,4^\trill

%{ 85 %}  d8 r r4
%{ 86 %}  R2
%{ 87 %}  R2
%{ 88 %}  R2
%{ 89 %}  R2
%{ 90 %}  R2
%{ 91 %}  R2
%{ 92 %}  R2

% Page 24

%{  93 %}  r8 d g4 ~
%{  94 %}  g8 f16 e f8 f
%{  95 %}  e16 d c d  e f d e
%{  96 %}  f g e f  g e f g
%{  97 %}  c, e d e  f8 \noBeam f
%{  98 %}  f g16 f e8 e
%{  99 %}  e8 f16 e d8 d
%{ 100 %}  d e16 d c8 c

%{ 101 %}  c d16 c  bf8 bf'
%{ 102 %}  bf c16 bf a8 a
%{ 103 %}  a bf16 a  g f e d
%{ 104 %}  c8 r c r
%{ 105 %}  c r c r
%{ 106 %}  d r c r
%{ 107 %}  c f16 g  a8 g16 a
%{ 108 %}  bf8 a16 g  a8 f16 g

% Page 25

%{ 109 %}  a8 f16 g  a8 a ~
%{ 110 %}  a8 g4 f8 ~
%{ 111 %}  f e  f16 e d f
%{ 112 %}  e d e f  g f e d
%{ 113 %}  e8 r c, r
%{ 114 %}  c r c r
%{ 115 %}  c r c r
%{ 116 %}  c' d4 c8 ~

%{ 117 %}  c8 b^\trill  c16 d e c
%{ 118 %}  g'8 r8 r4
%{ 119 %}  g,8 r g r
%{ 120 %}  g r g r
%{ 121 %}  g r g r
%{ 122 %}  g r g r
%{ 123 %}  g r g r

% Page 26

%{ 124 %}  g r g r
%{ 125 %}  g r g r
%{ 126 %}  e e'16[ f]  g a f g
%{ 127 %}  a b g a  b g a b
%{ 128 %}  e, g c, d  e f d e
%{ 129 %}  f g e f  g e f g
%{ 130 %}  c, e d e  f g e f
%{ 131 %}  g e c d  e f g e

%{ 132 %}  a bf a g  f e d c
%{ 133 %}  g'8 r g r
%{ 134 %}  g r g r
%{ 135 %}  R2
%{ 136 %}  c,8 g'  g f16 g
%{ 137 %}  a8 g16 f  g8 c
%{ 138 %}  g8 e16 f  g8 f16 g
%{ 139 %}  a8 g16 f  g8 \fermata r  \bar "|."

}}



Cflute = \new Voice { \relative c'' {
  \clef treble
  \time 2/4
  \key f \major
  \set Staff.midiInstrument = "Flute"
  \set Staff.instrumentName =
     \markup{\bold\center-align { Flauto.
                                 \line{(Flute a bec.)} } }
  \set Score.skipBars = ##t

% Page 18

%{  1 %}  R2*26

%{ 27 %}  c8 g' g^\trill f16 g
%{ 28 %}  a8^\trill g16 f  g8 c
%{ 29 %}  g^\trill e16 f  g8^\trill f16 g
%{ 30 %}  a8^\trill g16 f  g f e g
%{ 31 %}  f e d f  e d c e

% Page 20

%{ 32 %}  d c d e  f e d c
%{ 33 %}  d8 g, c4 ~
%{ 34 %}  c16 a f a d4 ~
%{ 35 %}  d16 b g b e4 ~
%{ 36 %}  e16 c a c f4 ~
%{ 37 %}  f16 d b d  g a g f
%{ 38 %}  e d c e  d c b d
%{ 39 %}  c g a b  c d e f

%{ 40 %}  g8[ c, g b]
%{ 41 %}  c r c' r
%{ 42 %}  c r c r
%{ 43 %}  c r c r
%{ 44 %}  c d4 c8 ~
%{ 45 %}  c b  c16 b a c
%{ 46 %}  b a b c  d c b a
%{ 47 %}  b a b c  d e c d

% Page 21

%{ 48 %}  e f d e  f d e f
%{ 49 %}  b, d g, a  b c a b
%{ 50 %}  c d b c  d b c d
%{ 51 %}  g, b e, f  g a f g
%{ 52 %}  a b c d  b d g, f
%{ 53 %}  e8 g  c4 ~
%{ 54 %}  c16 d b c  d e c d

%{ 55 %}  e f g e  f8 f ~
%{ 56 %}  f e16 d  d8. c16
%{ 57 %}  c8 c,16[ d]  e8 d16 e
%{ 58 %}  f8 e16 d  e8 c16 d
%{ 59 %}  e8 c16 d  e8 e' ~
%{ 60 %}  e8 d4 c8 ~
%{ 61 %}  c b  c16 b a c
%{ 62 %}  b a b c  d c b a

% Page 22

%{ 63 %}  b a g a  b a b d
%{ 64 %}  cs b cs d  e d cs b
%{ 65 %}  cs b a b  cs b cs e
%{ 66 %}  d8 r d r
%{ 67 %}  d r d r
%{ 68 %}  d r d r
%{ 69 %}  d e4 d8 ~
%{ 70 %}  d cs  d16 cs b d

%{ 71 %}  cs b cs d  e d cs b
%{ 72 %}  cs8 e,16 f  g8 f16 g
%{ 73 %}  a8 g16 f  g8 e16 f
%{ 74 %}  g8 e16 f  g8 f16 g
%{ 75 %}  a8 r g r
%{ 76 %}  f r g r
%{ 77 %}  a r g r

% Page 23

%{ 78 %}  f r e r
%{ 79 %}  d r r d'
%{ 80 %}  g g g f16 ef
%{ 81 %}  f8 f  f g16 f
%{ 82 %}  ef8 ef ef d16 c
%{ 83 %}  d8 d  d ef16 d
%{ 84 %}  c8 c  c bf16 a

%{ 85 %}  bf8 r r4
%{ 86 %}  R2
%{ 87 %}  R2
%{ 88 %}  R2
%{ 89 %}  r8 a d4 ~
%{ 90 %}  d8 c16 bf  c8 c
%{ 91 %}  bf16 a g a  b c a b
%{ 92 %}  c d b c  d b c d

% Page 24

%{  93 %}  g,8 r r4
%{  94 %}  R2
%{  95 %}  R
%{  96 %}  R
%{  97 %}  r8 bf16 c  d ef c d
%{  98 %}  ef f d ef  f d ef f
%{  99 %}  bf, d g, a  bf c a bf
%{ 100 %}  c d bf c  d bf c d

%{ 101 %}  g, bf ef, f  g af f g
%{ 102 %}  af bf g af  bf g af bf
%{ 103 %}  ef,4 r8 g
%{ 104 %}  c[ f, bf f]
%{ 105 %}  a f  bf d16 c
%{ 106 %}  bf8[ g' c, f]
%{ 107 %}  d r r4
%{ 108 %}  R2

% Page 25

%{ 109 %}  R
%{ 110 %}  R
%{ 111 %}  R
%{ 112 %}  R
%{ 113 %}  f,8 c'  c bf16 c
%{ 114 %}  d8 c16 bf  c8 f
%{ 115 %}  c8 a16 bf  c8 bf16 c
%{ 116 %}  d8 c16 bf  c bf a c

%{ 117 %}  bf16 a g bf  a g f a
%{ 118 %}  g f g a  bf a g f
%{ 119 %}  g8 g,16 a  bf8 a16 bf
%{ 120 %}  c8 bf16 a  bf8 g16 a
%{ 121 %}  bf8 g16 a  bf8 a16 bf
%{ 122 %}  c8 r bf r
%{ 123 %}  a r bf r

% Page 26

%{ 124 %}  c r bf r
%{ 125 %}  a r g r
%{ 126 %}  f c''[ f f]
%{ 127 %}  f g16 f e8 e
%{ 128 %}  e8 f16 e d8 d
%{ 129 %}  d e16 d  c8 c
%{ 130 %}  c d16 c  bf8 bf
%{ 131 %}  bf c16 bf a8 a

%{ 132 %}  a8 bf16 a  g f e d
%{ 133 %}  e f d e  f g e f
%{ 134 %}  g a f g  a g f e
%{ 135 %}  d e f g  e8. f16
%{ 136 %}  f8 r ef r
%{ 137 %}  d r a' r
%{ 138 %}  f r ef r
%{ 139 %}  d r a' \fermata r \bar "|."

}}



Coboe = \new Voice { \relative c'' {
  \clef treble
  \time 2/4
  \key f \major
  \set Staff.midiInstrument = "Oboe"
  \set Staff.instrumentName = \markup{\bold Oboe.}

% Page 18

%{  1 %}  R2
%{  2 %}  R
%{  3 %}  R
%{  4 %}  R
%{  5 %}  R
%{  6 %}  R
%{  7 %}  c8 g'  g f16 g

%{  8 %}  a8 g16 f  g8 c
%{  9 %}  g e16 f  g8 f16 g
%{ 10 %}  a8 g16 f  g f e g
%{ 11 %}  f e d f  e d c e
%{ 12 %}  d c d e  f e d c
%{ 13 %}  d8 g, g'4 ~
%{ 14 %}  g8 f16 e  f8 f
%{ 15 %}  e16 d c d  e f d e

% Page 19

%{ 16 %}  f g e f  g e f g
%{ 17 %}  c, bf a bf  c d bf c
%{ 18 %}  d ef c d  ef f d ef
%{ 19 %}  f ef f g  f d g f
%{ 20 %}  e! d e f  g f e g
%{ 21 %}  c,8 r f r
%{ 22 %}  f r f r
%{ 23 %}  f r f r

%{ 24 %}  f g4 f8 ~
%{ 25 %}  f e  f16 e d f
%{ 26 %}  e d e f  g f e d
%{ 27 %}  e8 c16 d  e8 d16 e
%{ 28 %}  f8 e16 d  e8 c16 d
%{ 29 %}  e8 c16 d  e8 d16 e
%{ 30 %}  f8 r e r
%{ 31 %}  d r c r

% Page 20

%{ 32 %}  g r g r
%{ 33 %}  g r r g
%{ 34 %}  a[ c, f a]
%{ 35 %}  b[ d, g b]
%{ 36 %}  c[ e, a c]
%{ 37 %}  d[ g, b d]
%{ 38 %}  c[ g a g]
%{ 39 %}  c16 b c d  e8 g

%{ 40 %}  e8. d16  d8. c16
%{ 41 %}  c8 e16 d  c8 c,
%{ 42 %}  f f'  c e16 d
%{ 43 %}  c8 e16 d  c8 c,
%{ 44 %}  f r c' r
%{ 45 %}  d[ d, e f]
%{ 46 %}  g[ g' e c]
%{ 47 %}  g d'[ g g]

% Page 21

%{ 48 %}  g8 a16 g  f8 f
%{ 49 %}  f g16 f  e8 e
%{ 50 %}  e f16 e  d8 d
%{ 51 %}  d e16 d  c8 c
%{ 52 %}  c b16 a  f'8 e16 d
%{ 53 %}  g a g f  e8 g
%{ 54 %}  g[ c, f d]

%{ 55 %}  g,[ g' g d]
%{ 56 %}  g,[ g' g d]
%{ 57 %}  e r r4
%{ 58 %}  R2
%{ 59 %}  R
%{ 60 %}  R
%{ 61 %}  R
%{ 62 %}  R

% Page 22

%{ 63 %}  R
%{ 64 %}  R
%{ 65 %}  R
%{ 66 %}  d8 a'  a g16 a
%{ 67 %}  bf8 a16 g  a8 d
%{ 68 %}  a f16 g  a8 f16 g
%{ 69 %}  bf8 a16 g  a g f a
%{ 70 %}  g f e g  f e d f

%{ 71 %}  e d e f  g f e d
%{ 72 %}  e8[ g e cs]
%{ 73 %}  a r r cs16 d
%{ 74 %}  e8[ g e cs]
%{ 75 %}  a r cs r
%{ 76 %}  d r e r
%{ 77 %}  a, r cs r

% Page 23

%{ 78 %}  d r e r
%{ 79 %}  a,16 cs d e  f g e f
%{ 80 %}  g a f g  a f g a
%{ 81 %}  d, f bf, c  d ef c d
%{ 82 %}  ef f d ef  f d ef f
%{ 83 %}  bf, d g, a  bf c a bf
%{ 84 %}  c d bf c  d bf c d

%{ 85 %}  g, d' e f g4 ~
%{ 86 %}  g16 f e g  f e d f
%{ 87 %}  e8 a,  a'4 ~
%{ 88 %}  a8 g16 f  g8 g
%{ 89 %}  f16 e d e  fs g e fs
%{ 90 %}  g a fs g  a fs g a
%{ 91 %}  d,8 r r4
%{ 92 %}  R2

% Page 24

%{  93 %}  R
%{  94 %}  R
%{  95 %}  R
%{  96 %}  R
%{  97 %}  r4 r8 bf
%{  98 %}  ef ef ef d16 c
%{  99 %}  d8 d d ef16 d
%{ 100 %}  c8 c c bf16 a

%{ 101 %}  bf8 bf bf c16 bf
%{ 102 %}  af8 af af bf16 af
%{ 103 %}  g af' g f  ef d c bf
%{ 104 %}  a! bf g a  bf c a bf
%{ 105 %}  c d bf c  d c bf a
%{ 106 %}  g a bf c  a8. bf16
%{ 107 %}  bf8 f' f ef16 f
%{ 108 %}  g8 f16 ef  f8 bf

% Page 25

%{ 109 %}  f8 d16 ef  f8 ef16 f
%{ 110 %}  g8 f16 ef  f ef d f
%{ 111 %}  ef d c ef  d c bf d
%{ 112 %}  c bf c d  ef d c bf
%{ 113 %}  c8 f,16 g  a8 g16 a
%{ 114 %}  bf8 a16 g  a8 f16 g
%{ 115 %}  a8 f16 g  a8 g16 a
%{ 116 %}  bf8 r a r

%{ 117 %}  g r f r
%{ 118 %}  e16 d e f  g f e d
%{ 119 %}  e8[ bf'' g e]
%{ 120 %}  c r r e16 f
%{ 121 %}  g8[ bf g e]
%{ 122 %}  c r e r
%{ 123 %}  f r g r

% Page 26

%{ 124 %}  c, r e r
%{ 125 %}  f r g r
%{ 126 %}  d r r c
%{ 127 %}  g' g g f16 e
%{ 128 %}  f8 f  f g16 f
%{ 129 %}  e8 e  e d16 c
%{ 130 %}  d8 d  d e16 d
%{ 131 %}  c8 c  c bf16 a

%{ 132 %}  bf16 g' f ef  d c bf a
%{ 133 %}  g a f g  a bf g a
%{ 134 %}  bf c a bf  c8 c ~
%{ 135 %}  c bf16 a  g8. f16
%{ 136 %}  f8 r c' r
%{ 137 %}  bf r f' r
%{ 138 %}  a, r c r
%{ 139 %}  bf r f' \fermata r \bar "|."

}}


Cviolino = \new Voice { \relative c' {
  \clef treble
  \time 2/4
  \key f \major
  \set Staff.midiInstrument = "Violin"
  \set Staff.instrumentName = \markup{\bold Vionlino.}
  \set Score.skipBars = ##t

% Page 18

%{  1 %}  R2*20
%{  2 %}
%{  3 %}
%{  4 %}
%{  5 %}
%{  6 %}
%{  7 %}

%{  8 %}
%{  9 %}
%{ 10 %}
%{ 11 %}
%{ 12 %}
%{ 13 %}
%{ 14 %}
%{ 15 %}

% Page 19

%{ 16 %}
%{ 17 %}
%{ 18 %}
%{ 19 %}
%{ 20 %}
%{ 21 %}  f8 c' c^\trill bf16 c
%{ 22 %}  d8 c16 bf  c8 f
%{ 23 %}  c a16 bf c8 bf16 c

%{ 24 %}  d8 c16 bf  c bf a c
%{ 25 %}  bf a g bf  a g f a
%{ 26 %}  g f g a  bf a g f
%{ 27 %}  g8 c, c' r
%{ 28 %}  c r c r
%{ 29 %}  c r c r
%{ 30 %}  c d4 c8 ~
%{ 31 %}  c8 b c16 b a c

% Page 20

%{ 32 %}  b a b c  d c b a
%{ 33 %}  b4 r8 e
%{ 34 %}  a,4 ~ a16 d f d
%{ 35 %}  b4 ~ b16 e g e
%{ 36 %}  c4 ~ c16 f a f
%{ 37 %}  d4 ~ d16 c b a
%{ 38 %}  g f e g  f e d f
%{ 39 %}  e8 r r16 b' c d

%{ 40 %}  e f g a  d, e f g
%{ 41 %}  e8 c16 d  e8 d16 e
%{ 42 %}  f8 e16 d  e8 c16 d
%{ 43 %}  e8 c16 d  e8 d16 e
%{ 44 %}  f8 r e r
%{ 45 %}  d r c r
%{ 46 %}  g' r g r
%{ 47 %}  g r r e

% Page 21

%{ 48 %}  a a  a g16 f
%{ 49 %}  g8 g g a16 g
%{ 50 %}  f8 f f e16 d
%{ 51 %}  e8 e e f16 e
%{ 52 %}  d8 d d c16 b
%{ 53 %}  c4 r8 e ~
%{ 54 %}  e[ a, d b]

%{ 55 %}  g'8 f16 e  d8 r
%{ 56 %}  R2
%{ 57 %}  c,8 g' g f16 g
%{ 58 %}  a8 g16 f  g8 c
%{ 59 %}  g e16 f  g8 f16 g
%{ 60 %}  a8 g16 f  g f e g
%{ 61 %}  f e d f  e d c e
%{ 62 %}  d c d e  f e d c

% Page 22

%{ 63 %}  d c b c  d c d f
%{ 64 %}  e d e f  g f e d
%{ 65 %}  e d cs d  e d e g
%{ 66 %}  f8 d16 e  f8 e16 f
%{ 67 %}  g8 f16 e  f8 d16 e
%{ 68 %}  f8 d16 e  f8 e16 f
%{ 69 %}  g8 r f r
%{ 70 %}  e r d r

%{ 71 %}  a'16 a' b, a'  cs, a' d, a'
%{ 72 %}  a, a' b, a'  cs, a' a, a'
%{ 73 %}  d, a' b, a'  cs, a' a, a'
%{ 74 %}  cs, a' e a  cs, a' a, a'
%{ 75 %}  d, a' b, a' cs, a' a, a'
%{ 76 %}  f a d, a'  e a cs, a'
%{ 77 %}  d, a' b, a'  cs, a' a, a'

% Page 23

%{ 78 %}  f a d, a'  e a cs, a'
%{ 79 %}  f d f, g  a bf g a
%{ 80 %}  bf c a bf  c a bf c
%{ 81 %}  f, a d, ef  f g ef f
%{ 82 %}  g a f g  a f g a
%{ 83 %}  d, f bf, c  d ef c d
%{ 84 %}  ef f d ef  a,8 d

%{ 85 %}  d16 c bf a  g b' cs d
%{ 86 %}  e d cs e  d cs b d
%{ 87 %}  cs b a b  cs d b cs
%{ 88 %}  d e cs d  e cs d e
%{ 89 %}  a,8 r8 r4
%{ 90 %}  R2
%{ 91 %}  r8 d g4 ~
%{ 92 %}  g8 f16 e  f8 f

% Page 24

%{  93 %}  e16 d c d  e f d e
%{  94 %}  f g e f  g e f g
%{  95 %}  c, f a, bf  c d bf c
%{  96 %}  d ef c d  g, f g a
%{  97 %}  bf c d ef  f g ef f
%{  98 %}  g a f g  a f g a
%{  99 %}  d, f bf, c  d ef c d
%{ 100 %}  ef f d ef  f d ef f

%{ 101 %}  bf, e g, af  bf c af bf
%{ 102 %}  c d bf c  d bf c d
%{ 103 %}  g, c bf af  g f ef d
%{ 104 %}  c d bf c  d ef c d
%{ 105 %}  ef f d f  f8 f ~
%{ 106 %}  f ef16 d  c8. bf16
%{ 107 %}  bf4 r
%{ 108 %}  R2

% Page 25

%{ 109 %}  R
%{ 110 %}  R
%{ 111 %}  R
%{ 112 %}  R
%{ 113 %}  R
%{ 114 %}  R
%{ 115 %}  R
%{ 116 %}  R

%{ 117 %}  R
%{ 118 %}  c'16 c' d, c'  e, c' f, c'
%{ 119 %}  c, c' d, c'  e, c' c, c'
%{ 120 %}  f, c' d, c'  e, c' c, c'
%{ 121 %}  e, c' g c  e, c' c, c'
%{ 122 %}  f, c' d, c'  e, c' c, c'
%{ 123 %}  a c f, c'  g c e, c'

% Page 26

%{ 124 %}  f, c' d, c'  e, c' c, c'
%{ 125 %}  a c f, c'  g c e, c'
%{ 126 %}  f,8 e16 d c8 \noBeam f
%{ 127 %}  bf bf bf a16 g
%{ 128 %}  a8 a a bf16 a
%{ 129 %}  g8 g g f16 e
%{ 130 %}  f8 f f g16 f
%{ 131 %}  e8 a16 g  f ef d c

%{ 132 %}  d4 r8 d,8
%{ 133 %}  g[ c, f c]
%{ 134 %}  e c f a16 g
%{ 135 %}  f8[ d' d, c']
%{ 136 %}  a f16 g  a8 g16 a
%{ 137 %}  bf8 a16 g  a8 f16 g
%{ 138 %}  a8 f16 g  a8 g16 a
%{ 139 %}  bf8 a16 g  f8 \fermata r  \bar "|."

}}



CviolinoI = \new Voice { \relative c'' {
  \clef treble
  \time 2/4
  \key f \major
  \set Staff.midiInstrument = "Violin"
  \set Staff.instrumentName =
        \markup{\bold\center-align{ \line{Violino I}
                                    \line{di ripieno.}}}
  \set Score.skipBars = ##t

% Page 18

%{  1 %}  R2*46
%{  2 %}
%{  3 %}
%{  4 %}
%{  5 %}
%{  6 %}
%{  7 %}

%{  8 %}
%{  9 %}
%{ 10 %}
%{ 11 %}
%{ 12 %}
%{ 13 %}
%{ 14 %}
%{ 15 %}

% Page 19

%{ 16 %}
%{ 17 %}
%{ 18 %}
%{ 19 %}
%{ 20 %}
%{ 21 %}
%{ 22 %}
%{ 23 %}

%{ 24 %}
%{ 25 %}
%{ 26 %}
%{ 27 %}
%{ 28 %}
%{ 29 %}
%{ 30 %}
%{ 31 %}

% Page 20

%{ 32 %}
%{ 33 %}
%{ 34 %}
%{ 35 %}
%{ 36 %}
%{ 37 %}
%{ 38 %}
%{ 39 %}

%{ 40 %}
%{ 41 %}
%{ 42 %}
%{ 43 %}
%{ 44 %}
%{ 45 %}
%{ 46 %}
%{ 47 %}  r4 g'8 r

% Page 21

%{ 48 %}  g r f r
%{ 49 %}  f r e r
%{ 50 %}  e r d r
%{ 51 %}  d r c r
%{ 52 %}  c r b r
%{ 53 %}  e2 ~
%{ 54 %}  e8[ c f d]

%{ 55 %}  g2 ~
%{ 56 %}  g16 f g a  d, g f g
%{ 57 %}  e8 c r4
%{ 58 %}  R2*14
%{ 59 %}
%{ 60 %}
%{ 61 %}
%{ 62 %}

% Page 22

%{ 63 %}
%{ 64 %}
%{ 65 %}
%{ 66 %}
%{ 67 %}
%{ 68 %}
%{ 69 %}
%{ 70 %}

%{ 71 %}
%{ 72 %}  cs8 a'4 cs,8
%{ 73 %}  d a'4 cs,16 b
%{ 74 %}  cs8 a'4 cs,8
%{ 75 %}  d a'4 e8
%{ 76 %}  f a4 cs,8
%{ 77 %}  d a'4 e8

% Page 23

%{ 78 %}  f8 a4 cs,8
%{ 79 %}  f r f r
%{ 80 %}  g r e r
%{ 81 %}  f r d r
%{ 82 %}  ef r c r
%{ 83 %}  d r bf r
%{ 84 %}  c r a r

%{ 85 %}  bf r r4
%{ 86 %}  R2*11
%{ 87 %}
%{ 88 %}
%{ 89 %}
%{ 90 %}
%{ 91 %}
%{ 92 %}

% Page 24

%{  93 %}
%{  94 %}
%{  95 %}
%{  96 %}
%{  97 %}  r4 bf'4 ~
%{  98 %}  bf a ~
%{  99 %}  a g ~
%{ 100 %}  g f ~

%{ 101 %}  f ef ~
%{ 102 %}  ef d ~
%{ 103 %}  d8 g,  c d16 ef
%{ 104 %}  a,8 r bf r
%{ 105 %}  c r d4 ~
%{ 106 %}  d8 c16 bf  a8. bf16
%{ 107 %}  bf4 r
%{ 108 %}  R2*11

% Page 25

%{ 109 %}
%{ 110 %}
%{ 111 %}
%{ 112 %}
%{ 113 %}
%{ 114 %}
%{ 115 %}
%{ 116 %}

%{ 117 %}
%{ 118 %}
%{ 119 %}  e8 c'4 e,8
%{ 120 %}  f c'4 e,16 d
%{ 121 %}  e8 c'4 e,8
%{ 122 %}  f c'4 g8
%{ 123 %}  a c4 e,8

% Page 26

%{ 124 %}  f c'4 g8
%{ 125 %}  a c4 e,8
%{ 126 %}  f4 f ~
%{ 127 %}  f e ~
%{ 128 %}  e d ~
%{ 129 %}  d c ~
%{ 130 %}  c bf ~
%{ 131 %}  bf a ~

%{ 132 %}  a8 d  g a16 bf
%{ 133 %}  e,8 r f r
%{ 134 %}  g r a4 ~
%{ 135 %}  a8 g16 f  e8. f16
%{ 136 %}  f8 r f r
%{ 137 %}  f r f r
%{ 138 %}  f r f r
%{ 139 %}  f r f \fermata r \bar "|."

}}


CviolinoII = \new Voice { \relative c'' {
  \clef treble
  \time 2/4
  \key f \major
  \set Staff.midiInstrument = "Violin"
  \set Staff.instrumentName =
        \markup{\bold\center-align{ \line{Violino II}
                               \line{di ripieno.}}}
  \set Score.skipBars = ##t

% Page 18

%{  1 %}  R2*46
%{  2 %}
%{  3 %}
%{  4 %}
%{  5 %}
%{  6 %}
%{  7 %}

%{  8 %}
%{  9 %}
%{ 10 %}
%{ 11 %}
%{ 12 %}
%{ 13 %}
%{ 14 %}
%{ 15 %}

% Page 19

%{ 16 %}
%{ 17 %}
%{ 18 %}
%{ 19 %}
%{ 20 %}
%{ 21 %}
%{ 22 %}
%{ 23 %}

%{ 24 %}
%{ 25 %}
%{ 26 %}
%{ 27 %}
%{ 28 %}
%{ 29 %}
%{ 30 %}
%{ 31 %}

% Page 20

%{ 32 %}
%{ 33 %}
%{ 34 %}
%{ 35 %}
%{ 36 %}
%{ 37 %}
%{ 38 %}
%{ 39 %}

%{ 40 %}
%{ 41 %}
%{ 42 %}
%{ 43 %}
%{ 44 %}
%{ 45 %}
%{ 46 %}
%{ 47 %}  r4 d8 r

% Page 21

%{ 48 %}  e r d r
%{ 49 %}  d r b r
%{ 50 %}  c r g r
%{ 51 %}  g r g r
%{ 52 %}  a r g r
%{ 53 %}  g c16 b c8 g
%{ 54 %}  a4 d8 b

%{ 55 %}  e4 d4 ~
%{ 56 %}  d8[ c g b]
%{ 57 %}  g e r4
%{ 58 %}  R2*14
%{ 59 %}
%{ 60 %}
%{ 61 %}
%{ 62 %}

% Page 22

%{ 63 %}
%{ 64 %}
%{ 65 %}
%{ 66 %}
%{ 67 %}
%{ 68 %}
%{ 69 %}
%{ 70 %}

%{ 71 %}
%{ 72 %}  a8 r g r
%{ 73 %}  f r g r
%{ 74 %}  a r g r
%{ 75 %}  f r g r
%{ 76 %}  a r a r
%{ 77 %}  a r g r

% Page 23

%{ 78 %}  a r a r
%{ 79 %}  a r f' r
%{ 80 %}  e r g, r
%{ 81 %}  a r bf r
%{ 82 %}  c r ef, r
%{ 83 %}  f r g r
%{ 84 %}  a r a r

%{ 85 %}  g r8 r4
%{ 86 %}  R2*12
%{ 87 %}
%{ 88 %}
%{ 89 %}
%{ 90 %}
%{ 91 %}
%{ 92 %}

% Page 24

%{  93 %}
%{  94 %}
%{  95 %}
%{  96 %}
%{  97 %}
%{  98 %}  ef'2
%{  99 %}  d
%{ 100 %}  c

%{ 101 %}  bf
%{ 102 %}  af
%{ 103 %}  g
%{ 104 %}  f8 r f r
%{ 105 %}  a r bf r
%{ 106 %}  g[ g f f]
%{ 107 %}  f4 r
%{ 108 %}  R2*11

% Page 25

%{ 109 %}
%{ 110 %}
%{ 111 %}
%{ 112 %}
%{ 113 %}
%{ 114 %}
%{ 115 %}
%{ 116 %}

%{ 117 %}
%{ 118 %}
%{ 119 %}  c'8 r bf r
%{ 120 %}  a r bf r
%{ 121 %}  c r bf r
%{ 122 %}  a r bf r
%{ 123 %}  c r c r

% Page 26

%{ 124 %}  c r bf r
%{ 125 %}  c r c r
%{ 126 %}  a4 c
%{ 127 %}  bf2
%{ 128 %}  a
%{ 129 %}  g
%{ 130 %}  f
%{ 131 %}  g4 f

%{ 132 %}  f8 a d4
%{ 133 %}  c8 r c r
%{ 134 %}  e r f r
%{ 135 %}  d[ d c c]
%{ 136 %}  c r ef r
%{ 137 %}  d r a r
%{ 138 %}  c r ef r
%{ 139 %}  d r a \fermata r \bar "|."

}}



Cviola = \new Voice { \relative c'' {
  \clef alto
  \time 2/4
  \key f \major
  \set Staff.midiInstrument = "Viola"

  \set Staff.instrumentName =
        \markup{\bold\center-align{ \line{Viola}
                                    \line{di ripieno.}}}
  \set Score.skipBars = ##t

% Page 18

%{  1 %}  R2*46
%{  2 %}
%{  3 %}
%{  4 %}
%{  5 %}
%{  6 %}
%{  7 %}

%{  8 %}
%{  9 %}
%{ 10 %}
%{ 11 %}
%{ 12 %}
%{ 13 %}
%{ 14 %}
%{ 15 %}

% Page 19

%{ 16 %}
%{ 17 %}
%{ 18 %}
%{ 19 %}
%{ 20 %}
%{ 21 %}
%{ 22 %}
%{ 23 %}

%{ 24 %}
%{ 25 %}
%{ 26 %}
%{ 27 %}
%{ 28 %}
%{ 29 %}
%{ 30 %}
%{ 31 %}

% Page 20

%{ 32 %}
%{ 33 %}
%{ 34 %}
%{ 35 %}
%{ 36 %}
%{ 37 %}
%{ 38 %}
%{ 39 %}

%{ 40 %}
%{ 41 %}
%{ 42 %}
%{ 43 %}
%{ 44 %}
%{ 45 %}
%{ 46 %}
%{ 47 %}  r4 b8 r

% Page 21

%{ 48 %}  a r a r
%{ 49 %}  b r g r
%{ 50 %}  f r f r
%{ 51 %}  e r e r
%{ 52 %}  d r d r
%{ 53 %}  c2 ~
%{ 54 %}  c8 f4 g8 ~

%{ 55 %}  g f4 e16 d
%{ 56 %}  c8[ g' b g]
%{ 57 %}  g4 r
%{ 58 %}  R2*14
%{ 59 %}
%{ 60 %}
%{ 61 %}
%{ 62 %}

% Page 22

%{ 63 %}
%{ 64 %}
%{ 65 %}
%{ 66 %}
%{ 67 %}
%{ 68 %}
%{ 69 %}
%{ 70 %}

%{ 71 %}
%{ 72 %}  e8 r e r
%{ 73 %}  d r a r
%{ 74 %}  g' r e r
%{ 75 %}  d r a r
%{ 76 %}  d r e r
%{ 77 %}  d r cs r

% Page 23

%{ 78 %}  d r e r
%{ 79 %}  d r a' r
%{ 80 %}  bf r c r
%{ 81 %}  d r f, r
%{ 82 %}  g r a r
%{ 83 %}  bf r d, r
%{ 84 %}  ef r d r

%{ 85 %}  d r r4
%{ 86 %}  R2*11
%{ 87 %}
%{ 88 %}
%{ 89 %}
%{ 90 %}
%{ 91 %}
%{ 92 %}

% Page 24

%{  93 %}
%{  94 %}
%{  95 %}
%{  96 %}
%{  97 %}  r4 g4 ~
%{  98 %}  g8 a16 bf c8 c,
%{  99 %}  f4 r8 bf
%{ 100 %}  ef, f16 g a8 a,

%{ 101 %}  d4 r8 g8
%{ 102 %}  c,[ c f f]
%{ 103 %}  bf, c16 d ef8 d
%{ 104 %}  c r d r
%{ 105 %}  ef r f r
%{ 106 %}  bf,[ ef c f]
%{ 107 %}  d4 r
%{ 108 %}  R2*11

% Page 25

%{ 109 %}
%{ 110 %}
%{ 111 %}
%{ 112 %}
%{ 113 %}
%{ 114 %}
%{ 115 %}
%{ 116 %}

%{ 117 %}
%{ 118 %}
%{ 119 %}  g8 r g r
%{ 120 %}  f r c r
%{ 121 %}  bf' r g r
%{ 122 %}  f r c r
%{ 123 %}  f r g r

% Page 26

%{ 124 %}  f r e r
%{ 125 %}  f r g r
%{ 126 %}  f4 f
%{ 127 %}  g2
%{ 128 %}  f
%{ 129 %}  e
%{ 130 %}  d
%{ 131 %}  c

%{ 132 %}  d8[ f bf a]
%{ 133 %}  g r a r
%{ 134 %}  bf r c r
%{ 135 %}  f,[ bf g g]
%{ 136 %}  a r c r
%{ 137 %}  bf r f r
%{ 138 %}  a r c r
%{ 139 %}  bf r f \fermata r \bar ".|"

}}


Cviolone = \new Voice { \relative c' {
  \clef bass
  \time 2/4
  \key f \major
  \set Staff.midiInstrument = "Violin"

  \set Staff.instrumentName =
        \markup{\bold\center-align{ \line{Violone}
                                    \line{di ripieno.}}}
  \set Score.skipBars = ##t

% Page 18

%{  1 %}  R2*46
%{  2 %}
%{  3 %}
%{  4 %}
%{  5 %}
%{  6 %}
%{  7 %}

%{  8 %}
%{  9 %}
%{ 10 %}
%{ 11 %}
%{ 12 %}
%{ 13 %}
%{ 14 %}
%{ 15 %}

% Page 19

%{ 16 %}
%{ 17 %}
%{ 18 %}
%{ 19 %}
%{ 20 %}
%{ 21 %}
%{ 22 %}
%{ 23 %}

%{ 24 %}
%{ 25 %}
%{ 26 %}
%{ 27 %}
%{ 28 %}
%{ 29 %}
%{ 30 %}
%{ 31 %}

% Page 20

%{ 32 %}
%{ 33 %}
%{ 34 %}
%{ 35 %}
%{ 36 %}
%{ 37 %}
%{ 38 %}
%{ 39 %}

%{ 40 %}
%{ 41 %}
%{ 42 %}
%{ 43 %}
%{ 44 %}
%{ 45 %}
%{ 46 %}
%{ 47 %}  r4 b8 r

% Page 21

%{ 48 %}  c r d r
%{ 49 %}  g, r g r
%{ 50 %}  a r b r
%{ 51 %}  e, r e r
%{ 52 %}  f r g r
%{ 53 %}  c,[ d e c]
%{ 54 %}  f, f'16 e  d8 g16 f

%{ 55 %}  e8 d16 c  b8 g
%{ 56 %}  c8 e16 f  g8 g,
%{ 57 %}  c4 r
%{ 58 %}  R2*14
%{ 59 %}
%{ 60 %}
%{ 61 %}
%{ 62 %}

% Page 22

%{ 63 %}
%{ 64 %}
%{ 65 %}
%{ 66 %}
%{ 67 %}
%{ 68 %}
%{ 69 %}
%{ 70 %}

%{ 71 %}
%{ 72 %}  a8 e' e d16 e
%{ 73 %}  f8 e16 d  e8 a
%{ 74 %}  e cs16 d  e8 d16 e
%{ 75 %}  f8 e16 d  e d cs e
%{ 76 %}  d cs b d  cs d e cs
%{ 77 %}  f e d f  e d cs e

% Page 23

%{ 78 %}  d cs b d  cs d e cs
%{ 79 %}  d8 a'[ d d]
%{ 80 %}  d e16 d  c8 c
%{ 81 %}  c d16 c  bf8 bf
%{ 82 %}  bf c16 bf a8 a
%{ 83 %}  a bf16 a  g8 g
%{ 84 %}  g a16 g fs8 fs

%{ 85 %}  g r r4
%{ 86 %}  R2*11
%{ 87 %}
%{ 88 %}
%{ 89 %}
%{ 90 %}
%{ 91 %}
%{ 92 %}

% Page 24

%{  93 %}
%{  94 %}
%{  95 %}
%{  96 %}
%{  97 %}  r4 r8 g,
%{  98 %}  c c c bf16 a
%{  99 %}  bf8 bf  bf c16 bf
%{ 100 %}  a8 a  a g16 f

%{ 101 %}  g8 g g af16 g
%{ 102 %}  f8 f  f g16 f
%{ 103 %}  ef4 r8 ef'8 ~
%{ 104 %}  ef8 f16 ef d8 ef16 d
%{ 105 %}  c8 d16 c  bf8 d
%{ 106 %}  ef[ c f f,]
%{ 107 %}  bf4 r
%{ 108 %}  R2*11

% Page 25

%{ 109 %}
%{ 110 %}
%{ 111 %}
%{ 112 %}
%{ 113 %}
%{ 114 %}
%{ 115 %}
%{ 116 %}

%{ 117 %}
%{ 118 %}
%{ 119 %}  c8 g'  g f16 g
%{ 120 %}  a8 g16 f  g8 c
%{ 121 %}  g e16 f  g8 f16 g
%{ 122 %}  a8 g16 f  g f e g
%{ 123 %}  f e d f  e f g e

% Page 26

%{ 124 %}  a g f a  g f e g
%{ 125 %}  f e d f  e d c e
%{ 126 %}  d e f g  a bf g a
%{ 127 %}  bf c a bf  c a bf c
%{ 128 %}  f, a d, e  f g e f
%{ 129 %}  g a f g  a f g a
%{ 130 %}  d, f bf, c  d e c d
%{ 131 %}  e f d e  f d ef f

%{ 132 %}  bf,4 r8 bf'8 ~
%{ 133 %}  bf8 c16 bf  a8 bf16 a
%{ 134 %}  g8 a16 g  f8 a,
%{ 135 %}  bf[ g c c,]
%{ 136 %}  f r f r
%{ 137 %}  f r f r
%{ 138 %}  f r f r
%{ 139 %}  f r f \fermata r \bar ".|"

}}


Cvioloncello = \new Voice { \relative c {
  \clef bass
  \time 2/4
  \key f \major
  \set Staff.midiInstrument = "Violincello"

  \set Staff.instrumentName =
        \markup{\bold\center-align{Violoncello
                               \line{e Cembalo}}}

% Page 18

%{  1 %}  f8 g a g16 a
%{  2 %}  bf8 a16 g  a8 f16 g
%{  3 %}  a8 f16 g  a8 g16 a
%{  4 %}  bf8 a16 g  a8 d
%{  5 %}  g,[ c f, a]
%{  6 %}  c[ f, e f]
%{  7 %}  c d e d16 e

%{  8 %}  f8 e16 d  e8 c16 d
%{  9 %}  e8 c16 d  e8 d16 e
%{ 10 %}  f8 r e r
%{ 11 %}  d r c r
%{ 12 %}  g'[ c, b c]
%{ 13 %}  g4 r8 g'8
%{ 14 %}  a g16 a  b8 a16 b
%{ 15 %}  c4 r8 c,8

% Page 19

%{ 16 %}  d c16 d  e8 d16 e
%{ 17 %}  f4 r8 f ~
%{ 18 %}  f[ ef d c]
%{ 19 %}  bf4 r8 bf'8
%{ 20 %}  c[ bf a g]
%{ 21 %}  f a16 g  f8 f,
%{ 22 %}  bf bf'  f a16 g
%{ 23 %}  f8 a16 g  f8 f,

%{ 24 %}  bf r f' r
%{ 25 %}  g[ g, a bf]
%{ 26 %}  c[ c' a f]
%{ 27 %}  c e16 d  c8 c,
%{ 28 %}  f f'  c e16 d
%{ 29 %}  c8 e16 d  c8 c,
%{ 30 %}  f r c' r
%{ 31 %}  d[ d, e f]

% Page 20

%{ 32 %}  g[ g' e c]
%{ 33 %}  g[ g' e c]
%{ 34 %}  f[ a f d]
%{ 35 %}  g[ b g e]
%{ 36 %}  a[ c a f]
%{ 37 %}  b[ d b g]
%{ 38 %}  c[ e, f g]
%{ 39 %}  a g16 f  e8 d

%{ 40 %}  c16[ d e f] g8 g,
%{ 41 %}  c r r4
%{ 42 %}  R2
%{ 43 %}  R
%{ 44 %}  R
%{ 45 %}  R
%{ 46 %}  R
%{ 47 %}  r8 g'16 a  b c a b

% Page 21

%{ 48 %}  c d b c  d b c d
%{ 49 %}  g, b e, f  g a f g
%{ 50 %}  a b g a  b g a b
%{ 51 %}  e, g c, d  e f d e
%{ 52 %}  f g e f  g e f g
%{ 53 %}  c,8[ d e c]
%{ 54 %}  f,8 f'16 e  d8 g16 f

%{ 55 %}  e8 d16 c  b8 g
%{ 56 %}  c e16 f  g8 g,
%{ 57 %}  c r c r
%{ 58 %}  c r c r
%{ 59 %}  c r c d16 e
%{ 60 %}  f8 e16 d  e8 a
%{ 61 %}  d,[ a' c, c,]
%{ 62 %}  g'[ c b c]

% Page 22

%{ 63 %}  g4 r8 g' ~
%{ 64 %}  g[ f cs d]
%{ 65 %}  a4 r8 a'
%{ 66 %}  d, f16 e  d8 d,
%{ 67 %}  g g' d f16 e
%{ 68 %}  d8 f16 e d8 d,
%{ 69 %}  g r d' r
%{ 70 %}  e[ e, f g]

%{ 71 %}  a[ f e d]
%{ 72 %}  a' e' e d16 e
%{ 73 %}  f8 e16 d  e8 a
%{ 74 %}  e cs16 d  e8 d16 e
%{ 75 %}  f8 e16 d  e d cs e
%{ 76 %}  d cs b d  cs d e cs
%{ 77 %}  f e d f  e d cs e

% Page 23

%{ 78 %}  d cs b d  cs d e cs
%{ 79 %}  d8 a'[ d d]
%{ 80 %}  d e16 d  c8 c
%{ 81 %}  c d16 c  bf8 bf
%{ 82 %}  bf c16 bf  a8 a
%{ 83 %}  a bf16 a  g8 g
%{ 84 %}  g a16 g  fs8 fs

%{ 85 %}  g f![ e d]
%{ 86 %}  cs[ a' d d,]
%{ 87 %}  a'4 r8 a
%{ 88 %}  b a16 b  cs8 b16 cs
%{ 89 %}  d4 r8 d,8
%{ 90 %}  e d16 e  fs8 e16 fs
%{ 91 %}  g4 r8 g
%{ 92 %}  a g16 a  b8 a16 b

% Page 24

%{  93 %}  c4 r8 c,8
%{  94 %}  d c16 d  e8 d16 e
%{  95 %}  f8 c  f4 ~
%{  96 %}  f8 ef16 d  ef8 ef
%{  97 %}  d bf r g
%{  98 %}  c c c bf16 a
%{  99 %}  bf8 bf  bf c16 bf
%{ 100 %}  a8 a a g16 f

%{ 101 %}  g8 g  g af16 g
%{ 102 %}  f8 f  f g16 f
%{ 103 %}  ef4 r8 ef'8 ~
%{ 104 %}  ef f16 ef  d8 ef16 d
%{ 105 %}  c8 d16 c16  bf8 d
%{ 106 %}  ef[ c f f,]
%{ 107 %}  bf r bf r
%{ 108 %}  bf r bf r

% Page 25

%{ 109 %}  bf r bf c16 d
%{ 110 %}  ef8 d16 c  d8 g
%{ 111 %}  c,[ f bf bf,]
%{ 112 %}  f'[ bf, a bf]
%{ 113 %}  f' a16 g  f8 f,
%{ 114 %}  bf bf'  f a16 g
%{ 115 %}  f8 a16 g  f8 f,
%{ 116 %}  bf r f' r

%{ 117 %}  g[ g, a bf]
%{ 118 %}  c[ a g f]
%{ 119 %}  c' g'  g f16 g
%{ 120 %}  a8 g16 f  g8 c
%{ 121 %}  g e16 f  g8 f16 g
%{ 122 %}  a8 g16 f  g f e g
%{ 123 %}  f e d f  e f g e

% Page 26

%{ 124 %}  a g f a  g f e g
%{ 125 %}  f e d f  e d c e
%{ 126 %}  d e f g  a bf g a
%{ 127 %}  bf c a bf  c a bf c
%{ 128 %}  f, a d, e  f g e f
%{ 129 %}  g a f g  a f g a
%{ 130 %}  d, f bf, c  d e c d
%{ 131 %}  e f d e  f d ef f

%{ 132 %}  bf,4 r8 bf' ~
%{ 133 %}  bf c16 bf  a8 bf16 a
%{ 134 %}  g8 a16 g  f8 a,
%{ 135 %}  bf[ g c c,]
%{ 136 %}  f r f r
%{ 137 %}  f r f r
%{ 138 %}  f r f r
%{ 139 %}  f r f \fermata r \bar "|."

}}

