\header {
  enteredby = 	"Allen Garvin";
  maintainer = 	"Allen Garvin";
  copyright = 	"Public Domain";
  filename = 	"bach-applicatio.ly";
  title = 	"Applicatio";
  opus = 	"BWV 994";
  composer =	"Johann Sebastian Bach (1685-1750)";
  style =	"Baroque";
  source =	"Bach-Gesellschaft";
  lastupdated =	"2001/Mar/22";

  mutopiainstrument = "Harpsichord,Clavichord";
  mutopiatitle =      "Applicatio";
  mutopiacomposer =   "J. S. Bach (1685-1750)";
  mutopiaopus =       "BWV994";
  tagline =           "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}";
  footer =            "Mutopia-2001/03/22-66";
}

\version "1.3.117";

voiceone = \notes \relative c' {
  \key c \major;
  \time 4/4;

  \repeat "volta" 2 {
    [c8\mordent d e f] [g\mordent a b g] |			% bar 1
    [c\mordent d e f\prallmordent] g4 g, |			% bar 2
    < { \stemUp { <c2\mordent e> <b\mordent d> } }
      { \context Voice=ii { < \stemDown { r4 g r g } > } }
    > |								% bar 3
    <
      { \tieUp \stemUp { r4 [d8 c] [<c a> b\mordent] ~ b4 } \stemBoth }
      { \context Voice=ii { < \stemUp { r8 a4. } > 
                            < \stemDown { [fis8 g] ~ } > < \stemUp g4  > }
      }
      { \context Voice=iii { < \stemDown { fis2 r4 d } > } }
    > |								% bar 4
  } \break
  \repeat "volta" 2 {
    \stemBoth [g'8 f e d] [c\prall b a a'] |			% bar 5
    a4.\upprall gis8
    <
      {  a2 }
      { \context Voice=ii { r4 [a8 b\prallmordent] } }
    > |								% bar 6
    <
      { \stemUp { [c,8 c c c] [c c c c] } \stemBoth }
      { \context Voice=ii { < \stemDown { [e, bes' a g] [a g f e] } > } }
    > |								% bar 7
    <
      { \stemUp { c4.\upprall b8 c2 } \stemBoth }
      { \context Voice=ii 
        { < \stemDown { d,4. f8 ~ [f e16\prall d] e4 } > }
      }
    > |								% bar 8
  }
}

voicetwo = \notes \relative c {
  \key c \major;
  \time 4/4;
  \clef "bass";

  \repeat "volta" 2 {
    <c2 e> <b d> |						% bar 1
    <a c> <g b> |						% bar 2
    [c8 d e\mordent f] [g a b c] |				% bar 3
    d4\mordent d,
      < 
        { \stemUp { g2\mordent } }
        { \context Voice=ii { < \stemDown { r4 g, } > } }
      > |							% bar 4
  }
  \repeat "volta" 2 {
    <g2 b> <a c> |						% bar 5
    <
      { \stemUp { <b2 d> ~ [d8 c16\prall b] [c8 d] } \stemBoth }
      { \context Voice=ii { < \stemDown { r4 e, a2 } > } }
    > |								% bar 6
    [a8 g f e] [f g a\mordent g] |				% bar 7
    [f d] [g\mordent g,] 
      <
        { \stemUp c2\mordent }
        { \context Voice=ii { < \stemDown { r4 c, } > } }
      > |							% bar 8
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
  \midi { \tempo 4 = 85; }
}
