% This file prints Bach BWV 827, movement 4. Sarabande

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

voiceFive = #(context-spec-music (make-voice-props-set 4) 'Voice)

ttt = { \set tupletSpannerDuration = #(ly:make-moment 1 8) }

upper = \relative c''
{
  \clef treble 
  \key a \minor
  \time 3/4

  \repeat volta 2
  {
    \partial 8*3 << { a8 gs \prall a } \\
		    { r8 r4          } >> |
    
    << { e8[ \times 2/3 { f16 e d] }  e8 e   e e } \\
       { r4                           r8 c8  b c } >> | % 1

    << { c'8 b   r a   gs a } \\
       { a 8 gs  r c,  b  c } >> | % 2

    << { d'8 c   r a   gs a } \\
       { a 8 a   r c,  b  c } >> | % 3

    << { f'8 e   r e   e e  } \\
       { a,8 gs  r gs  a b  } >> | % 4

    << { e8[  \times 2/3 { f16 e d] }  e8[ \times 2/3 { g16 f e] }   f8[ \times 2/3 { a16 g f] } } \\
       { c2. ~ 									                 } >> | % 5

    << { g'2. ~ 							    } \\
       { c,8[ \times 2/3 { d16 c b] }  c8[ \times 2/3 { e16 d c] }  g'8 bf, } >> | % 6

    << { g'8[ \times 2/3 { g16 f e] }  f8[ \times 2/3 { f16 e d] }  e8[ \times 2/3 { e16 d c] } } \\
       { a4                            r8               b!          c4                          } >> | % 7

    << { e 8 d  r c'  b c } \\
       { c,8 b  r e   d e } >> | % 8

    << { f8[ \times 2/3 { g16 f e] }  f8[ \set tupletSpannerDuration = #(ly:make-moment 1 8)
	                                  \times 2/3 { a16 g f]  g[ f e]  f[ e d] } } \\
       { b4                           r4                         r4                 } >> | % 9

    << { e 8[ \times 2/3 { f16 e d] }  e8 c'  b c } \\
       { c,4                           r8 e   d e } >> | % 10

    << { d8[ \times 2/3 { f16 e d]  g[ f e]  f[ e d]  e[ d c]  d[ c b] } } \\
       { b4                         r8       a        g        f         } >> | % 11

    << { c'4. } \\
       { e,4. } >>
  }

  \repeat volta 2
  {
    << { r8 r4 } \\
       { r8 r4 } >> | % 12

    r4  r8 << {                   g'8        f        e         } \\
	      { \ttt \times 2/3 { e16[ d c]  d[ c b]  c[ b a] } } >> | % 13

    << {              d8[         fs]        g  r  r4 } \\
       { \times 2/3 { b,16[ a g]  c[ b a] }  b8 r  r4 } >> | % 14

    << { r4  r8 \ttt \times 2/3 { f'16[ e d]  e[d cs]  d[c b] } } \\
       { r4  r8                   a           g        f        } >> | % 15

    << { \times 2/3 { cs'16[ b a]  d[ cs b] }  cs8               r8          r4                  } \\
       {              e , 8[       gs]         a 8[ \times 2/3 { a16 b cs!]  cs[ d e]  e[ f g] } } >> | % 16

    << {              r4                     r8 \times 2/3 { d16[ e f]  f[ g a]  a[ bf c] } } \\
       { \times 2/3 { f,16[ e f]  g[ f e] }  f2 ~ 					    } >> | % 17

    << { \times 2/3 { bf16[ a bf]  c[ bf a] }  bf!8 \times 2/3 { c,16[ d e]  e[ f g]  g[ a bf!] } } \\
       {              f4                       e2 ~						  } >> % 18

    << { \times 2/3 { a16[ g a]  bf[ a g] }  a8 d, e cs } \\
       {              e4                     d8 f, g e  } >> | % 19

    << { d'4. f 8 f f } \\
       { f,4. d'8 d d } >> | % 20

    << { f4. f8 \times 2/3 { e16[ d e]  f[ e d] } } \\
       { d4. d8              c          b         } >> | % 21

    << { e8[ d16 e]  c8 a' gs a } \\
       { c,4         r8 s8 s4   } >> | % 22

    << { d8[ \times 2/3 { e16 d c]  d[ c b]  c[ b a]  b[ a gs]  a[ gs fs] } } \\
       { s4.								     } >> | % 23

    << { \times 2/3 { gs16[ a b]  a[ gs fs] }  e8 c'  b   c } \\
       {              s8          r8           r8 a   gs! a } >> | % 24

    << { d 8[ \times 2/3 { c16 d e] }  d8[ \times 2/3 { b16 c d]  c[ d e]  d[ e f] } } \\
       { b,4                           r8               gs        a        b         } >> | % 25

    << { \times 2/3 { e 16[ d e]  f[ e d] }  e8 a   gs a } \\
       {              gs,4                   r8 e'  d  c } >> | % 26

    << { d8[ \times 2/3 { f16 e d]  e[ d c]  d[ c b]  c[ b a]  b[ a gs] } } \\
       { b4                         r8       f        e        d          } >> | % 27

    << { a'4. } \\
       { c,4. } >> % 28
  }

  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.ufermata" }
}

lower =
{
  \clef bass
  \key a \minor
  \time 3/4

  \repeat volta 2
  {
    \partial 8*3 r8 r4 			      	|
    r4  r8 a  gs a   			      	| % 1
    e8[ \times 2/3 { f16 e d] }  e8 e,  e,  e,  | % 2
    e8[ \times 2/3 { f16 e d] }  e8 e,  e,  e,  | % 3
    e8[ \times 2/3 { f16 e d] }  e8 e'  fs' gs' | % 4
    a'8 a   a  a'  a' a                         | % 5
    e'8 e   e  e'  e' e                         | % 6
    f 8 e   d  g   c' f                         | % 7
    g 8 g,  g, g   g  g,			| % 8
    g 8 g,  g, g   g  g,			| % 9
    g 8 g,  g, g   g  g,			| % 10
    f 8 d   e  c   g  g,			| % 11
    c 8 g,  c,
  }

  \repeat volta 2
  {
    c' b c' 					 	     	     | % 12
    g8[ \times 2/3 { a16 g fs] }  g8 g,  g,  g,  	     	     | % 13
    g,4  r8 d'  cs' d'                           	     	     | % 14
    a8[ \times 2/3 { b16 a gs] }  a8 a,  a,  a,  	     	     | % 15
    a,4                           r8 a   g   a 	 	     	     | % 16
    d8[ \times 2/3 { e16 d cs] }  d8 d'  cs' d'  	     	     | % 17
    g8[ \times 2/3 { a16 g f ] }  g8 c'  bf  c'  	     	     | % 18
    f8[ \times 2/3 { g16 f e ] }  f8 bf  g   a   	     	     | % 19
    d8[ a, d,] \ttt \times 2/3 { a16[ g f]  f[ e d]  d[ c b,] }      | % 20
    \times 2/3 { b,16[ a, g,]  g,[ a, b,]  b,[ c d]  d[ e f]}  g8 g, | % 21

    \times 2/3 { c16[ d e]  e[ f g]  g[ a g] } << { e'8 d' c' } \\
						  { c'8 b  a  } >>   | % 22
    << { b 8 a  b  e' d' c' } \\
       { gs8 fs gs a  f  d  } >>				     | % 23

    << { b8 s8 s2        } \\
       { e8 e, e, e e e, } >>					     | % 24

    e8  e, e, e  e e,						     | % 25
    d8  d, d, c' b a						     | % 26
    gs8 e  c  a, e e,						     | % 27
    a,8 e  a							       % 28
  }

  \override Staff.RehearsalMark #'direction = #-1
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.dfermata" }
}

\score 
{
  \new PianoStaff
  <<
    \new Staff = upper \upper
    \new Staff = lower \lower
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

  \header { piece = "4. Sarabande" }

  \midi   
  {
  }
}
