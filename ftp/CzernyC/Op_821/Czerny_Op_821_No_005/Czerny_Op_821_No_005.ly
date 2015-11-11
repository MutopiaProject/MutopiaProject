\version "2.18.2"
\language "english"
exerciseNumber = "5."
\header {
    composer	        =       "Czerny, C."
    mutopiacomposer     =       "CzernyC"

    title	            =	"160 Eight-Measure Exercises"
    mutopiatitle        = 	"160 Eight-Measure Exercises, No. 5"

    opus	            =	"Op. 821"
    mutopiaopus         = 	"Op. 821, No. 5"
    
    source        	    =	"IMLSP; Leipzig: Edition Peters, n.d.1888. Plate 6990-6993."
    style             	=	"Technique"
    license          	=	"Public Domain"
    maintainer	        =	"Manuel Castejon Limas"
    maintainerWeb       =	"https://github.com/mcasl/Czerny"
    mutopiainstrument   =       "Piano"

 footer = "Mutopia-2015/11/11-2066"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%--------Definitions
global = {
  \key f \major
  \time 3/4
}


mbreak = { \break  }

\layout {
  \context {
    \Score
  }
}

pianoUpper = { \tempo "Andantino expresivo"
  \times 2/3  { f''16^ 2  (  g'' f''}                     % 1
  g''32 f'' g'' f''  g''  f'' g'' f'' g'' f'' g''         % 1
  f''32  g''  f'' g'' f'' g'' f'' e'' f''               | % 1
  
  g''8^\staccato )  r c'' ^\staccato r c'' ^\staccato r | % 2
  
  \times 2/3  {    g''16^2 (  a'' g''  }                    % 3
  a''32 g'' a'' g''  a''  g'' a'' g'' a'' g''             % 3
  a''32  g'' a'' g'' a'' g'' a'' g'' f'' g'' \mbreak    | % 3
  
  a''8 ) ^\staccato r f'' ^\staccato r f'' ^\staccato r | % 4
  
  \times 2/3  { c'''16^2 (  d''' c'''}
  d'''32  c''' d''' c'''  d'''  c''' d''' c''' d'''
  c'''32 d''' c'''  d'''  c''' d''' c''' d''' c'''
  b''32  c'''                                            | % 5
  

 e'''8]^4 )  (  d'''^\staccato]^3 ) \appoggiatura {c'''16^2 d'''16^4} c'''8[^3 (  bf'']^ 2  )  ^\staccato  \appoggiatura {a''16^1 bf''^3} a''8[^ 2 (  g''] )  ^\staccato  | % 6
  
  \appoggiatura {f''16^2 g''^4} f''8(^3  e''8)^2  -\staccato  \appoggiatura {d''16 ^ 1 e''^3} d''8(^2  c'')^\staccato  \acciaccatura c'' a''8.(  ^>  g''16                    | % 7
  f''8 ) r r4 r                                             \bar "|."   % 8
}

bassPiano =  {
  \clef "bass" \key f \major \time 3/4 
  f2.                   | % 1
  e2.                   | % 2
  e2.                   | % 3
  f2.                   | % 4
  a,2.                  | % 5
  bf,2._4               | % 6
  c2._5                 | % 7
  f8_1 s8*5    \bar "|."  % 8
}

tenorPiano =  {
  \clef "bass"
  f8  c' a c' a c'                        | % 1
  e8  c' bf c' bf c'                      | % 2
  e8  c' bf c' bf c'                      | % 3
  f8  c' a c' a c'                        | % 4
  a,8  f  c f c f                         | % 5
  bf,8  g d g d g                         | % 6
  c8  bf e_3 bf e bf                      | % 7
  a8^2 f^1 (  c a,  f, ) r     \bar "|."   % 8
}


dynamics = { 
  <> \p s2.             | %1
  s2.                   | %2
  s2.                   | %3
  s2.                   | %4
  <> \sf \< s2.         | %5
  <> \sf \> s2 s8 s8 \! | %6
  <> \p s2.             | %7
  s2.                   | %8 
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

