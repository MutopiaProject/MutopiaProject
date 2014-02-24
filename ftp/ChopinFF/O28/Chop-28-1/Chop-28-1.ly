%%!/usr/local/bin/lilypond
%% dax: Chop-28,1.ly with absolute pitches except upper voice.
%% TODO: Dynamics, rallentando and fingering.


\version "2.18.0"
\header {
  title         =       "Prelude"
  % subtitle    =       "Opus 28.1"
  % subsubtitle =       "Subsubtitle"
  opus          =       "Opus 28"
  piece = "Prelude"
  composer =     "Chopin"
  enteredby =    "donald_j_axel"
  instrument = "Pianoforte"

  % mutopia headers.
  mutopiatitle = "Prelude op 28.1"
  mutopiacomposer = "ChopinFF"
  mutopiaopus = "28.1"
  mutopiainstrument = "Piano"
  copyright = "Creative Commons Attribution-ShareAlike"
  date = "ca. 1837"

  source = "Edition Peters"
    
  style = "Classical"
  maintainer = "Donald Axel"
  maintainerEmail = "donald_j_axel@get2net.dk"
  lastupdated =  "2004/Mar/04"
  
  tagline = "tagline"
  footer = "Mutopia-2004/03/04-411"
}

%#(set-global-staff-size 16)

\layout  {
%  line-width = 455.244096\pt
 % textheight = 24.0 \cm    % for A4 paper
  %textheight = 22.2 \cm    % for Letter paper
%  interscoreline = 3\pt
}



% force direction of stems
%u = \stemUp
%d = \stemDown
%b = \stemNeutral


% explicit staff change
staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"


% force direction of tie
tu = \tieUp
td = \tieDown
tb = \tieNeutral

%other defs
ignoreClashNote = \override NoteColumn.ignore-collision = ##t
hideTupletNumber = \override TupletNumber.transparent = ##t
hideTupletBracket = \override TupletBracket.bracket-visibility = ##f


upperOne = \relative c'' {
  \voiceOne
  \ignoreClashNote
  \slurUp
  \hideTupletBracket 
  
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  c8(

  
           \tuplet 3/2 {g8 a16) }  |

  \hideTupletNumber

  % bar 2
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  c8(
           \tuplet 3/2 {g8 a16) }  |
  % bar 3
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  c8(
           \tuplet 3/2 {g8 a16) }  |
  % bar 4
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  c8(
           \tuplet 3/2 {b8 c16) }  |

  % bar 5
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  c8(
           \tuplet 3/2 {e8 d16) }  |

  % bar 6
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  c8(
           \tuplet 3/2 {e8 d16) }  |

  % bar 7
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  c8(
           \tuplet 3/2 {e8 d16) }  |

  % bar 8
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  c8(
           \tuplet 3/2 {b8 a16) }  |
  % bar 9
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  c8(
           \tuplet 3/2 {g8 a16) }  |
  % bar 10
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  c8(
           \tuplet 3/2 {g8 a16) }  |
  % bar 11
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  c8(
           \tuplet 3/2 {g8 a16) }  |
  % bar 12
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  c8(
           \tuplet 3/2 {b8 c16) }  |

  % bar 13
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  d8(
           \tuplet 3/2 {cis8 d16) }  |

  % bar 14
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  d8(
           \tuplet 3/2 {dis8 e16) }  |

  % bar 15
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  d8(
           \tuplet 3/2 {  g8 f16) }  |

  % bar 16
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  d8(
           \tuplet 3/2 {dis8 e16) }  |

  % bar 17
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  c8(^\markup{ \italic {stretto} }
           \tuplet 3/2 {e8 f16) }  |

  % bar 18 pentole
           \hideTupletNumber
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  \tuplet 5/4 {f8(
                     fis8[  g16]) }  |

  % bar 19 pentole
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  \tuplet 5/4 {f8(
                     gis8[  a16]) }  |

  % bar 20 pentole
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  \tuplet 5/4 {g8(
                     ais8[  b16)] }  |


  % bar 21
           \hideTupletNumber
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  f8(
           \tuplet 3/2  {d'8   c16) }  |
  
  % bar 22
           \hideTupletNumber 
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  f,8(
           \tuplet 3/2  {b8    a16) }  |

  % bar 23 pentole
           \override TupletBracket.number-visibility % number-visibility is deprecated. Tune the TupletNumber instead
 = ##t
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  \tuplet 5/4 {e8(
                       a8[  g16]) }  |

  % bar 24 % From bar 7
           \hideTupletNumber 
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  c,8(
           \tuplet 3/2 {e8 d16) }  |

  % bar 25 pentole
           \override TupletBracket.number-visibility % number-visibility is deprecated. Tune the TupletNumber instead
 = ##t
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  \tuplet 5/4 { c8(
                    g8[ a16] ) }  |

  % bar 26 pentole
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  \tuplet 5/4 { c8(
                    e8[ d16] ) }  |

  % bar 27
           \hideTupletNumber 
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  c8(
           \tuplet 3/2 {g8 a16) }  |

  % bar 28
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
  c8(
           \tuplet 3/2 {e8 d16) }  |

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
                             c,~ } |
  % bar 34
              <c    e  >4          |

}


upperTwo =  {
  \voiceTwo
  \ignoreClashNote
  \hideTupletBracket 

  \once \override TupletBracket.direction = #'1
  \once \override TupletBracket.bracket-visibility = #'if-no-beam
  \once \override TupletBracket.number-visibility % number-visibility is deprecated. Tune the TupletNumber instead
 = ##t
  \tu \slurUp
  \override Slur.attachment = #'(stem . stem)
  \tuplet 3/2 {\staffDown \stemUp r16 g  \staffUp c'} 
  \tuplet 3/2 {\stemDown e' c' \staffDown \stemUp a  }      |

  \tuplet 3/2 {r16 \staffDown \stemUp g  \staffUp d'} 
  \tuplet 3/2 {\stemDown f' d' \staffDown \stemUp a  }      |

  %bar 3 
  \tuplet 3/2 {r16 \staffDown \stemUp g  \staffUp c' } 
  \tuplet 3/2 {\stemDown e' c' \staffDown  \stemUp a   }    |

  %bar 4
  \tuplet 3/2 {r16 \staffDown \stemUp b  \staffUp e' } 
  \tuplet 3/2 {\stemDown g' e' \staffDown  \stemUp  c' }    |

  %bar 5
  \tuplet 3/2 {\staffUp e'16\rest \stemUp e'    a'  } 
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.beam-thickness = #0.34
  \once \override Beam.positions = #'( 2.1 . -0.4)
  %% no, no. \once \set fontSize = #-1
  \tuplet 3/2 {   c'' a'        d'  }  |
  
  %bar 6
  \tuplet 3/2 {d'16\rest \staffUp \stemUp e' a'    } 
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.beam-thickness = #0.34
  \once \override Beam.positions = #'( 2.1 . -0.4)
  \tuplet 3/2 {   c'' a'        d' }   |
  
  %bar 7
  \tuplet 3/2 {d'16\rest \staffUp \stemUp e'  g'   } 
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.beam-thickness = #0.34
  \once \override Beam.positions = #'( 1.9 . -0.4)
  \tuplet 3/2 {   b'  g'        d' }   |
  
  %bar 8
  \tuplet 3/2 {d'16\rest \staffUp \stemUp b     d' } 
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.beam-thickness = #0.34
  \once \override Beam.positions = #'( 0.0 . -1.8)
  \tuplet 3/2 { \stemUp f'  d'  a   }   |

  %bar 9  %% no rest because we need it in the lower staff
  \tuplet 3/2 {s16  \staffDown \stemUp g \staffUp c'}
  \tuplet 3/2 {\stemDown e' c' \staffDown \stemUp a  }     |

  %bar 10
  \tuplet 3/2 {r16 \staffDown \stemUp g  \staffUp d'} 
  \tuplet 3/2 {\stemDown f' d' \staffDown \stemUp  a  }    |

  %bar 11
  \tuplet 3/2 {r16 \staffDown \stemUp g  \staffUp c' } 
  \tuplet 3/2 {\stemDown e' c' \staffDown  \stemUp  a  }   |

  %bar 12
  \tuplet 3/2 {r16 \staffDown \stemUp b  \staffUp e' } 
  \tuplet 3/2 {\stemDown  g'  e' \staffDown \stemUp  c' }  |

  %bar 13
  \tuplet 3/2 {r16 \staffDown \stemUp cis'  \staffUp f' } 
  \tuplet 3/2 {\stemDown  a'  f' \staffDown \stemUp  d' }  |

  %bar 14
  \tuplet 3/2 {r16 \staffDown \stemUp dis'  \staffUp g' } 
  \tuplet 3/2 {\stemDown  c'' g' \staffDown \stemUp  e' }  |

  %bar 15
  \tuplet 3/2 {r16 \staffDown \stemUp   g'  \staffUp a' } 
  \tuplet 3/2 {\stemDown  c'' a' \staffDown \stemUp  f' }  |

  %bar 16
  \tuplet 3/2 {r16 \staffDown \stemUp dis'  \staffUp g' } 
  \tuplet 3/2 {\stemDown  c'' g' \staffDown \stemUp  e' }  |

  %bar 17 % FROM bar 5
  \tuplet 3/2 {\staffUp e'16\rest \staffUp \stemUp e'    a'  } 
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.beam-thickness = #0.34
  \once \override Beam.positions = #'( 2.2 .  0.3)
  \tuplet 3/2 {   c''[   a'        f']  }  |
  
  %bar 18  pentole!
  \tuplet 5/4 { \staffUp \stemUp   fis'16[   b']   
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.beam-thickness = #0.34
  \once \override Beam.positions = #'( 3.0 .  0.8)
                 d''[   b'        g']  }  |

  %bar 19  pentole!
  \tuplet 5/4 { \staffUp \stemUp   gis'16[  c'']   
                
                \break %----------------------------------------------TROUBLESHOOTING
                
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.beam-thickness = #0.34
  \once \override Beam.positions = #'( 3.7 .  1.4)
                 e''[   c''       a']  }  |

  %bar 20  pentole!
  \tuplet 5/4 { \staffUp \stemUp   ais'16[  d'']   
  \once \override Beam.beam-thickness = #0.34
  \once \override Beam.positions = #'( 4.7 .  1.7)
  \once \override NoteColumn.horizontal-shift = #1
                 g''[   d''       b']  }  |

  %bar 21 %% FROM bar 5
  \tuplet 3/2 {d''16\rest \staffUp \stemUp d''   e'' } 
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.beam-thickness = #0.34
  \once \override Beam.positions = #'( 4.3 .  2.4)
  \tuplet 3/2 {   g''     e''       c'' }  |
  
  %bar 22
  \tuplet 3/2 {b'16\rest \staffUp \stemUp  b'    c'' } 
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.beam-thickness = #0.34
  \once \override Beam.positions = #'( 2.9 .  1.6)
  \tuplet 3/2 {   dis'' c''      a' }  |
 
  %bar 23  pentole!
  \tuplet 5/4 { \staffUp \stemUp     a'16[  c'']   
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.beam-thickness = #0.34
  \once \override Beam.positions = #'( 3.5 .  1.1)
                   e''[ c''       g']  }  |
  
  %bar 24 % wrong stems/beams for second beat if no bracket-specification.
  \tuplet 3/2 {d'16\rest \staffUp \stemUp e'  g'   } 
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.beam-thickness = #0.34
  \once \override Beam.positions = #'( 1.9 . -0.4)
  \tuplet 3/2 { \staffUp \stemUp   b'[   g'   d'] }      |

  %bar 25 pentole
  \tuplet 5/4 {    \staffDown  \stemUp  g16[ \staffUp c'] 
             \stemDown e'[   c'  \staffDown  \stemUp  a]  }      |

  %bar 26 pentole
  \tuplet 5/4 {    \staffDown  \stemUp e'16[ \staffUp g'] 
             \stemDown b'[   g'  \staffDown  \stemUp d']  }      |

  %bar 27 %% no rest because we need it in the lower staff
  \tuplet 3/2 {s16  \staffDown \stemUp g   \staffUp c'   }
  \tuplet 3/2 {\stemDown e'   c'   \staffDown \stemUp a    }      |

  %bar 28
  \tuplet 3/2 { \staffUp      d'16\rest       \stemUp e'        g'   } 
  \once \override NoteColumn.horizontal-shift = #1
  \once \override Beam.beam-thickness = #0.34
  \once \override Beam.positions = #'( 1.9 . -0.4)
  \tuplet 3/2 {     \stemUp   b'[                g'        d'] }      |

  %bar 29
  \tuplet 3/2 {\staffUp  d'16\rest     \stemUp c'        f'   }
  \tuplet 3/2 {\stemDown   a'               f'     <e'g'>  }   |

  %bar 30
  \tuplet 3/2 {\staffUp  d'16\rest     \stemUp c'        f'   }
  \tuplet 3/2 {\stemDown   a'               f'     <e'g'>  }   |

  %bar 31
  \tuplet 3/2 {\staffUp  d'16\rest     \stemUp c'        f'   }
  \tuplet 3/2 {\stemDown   a'               f'     <e'g'>  }   |

  %bar 32
  \tuplet 3/2 {\staffUp  d'16\rest     \stemUp c'        f'   }
  \tuplet 3/2 {\stemDown   a'               f'     <e'g'>  }   |

  %bar 33
  % \tuplet 3/2 {     s16            s16       s16    }
  s8
  \tuplet 3/2 {\staffDown \stemUp e16            g   \staffUp \stemUp c'   }   |

  %bar 34
  % notes within this chord cannot be sent lowerstaff here. Must divide?
  % < e  g  >4
  s4

}


lowerOne =  {
  \voiceOne
  \ignoreClashNote
  \override TupletBracket.transparent = ##t
  \override Stem.details.beamed-extreme-minimum-free-lengths = #'(1.0 0.4 0.2)
  
  % \override Stem.stem-shorten = #'(3.0 2.5)
  \override Beam.beam-thickness = #0.38
  \override Beam.gap       = #0.5

  \override Beam.positions = #'(-0.6 . -0.5)
  \tuplet 3/2 {s16  \stemDown g8[ } \tuplet 3/2 {s8  a16]} |
  \tuplet 3/2 {s16  \stemDown g8[ } \tuplet 3/2 {s8  a16]} |
  \tuplet 3/2 {s16  \stemDown g8[ } \tuplet 3/2 {s8  a16]} |
  \override Beam.positions = #'( 0.5 .  0.7)
  \tuplet 3/2 {s16  \stemDown b8[ } \tuplet 3/2 {s8 c'16]} |
  % bar 5
  \staffUp
  \override Beam.positions = #'(-4.5 . -4.9)
  \tuplet 3/2 {s16  \stemDown e'8[ } \tuplet 3/2 {s8  d'16]} |

  % bar 6
  \override Beam.positions = #'( #f  .  #f )
  \tuplet 3/2 {s16  \stemDown e'8[ } \tuplet 3/2 {s8  d'16]} |

  % bar 7
  \tuplet 3/2 {s16  \stemDown e'8[ } \tuplet 3/2 {s8  d'16]} |

  % bar 8
  \tuplet 3/2 {s16  \stemDown b8[ } \tuplet 3/2 {s8  a16]} |
  
  \staffDown
  % bar 9  %% BAS-upper-voice, need positioned rest lower staff
  \override Beam.positions = #'(-0.6 . -0.5)
  \tuplet 3/2 {d16\rest  \stemDown g8[ } \tuplet 3/2 {s8  a16]} |
  \tuplet 3/2 {s16       \stemDown g8[ } \tuplet 3/2 {s8  a16]} |
  \tuplet 3/2 {s16       \stemDown g8[ } \tuplet 3/2 {s8  a16]} |
  \override Beam.positions = #'( 0.5 .  0.7)
  \tuplet 3/2 {s16       \stemDown b8[ } \tuplet 3/2 {s8 c'16]} |

% bar 13
  \override Beam.positions = #'( 0.9 .  1.1)
  \tuplet 3/2 {s16  \stemDown cis'8[ } \tuplet 3/2 {s8 d'16]} |

% bar 14
  \override Beam.positions = #'( 1.1 .  1.4)
  \tuplet 3/2 {s16  \stemDown dis'8[ } \tuplet 3/2 {s8 e'16]} |

% bar 15
  \override Beam.positions = #'( 2.2 .  1.4)
  \tuplet 3/2 {s16  \stemDown   g'8[ } \tuplet 3/2 {s8 f'16]} |

% bar 16
  \override Beam.positions = #'( 0.9 .  1.1)
  \tuplet 3/2 {s16  \stemDown dis'8[ } \tuplet 3/2 {s8 e'16]} |

% bar 17 axx % FROM bar 5
  \staffUp
  \override Beam.positions = #'(-4.5 . -4.0)
  \tuplet 3/2 {s16  \stemDown e'8[ } \tuplet 3/2 {s8  f'16]} |

% bar 18  pentole
  \staffUp
  \override Beam.positions = #'(-3.9 . -3.5)
  \tuplet 5/4 { \stemDown fis'8[   s8  g'16]} |

% bar 19  pentole
  \staffUp
  \override Beam.positions = #'(-3.5 . -2.8)
  \tuplet 5/4 { \stemDown gis'8[   s8  a'16]} |

% bar 20  pentole
  \staffUp
  \override Beam.positions = #'(-3.1 . -2.6)
  \tuplet 5/4 { \stemDown ais'8[   s8  b'16]} |

% bar 21 axx % FROM bar 5
  \staffUp
  \override Beam.positions = #'(-2.1 . -2.6)
  \tuplet 3/2 {s16  \stemDown d''8[ } \tuplet 3/2 {s8  c''16]} |

% bar 22
  \staffUp
  \override Beam.positions = #'(-3.1 . -3.6)
  \tuplet 3/2 {s16  \stemDown b'8[ }  \tuplet 3/2 {s8   a'16]} |

% bar 23  pentole
  \staffUp
  \override Beam.positions = #'(-3.1 . -3.6)
  \tuplet 5/4 { \stemDown   a'8[   s8  g'16]} |

% bar 24  % From bar 7
  \override Beam.positions = #'(-3.5 . -4.4)
  \tuplet 3/2 {s16  \stemDown e'8[ } \tuplet 3/2 {s8  d'16]} |

  \staffDown
% bar 25 pentole
  \override Beam.positions = #'(-0.6 . -0.5)
  \tuplet 5/4 {          \stemDown g8[               s8  a16]} |

% bar 26 pentole
  \override Beam.positions = #'( 0.2 . -0.6)
  \tuplet 5/4 {         \stemDown e'8[               s8 d'16]} |

% bar 27
  \override Beam.positions = #'(-0.6 . -0.5)
  \tuplet 3/2 {d16\rest  \stemDown g8[ } \tuplet 3/2 {s8  a16]} |

% bar 28
  \staffUp
  \override Beam.positions = #'(-3.5 . -4.4)
  \tuplet 3/2 {s16  \staffUp \stemDown e'8[ } \tuplet 3/2 {s8 d'16]} |

% bar 29
  \tuplet 3/2 {s16  \staffUp \stemDown c'8}   s8                    |

% bar 30
  \tuplet 3/2 {s16  \staffUp \stemDown c'8}   s8                    |

% bar 31
  \tuplet 3/2 {s16  \staffUp \stemDown c'8}   s8                    |

% bar 32
  \tuplet 3/2 {s16  \staffUp \stemDown c'8}   s8                    |

% bar 33 - bar 34
  %% s2
           \staffDown
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
           c,8(                                         
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
           \staffUp
           d''8                                        |

% bar 34
           \once \override NoteHead.transparent = ##t
           \once \override Stem.transparent = ##t
           g')
}


lowerTwo = {
  \voiceTwo
  \ignoreClashNote
  \hideTupletBracket 
  \hideTupletNumber 
  % \once \override Fingering.padding = #3
  \once \override TupletBracket.number-visibility % number-visibility is deprecated. Tune the TupletNumber instead
 = ##t
  \tuplet 3/2 {c,16( ^\mf  g, e )} e,8\rest |
  \tuplet 3/2 {b,,16(      g, f )} e,8\rest |
  \tuplet 3/2 {c,16(       g, e )} f,8\rest |
  \tuplet 3/2 {e,16(       c  g )} g,8\rest |
  % bar 5
  \slurUp
  \tuplet 3/2 {f,16(       c  a )} d,8\rest |
  \tuplet 3/2 {fis,16(     d  c')} d,8\rest |
  \break
  \tuplet 3/2 { g,16(      f  b )} d,8\rest |
  \tuplet 3/2 { g,,16(     g, f )} d,8\rest |
  % bar 9
  \slurDown
  \tuplet 3/2 {c,16(       g, e )} e,8\rest |
  \tuplet 3/2 {b,,16(      g, f )} e,8\rest |
  \tuplet 3/2 {c,16(       g, e )} f,8\rest |
  \tuplet 3/2 {e,16(       c  g )} g,8\rest |

  % bar 13
  \tuplet 3/2 {f,16(     c  a   )} g,8\rest |
  \break
  \tuplet 3/2 {g,16(     c  bes )} g,8\rest |
  \tuplet 3/2 {a,16(     f    c')} g,8\rest |
  \tuplet 3/2 {g,16(     c    c')} g,8\rest |

  % bar 17
  \slurUp
  \tuplet 3/2 {a,16(     f    c')} g,8\rest |
  \tuplet 3/2 {b,16(     g    d')} g,8\rest |
  \tuplet 3/2 {c16(      g    e')} g,8\rest |
  \tuplet 3/2 {d16(      g    f')} g,8\rest |
  
  \break
  % bar 21
  \tuplet 3/2 {e16(      c'   g')} g,8\rest |
  \tuplet 3/2 {fis,16(   dis  c')} g,8\rest |
  \tuplet 3/2 {g,16(     e    c')} g,8\rest |
  \tuplet 3/2 {g,16(     f    b )} g,8\rest |

  % bar 25
  \slurDown
  \tuplet 3/2 {c,16(       g, e )} e,8\rest |
  \tuplet 3/2 {c,16(       g, f )} e,8\rest |
  \tuplet 3/2 {c,16(       g, e )} e,8\rest |
  \break
  \slurUp
  \tuplet 3/2 {c,16(       g, f )} e,8\rest |

  % bar 29
  \tuplet 3/2 {c,16(       g, g )} e,8\rest |
  \tuplet 3/2 {c,16(       g, g )} e,8\rest |
  \tuplet 3/2 {c,16(^\markup{\italic {rit}}
                          g, g )} e,8\rest |
  \tuplet 3/2 {c,16(       g, g )} e,8\rest |

  % bar 33 
  %% generates a 2.1.9 warning that tie isn't performed, 
  %% however, it is rendered, don't remove.
  \tieDown
  \tuplet 3/2 {c,16 %{~%}        g,    c         } 
  s8                                       |

  % bar 34
             <c,           g,    c  >4

  \bar "|."

}

AuxUno =  {
  \ignoreClashNote
  \hideTupletBracket 
  \hideTupletNumber 
  s1*64/8                         |
  s8
  \tuplet 3/2  {
            s16 \tieDown
  \once \override Stem.transparent = ##t
  \once \override Staff.NoteCollision.merge-differently-dotted = ##t
                        g4*2/4~ }   |
  \stemUp g4

}

AuxDuo =  {
  \ignoreClashNote
  \hideTupletBracket 
  \hideTupletNumber 
  s1*64/8                         |
  \tuplet 3/2 {  s8 s16   
  %% \once \override NoteHead.transparent = ##t
  \once \override Stem.transparent = ##t
  \once \override Staff.NoteCollision.merge-differently-dotted = ##t
  \tieDown
                      e4*3/4~ }   |
  %% \once \override NoteHead.transparent = ##t
  %% \once \override Stem.transparent = ##t
   \stemUp e4
}

AuxTre =  {
  \ignoreClashNote
  \hideTupletBracket 
  \override TupletNumber.transparent % number-visibility is deprecated. Tune the TupletNumber instead
 = ##t
  s1*64/8                         |
  \tuplet 3/2 { s8  
  \once \override NoteHead.transparent = ##t
  \once \override Stem.transparent = ##t
  \once \override Staff.NoteCollision.merge-differently-dotted = ##t
                      c4*4/4~ }   |
  \once \override NoteHead.transparent = ##t
  \once \override Stem.transparent = ##t
   c4
}

AuxQtr =  {
  \hideTupletBracket 
  \hideTupletNumber 
  s1*64/8                         |
  \tuplet 3/2 { s16   
  \once \override NoteHead.transparent = ##t
  \once \override Stem.transparent = ##t
  \once \override Staff.NoteCollision.merge-differently-dotted = ##t
                     g,4*5/4~ }   |
  \once \override NoteHead.transparent = ##t
  \once \override Stem.transparent = ##t
  g,4
}

%% When running lilypond:
%% Interpreting music ...
%% warning: can't find or create `Dynamics' called `uniqueContext0'
%% This warning I cannot make any sense of, the "Dynamics" are
%% rendered (it works). Perhaps a new Lilypond version will solve this.

middleDynamics = {
  %{
    s4*4
    % bar 5
    s4\<  s8 s8\!
    s4\>  s8 s8\!
    % bar 9
    s4*4
    % bar 13
    s4-"cresc ..."
    s4*3
    % bar 17
    s4
    s4*3
    % bar 21
    s4^\ff
    s4\decr
    s4
    s8 \rced s16  s32  s32\p
    %% move \p left, clear from stem, therefore rather before bar line
    % bar 25
    s4\< 
    s8\!s8\>
    s8\!s8
    s4
    % bar 29
    s4\p\<
    s8\! s8\>
    s4
    s8 s8\!
    s16 s16-\pp
  %}
}

lowerDynamics = {
  %{
    s8\staffUpstainOn s16 s16\staffUpstainOff
    s4_"segue ..."
    s4*32
  %}
}



\score {
  \context PianoStaff <<
    % Actually this works! See bottom note(*1)
    % \override PianoStaff.TupletBracket.bracket-visibility = ##f
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
      \context Voice = Uno \AuxUno
      \context Voice = Duo \AuxDuo
      \context Voice = Tre \AuxTre
      \context Voice = Qtr \AuxQtr
      \context Voice = "one" \lowerOne
      \context Voice = "two" \lowerTwo
    >>  
    \new Dynamics <<
          \lowerDynamics
    >>
  >>
  \layout {
     % [Convert-ly] The Dynamics context is now included by default.

    \context {
        \PianoStaff
        \accepts Dynamics
        \override VerticalAlignment.forced-distance = #7
    }
  }   %% end paper
  \midi { }  
}





%{
convert-ly (GNU LilyPond) 2.18.0  convert-ly: Processing `'...
Applying conversion: 2.1.1, 2.1.2, 2.1.3, 2.1.4, 2.1.7, 2.1.10,
2.1.11, 2.1.12, 2.1.13, 2.1.14, 2.1.15, 2.1.16, 2.1.17, 2.1.18,
2.1.19, 2.1.20, 2.1.21, 2.1.22, 2.1.23, 2.1.24, 2.1.25, 2.1.26,
2.1.27, 2.1.28, 2.1.29, 2.1.30, 2.1.31, 2.1.33, 2.1.34, 2.1.36, 2.2.0,
2.3.1, 2.3.2,  Not smart enough to convert textheight. Please refer to
the manual for details, and update manually. Page layout has been
changed, using paper size and margins. textheight is no longer used.
2.3.4, 2.3.6, 2.3.8, 2.3.9, 2.3.10, 2.3.11, 2.3.12, 2.3.16, 2.3.17,
2.3.18, 2.3.22, 2.3.23, 2.3.24, 2.3.25, 2.4.0, 2.5.0, 2.5.1, 2.5.2,
2.5.3, 2.5.12, 2.5.13, 2.5.17, 2.5.18, 2.5.21, 2.5.25, 2.6.0, 2.7.0,
2.7.1, 2.7.2, 2.7.4, 2.7.6, 2.7.10, 2.7.11, 2.7.12, 2.7.13, 2.7.14,
2.7.15, 2.7.22, 2.7.24, 2.7.28, 2.7.29, 2.7.30, 2.7.31, 2.7.32,
2.7.32, 2.7.36, 2.7.40, 2.9.4, 2.9.6, 2.9.9, 2.9.11, 2.9.13, 2.9.16,
2.9.19, 2.10.0, 2.11.2, 2.11.3, 2.11.5, 2.11.6, 2.11.10, 2.11.11,
2.11.13, 2.11.15,  Not smart enough to convert VerticalAlignment
#'forced-distance. Use the `alignment-offsets' sub-property of
NonMusicalPaperColumn #'line-break-system-details to set fixed
distances between staves. 2.11.23, 2.11.35, 2.11.38, 2.11.46, 2.11.48,
2.11.50, 2.11.51, 2.11.52, 2.11.53, 2.11.55, 2.11.57, 2.11.60,
2.11.61, 2.11.62, 2.11.64, 2.12.0, 2.12.3, 2.13.0, 2.13.1, 2.13.4,
2.13.10, 2.13.16, 2.13.18, 2.13.20, 2.13.27, 2.13.29, 2.13.31,
2.13.36, 2.13.39, 2.13.40, 2.13.42, 2.13.44, 2.13.46, 2.13.48,
2.13.51, 2.14.0, 2.15.7,  Not smart enough to convert \footnote. If
you are using non-automatic footnotes, make sure to set footnote-auto-
numbering = ##f in the paper block. Please refer to the manual for
details, and update manually. 2.15.9, 2.15.10, 2.15.16, 2.15.17,
2.15.18, 2.15.19, 2.15.20, 2.15.25, 2.15.32, 2.15.39, 2.15.40,
2.15.42, 2.15.43, 2.16.0, 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11,
2.17.14, 2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27,
2.17.29, 2.17.97
%}
