% This file prints Bach BWV 830, all 6 movements

\version "2.10.33"

\header
{
  title    	    = "Keyboard partita in E minor"
  composer 	    = "Johann Sebastian Bach"
  opus     	    = "BWV 830"
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

% Beam Count function
beams = #(define-music-function (parser location left right) (integer? integer?)
#{
\set stemLeftBeamCount  = #$left
\set stemRightBeamCount = #$right   
#})

longStem = #(define-music-function (parser location length) (number?)
#{
  \once \override Stem #'length = #$length
#})


upper = \relative e''
{
  \clef treble 
  \key e \minor

  \repeat volta 2
  {
    \partial 8 r16 g |

    << { g8[ ~ g32 fs e ds] } \\ { b8 s8 } \\ { e8 s8 } >> 
    e8[ ~ e32 d c b]
    c8[ ~ c32 b a gs]
    a16.[ c32 fs,16. a32] | % 1

    ds,8[ ~ ds32 c' b a]  fs'16.[ a,32 b16. fs32]  g8 fs16 e << { <b'>8. \arpeggio b16 } \\
								{ <e,>8. \arpeggio     } \\ 
								{  g  8.	       } >> | % 2

    b16.[ fs32 g16. e32]  << { <c'>8. \arpeggio c16 } \\
			     { <e,>8. \arpeggio	    } \\
			     {  a  8.		    } >>  c16.[ g32 a16. fs32]  << { <d' >8. \arpeggio d16 } \\
										   { <fs,>8. \arpeggio	   } \\
										   {  b   8.		   } >> | % 3

    << { <d >8[ \arpeggio ~ d32 f e d]  b'16.[ d,32 e16. b32]  c8 b16 a  e'8. e16 } \\
       {  e, 8									  } \\
       {  b' 8									  } >> | % 4

    \su e16[ ds32 cs ds e fs g]  a16.[ c,32 b16. fs'32]  g16.[ b,32 as16. e'32]  fs16.[ a,32 gs16. d'32] \sn | % 5

    e16.[ g,!32 fs16. cs'32]  d16.[ as32 b16. fs32]  g16.[ ds32 e16. g32]  cs!16.[ as!32 e'16. cs32] | % 6

    g'16[ fs32 e as16 gs32 fs]  b16[ a32 g fs e d cs]  d32[ cs b as b16. es,32]  fs16.[ b32 cs!16. as!32] | % 7

    << { as8[( b]) } \\ { e,8[ ds] } >> s4 

    <<
      % The source notates these four notes as dotted quarters.
      % This is the closest I could get in LilyPond.
      \override Staff.NoteCollision #'merge-differently-dotted = ##t
      { b''4.    	} \\ { } \\
      { s16 fs4  	} \\ { } \\
      { s16 s32 ds4     } \\ { } \\
      { s16 s32 s32 b4  } 
    >> 
  }

  \repeat volta 2
  {
    << { r16 fs' } >> | % 8

    << { fs8[ ~ fs32 e ds! cs] } \\ 
       { b8 		       } \\ 
       { ds8		       } >>  ds8[ ~ ds32 c b a]  b16.[ fs32 a16. c32]  e32[ ds! cs b a'16. fs32] | % 9

    << { g4 ~                    g32[ b a  g fs e d         c] } \\
       { r32 e[ d! c! b a g fs]  e  [ g fs e d  c b \bc \su a] } >>  d'[ f e d b'16. c32]  gs8. \trill fs32 gs | % 10

    a16[ a,32 b b16 \prall a32 b]  c16[ b32 a b c d e]  f16.[ a,32 gs16. d'32]  e16.[ g,32 fs!16. cs'32] | % 11

    d16.[ f,32 e16. b'32]  c!16.[ e,32 ds16. a'32]  b16.[ d,32 cs16. gs'32]  a16.[ c,32 b16. fs'32] | % 12

    \su a16 gs fs e  
    d'8. e16  

    % The source does not show a triplet for the three 64th notes,
    % and it aligns the e over the g in the left hand.
    c16.[ \times 2/3 { f64 e d } gs16. a32]  

    % The stem on the gs4 runs through the dot on the b8.
    % This will be fixed in Lilypond 2.11, so I didn't try to fix it here.
    << { b,8.[ a16] } \new Voice = "3" { \voiceThree gs4 } >> \sn | % 13

    a8 ~ a32 b a gs  a[ b c d e fs g! e]  fs8 \prall e16 d  a'8. a16 | % 14

    ds,8[ ~ ds32 e fs g]  a[ c b a b16. fs32]  g16[ b32 g e16 g32 e]  c16[ e32 c a16 c32 e] | % 15

    fs16[ a32 fs d16 fs32 d]  b16[ d32 b g16 b32 d]  e16[ g32 e c16 e32 c]  a16[ c32 a fs16 a32 c] | % 16

    ds,16[ fs32 a c16 b32 a]  fs'8.[ fs16]  fs16[ b,32 cs ds16 cs32 b]  g'16.[ e32 ds16. e32] | % 17

    a,16[ ds32 e fs16 e32 ds]  a'16.[ e32 ds16. e32]  b16[ e32 fs g16 fs32 e]  

    % The source has b'8. , which is obviously wrong.
    b'16.[ \beams #2 #3 a32 \beams #3 #3 g fs e d] | % 18

    c16[ b32 a ds16 cs32 b]  fs'32[ e ds! cs! b a g fs]  g[ fs e ds e16. as,32]  b16.[ e32 fs16. ds!32] | % 19

    ds8 e s4 <<
    	       % Again, the source notates all these as dotted quarters.
    	       \override Staff.NoteCollision #'merge-differently-dotted = ##t
    	       { e'4.    	} \\ { } \\
    	       { s16 b4 	} \\ { } \\
    	       { s16 s32 g4     } \\ { } \\
    	       { s16 s32 s32 e4 } 
    	     >> % 20
  }

  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.ufermata" }
}

lower =
{
  \clef bass
  \key e \minor

  \repeat volta 2
  {
    \partial 8 r8 |
    << { r8 fs g gs a b c' a } \\
       { e1 ~                } >> | % 1

    << { f2          e8     s8            s4                } \\
       { e8 e ds b,  e,8[ ~ e,32 b, c d]  e8[ ~ e32 d c b,] } >> | % 2

    << { \longStem #8
	 g8    s8           s4  		  \longStem #8
	 					  d'8 					      } \\
       { c8[ ~ c32 e fs g]  a16.[ c'32 e16. g32]  fs8[ ~ fs32 e d c]  b,16.[ fs,32 d16. b,32] } \\
       { e8    s8	    s4			  a8					      } >> | % 3

    << { b4 											       } \\
       { gs4 \arpeggio ~ gs8 ~ gs32 e fs gs  a16[ \tc b32 c' d' e' fs'! gs']  a'16.[ fs'32 g'16. e'32] } >> | % 4

    \tc \sd fs'8 e' ds' b  e' cs' d' \bc \su b \sn | % 5

    cs'8[ as]  b[ ~ b32 b, cs ds]  e8[ ~ e32 d e fs]  g8[ ~ g32 e fs g] | % 6

    as,8 fs, d b,  << { r8 d' cs' e'! } \\ { fs2 } >> | % 7

    b,8. ds32 fs  b16[ \tc ds'!32 fs' b'16 ds''32 fs'']  b''16[ fs''32 ds'' b'16 fs'32 ds']  b8 \bc
  }

  \repeat volta 2
  {
    r8 | % 8

    b,8 b fs a  ds fs b, ds | % 9

    % The source omits the r4
    e,8 r8  r4  gs8[ ~ gs32 f e d]  b16.[ d32 e16. b,32] | % 10

    c8[ ~ c32 e fs! gs]  a8[ ~ a32 g f e]  d8 b cs a | % 11

    b,8 gs a, fs  gs a f d | % 12

    e4 ~  e16[ gs32 b \tc \sd e'16 fs'32 gs'!]  a'16.[ g'32 f'16. d'32]  e'8 \bc e \sn | % 13

    a16.[ e32 c16. e32]  a,8[ ~ a,32 a b c']  d'16[ fs'32 d' a16 c'32 a]  fs16[ a32 fs ds16 fs32 ds] | % 14

    a,16[ c32 a, fs,16 a,32 fs,]  ds,8[ ~ ds,32 b, cs ds]  e8[ ~ e32 d c b,]  a,8[ ~ a,32 a b c'] | % 15

    d'8[ ~ d'32 c' b a]  g8[ ~ g32 g, a, b,]  c8[ ~ c32 b, a, g,]  fs,8[ ~ fs,32 fs g a] | % 16

    b4 ~  b16[ a32 g a16 g32 fs]  g16[ fs32 e fs16 e32 ds]  e16[ g32 b c'8] ~ | % 17
    
    c'16.[ b32 a16. c'32]  fs16[ a32 c' fs'8] ~ fs'16.[ e'32 ds'16. e'32]  g16[ b32 ds'! e'8] ~ | % 18

    e'16.[ c'32 a16. fs32]  ds8.[ b,16]  << { e8. fs16 g8 a } \\
					    { e8  c    b,4  } >> | % 19


    << { a8[   g]           } \\
       { e,8 ~ e,16 g,32 b, } >> e16[ g32 b \tc e'16 g'32 b']  e''16[ b'32 g' e'16 \bc b32 g]  e8 % 20
  }

  \override Staff.RehearsalMark #'direction = #-1
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.dfermata" }
}

\score 
{
  \new PianoStaff 
  <<
    \set PianoStaff.connectArpeggios = ##t
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
  \header { piece = "2. Allemande" }
  \midi   { }
}


longStem = #(define-music-function (parser location length) (number?)
#{
  \once \override Stem #'length = #$length
#})

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

upper = \relative e''
{
  \clef treble 
  \key e \minor
  \time 3/8

  \repeat volta 2
  {
    \partial 16 b16   	   	       	       	       	 |
    b16 e,8 ds e16    	   	       	       	       	 | % 1
    fs16 c'8 b a16 ~  	   	       	       	       	 | % 2
    a16 g8 fs32 e fs16 a ~ 	       	       	       	 | % 3
    a16 ds, r b'32 cs ds e fs16 ~      	       	       	 | % 4
    fs16 e8 g b,16 ~                   	       	       	 | % 5
    b16 c r a32 b c d e16 ~            	       	       	 | % 6
    e16 d8 a' c,16 ~                   	       	       	 | % 7

    c16 b r e32 fs g16 b,16 ~          	       	       	 | % 8
    b16 a r ds32 e fs16 a, ~           	       	       	 | % 9
    a16 g r f'32 e d! c b16 ~          	       	       	 | % 10
    b16 c r g'32 fs! e ds cs16 ~       	       	       	 | % 11
    cs16 ds r c'!32 b a g fs16 ~       	       	       	 | % 12
    fs16 g8 ds e16 ~                   	       	       	 | % 13
    e16 b8 c gs16 ~                    	       	       	 | % 14

    gs16 a8 e f16                      	       	       	 | % 15
    c'32 b a16. g32 fs!16. e'32 ds16 ~ 	       	       	 | % 16
    ds32 e fs g a b c8 ds,16 ~         	       	       	 | % 17
    ds16 e r e,8 fs16                  	       	       	 | % 18
    g32 b e8 g, fs16 ~                 	       	       	 | % 19
    fs32 e fs16. g32 a16. b32 c16 ~    	       	       	 | % 20
    c32 e a8 c, b16 ~                  	       	       	 | % 21
    b32 a b16. c32 d16. e32 f16 ~      	       	       	 | % 22

    f32 e f8 a, g16                    	       	       	 | % 23
    e'32 d e8 g, fs16                  	       	       	 | % 24
    d'32 c d8 fs, e16                  	       	       	 | % 25
    c'32 b c8 e, d16                   	       	       	 | % 26
    b'32 a b8 e g,16                   	       	       	 | % 27
    fs32 e d8 d32 e fs g a b           	       	       	 | % 28
    c32	 [ a' fs d ]  c  [ a'  fs  d ]  c   [ a'  fs d ] | % 29

    b32	 [ g' d  b ]  g  [ d'  b   g ]  fs  [ g   a  b ] | % 30
    c32	 [ a' fs d ]  c  [ a'  fs  d ]  c   [ a'  fs d ] | % 31
    b32	 [ g' d  b ]  g  [ d'  b   g ]  fs  [ g   a  b ] | % 32
    cs32 [ bf a  g ]  e  [ g   a   bf]  cs  [ bf  a  g ] | % 33
    c!32 [ a  g  fs]  ef [ fs! g   a ]  c   [ a   g  fs] | % 34

    bf32 [ g  fs e!]  cs [ e   fs  g ]  bf  [ g   fs e ] | % 35
    cs'32[ bf a  g ]  ef'[ c   bf! a ]  fs'![ ef! d  c ] | % 36
    g'32 fs g8 b16 d, fs                               	 | % 37
    g8 r16 b32 a g fs e16 ~                            	 | % 38
    e32 f d16. e32 c16. d32 b16 ~                      	 | % 39
    b32 c a16 r a32 b c b a16                          	 | % 40

    fs'32 a, c16. b32 a16. g32 fs16                      | % 41
    g32 fs e16 r as32 b cs d e16 ~                       | % 42
    e32 fs g16. fs32 e16. d32 cs16                       | % 43
    d32 e fs16. e32 d16. cs32 b16                        | % 44
    cs32 d e16. d32 cs16. b32 as16                       | % 45
    b32 cs d8 e32 fs g fs g16                            | % 46

    as,32[ g' fs e ]  b [ fs' e  d]  cs[ e  d cs]        | % 47
    d32  [ b  as gs]  fs[ b   cs d]  e,[ as! b cs!]      | % 48
    d,32[ fs b16] ~ b32[ cs b a!] ~ a[ b a g] ~          | % 49
    g32[ a g fs] ~ fs[ g fs e] ~ e[ fs e d] ~            | % 50
    d32 g c,!16. g'32 b,16. g'32 as,16 ~                 | % 51

    % The beaming and stem directions in this run match the source.
    % I moved the second run of 32nd notes to the base cleff,
    % because it has fewer ledger lines there.
    as8 s32  s8  \sd fs'32[ as cs]                       | % 52

    d32 \su es[ gs b] \sn f8\rest 
    << { \longStem #9 as, } \\ { cs, } \\
       { fs  		  } \\ {     } \\
       { e!  		  }            >>  		 | % 53

    << { b'4 } \\ { ds, } \\ { fs } >> r16
  }

  \repeat volta 2
  {
    fs'16                                                | % 54
    fs16 b8 a c16 ~                                      | % 55
    c16 ds,8 fs a,16 ~                                   | % 56
    a16 c8 b a16 ~                                       | % 57
    a32 fs g16 r b32 a g fs e16 ~                        | % 58

    e32 gs a16. b32 c16. d32 e16 ~                       | % 59
    e32 cs d16 r a32 g f e d16 ~                         | % 60
    d32 fs! g16. a32 b16. c32 d16 ~                      | % 61
    d32 b c16 r c32 d e f g16 ~                          | % 62
    g32[ a g cs,]  g'[ a g cs,]  g'[ a g cs,]            | % 63

    f32[ g f d]  f[ g f d]  f[ g f d]                    | % 64

    % There are some stray marks in the source in this measure.
    % I'm ignoring them.
    e[ f e d]  gs[ a gs d]  b'[ c b d,]                  | % 65

    e32 c a'16 r bf,32 a g f e16 ~                       | % 66
    e32 f d16 r c'32 b a g fs16 ~                        | % 67
    fs32 gs e16 r f'32 e d c b16 ~                       | % 68

    b16 c8 gs a16 ~                                      | % 69
    a16 e8 f cs16 ~                                      | % 70
    cs16 d8 a bf16                                       | % 71
    f'32 e d16. c32 b!16. a'32 gs16 ~                    | % 72
    gs32 a b c d e f8 gs,16 ~                            | % 73
    gs16 a r c'32 b a g fs! e                            | % 74
    fs32[ a fs e]  ds[ fs c! b]  a[ fs' b, a]            | % 75

    g32[ e' b a]  g[ b g fs]  e[ g b d]                  | % 76
    cs32[ e cs b]  as[ cs g! fs]  e[ cs' fs, e]          | % 77
    ds32[ b' fs e]  ds[ fs ds cs] b8 ~                   | % 78
    b16 b'8 e, fs16 ~                                    | % 79
    fs16 c'8 b a16 ~                                     | % 80
    a16 g8 fs32 e fs16 a ~                               | % 81

    a16 ds, r ds'32 e fs16 a, ~                          | % 82
    a16 g r gs'32 a b16 d,! ~                            | % 83
    d16 c r cs32 d e16 g, ~                              | % 84
    g16 f r f'32 g a16 c,! ~                             | % 85
    c16 b r b32 c d16 f,                                 | % 86
    e32 f g16. f32 e16. d32 c16                          | % 87
    d32 e f16. e32 d16. c32 b16                          | % 88

    c32 d e8 f32 g a b c a                               | % 89
    f32[ d' b g]  f[ d' b g]  f[ d' b g]                 | % 90
    e32[ c' g e]  c[ g' e c]  b[ c  d e]                 | % 91
    f32[ d' b g]  f[ d' b g]  f[ d' b g]                 | % 92
    e32[ c' g e]  c[ g' e c]  b[ c  d e]                 | % 93

    fs!32 [ ef d c ]  a  [ c d   ef]  fs [ ef  d c ]     | % 94
    f32   [ d  c b ]  af [ b c   d ]  f  [ d   c b ]     | % 95
    ef32  [ c  b a!]  fs![ a b   c ]  ef [ c   b a ]     | % 96
    fs'!32[ ef d c ]  af'[ f ef! d ]  b'![ af! g f!]     | % 97
    c'32 b c8 e16 g, b                                   | % 98

    c8 r16 e32 d c b a16 ~                               | % 99
    a32 bf g16. a32 f!16. g32 e16 ~                      | % 100
    e32 f d16 r d'32 e f e d16                           | % 101
    b'32 e, f16. e32 d16. c32 b16                        | % 102
    c32 b a16 r ds32 e fs! g a16 ~                       | % 103
    a32 b c16. b32 a16. g32 fs16                         | % 104

    g32 fs g8 b, a16                                     | % 105
    fs'32 e fs8 a, g16                                   | % 106
    e'32 ds e8 g, fs16                                   | % 107
    ds'32[ b c b]  e[ b c b]  fs'[ b, c b]               | % 108
    g'32[ e ds cs]  b[ e fs g]  ds[ fs g a]              | % 109
    g32 b e,16 ~ e32 fs e d! ~ d e d c ~                 | % 110

    c32[ d c b] ~ b[ c b a] ~ a[ b a g] ~                | % 111
    g32 c f,16. c'32 e,16. c'32 ds,16 ~                  | % 112

    % Again, the beaming and stem directions match the source.
    \sd ds8 s8 b32[ cs ds e]                             | % 113
    fs32 \su g[ a b c!] \sd b[ cs ds e] \su fs[ g a]     | % 114
    b8 \sn r << { \longStem #9 ds, } \\ { fs, } \\
	        { b   		   } \\ {     } \\
	        { a   		   }            >>       | % 115
    << { e'4 } \\ { e, } \\
       { b'  } \\ {    } \\
       { g   }           >> r16                            % 116
  }

  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.ufermata" }
}

lower =
{
  \clef bass
  \key e \minor
  \time 3/8

  \repeat volta 2
  {
    \partial 16 r16    | 
    e  8   g   	 c '   | % 1
    ds 8   fs  	 b     | % 2
    e  8   a   	 c     | % 3
    b ,8   b   	 a     | % 4
    g  8   b   	 e '   | % 5
    a  8   c ' 	 e '   | % 6
    fs 8   a   	 d '   | % 7

    g  8   b     e '   | % 8
    fs 8   a     ds'   | % 9
    e  8   g     gs    | % 10
    a  8   as    fs    | % 11
    b  8   b ,   ds    | % 12
    e  8   fs    g     | % 13
    c  8   d     e     | % 14

    f  8   g     a     | % 15
    ds 8   b     a     | % 16
    g  8   e     b ,   | % 17
    e  8   g     b     | % 18
    e '8   d '   cs'   | % 19
    d '8   d     fs    | % 20
    a  8   g     fs    | % 21
    g  8   g,    b,    | % 22

    d  8   c     b ,   | % 23
    c  8   b ,   a ,   | % 24
    b ,8   a ,   g ,   | % 25
    a ,8   g ,   fs,   | % 26
    g ,8   c     cs    | % 27
    d  8   fs    a     | % 28
    d '8   d     d ' ~ | % 29

    d' 8   d     d ' ~ | % 30
    d' 8   d     d ' ~ | % 31
    d' 8   d     d ' ~ | % 32
    d' 8   d     d ' ~ | % 33
    d' 8   d     d ' ~ | % 34

    d' 8   d     d ' ~ | % 35
    d' 8   fs    d     | % 36
    b, 8   g,    d     | % 37
    g, 8   g     b     | % 38
    gs 8   e'    e     | % 39
    a  8   fs    e     | % 40

    ds 8   b,    b     | % 41
    e  8   cs    b,    | % 42
    as,8   fs,   fs    | % 43
    b ,8   a     g     | % 44
    a ,8   g     fs    | % 45
    g ,8   fs    e     | % 46

    fs,8   gs    as    | % 47
    fs,8   b     cs'   | % 48
    fs,8   cs'   b     | % 49
    a  8   g     fs    | % 50
    e  8   d     cs    | % 51

    \sd fs32[ fs, as, cs e]  \su g[ as cs' e'] \sn  s16. | % 52
    r8 \tc \sd fs' \bc fs \sn                		 | % 53
    b,4 r16
  }

  \repeat volta 2
  {
    r16                | % 54
    b ,8   ds   fs     | % 55
    a  8   c'   a      | % 56
    fs 8   ds   b,     | % 57
    e  8   e'   d'!    | % 58

    c' 8   a    g      | % 59
    f  8   d'   c'     | % 60
    b  8   g    f      | % 61
    e  8   c'   bf     | % 62
    a  8   f    e      | % 63

    d  8   bf   a      | % 64
    gs 8   e    d      | % 65
    c  8   a,   cs     | % 66
    d  8   ds   b,     | % 67
    e  8   e,   gs,    | % 68

    a, 8   b,   c      | % 69
    f, 8   g,   a,     | % 70
    bf,8   c!   d      | % 71
    gs,8   e    d      | % 72
    c  8   a,   e,     | % 73
    a, 8   a    c'     | % 74
    ds'8   fs'  b      | % 75

    e' 8   e    g      | % 76
    as 8   cs'  fs     | % 77
    b  8   b,   ds     | % 78
    e  8   g    c'     | % 79
    ds 8   fs   b      | % 80
    e  8   a    c      | % 81

    b, 8   b    ds     | % 82
    e  8   e,   gs,    | % 83
    a, 8   a    cs     | % 84
    d  8   d,   f,     | % 85
    g, 8   g    b,     | % 86
    c  8   b    a      | % 87
    b, 8   a    g      | % 88

    a, 8  g     f      | % 89
    g, 8  g     g, ~   | % 90
    g, 8  g     g, ~   | % 91
    g, 8  g     g, ~   | % 92
    g, 8  g     g, ~   | % 93

    g, 8  g     g, ~   | % 94
    g, 8  g     g, ~   | % 95
    g, 8  g     g, ~   | % 96
    g, 8  d     f,     | % 97
    e, 8  f,    g,     | % 98

    c, 8  c     e      | % 99
    cs 8  a,    a      | % 100
    d  8  b     a      | % 101
    gs 8  e     e'     | % 102
    a  8  fs    e      | % 103
    ds 8  b,    b      | % 104

    e  8  d'    c'     | % 105
    d  8  c'    b      | % 106
    c  8  b     a      | % 107
    b, 8  cs'   ds'    | % 108
    b, 8  e'    fs'    | % 109
    b, 8  fs'   e'     | % 110

    d' 8  c'    b      | % 111
    a  8  g     fs!    | % 112

    \sd b32[ b, cs ds e] \su fs[ g a] \sn s8 | % 113
    s8*3               | % 114
    r  8  g,    b,     | % 115
    e,4         r16      % 116
  }

  \override Staff.RehearsalMark #'direction = #-1
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.dfermata" }
}

\score 
{
  \new PianoStaff 
  <<
    \set PianoStaff.connectArpeggios = ##t
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
  \header { piece = "3. Courante" }
  \midi   { }
}


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

% Beam Count function
beams = #(define-music-function (parser location left right) (integer? integer?)
#{
\set stemLeftBeamCount  = #$left
\set stemRightBeamCount = #$right   
#})

longStem = #(define-music-function (parser location length) (number?)
#{
  \once \override Stem #'length = #$length
#})

longBeam = #(define-music-function (parser location left right) (number? number?)
#{
  \once \override Beam #'positions = #(cons $left $right)
#})

tiePosition = #(define-music-function (parser location position) (number?)
#{
  \once \override Tie #'staff-position = #$position
#})

noStem = { \once \override Stem     #'transparent  = ##t }
noHead = { \once \override NoteHead #'transparent  = ##t }

hShift = #(define-music-function (parser location hshift) (number?)
#{
  \once \override NoteColumn #'force-hshift = #$hshift
#}
)

mdd = { \once \override Staff.NoteCollision #'merge-differently-dotted = ##t } % Merge Differently Dotted


upper = \relative g'
{
  \clef treble 
  \key e \minor
  \time 3/4

  \repeat volta 2
  {
    \partial 4 << { g8. g16 } \\
		  { b,4     } \\
		  { e4      } >> |

    
    << { g4 ~                 g16[ fs32 g a16 a32 b] c[ a b c ds       			a     b   c]     } \\
       { \appoggiatura b,8 c4 s4                     s8       s32 \mdd \tiePosition #-6 a'16. ~          } \\
       { e4                   s2                                                        		 } \\
       { s2                                          s8       s16            		      s32 c'32 ~ } >> | % 1


    << { fs4. } \\
       { a,4. } \\
       { c 4. } \\
       { % Create an endpoint for the tie
	 % There's going to be a lot of this in this movement...
	 \hShift #0.5 \noStem \noHead c4 } >> 

    << { r16 c b8. ds16 } \\
       { r16 a g8. fs16 } >> | % 2


    << { e'8. g 16 fs8. a16 ds,8. e16 } \\
       { e,8. b'16 c 8. b16 a  8. c16 } \\
       {			      } \\
       { s2 \override NoteColumn #'force-hshift = #.5
	    \override Beam #'positions = #'(-5.5 . -5) fs,8. g16 } \\ >> | % 3


    << { e'4( ds16.)[ \prall \beams #2 #3 cs32 \beams #3 #3 ds cs b16]  <a'>8. \arpeggio a16 } \\
       { fs,2                                 		    		 fs 4       	     } \\
       { b2                                   		    		 fs'4       	     } \\ {} \\
       { s2                                   		    		 ds!4       	     } \\ {} \\
       { s2                                   		    		 b  4       	     } >>          | % 4


    << { a'4  g16[ b,32 c d16 d32 e]  f[ d e f gs       d    e   f]    } \\   % v1
       { g,2                          gs4 ~                    	       } \\   % v2
       { fs'4 e16 _\mordent s8.                                	       } \\   % v3
       { s2                           s8       s16           s32 f32 ~ } \\   % v4
       { ds4                                                           } \\   % v5
       { s2                           s8       s32 \mdd d16.         ~ } \\   % v6
       { b2                                                            }      % v7
								         >> | % m5


    << { b' 4 \longBeam #8 #6 a32[ f e d c b a gs] \noBeam a           s            s s     	     cs       e   fs g! } \\   % v1
       { gs,4 		      a16 s8.                      s32 \bc \su cs,  \tc \sd e a     	     cs8                } \\   % v2
       { f  4 \longStem #9    e16                                             	            	                        } \\   % v3 
       { \hShift #.5 \noStem 
	 f  4		      s4                           s8                               	     s32 \mdd e16.      } \\   % v4
       { d  4   	      c16                                            	            	                        } \\   % v5
       { \hShift #1 \noStem
	 d  4   	      s4                           s16     \noStem \hShift #0 e,16 \noBeam ~ \hShift #.5 
	 									     		     e8                 } \\   % v6
       {														} \\   % v7
       { s  4   	      s4                           s16.    \noStem \hShift #0 a32          ~ a8  	        }      % v8
     										        	          		  >> | % m6

    << { g'4  \longBeam #7 #7
	      fs32[ a, b cs! d e fs g]  a[ g fs16 c'!32 b a16] } \\
       { a,2                            d,4                    } \\
       { e'4  d32 _\mordent s32 s16 s8  a4                     } \\
       {						       } \\
       { cs4  s                         fs,                    } >> | % 7


    %% The source omits the tuplet bracket and number
    << { a'8.[ \prall \times 2/3 { g32 a b] }  \longBeam #6 #5 g8.[ 	        fs16]  e16.[ g64 fs e32 fs g 16]     } \\
       { d,4.				       		            	   s16	c 16   b 8.                g'16\rest } \\
       { d'4                     	       \longStem #10   b8.  		s 16   e,8.		   a,16\rest } \\
       {													     } \\
       { c'4				       		       g8.[ \hShift #-1 ds16]			       	     } \\
       {													     } \\
       { fs4													     } >> | % 8


    << { cs'16.[ e64 d cs32 d e16]  as,16.[ cs64 b as32 b cs16]  fs,8.[           g 16] } \\
       { c,4\rest                   c\rest                       c8\rest c16\rest b 16  } \\
       { c,4\rest                   c\rest                       c8\rest c16\rest d'16  } >> | % 9


    << { <g> 4 \arpeggio (  fs8.) g' 16  fs8. e 16 } \\
       { as,,4  s8.		  e''16  d8.  cs16 } \\
       { cs, 4					   } >> | % 10


    << { d'8. cs16  as8. b16  fs16[ cs'32 d e d cs16] } \\
       { b 4        g 4       fs8.              e 16  } >> % 11


    << { cs'4(  b) } \\
       { e,4    ds } >> % 12
  }

  \repeat volta 2
  {
    << { <fs>8. \arpeggio fs16 } \\
       {  b,4		       } \\
       {  ds4		       } >> | % 12

    << { fs4(   g16)[ b b32 \prall a b16]  d!4 ~                            	    } \\
       { b,2                               d'16[ gs, gs32\prall fs          gs16]   } \\
       { ds4(   e) _\mordent					            	    } \\
       {								    	    } \\
       { s2                                s8                   s16 \noStem gs16 ~  } >> | % 13

    << { d'2. ~ 		        } \\
       { r16 d,[ d32 \prall c d16] f2 ~ } \\
       { b2.  ~                         } \\
       {			        } \\
       { gs2. ~			        } >> | % 14

    << { \longBeam #5 #4.5 d'8. c16  b8. d16  gs,8. \prall a16 } \\
       { 		   f 8. e16  f8. e16  d8.          f16 } \\
       { 		   b 8. a16			       } \\
       { 		          			       } \\
       { 		   gs8.		   		       } >> | % 15

    << { a4( gs16)[ \prall fs \times 2/3 { fs32 \beams #3 #3 gs \beams #3 #2 fs } e16]  f'8. f16 } \\
       { e,2                                                  f4       } \\
       { s2						      d'4      } \\
       {   						               } \\
       { s2						      b4       } \\
       {   						               } \\
       { s2						      gs!4     } >> | % 16

    << { <f' >4 \arpeggio \tiePosition #5 e2 ~		     		          } \\
       { <gs,>4 \arpeggio 		  a8         s8        bf16.[ g32 ~ g8] ~ } \\
       {  d'  4		  \longBeam #6 #6 c32[ d c b c16. a32] bf4 ~              } \\
       {		  		        				  } \\
       {  b   4		  		        	  			  } >> | % 17

    << { \longBeam #5 #4
	 e8[	        	  cs] ~        		   cs d16. b32     <c>8. \arpeggio c16 } \\
       { g16      s32 \noStem g ~ g32 bf! a g  \hShift #.5 f8 ~        f8  ds4		       } \\
       { bf'32 bf a           g   s8	       \hShift #.5 f32 g a16 ~ a8  a 4		       } \\
       {										       } \\
       { s2						   	    	   fs4		       } >> | % 18

    << { c' 4(  b2) ~ 				  		     } \\
       { ds,4(  e8)                  s8           f32 e ds16 ~ ds8 ~ } \\
       { a' 4   g32[ \mordent a g fs g16 fs32 e]  f4 ~               } \\
       {					         	     } \\
       { fs 4	s4				  s8   \noStem ds8 ~ } >> | % 19

    % The source omits the tuplet brackets and numbers
    << { b'4	              	  a16.[ \times 2/3 { b64 a gs } a16 e32 b'] } \\
       { s8        c,8 ~      	  c16.				       	    } \\
       { f4		      	  				       	    } \\
       {		      	  				       	    } \\
       %%   OR d?
       { ds32[ ds c b c16. e32] ~ e16.				       	    } >>

    c'16. \times 2/3 { d64 c b } c16 a32 cs | % 20

    d 16.[ \times 2/3 { e64 d  cs } d 16 a32 e']  
    f 16.[ \times 2/3 { g64 f  e  } f 16 d32 fs]  
    gs16.[ \times 2/3 { a64 gs fs } gs16 d32 a'] | % 21 

    % The source omits the tuplet bracket and number
    << { \appoggiatura a8 \stemUp b8.  f16 \appoggiatura f8 e8.    f32 d  c16. \times 2/3 { e64 d c } d16 e32 f! } \\
       {                  r4                        r8 r16 e,     e8.                             e16    } >> | % 22


    << { \appoggiatura a8 gs8. a16 % The source has a schleifer on the d8. , 
	 			   % which LilyPond does not implement.
                         	   % I pieced one together from a prall and a slur.
                         	   \grace { \hideNotes \stemDown a16 a16^( \unHideNotes \stemUp }
                         	   \once \override Script #'extra-offset = #'( -3 . -4.5 )
                         	   d8.) \prall 

					c16  b8. \prall a16 } \\
       {                  d,8. f16  f8. e16  d8.        c16 } >> | % 23


    << { <a'>2 \arpeggio <c>8. \arpeggio c16 } \\
       { <c,>2 \arpeggio  c4		     } \\
       { e2		  a4		     } \\
       {				     } \\
       { s2		  e4		     } >> | % 24

    << { c'16[ ~ c64 d! c b c32 a b16]  b8[ \mordent ~ b32 cs ds e]  fs16[ g32 a g16. \prall fs32] } \\
       { fs,!4.                                        r8            r4                            } >> | % 25

    \appoggiatura fs'8 g8[ ~ g32 fs e ds]  e16[ g32 as, b16 e32 fs,]  g16[ b32 ds, e16 g32 b,] | % 26

    % The source omits the tuplet bracket and number
    r8 r16 fs''32 g g8. \prall fs32 g g8. \prall \times 2/3 { fs32 g a! } | % 27

    e8[( \once \override Script #'padding = #1.5
	 ds32) \downprall cs ds e]  ds[ cs b a g fs e ds]  e64[ fs g a b cs! ds! e] fs[ g128 a g64 fs] g32.[ g64] | % 28
    
    << { s16	       s32  \set tieWaitForNote = ##t 
    			    % correct time requires g32 ~ g8 here, but the source has only a g8
	 		    g8 ~ s32						    g16[ fs8.]      f32[ e f d f g! a g64 f] } \\
       { r64 c,![ e a] c[ e g e] \times 2/3 { c32[ b c] } \times 2/3 { a[ gs a] ~ } a8.[     a16] ~ a8.[ 	    g16]   ~ } \\
       { 														     } \\
       { s2								  			    s32  s s \set tieWaitForNote = ##t 
	 												     \tiePosition #2
	 											    % again, the source omits a 32nd note
    			    										     d'8 ~ s32	     } >> | % 29

    % The source omits the tuplet bracket and number
    << { f8. \downprall \times 2/3 { e32 f g } e4		      e8.          e16 } \\
       { g,4				       c32[ b a gs a16. c32]  e[ d c b c8] ~   } \\
       {									       } \\
       { d4									       } >> % 30

    << { a'4 ~  			 a32[ a b c b a gs a]  b8.             b16 } \\
       { c,16. b64 c c16. ^\prall b64 c  c16    s16 s8	       b'32[ f e d e16 b]  } >> | % 31

    << { e16[ fs!32 gs fs16. \prall e32]  a8[ ~ a32 g fs e]  ds[ e ds e fs e64 ds e32 fs] } \\
       { b,4				  a   ~		     a16			  } >> % 32

    << { a8. fs'16 a,8. g'16 a,8. a'16 } \\
       { a,4	   a	     a	       } >> | % 33

    % The source omits the tuplet bracket and number
    << { e'4(  ds8.)[ e64 ds cs ds]  e16.[ \times 2/3 { d64 c b } c32 e as,16] } \\
       { a2			     r4					       } >> | % 34

    % The source omits the tuplet bracket and number
    << { b16.[ \times 2/3 { a!64 g fs } g32 b e,16]  \appoggiatura fs8 g8.[ a64 g fs g]  a8.    fs16 } \\
       { s4							       s4		 r8 r16 a,16 } >> | % 35

    << { fs'4 e } \\
       { a,4  g } >> % 36
  }


  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.ufermata" }
}

lower =
{
  \clef bass
  \key e \minor
  \time 3/4

  \repeat volta 2
  {
    \partial 4 << { g4 } \\
		  { e4 } >> | 

    << { a2 r4 } \\ { a,2 r4 } \\ { e2 s4 } \\ { } \\ { c2 s4 } >> | % 1

    r16 << {      c'8.         \noBeam ~                  	       c'8. fs16 g8. a 16 } \\
	   { \mdd c'16 a  fs             \appoggiatura e8 	       ds8. ds16 e8. fs16 } \\
	   {      s16  a8      \noBeam ~                  \longStem #8 a 8. s 16 s4       } \\
	   {										  } \\
	   {      s8      fs16 \noBeam ~                  	       fs8. s 16 s4       } >> | % 2

    << { b8. e'16 e'8. ds'16 s4         } \\   % the voice goes to the treble clef
       { g8. e 16 a 8. b  16 c '8. a 16 } >> | % 3

    b2 <ds'>4 \arpeggio  | % 4

    e'2 d'!4 | % 5

    c'2 r32 \mdd cs'16. ~ cs'8 | % 6

    d'2 c'!4 | % 7

    b4.  r16 a  g8. fs16 | % 8

    e8. d16  cs8. b,16  as,8. b,16 | % 9

    << {  e  4.		  r16 as  b8. cs'16 } \\
       { <e,>4. \arpeggio r16 cs! d8. e  16 } \\
       {  cs 4.				    } \\
       {				    } \\
       { as,4.				    } >> | % 10

    << { d'8. e'16  cs'8. d'16  as8. \prall as16 } \\
       { fs8. g 16  e4          fs4              } >> | % 11

    << { as4 b } \\
       { b,2   } \\
       { fs2   } >> % 12
  }

  \repeat volta 2
  {
    << {  a!4		 } \\
       { <b,>4 \arpeggio } \\
       {  fs4		 } \\
       {		 } \\
       {  ds4		 } >> | % 12

    << { a4( g) r  } \\
       { e2     r4 } >> | % 13

    << { s2                           s8     s16    \noStem gs16 ~ } \\
       { r4 r16 b[ b32 \prall a b16]  d'[ gs gs32 \prall fs gs16]  } >> | % 14

    << { gs8. a16 ~  a8. gs16  b8. c'16 } \\
       { c4          d8. e 16  f8. d 16 } >> | % 15

    << { b2 d'4 } \\
       { e2     } >> | % 16

    << { c'2 r8 \tiePosition #9 cs'8 ~      } \\
       { s2  s8			cs'16. e'32 } >> | % 17

    << { cs'8 e' a4 c'  	    } \\
       { f2         <fs>4 \arpeggio } \\
       { s2	    a4  	    } >> | % 18

    << { s2 s8 \tiePosition #6 gs8 ~	  } \\
       { g2 r8 		       gs16 a32 b } >> | % 19

    << { gs8[ a] ~ a8. r16 a4 ~    } \\
       { c4 ~      c8. e16 a8. g16 } >> | % 20

    << { a8. r16 d'2 ~                 } \\
       { f8. a16 d'8.[ c'16] b8.[ a16] } >> | % 21

    << { d'4  r8 r16 gs! a8.[ b16] } \\
       { gs4.    r16 e16 a8.[ g16] } >> | % 22

    << { b8. c'16  a4  gs \prall } \\
       { f8. d 16  e2            } >> | % 23

    << { a2 \mordent                      \longStem #10  a  8. \noBeam \longStem #10 \noStem a16 ~ } \\
       { r8 r32 f e d  e[ d c d e c d e]               	<a,>8. \arpeggio       		     a16   } \\
       { s2				  \longStem #8 	 e  8.		       		           } \\
       {					       	   	    	       		           } \\
       { s2				               	 c  8.		       		           } >> | % 24

    << {                  a 2 	     r4 } \\
       { \appoggiatura e8 ds2 \prall r4 } >> | % 25

    << { e'2 r4 } \\
       { e2  r4 } \\
       { b2     } \\
       {	} \\
       { g2	} >> | % 26

    << { \appoggiatura b8 as4. r16 a \longBeam #6 #6 a8. as16 } \\
       {		  cs4. r16 c 		     c8. c 16 } \\
       {		  e 4. s16 e \longBeam #4 #4 e8. e 16 } >> | % 27

    << { b 4 r r } \\
       { b,4 r r } \\
       { fs4     } >> | % 28

    a4 a b | % 29

    << { s4    g'4\rest e'8. e'16 } \\
       { c'4 ~ c'8. b16 a 8. g 16 } >> | % 30

    << { e'4( ds') \prall d'8. \mordent d'16 } \\
       { fs2		  gs4		     } >> | % 31

    << { d'4 cs' \prall c'8.  c'16  } \\
       { a4.	g!8	fs8.[ e 16] } >> | % 32

    % The source omits the tuplet brackets and numbers
    << { c' 16.[ \times 2/3 { b64 a  gs } a 16. c'32]
	 fs 16.[ \times 2/3 { g64 fs e  } fs16. a 32]
	 ds!16.[ \times 2/3 { e64 ds cs } ds16. fs32] ~ } \\
       { ds4					        } >> | % 33

    << { fs2 \tiePosition #6 e4 ~        } \\
       { c!4(  b,8.) a,16    g,8. fs,16  } \\
       { s2		     b,8  d\rest } >> | % 34

    << { e2		ds4 } \\
       { g,8. a,16 b,2	    } >> | % 35

    << { e 2 } \\
       { e,2 } \\
       { b,2 } >> % 36
  }


  \override Staff.RehearsalMark #'direction = #-1
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.dfermata" }
}

\score 
{
  \new PianoStaff 
  <<
    \set PianoStaff.connectArpeggios = ##t
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
  \header { piece = "4. Sarabande" }
  \midi   { }
}

upper = \relative c''
{
  \clef treble 
  \key e \minor
  \time 2/2

  \repeat volta 2
  {
    \partial 2 e16[ fs g8]  b,8.[ g'16] |

    a,8. g'16  fs4  c16[ b a8]  fs'8.[ a,16] | % 1

    \set tupletSpannerDuration = #(ly:make-moment 1 4)
    g8. b16  e,4 ~ \times 2/3 { e8[ ds e]  a8[ g fs] } | % 2

    \override TupletNumber #'transparent = ##t
    \times 2/3 { e 8[ ds e]  b'[ g fs]  e[ ds! e]  c'[ g fs] } | % 3

    \times 2/3 { e 8[ ds e]  fs[ g a ]  g[ fs g]  a [ b c ] } | % 4

    \times 2/3 { b 8[ a  b]  c [ d e ]  d[ c d ]  e [ fs g] } | % 5

    \times 2/3 { fs8[ g  a] }  d,4 ~ \times 2/3 { d8[ c d]  g[ fs e] } | % 6

    \times 2/3 { e 8[ d  c]  c [ b a ]  a[ g fs]  fs[ e d ] } | % 7

    \times 2/3 { d 8[ c  b]  b [ a g ] }  g8.[ g'16]  fs8.[ g16] | % 8

    a,8.[ g'16]  fs8.[ g16]  b,8.[ g'16]  fs8.[ g16] | % 9

    c,8.[ g'16]  fs8.[ g16] \times 2/3 { d8[ e fs]  fs[ g a] } | % 10

    \times 2/3 { a 8[ b c]  d[ c b]  a[ b g]  d[ g fs] } | % 11
  }

  \alternative
  {
    {
      g2
    }
    {
      g2 % 12
    }
  }

  \repeat volta 2
  {
    \partial 2 b16[ c d8]  g,8. e'16 |

    a8.[ cs,16]  d4  cs!16[ b a8]  g'8.[ e16] | % 13

    fs8.[ a16]  d,4 ~  \times 2/3 { d8[ g d]  b[ g fs] } | % 14

    \times 2/3 { g[ b d]  f[ e d]  e[ a e]  cs[ a gs] } | % 15

    \times 2/3 { a8[ cs e]  g[ fs e]  fs[ b fs]  ds[ b as] } | % 16

    \times 2/3 { b8[ ds fs]  a[ g fs]  g[ fs e]  d[ cs b] } | % 17

    \times 2/3 { as8[ b cs]  fs,[ gs as!]  b[ as b]  e[ d cs!] } | % 18

    \times 2/3 { b8[ as b]  fs'[ d cs]  b[ as! b]  g'[ d cs!] } | % 19

    \times 2/3 { b8[ as b]  b'[ a! g]  g[ fs e]  e[ d cs] } | % 20

    \times 2/3 { cs8[ b as]  as[ gs fs]  fs[ e d]  d[ cs b] } |  % 21

    b4 ~  b16[ a'! b c!]  d[ c b8]  f'8.[ a,16] | % 22

    gs8.[ b16]  d4  \times 2/3 { f,8[ e f]  d'[ c b] } | % 23

    \times 2/3 { e,8[ ds e]  c'[ b a]  ds,![ cs ds]  c'![ b a] } | % 24

    \times 2/3 { g8[ fs g]  b[ ds e]  a,[ gs a]  g'![ fs e] } | % 25

    \times 2/3 { ds8[ e fs] }  b,4  e16[ fs g8]  b,8.[ g'16] | % 26

    a,8.[ g'16]  fs4  d16[ c b8]  f'8.[ g,16] | % 27

    f'8.[ g,16]  e'4 ~  e8.[ e16]  ds8.[ e16] | % 28

    fs,8.[ e'16]  ds8.[ e16]  g,8.[ e'16]  ds!8.[ e16] | % 29

    a,8.[ e'16]  ds8.[ e 16]  \times 2/3 { b8[ cs ds!]  ds[ e fs] } | % 30

    \times 2/3 { fs8[ g a]  b[ a g]  fs[ g e]  b[ e ds] } | % 31

    e2 % 32
  }

  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.ufermata" }
}

lower =
{
  \clef bass
  \key e \minor
  \time 2/2

  \repeat volta 2
  {
    \partial 2  e4 g |

    c'4 ~  c'16 b a8  ds'4  b | % 1

    e'4 ~  e'8. d'!16  c'8.[ e16]  ds8.[ e16] | % 2

    b8.[ e16]  ds8.[ e16]  a8.[ e16]  ds!8.[ e16] | % 3

    g8.[ e16]  ds8.[ b16]  e8.[ c'16]  fs8.[ d'!16] | % 4

    g8.[ e'16]  a8.[ fs'16]  b8.[ g'16]  c'8.[ a'16] | % 5

    d'4 ~  d'16[ c' b a]  g[ a b8]  e8.[ b16] | % 6

    c8.[ b16]  a4  fs16[ e d8]  a8.[ c16] | % 7

    \set tupletSpannerDuration = #(ly:make-moment 1 4)
    \override TupletNumber #'transparent = ##t
    b,8.[ a16]  g4  \times 2/3 { e8[ fs g]  b,[ a, g,] } | % 8

    \times 2/3 { fs8[ g a]  c[ b, a,]  g[ a b]  d[ c b,] } | % 9

    \times 2/3 { a8[ b c']  e[ d c] }  b,8.[ g16]  a,8.[ fs16]  | % 10

    g,8.[ e16]  fs,8.[ d16]  e,8.[ c16]  d,8.[ c16] | % 11
  }

  \alternative
  {
    {
      \times 2/3 { b,8[ c d]  }  g,8. b,16
    }
    {
      \times 2/3 { b,8[ d fs]  g[ d b,] } % 12
    }
  }

  \repeat volta 2
  {
    \partial 2 g,4 g ~ |

    \times 2/3 { g8[ fs e] }  fs8.[ b16]  \times 2/3 { e8[ fs g]  a[ b cs'] } | % 13

    d'4 ~  d'16[ c'! b a]  b8.[ d'16]  g4 ~ | % 14

    \times 2/3 { g8[ d b,] }  g,8.[ b16]  c'8.[ e'16]  a4 ~ | % 15

    \times 2/3 { a8[ e cs] }  a,8.[ cs'16]  d'8.[ fs'16]  b4 ~ | % 16

    \times 2/3 { b8[ fs ds] }  b,8.[ ds'16]  e'8.[ as16]  b8.[ g16] | % 17

    fs4 ~  \times 2/3 { fs8[ e fs] }  g!8.[ b16]  as8.[ b16] | % 18

    fs8.[ b16]  as8.[ b16]  e8.[ b16]  as!8.[ b16] | % 19

    d8.[ b16]  as8.[ b16]  cs16[ d e8 ]  b,8.[ g16] | % 20

    as,8.[ g16]  fs4  \times 2/3 { d8[ cs b,] }  fs8.[ fs,16] | % 21

    \times 2/3 { b,8[ d fs]  a[ gs fs]  gs[ a b] }  d4 ~ | % 22

    \times 2/3 { d8[ e f]  b,[ c d]  gs,[ a, b,] }  e,8.[ gs16] | % 23

    \times 2/3 { a8[ b c'] }  g!8.[ c'16]  fs8.[  c'16]  ds8.[ b16] | % 24

    e8.[ b16]  d!8.[ b16]  c8.[ a16]  cs8.[ as16] | % 25

    b4 ~  b16[ ds' e' fs']  \times 2/3 { g'8[ fs' e']  e'[ d' cs'] } | % 26

    \times 2/3 { cs'8[ b a]  a[ g fs]  fs[ e d]  d[ c! b,] } | % 27

    \times 2/3 { b,8[ a, g,]  g,[ a, b,]  cs,[ e, g,]  as,[ b, cs] } | % 28

    \times 2/3 { c!8[ ds fs]  a[ b c']  b[ a g]  fs[ g e] } | % 29

    \times 2/3 { c'8[ b a]  g[ fs e] }  ds8.[ b,16]  fs8.[ b,16] | % 30

    a8.[ b,16]  g8.[ e16]  \times 2/3 { a8[ b c']  b[ a b] } | % 31

    \times 2/3 { e8[ g b] }  e'4 % 32
  }


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
  \header { piece = "5. Tempo di Gavotta" }
  \midi   { }
}

longBeam = #(define-music-function (parser location left right) (number? number?)
#{
  \once \override Beam #'positions = #(cons $left $right)
#})

tiePosition = #(define-music-function (parser location position) (number?)
#{
  \once \override Tie #'staff-position = #$position
#})


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


noStem = { \once \override Stem     #'transparent  = ##t }
noHead = { \once \override NoteHead #'transparent  = ##t }


hShift = #(define-music-function (parser location hshift) (number?)
#{
  \once \override NoteColumn #'force-hshift = #$hshift
#}
)


upper = \relative c'
{
  \clef treble 
  \key e \minor
  \time 2/2

  \repeat volta 2
  {
    r8 r16 e  fs8.[ ds16]  c'8.[ a16]  b8.[ gs16] | % 1

    f'8.[ ds16]  e8.[ a,16]  g!8 r  fs! r | % 2

    << { r8       r16 b  cs8.[      as16]  g'8.[       e16]  fs8.[       ds16]  } \\
       { e,16[ fs g8] ~  g16[ e fs8] ~     fs16[ ds e8] ~    e16[ a, a'8] ~     } >> | % 3

    << { c'8.[        as16]  b8.[         e,16]  d!8      r       cs      r     } \\
       { a16[ fs g8] ~       g16[ e fs8] ~       fs16[ b, b'8] ~  b16[ gs cs!8] } >> | % 4

    << { b16[ cs d8] ~     d16[ f, d'8] ~     d16[ b c8] ~     c16[ ef, c'8] ~    } \\
       { b8.[        c16]  gs8.[        e16]  a8.[       g16]  fs8.[         d16] } >> | % 5

    << { c'16[ a b8] ~      b16[ fs' g8] ~      g16[ g, a8] ~     a16[ e' fs8] ~     } \\
       { g,8.[       fs16]  e8.[         cs16]  fs8.[       e16]  ds8.[         b16] } >> | % 6

    << { fs''16[ g, c8] ~     c16[ a b8] ~      b16[ gs a8] ~      a16[ d,! d'8] ~    } \\
       { e,8.[          g16]  ds8.[      fs16]  e8.[        c'16]  fs,8.[        b16] } >> | % 7

    << { d16[ b c8] ~     c16[ a \tiePosition #4
			         b8] ~       b16[ e, e'8] ~      e16[ cs ds8]      } \\
       { gs,8.[     a16]  g8.[       ds'16]  \longBeam #-3 #-4
					     e8.[         c16]   a8.[         b16] } >> | % 8

    << { e8.[    g16]  fs8.[    b16]  e,8.[    a16]  cs,8.[         g'!16] } \\
       { g,8[ b]       a   [ b]       gs  [ a] ~     a16  [ e' a,8] ~      } >> | % 9

    << { fs'8.[ fs16]  e8.[ a16]  d,8.[ g16]  b,8.[        f'16] } \\
       { a,8[  b]      g[ a]      fs[ g] ~    g16[ d' g,8] ~     } >> | % 10

    << { e'8[ e]      a,[ d]      g,[ c]      fs,[ b]     } \\
       { g8.[   e16]  fs8.[ d16]  e8.[  c16]  d8.[   b16] } >> | % 11

    << { e8[ a] ~             a16[ d, g8] ~     g16[ fs32 e c'!8] ~      c16[ b32 as e'8] ~    } \\ 
       { c,8.[  a16]  \bc \su b8.[        g16]  a8.[              fs16]  g8.[             e16] } >> | % 12

    << { 	 e''16[ d32 cs d16 cs32 b]  cs16[ d32 e d16 cs32 b]  as16[ gs32 fs g'!8] ~     g16[ e fs8] ~     } \\
       { \bc \su fs,,4			    g8[	        gs]  	     fs8 	   b16\rest b  cs8.[       as16] } >> | % 13

    << { fs''16[ ds e8] ~     e16[ a, a'8] ~  	  a16[ fs g8] ~      g16[ e fs8] ~     } \\
       { g,8.[ 		e16]  fs8.[ 	   ds16]  c'!8.[      as16]  b8.[ 	 e,16] } >> | % 14

    << { fs'16[ b, b'8] ~  b16[ gs as8]      b8[ g]		 e[ fs       ] } \\
       { d,!8	   r	   cs	   r \bc \su b8.[ \tc \sd d'16]  cs8.[  fs,16] } >> | % 15

    << { ds'8[ e] ~     e[ gs]       a[ fs]  	  d![ e]      } \\
       { b8.[     d16]  gs,8.[ d'16]  cs8.[ cs16]  b8.[ e,16] } >> | % 16

    << { cs'8[ d] ~      d[ fs]        g16[ d g8] ~      g16[ e fs8] ~    } \\
       { a,8.[    c!16]  fs,8.[ c'16]  b8.[       b16]   c8.[        a16] } >> | % 17

    << { fs'16[ ds e8] ~     e16[ cs ds!8]        e16[ fs32 g a b c!16]  d,16[ e32 f g a b16] } \\
       { b,8.[         g16]  a8.[          fs16]  g8.[            e16]   f8.[            d16] } >> | % 18

    << { c'16[ d32 e f g a16]  b,16[ c32 d e f! d16]         c8.[                b16]  c8.[       c16] } \\
       { e,8.[           c16]  d8.[             b16] \bc \su a16[ \tc \sd e' a8] ~     a16[ e a8] ~    } >> | % 19

    << { b8 r       a r          e' r        d! r       } \\
       { a8.[ e16]  fs8.[ ds16]  c'8.[ a16]  b8.[ gs16] } >> | % 20

    << { gs'8 r        a r  	   r16 b, ds! e  r a,32 b c!16 b32 a } \\
       { f '8.[ ds16]  e8.[ a,16]  g!8    r  	 fs!      r          } >> | % 21

    << { g8[     g]  ~  g[      g]  ~  g[      fs] ~  fs[    f]  ~ } \\
       { r16 ds[ e8] ~  e16[ bf e8] ~  e16[ cs d8] ~  d16[ af d8] ~ } >> | % 22

    << { f8[    e]  ~  e[       e]   ~  e[      ds] ~  ds[    g]  } \\
       { d16[ b c8] ~  c16[ fs, c'8] ~  c16[ as b8] ~  b16[ b e8] } >> | % 23

    << { r8        a      r         as    r16 b32[ fs ds16 b32 as]  b16[ ds32 fs b8] } \\
       { r16 b,16[ fs'8]  r16 cs16[ g'8]  s2					     } >> | % 24
  }

  \repeat volta 2
  {
    r1 | % 25
    r1 | % 26

    r8 r16 fs  e8.[ g16]  as,8.[ cs16]  b8.[ d16] | % 27

    s2 s4 cs8 r | % 28

    d16[ g fs e]  d[ fs b,8] ~  b16[ gs f'8] ~  f16[ d gs8] ~ | % 29

    gs16[ f e d]  c[ e a,8] ~  a16[ fs! ef'8] ~  ef16[ c fs c] | % 30

    r8 r16 b'  a8.[ c16]  ds,8.[ fs16]  e8.[ g16] | % 31

    as,8.[ c!16]  b8.[ ds16]  << { e8 r  fs r    } \\
				 { r8 b,[ c b] ~ } >> | % 32

    << { g'16[ e e'8] ~  e16[ cs d8] ~      d32[ cs! b16 cs32 b a16]  a'32[ g! fs16 g32 fs e16] } \\
       { b,16  r r b'    a8.[        fs16]  gs8          r 	      r4 		        } >> | % 33

    << { fs'16[ a, d8] ~  d16[ b c8] ~     c32[ b a16 b32 a g16]  g'32[ f e16 f32 e d16] } \\
       { r8        r16 a  g8.[       e16]  fs8        r		  r4			 } >> | % 34

    << { e'8.[        e16]  f8.[       d16]  e8.[        c16]  d8.[        b16] } \\
       { r16 g16[ c8] ~     c16[ a b8] ~     b16[ gs a8] ~     a16[ fs! g] ~    } >> | % 35

    << { c8.[       a16]  b8.[       gs16]  a8[ b]      c[ cs]    } \\
       { g16[ e f8] ~     f16[ d e8] ~      e8.[ gs!16] a8.[ g16] } >> | % 36

    << { ds'8[   e]    ds[ e]   fs8. [     b16]  a8.[        c16] } \\
       { fs,,!8[ b] ~  b[  cs]  ds!16[ b a g]    fs16[ a c8] ~    } >> | % 37

    << { d8.[     fs16]  e8.[      g16]  as,8.[    c!16]  b8.[         ds16] } \\
       { c16[ c b a]     g[ b e,8] ~     e16[ g fs e]     ds16[ fs a8] ~     } >> | % 38

    << { e'8      r      fs     r      g4 ~         g16[ d fs8] } \\
       { a,16[ fs g e']  a,[ e' b ds]  e,[ e' d c]  b4 ~        } >> | % 39

    << { fs'16[ f e d]  c4 ~        c16[ c b a]  gs16[ b   d8] ~ } \\
       { b4 ~           b16 e, a8 ~ a      r     r         r16 f } >> | % 40

    << { d'16[ b c a']  d,[ a' d, gs]  a,[ ds e8] ~     e16[ ds e8] ~     } \\
       { e,8[    c'] ~  c[     b]      a8.[       c16]  fs,8.[      g!16] } >> | % 41

    << { e'32[ ds cs16 ds32 cs b16]  b'32[ a g16 a32 g fs16]  g8.[          g16]  cs,!8.[     d16] } \\
       { a8	  r		     r4			      r16 as16[ b8] ~     b16[ as b8] ~    } >> | % 42

    << { e8 	       r	      r4			  r8      r16   e  c'!8.[      a!16] } \\
       { b,32[ as gs16 as32 gs fs16]  fs'32[ e ds16 e32 ds cs16]  ds16[ b \tiePosition #2.5
									  g'!8] ~  g16[ e fs8] ~     } >> | % 43

    << { b8.[         g16]  a8.[          fs16]  g4 ~  		      g16[ fs32 e fs g a16] } \\
       { fs16[ ds e8] ~     e16[ cs ds!8]        e16[ d32 c b c d16]  c4 		    } >> | % 44

    << { ds16[ b' a   g]  fs[ a c8] ~     c16[ c, b a]     g[ b e8] ~    } \\
       { r8       r16 b   a8.[      c16]  ds,8.[    fs16]  e8.[     g16] } >> | %45

    << { e'16[ g, fs e]     ds[ fs a!8] ~       a16[ fs g e']  a,[ e' a, ds] } \\
       { as,8.[      c!16]  b8.[        ds!16]  e8      r      fs     r      } >> | % 46

    << { e'16[ c b a]  g[  b \tieDown e,8] ~  \tieUp \tiePosition #-3 e4 ~  	       	   \tieDown e4 ~	   } \\
       { g4            s4					      e16[ cs8.] ~     \hShift #-.5 cs8		   } \\
       { s4	       s16 \sd  b'8. ~		     \hShift #-.5 \su b8[        bf] ~ \hShift #-.5 bf16[ g cs8] ~ } \\
       { s4	       s4	      				      s4			    s 16  g8. ~    } >> | % 47

    << {	 \sd e  16	    } \\
       {		    	    } \\
       { \hShift #-1 cs'16[ bf a g] } \\
       { \hShift #-1 g  16	    } >>

    << { f16[    a d,8] ~   		 d4 ~             \tieDown     d4 ~          	     } \\
       { s4		    		 d16[ b!8.] ~     \hShift #-.5 b4                    } \\
       { s16 \sd a'8. ~ \su \hShift #-.5 a8[       af] ~  \hShift #-.5 af16[ 	    f! b8] ~ } \\
       { s4		    		 s4		  	       s16   \tieUp f8. ~    } >> | % 48

    << { \sd d8[      c]   } \\
       { 	    	   } \\
       {     b'16[ gs a e] } \\
       {     f8	    	   } >> 

    << { fs8.[         ds16]  c'8.[       a16]  b8.[                          gs!16] } \\
       { r16 a,16[ b8] ~      b16[ gs a8] ~     a16[ \bc \su d,! \tc \sd d'8] ~      } >> | % 49

    << { f'8.[      ds16]  e8.[       a,16]  g!8		     r       fs!     r    } \\
       { d16[ b c8] ~      c16[ a b8] ~      b16[ \bc \su e, \tc \sd e'8] ~  e16[ cs ds8] } >> | % 50

    << { e8[         f] ~  		   f16[b, b'8] ~  b16[ gs a8] ~  		  a16[ gs! d'8] ~ } \\
       { e,16[ d!8.] ~    \tiePosition #-8 d4 ~  	  d8[     c]	 \tiePosition #-6 f!4 ~	          } \\
       { s4		   		   s8 f!8 ~	  f[	  e]	 		  s8	  b'      } \\
       { s4		 		   s4		  s4		 		  s16  gs8. ~     } >> | % 51

    << { \hShift #-.25 	  d'16[ b c8] ~   	c16[ fs, ds'8]  } \\
       { \hShift #1  	  f,8[ e]	    	s16  fs8.	} \\
       { 		    	          	  		} \\
       { \hShift #.25 \su gs8[ a] ~  \sd \tieUp a8[	~    a]	} >>  r16 e'32[ b gs16 e32 ds]  e16[ gs32 b e8] | % 52
  }

  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.ufermata" }
}

lower =
{
  \clef bass
  \key e \minor
  \time 2/2

  \repeat volta 2
  {
    r1 | % 1
    r1 | % 2
    r1 | % 3
    r1 | % 4
    r1 | % 5
    r1 | % 6

    r8 r16 e  fs8.[ ds16]  c'8.[ a16]  b8.[ gs16]  | % 7

    f'8.[ ds'16]  e'8.[ a16]  g!8 r  fs! r | % 8

    e16[ e, e8] ~ e16[ cs d8] ~ d32[ cs! b,16 cs32 b, a,16]  a32[ g fs16 g32 fs e16] | % 9

    d16[ d, d8] ~  d16[ b, c8] ~  c32[ b, a,16 b,32 a, g,16]  g32[ f e16 f32 e d16] | % 10

    c16[ g c'8] ~  c'16[ a b8] ~  b16[ g a8] ~  a16[ fs g8] ~ | % 11

    \sd g16[ e fs8]  g8[ e]  cs[ ds]  e[ cs] \sn | % 12

    \sd as,8[ b,]  e[es]  fs b,\rest  as b,\rest \sn | % 13

    b8 r  r4  e8 r  d! r | % 14

    g8.[ fs16]  e8.[ fs16]  b16[ b, b8] ~  b16[ gs a8] ~ | % 15

    a32[ gs fs16 gs32 fs e16]  e'32[ d' cs'16 d'32 cs' b16]  a16[ a, a8] ~  a16[ fs g8] ~ | % 16

    g32[ fs e16 fs32 e d16]  d'32[ c'! b16 c'32 b a16]  g16[ b e'8]  a8[ d'] | % 17

    g8[ c']  fs[ b]  e16[ g c'!8] ~  c'16[ a b8] ~ | % 18

    b16[ gs a8] ~  a16[ fs! gs!8]  a16[ g32 fs g16 fs32 e]  fs16[ g32 a g16 fs32 e] | % 19

    ds16[ b, e8] ~  e16[ a, b,8] ~  b,16[ gs, a,8] ~  a,16[ d,! d8] ~ | % 20

    d16[ b, c8] ~  c16[ a, b,8] ~  b,16[ e, e8] ~  e16[ cs ds8] | % 21

    e8.[ d'!16]  cs'8.[ a16]  d8.[ c'16]  b8.[ g16] | % 22

    c8.[ b16]  a8.[ fs16]  b,8.[ a16]  g8.[ e16] | % 23

    ds8.[ b16]  g8.[ e16]  b,2 | % 24
  }

  \repeat volta 2
  {
    r8 r16 b  a8.[ c'16]  ds8.[ fs16]  e8.[ g16] | % 25

    as,8.[ c!16]  b,8.[ ds16]  e8 r  fs r | % 26

    << { s1							 } \\
       { g16[ c' b a]  g[ b e8] ~  e16[ cs d8] ~  d16[ fs b,8] ~ } >>| % 27

    << { es8.[           g!16]  fs8.[         as16]  b8     r     s4 	       } \\
       { b,16[ gs, as,8] ~      as,16[ cs e!8] ~      e16[ c d b]  e[ b fs as!] } >> | % 28

    b4 ~  b16[ a! gs fs]  e8.[ d16]  c8.[ \prall b,16] | % 29

    a,8[ a] ~  a16[ g! fs! e]  d8.[ c16]  b,8.[ a,16] | % 30

    << { b8[      g] ~  g[   fs]  ~  fs[      b]   ~  b[       g]   ~ } \\
       { g,16[ b, e d]  c[ e a,8] ~  a,16[ fs, g,8] ~  g,16[ b, e,8] ~ } >> | % 31

    << { g8[       fs]   ~  fs        r        s2 			     } \\
       { e,16[ cs, ds,8] ~  ds,16[ fs, a,8] ~  a,16[ fs, g, e]  a,[ e b, ds] } >> | % 32

    e8.[ g16]  fs8.[ b16]  e8.[ a16]  cs16[ e a, cs] | % 33

    d8.[ fs16]  e8.[ a16]  d8.[ g16]  b,16[ d g, b,] | % 34

    c8[ a]  d[ g]  c[ f]  b,[ e] | % 35

    a,8[ d] ~  d16[ gs, c8] ~  c16[ b,32 a, f8] ~  f16[ e32 ds a8] ~ | % 36

    a16[ g32 fs! g16 fs32 e]  fs16[ g32 a g16 fs32 e]  b8 r r4 | % 37

    r1 | % 38

    r2 r8 r16 e'  d'8.[ f'16] | % 39

    gs8.[ b16]  a8.[ c'16]  ds8.[ f16]  e8.[ gs!16] | % 40

    a8 r  b r  c'8.[ e'16]  a8.[ c'16] | % 41

    fs8.[ a16]  ds16[ fs b, ds]  e8.[ b,16]  e8.[ g16] | % 42

    cs8.[ e16]  as,16[ cs fs, as,]  b,[ cs!32 ds e fs g16]  a,16[ b,32 c d e fs16] | % 43

    g,16[ a,32 b, c d e16]  fs,16[ g,32 a, b, a, b,16]  e,8.[ e16]  a,8.[ c16] | % 44

    b,8 r  r4 b8 r  r4 | % 45

    b,8 r  r r16 b  c'8[ b]  a[ b] | % 46

    e4 ~  e16[ d cs b,]  a,8.[ g,16]  f,8.[ e,16] | % 47

    d,8[ d] ~  d16[ c! b,! a,]  g,8.[ f,16]  e,8.[ d,16] | % 48

    c,8 r  r4  e8 r  r4 | % 49

    a8 r  g r  \sd c8.[ b,16]  a,8[ b,] \sn | % 50

    e,8.[ b16]  gs8.[ e16]  c8.[ f16]  d8.[ b,16] | % 51

    gs,8.[ e16]  c8.[ a,16]  e,2 | % 52
  }


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
  \header { piece = "6. Gigue" }
  \midi   { }
}
