\version "2.18.2"

\header {
    composer	        =       "Czerny, C."
    mutopiacomposer     =       "CzernyC"

    title	            =	"160 Eight-Measure Exercises"
    mutopiatitle        = 	"160 Eight-Measure Exercises, No. 3"

    opus	            =	"Op. 821"
    mutopiaopus         = 	"Op. 821, No. 3"
    
    source        	    =	"IMLSP; Leipzig: Edition Peters, n.d.[1888]. Plate 6990-6993."
    style             	=	"Technique"
    license          	=	"Public Domain"
    maintainer	        =	"Manuel Castejon Limas"
    maintainerWeb       =	"https://github.com/mcasl/Czerny"
    mutopiainstrument   =       "Piano"

 footer = "Mutopia-2015/11/09-2062"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}


%--------Definitions
global = {
  \key c \major
  \time 4/4
}

exerciseNumber = "3."
mbreak = {  }
upperStaff =   { \tempo "Allegretto"
r16  <c''^1 e''^3> \( <d'' f''> <c'' e''> \) r  <c'' e''>  \( <d'' f''> <c'' e''> \) r <c'' e''> \( <d'' f''> <c'' e''> \) r <c'' e''> \( <d'' f''> <c'' e''> \)           | %1
r16  <b'^1 d''^3>  \( <c'' e''> <b' d''> g''8-\staccato  \) g''-\staccato g''\( f'' d'' b'\)  \mbreak                                                                  | %2
r16 <a'^1 c''^3> \( <b' d''> <a' c''>  \)  r16 <a' c''> \( <b' d''> <a' c''>  \) r16 <d''^1 f''^3> \( <e'' g''> <d'' f''>  \) r16 <d'' f''> \( <e'' g''> <d'' f''>  \)        | %3
r8 <c''^1 e''^3>16 \( <d'' f''> <e'' g''>8-\staccato \) <c'' e''>-\staccato <b'^1 d''^2>-\staccato  fis'16_2[  \( g']_1 a' b' c''^4 d''^5 \)                              | %4
r16  <c''^1 e''^3> \( <d'' f''> <e'' g''> \)  r16 <e''^3 g''^5> \( <d'' f''> <c'' e''> \)  r16 <c'' e''> \( <d'' f''> <e'' g''> \)  r16 <e'' g''> \( <d'' f''> <c'' e''> \) | %5

r16 <f''^1 a''^3> \( <g'' b''> <a'' c'''> \)  r16 <a''^3 c'''^5> \( <g'' b''> <f'' a''> \) r16 <f'' a''> \( <g'' b''> <a'' c'''> \)  r16 <a'' c'''> \( <g'' b''> <f'' a''> \) | %6
r16 <e''^2 g''^4> \( <f'' a''> <e'' g''> \)  r16 <c''^1 e''^3> \( <d'' f''> <c'' e''> \)  r16 <d''^2 f''^4> \( <e'' g''> <d'' f''> \)  r16 <b'^1 d''^3> \( <c'' e''> <b' d''> | %7
c''16^2 \) \( g' c'' e''^4 g''^5 e''^3 g'' e'' c''8 \) r8 r4 \bar "|." %8
}

lowerStaff =  {
\clef treble
<c' g'>8 r <c' g'>8 r  <c' g'>8 r  <c' g'>8 r  | %1
<g f'>1                                        | %2
<a e'>8 r <a e'> r \clef bass <f a d'> r <f a d'> r | %3
<g c' e'>2 \( <g b d'>8-\staccato \) r8 r4         | %4
c8 r8 c' r c r  c' r \mbreak                        | %5
f8 r f' r f r f' r                                  | %6
<g c' e'>8 r <g c' e'>8 r<g b d'>8 r<g d' f'>8 r   | %7
<c' e'>8 r <c' e'>8 r <c' e'>8 r r4         \bar "|." %8  
}

%-------Typeset music and generate midi

dynamics = { 
 <> \p  s16 s4 <> \<  s2 s8 s16\!          | %1
 <> \sf s16 \> s16 s8  s4 s4 s8 s8  \!     | %2
  s1                                       | %3
  s4 s4 s8 s8 \< s8 s16 s16 \!             | %4
  s16 \f s16 s8 s2.                                      | %5
  s1                                       | %6
  s1                                       | %7
  s1                                       | %8 
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
