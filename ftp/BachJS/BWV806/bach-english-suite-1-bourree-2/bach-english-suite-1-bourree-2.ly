\include "english.ly";

\header {
  enteredby = 	"Allen Garvin";
  maintainer = 	"Allen Garvin";
  copyright = 	"Public Domain";
  filename = 	"bach-english-suite-1-bourree-2.ly";
  title = 	"English Suite I: Bourree II";
  opus = 	"BWV 806";
  composer =	"Johann Sebastian Bach (1685-1750)";
  style =	"Baroque";
  source =	"Bach-Gesellschaft";
  lastupdated =	"2001/Apr/24";

  mutopiainstrument = "Harpsichord,Clavichord";
  mutopiatitle =      "English Suite I: Bourree II";
  mutopiacomposer =   "J. S. Bach (1685-1750)";
  mutopiaopus =       "BWV806";
  tagline =           "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}";
  footer =            "Mutopia-2001/04/24-86";
}

\version "1.3.117";

voiceone = \notes \relative c' {
  \key a \minor;
  \clef "treble";
  
  \property Staff.TimeSignature \set #'style = #'1style
  \time 2/2;

  \repeat "volta" 2 {
    \partial 4; [c8 d]					|
    e4 f e d						|
    e a,2 gs4						|
    a f' e d						|
    e a,2 gs4						|
    a f' e d						|
    a' [g8 f] e4 d					|
    c\prall [b8 c] [d b c a]				|
    [b a gs a] [b c d b]				|
    [c d e f] [e d c d]					|
    [e d c b] [a b c d]					|
    [e f g a] [g f e f] 				|
    [g f e d] [c d e fs]				|
    [g a b c] [b a g a]					|
    [b a g fs] [e ds e fs!]				|
    b,4 g' ~ [g8 fs e ds]				|
    e2.	
  }
  \repeat "volta" 2 {
    [e8 d]						|
    cs4 b cs d						|
    [e8 g] bf2 [a8 g]					|
    [f e f d'] [cs b! a g]				|
    [f g a g] [f e d c]					|
    b4 [b8 a] b4 [b8 c]					|
    [d f] a2 [g8 f] 					|
    [e d e c'] [b a g f]				|
    [e f g f] [e d c b]					|
    [a g' f e] a4 a,					|
    [gs8 fs gs f'!] e4 g,				|
    [fs8 e f e'] [d c b a]				|
    [a' gs fs e] b'4 [e,8 d]				|
    e4 d' c b						|
    c e,2 [d8 c]					|
    d4 c' [b8 a gs a]					|
    b4 d,2 [c8 b]					|
    [c a' g e] [f e d c]				|
    [b f' e c] [d c b a]				|
    [gs d' c a] [c b a gs!]				|
    a2.
  }
}

voicetwo = \notes \relative c {
  \key a \minor;
  \clef "bass";

  \property Staff.TimeSignature \set #'style = #'1style
  \time 2/2;

  \repeat "volta" 2 {
    \partial 4; [e8 d]					|
    [c b a b] [c b a b]					|
    [c b a b] [c d e d]					|
    [c b a b] [c b a b]					|
    [c b a b] [c d e d]					|
    [c b a b] [c b a b]					|
    [c b a b] [c d e f]					|
    [e d c b] [a gs] a4					|
    e2. [e'8 f]						|
    e4 d c b						|
    c [a8 b] [c d e f]					|
    g4 f e d						|
    e [c8 d] [e fs g a]					|
    b4 a g fs						|
    g e c' a ~						|
    [a8 g fs e] b'4 b,					|
    e b e,
  } \break
  \repeat "volta" 2 {
    [e'8 f]						|
    [g f e f] [g f e f]					|
    [g f e f] g4 cs,					|
    d bf g a						|
    d,2. [d'8 e]					|
    [f e d e] [f e d e]					|
    [f e d e] [f g a b]					|
    c4 a f g						|
    c,2 ~ [c8 f e d]					|
    [c b] c4 ~ [c8 e d c]				|
    [b a] b4 ~ [b8 d c b]				|
    [a gs] a4 ~ [a8 b c d]				|
    [e ds] e4 ~ [e8 d c b]				|
    [a gs fs gs] [a gs fs gs]				|
    [a b c d] [e fs gs a]				|
    [gs a b a] [gs a b a]				|
    [gs fs e d] [c b a gs]				|
    a4 c b a						|
    gs a f d						|
    e a e' e,						|
    < { \stemUp a2. }
      { \context Voice=ii { \stemUp r4 e c } } >	
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
