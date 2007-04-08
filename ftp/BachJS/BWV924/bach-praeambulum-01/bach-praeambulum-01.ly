\header {
  enteredby = 	"Allen Garvin";
  maintainer = 	"Allen Garvin";
  copyright = 	"Public Domain";
  filename = 	"bach-praeambulum-01.ly";
  title = 	"Praeambulum 1";
  opus = 	"BWV 924";
  composer =	"Johann Sebastian Bach (1685-1750)";
  style =	"Baroque";
  source =	"Bach-Gesellschaft";
  lastupdated =	"2001/Mar/22";

  mutopiainstrument = "Harpsichord,Clavichord";
  mutopiatitle =      "Praeambulum 1";
  mutopiacomposer =   "J. S. Bach (1685-1750)";
  mutopiaopus =       "BWV924";
  tagline =           "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}";
  footer =            "Mutopia-2001/03/22-65";
}

\version "1.3.117";

voiceone = \notes \relative c'' {
  \key c \major;
  \time 4/4;

  r16 [g c e] r [g, c e] r [g, c d] r [b d g] |			% bar 1
  r [a, d g] r [a, d f] r [a, d e] r [c e a] |			% bar 2
  r [b, e a] r [b, e g] r [c, e f] r [g, d' f] |		% bar 3
  r [g, d' e] r [g, c e] r [a, c d] r [e, b' d] |		% bar 4
  r [e, b' c] r [e, a c] r [f, a bes] r [c, g' bes] |		% bar 5
  r [c, g' a] r [c, f a] r [d, f b!] r [e, g c] |		% bar 6
  r [d, g c] r [d, g b] r [c, g' b] r [c, fis a] |		% bar 7
  r [b, d a'] r [b, d g] r [a, c g'] r [a, c f!] |		% bar 8
  <b,4\arpeggio d f> r r2 |					% bar 9
  r4 [f'16 g b d] b [g b d] [f g b f] |				% bar 10
  [e c' g f] [e c' g e] [d c' f, e] [d b' f d] |		% bar 11
  [c b' e, d] [c a' e c] [b a' d, c] [b g' d c] |		% bar 12
  [a g' c, b] [a fis' c a] [b f' d c] [b f' d c] |		% bar 13
  [g e' c b] [a e' c a] [fis d' b a] [g d' b g] |		% bar 14
  [e c' a g] [fis c' a fis] [d c' b\prall a] [b g d fis] |	% bar 15
  [g e f! d'] [c b a g] [f' d ees c] [fis, ees' d c] |		% bar 16
  [b d b g] [aes f! g d] [ees fis a c] 
  <
    { \stemUp { r [c8 b16] } \stemBoth }
    { \context Voice=ii { < \stemDown { [d,8 f] } > } }
  > |								% bar 17
  <e,!1 g c\fermata> \bar "|."; 				% bar 18
}

voicetwo = \notes \relative c {
  \key c \major;
  \time 4/4;
  \clef "bass";
  
  c4 e g\mordent g, |						% bar 1
  d'\mordent f a\mordent a, |					% bar 2
  e e'\mordent a b\upprall |					% bar 3
  c e, fis gis\downprall |					% bar 4
  a c, d e\upprall |						% bar 5
  f e d\prall c |						% bar 6
  g'\mordent g, g'\mordent g, |					% bar 7
  g'\mordent g, g'\mordent g, |					% bar 8
  g'\mordent r r16 [g, b d] [f g b d] |				% bar 9
  b [g b d] r4 r2 |						% bar 10
  <g,,1 g'> ~ |							% bar 11
  <g g'> ~ |							% bar 12
  <g g'> ~ |							% bar 13
  <g g'> ~ |							% bar 14
  <g g'> ~ |							% bar 15
  <g g'> ~ |							% bar 16
  <g g'> |							% bar 17
  <c, c'\fermata> \bar "|.";					% bar 18
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
  \midi { \tempo 4 = 95; }
}
