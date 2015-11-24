\version "2.18.2"
\language "english"
exerciseNumber = "12."
\header {
    composer	        =       "Czerny, C."
    mutopiacomposer     =       "CzernyC"

    title	            =	"160 Eight-Measure Exercises"
    mutopiatitle        = 	"160 Eight-Measure Exercises, No. 12"

    opus	            =	"Op. 821"
    mutopiaopus         = 	"Op. 821, No. 12"
    
    source        	    =	"IMLSP; Leipzig: Edition Peters, n.d.1888. Plate 6990-6993."
    style             	=	"Technique"
    license          	=	"Public Domain"
    maintainer	        =	"Manuel Castejon Limas"
    maintainerWeb       =	"https://github.com/mcasl/Czerny"
    mutopiainstrument   =       "Piano"

 footer = "Mutopia-2015/11/24-2077"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%--------Definitions
global = {
  \key bf \major
  \time 4/4
}

mbreak = { }

pianoUpper = { \tempo "Allegro moderato"
  \clef treble 
  bf'16^1 d''^3 c''^2 ef''^4  d''^3 f''^5 ef''^4 c''^2  
  bf'16 d'' c'' ef''  d'' f'' ef'' c''                 | % 1

  bf'16 d'' c'' ef''  d'' f'' ef'' c''                 
  bf'16^1 c'' d'' ef''^4 f''^1 g'' a'' bf''^4            | % 2
  
  a''16^1 c'''^3 bf''^2 d'''^4  c'''^3 ef'''^5 d'''^4 bf''^2 
  a''16^1 c''' bf'' d'''  c''' ef''' d''' bf''           | % 3  

  a''16 c''' bf'' d'''  c''' ef''' d''' bf'' a'' bf'' c'''^1 d'''^2           
  \ottava 1  ef'''^3 f'''^1 g''' a'''                  | % 4
  
  bf'''16 c''''^1 d'''' ef'''' f''''^4 ef'''' d'''' c''''
  bf'''^4 a ''' g''' f''' ef'''^3 d''' c''' bf''^3     | %5
  
  a''16 g'' fs''_2 g''_1 c'''^3
  b''^2 d'''^4 c'''^1 ef'''^3 d'''
  f'''!^4 ef''' g'''^5 d''' ef''' c'''^1  \ottava 0      | % 6
  
  f'''^4 ef''' d''' c''' bf''^4 a'' g'' f''
  ef''^3 d'' c'' bf'^2 a' ef'' c'' a'                  | % 7

  bf'8 r8  <f'^2 d''^5> r <d'^1 bf'^4> r8 r4         | % 8
  
  \bar "|."   % 8
  
}

tenorPiano =  {  
\clef bass
\stemDown
d4\rest d8\rest <f_5 c'_2>  ( <bf_3 d'_1>^\staccato )  d8\rest d8\rest  <f c'> (             | % 1
  
<bf d'>^\staccato )  d8\rest d8\rest  <f c'> (  <bf d'>^\staccato ) d8\rest d4\rest  | % 2
 
<f c'>8^\staccato  d8\rest d8\rest   <bf_3 d'_1> (  <f_5 c'_2>8^\staccato ) d8\rest d8\rest <bf d'> ( | % 3
 
<f c'>8^\staccato ) d8\rest d8\rest <bf d'> (  <f c'>8^\staccato ) d8\rest d4\rest            | % 4

d1    | % 5 

ef1    | % 6

f2 f2  | % 7

s1  | % 8
 
\bar "|."   
}

bassPiano = {
\clef bass
\stemUp
s1   | % 1
 
s1   | % 2
 
s1   | % 3
 
s1   | % 4
 
\slurUp d4^5 (  f^3 bf f  | % 5
 
ef4^4 g^2 c' g   | % 6
 
f4^5 <bf^3 d'^1> f <c' ef'> | % 7
 
\stemDown <bf d'>8) d8\rest bf^1 d8\rest \stemUp bf, d8\rest d4\rest  | % 8| % 8


}

dynamics = { 
  <> \p s1      | %1
  s1            | %2
  <>\cresc s1   | %3
  s1            | %4
  <>\f s1       | %5
   s1           | %6
  s1            | %7
  s1            | %8 
}

pedal = {
}

\score {
  <<
    \new PianoStaff <<
      \set PianoStaff.instrumentName = \markup \huge \bold \exerciseNumber 
      \set PianoStaff.midiInstrument = "acoustic grand"
      \context Staff = "1" << \context Voice = "pianoUpper" {  \global \pianoUpper } >>
      \context Dynamics = "Dynamics_pf" \dynamics
      \context Staff    = "2" << \context Voice = "tenorPiano"    {  \global \voiceThree \tenorPiano }
                                 \context Voice = "bassPiano"     {  \global \voiceFour  \bassPiano } >>
      \context Dynamics = "pedal" \pedal
    >>
  >>
  \layout {
  %  \mergeDifferentlyHeadedOn 
  %  \mergeDifferentlyDottedOn
  }
  
  \midi {}
}
