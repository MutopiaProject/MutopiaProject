% This file prints Bach BWV 827, movement 3. Courante

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

upper = \relative c''
{
  \clef treble 
  \key a \minor
  \time 3/4

  \repeat volta 2
  {
    \partial 4 r16 d c b              	    |
    c8. e16  a8. e16  b'8. d,16       	    | % 1
    c16 e fs gs  a8. e16  b'8. d,16   	    | % 2
    c16 a b c  d e f e  d c b a       	    | % 3
    gs16 a b gs  e2 ~                 	    | % 4
    e16 d c b  c a c e  a gs fs e     	    | % 5
    c'16 b a g!  f! d f a  d cs b a   	    | % 6
    f'16 e d c!  b g b d  g fs e d    	    | % 7
    b'16 a g f!  e c e g  c b a g      	    | % 8
    a8. d,16  e d cs d  e d cs d      	    | % 9
    g8. b,16  c2 ~                    	    | % 10
    c8. b16  c b a b  c b a b         	    | % 11
    e8. gs,16  a2 ~                   	    | % 12
    a16 d e f  e d c b  a gs a b      	    | % 13
    e,16 b' gs f!  e c' a f  e d' b f 	    | % 14
    e16 c' a f  e b' gs f  e c' a f   	    | % 15
    e16 d' b f  e c' a f  e b' gs f   	    | % 16
    e8 c'16 d d4. \trill c16 d        	    | % 17
    e4 ~  e16 d c b  c e c a          	    | % 18
    gs16 b gs e  d f e d  c e c a     	    | % 19
    << { \voiceOne   e'2 } \\
       { \voiceThree b 2 } \\
       { \voiceFive  gs2 } >>

  }

  \repeat volta 2
  {
    r16 b' c a      	      	   	    | % 20
    gs8. e16  b'8. d,16  e8. b16      	    | % 21
    c16 e f d  e8. a16  gs8. d'16     	    | % 22
    c16 e a g  f e d c  b a gs fs     	    | % 23
    e16 d' c b  c2 ~                  	    | % 24
    c16 b a gs  a f a c  f e d c      	    | % 25
    d16 c b a  b g b d  g f e d       	    | % 26
    e16 d c b  c a c e  a g f e       	    | % 27
    d16 c b a  g b c d  c b a g       	    | % 28
    c8. f,16  g f e f  g f e f        	    | % 29
    b8. d,16  e2 ~                    	    | % 30
    e8. d16  e d c d  e d c d         	    | % 31
    g8. b,16  c2 ~                     	    | % 32
    c16 f g a  g f e d  c b c d       	    | % 33
    g,8. b16  c8. g16  d'8. g,16      	    | % 34
    e'8. g,16  d'8. g,16  e'8. g,16   	    | % 35
    f'8. g,16  e'8. g,16  f'8. g,16   	    | % 36
    g'16 e f g  a f e d  b' g a b     	    | % 37
    c16 a g f  d' b c d  e c b a      	    | % 38
    f'16 d e f  g e d c  a' f g a     	    | % 39
    b,4 ~  b16 g a b  c d e f         	    | % 40
    g16 f a g  f e d c  e d c b       	    | % 41
    c4 ~  c16 g c d  e c d e          	    | % 42
    a,16 cs e g  bf8. cs,16  d8. e16   	    | % 43
    f4 ~  f16 a, d e  f d e f         	    | % 44
    b,16 ds fs a  c8. ds,16  e8. fs16  	    | % 45
    g4. fs16 gs  a gs! fs gs          	    | % 46
    a8. d,16  cs d e f  g f g e       	    | % 47
    f16 d e f  e c d e  d b c d       	    | % 48
    c16 a gs a  d e f e  d c b a      	    | % 49
    gs16 fs gs fs  e4 ~  e16 d' c b   	    | % 50
    c16 e gs a  b, d fs g  a, c e f   	    | % 51
    gs, b ds e  fs, a ds! e  gs,! b d b	    | % 52
    c16 a f e  b' gs e d  a' fs ds c! 	    | % 53
    b16 a' gs fs  e gs b d  c8. \prall b16  | % 54
    e8. b16  c8. a16  e8. gs16              | % 55
    a2
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
    \partial 4 r4                                |
    a,8 r c r e r              	       		 | % 1
    a8 r c' r gs r             	       		 | % 2
    a8. e'16  f'8. gs16  a8. f16       		 | % 3
    e4 ~  e16 gs b gs  e gs d gs       		 | % 4
    c8. e16  a,8. b,16  c8. e16        		 | % 5
    a,8. a16  d8. e16  f8. a16         		 | % 6
    d8. d'16  g8. a16  b8. d'16        		 | % 7
    g8. b16  c'8. d'16  e'8. c'16      		 | % 8
    f'8. f16  f'8. f16  f'4 ~          		 | % 9
    f'16 d' e' f'  e' d' c' b  a g f e 		 | % 10
    d8. d'16  d8. d'16  d4 ~           		 | % 11
    d16 b, c d  c b, a, g, f, e, d, c, 		 | % 12
    d,8. b,16  c8. e,16  f,8. d16      		 | % 13
    e4 ~  e8. a16  gs8. d'16           		 | % 14
    c'4  r8 r16 b16  c'8. a16          		 | % 15
    gs4  r8 r16 a16  b8. gs16          		 | % 16
    a8. g!16  f4.  e16 f               		 | % 17
    e16 gs b gs  e2 ~                  		 | % 18
    e16 gs b gs << { r8 r16 gs!16  a8. fs16 } \\
		   { e2 ~                   } >> | % 19
    << { s4 e,4 } \\
       { e4 s 4 } >>

  }

  \repeat volta 2
  {
    r4    	       	       		      	 | % 20
    e,8 r gs, r b, r 	       	       	      	 | % 21
    e8 r gs r b r    	       	       	      	 | % 22
    e'8. a16  d'8. f'16  gs4 ~ 	       	      	 | % 23
    gs16 e fs gs  a b c' b  a c' g c'  	      	 | % 24
    f!4 ~  f8. e16  d8. f16            	      	 | % 25
    b,8. d16  g8. f16  e8. g16         	      	 | % 26
    c8. e16  a8. g16  f4 ~             	      	 | % 27
    f16 a b c'  b g a b  e g f e       	      	 | % 28
    a8. a,16  a8. a,16  a4 ~           	      	 | % 29
    a16 f g a  g f e d  c b, a, g,     	      	 | % 30
    f,8. f16  f,8. f16  f,4 ~          	      	 | % 31
    f,16 d e f  e d c b,  a, g, f, e,  	      	 | % 32
    d,8. c16  b,8. f16  e8. f16        	      	 | % 33
    b,16 f e d  e c d e  b, d c b,     	      	 | % 34
    c16 a, b, c  b, f e d  c a, b, c   	      	 | % 35
    d16 f e d  c e d c  b, a, g, f,    	      	 | % 36
    e,8. e16  f8. f,16  g,8. g16       	      	 | % 37
    a8. a,16  b,8. b16  c'8. c16       	      	 | % 38
    d8. d'16  e'8. e16  f8. f'16       	      	 | % 39
    g8. f'16  e'8. g16  f8. d'16       	      	 | % 40
    c'8. e16  a8. f16  g8. g,16        	      	 | % 41
    c16 c, e, g,  c4 ~  c16 e f g      	      	 | % 42
    cs4 ~  cs16 e f g  f e d cs        	      	 | % 43
    d16 d, f, a,  d4 ~  d16 f g a      	      	 | % 44
    ds4 ~  ds16 fs g a  g fs e ds!     	      	 | % 45
    e16 e, g, b,  e4 ~  e16 c d e      	      	 | % 46
    f16 e f g  a b cs' d'  e'8. a16    	      	 | % 47
    d'8. a16  c'8. a16  b8. gs16       	      	 | % 48
    a8. c'16  f8. a16  f8. d16         	      	 | % 49
    e4 ~  e8 d16 c  b, gs, a, b,       	      	 | % 50
    e,8. e16  e,8. e16  e,8. e16       	      	 | % 51
    e,8. e16  e,8. e16  e,8. e16       	      	 | % 52
    e,8. e16  e,8. e16  e,8. e16       	      	 | % 53
    e,4 ~  e,16 c' b a  gs fs e d      	      	 | % 54
    c16 b, a, gs,  a, b, c d  e8. e,16 	      	 | % 55
    a,2
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

  \header { piece = "3. Courante" }

  \midi   
  {
  }
}
