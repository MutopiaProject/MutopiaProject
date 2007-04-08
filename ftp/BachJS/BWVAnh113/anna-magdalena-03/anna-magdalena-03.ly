\header {
  enteredby = 	"Allen Garvin";
  maintainer = 	"Allen Garvin";
  copyright = 	"Public Domain";
  filename = 	"anna-magdalena-03.ly";
  title = 	"Menuet";
  opus = 	"BWV Anh. 113";
  composer =	"Johann Sebastian Bach (1685-1750)";
  style =	"Baroque";
  source =	"Bach-Gesellschaft";
  lastupdated =	"2001/Apr/01";

  mutopiainstrument = "Harpsichord,Clavichord";
  mutopiatitle =      "Menuet";
  mutopiacomposer =   "J. S. Bach (1685-1750)";
  mutopiaopus =       "BWV Anh. 113";
  tagline =           "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}";
  footer =            "Mutopia-2001/04/01-74";
}

\version "1.3.117";

voiceone = \notes \relative c'' {
  \clef "treble";
  \time 3/4;
  \key f \major;

  \repeat "volta" 2 {
    c4 [d16 e f8] e4 |
    [\times 2/3 {f8( e )d}] 
      \grace { \property Grace.Stem \override #'flag-style = #() } c2 |
    [\times 2/3 { d8 ees d }] [\times 2/3 {c d c }] [\times 2/3 {bes c bes}] |
    \grace { \property Grace.Stem \override #'flag-style = #() bes8 } a2 g4 |
    [a8 c f, c' g c] |
    [a c bes c g c] |
    [a c f, c' g c] |
    [a c bes c g c] |
    [a c d e f d] |
    [c b a g] [c16( d c )b] |
    [c8 f] e4 [d16\trill c d8] |
    c2. |
  }
  \repeat "volta" 2 {
    g'4 [f8 e f d] |
    [e g] bes4 r |
    a [g8 f e d] |
    \grace { \property Grace.Stem \override #'flag-style = #() d8 } cis2. |
    [cis8 d e cis d e] |
    a,4 a a |
    [cis8 d e cis d e] |
    g,4 g g |
    [cis8 d e cis d e] |
    [a, d c! bes a g] |
    f4 g e |
    d2. |
    [c'8 f e f ees f] |
    [a f d f c f] |
    [d g fis g f g] |
    [bes g e g c, bes] |
    [a f' g a g f] |
    [bes, g' a bes a g] |
    [c, c' bes a g a] |
    \grace { \property Grace.Stem \override #'flag-style = #() g8 } f2. |
  }
}

voicetwo = \notes \relative c {
  \time 3/4;
  \key f \major;
  \clef "bass"; 

  \repeat "volta" 2 {
    f4 a g |
    a [f8 g a f] |
    bes4 c c, |
    f [c8 d e c] |
    f4 a, g |
    f g e |
    f a g |
    f g e |
    f f' d |
    g e a |
    f g g, |
    c2. |
  }
  \repeat "volta" 2 {
    c4 g' g, |
    c [e8 d e c] |
    f4 bes g |
    a e cis |
    a a' e |
    [cis8 d e cis d e] |
    a,4 a a |
    [cis8 d e cis d e] |
    g,4 g g |
    f f' g |
    a2 a,4 |
    [d8 d' c bes a g] |
    a2 g4 |
    f bes a |
    bes2 a4 |
    g c e, |
    f r r |
    g r r |
    a bes c |
    f,2. |
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
  \midi { \tempo 4 = 120; }
}

