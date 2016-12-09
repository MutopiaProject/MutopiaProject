\header {
  enteredby = 	"John Mamoun"
  maintainer = 	"John Mamoun"
  maintainerEmail = "mamounjo@gmail.com"
  title = 	"The Harebell"
composer =	"William Smallwood (1831-1897)"
  style =	"Romantic"
piece = "            Allegretto"

  mutopiainstrument = "Piano"
  mutopiatitle =      "The Harebell"
  mutopiacomposer =   "SmallwoodW"
  mutopiasource =     "Century Music Publishing Co. c.1916"
  mutopialicense =    "Public Domain"

 footer = "Mutopia-2016/12/09-2156"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}
#(set-global-staff-size 26)

\paper {
systems-per-page = 5
max-systems-per-page = 5
 }


\version "2.19.49"

voiceone =  {
  \key f \major
  \time 3/8
  \clef "treble"

  c''8. d''16 c''8    | % bar 1
   a'' g'' f'' 		|		% bar 2			
    a'4 d''8 |    % bar 3
c''4. 		|		% bar 4	

   c''8 g'8 a'8    | % bar 5
  bes'8 d'8 e'8    | % bar 6
	   f'4.    | % bar 7
a'4.|	% bar 8  
 
c''8. d''16 c''8    | % bar 9
   a'' g'' f'' 		|		% bar 10			
    a'4 d''8 |    % bar 11
c''4. 		|		% bar 12	

   c''8 g'8 a'8    | % bar 13
  bes'8 d'8 e'8    | % bar 14
f'4 a'8 | % bar 15
f'4. |  % bar 16

\bar "||" 

bes'4 a'8 | % bar 17
g'8 d''8 c''8 |  % bar 18
c''4 f'8 |  % bar 19
a'4.  % bar 20

bes'4 a'8 |
g'8 d''8 c''8 |
c''4. |
a'4. |  % bar 24

c''8. d''16 c''8    | % bar 25
   a'' g'' f'' 		|		% bar 26			
    a'4 d''8 |    % bar 27
c''4. 		|		% bar 28

   c''8 g'8 a'8    | % bar 29
  bes'8 d'8 e'8    | % bar 30
f'4 a'8 | 
f'4. |
\bar "||"

g'4 c''8 |  % bar 33
e''8 d''8 c''8 |  
c''4 b'8 |
d''4. |  % bar 36

g'4 d''8 |
f''8 e''8 d''8 |
d''4 c''8  |
e''4. |% bar 40

g'4 c''8 |
e''8 d''8 c''8 |
c''4 b'8 |
d''4. | % bar 44

g'4 d''8 |
f''8 e''8 d''8 |
c''4 e''8 |
c''4.  | 

\bar "||"

c''8. d''16 c''8    | % bar 1
   a'' g'' f'' 		|		% bar 2			
    a'4 d''8 |    % bar 3
c''4. 		|		% bar 4	

   c''8 g'8 a'8    | % bar 5
  bes'8 d'8 e'8    | % bar 6
	   f'4.    | % bar 7
a'4.|	% bar 8  
 
c''8. d''16 c''8    | % bar 1
   a'' g'' f'' 		|		% bar 2			
    a'4 d''8 |    % bar 3
c''4. 		|		% bar 4	

   c''8 g'8 a'8    | % bar 5
  bes'8 d'8 e'8    | % bar 6
f'4 a'8 |
f'4. |

\bar "||"

bes'4 a'8 | % bar 17
g'8 d''8 c''8 |  % bar 18
c''4 f'8 |  % bar 19
a'4.  % bar 20

bes'4 a'8 |
g'8 d''8 c''8 |
c''4. |
a'4. |  % bar 24

c''8. d''16 c''8    | % bar 25
   a'' g'' f'' 		|		% bar 26			
    a'4 d''8 |    % bar 27
c''4. 		|		% bar 28

   c''8 g'8 a'8    | % bar 29
  bes'8 d'8 e'8    | % bar 30
f'4 a'8 | 
f'4. |
\bar "|."\bar "|." 

}

 
voicetwo =  {
  \key f \major
  \time 3/8
  \clef "bass"

  f8 a8 c'8 |								% bar 1
f8 a8 c'8 |								% bar 2
f8 a8 c'8 |								% bar 3
f8 a8 c'8 |								% bar 4
c8 g8 bes |								% bar 5
c8 g8 bes |							% bar 6
f8 a8 c'8 |								% bar 7
f8 a8 c'8 |								% bar 8
f8 a8 c'8 |							% bar 9
f8 a8 c'8 |								% bar 10
f8 a8 c'8 |							% bar 11
f8 a8 c'8 |								% bar 12
	

c8 g8 bes |								% bar 13
c8 g8 bes |								% bar 14
f8 a8 c'8 |								% bar 15
<f a>4. |		                     	% bar 16
c8 g8 bes |								% bar 17
c8 g8 bes |							% bar 18
f8 a8 c'8 |								% bar 19
f8 a8 c'8 |	

c8 g8 bes |								% bar 21
c8 g8 bes |							% bar 22
f8 a8 c'8 |								% bar 23
f8 a8 c'8 |	
f8 a8 c'8 |								% bar 25
f8 a8 c'8 |	

f8 a8 c'8 |								% bar 27
f8 a8 c'8 |
c8 g8 bes |								% bar 29
c8 g8 bes |							% bar 30
f8 a8 c'8 |								% bar 31
<f a>4. |	

c8 e8 g8 |  % bar 33
c8 e8 g8 |% bar 34
d8 f8 g8 |% bar 35
b,8 f8 g8 |% bar 36



g,8 d8 g8 |% bar 37
g,8 d8 g8 |% bar 38
c8 e8 g8 |% bar 39
c8 e8 g8 |% bar 40

c8 e8 g8 |% bar 41
c8 e8 g8 |
d8 f8 g8 |
b, f g |% bar 44
g,8 d8 g8 |
g,8 d8 g8 |
c e g |
<c e>4. % bar 48
\bar "||"


f8 a8 c'8 |								% bar 1
f8 a8 c'8 |								% bar 2
f8 a8 c'8 |								% bar 3
f8 a8 c'8 |								% bar 4
c8 g8 bes |								% bar 5
c8 g8 bes |							% bar 6
f8 a8 c'8 |								% bar 7
f8 a8 c'8 |								% bar 8

f8 a8 c'8 |								% bar 1
f8 a8 c'8 |								% bar 2
f8 a8 c'8 |								% bar 3
f8 a8 c'8 |								% bar 4
c8 g8 bes |								% bar 5
c8 g8 bes |							% bar 6
f8 a8 c'8 |								% bar 7
<f a>4.
\bar "||"

c8 g8 bes |								% bar 5
c8 g8 bes |							% bar 6
f8 a8 c'8 |								% bar 7
f8 a8 c'8 |								% bar 8

c8 g8 bes |								% bar 5
c8 g8 bes |							% bar 6
f8 a8 c'8 |								% bar 7
f8 a8 c'8 |								% bar 8

f8 a8 c'8 |								% bar 1
f8 a8 c'8 |								% bar 2
f8 a8 c'8 |								% bar 3
f8 a8 c'8 |								% bar 4
c8 g8 bes |								% bar 5
c8 g8 bes |							% bar 6
f8 a8 c'8 |								% bar 7
<f a>4.
\bar "|."\bar "|." 
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
 \midi { \tempo 4=100   }
  \layout { }
}
  



