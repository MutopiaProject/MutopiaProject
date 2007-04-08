
\header {
  enteredby = 	"Allen Garvin"
  maintainer = 	"Allen Garvin"
  copyright = 	"Public Domain"
  filename = 	"bach-invention-08.ly"
  title = 	"Invention 08"
  opus = 	"BWV 779"
  composer =	"Johann Sebastian Bach (1685-1750)"
  style =	"Baroque"
  source =	"Bach-Gesellschaft"
  lastupdated =	"2003/May/17"

  mutopiainstrument = "Harpsichord,Clavichord"
  mutopiatitle =      "Invention 08"
  mutopiacomposer =   "J. S. Bach (1685-1750)"
  mutopiaopus =       "BWV779"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer =            "Mutopia-2003/05/17-61"
}

\version "1.6.10"

voiceone = \notes \relative c' {
  \key f \major
  \time 3/4

  r8 [f a f c' f,] |						% bar 1
  [f' e16 d] [c d c bes] [a bes a g] |				% bar 2
  [f8 a c a f' c] |						% bar 3
  [a'16 c bes c] [a16 c bes c] [a16 c bes c] |			% bar 4
  [f, a g a] [f a g a] [f a g a] |				% bar 5
  [d, f e f] [d f e f] [d f e f] |				% bar 6
  [b,8 g d' b f' d] |						% bar 7
  [g16 a g f] [e f e d] [c d c bes!] |				% bar 8
  [a8 d16 c] [b c b a] [g a g f] |				% bar 9
  [e f e d] [c8 c'16 b c8 e,] |					% bar 10
  [f c' e, c' d, b'] |						% bar 11
  c4 r r |							% bar 12
  r8 [c e c g' c,] |						% bar 13
  [c' b16 a] [g a g f] [e f e d] |				% bar 14
  [c bes! c a'] [c, a' bes, a'] [c, a' a, a'] |			% bar 15
  [bes,8 g bes g d' g,] |					% bar 16
  [g' f16 ees] [d ees d c] [bes c bes a] |			% bar 17
  [g8 bes d bes g' d] |						% bar 18
  [bes' cis, bes' cis, bes' cis,] |				% bar 19
  [d a f' d a' f] |						% bar 20
  [g16 f g bes] [c, bes' d, bes'] [e, bes' c, bes'] |		% bar 21
  [f e f a] [b, a' cis, a'] [d, a' b, a'] |			% bar 22
  [e d e g] [a, g' b, g'] [cis, g' a, g'] |			% bar 23
  [f8 d bes! d g, f'] |						% bar 24
  [e c a c f, ees'] |						% bar 25
  [d16 f ees f] [d f ees f] [d f ees f] |			% bar 26
  [bes, d c d] [bes d c d] [bes d c d] |			% bar 27
  [g, bes a bes] [g bes a bes] [g bes a bes] |			% bar 28
  [e,8 c g' e bes' g] |						% bar 29
  [c16 d c bes] [a bes a g] [f g f ees] |			% bar 30
  [d8 g16 f] [e f e d] [c d c bes] |				% bar 31
  [a bes a g] [f8 f'16 e f8 a,] |				% bar 32
  [bes f'] [a, f'] [g, e'] | 					% bar 33
  <a,4 c f> r r \bar "|."					% bar 34
}

  
voicetwo = \notes \relative c {
  \key f \major
  \time 3/4
  \clef "bass"

  r2. |								% bar 1
  r8 [f a f c' f,]                                              % bar 2
  [f'8 e16 d] [c d c bes] [a bes a g] |                         % bar 3
  [f8 a c a f' c] \clef "treble"|                              % bar 4
  [a'16 c bes c] [a c bes c][a c bes c] |                       % bar 5
  [f, a g a] [f a g a] [f a g a] |                              % bar 6
  [d, f e f] [d f e f] [d f e f] \clef "bass"|                 % bar 7
  [b,8 g c g e' c] |                                            % bar 8
  [f16 g f e] [d e d c] [b c b a] |                             % bar 9
  [g8 c16 b] [a b a g] [f g f e] |                              % bar 10
  [d e d c] [g' f e f] [g8 g,] |                                % bar 11
  r [c e c g' c,] |                                             % bar 12
  [c' b16 a] [g a g f] [e f e d] |                              % bar 13
  [c8 e g e c' g] |                                             % bar 14
  [ees' fis, ees' fis, ees' fis,] |                             % bar 15
  [g f!16 ees] [d ees d c] [bes c bes a] |                      % bar 16
  [g8 g' bes g d' g,] |                                         % bar 17
  [g' f16 ees] [d ees d c] [bes c bes a] |                      % bar 18
  [g f g e'!] [g, e' f, e'] [g, e' e, e'] |                     % bar 19
  [f, e f d'] [f, d' e, d'] [f, d' d, d'] |                     % bar 20
  [bes8 g e g c, e] |                                           % bar 21
  [a f d f b, d] |                                              % bar 22
  [g e cis e a, cis] |                                          % bar 23
  [d,16 d' c! d] [g, d' a d] [bes d g, d'] |                    % bar 24
  [c, c' bes c] [f, c' g c] [a c f, c'] |                       % bar 25
  [bes8 d f d bes' f] |                                         % bar 26
  [d'16 f ees f] [d f ees f] [d f ees f] |                      % bar 27
  [bes, d c d] [bes d c d] [bes d c d] |                        % bar 28
  [g, bes a bes] [g bes a bes] [g bes a bes] |                  % bar 29
  [e,8 c f c a' f] |                                            % bar 30
  [bes16 c bes a] [g a g f] [e f e d] |                         % bar 31
  [c8 f16 e] [d e d c] [bes c bes a] |                          % bar 32
  [g a g f] [c' bes a bes] [c8 c,] |                            % bar 33
  f4 r r                                                        % bar 34
  \bar "|."
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

  \paper{ }
  \midi { \tempo 4 = 90 }
}

