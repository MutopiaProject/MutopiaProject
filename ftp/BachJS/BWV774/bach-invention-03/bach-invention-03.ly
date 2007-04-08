\header {
  enteredby = 	"Allen Garvin"
  maintainer = 	"Allen Garvin"
  copyright = 	"Public Domain"
  filename = 	"bach-invention-03.ly"
  title = 	"Invention 3"
  opus = 	"BWV 774"
  composer =	"Johann Sebastian Bach (1685-1750)"
  style =	"Baroque"
  source =	"Bach-Gesellschaft"
  lastupdated =	"2003/May/17"

  mutopiainstrument = "Harpsichord,Clavichord"
  mutopiatitle =      "Invention 3"
  mutopiacomposer =   "J. S. Bach (1685-1750)"
  mutopiaopus =       "BWV774"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer =            "Mutopia-2003/05/17-70"
}

\version "1.6.10"

voiceone = \notes \relative c' {
  \key d \major
  \partial 8
  \time 3/8

  [d16 e] |							% bar 1
  [fis16 e( g fis e )d] |					% bar 2
  [a' g( fis e fis )d] |					% bar 3
  [a'8 b cis16\mordent d] |					% bar 4
  [cis8\prall 
    \grace { \property Voice.Stem \override #'stroke-style = #() b
             \property Voice.Stem \revert #'stroke-style }
    a cis16 d] |						% bar 5
  [e-. cis( fis d cis )b] |					% bar 6
  [e cis( d b a )gis] |						% bar 7
  [e' cis( fis d cis )b] |					% bar 8
  [e cis( d b a )gis] |						% bar 9
  [cis b( d cis b )a] |						% bar 10
  [fis'8 gis, a] ~ |						% bar 11
  [a16\turn b] [b8. a16] |					% bar 12
  a4 r8 |							% bar 13
  r e' a ~ |							% bar 14
  [a16 b,( cis dis e )fis] |					% bar 15
  [g fis( a g fis )e] |						% bar 16
  [b'8 b,] r |							% bar 17
  r [fis b] ~ | 						% bar 18
  [b16 ais b cis d e] |						% bar 19
  [fis e( g fis e )d] |						% bar 20
  [e d( fis e d )cis] |						% bar 21
  [d cis( e d cis )b] |						% bar 22
  \stemDown [cis8 ais\downprall b] ~ \stemBoth |		% bar 23
  [b16 cis] [cis8.\prall b16] ~ |				% bar 24
  [b16 fis( gis ais b )cis] |					% bar 25
  [d( cis e d cis )b] |						% bar 26
  g'4. ~ |							% bar 27
  g4. ~ |							% bar 28
  [g16 e,( fis gis a )b] |					% bar 29
  [cis b( d cis b )a] |						% bar 30
  fis'4. ~ |							% bar 31
  fis ~ |							% bar 32
  [fis16 b,( e d cis )b] |					% bar 33
  [cis-. b( d cis b )a] |					% bar 34
  [gis8\prall e a16 b] |					% bar 35
  [cis b( d cis b )a] |						% bar 36
  [fis'8. gis,16 a gis] |					% bar 37
  [a d b8. a16] |						% bar 38
  [a8. cis16 d e] |						% bar 39
  [fis,8 g a\turn] |						% bar 40
  [b cis\turn d] ~ |						% bar 41
  [d16 cis( e d cis )d] |					% bar 42
  [e( d cis b a )g] |						% bar 43
  [fis e( g fis e )d] |						% bar 44
  [a'( g fis e fis )d] |					% bar 45
  [a'8 b cis16\mordent d] |					% bar 46
  [cis8 a d] |							% bar 47
  [d d, d'] |							% bar 48
  [d d, d'] |							% bar 49
  [d d, d'] |							% bar 50
  [d d, d'16 e] |						% bar 51
  [fis-. e( g fis e )d] |					% bar 52
  [b'8 cis, d] ~ |						% bar 53
  [d16\turn e] [e8. d16] |					% bar 54
  [d8 d, g] ~ |							% bar 55
  [g16 a,( b cis d )e] |					% bar 56
  [fis e( g fis e )d] |						% bar 57
  [b'8. cis,16 d cis] |						% bar 58
  [d g] [e8. d16] |						% bar 59
  d4.\fermata \bar "|."					% bar 60
 
}

voicetwo = \notes \relative c {
  \key d \major
  \time 3/8
  \clef "bass"
  \partial 8

  r8 |
  r r r |
  r r [d16 e] |
  [fis e( g fis e )d] |
  [a' g( fis e fis )d] |
  [a'8 a, a'] |
  [a a, a'] |
  [a a, a'] |
  [a a, a'] |
  [a b cis] |
  [d16 cis( e d cis )b] |
  [cis d e8 e,] |
  [a16 e( fis gis a )b] |
  [cis b( d cis b )a] |
  [e'8 e,] r |
  r [b' e] ~ |
  [e16 fis, gis ais b cis] |
  [d cis e d cis b] |
  [fis'8 fis, \clef "treble" e']
  [d b'16 ais b8] |
  [cis, ais'16 gis ais8] |
  [b16 a!( g! fis e )d] |
  [e d( fis e d )cis] |
  [d e fis8 fis,] \clef "bass" |
  [b fis d] |
  b4 r8 |
  r16 [b( cis dis e )fis] |
  [g fis( a g fis )e] |
  a4. ~ |
  a ~ |
  [a16 a,( b cis d )e] |
  [fis( e g fis e )d ] |
  [gis8. e16 fis gis] |
  [a gis( fis e d )fis] |
  [e d( cis b cis )a] |
  [a'8 fis cis] |
  [d16 cis( e d cis )b] |
  [cis d e8 e,] |
  [a16 cis( d e fis )g] |
  [a g( b a g )fis] |
  [g fis( a g fis )e] |
  [fis e( g fis e )d] |
  [a'8 a,] r |
  r r r |
  r r [d16 e] |
  [fis e( g fis e )d] |
  [a' g( fis e fis )d] |
  [a' fis( b g fis )e] |
  [a fis( g e d )cis] |
  [a' fis( b g fis )e] |
  [a fis( g e d )cis] |
  [d8 e fis] |
  [g16 fis( a g fis )e] |
  [fis g a8 a,] |
  [b16 a( c b a )g] |
  d'4. ~ |
  [d16 cis( b a g )fis] |
  [g fis( a g fis )e] |
  [fis g] a4 |
  d,4.\fermata \bar "|."
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
  \midi { \tempo 4 = 80 }
}

