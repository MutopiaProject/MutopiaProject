\version "2.18.2"
\language "english"
exerciseNumber = "7."
\header {
    composer	        =       "Czerny, C."
    mutopiacomposer     =       "CzernyC"

    title	            =	"160 Eight-Measure Exercises"
    mutopiatitle        = 	"160 Eight-Measure Exercises, No. 7"

    opus	            =	"Op. 821"
    mutopiaopus         = 	"Op. 821, No. 7"
    
    source        	    =	"IMLSP; Leipzig: Edition Peters, n.d.1888. Plate 6990-6993."
    style             	=	"Technique"
    license          	=	"Public Domain"
    maintainer	        =	"Manuel Castejon Limas"
    maintainerWeb       =	"https://github.com/mcasl/Czerny"
    mutopiainstrument   =       "Piano"

 footer = "Mutopia-2015/11/13-2068"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%--------Definitions
global = {
  \key f \major
  \time 4/4
}


mbreak = {   }

\layout {
  \context {
    \Score
  }
}

pianoUpper = { \tempo "Allegro vivace"
   c''16^1(   cs''^2_3   d''^1  ds''^2 _3    e''16^1   f''^2     fs''^3  g''^1   g''16^2_3   a''^1    bf''^2_3  b''^1     c'''16^2  d'''^3     c'''      d'''       |   % 1  
   c'''2 f'''8^\staccato ) r8 r4                                                                                                                                                                           |  % 2
   f'''16^4 ( e''' ef''' d''' df'''^2_3 c'''^1_2 b''^3_1 bf''^2_3 a''^1_1 af''^2_3 g''^1 fs''^2 f''^1 g''^3 a'' f''^2                                                                                 |  % 3
   g''2 c''8^\staccato ) r8 r4                                                                                                                                                                           |  % 4 
   c''16^1(   cs''^2_3   d''^1  ds''^2 _3    e''16^1   f''^2     fs''^3  g''^1   gs''16^2_3   a''^1    bf''^2_3  b''^1     c'''!16^2  d'''^3     c'''      d'''    |  % 5 
  c'''2 g'''8^\staccato ) r8 r4                                                                                                                                                                          |  % 5   
  \ottava 1 bf''16^4 ( a'' g'' f'' e''^3 d'' c'' bf'^4  \ottava 0 a'' g'' f'' e''^3 d'' c'' d'' e''
  f''8 ) r8 <c''^2 a''^5> r8 <a'_1 a''^4> r8 r4
   
  \bar "|."   % 8
}

bassPiano =  {
  \clef "bass" \key f \major  
  f1_4                                              | % 1
  f1                                              | % 2
  f1                                              | % 3
  e1                                             | % 4
  e1                                             | % 5
  e1                                             | % 6
  c1_5                                         | % 7
  f8_3 d8\rest  f_1 d8\rest \stemUp f,  d8\rest d4\rest   \bar "|."  % 8
}

tenorPiano =  {
  \clef "bass"
  a4^2 (  c' a c'                   | % 1
  a4   c' a c'                    | % 2
  a4 )(  c' a c'                  | % 3
  bf4  c' bf c'                   | % 4
  bf4 )( c'  bf c'                | % 5
  bf4  c'  bf c')                 | % 6 
  g4^2 ( bf g bf               | % 7
  a8^1 )  s8*7     \bar "|."   % 8
}


dynamics = { 
  <> \p s1             | %1
  s1                      | %2
  s1                      | %3
  s1                      | %4
  <>\cresc s1      | %5
   s1                     | %6
  <> \f  s1             | %7
  s1                      | %8 
}

pedal = {
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
