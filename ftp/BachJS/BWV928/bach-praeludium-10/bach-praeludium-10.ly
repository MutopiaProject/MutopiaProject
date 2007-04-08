\header {
  enteredby = 	"Allen Garvin";
  maintainer = 	"Allen Garvin";
  copyright = 	"Public Domain";
  filename = 	"bach-praeludium-10.ly";
  title = 	"Praeludium 10";
  opus = 	"BWV 928";
  composer =	"Johann Sebastian Bach (1685-1750)";
  style =	"Baroque";
  source =	"Bach-Gesellschaft";
  lastupdated =	"2001/Mar/22";

  mutopiainstrument = "Harpsichord,Clavichord";
  mutopiatitle =      "Praeludium 10";
  mutopiacomposer =   "J. S. Bach (1685-1750)";
  mutopiaopus =       "BWV928";
  tagline =           "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}";
  footer =            "Mutopia-2001/03/22-63";
}

\version "1.3.117";

voiceone = \notes \relative c' {
  \key f \major;
  \time 4/4;
  \context Voice=i

  r16 [f a c] [bes g c g] 
  < { \stemUp [a8\mordent  f'] } 
    { \context Voice=ii { r < \stemDown a, c> } }
  >
  < { \stemUp [f e] }
    { \context Voice=ii { [ < \stemDown d g, > < \stemDown c g > ] } }
  > |   			% end of bar 1

  < { \stemUp [f c] [f f] } 
    { \context Voice=ii { < \stemDown c f, > r r <\stemDown a, d>} }
  >

  < { \stemUp [f16 d b g] }
    { \context Voice=ii { < \stemDown d' b> } }
  >
  < { \stemUp [e'8 e] } 
    { \context Voice=ii { r < \stemDown g, c> } }
  > |				% end of bar 2

  < { \stemUp [e16 a, c e] }
    { \context Voice=ii { < \stemDown a, c > } }
  >
  [a d, c d] [b g b d] [g c, b c] |	%end of bar 3

  [a16 f a c] 
  < 
    \tieUp
    { \stemUp { f4 ~ [f16 f e8] ~ [e16 e d8] ~ } }
    { \context Voice=ii { < \stemDown { r16 [b c d] [g,8. g16] [f8. f16]} > } }
  > |  \break				% end of bar 4

  < { \stemUp { [d16 g, c8] ~ [c16 c8 b16] [c8 c'] [c b] } }
    { \context Voice=ii 
        { < \stemDown { [e,,8. e16] [d8 f] [e <e' g>] [<d a'> <d g>] } > } 
    } 
  > |					% end of bar 5

  <
    { \stemUp { [c16 c, e g] [f d g d] [e c f a] [d, bes' a bes] } }
    { \context Voice=ii { < \stemDown g c, > } } 
  > |	\break				% end of bar 6

  [c, a d f] [bes, g' f g] [a, f bes d] [g, e' d e] |  % end of bar 7
  < { \stemUp { [f,8 d'] [d cis] [d16 d, f a] [g e a e] } }
    { \context Voice=ii { < \stemDown { r8 <f a> [<e bes'> <e a>] <d16 a'> } > } }
  > |					% end of bar 8
 
  [f d f a] [d a bes g] [fis d fis a] [d bes c a] | % end of bar 9

  [bes d, g bes] [d bes c a] [gis e gis b] [d c d b] | \break %end of bar 10
  
  < { \stemUp { [c8 c] [b b] [e a,] [g g] } }
    { \context Voice=ii
      { < \stemDown { r a [a gis] [g fis] [f e] } > }
    }
  > |							% bar 11
 
  < { \stemUp { [c8 f,] [e e] [a16 d, e f!] r [f e d] } }
    { \context Voice=ii
      { < \stemDown { [ees8 d] [d cis] c r b! r } > }
    }
  > | \break						% bar 12
  
  < 
    { \stemUp { r16 [f g a] r16 [a g f] r16 [a b c] r16 [c b a] } }
    { \context Voice=ii
      { < \stemDown { c,8 r d r e r f r } > }
    }
  > |							% bar 13

  [gis16 e gis b] [e a, g a] [f d f a] [d g, f g] | \break	% bar 14

  [e c e g] 
  <
    { \stemUp { c4 ~ [c16 c b8] ~ [b16 b a8] ~ } }
    { \context Voice=ii
      { < \stemDown { r16 [a f e] [d8. d16] [c8. c16] } > }
    }
  > |							% bar 15
  <
    { \stemUp { [a16 a gis a] [b8 c] [d c16 d] [b8. a16] } }
    { \context Voice=ii
      { < \stemDown { b,4 [gis'16 e a e] [b' e, a8] g4 } > } 
    }
  > | \break						% bar 16

  [a16 e a b]
  < { \stemUp c4  }
    { \context Voice=ii 
      { < \stemDown { r16 [a bes g] } > }
    }
  > [fis,16 a d, fis] [a c bes a] |			% bar 17

  [bes g bes d] [c a d a]
  < 
    { \stemUp { [bes8 g'] [g fis] } }
    { \context Voice=ii
      { < \stemDown { r <d8 bes> [<a ees'> <a d>] } > }
    }
  > | \break						% bar 18

  <
    { \stemUp { [g8 bes16 a] } }
    { \context Voice=ii
      { < \stemDown { <g, d'> r } > } 
    }
  > [g f e d] [c e g, c] [e, d' c bes] |		% bar 19

  <
    { \stemUp { [a8 f'] [f e] [f16 f, a c] [bes g c g]} }
    { \context Voice=ii
      { < \stemDown { r8 <a c> [<g d> <g c>] <f16 c'>} > }
    }
  > | \break						% bar 20

  [a16 f a c] 
  <
    { \stemUp { [d8 d] [d16 bes g e] [c'8 c] } }
    { \context Voice=ii
      { < \stemDown { r <f,8 bes> <g16 bes> } > }
    }
  > |							% bar 21

  <
    { \stemUp { [c16 d, f a] } }
    {
      \context Voice=ii
      { < \stemDown { <f16 a> } > } 
    }
  > [d g, f g] [e c e g] [c f, e f] | \break		% bar 22

  [d bes d f]
  <
    { \stemUp { bes4 ~ [bes16 bes a8] ~ [a16 a g8] ~ } }
    { \context Voice=ii
      { < \stemDown { r16 [e f g] [c,8. c16] [bes8. bes16] } > }
    }
  > |							% bar 23

  <
    { \stemUp { [g16 c, f8] ~ [f16 f8 e16] f2 } }
    { \context Voice=ii
      { < \stemDown { [a,8. a16] [g8 <bes c>] <a2 c> } > }
    }
  > \bar "|.";						% bar 24
}

voicetwo = \notes \relative c {
  \key f \major;
  \time 4/4;
  \clef "bass";
  r2 r16 [f a c] [bes g c g] | 				% bar 1
  [a c a f] [d d' c d] [g, b g e] [c c' b c] |		% bar 2
  f,4 r8 <f a d> <f4 g d'> r8 <e g c> |			% bar 3
  [<e f c'> e'] [d c] [b c] [a b] |			% bar 4
  [c e,] [f g] r16 [c, e g] [f d g d] |			% bar 5
  <
    { \stemUp { r8 e' d4 c bes } }
    { \context Voice=ii 
      { < \stemDown { \tieDown [e,8 c'] ~ [c bes!] ~ [bes a] ~ [a g] ~ } > } 
    }
  > |							% bar 6
  < { \stemUp { a4 g f e } }
    { \context Voice=ii
      { < \stemDown { [g8 f] ~ [f e] ~ [e d] ~ [d cis] } > }
    }
  > |							% bar 7
  r16 [d f a] [g e a e]
  < { \stemUp { r8 <a f> [<bes e,> <a e>] } }
    { \context Voice=ii
      { < \stemDown { [f d] [d cis] } > }
    }
  > |							% bar 8
  < { \stemUp { a r } }
    { \context Voice=ii { < \stemDown d, > } }
  >
  r < \stemDown { d [c a] [fis d] } > |			% bar 9

  g r f r [e16 f e d] [c a' b, gis'] |			% bar 10

  [a a, c e] [d b e b] [cis e d c] [b g c g] |		% bar 11

  [a c b a] [gis e a e] fis8 r gis r |			% bar 12

  a r b r c r d r |					% bar 13

  [e d] [cis a'] [d, c] [b g'] |			% bar 14

  [c, b] [a g] [fis gis] [a c] |			% bar 15

  d4 r16 [c b a] [gis8 a] [e' e,] |			% bar 16

  a4 r8 a' [d, e] [fis d] |				% bar 17

  [g g'] ~ [g fis] [g16 g, bes d] [c a bes a] |		% bar 18

  [bes d, g a] [bes g a f] [e g c, e] [g bes a g] |	% bar 19

  [f f, a c] [bes g a g] 
  < 
    { \stemUp { r8 <c' a> [<d g,> <c g>] } }
    { \context Voice=ii
      { < \stemDown { [a, f'] [f e] } > }
    }
  >							% bar 20

  [f,16 a f d] [bes bes' a bes] [e, g e c] [a a' g a] |	% bar 21

  [d,8 c'] [bes g] [c, bes'] [a f] |			% bar 22

  [bes, a'] [g f] [e f] [d e] |				% bar 23

  [f a,] [bes c] f,2 
  \bar "|.";
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

