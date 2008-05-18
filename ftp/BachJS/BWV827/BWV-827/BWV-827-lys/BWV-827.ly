% This file prints Bach BWV 827, all 6 movements

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

upper = \relative c'
{
  \clef treble 
  \key a \minor
  \time 3/8

  r16 a' b gs a c      | % 1
  d,16 b' e, d c b     | % 2
  c8 e a ~             | % 3
  a8 gs b ~            | % 4
  b16 a gs a b c       | % 5
  d16 f b, f' e d      | % 6
  c8 b16 a f'8 ~       | % 7

  f8 e16 d g8          | % 8
  e16 c d b c e        | % 9
  a16 b, c a b d       | % 10
  g16 a, b gs a c      | % 11
  f8 d g,              | % 12
  e'8 c f,             | % 13
  d'16 e, f d e gs     | % 14
  c8 b a               | % 15

  gs16 a b f e d       | % 16
  c16 e f d e a        | % 17
  b16e, f d e b'       | % 18
  c16 e, f d e c'      | % 19
  b16 a gs b e,8       | % 20
  r16 e' f d e c       | % 21
  b16 e f d e b        | % 22
  a e' f d e a,        | % 23

  gs16 b e, c' d b     | % 24
  c16 e a, gs a c      | % 25
  fs,16 a d, b' c a    | % 26
  b16 d g, fs g b      | % 27
  e,16 g c, a' b g     | % 28
  a16 c fs, e fs a     | % 29
  ds,16 fs b, g' a fs! | % 30
  g8 b e ~             | % 31

  e8 ds fs ~           | % 32
  fs16 e fs ds e g     | % 33
  a,16 fs' b, a g fs   | % 34
  g8 fs16 e c'8 ~      | % 35
  c8 b16 a d8          | % 36
  b16 c d e fs g       | % 37
  a16 c fs, c' b a     | % 38
  g8 b e,              | % 39

  c8 a' d,             | % 40
  b8 g' c,             | % 41
  a16 fs b e, fs a     | % 42
  d16 e, fs ds e g     | % 43
  c16 ds, e cs ds! fs  | % 44
  b16 e, a b, c a      | % 45
  b16 ds fs a g fs     | % 46
  g16 b c a b e        | % 47

  fs16 b, c a b fs'    | % 48
  g16 b, c a b g'      | % 49
  fs16 e ds fs b,8 ~   | % 50
  b8 e16 fs g8         | % 51
  a,8 g16 fs g a       | % 52
  b16 g a fs g e'      | % 53
  fs,4. \prall ~       | % 54
  fs16 b e ds e g      | % 55

  c,16 e a, fs' g e    | % 56
  fs16 a d, cs d fs    | % 57
  b,16 d g, e' fs ds   | % 58
  e16 g c, b c e       | % 59
  a,16 c fs, ds' e cs  | % 60
  ds16 fs b, g' a fs   | % 61
  g4. ~                | % 62
  g16 e fs ds e c'     | % 63

  b16 e, fs ds e b'    | % 64
  a8 fs8. e32 fs       | % 65
  e4. ~                | % 66
  e16 b cs e g d       | % 67
  e16 g bf g a f       | % 68
  g16 e cs bf a g'     | % 69
  f4. ~                | % 70
  f16 a, b d f c       | % 71

  d16 f af f g e       | % 72
  f16 d b af g f'      | % 73
  e4. ~                | % 74
  e16 a b gs a c       | % 75
  d,16 gs a fs gs b    | % 76
  c,16 a' f! d b d     | % 77
  gs,8. fs16 e8        | % 78
  r16 e' f d e c       | % 79

  b16 e f d e b        | % 80
  a e' f d e a,        | % 81
  gs16 b e, c' d b     | % 82
  c16 e a, f' g e      | % 83
  f16 a d, c d f       | % 84
  b, d g, e' f d       | % 85
  e16 g c, b c e       | % 86
  a,16 c f, d' e c     | % 87

  d16 f b, a b d       | % 88
  gs,16 b e, c' d b    | % 89
  c16 e a, gs a c      | % 90
  d16 f a, gs a d      | % 91
  e16 g a, gs a e'     | % 92
  f4. ~                | % 93
  f16 a, b gs a f'     | % 94
  e a, b gs a e'       | % 95

  d8 b8. a32 b         | % 96
  a16 e f d e a        | % 97
  b16 e, f d e b'      | % 98
  c16 e, f d e c'      | % 99
  b16 a gs fs e d      | % 100
  c8 a' gs             | % 101
  d8 a' gs             | % 102
  e8 a c ~             | % 103

  c16 a b gs a c       | % 104
  f4. ~                | % 105
  f16 d e cs d f       | % 106
  b4. ~                | % 107
  b16 c, d b c e       | % 108
  a16 b, c a b d       | % 109
  g16 a, b gs a c      | % 110

  f8 d g,!             | % 111
  e' c f,              | % 112
  d'16 e, f d e gs     | % 113
  c16 ds, e cs ds fs   | % 114
  a16 fs ds c! b a'    | % 115
  gs16 b d! f! e8 ~    | % 116
  e16 a, c b a gs      | % 117
  a4. \fermata         | % 118
}

lower =
{
  \clef bass
  \key a \minor
  \time 3/8

  a8 a, a ~ 	       	 | % 1
  a gs e    	       	 | % 2
  r16 a b gs a c'      	 | % 3
  d16 b e d c b,       	 | % 4
  c8 e a ~             	 | % 5
  a8 gs b ~            	 | % 6
  b16 a gs a b c'      	 | % 7

  d'16 f' b f' e' d'   	 | % 8
  c'8 e' a             	 | % 9
  f'8 d' g             	 | % 10
  e'8 c' f             	 | % 11
  d'16 b c' a b d'     	 | % 12
  g'16 a b g a c'      	 | % 13
  f'16 gs a fs gs b    	 | % 14
  e'16 a d' e f d      	 | % 15

  e8 gs e              	 | % 16
  a a, a               	 | % 17
  r16 gs a fs gs e     	 | % 18 the rest is missing in the source
  a8 a, c              	 | % 19
  e16 f e d c b,       	 | % 20
  a,8 a a,             	 | % 21
  g,8 g g,             	 | % 22
  f,8 f f,             	 | % 23

  e,8 gs, e,           	 | % 24
  a,8 b, c             	 | % 25
  d8 fs d              	 | % 26
  g8 a b               	 | % 27
  c'8 e c              	 | % 28
  fs8 g a              	 | % 29
  b8 ds b,             	 | % 30
  e16 e' fs' ds' e' g' 	 | % 31

  a16 fs' b a g fs     	 | % 32
  g8 b, e ~            	 | % 33
  e8 ds fs ~           	 | % 34
  fs16 e ds e fs g     	 | % 35
  a16 c' fs c' b a     	 | % 36
  g8 fs16 e c'8 ~      	 | % 37
  c'8 b16 a d'8        	 | % 38
  b16 g a fs g b       	 | % 39

  e'16 fs g e fs a     	 | % 40
  d'16 e fs d e g      	 | % 41
  c'8 a d              	 | % 42
  b8 g c               	 | % 43
  a16 b, c a, b, ds    	 | % 44
  g8 fs e              	 | % 45
  ds8 b, ds            	 | % 46
  e8 e, e ~            	 | % 47

  e16 ds e cs ds b,    	 | % 48
  e8 e, e              	 | % 49
  b,16 c b, a, g, fs,  	 | % 50
  g,16 b, c a, b, g,   	 | % 51
  fs,16 b, c a, b, fs,	 | % 52
  e,16 b, c a, b, e,     | % 53
  ds,16 fs, b, g, a, fs, | % 54
  g,8 fs, e,             | % 55

  a,8 c a,               | % 56
  d8 e fs                | % 57
  g8 b g                 | % 58
  c'8 e c                | % 59
  fs8 a fs               | % 60
  b8 ds b,               | % 61
  e16 e' fs' ds' e' g'   | % 62
  a8 c' fs               | % 63

  g8 b e                 | % 64
  c'8 a b                | % 65
  e16 fs g a bf d        | % 66
  cs8 e cs               | % 67
  a,4 r8                 | % 68
  e,8 a, cs              | % 69
  d16 e f g af c!        | % 70
  b,8 d b,               | % 71

  g,4 r8                 | % 72
  d,8 g, b,              | % 73
  c16 d e b, c a,        | % 74
  f,8 f r                | % 75
  b,8 b r                | % 76
  a8 d f                 | % 77
  e16 f e d c b,         | % 78
  a,8 a a,               | % 79

  g,8 g g,               | % 80
  f,8 f f,               | % 81
  e,8 gs, e,             | % 82
  a,8 c a,               | % 83
  d8 e f                 | % 84
  g8 b, g,               | % 85
  c8 d e                 | % 86
  f8 a f                 | % 87

  b,8 d b,               | % 88
  e8 gs e                | % 89
  a8 c' a                | % 90
  f8 e d                 | % 91
  cs8 b, cs              | % 92
  d16 f a e f a          | % 93
  d'8 f' b               | % 94
  c'8 e' a               | % 95

  f8 d e                 | % 96
  a8 a, a ~              | % 97
  a16 gs a fs gs e       | % 98
  a8 a, a                | % 99
  e16 f e d c b,         | % 100
  a,16 e f d e a,        | % 101
  b,16 e f d e b,        | % 102
  c16 e f d e c          | % 103

  d4. ~                  | % 104
  d16 b, c a, b, d       | % 105
  gs4. ~                 | % 106
  gs16 e f d e gs        | % 107
  c'8 e' a               | % 108
  f'8 d' g               | % 109
  e'8 c' f               | % 110

  d'16 b c' a b d'       | % 111
  g'16 a b gs a c'       | % 112
  f'16 gs a fs gs b      | % 113
  e'16 fs gs e fs a      | % 114
  ds8 fs ds              | % 115
  e16 d! b, gs, b, d     | % 116
  c8 d e                 | % 117
  a,4. \fermata          | % 118
}

\score 
{
  \new PianoStaff 
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  
  \layout { }
  \header { piece = "1. Prelude" }
  \midi   { }
}

% Beam Count function
bc = #(define-music-function (parser location left right) (integer? integer?)
#{
\set stemLeftBeamCount  = #$left
\set stemRightBeamCount = #$right   
#})

% force-hshift function
hs = #(define-music-function (parser location hshift) (number?)
#{
  \once \override NoteColumn #'force-hshift = #$hshift
#})

longStem = #(define-music-function (parser location length) (number?)
#{
  \once \override Stem #'length = #$length
#})

noStem = 
{ 
  \once \override Stem #'transparent = ##t 
  \once \override Stem #'length      = #12
}


upper = \relative c''
{
  \clef treble 
  \key a \minor

  \repeat volta 2
  {
    \partial 4 e8 ~ e32 d c b |

    % 1
    c16 b32 a d 16 c32 b e16 d32 c f16. a,32 

    << {                          \stemUp   \tieUp   gs32[ a b d         ~                           d 8] \noBeam ~ d 8 ~ d16 c32 b } 
       	 \new Voice { \voiceOne   \stemDown \tieDown s 16    b16 \noBeam ~ \stemUp \shiftOnn  \tieUp \override Stem #'length = #8
                                                                                                     b 8  \noBeam ~ b 8   s8        }

       	 \new Voice { \voiceThree \stemDown \tieDown gs 8        \noBeam ~ \stemUp \shiftOnnn \tieUp gs8  \noBeam ~ gs8   s8        } 
       	 \new Voice { \voiceTwo                      s  8                                            e 8  \noBeam ~ e 8   s8        } >>  |

    % 2
    << {            c'4 ~               c16. a32 d8      f, \prall e ~  e32[ g f e     a16 b32 c] ~ } \\
       {            r32 b[ a gs a16 e]  f8.         f16  d8        c    s4                          } \\
       { \voiceFour s4                  s8. \hs #.4 d16  s4             s16.     \tieUp e32 ~ e8           } >> |
                                                                                 % The source has e8. here, 
					      	                                 % but that's an abuse of notation 
                                                                                 % that LilyPond doesn't support. 
	 					                                      

% Without a line break here, measures 2 and 3 end up on the same line,
% and then the e32 ~ e8 tie in measure 2 gets squeezed down to nothing,
% and I couldn't find a good way to unsqueeze it.
\break

    % 3
    << { c'4 ~              c32[ a g fs! b16 c32 d] ~  d4 ~                d32[ f e d      gs16 a32 b] } \\
       { fs,16[ g32 a d,8]  s4                         gs16[ a32 b e,8] ~  e32  s16 d'32 ~ d8 ~        } >>  |
                                                                                    % The source has d8. here.  
                                                                                    %  cf. measure 2

    % 4
    << { e8.            a16 ~ a16.[ f32 e16. d32] } \\
       { d32[ d c b c8]       b4                  } >> \override Script #'padding = #2
                                                       c8 \prall b16 a e'16.[ \bc #2 #3 d32 \bc #3 #3 c b c e]   |

    % 5
    g16.[ \bc #2 #3 d32 \bc #3 #3 c b c e] << { a4 ~            a32[ d, e fs g16. a32] b4 ~ } \\
          				      { r16 c, d16. a32 b4                     s4   } >> |

% Without a page break here, the downprall in measure 6 gets pushed into the beams in measure 4.
% The score takes 3 pages either way.
\pageBreak

    % 6
    << { b'32[ e, fs gs a16. b32]   c16.[ fs,!32 g16. \downprall a32]  ds,16.[ \prall    cs32          b8] ~      b32[ b cs! ds! cs16. \prall b32] } \\
       { r8             e, \noBeam  a8.               g16              fs 16.[ \bc #2 #3 e32 \bc #3 #3 ds e fs16] r8             fs!               } >> |

    % 7
    << { e'32[ b c! d! c16. \prall b32]  fs'4                            g,32[ e' fs! g fs16. \prall e32]  as4                              } \\
       { s4                              \once \override Beam  #'positions = #'(-5 . -5)
          			         fs32[ a, b c b16. ^\prall a32]  g4                                as'32[ e fs g fs16. ^\prall e32] } \\
       { \voiceFour r8  e,8 \noBeam  ~   \once \override Beam  #'positions = #'(-7 . -7)  
          			         \hs #-1 e8   \hs #.3 ds         s4                                s4                               } >> |

    % 8
    << { ds'32[ a'! g fs g16. e32] ~  e8           fs16. ds32  ds8[( e ]) } \\
       { ds4                          c16[ b32 a ~ a8]         a 8[  gs]  } \\
       { s4                           s4                       b4         } >>
  }

  \repeat volta 2
  {
    \stemDown b16[ d!32 c b c d16] |

    % 9
    << { s4                        s4                    c 16 d32 e32  ~       e8   s4                     } \\
       { gs,16 a32 b e,16 gs!32 b  d16 c32 b f'16 e32 d  s 8                   a8 ~ a32[ b c d e16 f32 g!] } \\
       { \voiceFour s4             s4                    c,8 ~ \noBeam \stemUp c8   s4                     } >> |


    % 10
    << { s4                        s4                     s16 s32 \noStem a'32 ~ \longStem #8 a 8    s8         s16 s32 \noStem bf 32  ~ } \\
       { cs,16 d32 e a,16 cs!32 e  g16 f32 e bf'16 a32 g  f16 g32         a 32                d,8 ~  d32[ f e d g16 a32         bf!  ]   } \\
       { s4                        s4                     s8                                  f 8    s4                                  } >> |

    % 11
    << { bf4                           s8        s16 s32 \noStem a32 ~ a4                               s4                    } \\
       { e16[ f32         g     c,8] ~ c32 e d c f16 g32         a32   d,16[ e32         f32   bf,8] ~  bf32 d c bf e16 f32 g } \\
       { s16  s32 \noStem g32 ~ g 8    s4                              s 16  s32 \noStem f32 ~ f  8     s4                    } >> |

    % 12
    << { a,32[ g' f e f16 d] ~  d[ cs32 d e d cs16]  d4                   s4                 } \\
       { a4                     g4 ~                 g32[ g f e f g a16]  d,32[ f a c b16 a] } >> | 

    % 13
    << { s4                  f'4 ~             f32[ f e d e16. c32]  a4 ~                   } \\
       { b16.[ c32 b a b d]  r16 c16 d16. b32  c4                    r32 g32[ f e f16. d32] } >> | 

    % 14
    << { a'32[ gs a b e, d' c b]  \override Tie #'staff-position = #'1.5
                                  c  8[ ~     c  32 c b a]  gs!4 \prall              a8      b       } \\
       { b,8          e           c'32[ a b c ds, 8]        r8          r32 f!32 e d r f e d r f e d } >> |

    % 15
    << { r32 a'[ b c b16. \prall a32]  r32 b[ c d c16. b32]  r32 e[ fs g! fs16. e32]  r32 a[ b c b a gs a] } \\
       { c,,4                          gs'4                  a4                       ds4                  } >> |
     
    % 16
    << { d!32[ f e d e b c a]  r16 a b16. gs32  gs8 a  } \\
       { s4                    e8[   d]         d[  c] } \\
       { s4                    e4               e4     } >>
  }

  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.ufermata" }
}

lower =
{
  \clef bass
  \key a \minor

  \repeat volta 2
  {
    \partial 4 r16 a,16 c e  				   		       	    	       |
    a8[ b]  c'[ d']  e'[ ~ e'32 c' b a]  gs16[ a32 b e16 fs32 gs!]	       	    	       | % 1
    a8[ c']  d'[ g!]  c'[ ~ c'32 c e g]  c'8 ~ c'16 b32 a      		       	    	       | % 2
    d'8[ ~ d'32 d fs a]  d'8 ~ d'16 c'32 b  e'8[ ~ e'32 c' b a]  << { gs4   ~ } \\
       							            { gs8 e   } >> 	       | % 3
    << { gs8[ a] ~  a[  gs]  \override Staff.NoteCollision #'merge-differently-dotted = ##t
			     a4  ~                                   a 16. s32 s8         } \\
       { c 8[ f]    d[  e ]  a16.[  % The source has a8. here, which is obviously wrong.
			           \bc #2 #3 e32 \bc #3 #3 d c d e]  a,16.[ a32 g16. f32] } \\
       { s4       f8 s8  s4                                      s4                       } >> | % 4
    << { r8 g r a d' s s4                  } \\
       { e4   fs  g ~  g32 a g fs! g e g b } >>                                	    	       | % 5
    c'4 ~ c'16.[ c'32 b16. a32] b4 a                                           	    	       | % 6
    g4  fs  e8[ g]  cs16.[ e32 as16. fs!32]                                    	    	       | % 7
    c'!8 b16. a32 b8 b, e,4
  }

  \repeat volta 2
  {
    % 8
    r16 e,16 fs, b, |

    % 9
    << { r8 gs  b4      a4                 } \\
       { e4     r8 e  8 a8[ ~ a32 b a gs!] } \\
       { s4     s8 gs!8 s4                 } >> a16.[ e32 c16. e32] |

    % 10
    << { r8   cs8 e4        d8    s8         } \\
       { a,4.        a , 8  d8[ ~ d32 f e d] } \\ 
       { s4       s8 cs ! 8 s4               } >> bf16.[ a32 bf16. g32] | 

    % 11
    c'8[ ~ c'32 e d c]  a16.[ g32 a16. f32]  bf8[ ~ bf32 a g f]  e16.[ f32 g16. e32] | 

    % 12
    cs'8[ d'] a[ a,] << { r8 a4.      } \\
		        { d4     f8 d } >> | 

    % 13
    g8[ d]  b,[ g,]  c4 ~  c16.[ cs32 d16. e32] |

    % 14
    << { f8[ gs,]  a,[ fs,]  e,32 b, c d e8 ~  fs8[ gs] } \\
       { s4        s4        s8  \noStem e8 ~  e4       } >> | 

    % 15
    a8[ e]  b[ e]  c'[ a]  fs[ gs16 a] | 

    % 16
    << { gs8[ a]    } \\ 
       { b,8  c16 d } >> e8[ e,]  a,4
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

  \header { piece = "2. Allemande" }

  \midi   
  {
    \context 
    {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 40 4)
    }
  }

}

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
