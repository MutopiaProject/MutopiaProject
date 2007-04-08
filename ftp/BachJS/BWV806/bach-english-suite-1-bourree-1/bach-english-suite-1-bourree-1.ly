\include "english.ly";

\header {
  enteredby = 	"Allen Garvin";
  maintainer = 	"Allen Garvin";
  copyright = 	"Public Domain";
  filename = 	"bach-english-suite-1-bourree-1.ly";
  title = 	"English Suite I: Bourree I";
  opus = 	"BWV 806";
  composer =	"Johann Sebastian Bach (1685-1750)";
  style =	"Baroque";
  source =	"Bach-Gesellschaft";
  lastupdated =	"2001/Apr/24";

  mutopiainstrument = "Harpsichord,Clavichord";
  mutopiatitle =      "English Suite I: Bourree I";
  mutopiacomposer =   "J. S. Bach (1685-1750)";
  mutopiaopus =       "BWV806";
  tagline =           "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}";
  footer =            "Mutopia-2001/04/24-85";
}

\version "1.3.117";

voiceone = \notes \relative c' {
  \key a \major;
  \clef "treble";
  
  \property Staff.TimeSignature \set #'style = #'1style
  \time 2/2;

  \partial 4; e4					|
  [a8( )gs b( )a] [cs( )d a( )gs]			|

  \repeat "volta" 2 {
    a4 e [cs8 e a b]					|
    [cs( )b d( )cs] [e( )d cs( )b]			|
    [d( cs b )cs] [a b cs d]				|
    e4 
      \grace { \property Grace.Stem \override #'flag-style = #'() g8 }
      fs4 g4.\mordent a8				|
    fs4 
      \grace { \property Grace.Stem \override #'flag-style = #'() a8 }
    gs4 a4.\mordent b8				|
    [gs( )a gs( )a] a4.\prall [gs16 a]			|
    b2 r4 e,,						|
    [a8( )gs b( )a] [cs( )b a( )gs]			|
    a4 e [cs8 e a b]					|
    [cs( )b d( )cs] [e( )d cs( )b]			|
    [d( cs b )cs] [a( )gs b( )a]			|
    [cs( )b a( )gs] [fs( )e gs( )fs]			|
    [a( gs fs )e] [ds( )cs e( )ds!]			|
    [fs b,] b'4 gs\prall [fs8 e]			|
  }
  \alternative { { e2. e4 | [a8( )gs b( )a] [cs( )b a( )gs] }
                 { e2. } }
  \repeat "volta" 2 {
    e4							|
    [b'8( )a cs( )b] [d( )cs] e4			|
    cs\prall [b8 cs] [a b cs d]				|
    [e( )d fs( )e] [g( )fs] a4				|
    fs\prall [e8 fs] d4 fs				|
    [fs8( d cs )b] [d( )cs e( )d]			|
    [e( cs b )as] [cs( )b d( )cs]			|
    [e( )d cs( )b] [d( )cs b( )as]			|
    b2. b4						|
    [fs'8( )e gs( )fs] [a( )gs] b4			|
    gs\prall [fs8 gs] e4 e,				|
    [b'8( )a cs( )b] [d( )cs] e4			|
    cs\prall [b8( )cs] [a( )b cs( )d]			|
    [e( cs b )a] [e'( )d fs( )e]			|
    [g( cs, b )a] [d( )cs e( )d]			|
    [fs( cs b )a] [e'( )d fs( )e]			|
    [g( cs, b )a] [d( )cs e( )d]			|
    [fs( d cs )b] [fs'( )e gs!( )fs]			|
    [a( ds, cs )b] [e( )ds! fs( )e]			|
    [gs( ds cs )b] [fs'( )e gs( )fs]			|
    [a( ds, cs )b] [e( )ds! fs( )e]			|
    [gs( fs e )fs] [gs( )fs a( )gs]			|
    [b( a gs )fs] [a( )gs fs( )e]			|
    a4. b8 gs4.\prall a8				|
    a2. e4						|
    [e8( cs b )a] [cs( )b d( )cs]			|
    [d( b a )gs] [b( )a cs( )b]				|
    [d( cs b )a] [cs( b a )gs]				|
    [a e fs gs] [a b cs d]				|
    [e( cs b )a] [cs( )b d( )cs]			|
    [d( b a )gs] [b( )a cs( )b]				|
    [d( cs b )a] [cs( b a )gs]				|
    a2.\mordent
  }
}

voicetwo = \notes \relative c {
  \key a \major;
  \clef "bass";

  \property Staff.TimeSignature \set #'style = #'1style
  \time 2/2;

  \partial 4; r4
  r1
  \repeat "volta" 2 {
    r2 r4 e						|
    [a8( )gs b( )a] [cs( )b a( )gs]			|
    a4 e [cs8 e a b]					|
    [cs( )b d( )cs] [e( )d cs( )a]			|
    [d( )cs e( )d] [fs( )e ds( )b]			|
    [e( )fs e( )d!] [cs( )b cs( )a]			|
    [e'( )ds( )fs e] [gs( )fs e( )d]			|
    [cs( )b d( )cs] [e( )d cs( )b]			|
    [cs( d cs )b] a4 e					|
    [a8( )gs b( )a] [cs( )b a( )gs]			|
    a4 e cs e						|
    a, e' [a8( )gs b( )a]				|
    [cs( b a )gs] [fs( )e gs( )fs]			|
    [a( )gs fs( )e] b'4 b,				|
  }
  \alternative { { [e8 ds fs e] [gs fs e d] | cs4\prall [b8 cs] a4 r }
                 { < { \stemUp e2. \stemBoth }
                     { \context Voice=ii { \stemDown r4 b e, } } > } }
  \repeat "volta" 2 {
    r4 							|
    r2 r4 e						|
    [a8( )gs b( )a] [cs( )b] e4				|
    cs\prall [b8 cs] a4 a,				|
    [d8( )cs e( )d] [fs( )d] d'4 			|
    g,,2 r4 cs'						|
    fs,,2 r4 b'						|
    g d e fs						|
    [b,8( )as cs( )b] [d( )cs] e4			|
    ds2\prall r4 b					|
    [e8( )d fs( )e] [gs( )fs] a4			|
    gs2\prall r4 e					|
    [a8( )gs b( )a] [cs( )b] e4				|
    cs\prall d cs b					|
    a-.( )a-. a-.( )a-.					|
    a-.( )a-. a-.( )a-.					|
    a( )g fs( )e					|
    d( )e d( )cs					|
    b-.( )b-. b-.( )b-.					|
    b-.( )b-. b-.( )b-.					|
    b( )a gs( )fs					|
    e-.( )e-. e-.( )e-.					|
    d-.( d-. )d-. d'					|
    cs d\mordent e e,					|
    [a8 e' fs gs] [a b] cs4				|
    fs,,2 r4 b'						|
    e,,2 r4 a'						|
    fs cs d e						|
    [a,8 gs a b] [cs d e cs]				|
    fs2 r4 b,						|
    e2 r4 a,						|
    fs cs d e						|
    < { \stemUp r e a }
      { \context Voice=ii { \stemUp a,2. } } >
  }
}

\score {
  \notes \context GrandStaff < 
    \context Staff = one <
      \voiceone
    >
    \context Staff = two <
      \voicetwo
    >
  >

  \paper{ linewidth = 18.0 \cm; }
  \midi { \tempo 2 = 92; }
}
