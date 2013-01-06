\header {
  enteredby = 	"Allen Garvin"
  maintainer = 	"Allen Garvin"
  copyright = 	"Public Domain"
  filename = 	"bach-praeludium-10.ly"
  title = 	"Praeludium 10"
  opus = 	"BWV 928"
  composer =	"Johann Sebastian Bach (1685-1750)"
  style =	"Baroque"
  source =	"Bach-Gesellschaft"

  mutopiainstrument = "Harpsichord, Piano, Clavichord"
  mutopiatitle =      "Praeludium 10"
  mutopiacomposer =   "BachJS"
  mutopiaopus =       "BWV 928"
  maintainerEmail =   "AGarvin@tribalddb.com"

 footer = "Mutopia-2013/01/06-63"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\version "2.16.1"

voiceone =  \relative c' {
  \key f \major
  \time 4/4
  \set Timing.baseMoment = #(ly:make-moment 1 4)
  \set Timing.beamExceptions = #'()
  r16  f a c  bes g c g 
  << {a8\mordent  f' f e} \\
    {r <a, c> <d g,> <c g>}
  >> |   			% end of bar 1

  << {f c  f f f16 d b g e'8 e } \\
    { <c f,> r r <a d> <d b>16 r r8 r <g, c>}
  >> |				% end of bar 2

  << {e'16 a, c e } \\
    {<a, c>}
  >>
   a' d, c d  b g b d  g c, b c |	%end of bar 3

   a16 f a c 
  << 
    {f4 ~  f16 f e8 ~  e16 e d8 ~} \\
    {r16  b c d  g,8. g16  f8. f16}
  >> |  \break				% end of bar 4

  << {d'16 g, c8 ~  c16 c8 b16  c8 c'  c b} \\
    {e,,8. e16  d8 f  e <e' g> <d a'> <d g> }
  >> |					% end of bar 5

  <<
    {c'16 c, e g  f d g d  e c f a  d, bes' a bes} \\
    {<g c,>} 
  >> |	\break				% end of bar 6

   c, a d f  bes, g' f g  a, f bes d  g, e' d e |  % end of bar 7
  << {f,8 d'  d cis  d16 d, f a  g e a e } \\
    {r8 <f a> <e bes'> <e a> <d a'>16}
  >> |					% end of bar 8
 
   f d f a  d a bes g  fis d fis a  d bes c a | % end of bar 9

   bes d, g bes  d bes c a  gis e gis b  d c d b | \break %end of bar 10
  
  << {c8 c  b b  e a,  g g} \\
    {r a  a gis  g fis  f e}
  >> |							% bar 11
 
  << {c'8 f,  e e  a16 d, e f! r  f e d} \\
    {ees8 d  d cis c r b! r}
  >> | \break						% bar 12
  
  << 
    {r16 f' g a r16  a g f r16  a b c r16  c b a} \\
    {c,8 r d r e r f r}
  >> |							% bar 13

   gis16 e gis b  e a, g a  f d f a  d g, f g | \break	% bar 14

   e c e g 
  <<
    {c4 ~  c16 c b8 ~  b16 b a8 ~} \\
    {r16  a f e  d8. d16  c8. c16}
  >> |							% bar 15
  <<
    {a'16 a gis a  b8 c  d c16 d  b8. a16} \\
    {b,4  gis'16 e a e  b' e, a8 g4} 
  >> | \break						% bar 16

   a16 e a b
  << c4 \\
    {r16  a bes g}
  >>  fis16 a d, fis  a c bes a |			% bar 17

   bes g bes d  c a d a
  << 
    {bes8 g'  g fis} \\
    {r <d bes>8 <a ees'> <a d>}
  >> | \break						% bar 18

  <<
    {g'8 bes16 a} \\
    {<g, d'> r} 
  >> g' f e d  c e g, c  e, d' c bes |		% bar 19

  <<
    {a8 f'  f e  f16 f, a c  bes g c g} \\
    {r8 <a c> <g d> <g c> <f c'>16}
  >> | \break						% bar 20

   a16 f a c 
  <<
    {d8 d  d16 bes g e  c'8 c} \\
    {r <f, bes>8 <g bes>16}
  >> |							% bar 21

  <<
    {c16 d, f a} \\
    {<a f>16} 
  >>  d g, f g  e c e g  c f, e f | \break		% bar 22

   d bes d f
  <<
    {bes4 ~  bes16 bes a8 ~  a16 a g8 ~} \\
    {r16  e f g  c,8. c16  bes8. bes16}
  >> |							% bar 23

  <<
    {g'16 c, f8 ~  f16 f8 e16 f2} \\
    {a,8. a16  g8 <bes c> <a c>2}
  >> \bar "|."						% bar 24
}

voicetwo =  \relative c {
  \key f \major
  \time 4/4
  \set Timing.baseMoment = #(ly:make-moment 1 4)
  \set Timing.beamExceptions = #'()
  \clef "bass"
  r2 r16  f a c  bes g c g | 				% bar 1
   a c a f  d d' c d  g, b g e  c c' b c |		% bar 2
  f,4 r8 <f a d> <f g d'>4 r8 <e g c> |			% bar 3
  <e f c'> e'  d c  b c  a b |			% bar 4
   c e,  f g r16  c, e g  f d g d |			% bar 5
  <<
    {r8 e' d4 c bes} \\
    {e,8 c' ~  c bes! ~  bes a ~  a g ~} 
  >> |							% bar 6
  << {a4 g f e} \\
    {g8 f ~  f e ~  e d ~  d cis}
  >> |							% bar 7
  r16  d f a  g e a e
  << {r8 <a f> <bes e,> <a e>} \\
    {f d  d cis}
  >> |							% bar 8
  << a' \\
    d,
  >>
  r r d'  c a  fis d |			% bar 9

  g r f r  e16 f e d  c a' b, gis' |			% bar 10

   a a, c e  d b e b  cis e d c  b g c g |		% bar 11

   a c b a  gis e a e fis8 r gis r |			% bar 12

  a r b r c r d r |					% bar 13

   e d  cis a'  d, c  b g' |			% bar 14

   c, b  a g  fis gis  a c |			% bar 15

  d4 r16  c b a  gis8 a  e' e, |			% bar 16

  a4 r8 a'  d, e  fis d |				% bar 17

   g g' ~  g fis  g16 g, bes d  c a bes a |		% bar 18

   bes d, g a  bes g a f  e g c, e  g bes a g |	% bar 19

   f f, a c  bes g a g 
  << 
    {r8 <c' a> <d g,> <c g>} \\
    {a, f'  f e}
  >>							% bar 20

   f16 a f d  bes bes' a bes  e, g e c  a a' g a |	% bar 21

   d,8 c'  bes g  c, bes'  a f |			% bar 22

   bes, a'  g f  e f  d e |				% bar 23

   f a,  bes c f,2 
  \bar "|."
}

\score {
   \context GrandStaff << 
    \context Staff = "one" <<
      \voiceone
    >>
    \context Staff = "two" <<
      \voicetwo
    >>
  >>

  \layout{}
  
  \midi {
    \tempo 4 = 85
    }


}

