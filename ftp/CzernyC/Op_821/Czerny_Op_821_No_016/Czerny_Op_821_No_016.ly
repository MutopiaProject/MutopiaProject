\version "2.18.2"
\language "english"

\header {
    composer	        =       "Czerny, C."
    mutopiacomposer     =       "CzernyC"

    title	            =	"160 Eight-Measure Exercises"
    mutopiatitle        = "160 Eight-Measure Exercises, No. 16"

    opus	            =	"Op. 821"
    mutopiaopus         = "Op. 821, No. 16"
    
    source            =	"IMLSP; Leipzig: Edition Peters, n.d.[1888]. Plate 6990-6993."
    style             =	"Technique"
    license          =	"Public Domain"
    maintainer	        =	"Manuel Castejon Limas"
    maintainerWeb       =	"https://github.com/mcasl/Czerny"
    mutopiainstrument   =       "Piano"

 footer = "Mutopia-2015/12/03-2082"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%--------Definitions
exerciseNumber = "16."

mbreak = {  }
global = { \key g \major \time 2/4 }

pianoUpper =   { \tempo "Allegro moderato"
\clef treble
\times 2/3 {d''16^.^4 [d''^.^3 d''^.^2] }  d''8^.^1 
\override TupletNumber #'stencil = ##f
\times 2/3 {g''16^.^4 [g''^.^3 g''^.^2] }  g''8^.^1 | % 1

\times 2/3 {b''16^.   [b''^.   b''^.  ] }  b''8^. 
\times 2/3 {d'''16^.  [d'''^.  d'''^. ] }  d'''8^.  | % 2

\times 2/3 {c'''16^.  [c'''^.  c'''^. ] }  c'''8^. 
\times 2/3 {a''16^.   [a''^.   a''^.  ] }  a''8^.   | % 3

\times 2/3 {d''16^.  [d''^.  d''^. ] }  d''8^.
\times 2/3 {c''16^.  [c''^.  c''^. ] }  c''8^.      | % 4

\times 2/3 {b'16^3   [b'^2   b'^1  ] } 
\times 2/3 {d''^3    [d''^2  d''^1 ] }
\times 2/3 {g''^3    [g''    g''   ] }
\times 2/3 {b''^3    [b''    b''   ] }    | % 5

\times 2/3 {a''16^3  [a''    a''   ] }  
\times 2/3 {c'''^3   [c'''   c'''  ] }
\ottava 1
\times 2/3 {e'''^3[ e''' e''']}
\times 2/3 {a'''^3 a'''^2 a'''^1}  | % 6      

\times 2/3 {b'''16^3 [d''''^5 c'''']}
\times 2/3 {b''' a''' g''' }
\times 2/3 {fs'''^4 [e''' d''']}
\times 2/3 {c''' b''^3 a''   } \ottava 0 | % 7

\times 2/3 {g''^1[ d'''^5 b''^4]}
\times 2/3 {g''^2 d''^1 b'^4  }
g'8^2  r8   | % 8
\bar "|."

}

bassPiano =  {
\clef bass  
g4 g4     | % 1
g4 g4     | % 2 
fs4 fs4     | % 3
fs4 fs4     | % 4
g2        | % 5
c2        | % 6        
d4 d4     | % 7
<g b>8 <g b> <g b> d8\rest  | % 8
\bar "|."
}

tenorPiano = {
\clef bass 
\times 4/6 {g16_4 b_2 d'_1 b d' b}
\override TupletNumber #'stencil = ##f
\times 4/6 {g     b   d'   b d' b}     | % 1

\times 4/6 {g16   b   d'   b d' b}  
\times 4/6 {g     b   d'   b d' b}     | % 2

\times 4/6 {fs16_5 a_3 d'_1 a d' a}  
\times 4/6 {fs     a   d'   a d' a}   | % 3

\times 4/6 {fs16   a   d'   a d' a}  
\times 4/6 {fs     a   d'   a d' a}   | % 4

g8[ <b d'> <b d'> <b d'>] | % 5

c8[ <e a> <e a> <e a>   ] | % 6

d8[ <g b> d     <fs c'> ]  | % 7

s2                      | % 8
}

%-------Typeset music and generate midi

dynamics = {
  <>-\p s2    | % 1
}

pedal = {
}

mbreak = {  }

\layout {
  \context {
    \Score
  }
}

\score {
  <<
    \new PianoStaff <<
      \set PianoStaff.instrumentName = \markup \huge \bold \exerciseNumber 
      \set PianoStaff.midiInstrument = "acoustic grand"
      \context Staff = "1" << \context Voice = "pianoUpper" { \clef treble \global \pianoUpper } >>
      \context Dynamics = "Dynamics_pf" \dynamics
      \context Staff    = "2" << \context Voice = "tenorPiano"    { \clef bass \global \voiceThree \tenorPiano }
                                 \context Voice = "bassPiano"     { \clef bass \global \voiceFour  \bassPiano } >>
      \context Dynamics = "pedal" \pedal
    >>
  >>
  \layout {
  %  \mergeDifferentlyHeadedOn 
  %  \mergeDifferentlyDottedOn
  }
  
  \midi {}
}
