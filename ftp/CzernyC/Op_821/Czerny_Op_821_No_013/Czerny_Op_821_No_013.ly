\version "2.18.2"
\language "english"

\header {
    composer	        =       "Czerny, C."
    mutopiacomposer     =       "CzernyC"

    title	            =	"160 Eight-Measure Exercises"
    mutopiatitle        = 	"160 Eight-Measure Exercises, No. 13"

    opus	            =	"Op. 821"
    mutopiaopus         = 	"Op. 821, No. 13"
    
    source        	    =	"IMLSP; Leipzig: Edition Peters, n.d.[1888]. Plate 6990-6993."
    style             	=	"Technique"
    license          	=	"Public Domain"
    maintainer	        =	"Manuel Castejon Limas"
    maintainerWeb       =	"https://github.com/mcasl/Czerny"
    mutopiainstrument   =       "Piano"

 footer = "Mutopia-2015/11/25-2078"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}


%--------Definitions
global = {
  \key bf \major
  \time 4/4
}

exerciseNumber = "13."
mbreak = {  }
upperStaff =   { \tempo "Allegro moderato"
 \clef treble \key bf \major \time 4/4
 
 \slurUp \acciaccatura f''8^2 d'''8^.^ 5 r8 \slurUp \acciaccatura d''8 bf''^.^4 r8 \slurUp \acciaccatura d''8 f''^.^2 r8 r4  | % 1
  
\slurUp \acciaccatura f''8 d'''8^. r8 \slurUp \acciaccatura d''8 bf''^. r8 \slurUp \acciaccatura d''8 f''^. r8 r4  | % 2

\slurUp \acciaccatura f''8 ef'''8^.^ 5 r8 \slurUp \acciaccatura f''8 c'''^.^4 r8 \slurUp \acciaccatura f''8 a''^.^2 r8 r4 | % 3

\slurUp \acciaccatura f''8 ef'''8^. r8 \slurUp \acciaccatura f''8 c'''^. r8 \slurUp \acciaccatura f''8 a''^. r8 r4 | % 4

\acciaccatura {f''16 bf''16} f'''2 <bf'^2 f''^5>                                                  | % 5  

g''16^3  a'' g'' fs'' g''^1 a''^3 bf''^4 a'' g'' f''^1 ef''^3 d'' \stemDown c'' bf'^4 a' g' \stemNeutral                | % 6 

f'8 r f'' r ef'^1 r <ef' f' a'>^4  r                                                              | % 7

<d' f' bf'>8 r8 r4 r2

\bar "|." %8

}

lowerStaff =  {
\clef bass \key bf \major \time 4/4 
\grace s8 bf16^3 c' bf a bf c' d' c' bf c' bf a  bf c' d' c'                    | % 1 

bf16   c' bf a bf c' d' c' bf c' bf a  bf c' d' bf^4                  | % 2  
 
c'16^3 d' c' b c' d' ef'^ 1 d' c' d' c' b c' d' ef' d'                | % 3

c'16 d' c' b c' d' ef' d' c' d' c' b c' d' ef' c'^4                   | % 4

d'16^3  ef' d' c' d' ef' f' ef' d'^1 c' bf a^1 g f ef^4 d^5           | % 5 

ef2  <ef_5 bf^2>                                                      | % 6

f16^5 d'^1 cs'^ 3 d'^2 ef'^1 d' cs' d'^1 f^5 c'^2 b c' d' c' b c'^1  | % 7


bf,!^5 bf!^1 a^2  bf^1 a bf f^2 d^4 bf,8 r8 r4                          | % 8 

\bar "|."
}

%-------Typeset music and generate midi

dynamics = {
  s1                                       | % 1
  s1                                       | % 2
  s1                                       | % 3
  s1                                       | % 4
  <>\sf s2 <>\sf s2                        | % 5
  <>\sf s2 <>\sf s2                        | % 6
  s1                                       | % 7  
  s1       
}

pedal = {
}

\score {
  \new PianoStaff = "PianoStaff_pf" <<
    \set PianoStaff.instrumentName = \markup \huge \bold \exerciseNumber 
    \new Staff    = "Staff_pfUpper" << \upperStaff >>
    \new Dynamics = "Dynamics_pf" \dynamics
    \new Staff    = "Staff_pfLower" << \lowerStaff >>
    \new Dynamics = "pedal" \pedal
  >>
  \layout { }
}

\score {
  \new PianoStaff = "PianoStaff_pf" <<
    \set PianoStaff.midiInstrument = "acoustic grand"
    \new Staff = "Staff_pfUpper" << \upperStaff \dynamics \pedal >>
    \new Staff = "Staff_pfLower" << \lowerStaff \dynamics \pedal >>
  >>
  \midi { \tempo 4 = 110 }
}


