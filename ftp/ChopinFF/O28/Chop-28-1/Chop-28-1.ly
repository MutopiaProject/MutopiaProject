%%!/usr/local/bin/lilypond
%% dax: Chop-28,1.ly with absolute pitches except upper voice.
%% TODO: Dynamics, rallentando and fingering.


%\version "2.0.2"
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
  mutopiacomposer = "Chopin, Frederic"
  mutopiaopus = "28.1"
  mutopiainstrument = "Piano"
  date = "ca. 1837"

  source = "Edition Peters"
    
  style = "Classical"
  maintainer = "Donald Axel"
  maintainerEmail = "donald_j_axel@get2net.dk"
  lastupdated =  "2004/Mar/04"
  
  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset by " + \maintainer + ". Copyright \\copyright \\ The Mutopia Project \\& " + \maintainer + " 2004.} \\makebox[\\textwidth][c]{\\footnotesize This work is licensed under the Creative Commons Attribution-ShareAlike License, with the additional permission that attribution is not} \\makebox[\\textwidth][c]{\\footnotesize required in an audio derivative of this work. To view a copy of that license visit \\texttt{http://creativecommons.org/licenses/by-sa/1.0/} } \\makebox[\\textwidth][c]{\\footnotesize or send a letter to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.}}"
  footer = "Mutopia-2004/03/04-411"
}

\include "paper16.ly"

\paper  {
  linewidth = 455.244096\pt
  textheight = 24.0 \cm    % for A4 paper
  %textheight = 22.2 \cm    % for Letter paper
  interscoreline = 3\pt
}



% force direction of stems
u = \stemUp
d = \stemDown
b = \stemBoth


% explicit staff change
su = \notes{ \translator Staff = upper}
sd = \notes{ \translator Staff = lower}


% force direction of tie
tu = \tieUp
td = \tieDown
tb = \tieBoth




upperOne = \notes\relative c'' {
  \voiceOne
  \slurUp
  \property Voice.TupletBracket \set #'bracket-visibility = ##f
  
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  c8(
  
  ^\markup {
      \large "Agitato"
  }
  
           \times 2/3 {g8 a16) }  |

  \property Voice.TupletBracket \set #'number-visibility = ##f

  % bar 2
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  c8(
           \times 2/3 {g8 a16) }  |
  % bar 3
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  c8(
           \times 2/3 {g8 a16) }  |
  % bar 4
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  c8(
           \times 2/3 {b8 c16) }  |

  % bar 5
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  c8(
           \times 2/3 {e8 d16) }  |

  % bar 6
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  c8(
           \times 2/3 {e8 d16) }  |

  % bar 7
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  c8(
           \times 2/3 {e8 d16) }  |

  % bar 8
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  c8(
           \times 2/3 {b8 a16) }  |
  % bar 9
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  c8(
           \times 2/3 {g8 a16) }  |
  % bar 10
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  c8(
           \times 2/3 {g8 a16) }  |
  % bar 11
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  c8(
           \times 2/3 {g8 a16) }  |
  % bar 12
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  c8(
           \times 2/3 {b8 c16) }  |

  % bar 13
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  d8(
           \times 2/3 {cis8 d16) }  |

  % bar 14
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  d8(
           \times 2/3 {dis8 e16) }  |

  % bar 15
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  d8(
           \times 2/3 {  g8 f16) }  |

  % bar 16
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  d8(
           \times 2/3 {dis8 e16) }  |

  % bar 17
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  c8(^\markup{ \italic {stretto} }
           \times 2/3 {e8 f16) }  |

  % bar 18 pentole
           \property Voice.TupletBracket \set #'number-visibility = ##t
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  \times 4/5 {f8(
                     fis8[  g16]) }  |

  % bar 19 pentole
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  \times 4/5 {f8(
                     gis8[  a16]) }  |

  % bar 20 pentole
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  \times 4/5 {g8(
                     ais8[  b16)] }  |


  % bar 21
           \property Voice.TupletBracket \set #'number-visibility = ##f
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  f8(
           \times 2/3  {d'8   c16) }  |
  
  % bar 22
           \property Voice.TupletBracket \set #'number-visibility = ##f
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  f,8(
           \times 2/3  {b8    a16) }  |

  % bar 23 pentole
           \property Voice.TupletBracket \set #'number-visibility = ##t
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  \times 4/5 {e8(
                       a8[  g16]) }  |

  % bar 24 % From bar 7
           \property Voice.TupletBracket \set #'number-visibility = ##f
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  c,8(
           \times 2/3 {e8 d16) }  |

  % bar 25 pentole
           \property Voice.TupletBracket \set #'number-visibility = ##t
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  \times 4/5 { c8(
                    g8[ a16] ) }  |

  % bar 26 pentole
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  \times 4/5 { c8(
                    e8[ d16] ) }  |

  % bar 27
           \property Voice.TupletBracket \set #'number-visibility = ##f
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  c8(
           \times 2/3 {g8 a16) }  |

  % bar 28
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
  c8(
           \times 2/3 {e8 d16) }  |

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
    \times 2/3  {s16   s16    
    \once \property Voice.Stem     \set #'transparent = ##t
    \tieDown
                             c,~ } |
  % bar 34
              <c    e  >4          |

}


upperTwo = \notes {
  \voiceTwo
  \property Voice.TupletBracket \set #'bracket-visibility = ##f
  \property Voice.TupletBracket \set #'number-visibility = ##f
  \once \property Voice.TupletBracket \set #'direction = #'1
  \once \property Voice.TupletBracket \set #'bracket-visibility = #'if-no-beam
  \once \property Voice.TupletBracket \set #'number-visibility = ##t
  \tu \slurUp
  \property Voice.Slur \set #'attachment = #'(stem . stem)
  \times 2/3 {\sd \u r16 g  \su c'} 
  \times 2/3 {\d e' c' \sd \u a  }      |

  \times 2/3 {r16 \sd \u g  \su d'} 
  \times 2/3 {\d f' d' \sd \u a  }      |

  %bar 3 
  \times 2/3 {r16 \sd \u g  \su c' } 
  \times 2/3 {\d e' c' \sd  \u a   }    |

  %bar 4
  \times 2/3 {r16 \sd \u b  \su e' } 
  \times 2/3 {\d g' e' \sd  \u  c' }    |

  %bar 5
  \times 2/3 {\su e'16\rest \u e'    a'  } 
  \once \property Voice.NoteColumn \set #'horizontal-shift = #1
  \once \property Voice.Beam \override #'thickness = #0.34
  \once \property Voice.Beam \override #'positions = #'( 2.1 . -0.4)
  %% no, no. \once \property Voice.fontSize = #-1
  \times 2/3 {   c'' a'        d'  }  |
  
  %bar 6
  \times 2/3 {d'16\rest \su \u e' a'    } 
  \once \property Voice.NoteColumn \set #'horizontal-shift = #1
  \once \property Voice.Beam \override #'thickness = #0.34
  \once \property Voice.Beam \override #'positions = #'( 2.1 . -0.4)
  \times 2/3 {   c'' a'        d' }   |
  
  %bar 7
  \times 2/3 {d'16\rest \su \u e'  g'   } 
  \once \property Voice.NoteColumn \set #'horizontal-shift = #1
  \once \property Voice.Beam \override #'thickness = #0.34
  \once \property Voice.Beam \override #'positions = #'( 1.9 . -0.4)
  \times 2/3 {   b'  g'        d' }   |
  
  %bar 8
  \times 2/3 {d'16\rest \su \u b     d' } 
  \once \property Voice.NoteColumn \set #'horizontal-shift = #1
  \once \property Voice.Beam \override #'thickness = #0.34
  \once \property Voice.Beam \override #'positions = #'( 0.0 . -1.8)
  \times 2/3 { \stemUp f'  d'  a   }   |

  %bar 9  %% no rest because we need it in the lower staff
  \times 2/3 {s16  \sd \u g \su c'}
  \times 2/3 {\d e' c' \sd \u a  }     |

  %bar 10
  \times 2/3 {r16 \sd \u g  \su d'} 
  \times 2/3 {\d f' d' \sd \u  a  }    |

  %bar 11
  \times 2/3 {r16 \sd \u g  \su c' } 
  \times 2/3 {\d e' c' \sd  \u  a  }   |

  %bar 12
  \times 2/3 {r16 \sd \u b  \su e' } 
  \times 2/3 {\d  g'  e' \sd \u  c' }  |

  %bar 13
  \times 2/3 {r16 \sd \u cis'  \su f' } 
  \times 2/3 {\d  a'  f' \sd \u  d' }  |

  %bar 14
  \times 2/3 {r16 \sd \u dis'  \su g' } 
  \times 2/3 {\d  c'' g' \sd \u  e' }  |

  %bar 15
  \times 2/3 {r16 \sd \u   g'  \su a' } 
  \times 2/3 {\d  c'' a' \sd \u  f' }  |

  %bar 16
  \times 2/3 {r16 \sd \u dis'  \su g' } 
  \times 2/3 {\d  c'' g' \sd \u  e' }  |

  %bar 17 % FROM bar 5
  \times 2/3 {\su e'16\rest \su \u e'    a'  } 
  \once \property Voice.NoteColumn \set #'horizontal-shift = #1
  \once \property Voice.Beam \override #'thickness = #0.34
  \once \property Voice.Beam \override #'positions = #'( 2.2 .  0.3)
  \times 2/3 {   c''[   a'        f']  }  |
  
  %bar 18  pentole!
  \times 4/5 { \su \u   fis'16[   b']   
  \once \property Voice.NoteColumn \set #'horizontal-shift = #1
  \once \property Voice.Beam \override #'thickness = #0.34
  \once \property Voice.Beam \override #'positions = #'( 3.0 .  0.8)
                 d''[   b'        g']  }  |

  %bar 19  pentole!
  \times 4/5 { \su \u   gis'16[  c'']   
  \once \property Voice.NoteColumn \set #'horizontal-shift = #1
  \once \property Voice.Beam \override #'thickness = #0.34
  \once \property Voice.Beam \override #'positions = #'( 3.7 .  1.4)
                 e''[   c''       a']  }  |

  %bar 20  pentole!
  \times 4/5 { \su \u   ais'16[  d'']   
  \once \property Voice.Beam \override #'thickness = #0.34
  \once \property Voice.Beam \override #'positions = #'( 4.7 .  1.7)
  \once \property Voice.NoteColumn \set #'horizontal-shift = #1
                 g''[   d''       b']  }  |

  %bar 21 %% FROM bar 5
  \times 2/3 {d''16\rest \su \u d''   e'' } 
  \once \property Voice.NoteColumn \set #'horizontal-shift = #1
  \once \property Voice.Beam \override #'thickness = #0.34
  \once \property Voice.Beam \override #'positions = #'( 4.3 .  2.4)
  \times 2/3 {   g''     e''       c'' }  |
  
  %bar 22
  \times 2/3 {b'16\rest \su \u  b'    c'' } 
  \once \property Voice.NoteColumn \set #'horizontal-shift = #1
  \once \property Voice.Beam \override #'thickness = #0.34
  \once \property Voice.Beam \override #'positions = #'( 2.9 .  1.6)
  \times 2/3 {   dis'' c''      a' }  |
 
  %bar 23  pentole!
  \times 4/5 { \su \u     a'16[  c'']   
  \once \property Voice.NoteColumn \set #'horizontal-shift = #1
  \once \property Voice.Beam \override #'thickness = #0.34
  \once \property Voice.Beam \override #'positions = #'( 3.5 .  1.1)
                   e''[ c''       g']  }  |
  
  %bar 24 % wrong stems/beams for second beat if no bracket-specification.
  \times 2/3 {d'16\rest \su \u e'  g'   } 
  \once \property Voice.NoteColumn \set #'horizontal-shift = #1
  \once \property Voice.Beam \override #'thickness = #0.34
  \once \property Voice.Beam \override #'positions = #'( 1.9 . -0.4)
  \times 2/3 { \su \u   b'[   g'   d'] }      |

  %bar 25 pentole
  \times 4/5 {    \sd  \u  g16[ \su c'] 
             \d e'[   c'  \sd  \u  a]  }      |

  %bar 26 pentole
  \times 4/5 {    \sd  \u e'16[ \su g'] 
             \d b'[   g'  \sd  \u d']  }      |

  %bar 27 %% no rest because we need it in the lower staff
  \times 2/3 {s16  \sd \u g   \su c'   }
  \times 2/3 {\d e'   c'   \sd \u a    }      |

  %bar 28
  \times 2/3 { \su      d'16\rest       \u e'        g'   } 
  \once \property Voice.NoteColumn \set #'horizontal-shift = #1
  \once \property Voice.Beam \override #'thickness = #0.34
  \once \property Voice.Beam \override #'positions = #'( 1.9 . -0.4)
  \times 2/3 {     \u   b'[                g'        d'] }      |

  %bar 29
  \times 2/3 {\su  d'16\rest     \u c'        f'   }
  \times 2/3 {\d   a'               f'     <e'g'>  }   |

  %bar 30
  \times 2/3 {\su  d'16\rest     \u c'        f'   }
  \times 2/3 {\d   a'               f'     <e'g'>  }   |

  %bar 31
  \times 2/3 {\su  d'16\rest     \u c'        f'   }
  \times 2/3 {\d   a'               f'     <e'g'>  }   |

  %bar 32
  \times 2/3 {\su  d'16\rest     \u c'        f'   }
  \times 2/3 {\d   a'               f'     <e'g'>  }   |

  %bar 33
  % \times 2/3 {     s16            s16       s16    }
  s8
  \times 2/3 {\sd \u e16            g   \su \stemUp c'   }   |

  %bar 34
  % notes within this chord cannot be sent lowerstaff here. Must divide?
  % < e  g  >4
  s4

}


lowerOne = \notes {
  \voiceOne
  \property Voice.tupletInvisible = ##t
  \property Voice.Stem \set #'beamed-extreme-minimum-free-lengths = #'(1.0 0.4 0.2)
  
  % \property Voice.Stem \set #'stem-shorten = #'(3.0 2.5)
  \property Voice.Beam \override #'thickness = #0.38
  \property Voice.Beam \override #'gap       = #0.5

  \property Voice.Beam \override #'positions = #'(-0.6 . -0.5)
  \times 2/3 {s16  \d g8[ } \times 2/3 {s8  a16]} |
  \times 2/3 {s16  \d g8[ } \times 2/3 {s8  a16]} |
  \times 2/3 {s16  \d g8[ } \times 2/3 {s8  a16]} |
  \property Voice.Beam \override #'positions = #'( 0.5 .  0.7)
  \times 2/3 {s16  \d b8[ } \times 2/3 {s8 c'16]} |
  % bar 5
  \su
  \property Voice.Beam \override #'positions = #'(-4.5 . -4.9)
  \times 2/3 {s16  \d e'8[ } \times 2/3 {s8  d'16]} |

  % bar 6
  \property Voice.Beam \override #'positions = #'( #f  .  #f )
  \times 2/3 {s16  \d e'8[ } \times 2/3 {s8  d'16]} |

  % bar 7
  \times 2/3 {s16  \d e'8[ } \times 2/3 {s8  d'16]} |

  % bar 8
  \times 2/3 {s16  \d b8[ } \times 2/3 {s8  a16]} |
  
  \sd
  % bar 9  %% BAS-upper-voice, need positioned rest lower staff
  \property Voice.Beam \override #'positions = #'(-0.6 . -0.5)
  \times 2/3 {d16\rest  \d g8[ } \times 2/3 {s8  a16]} |
  \times 2/3 {s16       \d g8[ } \times 2/3 {s8  a16]} |
  \times 2/3 {s16       \d g8[ } \times 2/3 {s8  a16]} |
  \property Voice.Beam \override #'positions = #'( 0.5 .  0.7)
  \times 2/3 {s16       \d b8[ } \times 2/3 {s8 c'16]} |

% bar 13
  \property Voice.Beam \override #'positions = #'( 0.9 .  1.1)
  \times 2/3 {s16  \d cis'8[ } \times 2/3 {s8 d'16]} |

% bar 14
  \property Voice.Beam \override #'positions = #'( 1.1 .  1.4)
  \times 2/3 {s16  \d dis'8[ } \times 2/3 {s8 e'16]} |

% bar 15
  \property Voice.Beam \override #'positions = #'( 2.2 .  1.4)
  \times 2/3 {s16  \d   g'8[ } \times 2/3 {s8 f'16]} |

% bar 16
  \property Voice.Beam \override #'positions = #'( 0.9 .  1.1)
  \times 2/3 {s16  \d dis'8[ } \times 2/3 {s8 e'16]} |

% bar 17 axx % FROM bar 5
  \su
  \property Voice.Beam \override #'positions = #'(-4.5 . -4.0)
  \times 2/3 {s16  \d e'8[ } \times 2/3 {s8  f'16]} |

% bar 18  pentole
  \su
  \property Voice.Beam \override #'positions = #'(-3.9 . -3.5)
  \times 4/5 { \d fis'8[   s8  g'16]} |

% bar 19  pentole
  \su
  \property Voice.Beam \override #'positions = #'(-3.5 . -2.8)
  \times 4/5 { \d gis'8[   s8  a'16]} |

% bar 20  pentole
  \su
  \property Voice.Beam \override #'positions = #'(-3.1 . -2.6)
  \times 4/5 { \d ais'8[   s8  b'16]} |

% bar 21 axx % FROM bar 5
  \su
  \property Voice.Beam \override #'positions = #'(-2.1 . -2.6)
  \times 2/3 {s16  \d d''8[ } \times 2/3 {s8  c''16]} |

% bar 22
  \su
  \property Voice.Beam \override #'positions = #'(-3.1 . -3.6)
  \times 2/3 {s16  \d b'8[ }  \times 2/3 {s8   a'16]} |

% bar 23  pentole
  \su
  \property Voice.Beam \override #'positions = #'(-3.1 . -3.6)
  \times 4/5 { \d   a'8[   s8  g'16]} |

% bar 24  % From bar 7
  \property Voice.Beam \override #'positions = #'(-3.5 . -4.4)
  \times 2/3 {s16  \d e'8[ } \times 2/3 {s8  d'16]} |

  \sd
% bar 25 pentole
  \property Voice.Beam \override #'positions = #'(-0.6 . -0.5)
  \times 4/5 {          \d g8[               s8  a16]} |

% bar 26 pentole
  \property Voice.Beam \override #'positions = #'( 0.2 . -0.6)
  \times 4/5 {         \d e'8[               s8 d'16]} |

% bar 27
  \property Voice.Beam \override #'positions = #'(-0.6 . -0.5)
  \times 2/3 {d16\rest  \d g8[ } \times 2/3 {s8  a16]} |

% bar 28
  \su
  \property Voice.Beam \override #'positions = #'(-3.5 . -4.4)
  \times 2/3 {s16  \su \d e'8[ } \times 2/3 {s8 d'16]} |

% bar 29
  \times 2/3 {s16  \su \d c'8}   s8                    |

% bar 30
  \times 2/3 {s16  \su \d c'8}   s8                    |

% bar 31
  \times 2/3 {s16  \su \d c'8}   s8                    |

% bar 32
  \times 2/3 {s16  \su \d c'8}   s8                    |

% bar 33 - bar 34
  %% s2
           \sd
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
           c,8(                                         
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
           \su
           d''8                                        |

% bar 34
           \once \property Voice.NoteHead \set #'transparent = ##t
           \once \property Voice.Stem \set #'transparent = ##t
           g')
}


lowerTwo = \notes{
  \voiceTwo
  \property Voice.TupletBracket \set #'bracket-visibility = ##f
  \property Voice.TupletBracket \set #'number-visibility = ##f
  % \once \property Voice.Fingering \set #'padding = #3
  \once \property Voice.TupletBracket \set #'number-visibility = ##t
  \times 2/3 {c,16( ^\mf  g, e )} e,8\rest |
  \times 2/3 {b,,16(      g, f )} e,8\rest |
  \times 2/3 {c,16(       g, e )} f,8\rest |
  \times 2/3 {e,16(       c  g )} g,8\rest |
  % bar 5
  \slurUp
  \times 2/3 {f,16(       c  a )} d,8\rest |
  \times 2/3 {fis,16(     d  c')} d,8\rest |
  \break
  \times 2/3 { g,16(      f  b )} d,8\rest |
  \times 2/3 { g,,16(     g, f )} d,8\rest |
  % bar 9
  \slurDown
  \times 2/3 {c,16(       g, e )} e,8\rest |
  \times 2/3 {b,,16(      g, f )} e,8\rest |
  \times 2/3 {c,16(       g, e )} f,8\rest |
  \times 2/3 {e,16(       c  g )} g,8\rest |

  % bar 13
  \times 2/3 {f,16(     c  a   )} g,8\rest |
  \break
  \times 2/3 {g,16(     c  bes )} g,8\rest |
  \times 2/3 {a,16(     f    c')} g,8\rest |
  \times 2/3 {g,16(     c    c')} g,8\rest |

  % bar 17
  \slurUp
  \times 2/3 {a,16(     f    c')} g,8\rest |
  \times 2/3 {b,16(     g    d')} g,8\rest |
  \times 2/3 {c16(      g    e')} g,8\rest |
  \times 2/3 {d16(      g    f')} g,8\rest |
  
  \break
  % bar 21
  \times 2/3 {e16(      c'   g')} g,8\rest |
  \times 2/3 {fis,16(   dis  c')} g,8\rest |
  \times 2/3 {g,16(     e    c')} g,8\rest |
  \times 2/3 {g,16(     f    b )} g,8\rest |

  % bar 25
  \slurDown
  \times 2/3 {c,16(       g, e )} e,8\rest |
  \times 2/3 {c,16(       g, f )} e,8\rest |
  \times 2/3 {c,16(       g, e )} e,8\rest |
  \break
  \slurUp
  \times 2/3 {c,16(       g, f )} e,8\rest |

  % bar 29
  \times 2/3 {c,16(       g, g )} e,8\rest |
  \times 2/3 {c,16(       g, g )} e,8\rest |
  \times 2/3 {c,16(^\markup{\italic {rit}}
                          g, g )} e,8\rest |
  \times 2/3 {c,16(       g, g )} e,8\rest |

  % bar 33 
  %% generates a 2.1.9 warning that tie isn't performed, 
  %% however, it is rendered, don't remove.
  \tieDown
  \times 2/3 {c,16~        g,    c         } 
  s8                                       |

  % bar 34
             <c,           g,    c  >4

  \bar "|."

}

AuxUno = \notes {
  \property Voice.TupletBracket \set #'bracket-visibility = ##f
  \property Voice.TupletBracket \set #'number-visibility = ##f
  s1*64/8                         |
  s8
  \times 2/3  {
            s16 \tieDown
  \once \property Voice.Stem     \set #'transparent = ##t
  \once \property Staff.NoteCollision \override #'merge-differently-dotted = ##t
                        g4*2/4~ }   |
  \stemUp g4

}

AuxDuo = \notes {
  \property Voice.TupletBracket \set #'bracket-visibility = ##f
  \property Voice.TupletBracket \set #'number-visibility = ##f
  s1*64/8                         |
  \times 2/3 {  s8 s16   
  %% \once \property Voice.NoteHead \set #'transparent = ##t
  \once \property Voice.Stem     \set #'transparent = ##t
  \once \property Staff.NoteCollision \override #'merge-differently-dotted = ##t
  \tieDown
                      e4*3/4~ }   |
  %% \once \property Voice.NoteHead \set #'transparent = ##t
  %% \once \property Voice.Stem     \set #'transparent = ##t
   \stemUp e4
}

AuxTre = \notes {
  \property Voice.TupletBracket \set #'bracket-visibility = ##f
  \property Voice.TupletBracket \set #'number-visibility = ##f
  s1*64/8                         |
  \times 2/3 { s8  
  \once \property Voice.NoteHead \set #'transparent = ##t
  \once \property Voice.Stem     \set #'transparent = ##t
  \once \property Staff.NoteCollision \override #'merge-differently-dotted = ##t
                      c4*4/4~ }   |
  \once \property Voice.NoteHead \set #'transparent = ##t
  \once \property Voice.Stem     \set #'transparent = ##t
   c4
}

AuxQtr = \notes {
  \property Voice.TupletBracket \set #'bracket-visibility = ##f
  \property Voice.TupletBracket \set #'number-visibility = ##f
  s1*64/8                         |
  \times 2/3 { s16   
  \once \property Voice.NoteHead \set #'transparent = ##t
  \once \property Voice.Stem     \set #'transparent = ##t
  \once \property Staff.NoteCollision \override #'merge-differently-dotted = ##t
                     g,4*5/4~ }   |
  \once \property Voice.NoteHead \set #'transparent = ##t
  \once \property Voice.Stem     \set #'transparent = ##t
  g,4
}

%% When running lilypond:
%% Interpreting music ...
%% warning: can't find or create `Dynamics' called `uniqueContext0'
%% This warning I cannot make any sense of, the "Dynamics" are
%% rendered (it works). Perhaps a new Lilypond version will solve this.

middleDynamics = \notes{
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
}

lowerDynamics = \notes{
    s8\sustainDown s16 s16\sustainUp
    s4_"segue ..."
    s4*32
}



\score {
  \context PianoStaff <<
    % Actually this works! See bottom note(*1)
    % \property PianoStaff.TupletBracket \set #'bracket-visibility = ##f
    \time 2/8
    \context Staff = upper <<
      \clef violin
      \context Voice = one \upperOne
      \context Voice = two \upperTwo
    >>  
    \new Dynamics <<
          \middleDynamics
    >>
    \context Staff = lower <<
      \clef bass
      \context Voice = Uno \AuxUno
      \context Voice = Duo \AuxDuo
      \context Voice = Tre \AuxTre
      \context Voice = Qtr \AuxQtr
      \context Voice = one \lowerOne
      \context Voice = two \lowerTwo
    >>  
    \new Dynamics <<
          \lowerDynamics
    >>
  >>
  \paper {
     \translator {
        \type "Engraver_group_engraver"
        \name Dynamics
        \consists "Output_property_engraver"
        minimumVerticalExtent = #'(-1 . 1)

        pedalSustainStrings = #'("Ped." "*Ped." "*")

        \consists "Piano_pedal_engraver"
        \consists "Script_engraver"
        \consists "Dynamic_engraver"
        \consists "Text_engraver"

        %% TextScript \override #'font-relative-size = #1
        TextScript \override #'font-shape = #'italic

        \consists "Skip_event_swallow_translator"

        \consistsend "Axis_group_engraver"
    }

    \translator {
        \PianoStaffContext
        \accepts Dynamics
        VerticalAlignment \override #'forced-distance = #7
    }
  }   %% end paper
  \midi { }  
}



