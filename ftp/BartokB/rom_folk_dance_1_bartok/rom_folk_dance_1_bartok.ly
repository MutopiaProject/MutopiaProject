\header {
  enteredby = 	"John Mamoun"
  maintainer = 	"John Mamoun"
  maintainerEmail = "mamounjo@gmail.com"
  title = 	"Romanian Folk Dance No.2"
subtitle = "Peasant Costume"
composer =	"Bela Bartok (1881-1945)"
  style =	"Romantic"
piece = "           Allegro"

  mutopiainstrument = "Harpsichord, Piano"
  mutopiatitle =      "Romanian Folk Dance No.2 - Peasant Costume"
  mutopiacomposer =   "BartokB"
  mutopiasource =     "Vienna: Universal Edition, 1918"
  mutopialicense =    "Public Domain"

 footer = "Mutopia-2017/01/11-2162"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {print-page-number = ##f
systems-per-page = 5
max-systems-per-page = 5
}
#(set-global-staff-size 24)


\version "2.19.49"

voiceone =  {
  \key c \major
  \time 2/4
  \clef "treble"

  d'8 e' f' g'    | % bar 1

   a' g' d' g' 		|		% bar 2			
a'4 a'8 r16 b'16 |
a'2 |
g'8 a' b' g'    | % bar 5
c''4  \tuplet 5/4  { c''16 b'16 a'16 g'16 f'16 } |
g'4 g'8 r16 a'16 |
g'2 |
g'8 a' b' g'    | % bar 9
c''4  c''16 b'16 a'16 g'16 |
f'8 e'8 f'8 g'8 |
f'8 e'8 d'4 | %bar 12
d'8 e'8 f'8 a'8 |
g'8 f'8 e'8 f'8 |
d'4 d'8 r16 a16 | %bar 15
d'2 \bar "|."
}

 
voicetwo =  {
  \key c \major
  \time 2/4
  \clef "bass"

  d,4 <f a> |								% bar 1
d,4 <g b> |								% bar 2
d,4 <a d' f'>4 |
<a d' f'>2  |
g,4 <d' f'>4 |
a,4 <c' f'>4 |
g,4 <c' d'>4 |
<b d'>2 |
f,4 <g d'> |
e, <b c'> |
<f a c'>4 <a cis'>4 |
<bes d'>4 <bes, f>4 |
g,4 <d b>4 |
a,4 <g cis'>4 |
d,4 <d f a>4 |
<d f a>2 \bar "|."
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
\midi 
{
    \tempo 4 = 150  }
\layout {}
}
   
