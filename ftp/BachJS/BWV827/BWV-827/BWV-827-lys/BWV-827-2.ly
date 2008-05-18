% This file prints Bach BWV 827, movement 2. Allemande

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
