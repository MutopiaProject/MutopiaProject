\header {
  enteredby = 	"Allen Garvin";
  maintainer = 	"Allen Garvin";
  copyright = 	"Public Domain";
  filename = 	"anna-magdalena-20a.ly";
  title = 	"Aria";
  opus = 	"BWV 515";
  composer =	"Johann Sebastian Bach (1685-1750)";
  style =	"Baroque";
  source =	"Bach-Gesellschaft";
  lastupdated =	"2001/Apr/01";

  mutopiainstrument = "Harpsichord,Clavichord";
  mutopiatitle =      "Aria";
  mutopiacomposer =   "J. S. Bach (1685-1750)";
  mutopiaopus =       "BWV 515";
  tagline =           "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}";
  footer =            "Mutopia-2001/04/01-78";
}

\version "1.3.117";

\include "english.ly";

voiceone = \notes \relative c' {
  \key d \minor;
  \time 3/4;
  \clef "treble";

  \repeat "volta" 2 {
    d4 d d |
    g4.( [a16 )bf] a4 |
    g [f8 e] a4 |
    f [e8 f] d4 |
    f f f |
    a4.( [bf16 )c] f,4 |
    g e2 |
    f2. |
  }
  \repeat "volta" 2 {
    g4 g g |
    g2 e4 |
    a [g8 f e d] |
    cs2. |
    a4 cs e |
    g4. [a16 bf] a4 |
    f( )d cs |
    d2. |
  }
}

voicetwo = \notes \relative c {
  \clef "bass";
  \key d \minor;
  \time 3/4;

  \repeat "volta" 2 {
    d4 d' c |
    bf e, f |
    g a a, |
    d a f |
    d d' bf |
    f' c d |
    bf c c, |
    f2. |
  }
  \repeat "volta" 2 {
    c''4 e, g |
    b g c |
    f,2 g4 |
    a [g8 f e d] |
    [cs b a b cs d] |
    e4 d cs |
    d f a |
    d, a d, |
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
  \midi { \tempo 4 = 105; }
}

