% This file prints Bach BWV 830, movement 1. Prelude

\version "2.10.33"

\header
{
  title    	    = "Keyboard partita in E minor"
  composer 	    = "Johann Sebastian Bach"
  opus     	    = "BWV 830"
  mutopiacomposer   = "BachJS"
  mutopiainstrument = "piano"
  source	    = "Bach-Gesellschaft Ausgabe 1851-1899 Band 43 (1894)"
  sourceurl         = "http://imslp.org/wiki/Notebook_for_Anna_Magdalena_Bach_(Bach,_Johann_Sebastian)"
  sourceurltwo      = "http://world.std.com/~swmcd/steven/music/bach/Bach-AnnaMagdalena1725.pdf"
  style	            = "Baroque"
  copyright	    = "Public Domain"
  maintainer	    = "Steven McDougall"
  maintainerEmail   = "swmcd@world.std.com"
  maintainerWeb     = "http://world.std.com/~swmcd/steven/"
 footer = "Mutopia-2008/07/30-1497"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "english.ly"

bc = % bass cleff
{
  \change Staff = lower
}

tc = % treble cleff
{
  \change Staff = upper
}

sd = { \stemDown    }
su = { \stemUp      }
sn = { \stemNeutral }

ntn  = { \once \override TupletNumber  #'transparent = ##t } % No Tuplet Number
ntb  = { \once \override TupletBracket #'transparent = ##t } % No Tuplet Bracket
ntnb = { \ntn \ntb }

ntbo = #(define-music-function (parser location vshift) (number?)
#{ 
  \once \override TupletBracket #'transparent = ##t                 % No Tuplet Bracket
  \once \override TupletNumber  #'extra-offset = #(cons 1 $vshift ) % Number Offset
#})

voiceFive  = #(context-spec-music (make-voice-props-set 4) 'Voice)
voiceSix   = #(context-spec-music (make-voice-props-set 5) 'Voice)
voiceSeven = #(context-spec-music (make-voice-props-set 6) 'Voice)
voiceNine  = #(context-spec-music (make-voice-props-set 8) 'Voice)

% Beam Count function
beams = #(define-music-function (parser location left right) (integer? integer?)
#{
\set stemLeftBeamCount  = #$left
\set stemRightBeamCount = #$right   
#})

% We shorten a few stems to keep them from running into dots and beams.
% Some of these problems are fixed in Lilypond 2.11
shortStem = #(define-music-function (parser location length) (number?)
#{
  \once \override Stem #'length = #$length
#})

longStem = #(define-music-function (parser location length) (number?)
#{
  \once \override Stem #'length = #$length
#})


upper = \relative e
{
  \clef treble 
  \key e \minor
  \time 2/2

  \ntbo #16.5 \times 4/7 { \bc e16[ g b e] \tc \su g[ b e] } g8. g16 << { g 4 fs } \\
									{ a,2    } \\
									{ c 2    } >> | % 1

  \sn
  \ntbo #15.5 \times 4/7 { \bc ds,,16[ fs a c] \tc ds[ fs g] } a8. a16 << { a  4 g            } \\ 
									  {                   } \\
									  { fs 4 e _\mordent  } \\ 
									  {                   } \\
									  { ds!4 s            } >> | % 2
  

  \ntb \times 4/7 { \sd e  16[ g  ] \su b [ c  d  c  b ] }
  \ntb \times 4/7 { \sd a  16[ c  ] \su e [ fs g  fs e ] }
  \ntb \times 4/7 { \sd d, 16[ fs ] \su a [ b  c  b  a ] }
  \ntb \times 4/7 { \sd g  16[ b  ] \su ds[ e  fs e  ds] } | % 3

  \ntnb \times 4/7 { \sd c, 16[ e  ] \su g [ a  b  a  g ] }
  \ntnb \times 4/7 { \sd fs 16[ as ] \su cs[ ds e  ds cs] }
  \ntnb \times 4/7 { \sd b  16[ ds!] \su fs[ g  a! g  fs] }
  \ntnb \times 4/7 { \sd ds!16[ fs ] \su a [ b  c! b  a ] } | % 4

  \ntbo #16.5 \times 4/7 { \bc \sd e,,16[ g b e] \tc \su g[ b e] } 

  g8. g16 << { g16. \beams #2 #3 fs32 \beams #3 #3 e fs g16 cs,4 \prall } \\
       	     { cs,2			       			        } \\
       	     { \shortStem #4.5 a'2	       			        } \\
	     { 								} \\
       	     { e2			       			        } >> | % 5

  \ntbo #16.5 \times 4/7 { \bc \sd d,16[ fs a d] \tc \su fs[ a cs] }

  fs8. fs16 << { fs16. \beams #2 #3 e32 \beams #3 #3 d e fs16 b,4 \prall } \\
  	       { d,2			       				 } \\
	       { \shortStem #5 g2       				 } >> | % 6

  \ntb \times 4/7 { \sd g  16[ b   ] \su cs [ d  e  d  cs] }
  \ntb \times 4/7 { \sd f, 16[ as  ] \su b  [ cs d  cs b ] }
  \ntb \times 4/7 { \sd e, 16[ g   ] \su as![ b  cs b  as] }
  \ntb \times 4/7 { \sd cs,16[ as'!] \su e' [ fs g  fs e ] } | % 7

  << { fs8.[    b,16] cs8.[ as16] as4( b16) a g fs } \\
     { r 8 r16  d     e 8.[ cs16] e 4  ds8    r    } \\
     { s 8 s16  g     g 8.[ fs16] fs2              } \\
     {						   } \\
     { s 4            s8.   e 16  s 2              } >> | % 8

  g16[ as b cs]  b [ as b  g ] fs[ as b  cs]  b[ as b fs] | % 9
  e16[ b' cs d]  cs[ b  cs e,] d [ fs gs as]  b[ fs d' b] | % 10

  \pageBreak  % LilyPond 2.10.33 has some page breaking bugs. We need to force a break here.

  e 8 b  g e'  d  b   fs d' | % 11
  cs8 as e as  b[ fs] d  r  | % 12

  \ntbo #16.5 \times 4/7 { \bc \sd gs,16[ b d e] \tc \su b'[ e gs] } b8. d,16 << { d4( c) \prall } \\
										 { e,2           } \\
										 { b'4 a         } >> | % 13

  \ntbo #16.5 \times 4/7 { \bc \sd fs,16[ a c d] \tc \su a'[ d fs] } a8. c,16 << { c4  b  \prall } \\
										 { d,2           } \\
										 { a'4 g         } >> | % 14

  \ntnb \times 4/7 { \bc \sd gs,16[ b ] \tc \su d  [ e  f  e  d ] }
  \ntnb \times 4/7 { \bc \sd a  16[ c ] \tc \su ds [ e  fs e  ds] }
  \ntnb \times 4/7 { \bc \sd as 16[ cs] \tc \su e  [ fs g  fs e ] }
  \ntnb \times 4/7 { \bc \sd b  16[ d ] \tc \su e  [ f  gs f! e ] } | % 15

  \ntnb \times 4/7 { \bc \sd c  16[ ds] \tc \su fs![ g! a  g  fs] }
  \ntnb \times 4/7 { \bc \sd cs 16[ e ] \tc \su fs [ g  as g  fs] }
  \ntnb \times 4/7 { \bc \sd d  16[ f ] \tc \su gs [ a  b  a  gs] }
  \ntnb \times 4/7 { \bc \sd ds 16[ fs] \tc \su a  [ b  c  b  a ] } | % 16

  \ntbo #16.5 \times 4/7 { \bc \sd e,16[ g b e] \tc \su g[ b e] } g8. g16 << \new Voice { \voiceOne   g4( fs) }
									     \new Voice { \voiceThree c2      }
									     \new Voice { \voiceFive  a2      }
									     \new Voice { \voiceSeven e2      } >> | % 17
  
  \ntbo #10 \times 4/7 { \sd b16[ d f gs] \su b[ d f] } gs8. gs16 << \new Voice { \voiceOne   gs4( a) }
								     \new Voice { \voiceThree e2      }
								     \new Voice { \voiceFive  c2      }
								     \new Voice { \voiceSeven a2      } 
								     \new Voice { \voiceNine  e2      } 
								     \new Voice { \voiceTwo   c2      } >> | % 18

  \ntnb \times 4/7 { \sd c '16[ e   ] \su fs [ g! a  g  fs] }
  \ntnb \times 4/7 { \sd b ,16[ ds  ] \su e  [ fs g  fs e ] }
  \ntnb \times 4/7 { \sd a ,16[ c   ] \su ds![ e  fs e  ds] }
  \ntnb \times 4/7 { \sd fs,16[ ds'!] \su a' [ b  c  b  a ] } | % 19

  << \new Voice { \voiceOne   b8.[ e,16] fs8.[ ds16] ds4( e16) d c b }
     \new Voice { \voiceThree s8.  c 16  c 8.[ b 16] b 4  s4         }
     \new Voice { \voiceFive  s8.  g 16  s 8.  a 16  s 2             }
     \new Voice { \voiceTwo   g8.[ c,16] a'8.[ fs16] e 2             }
     \new Voice { \voiceFour  s2                     a 4  gs8    r8  } >> | % 20

  << { c16[ ds e fs] e[ ds e c] b[ ds e fs] e[ ds e b] } \\
     { a8      e     c     a'   g     e     b     g'   } >> | % 21

  << { a16[ e' fs g] fs[ e fs a,] g[ fs      g b] e[ b g' e] } \\
     { fs,8[   ds    a     ds]    e[ \bc \su b    g    e]    }  >> | % 22

  a'8[ e'  c' a, ] g [ e' b' g,] | % 23
  fs8[ ds' a' ds,] e,[ b' g']  r | % 24

  % The stem on the b'4 runs through the dot on the ds8.
  % This will be fixed in Lilypond 2.11, so I didn't try to fix it here.
  \ntbo #17 \times 4/7 { \bc \sd as,,16[ cs e g] \tc \su as[ cs e] } g8. fs16 << { ds8. cs!32 b e8. e,16 } \\
										 { fs4          e8. s 16 } \\
										 { b'4          s4       } >> | % 25

  << { g8 a32 g fs g a8. fs16 fs4( e8) r } \\
     { e4 ~          e8. ds16 ds4( e8) s } >> | % 26

  r1         | % 27
  r1         | % 28
  r2 r4 r8 b | % 29

  b8 as r cs cs[ b] r d | % 30

  s1 | % 31
  s1 | % 32
  s1 | % 33

  r4 r8 e e[ ds] r fs | % 34

  fs8 e r g g[ fs16 g] a8 c,! | % 35

  b8 ds e g a, fs' b, ds | % 36

  e16[ g fs e] d![ fs e d] cs[ e fs g] a,[ g' fs e] | % 37

  d[ fs e d] cs[ e d cs] b[ d e fs] g,[ fs' e d] | % 38

  cs16[ e d cs] b[ d cs b] as[ cs d e] fs,[ e' d cs] | % 39

  b16[ d e fs] gs,[ fs' e d] cs[ e fs g!] as,[ g' fs e] | % 40

  d16[ fs gs as] b,[ a' g fs] e[ gs as b] cs,[ d e8] ~ | % 41

  e8.[ e16] d[ cs b8] ~ b16[ b8 b16] as[ b cs! fs,] | % 42

  d'16[ cs b as] b[ cs d fs,] e'[ d cs b] cs[ d e as,] | % 43

  fs'[ e ds cs] ds[ e fs a,!] g'[ fs e ds!] e[ fs g b,] | % 44

  a'16[ g fs e] fs[ g a ds,] b'[ a gs fs] gs[ a b d,] | % 45

  << { c'16[ b a gs] a[ b c g] g8 fs r a  } \\
     { r4            r8   e8   e  ds r fs } >> | % 46

  << { a8  g r b b  a       r16 g fs e } \\
     { fs8 e r g g[ fs16 g] a8[    c,] } >> | % 47

  << { ds8[  b'] ~ b16[ d! c  b] c [ a8  a16] ~ a[ a8 a16] ~ } \\
     { b,8   ds!   e       g     a,    fs'      b,   ds!     } >> | % 48

  << { a'16 a8 a16 r g8 g16 r g8 g16 r g8 g16 ~ } \\
     { e8     b    e   d!   cs  e    a,  cs     } >> | % 49

  << { g'16 g8 g16 r fs8 fs16 r f8 f16 r f8 f16 } \\
     { d8    a     d    c!    b   d    g,  b     } >> | % 50

  << { e8  a a g r b b[ a] } \\
     { c,8 r r e e d r  fs } >> | % 51

  << { r  8  c' c[ b] r d  d[ c]  } \\
     { fs,8  e  r  g  g fs r  a ~ } >> | % 52

  << { b4          r16 g b d c4        r16 a c e } \\
     { a,16 fs g d e4 ~      e16 g a e fs4 ~     } >> | % 53

  << { d'4          r16 b d f e4        r16 c e g } \\
     { fs,16 a b fs g4 ~      g16 b c g a4 ~      } >> | % 54

  << { fs'16[ e d8] ~   d16[ d g fs] e[ d c8] ~    c16[ a d c] } \\
     { a8.          c16 b4 ~         b8.      e,16 fs4 ~       } >> | % 55

  << { b2                           a                         } \\
     { fs16[ fs e d] e[ fs g cs,] ~ cs[ e d cs] d[ e fs b,] ~ } >> | % 56

  << { g'2                         fs4        r8    d'    } \\
     { b,16[ d cs b] cs[ d e a,] ~ a[ cs d e] fs[ g a fs] } >> | % 57

  << { d'8 cs r e   e d  r fs } \\
     { g,8 e  a cs! a fs a d  } >> | % 58

  << { fs8[ e16 fs] g8[     b,] a8    cs! d     fs } \\
     { b,8  g       r16 fs' e d cs[ b a   g] a8 r  } >> | % 59

  << { g8 e' a, cs d4   r8 b   } \\
     { s2          r8 a a[ gs] } >> | % 60 # the source omits the leading r2

  << { b8 	       a r  d  d  	       c r  f  } \\
     { r8 \longStem #9 c c[ b] r8 \longStem #9 e e[ d] } >> | % 61

  << { f8 e r  e  e d r  d  } \\
     { r8 d d[ c] r c c[ b] } >>  | % 62

  << { d8 c r  c  c b  r  a  } \\
     { r8 b b[ a] r d, d[ c] } >> | % 63

  \sn

  a'8 gs r16 e' d c b[ d e f] gs,![ f' e d] | % 64

  c16[ e fs! gs] a,[ g' f e] d[ fs gs a] b,[ c d a] | % 65

  gs16[ f' e d] c[ b a8] ~ a16[ gs! a b] d,[ f e d] | % 66

  c16[ e a c] b[ a b e] a,[ c b a] g[ f g c] | % 67

  f,16[ a g f] e[ d e a] d,[ f! e d] c8 c' | % 68

  c8 b r d d c r e | % 69

  e8[ d16 e] f8[ a,] g b c e | % 70

  f,8 d' g, b c4 ~ c16 bf a g | % 71

  a16[ b! c d] c[ b c a] g[ b c d] c[ b c g] | % 72

  f[ c' d e] d[ c d f,!] e[ d e g] c[ g e' c] | % 73

  % The source has two completely empty measures here.
  % I'm guessing that this was a typesetting problem.
  % If you want them back, uncomment these two lines:
  %  s1 |
  %  s1 |

  d8 a f d' c a e c' | % 74

  b8 gs d gs a e c a' | % 75

  << { a8      gs   r       b    b    a       r  c } \\
     { e,16[ b c d] gs,[ f' e d] c[ e fs gs!] a8 e } >> | % 76

  << { c'8  b r a  a  g r b } \\
     { e,8 ds r fs fs e r g } >> | % 77

  << { b8  as r cs cs b r d  } \\
     { g,8 fs r e  e  d r fs } >> | % 78

  << { d '8 cs r b  b  as } \\
     { fs 8 es r gs gs fs } >> r16 fs' e! d | % 79

  cs16[ e fs g] as,[ g' fs e] d[ fs gs as] b,[ a' g fs] % 80

  << { e16 d e fs g4 ~       g16 g fs e d4 ~       } \\
     { r4         r16 cs d e as,8  r    r16 cs b a } >> | % 81

  << { d16[ cs d e] as,8  r    d,16[ cs d fs] b[ fs d' b] } \\
     { g8      r    r16 g fs e s2                         } >> | % 82

  << { g'4 ~          g8.       g16 fs4 ~         fs8.      fs16 } \\
     { r16 as,[ b cs] b[ as b8] ~   b16[ as b cs] b[ as b8] ~    } >> | % 83

  << { e4 ~          e8.        e16 d   cs! d e fs4 ~       } \\
     { b,16[ b cs d] cs[ b cs8] ~   cs4 ~       cs16 b cs d } >> | % 84

  << { fs16[ cs d e] d[ cs d8] ~  d16[ cs d e] d[ cs d8] ~   } \\
     { g,4 ~         g8.      g16 fs4 ~        fs8.     fs16 } >> | % 85

  << { d'16[ b cs d] cs[ b cs8] ~  cs16[ es, gs b] ~ b[ b8 as16] } \\
     { e4 ~          e8.       e16 d4                cs8  e      } >> | % 86

  \ntbo #16.5 \times 4/7 { \bc \sd b,16[ d fs b] \tc \su d[ fs b] } d8. d16 << { d 4 cs } \\
									       { e,2    } \\
									       { g 2    } >> | % 87
  
  \ntbo #14 \times 4/7 { \bc \sd as,,16[ cs e g] \tc \su as[ cs d] } e8. e16 << { e  4( d) } \\
										{ as!4  b  } \\
										{ cs!4  b  } >> | % 88

  \ntnb \times 4/7 { \sd b  16[ d  ] \su fs[ g  a   g  fs] }
  \ntnb \times 4/7 { \sd e  16[ g  ] \su b [ cs d   cs b ] }
  \ntnb \times 4/7 { \sd a, 16[ cs ] \su e [ fs g   fs e ] }
  \ntnb \times 4/7 { \sd d  16[ fs ] \su as[ b  cs! b  as] } | % 89
  
  \ntnb \times 4/7 { \sd g, 16[ b  ] \su d [ e  fs  e  d ] }
  \ntnb \times 4/7 { \sd cs 16[ es ] \su gs[ as b   as gs] }
  \ntnb \times 4/7 { \sd fs 16[ as!] \su cs[ d  e!  d  cs] }
  \ntnb \times 4/7 { \sd as!16[ cs!] \su e [ fs g!  fs e ] } | % 90
  
  \ntbo #16.5 \times 4/7 { \bc \sd b,,16[ d fs b] \tc \su d [ fs b] } d8. d  16 << { d 4( cs) } \\
										   { g 2      } >> | % 91

  \ntbo #16.5 \times 4/7 { \bc \sd fs,16[ a c! d] \tc \su a'[ d fs] } a8. c,!16 << { c 4  b   } \\
										   { d,2      } \\
										   { a'4  g   } >> | % 92

  \ntnb \times 4/7 { 	 \sd e  16[ g  ]     \su as[ b  cs  b  as ] }
  \ntnb \times 4/7 { 	 \sd ds,16[ fs ]     \su a [ b  c   b  a  ] }
  \ntnb \times 4/7 { 	 \sd d, 16[ f  ]     \su gs[ a  b   a  gs ] }
  \ntnb \times 4/7 { 	 \sd cs,16[ e  ]     \su g [ a  bf  a  g  ] } | % 93
  
  \ntnb \times 4/7 { 	 \sd c,!16[ ds ]     \su fs[ g  a   g  fs ] }
  \ntnb \times 4/7 { 	 \sd b, 16[ d  ]     \su es[ fs gs  fs es!] }
  \ntnb \times 4/7 { \bc \sd as,16[ cs ] \tc \su e [ fs g   fs e  ] }
  \ntnb \times 4/7 { \bc \sd a ,16[ c  ] \tc \su ds[ e  fs  e  ds ] } | % 94

  \ntbo #17 \times 4/7 { \bc \sd gs, 16[ b  d f] \tc \su b [ d f] } b8. b16 << { b  4  a   } \\   % U
									       { e ,2      } \\   % D
									       { gs'4  s   } \\   % U
									       { gs,4  a   } \\   % D
									       { e' 2      } \\   % U
									       { d  4  c   } >> | % D 95

  \ntbo #16.5 \times 4/7 { \bc \sd ds,,16[ fs a c] \tc \su a'[ c fs] } a8. a16 << { a  4  g   } \\
										  { c ,4  b   } \\
										  { fs'4  e   } \\
										  { s2        } \\
										  { ds 4  s   } >> | % 96

  s1 | % 97

  \ntnb \times 4/7 { \sd c, 16[ e  ] \su g [ a  b  a  g ] }
  \ntnb \times 4/7 { \sd fs 16[ as ] \su cs[ ds e  ds cs] }
  \ntnb \times 4/7 { \sd b  16[ ds!] \su fs[ g  a! g  fs] }
  \ntnb \times 4/7 { \sd ds!16[ fs ] \su a [ b  c! b  a ] } | % 98
  
  \ntbo #16.5 \times 4/7 { \bc \sd e,,16[ g b e] \tc \su g[ b e] } g8. g16 << { g8. e16 f4 \mordent } \\ { c,2 } \\
									      { c'2     	    } \\ {     } \\
									      { a 2     	    } \\ {     } \\
									      { e 2     	    }            >> | % 99
  
  \ntbo #9 \times 4/7 { \sd b 16[ d f gs] \su b[ d f] } gs8. gs16 << { gs4( a4) } \\ { c,,2 } \\
								     { e'2      } \\ { 	 } \\
								     { c 2      } \\ { 	 } \\
								     { a 2      } \\ { 	 } \\
								     { e 2      }                 >> | % 100

  \ntnb \times 4/7 { \sd c '16[ e   ] \su fs [ g! a  g  fs] }
  \ntnb \times 4/7 { \sd b ,16[ ds  ] \su e  [ fs g  fs e ] }
  \ntnb \times 4/7 { \sd a ,16[ c   ] \su ds![ e  fs e  ds] }
  \ntnb \times 4/7 { \sd fs,16[ ds'!] \su a' [ b  c  b  a ] } | % 101

  << { b 8.[     e,16] fs8.[ ds16] e 2     } \\
     { g,8.[ \bc c,16] a 8.[ b 16] s 2 \tc } \\
     { s 8.      c'16  c 8.[ b 16] b 4 as4 } \\
     { s 8.      g 16  a 8.[ fs16] e 2     } >> | % 102

  s1 | % 103

  \ntnb \times 4/7 { \bc \sd g ,16[ as] \tc \su cs [ d  e  d  cs] }
  \ntnb \times 4/7 { \bc \sd gs 16[ b ] \tc \su d  [ e  f  e  d ] }
  \ntnb \times 4/7 { \bc \sd a  16[ c ] \tc \su ds [ e  fs e  ds] }
  \ntnb \times 4/7 { \bc \sd as 16[ cs] \tc \su e  [ fs g  fs e ] } | % 104

  << { r8 r16 e' 		b  8.[ ds16] ds4 e  } \\
     { s4        		fs,4         e 2    } \\
     { s4        \shortStem  #6 a  4         b 2    } \\ { } \\
     { s2                                    a 4 gs } >> | % 105
     
  \bar "|."

  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.ufermata" }
}

lower =
{
  \clef bass
  \key e \minor
  \time 2/2

  s4 r << { c'2 } \\
  	  { e 2 } \\
	  { a 2 } >>     | % 1

  s4 r << { c'4( b) } \\
          { e2      } >> | % 2

  s1                     | % 3
  s1                     | % 4
  s4 r a2                | % 5
  s4 r << { b2 } \\
  	  { g2 } >>      | % 6
  s1                     | % 7

  d'8.[ g16] e8.[ fs16] << { b2 } \\ { b,2} >> | % 8

  e'8 b g e'  d' b fs d' | % 9
  cs' as e as  b fs d b, | % 10

  \pageBreak  % LilyPond 2.10.33 has some page breaking bugs. We need to force a break here.

  g16[ as b cs']  b[ as b g]  fs[ as b cs']  b[ as b fs]  | % 11

  e16[ b cs' d']  cs'[ b cs' e]  d[ cs d fs]  b[ fs d' b] | % 12

   s4 r4 << { c'2 } \\ { a2 } >> | % 13
  s4 r4 << { b 2 } \\ { g2 } >> | % 14
  s1				| % 15
  s1				| % 16
  s4 r << { c'2 } \\ { a2 } >>  | % 17
  s1                            | % 18
  s1                            | % 19
  s4 a8. b16 e2                 | % 20
  s1                            | % 21
  s1                            | % 22

  c'16[ ds e fs] e [ ds e  c'] b[ ds e fs]         e [ ds e   b ]         | % 23
  a 16[ e fs g ] fs[ e  fs a ] g[ fs g b ] \tc \sd e'[ g' cs' e'] \bc \sn | % 24

  s4 r4 << { b4 b8. c'16 } \\
	   { a4 g8. a 16 } >> | % 25

  << { b8. c'16 b8. a 16 a4( g8) r  } \\
     { b8. a 16 b8. b,16 e4.     e8 } >> | % 26

  e8 ds r fs fs[( e]) r g | % 27

  g8[ \prall fs16 g] a8[ c] b, ds e g | % 28

  a,8 fs b, ds e16[ g fs e] d[ fs e d] | % 29

  cs16[ e fs g] as,[ g fs e] d[ fs gs as] b,[ a g fs] | % 30

  << { \tc d'8[    cs'16 d'] \sd e'8[ \bc \su g            ]   fs  as!     b    d'    } \\
     {     e16[ gs as    b ]     cs [         d \tieDown e8] ~ e [ d16 cs] d cs b,8 ~ } >> | % 31

  << { e8   cs'        fs      as      b16[ cs'! d'8] ~    d'     b      } \\
     { b,8[ as,16 gs,] as,[ b, cs fs,] d  [ cs   b,  as,!] b,[ cs d fs,] } >> | % 32

  << { cs'16  d' e'4          cs'8     ds'16 e' fs'4            ds'8   } \\
     { e  16[ d  cs b,] cs[ d e   fs,] fs[   e  ds   cs] ds[  e fs a,] } >> | % 33

  << { e'16[ fs' g'8] ~ g'16[ b a g] fs[ a b c'!] ds![ c' b a] } \\
     { g 16  fs  e ds   e4           a,           b,           } >> | % 34

  << { g16[ b cs' ds'] e[ d' c' b] a[ cs' ds' e'] fs[ g a8] ~ } \\
     { e4              r8    e     fs4            r8    fs    } >> | % 35

  << { a8[ g16 fs] g[ fs e8] ~ e[ ds16 cs] ds[ e fs b,] } \\
     { g4          r8    g,    c[ a,]      b,4          } >> | % 36

  << { g8 r   r4      r8 cs e a } \\
     { r8 e,[ fs, g,] a, r  r4  } >> | % 37

  << { fs8 r   r4      r8 b, d g } \\
     { r8  d,[ e, fs,] g, r8 r4  } >> | % 38

  << { e8 r      r4    r8  as,  cs fs } \\
     { r8 cs,8[ d, e,] fs, r    r4    } >> | % 39

  << { d8 b, d  g! e   cs   e as  } \\
     { r4    r8 b, b,[ as,] r cs! } >> | % 40

  << { fs8 d  fs b g4          r8  r16 b } \\
     { cs8 b, r  d d[ cs!16 d] e8  g,    } >> | % 41

  << { as16[ cs' fs8] ~ fs8.[ fs16] g8[ e] r4      } \\
     { fs,8      as,    b,   d      e,  cs fs, as, } >> | % 42

  b,16 cs d4 b,8 cs16 d e4 cs8 | % 43

  ds16 e fs4 e16[ ds] e[ fs] g4 e8 | % 44

  fs16 g a4 fs8 gs16 a b4 a16 gs | % 45

  a16[ b c'8] ~ c'16 b a g fs[ a b c'] ds[ c' b a] | % 46

  g16[ b cs' ds'] e[ d' c' b] a[ cs' ds' e'] fs[ g a8] ~ | % 47

  a16[ a g fs] g[ fs e8] ~ e[ ds16 cs] ds[ e fs b,] | % 48

  e8 e, r e a cs r a, | % 49

  d8 d, r d g b, r g, | % 50

  c16[ d e d] cs[ e a, cs] d[ e fs e] ds[ fs b, ds] | % 51

  e16[ fs g fs] e[ g c e] fs[ g a g] fs[ a d fs] | % 52

  g8 g, r g g fs r a | % 53

  a8 g r b b[ a16 b] c'8[ e] | % 54

  d8 fs g b c a d fs | % 55

  g,8 g cs e fs, fs b, d | % 56

  e,8 e a, cs d,16[ a, b, cs] d[ e fs d] | % 57

  e16[ g a b] cs[ b a g] fs[ a b cs'] d[ c' b a] | % 58

  g16[ b cs' d'] e[ fs g8] ~ g16[ g fs e] fs[ g a d] | % 59

  b16[ d cs b,] cs[ d e a,] fs[ e d c] b,[ c d e,] | % 60

  c16[ e a g] fs[ gs a b,] gs[ b a g] f[ g a c] | % 61

  b,16[ a gs fs!] gs[ e a g] fs[ c' fs e] fs[ d g f] | % 62

  e16[ b e d] e[ c f e] d[ e fs gs] a[ b c' d'] | % 63

  << { r8     b   b[ a] a gs r b } \\
     { e'16 f e d c4    d    e   } >> | % 64

  << { b 8  a      r    c' c'[ b16 c'] d'8[ f] } \\
     { a,8[ a16 b] c'8[ a] b4          r 8  b, } >> | % 65

  << { e8 gs a  c'    d  b e  gs! } \\
     { c4    r8 f16 e f8 d e4     } >> | % 66

  << { a8 f' f' e' r d' d'[ c'] } \\
     { a4    r8 g  g f  r   e   } >> | % 67

  << { r8 b b[ a] r g ~ g16[ e f d] } \\
     { e8 d r  c  c b,  a,4         } >> | % 68

  << { e16[ c d b,] g,[ b, d f] e[ d e c] g,[ c e g] } \\
     { g,4          r           r2                   } >> | % 69

  << { f16[ e f g] a[ b c' d'] e'2 ~                    } \\
     { r2                      r16 d'[ c' b] a[ g f! e] } >> | % 70

  << { e'8    d'     r      f' ~   f'16[ f' e' d'] e'8 c' } \\
     { d16[ c b, a,] g,[ f, e, d,] c,8      r      r4     } >> | % 71

  f'8 c' a f' e' c' g e' | % 72

  d'8 b f b c' g e c | % 73

  % The source has two completely empty measures here.
  % I'm guessing that this was a typesetting problem.
  % If you want them back, uncomment these two lines:
  %  s1 |
  %  s1 |

  f16[ gs a b] a[ gs a f] e[ gs a b] a[ gs a e] | % 74

  d16[ a b c'] b[ a b d] c[ b, c e] a[ e c' a] | % 75

  r2 r4 r16 b a g | % 76

  fs16[ a b c'] ds[ c' b a] g[ b cs' ds'] e'[ fs e d] | % 77

  cs[ e fs g] as,[ g fs e] d[ fs gs as] b,[ cs! b, a,] | % 78

  gs,[ b, cs d] cs,[ es, ds, cs,] fs,[ es, fs, gs,!] as,8[ b,] | % 79

  b,8 as, r cs cs b, r d | % 80

  d8[ cs16 d] e8[ g,] fs, as, b, d | % 81

  e,8 cs fs, as, b, cs d b, | % 82

  e8 b g' e d b fs' d | % 83

  cs as e' as b fs d b, | % 84

  e16[ as b cs'] b[ as b e] d[ as b cs'] b[ as b d] | % 85

  cs16[ gs as b] as[ gs as cs] b,8 es, fs, fs | % 86

  s4 r4 << { g2 } \\ { b,2 } \\ { e2 } >> | % 87

  s4 r4 << { fs2 } \\ { b,2 } >> | % 88

  s1 | % 89
  s1 | % 90
  s4 r4 << { b2 } \\ { e2 } \\ { g2 } >> | % 91
  s4 r4 << { b2 } \\ { g2 } >>           | % 92
  s1 | % 93
  s1 | % 94
  s4 r4 c'2 | % 95
  s4 r4 << { e'2 } \\ { e2 }>> | % 96

  \ntnb \times 4/7 { \sd e,16[ g,]     \su b ,[ c  d   c  b,  ]     	}
  \ntnb \times 4/7 { \sd a,16[ c ]     \su e  [ fs g   fs e   ]     	}
  \ntnb \times 4/7 { \sd d 16[ fs]     \su a  [ b  c'  b  a   ]     	}
  \ntnb \times 4/7 { \sd g 16[ b ] \tc \su ds'[ e' fs' e' ds' ] \bc \sn } | % 97

  s1       | % 98
  s4 r4 a2 | % 99
  s1       | % 100
  s1       | % 101
  s2 << { cs'2 } \\ { cs2 } \\ { g2 } \\ { } \\ { e2 } >> | % 102

  \ntnb \times 4/7 { \sd ds16[ fs]     \su a [ b    c ' b   a ] 	}
  \ntnb \times 4/7 { \sd e 16[ g ]     \su as[ b    cs' b   as] 	}
  \ntnb \times 4/7 { \sd f 16[ gs]     \su b [ cs'! d'! cs' b ] 	}
  \ntnb \times 4/7 { \sd fs16[ a ] \tc \su b [ c '! ds' c ' b ] \bc \sn } | % 103

  s1       | % 104

  << { s4 b   s 2 } \\
     { b4 b , e,2 } \\
     { s4 fs  e 2 } \\ { } \\
     { s4 ds  b,2 } >> | % 105

  \bar "|."
  
  \override Staff.RehearsalMark #'direction = #-1
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.dfermata" }
}

\score 
{
  \new PianoStaff 
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
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
  \header { piece = "1. Prelude" }
  \midi   { }
}

% SONG LONG
% a long, long song
