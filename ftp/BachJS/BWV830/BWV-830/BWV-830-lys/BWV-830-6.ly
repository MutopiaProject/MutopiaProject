% This file prints Bach BWV 830, movement 6. Guige

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
