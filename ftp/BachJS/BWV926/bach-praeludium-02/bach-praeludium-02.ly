\header {
  enteredby = 	"Allen Garvin";
  maintainer = 	"Allen Garvin";
  copyright = 	"Public Domain";
  filename = 	"bach-praeludium-02.ly";
  title = 	"Praeludium 2";
  opus = 	"BWV 926";
  composer =	"Johann Sebastian Bach (1685-1750)";
  style =	"Baroque";
  source =	"Bach-Gesellschaft";
  lastupdated =	"2001/Mar/27";

  mutopiainstrument = "Harpsichord,Clavichord";
  mutopiatitle =      "Praeludium 2";
  mutopiacomposer =   "J. S. Bach (1685-1750)";
  mutopiaopus =       "BWV926";
  tagline =           "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}";
  footer =            "Mutopia-2001/03/27-69";
}

\version "1.3.117";

voiceone = \notes \relative c' {
  \key d \minor;
  \time 3/4;

  [d8 a' f d a' f] |						% bar 1
  [d8 a' f d a' f] |						% bar 2
  [d bes' g d bes' g] |						% bar 3
  [d bes' g d bes' g] |						% bar 4
  [cis, g' e cis g' e] |					% bar 5
  [cis bes' g e a g] |						% bar 6
  [f d f a f a] |						% bar 7
  [d a d f d f] |						% bar 8
  [b( f e d c b] |						% bar 9
  [a gis fis )e d' b] |						% bar 10
  <a4 c\mordent> r r |						% bar 11
  <a4 c\mordent> r r |						% bar 12
  [a'8( ees d c bes a] |					% bar 13
  [g fis e )d c' a] |						% bar 14
  [bes\mordent d bes g] g'4 |					% bar 15
  r8 [d c bes a\prall g] |					% bar 16
  [a c a f] f'4 |						% bar 17
  r8 [c bes a g\prall f] |					% bar 18
  [g bes a g f e] |						% bar 19
  [f d f a d g,] |						% bar 20
  <
    {\stemUp { [cis\mordent e cis a e' cis] } \stemBoth }
    {\context Voice=ii { < \stemDown a4 > } }
  > |								% bar 21
  [a8 e' cis a bes a] |						% bar 22
  [g e' cis g e' cis] |						% bar 23
  [g e' cis g a g] |						% bar 24
  [f d' bes f d' bes] |						% bar 25
  [f d' bes f d' bes] |						% bar 26
  [fis c' a fis c' a] |						% bar 27
  [fis c' a fis c' a] |						% bar 28
  [bes g fis g d g] |						% bar 29
  [bes g d bes' g d] |						% bar 30
  [ees g fis g bes g] |						% bar 31
  [ees bes' g ees bes' g] |					% bar 32
  [cis, bes' g cis, bes' g] |					% bar 33
  [cis, bes' g cis, a' g] |					% bar 34
  [f a f d a' f] |						% bar 35
  [d a' f d cis d] |						% bar 36
  [e g e bes g' e] |						% bar 37
  [bes g' e cis a g'] |						% bar 38
  [f16 d c! bes] r4 r |						% bar 39
  r r r  |							% bar 40
  r4 r16 [d f a] [d, f a] d |					% bar 41
  [f a f d] [f d b d] [gis, b a gis] |				% bar 42
  <a4.\arpeggio e' g> a'8 <a,4 d f> ~ |				% bar 43
  [f'8 e] <
           { \stemUp { e4.\prall d8 } \stemBoth }
           { \context Voice=ii { < \stemDown cis2 > } }
         > |							% bar 44
  [d8 c! a d bes g] |	 					% bar 45
  [c a fis bes g e] |						% bar 46
  [a fis d g e cis] |						% bar 47
  <a2. d\mordent fis> \bar "|.";				% bar 48

}

  
voicetwo = \notes \relative c {
  \key d \minor;
  \time 3/4;
  \clef "bass";

  d4\mordent r r |						% bar 1
  d, r r |							% bar 2
  d'\mordent r r |						% bar 3
  d, r r |							% bar 4
  d'\mordent r r|						% bar 5
  d, r r |							% bar 6
  [d'8 a d f d f] |						% bar 7
  [a f a d a d] |						% bar 8
  gis,4 r r |							% bar 9
  e gis e |							% bar 10
  [a8 e' c a e' c] |						% bar 11
  [g! ees' c g ees' c] |					% bar 12
  fis,4 r r |							% bar 13
  d fis d |							% bar 14
  g\mordent r r8 f! |						% bar 15
  e4\prall r r |						% bar 16
  f\mordent r r8 e |						% bar 17
  d4\prall r8 [f e d] |						% bar 18
  [e d cis e d cis] |						% bar 19
  d4 c! bes | 							% bar 20
  a a' a, |							% bar 21
  a a' a, |							% bar 22
  a a' a, |							% bar 23
  a a' a, |							% bar 24
  bes r r |							% bar 25
  bes bes' bes, |						% bar 26
  a r r |							% bar 27
  a d d, |							% bar 28
  g r r |							% bar 29
  g g' g, |							% bar 30
  g r r |							% bar 31
  g g' g, |							% bar 32
  a r r |							% bar 33
  a a' a, |							% bar 34
  a r r |							% bar 35
  a a' a, |							% bar 36
  cis, r r |							% bar 37
  cis cis' cis |						% bar 38
  d a'16 [g f e] [f a d, f] |					% bar 39
  a, [d c bes] a [g f e] [d f a d] |				% bar 40
  [f a] [d, f] a r r8 r4 |					% bar 41
  r r r |							% bar 42
  [cis,8 e cis a] [d b] |					% bar 43
  [g g'] [a g a g,] |						% bar 44
  d'4 d' d, |							% bar 45
  d r r |							% bar 46
  d, d' d, |							% bar 47
  d2. \bar "|."; 						% bar 48
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
  \midi { \tempo 4 = 140; }
}
