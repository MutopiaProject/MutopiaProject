% This file prints Bach BWV 827, movement 6. Gigue

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
}

tc = % treble cleff
{
  \change Staff = upper
}

bcu = % bass cleff, stem up
{
  \change Staff = lower
  \stemUp
}

tcn = % treble cleff, stem neutral
{
  \change Staff = upper
  \stemNeutral
}

sd = { \stemDown    }
su = { \stemUp      }
sn = { \stemNeutral }


\score 
{
  \new PianoStaff
  <<
    \new Staff = upper
    \relative c'
    {
      \clef treble 
      \key a \minor
      \time 12/8
      
      \repeat volta 2
      {
	\partial 8 e8 			        			   | 
	a,8 c e    a   gs a   b, d  e   a  gs a 			   | % 1
	c,8 e gs   a   b  c   d, c' a   bf d  a 			   | % 2

	<< {     gs4. ~         gs8 fs g       a4. ~         a8 b  c  } \\
	   { \bc e,, gs b   \tc e   ds e   \bc fs, a b   \tc e  ds! e } >> | % 3

	<< {     b'4. ~          b8 ds e   c2. ~           } \\
	   { \bc g,!8 b \tc ds   e  fs g   a, g' e   f a e } >>            | % 4

	<< { c'8 b a   b   fs' a, ~   a   g fs   g4. ~  } \\
	   { ds4. ~    ds8 cs  ds     e4. ~      e8 b d } >>		   | % 5

	<< { g8 a g    a   e' g, ~   g f e   f4. ~  } \\
	   { cs4. ~    cs8 b  cs     d4. ~   d8 a c } >>		   | % 6

	<< { f8 f e    f d'       f, ~ f   e d    e d' e, } \\
	   { b4   c8   b4 \bc \su a8   gs4   b8   gs4.    } >>		   | % 7

	<< {         c'4. ~              c8 b c   d4. ~    d8 e f } \\
	   { \bc \su a,,4 \tc \sd gs'8   a4. ~    a4 gs8   b4. ~  } >>	   | % 8

	<< { e4. ~     e8 gs a   f2. ~ 		} \\
	   { b,4 e,8   c'4. ~    c4 cs8   d4 c8 } >>			   | % 9

	<< { f8 e d   e b' d,   c2. ~          } \\
	   { b2.                r8 a e   c e a } >>			   | % 10

	<< { c8 a fs   a fs d   b'2. ~         } \\
	   { d,8 r r   r4   r8  r8 g d   b d g } >>			   | % 11

	<< { b8 g e   g e c   a'2. ~         } \\
	   { c,8 r r  r4  r8  r8 e c   a c e } >>			   | % 12

	<< { a8  fs ds   fs ds b   g'4 e8   e'4. ~   } \\
	   { b,8 r  r    r4    r8  \override Tie #'staff-position = #'-5
	     			   g'4. ~   g8 fs! g } >>		   | % 13

	<< { e'4 ds8   fs4. ~   fs8 e fs  g4. ~    } \\
	   { a,4. ~    a8 b c   b4. ~     b8 ds! e } >>			   | % 14

	<< { g4 gs8   a c g   fs2. ~ 		 } \\
	   { c2. ~            c8 b a   b fs'! a, } >>			   | % 15

	<< { fs'8 e ds   e4 b8   e2. ~ 	  	  } \\
	   { g,2. ~              g8 a g   a e' g, } >>			   | % 16

	<< { e'8 d cs   d4 a8   d2. ~		 } \\
	   { f,2. ~             f8 g f   g d' f, } >>			   | % 17

	<< { d'8 c b   c4 gs8   a4. ~   a4 a8 } \\
	   { e2. ~              e4 a,8  d4. ~ } >>			   | % 18

	<< { d'2. ~             d8 b' gs   e  b e  } \\
	   { d,4 a'8   gs b a   b4    r8   r4   r8 } >>			   | % 19

	<< { a8 c e   a gs a   b, d e   a gs a } \\
	   { r4   r8  e,4.     f4   e8  d4.    } >>			   | % 20

	<< { c'8 e gs   a b c   d, c' a   bf d a } \\
	   { e,4   b8   c4  e8  a,4.      d4. ~  } >>			   | % 21

	<< { gs'8 b! gs                e b  d   c e c   a e g  } \\
	   { d8 \bc \su gs, b \tc \sd  e gs e   a4  r8  r4  r8 } >>	   | % 22

	<< { f8 a' f                   d a c   b d b   g d f  } \\
	   { \bc \su r8 f, a \tc \sd   d f d   g4  r8  r4  r8 } >>	   | % 23

	<< { e8 e'4 ~   e8 d4   e4. ~ e4  } \\
	   { r8 r c     a4 b8   a4. ~ gs4 } >>
      }

      \repeat volta 2
      {
	r8 							  	   | % 24 The source has just a single whole rest.
	r1. 								   | % 25
	r2.		      r4      r8   r  r   e			   | % 26			
	\skip 8*12							   | % 27
	\skip 8*12							   | % 28
	\skip 8*12							   | % 39
	\skip 8*12							   | % 30
	\skip 8*12							   | % 31
	\skip 8*12							   | % 32
	r 2.                  r 4     r8   r  r   b'			   | % 33

	e 8 b  gs   e ds e    d'! b   gs!  e  ds! e			   | % 34
	c'8 a  f    e gs a    f   d   b    gs e'  d			   | % 35
	c 8 e  a    c gs a    c   fs, g    c  e,  fs!			   | % 36
	b,8 d  g    b fs g    b   e,  fs   b  ds, e			   | % 37
	a,8 c  e    a e  fs   a   ds, e    a  cs, ds!			   | % 38
	g 8 e  b    g fs g    g'  e   d    cs b   cs			   | % 39
	fs8 d  a    s s  s    fs' d   cs   b  as  b			   | % 40
	\skip 8*9                          r8 r   fs''			   | % 41
	b 8 fs d    b as b    a'! fs  ds   b  as! b     		   | % 42
	g'8 e  c    b ds e    c   a   fs   << { r8  r b } \\
					      { ds, b' a}  >>		   | % 43

	<< { g8 r r   	r fs' g   gs4. ~ \prall gs8 fs! gs!  } \\
	   { e8 b g   	e ds e    d'! b gs      e   ds! e    } >>	   | % 44

	<< { a'4. ~     a8 b  c   d,4   f!8   	b,4     gs'8 } \\
	   { c,8 a f!   e  gs a   f   d b     	gs  e'  d    } >>	   | % 45
									         
	<< { a''2. ~              a 2. ~      	             } \\	         
	   { c,,4 r8   	r  b' c   cs4. ~ \prall	cs8 b   cs   } >>	   | % 46
									         
	<< { a'2.      	          g 2. ~      	             } \\	         
	   { d4. ~     	d8 e f    e 4. ~      	e 8 cs  e    } >>	   | % 47
									         
	<< { g4   e8   	f4. ~     f4    e8     	f 4. ~       } \\	         
	   { a,4. ~    	a4 cs8    d4. ~       	d 4     a 8  } >>	   | % 48

	<< { f'4 b8    	b4 d,8    d4    b8     	b 4     e 8  } \\
	   { d4  d8    	d4 b8     b4    gs8    	gs4     gs8  } >>	   | % 49

	<< { e'8 d c   	d c b     a4. ~       	a 4          } \\
	   { a4. ~     	a4  gs8   a   e d      	cs4          } >>	     % 50

      }
      
      \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
      \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
      \mark \markup { \musicglyph #"scripts.ufermata" }
    }
	 
    \new Staff = lower
    {
      \clef bass
      \key a \minor
      \time 12/8
      
      \repeat volta 2
      {
	\partial 8 r8 			      	           			 | 
	r1.           			                   			 | % 1 The source has just a single whole rest.
	r2.                          r4       r8  r   r  a 			 | % 2	 
	\skip 2*3			                   			 | % 3
	\skip 2*3			                   			 | % 4
	\skip 2*3			                   			 | % 5
	\skip 2*3			                   			 | % 6
	    r2.                      r4       r8  r   r  e 			 | % 7
	\sd a,8 c e    \sn a gs a    b,  d    e   a   gs a 			 | % 8
	c8   e  gs    a  b  c'   d   c'  a    bf  d'  a	   			 | % 9
	gs4     b!8   gs4   e8   a,  c   e    a   c'  a	   			 | % 10
	fs8  a  d'    d  fs a    g,  b,  d    g   b   g	   			 | % 11
	e8   g  c'    c  e  g    fs, a,  c    fs  a   fs   			 | % 12
	ds8  fs b     b, ds fs   e,  g,  b,   e   ds! e	   			 | % 13
	fs,8 a, b,    e  ds e    g,  b,  ds   e   fs  g	   			 | % 14
	a,8  g  e     f! a  e    ds4. ~       ds8 cs  ds!  			 | % 15
	e,8  g, b,    e  g  e    cs4. ~       cs8 b,  cs   			 | % 16
	d,8  f, a,    d  f  d    b,4. ~       b,8 a,  b,   			 | % 17
	c,8  e, g,    c  e  c    f,  a,  c    f   a   f    			 | % 18
	b,8  d  f     b  d' b    e   gs  b    e'  gs' e'   			 | % 19
	c'2.                     d'4     c'8  b4.          			 | % 20
	a4. ~         a4    g!8  f2.                       			 | % 21
	e4      r8    r4    r8   a,  c   e    a   c'  a    			 | % 22
	d4      r8    r4    r8   g,  b,  d    g   b   g    			 | % 23
	c4      a,8   f4    f,8  e,  gs, b,   e4
      }
      
      \repeat volta 2
      {
	b8									 | % 24
	e'8 b gs   e  ds e   d'!  b gs!   e   ds! e				 | % 25
	c'8 a f    e  gs a   f    d b,    gs, e   d				 | % 26

	<< { \tc a'8  e' c'   \bc a  gs a   \tc g'! e' cs'   \bc a   gs! a  } \\
	   { c4. ~                c8 b, c       cs4. ~           cs8 b,  cs } >> | % 27

	<< { \tc f'8 d' bf   \bc a \tc \sd cs' d'   \bc \su bf g e   cs a g } \\
	   {     d4. ~           d8        e   f            g, r r   a, r r } >> | % 28


	<< { f8  r  r    r4      r8   r8 fs g  	 b   d' f   } \\
	   { d,8 a  f    d   a,  c    b,2. ~           	    } >>		 | % 29
										       
	<< { e8  r  r    r4      r8   r8 e  f    a   c' e   } \\		       
	   { b,8 g  e    c   gs, b,   a,2. ~                } >>		 | % 30
										       
	<< { d8  r  r    r4      r8   r8 d  e    gs  b  d   } \\		       
	   { a,8 f  d    b,  fs, a,   gs,2.                 } >> 		 | % 31
										       
	<< { c8  e  f    a   c'  e    d  fs g    b   d' f   } \\		       
	   { a,4. ~      a,8 f,  a,   b,4. ~     b,8 g, b,  } >>		 | % 32
										       
	<< { e8  gs a    c'  e'  g    f  a  bf   d'  f' a   } \\		       
	   { c4. ~     	 c8  a,  cs   d2. ~       	    } >>		 | % 33
										       
	<< { gs4.      	 a ~          a          gs         } \\		       
	   { d4.       	 c	      b,	       	e   } >>		 | % 34
										       
	<< { a4.       	 r4      r8   r4    r8   b4. ~      } \\		       
	   { a,4.      	 c	      d	       	 e	    } >>		 | % 35
										       
	<< { b8  c  e    a   b   c'   d' a  b    fs  g  a   } \\		       
	   { a,4    r8   r4      r8   r2.		    } >>		 | % 36
										       
	<< { r8  b, d    g   a   b    c' g  a    e   fs g   } \\		       
	   { g,4    r8   r4      r8   r2.		    } >>		 | % 37
										       
	<< { r8  a, c    fs  g   a    b  fs g    ds  e  fs! } \\
	   { fs,4   r8   r4      r8   r2.		    } >>		 | % 38

	 e,8 g,  b,   e ds e   a, cs e   a gs a					 | % 39

	 d,8 fs, a, << { fs es fs } \\
		       { d  cs d  } >>   g, b, d   g fs! g			 | % 40

	<< { \tc e' 8 cs' \bc as   e  ds e    e'  cs' b     as! gs as } \\
	   {     cs,8 e,      g,   cs b, cs   fs, as, cs!   fs  es fs } >>	 | % 41

	<< { fs4.    r4    r8   b4.    r4      r8  } \\
	   { d 4. ~  d8 cs d    ds4. ~ ds8 cs! ds! } >>				 | % 42

	<< { b4.     r4    r8   s4.      s4.    } \\
	   { e4. ~   e8 fs g    a8 r r   b8 r r } >>				 | % 43

	e 8  r  r    r4 r8     	 r2.						 | % 44
	r 2.                   	 r4     r8    r  r   e'				 | % 45
	a'8  e' c'   a  gs  a  	 g'! e' cs'   a  gs! a				 | % 46
	f'8  d' bf   a  cs' d'   bf! g  e     cs a   g				 | % 47
	f 8  a  cs'  d' a   f    d   f  gs    a  f   d				 | % 48
	b,!8 d  gs   a, d   f    gs, b, d     f  e   d				 | % 49
	c 8  b, a,   e4     e,8  a,8 cs e     a4				   % 50
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

  \header { piece = "6. Gigue" }

  \midi   
  {
  }
}
