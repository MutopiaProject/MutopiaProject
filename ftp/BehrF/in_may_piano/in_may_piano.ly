\header {
  enteredby = 	"John Mamoun"
  maintainer = 	"John Mamoun"
  maintainerEmail = "mamounjo@gmail.com"
  title = 	"In May"
composer =	"Franz Behr (1837-1898)"
  style =	"Romantic"
piece = "            Andante"

  mutopiainstrument = "Harpsichord, Piano"
  mutopiatitle =      "In May"
  mutopiacomposer =   "BehrF"
  mutopiasource =     "Thiebes-Stierlin Music Co. c.1903"
  mutopialicense =    "Public Domain"

 footer = "Mutopia-2016/12/07-2155"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {print-page-number = ##f
systems-per-page = 7
max-systems-per-page = 7
 }


\version "2.19.49"

voiceone =  {
  \key c \major
  \time 3/4
  \clef "treble"
  g'' e'' c''    | % bar 1
   d''2. 		|		% bar 2			
    g''4 e'' c'' |    % bar 3
d''2. 		|		% bar 4	
   c''4 d'' e''    | % bar 5
   f'' e'' d''    | % bar 6
	   e'' d'' c''    | % bar 7
d''2.|	\break \break \break	% bar 8  
 g''4 e'' c''    | % bar 9
   d''2. 		|		% bar 10			
    g''4 e'' c'' |    % bar 11
d''2. 		|		% bar 12
   c''4 d'' e''    | % bar 13
   f'' g'' f''    | % bar 14
	   e''2 d''4    | % bar 15
c''2. |		% bar 16
d''4 d'' d'' |		% bar 17
d'' e'' f'' |		% bar 18
e'' g'' e'' |		% bar 19
c''2. |		% bar 20
d''4 d'' d'' |		% bar 21
d'' e'' f'' |		% bar 22
e'' g'' e'' |		% bar 23
c''2. |		% bar 24
 g''4 e'' c''    | % bar 25
   d''2. 		|		% bar 26			
    g''4 e'' c'' |    % bar 27
d''2. 		|		% bar 28
   c''4 d'' e''    | % bar 29
   f'' g'' f''    | % bar 30
	  e''2 d''4    | % bar 31
c''2.
\bar "||"
}

 
voicetwo =  {
  \key c \major
  \time 3/4
  \clef "treble"

  c'4 e' g' |								% bar 1
b f' g' |								% bar 2
c' e' g' |								% bar 3
b f' g' |								% bar 4
c'4 e' g' |								% bar 5
b f' g' |								% bar 6
c' e' g' |								% bar 7
b f' g' |								% bar 8
c'4 e' g' |								% bar 9
b f' g' |								% bar 10
c' e' g' |								% bar 11
b f' g' |								% bar 12
c'4 e' g' |								% bar 13
c' f' a' |								% bar 14
b f' g' |								% bar 15
c' e' g' |								% bar 16
b f' g' |		% bar 17
b f' g' |		% bar 18
c' e' g' |		% bar 19
c' e' g' |		% bar 20
b f' g' |		% bar 21
b f' g' |		% bar 22
c' e' g' |		% bar 23
c' e' g' |		% bar 24
c' e' g' |								% bar 25
b f' g' |								% bar 26
c' e' g' |								% bar 27
b f' g' |								% bar 28
c' e' g' |								% bar 29
c' f' a' |								% bar 30
b f' g' |								% bar 31
c'2.
\bar "||"
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
 \midi {    }
  \layout { }
}
  



