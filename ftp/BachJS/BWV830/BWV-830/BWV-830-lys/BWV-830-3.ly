% This file prints Bach BWV 830, movement 2. Allemande

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

