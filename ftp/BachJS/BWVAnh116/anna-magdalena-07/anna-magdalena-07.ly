\header {
  enteredby = 	"Allen Garvin";
  maintainer = 	"Allen Garvin";
  copyright = 	"Public Domain";
  filename = 	"anna-magdalena-07.ly";
  title = 	"Menuet";
  opus = 	"BWV Anh. 116";
  composer =	"Johann Sebastian Bach (1685-1750)";
  style =	"Baroque";
  source =	"Bach-Gesellschaft";
  lastupdated =	"2001/Apr/01";

  mutopiainstrument = "Harpsichord,Clavichord";
  mutopiatitle =      "Menuet";
  mutopiacomposer =   "J. S. Bach (1685-1750)";
  mutopiaopus =       "BWV Anh. 116";
  tagline =           "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}";
  footer =            "Mutopia-2001/04/01-77";
}

\version "1.3.117";

voiceone = \notes \relative c'' { 
  \key g \major;
  \time 3/4;
  \clef "treble";

  \repeat "volta" 2 {
    [g8 b d g a, fis'] |
    g4 g, g |
    [g8 b d g a, fis'] |
    g4 g, g |
    e' e [e8 g] |
    d4 d [d8 g] |
    c,4 [d8 c b c] |
    a2. |
    [g8 b d g a, fis'] |
    g4 g, g |
    [g8 b d g a, fis'] |
    g4 g, g |
    e' [d8 c b a] |
    d4 [c8 b a g] |
    \times 2/3 { [a( b )c] } d,4 fis |
    g2. |
  }
  \repeat "volta" 2 {
    [g8 a b a g fis] |
    g4 e e |
    [g'8 fis e g fis e] |
    fis4 b, b |
    [g'8 fis e g fis e] |
    fis4 b, e |
    \times 2/3 { [fis8( g )a] } b,4 dis |
    e [dis?8 e] fis4 |
    g [g8 fis e d] |
    e4 [e8 d c b] |
    c4 [c8 b a g] |
    fis4 [e8 fis] d4 |
    a' d, d |
    b' d, d |
    c' [d8 c b c] |
    a2. |
    [g8 b d g a, fis'] |
    g4 g, g |
    [g8 b d g a, fis'] |
    g4 g, g |
    e' [d8 c b a] |
    d4 [c8 b a g] |
    [a b] d,4 fis |
    g2.
  }
}

voicetwo = \notes \relative c' {
  \clef "bass";
  \time 3/4;
  \key g \major;

  \repeat "volta" 2 {
    g2 d4 |
    [g,8 b d g d b] |
    g2 d'4 |
    [g,8 b d g d b] |
    c4 g' c, |
    b g' b, |
    a fis' g |
    [d8 e fis d e fis] |
    g2 d4 |
    [g,8 b d g d b] |
    g2 d'4 |
    [g,8 b d g d b] |
    c4 e g |
    b, d g |
    c, c d |
    g d g, |
  }
  \repeat "volta" 2 {
    e'4 dis b |
    e b e, |
    e' g b |
    [b,8 dis fis b fis dis] |
    e4 g b |
    b, a' g |
    a b b, |
    e2. |
    b4 d g |
    c, d e |
    a, b c |
    d a d, |
    [fis'8 d fis d fis d] |
    [g d g d g d] |
    fis4 d g |
    [d8 e fis d e fis] |
    g2 d4 |
    [g,8 b d g d b] |
    g2 d'4 |
    [g,8 b d g d b] |
    c4 e g |
    b, d g |
    c,2 d4 |
    g d g, |
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
  \midi { \tempo 4 = 125; }
}

