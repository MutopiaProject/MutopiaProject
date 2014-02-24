%%!/usr/local/bin/lilypond
%% dax: Chop-28,1.ly with absolute pitches except upper voice.
%% TODO: Dynamics, rallentando and fingering.

\version "2.18.0"
\header {
  title         =       "Prelude"
  opus          =       "Opus 28 No.1"
  composer =     "Frédéric Chopin (1810-1849)"
  enteredby =    "donald_j_axel"

  % mutopia headers.
  mutopiatitle = "Prelude: Op. 28, No. 1"
  mutopiacomposer = "ChopinFF"
  mutopiaopus = "Op. 28"
  mutopiainstrument = "Piano"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  date = "ca. 1837"
  mutopiadate = "c. 1837"
  source = "Edition Peters"
  style = "Romantic"

  maintainer = "Donald Axel"
  maintainerEmail = "dax2@tele2adsl.dk"
  lastupdated =  "2014/02/22"
  
 footer = "Mutopia-2014/02/24-411"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

#(set-global-staff-size 18)

\paper {
	top-margin = 8\mm
	bottom-margin = 6\mm
	system-system-spacing.basic-distance = #19
}

% explicit staff change
staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

% force direction of tie
tu = \tieUp
td = \tieDown
tb = \tieNeutral

%other defs
ignoreClashNote = \override NoteColumn.ignore-collision = ##t
icno = \once \override NoteColumn.ignore-collision = ##t
hideTupletNumber = \override TupletNumber.transparent = ##t
hideTupletBracket = \override TupletBracket.bracket-visibility = ##f
forceStemLeft = \once \override NoteColumn #'force-hshift = #-0.5
forceStemRight = \once \override NoteColumn #'force-hshift = #0.5
noteheadGreen = \override NoteHead #'color = #green
noteheadBlue = \override NoteHead #'color = #blue
noteheadRed = \override NoteHead #'color = #red
noteheadMagenta = \override NoteHead #'color = #magenta
tempoLegend = \markup { \right-align \column { "Agitato" " " } }

adjBeamAngleOne = \once \override Beam.damping = #3
algBeamOne = \once \override Beam.positions = #'( 1.9 . 2.7 )
algBeamTwo = \once \override Beam.positions = #'( -6.0 . -3.8 )
algBeamTre = \once \override Beam.positions = #'( 12.5 . 13.3 )
algBeamQua = \once \override Beam.positions = #'( -5.3 . -3.3 )
thinBeam = {
      \once \override Beam.beam-thickness = #0.35
      \once \override Beam.length-fraction = #0.7 }

adjSlurOne = \shape #'((0.0 . 0.2) (0.0 . 0.5) (-0.8 . 0.3) (0 . 0.0)) Slur
adjSlurTwo = \shape #'((-0.2 . 0.7) (-0.3 . 0.8) (-0.2 . 0.8) (0.2 . 1.6)) Slur
adjSlurTre = \shape #'((0.0 . 0.0) (0.0 . 0.0) (0.0 . 0.2) (0.0 . 0.5)) Slur
adjSlurQua = \override Slur.control-points = #'( ( 0.9888 . -4.9444) ( 2.4722 . -6.0569) ( 8.1583 . -5.9333) ( 10.63 . -5.3152) )

hideMF = \tweak #'stencil ##f\mf

upperOne = \relative c' {
  \voiceOne
  \tempo \tempoLegend
  \ignoreClashNote
  \hideTupletBracket 
  
  \tuplet 3/2 8 {
  % bar 1
    \staffDown\stemUp 
    a16\rest \adjSlurOne \adjBeamAngleOne g(-\hideMF \staffUp c \algBeamOne g'8 a16) |
  }
  \hideTupletNumber

  % bar 2
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
           \staffDown
           \tuplet 3/2 { a,16\rest \stemUp \adjBeamAngleOne g( \staffUp d' }
           \override NoteColumn.ignore-collision = ##f
           \tuplet 3/2 {   \forceStemLeft g8 a16) }  |
  % bar 3
           \tuplet 3/2 { \staffDown a,16\rest \stemUp \adjBeamAngleOne g( \staffUp c } 
           \tuplet 3/2 { \algBeamOne g'8 a16) }  |
  % bar 4
           \tuplet 3/2 { \staffDown a,16\rest \stemUp \adjBeamAngleOne b( \staffUp e } 
           \tuplet 3/2 {b'8 c16) }  |

  % bar 5
           \tuplet 3/2 {\staffUp b16\rest \stemUp e,( a }
           \tuplet 3/2 {e'8 \icno d16) }  |

  % bar 6
	  \tuplet 3/2 {\staffUp b16\rest \stemUp e,( a }        
	  \tuplet 3/2 {e'8  \icno d16) }  |

  % bar 7
          \tuplet 3/2 {\staffUp b16\rest \stemUp e,( g } 
          \tuplet 3/2 {e'8  \icno d16) }  |
  % bar 8
          \tuplet 3/2 { \staffUp b16\rest \staffDown \stemUp \adjBeamAngleOne b,( \staffUp d } 
          \tuplet 3/2 {b'8 a16) }  |
  % bar 9
           \tuplet 3/2 { \staffDown a,16\rest \stemUp  \adjBeamAngleOne  g( \staffUp c}
           \tuplet 3/2 { \algBeamOne g'8 a16) }  |
  % bar 10
           \tuplet 3/2 { \staffDown a,16\rest \stemUp \adjBeamAngleOne g(  \staffUp d'}
           \tuplet 3/2 { g8 a16) }  |
  % bar 11        
           \tuplet 3/2 { \staffDown a,16\rest \stemUp \adjBeamAngleOne g( \staffUp c } 
           \tuplet 3/2 { \algBeamOne g'8 a16) }  |
  % bar 12
           \tuplet 3/2 {e16\rest \staffDown \stemUp \adjBeamAngleOne b(  \staffUp e }
           \tuplet 3/2 {b'8 c16) }  |

  % bar 13
           \tuplet 3/2 {b16\rest cis,( f }
           \tuplet 3/2 {cis'8 \icno d16) }  |

  % bar 14
           \tuplet 3/2 {b16\rest dis,( g }
           \tuplet 3/2 { dis'8 \icno e16) }  |

  % bar 15
           \tuplet 3/2 { b16\rest g( a }
           \tuplet 3/2 { g'8 \icno f16) }  |

  % bar 16
           \tuplet 3/2 {b,16\rest  dis,( g }
           \tuplet 3/2 {dis'8 \icno e16) }  |

  % bar 17
          \tuplet 3/2 { b16\rest^\markup{ \italic {stretto} } e,( a }
          \tuplet 3/2 { e'8 \icno f16) }  |

  % bar 18 pentole
  \override  TupletNumber.transparent = ##f
  \tuplet 5/4 { fis,16[(   b]
                     fis'8[  \icno g16]) }  |

  % bar 19 pentole
  \revert  Beam.positions
  \tuplet 5/4 { gis,16[(  c]   
                     gis'8[  \icno a16]) }  |

  % bar 20 pentole
  \tuplet 5/4 {  ais,16[(  d]
                     ais'8[  \icno b16)] }  |
  % bar 21
           
           \tuplet 3/2 {b,16\rest d(   e }
           \tuplet 3/2  {d'8  \icno c16) }  |
  
  % bar 22
           \hideTupletNumber
           \tuplet 3/2 {b,16\rest b(    c } 
           \tuplet 3/2  {b'8 \icno  a16) }  |

  % bar 23 pentole
           \override  TupletNumber.transparent = ##f
           \tuplet 5/4 { a,16[(  c]
                       a'8[ \icno  g16]) }  |

  % bar 24 % From bar 7
           \tuplet 3/2 {b,16\rest e,(  g   }
           \tuplet 3/2 {e'8 \icno d16) }  |

  % bar 25 pentole
  \tuplet 5/4 { \staffDown \adjBeamAngleOne g,,16([ \staffUp c] 
                    g'8[ a16] ) }  |

  % bar 26 pentole
  \tuplet 5/4 {  \stemUp e16[( g] 
                    e'8[ \icno d16] ) }  |

  % bar 27
           \tuplet 3/2 { b16\rest \adjBeamAngleOne \staffDown g,( \staffUp  c   }
           \tuplet 3/2 { g'8 a16) }  |

  % bar 28
           \hideTupletNumber
           \tuplet 3/2 { b16\rest e,(  g } 
           \tuplet 3/2 { e'8 \icno d16) }  |

  % bar 29
                       s8   c[(\accent    |
  % bar 30
                       c])  c[(\accent    |
  % bar 31
                       c])  c[(\accent    |
  % bar 32
                       c])  c\accent      |

  % bar 33 % absolute c'
    s8
    \tuplet 3/2  {s16   s16    
    \once \override Stem.transparent = ##t
    \tieDown
                           \icno c,~ } |
  % bar 34
       \once \override Script.extra-offset = #'(0.0 . 0.7 )       <c    e   >4\fermata        |

}


upperTwo =  {
  \voiceTwo
  \ignoreClashNote
  \hideTupletBracket 

  \once \override TupletBracket.direction = #'1
  \hideTupletBracket
  \hideTupletNumber
  \tu \slurUp
  s8 
  \tuplet 3/2 { \stemDown e'16 c' \staffDown \stemUp a  }      |

  s8
  \override NoteColumn.ignore-collision = ##f
  \tuplet 3/2 { \stemDown \staffUp f'16 d' \staffDown \stemUp a  }      |

  %bar 3 
  s8 \staffUp
  \tuplet 3/2 {\stemDown e'16 c' \staffDown  \stemUp a   }    |

  %bar 4
  s8 \staffUp
  \tuplet 3/2 {\stemDown g'16 e' \staffDown  \stemUp  c' }    |

  %bar 5
  \hideTupletNumber
  s8 \staffUp
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.positions = #'( 2.4 . -0.3)
  \thinBeam
  \tuplet 3/2 { c''16 a' d'  }  |
  
  %bar 6
  s8 \staffUp 
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.positions = #'( 2.4 . -0.3)
  \thinBeam
  \tuplet 3/2 { c''16 a' d'  }  |
  \revert  Beam.font-size
  
  %bar 7
  s8 \staffUp
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.positions = #'( 2.3 . -0.4)
  \tuplet 3/2 { b'16  g' d' }   |
  
  %bar 8
  s8 \staffUp
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.positions = #'( -4.5 . -5.5)
  \tuplet 3/2 { \stemDown f'16  d' \staffDown \stemUp a }   |

  %bar 9  
  s8 \staffUp
  \tuplet 3/2 {\stemDown e'16 c' \staffDown \stemUp a  }     |

  %bar 10
  s8 \staffUp
  \tuplet 3/2 {\stemDown f'16 d' \staffDown \stemUp  a  }    |

  %bar 11
  s8 \staffUp
  \tuplet 3/2 {\stemDown e'16 c' \staffDown  \stemUp  a  }   |

  %bar 12
  s8 \staffUp 
  \tuplet 3/2 {\stemDown  g'16  e' \staffDown \stemUp  c' }  |

  %bar 13
  s8 \staffUp
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.positions = #'( 1.6 . -0.3)
  \tuplet 3/2 { a'16  f'  d' }  |

  %bar 14
  s8
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.positions = #'( 2.6 . 0.0)
  \tuplet 3/2 { c''16 g' e' }  |

  %bar 15
  s8
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.positions = #'( 2.7 . 0.5)
  \tuplet 3/2 { c''16 a' f' }  |

  %bar 16
  s8
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.positions = #'( 2.7 . -0.1)
  \tuplet 3/2 {c''16 g' e' }  |

  %bar 17 % FROM bar 5
  s8 
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.positions = #'( 2.7 . 0.5)
  \tuplet 3/2 {   c''16[   a'        f']  }  |
  
  %bar 18  pentole!
  \tuplet 5/4 { s8   
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.positions = #'( 3.5 .  1.0)
                 d''16[   b'        g']  }  |

  %bar 19  pentole!
  \hideTupletNumber
  \tuplet 5/4 { s8                
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.positions = #'( 4.0 .  1.5)
                 e''16[   c''       a']  }  |

  %bar 20  pentole!
  \tuplet 5/4 { s8   
  \once \override Beam.positions = #'( 4.2 .  1.8)
  \once \override NoteColumn.horizontal-shift = #1
  \thinBeam
                 g''16[   d''       b']  }  |

  %bar 21 %% FROM bar 5
  s8 
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.positions = #'( 4.3 .  2.2)
  \thinBeam
  \tuplet 3/2 {   g''16     e''       c'' }  |
  
  %bar 22
  s8
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.positions = #'( 3.0 .  1.6)
  \thinBeam
  \tuplet 3/2 {   dis''16 c''      a' }  |
 
  %bar 23  pentole!
  \tuplet 5/4 { s8
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.positions = #'( 3.5 .  1.1)
  \thinBeam
                   e''16[ c''       g']  }  |
  
  %bar 24
  s8
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.positions = #'( 1.9 . -0.4)
  \thinBeam
  \tuplet 3/2 { \staffUp \stemUp   b'16[   g'   d'] }      |

  %bar 25 pentole
  \tuplet 5/4 {    s8
  	    \once \override Beam.positions = #'( -6.0 . -6.8)
            \stemDown e'16[   c'  \staffDown  \stemUp  a]  }      |

  %bar 26 pentole
  \tuplet 5/4 {    s8 \staffUp
  	  \once \override NoteColumn.horizontal-shift = #1
  	  \once \override Beam.positions = #'( 2.2 . -0.4)
          b'16[   g'   d']  }      |

  %bar 27
  s8
  \once \override Beam.positions = #'( -6.0 . -6.8)
  \tuplet 3/2 { \stemDown e'16  c' \staffDown \stemUp a }      |

  %bar 28
  s8
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.positions = #'( 2.0 . -0.3)
  \thinBeam
  \tuplet 3/2 { \staffUp \stemUp   b'16[  g'  d'] }      |

  %bar 29
  \adjSlurQua
  \tuplet 3/2 {\staffUp  d'16\rest     \stemUp c'_(        f'   }
  \tuplet 3/2 {\stemDown   a'               f'     <e'g'>)  }   |

  %bar 30
  \tuplet 3/2 {\staffUp  d'16\rest     \stemUp c'_(        f'   }
  \tuplet 3/2 {\stemDown   a'               f'     <e'g'>)  }   |

  %bar 31
  \tuplet 3/2 {\staffUp  d'16\rest     \stemUp c'(        f'   }
  \tuplet 3/2 {\stemDown   a'               f'     <e'g'>)  }   |

  %bar 32
  \tuplet 3/2 {\staffUp  d'16\rest     \stemUp c'(        f'   }
  \tuplet 3/2 {\stemDown   a'               f'     <e'g'>)  }   |

  %bar 33
  s8
  \set tieWaitForNote = ##t
  \tuplet 3/2 {\staffDown \algBeamTre \stemUp e16~  g~  \staffUp  c'   }   |

  %bar 34
  \staffDown
  \crossStaff {< e  g  >4 }
}


lowerOne =  {
  %\noteheadBlue
  \voiceOne
  \ignoreClashNote
  \hideTupletNumber
  \override TupletBracket.transparent = ##t
  \override Stem.details.beamed-extreme-minimum-free-lengths = #'(1.0 0.4 0.2)
  \override Beam.beam-thickness = #0.38
  \override Beam.gap       = #0.5

  \override Beam.positions = #'(-0.6 . -0.5)
  \tuplet 3/2 {s16  \stemDown g8.*2/3[ } \tuplet 3/2 {s8  a16]} |
  \tuplet 3/2 {s16  \stemDown g8.*2/3[ } \tuplet 3/2 {s8  a16]} |
  \tuplet 3/2 {s16  \stemDown g8.*2/3[ } \tuplet 3/2 {s8  a16]} |
  \override Beam.positions = #'( 0.5 .  0.7)
  \tuplet 3/2 {s16  \stemDown b8.*2/3[ } \tuplet 3/2 {s8 c'16]} |
  % bar 5
  \staffUp
  \override Beam.positions = #'(-4.5 . -4.9)
  \tuplet 3/2 {s16  \stemDown e'8.*2/3[ } \tuplet 3/2 {s8  d'16]} |

  % bar 6
  \tuplet 3/2 {s16  \stemDown e'8.*2/3[ } \tuplet 3/2 {s8  d'16]} |

  % bar 7
  \tuplet 3/2 {s16  \stemDown e'8.*2/3[ } \tuplet 3/2 {s8  d'16]} |

  % bar 8
  \override Beam.positions = #'(-0.6 . -0.5)
  \tuplet 3/2 { \staffDown s16  \stemDown b8.*2/3[ } \tuplet 3/2 {s8  a16]} |
  
  \staffDown
  % bar 9 
  \override Beam.positions = #'(-0.6 . -0.5)
  \tuplet 3/2 {s16  \stemDown g8.*2/3[ } \tuplet 3/2 {s8  a16]} |
  \tuplet 3/2 {s16       \stemDown g8.*2/3[ } \tuplet 3/2 {s8  a16]} |
  \tuplet 3/2 {s16       \stemDown g8.*2/3[ } \tuplet 3/2 {s8  a16]} |
  \override Beam.positions = #'( 0.5 .  0.7)
  \tuplet 3/2 {s16       \stemDown b8.*2/3[ } \tuplet 3/2 {s8 c'16]} |

% bar 13
  \override Beam.positions = #'(-5.2 . -4.9)
  \tuplet 3/2 {s16 \staffUp \stemDown cis'8.*2/3[ } \tuplet 3/2 {s8 d'16]} |

% bar 14
  \override Beam.positions = #'(-5.0 . -4.4)
  \tuplet 3/2 {s16  \stemDown dis'8.*2/3[ } \tuplet 3/2 {s8 e'16]} |

% bar 15
  \override Beam.positions = #'(-5.0 . -4.4)
  \tuplet 3/2 {s16  \stemDown   g'8.*2/3[ } \tuplet 3/2 {s8 f'16]} |

% bar 16
  \override Beam.positions = #'(-5.0 . -4.4)
  \tuplet 3/2 {s16  \stemDown dis'8.*2/3[ } \tuplet 3/2 {s8 e'16]} |

% bar 17 axx % FROM bar 5
  \staffUp
  \override Beam.positions = #'(-4.5 . -4.0)
  \tuplet 3/2 {s16  \stemDown e'8.*2/3[ } \tuplet 3/2 {s8  f'16]} |

% bar 18  pentole
  \staffUp
  \override Beam.positions = #'(-3.9 . -3.5)
  \tuplet 5/4 { \stemDown fis'8.*2/3[   s8  g'16]} |

% bar 19  pentole
  \staffUp
  \override Beam.positions = #'(-3.5 . -2.8)
  \tuplet 5/4 { \stemDown gis'8.*2/3[   s8  a'16]} |

% bar 20  pentole
  \staffUp
  \override Beam.positions = #'(-3.1 . -2.6)
  \tuplet 5/4 { \stemDown ais'8.*2/3[   s8  b'16]} |

% bar 21 axx % FROM bar 5
  \staffUp
  \override Beam.positions = #'(-2.1 . -2.6)
  \tuplet 3/2 {s16  \stemDown d''8.*2/3[ } \tuplet 3/2 {s8  c''16]} |

% bar 22
  \staffUp
  \override Beam.positions = #'(-3.1 . -3.6)
  \tuplet 3/2 {s16  \stemDown b'8.*2/3[ }  \tuplet 3/2 {s8   a'16]} |

% bar 23  pentole
  \staffUp
  \override Beam.positions = #'(-3.1 . -3.6)
  \tuplet 5/4 { \stemDown   a'8.*2/3[   s8  g'16]} |

% bar 24  % From bar 7
  \override Beam.positions = #'(-3.5 . -4.4)
  \tuplet 3/2 {s16  \stemDown e'8.*2/3[ } \tuplet 3/2 {s8  d'16]} |

  \staffDown
% bar 25 pentole
  \override Beam.positions = #'(-0.6 . -0.5)
  \tuplet 5/4 {  \stemDown g8.*2/3[  s8  a16] } |

% bar 26 pentole
  \override Beam.positions = #'(-3.5 . -4.4)
  \tuplet 5/4 { \staffUp \stemDown e'8.*2/3[               s8 d'16]} |

% bar 27
  \override Beam.positions = #'(-0.6 . -0.5)
  \tuplet 3/2 { \staffDown s16  \stemDown g8.*2/3[ } \tuplet 3/2 {s8  a16]} |

% bar 28
  \staffUp
  \override Beam.positions = #'(-3.5 . -4.4)
  \tuplet 3/2 {s16  \staffUp \stemDown e'8.*2/3[ } \tuplet 3/2 {s8 d'16]} |

% bar 29
  \tuplet 3/2 {s16  \staffUp \stemDown c'8}   s8                    |

% bar 30
  \tuplet 3/2 {s16  \staffUp \stemDown c'8}   s8                    |

% bar 31
  \tuplet 3/2 {s16  \staffUp \stemDown c'8}   s8                    |

% bar 32
  \tuplet 3/2 {s16  \staffUp \stemDown c'8}   s8                    |

% bar 33 - bar 34
   \staffDown
   \hideNotes
   \shape #'((1.0 . 0.5) (0.0 . 7.0) (-6.4 . 5.3) (0.0 . 2.2)) Slur
   c,8(                                         
   \staffUp
   s8                                        |

% bar 34
           e')
}


lowerTwo = {
  \voiceTwo
  \ignoreClashNote
  \hideTupletBracket
  
  \tuplet 3/2 {c,16( ^\mf  g, e )} g,8\rest |
  \hideTupletNumber 
  \tuplet 3/2 { \adjSlurTwo b,,16( g, f ) } g,8\rest |
  \tuplet 3/2 { \adjSlurTwo c,16(  g, e ) } g,8\rest |
  \tuplet 3/2 { \adjSlurTwo e,16(  c  g ) } g,8\rest |
  % bar 5
  \slurUp
  \tuplet 3/2 { \algBeamTwo f,16(  c  a ) } d8\rest |
  \tuplet 3/2 {fis,16(     d  c')} d8\rest |
  \break
  \tuplet 3/2 { g,16(      f!  b )} d8\rest |
  \tuplet 3/2 { \adjSlurTwo g,,16_(     g, f )} g,8\rest |
  % bar 9
  \slurDown
  \tuplet 3/2 { \adjSlurTwo c,16(       g, e )} g,8\rest |
  \tuplet 3/2 { \adjSlurTwo b,,16(      g, f )} g,8\rest |
  \tuplet 3/2 { \adjSlurTwo c,16(       g, e )} g,8\rest |
  \tuplet 3/2 { \adjSlurTwo e,16(       c  g )} g,8\rest |

  % bar 13
  \tuplet 3/2 {f,16^(     c!  a   )} d8\rest |
  \break
  \adjSlurTre
  \tuplet 3/2 { \algBeamQua g,16^(     c  bes )} d8\rest |
  \tuplet 3/2 { \algBeamQua a,16^(     f    c')} d8\rest |
  \tuplet 3/2 { \algBeamQua g,16^(     c    c')} d8\rest |

  % bar 17
  \slurUp
  \tuplet 3/2 { \algBeamQua a,16(     f    c')} d8\rest |
  \override  TupletNumber.transparent = ##f
  \once \override Beam.positions = #'( -4.7 . -2.7 )
  \tuplet 3/2 {b,16(     g    d')} d8\rest |
  \hideTupletNumber
  \once \override Beam.positions = #'( -4.3 . -2.4 )
  \tuplet 3/2 {c16(      g!   e')} d8\rest |
  \tuplet 3/2 {d16(      g    f')} d8\rest |
  
  \break
  % bar 21
  \tuplet 3/2 {e16(      c'   g')} d8\rest |
  \tuplet 3/2 {fis,16(   dis  c')} d8\rest |
  \once \override Beam.positions = #'( -5.4 . -2.7 )
  \tuplet 3/2 {g,16(     e    c')} d8\rest |
  \once \override Beam.positions = #'( -5.4 . -2.7 )
  \tuplet 3/2 {g,16(     f    b )} d8\rest |

  % bar 25
  \slurDown
  \tuplet 3/2 { \adjSlurTwo c,16(       g, e )} g,8\rest |
  \tuplet 3/2 { \adjSlurTwo c,16(       g, f )} d8\rest |
  \tuplet 3/2 { \adjSlurTwo c,16(       g, e )} g,8\rest |
  \break
  \slurUp
  \tuplet 3/2 {c,16(       g, f )} d8\rest |

  % bar 29
  \tuplet 3/2 {c,16(       g, g )} d8\rest |
  \tuplet 3/2 {c,16(       g, g )} d8\rest |
  \tuplet 3/2 {c,16(
                          g, g )} d8\rest^\markup{\italic {rit.}} |
  \tuplet 3/2 {c,16(       g, g )} d8\rest |

  % bar 33 
  \tieDown
  \set tieWaitForNote = ##t
  \tuplet 3/2 {c,16~ g,~  c~  } 
  s8                                       |

  % bar 34
        <c,  g,  c  >4_\fermata
  \bar "|."
}

middleDynamics = {
    s4*4
    % bar 5
    \once \override Hairpin.to-barline = ##t
    s4\<  s8 s16. s32\!
    s4\>  s8 s16. s32
    % bar 9
    \once \override DynamicText #'extra-offset = #'(0.4 . 0.0 )
    s4\mf s4*3
    % bar 13
    s4\cresc
    s4*3
    % bar 17
    s4
    s4*3
    % bar 21
    s4^\ff
    s4\decr
    s4
    s8 s16  s32  s32
    % bar 25
    \once \override DynamicText #'extra-offset = #'(-0.5 . 0.0 )
    s32\p s16. s16. s32\< 
    s16. s32\!\> s8
    s8\!s16. s32\<
    s16.. s64\!\> s16.s32
    % bar 29
    s8\p s16\< s16
    s16 s16 s16\! s32 s32\>
    s4
    s16. s32\! s8
    \once \override DynamicText #'extra-offset = #'(0.5 . 0.0 )
    s4-\pp

}

lowerDynamics = {
  %
    s8\sustainOn s16 s16\sustainOff 
    \once \override Voice.TextScript #'extra-offset = #'(0.0 . 1.5 )
    s4_\markup { "segue ..."}
    s4*32
  %
}

\score {
  \context PianoStaff <<
    \time 2/8
    \context Staff = "upper" <<
      \clef violin
      \context Voice = "one" \upperOne
      \context Voice = "two" \upperTwo
    >>  
    \new Dynamics <<
          \middleDynamics
    >>
    \context Staff = "lower" <<
      \clef bass
      \context Voice = "one" \lowerOne
      \context Voice = "two" \lowerTwo
    >>  
    \new Dynamics <<
          \lowerDynamics
    >>
  >>
  \layout {
    \context {
        \PianoStaff
        \accepts Dynamics
        \consists #Span_stem_engraver
    }
  }
  \midi { }  
}
