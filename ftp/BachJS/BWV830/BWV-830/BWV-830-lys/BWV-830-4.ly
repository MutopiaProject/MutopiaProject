% This file prints Bach BWV 830, movement 4. Sarabande

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
