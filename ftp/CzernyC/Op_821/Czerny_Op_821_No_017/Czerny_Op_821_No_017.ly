\version "2.18.2"
\language "english"

\header {
    composer	        =       "Czerny, C."
    mutopiacomposer     =       "CzernyC"

    title	            =	"160 Eight-Measure Exercises"
    mutopiatitle        = "160 Eight-Measure Exercises, No. 17"

    opus	            =	"Op. 821"
    mutopiaopus         = "Op. 821, No. 17"
    
    source            =	"IMLSP; Leipzig: Edition Peters, n.d.[1888]. Plate 6990-6993."
    style             =	"Technique"
    license          =	"Public Domain"
    maintainer	        =	"Manuel Castejon Limas"
    maintainerWeb       =	"https://github.com/mcasl/Czerny"
    mutopiainstrument   =       "Piano"

 footer = "Mutopia-2015/12/07-2083"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%--------Definitions
exerciseNumber = "17."

mbreak = {  }
global = { \key g \major \time 4/4 }

pianoUpper =   { \tempo "Allegro vivace"
\clef treble 

d''16^4 d''^3 d''^2 d''^1 b''8 r8
c''16^4 c''^3 c''^2 c''^1 a''8 r8   | % 1

b'16 b' b' b' g''8 r8 <b' d''>2^2^> | % 2

d''16^4 d''^3 d''^2 d''^1 c'''8 r8
d''16   d''   d''   d''    b''8  r8  | % 3

d''16 d'' d'' d'' a''8 r8 <fs'' a'' d'''>2^> | % 4 

    

d''16^4 d''^3 d''^2  d''^1
g''16^4 g''^3 g''^2  g''^1 
b''16   b''   b''    b''
\ottava 1
d'''16 d''' d''' d''' | % 5      

e'''^2 g'''^4 fs'''^2 g'''^3 a''' g''' fs''' e'''^1 ds'''^2 e'''^3 fs''' e''' d'''!^2 c'''^1 b''^2 c'''^3   \ottava 0 | % 6

b''16^1 d'''^4  d'''^3  d'''^2
g''^1   b''^4   b''^3   b''^2 
a''^1   c'''^4  c'''^3  c'''^2 
d''^1   fs''^4  fs''^3  fs''^2 | % 7

g''16^3 d''^1 b'^2 d''^1 g''^2 b''^4 d''' b'' g''8 r8 r4 | % 8
\bar "|."

}

bassPiano =  {
\clef bass 
g2_4 fs2_5 | % 1
g1        | % 2 
fs2 g2     | % 3
d2 c2     | % 4
b,1       | % 5
c2 c2     | % 6        
d2 d2     | % 7
<g b>8 d8\rest <g b> d8\rest <g b> d8\rest d4\rest | % 8
\bar "|."
}

tenorPiano = {
\clef bass 
g4 <b d'> fs <a d'>       | % 1

g4 <b d'> <b d'> <b d'>   | % 2

fs4 <a d'> g <b d'>       | % 3

d4 <fs a> c <fs a>        | % 4

b,4 <d^4 g^1> <d g> <d g> | % 5

c4 <e a> c   <e a>        | % 6

d4 <g b> d   <a c'>       | % 7

s1                        | % 8
}

%-------Typeset music and generate midi

dynamics = {
  <>-\p s1    | % 1
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
