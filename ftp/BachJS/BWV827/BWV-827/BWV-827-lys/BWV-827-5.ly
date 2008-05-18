% This file prints Bach BWV 827, movement 5. Menuet

\version "2.10.33"

\header
{
  title    	    = "Keyboard partita in A minor"
  composer 	    = "Johann Sebastian Bach"
  opus     	    = "BWV 827"
  mutopiacomposer   = "BachJS"
  mutopiainstrument = "Piano"
  source	    = "Bach-Gesellschaft Ausgabe 1851-1899 Band 43 (1894)"
  sourceurl         = "http://imslp.org/wiki/Notebook_for_Anna_Magdalena_Bach_(Bach,_Johann_Sebastian)"
  sourceurltwo      = "http://world.std.com/~swmcd/steven/music/bach/Bach-AnnaMagdalena1725.pdf"
  style	            = "Baroque"
  copyright	    = "Public Domain"
  maintainer	    = "Steven McDougall"
  maintainerEmail   = "swmcd@world.std.com"
  maintainerWeb     = "http://world.std.com/~swmcd/steven/"
 footer = "Mutopia-2008/05/18-1080"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

% Acknowledgments
%
% Wolfgang Suppan <wsu@chello.at>

\include "english.ly"

bc = % bass cleff
{
  \change Staff = lower
  \stemUp
}

tc = % treble cleff
{
  \change Staff = upper
  \stemNeutral
}

voiceFive = #(context-spec-music (make-voice-props-set 4) 'Voice)

\score 
{
  \new PianoStaff
  <<
    \new Staff = upper
    \relative c''
    {
      \clef treble 
      \key a \minor
      \time 3/4
      
      \repeat volta 2
      {
	a8[ b]  b[ \prall a16 b]  c8[ gs] 	     	     | % 1
	a4  e   a                          	     	     | % 2
	b8[ c]  c8[ \prall b16 c]  d8[ a] 	     	     | % 3
	b4  e   d                          	     	     | % 4
	d16 c b c  << { f4          e       } \\
		      { r16 a, g f  r g f e } \\
		      { c'4         b       } >>     	     | % 5
	
	<< { b16 a     gs a       d4  c                } \\
	   { f,8   \bc f,     \tc r16 f' e d   r e d c } \\
	   { s4                   a'           g       }  >> | % 6

	<< { r16 b a gs  a b c d  e d e f } \\
	   { d,4         c8[ b]   c[  d]  } \\
	   { f4          e        a8  r   } >>               | % 7

	<< { gs4.   fs8 e4      } \\
	   { e8 f e d   c \bc b } >>                         | % 8

	<< { c'2. ~                       } \\
	   { r8 e,16 f  f8. e32 f  g8 c,  } >>               | % 9

	<< { c'16 c b c  d c b c  a' c, b c } \\
	   { a4          r        r         } >>             | % 10

	<< { d2. ~                       } \\
	   { r8 a16 b  b8. a32 b  c8  a  } >>                | % 11

	<< { d16 d c d  e d c d  b' d, c d } \\
	   { b4         r        r         } >>              | % 12

	<< { e4      fs8 gs  a b } \\
	   { r8 gs,  a   b   c d } >>                        | % 13

	<< { c'16 a g! a    b g fs g  a fs e fs } \\
	   { e8[    fs,] ~  fs[ e] ~  e[   ds]  } >>         | % 14

	<< { g'16 e ds e  fs4  ds! } \\
	   { e,8    s     r c'4 b8 } >>                      | % 15
      }

      \alternative
      {
	{
	  << { e2.       } \\
	     { a,4( gs2) } >>                                | % 16
	}

	{
	  << { e'2.      } \\
	     { a,4( gs2) } >>                                | % 17
	}
      }
	   
      \repeat volta 2
      {
	b8[ c]  c[ \prall b16 c]  d8 b               	     | % 18
	f8 e f d e b'                                	     | % 19

	<< { cs8[ d]  d[ \prall cs16 d]  e8[ cs] } \\
	   { e,8[ f]  f[        e16  f]  g8  r   } >> 	     | % 20

	<< { bf8  a  bf g a g' } \\
	   { cs,,4   cs   cs   } \\
	   { e4      e    e    } >>                  	     | % 21

	<< { f'16 d   cs d    bf'4          a         } \\
	   { d,,8 \bc d, \tc  r16 d'' c bf  r c bf! a } \\
	   { s4               f'            e         } >>   | % 22

	<< { e16 d cs d  g4           f       } \\
	   { bf,8  bf,   r16 bf' a g  r a g f } \\
	   { s4          d'           c       } >>           | % 23

	<< { f8    e      f  e  d cs } \\
	   { g \bc g, \tc a' g  f e  } \\
	   { bf'4         s     s    } >>                    | % 24

	<< { d2.  } \\
	   { f,2. } >>                                       | % 25

	<<            {           f'2. ~               }
	   \new Voice { \voiceTwo r8 d a f \bc d \tc r } >>  | % 26

	f'16 b, a b  c b a b  d b a b                        | % 27

	<<            {           e2. ~                } 
	   \new Voice { \voiceTwo r8 c g e \bc c \tc r } >>  | % 28

	e'16 a, gs  a  	 b   a  gs a    c   a  gs a          | % 29
	d 16 e  f8  ~  	 f16 e  d  c    d   c  b  a          | % 30
	b 16 c  d8  ~  	 d16 c  b  a    b   a  gs fs         | % 31
	e 16 gs fs  e  	 a   c  b  a    d   c  b  a          | % 32
	e' 8    d16 c  	 b   a  gs fs   e   d  c  b          | % 33
	r 16 e  d   e    fs  e  d  e    g   e  d  e          | % 34
	r 16 fs e   fs   gs  fs e  fs   a   fs e  fs         | % 35
	r 16 gs fs  gs   a   gs fs gs   b   gs fs gs         | % 36 
	r 16 a  gs  a    b   a  gs a    cs  a  gs a          | % 37
	d 16 a  gs  a    e'  a, gs a    f'4 ~                | % 38
	f 16 d  c   d    e   c  b  c    d   b  a  b          | % 39

	c 16 a  gs  a    << { b4    gs    } \\
			    { r8 f4    e8 } >>               | % 40

	<< { a2.    } \\
	   { d,4 c2 } >>                                     | % 41
      }
      
      \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
      \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
      \mark \markup { \musicglyph #"scripts.ufermata" }
    }
	 
    \new Staff = lower
    {
      \clef bass
      \key a \minor
      \time 3/4
      
      \repeat volta 2
      {
	<< \new Voice { \voiceOne   a 4 }
	   \new Voice { \voiceTwo   a,4 }
	   \new Voice { \voiceThree e 4 } 
	   \new Voice { \voiceFive  c 4 } >> r r    | % 1 

	a8[ b]   b [ \prall a16 b ]  c'8[ a] 	    | % 2
	gs4      a                   f       	    | % 3
	e8[ fs]  fs[ \prall e16 fs]  gs8[ e] 	    | % 4
	a8 a,    s4                  s4      	    | % 5
	\skip 4*3                            	    | % 6
	s4       s4                  << { a4 } \\
					{ f4 } >>   | % 7
	\skip 4*3                            	    | % 8
	a4  a, e                                    | % 9
	f4  a  g                                    | % 10
	fs4 e  d                                    | % 11
	g4  b  a                                    | % 12
	gs16 f' e' d'  c' e' d' c'  b d' c' b       | % 13
	a4  g  fs                                   | % 14
	e8[ fs16 g]  a,4  b,                        | % 15
      }
      
      \alternative
      {
	{
	  e,8 b, e d c b,                           | % 16
	}

	{
	  e,4 b, e                                  | % 17
	}
      }

      \repeat volta 2
      {
	<< { gs8[ a]  a[ gs16 a]  b8 r } \\
	   { e2                   r4   } >>         | % 18

	<< { b 4 b  b  } \\
	   { gs4 gs gs } >>                         | % 19

	g!2 r4                                      | % 20
	\skip 4*3                                   | % 21
	\skip 4*3                                   | % 22
	\skip 4*3                                   | % 23
	s  4          a             a,              | % 24
	d  4          a,            d,              | % 25
	r 16 d e f    g a b cs'     d' e' f' d'     | % 26
	g' 4          g             r               | % 27
	r 16 c d e    f g a b       c' d' e' c'     | % 28
	f' 4          f             r               | % 29
	r  8   b,     c     d       e     fs        | % 30
	gs 8   e      fs    gs      a     b         | % 31
	c' 8   b      c'    d'      gs    a         | % 32
	gs16 a b8 ~   b16 a gs fs   e  d  c b,      | % 33
	c  8   c'     b     c       cs    a         | % 34
	d  8   d'     c'    d       ds    b         | % 35
	e  8   e'     d'    e       f     d'        | % 36
	c' 8   b      a     f'      g     e'        | % 37

	f  8   d'     e     cs'     << { r8 d' } \\
				       { d4 ~  } >> | % 38

	<< { gs8 b4   a    gs8 } \\
	   { d4     c   b,     } >>                 | % 39

	<< { a8  s      } \\
	   { a,8 b,16 c } >> d,4 e,                 | % 40

	<< { r4 e a } \\
	   { a,2.   } >>                            | % 41
      }

      \override Staff.RehearsalMark #'direction = #-1
      \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
      \mark \markup { \musicglyph #"scripts.dfermata" }
    }
  >>
  
  \layout
  {
    \context 
    {
      \Score
      \remove "Mark_engraver"
    }
    \context 
    {
      \Staff
      \consists "Mark_engraver"
    }
  } 

  \header { piece = "5. Menuet" }

  \midi   
  {
  }
}
