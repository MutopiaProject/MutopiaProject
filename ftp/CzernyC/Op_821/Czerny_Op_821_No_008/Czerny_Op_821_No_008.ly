\version "2.18.2"
\language "english"
exerciseNumber = "8."
\header {
    composer	        =       "Czerny, C."
    mutopiacomposer     =       "CzernyC"

    title	            =	"160 Eight-Measure Exercises"
    mutopiatitle        = 	"160 Eight-Measure Exercises, No. 8"

    opus	            =	"Op. 821"
    mutopiaopus         = 	"Op. 821, No. 8"
    
    source        	    =	"IMLSP; Leipzig: Edition Peters, n.d.1888. Plate 6990-6993."
    style             	=	"Technique"
    license          	=	"Public Domain"
    maintainer	        =	"Manuel Castejon Limas"
    maintainerWeb       =	"https://github.com/mcasl/Czerny"
    mutopiainstrument   =       "Piano"

 footer = "Mutopia-2015/11/15-2069"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%--------Definitions
global = {
  \key f \major
  \time 4/4
}


mbreak = {   }


upperStaff = { \tempo "Allegro"
 <a''^3 c'''^5>2. <f'' a''>4                                                               | % 1
 <f'' a''>8^\staccato  f'16_1 [g'] a' bf' c''^1 d'' e'' f''^1 g'' a'' bf''^4 a'' g'' a''      | % 2
 <g'' bf''>2. <e'' g''>4                                                                   | % 3
 <e'' g''>8 ^\staccato  g''16^2[ a''] bf'' a'' g'' f''^1 e''^3 d'' c'' bf'^3 \stemDown a' g' c''^5 bf' \stemNeutral| % 4
 <f'^1 a'^3>2. <c''^1 a''^5>8 <c'' a''>8                                                   | % 5
 <bf'^2 g''^5>2. <bf' g''>8 <bf' g''>8                                                 | % 6
 <a' f''>2 <g' e''^4>2                                                                     | % 7
 <a' f''>8  r8 r4 r2                                                             \bar "|."   % 8
}

lowerStaff =  {
  \clef "bass"
 
   f,16_3 fs, g,_1 gs,_2 ^3 a,16^1_1 bf,^3_2 b,^2_1 c^1_3 cs16^3_2  d^1_1 ds^3_2 e^2_1 f!16^1_2 e_3 f e  | % 1  
   f8^\staccato  r8 r4 r2                                                                       | % 2
   c'16^1 b bf^3 a^1 af^2_3 g^1 gf^2_3 f^1 e^2 ef^3 d^1 df^2_3 c^1 b,^2 c b,                                 | % 3
   c8_\staccato r8 r4 r2                                                                               | % 4
   f,16_3  fs, g, gs,_2 ^3 a,16^1 bf,^3_2 b,^2_1 c^1_3 cs16^3_2 d^1_1 ds^3_3 e f8 r8                    | % 5 
  bf,!16 _3 b, c cs^3_2 d^1 ds^3_3 e f fs^3_2 g^1 gs^3_2 a^1 bf8^2 r8                                                                      \mbreak                    | % 6 
  c16^5 d e f g^1 a^4 bf^3 b^2 c'^1 b c' b c' g^2 e^4 c^5                                               | % 7
  f16^2 e f^1 e f c_2 a,_4 c f,8 r8 r4                                                                                        \bar "|."   % 8
}


dynamics = { 
  <> \f s1 | %1
  s1       | %2
  s1       | %3
  s1       | %4
  s1       | %5
  s1       | %6
  s1       | %7
  s1       | %8 
}

pedal = {
}

\score {
  \new PianoStaff = "PianoStaff_pf" <<
    \set PianoStaff.instrumentName = \markup \huge \bold \exerciseNumber 
    \new Staff    = "Staff_pfUpper" << \global \upperStaff >>
    \new Dynamics = "Dynamics_pf" \dynamics
    \new Staff    = "Staff_pfLower" << \global \lowerStaff >>
    \new Dynamics = "pedal" \pedal
  >>
  \layout { }
}

\score {
  \new PianoStaff = "PianoStaff_pf" <<
    \set PianoStaff.midiInstrument = "acoustic grand"
    \new Staff = "Staff_pfUpper" << \global \upperStaff \dynamics \pedal >>
    \new Staff = "Staff_pfLower" << \global \lowerStaff \dynamics \pedal >>
  >>
  \midi { \tempo 4 = 110 }
}
