\version "2.18.2"
\language "english"

\header {
    composer	        =       "Czerny, C."
    mutopiacomposer     =       "CzernyC"

    title	            =	"160 Eight-Measure Exercises"
    mutopiatitle        = "160 Eight-Measure Exercises, No. 19"

    opus	            =	"Op. 821"
    mutopiaopus         = "Op. 821, No. 19"
    
    source            =	"IMLSP; Leipzig: Edition Peters, n.d.[1888]. Plate 6990-6993."
    style             =	"Technique"
    license          =	"Public Domain"
    maintainer	        =	"Manuel Castejon Limas"
    maintainerWeb       =	"https://github.com/mcasl/Czerny"
    mutopiainstrument   =       "Piano"

footer = "Mutopia-2015/11/06-1722"
copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
tagline = ##f
}

%--------Definitions
exerciseNumber = "19."

mbreak = {  }
upperStaff =   { \tempo "Allegretto animato"
\clef treble \key d \major \time 3/4 
\times 2/3 { <fs' a'>8^.^3^5 <fs' a'>^. <fs' a'>^.}  
\times 2/3 { <fs' a'>8 ( <e' g'> <d' fs'>^1^3 )}
\times 2/3 { <d' fs'>8^.^2^4 <d' fs'>^. <d' fs'>^.}  | % 1

\times 2/3 { <e' g'>8^.^3^5 <e' g'>^. <e' g'>^.}  
\times 2/3 { <e' g'>8 ( <d' fs'> <cs' e'>^1^3 )}
\times 2/3 { <cs' e'>8^.^2^4 <cs' e'>^. <cs' e'>^.}  | % 2

\times 2/3 { <d' fs'>8^.^1^3 <e' g'>^. <fs' a'>^.}  
\times 2/3 { <f' a'>8 ( <e' g'> ) <e' g'>^. )}
\times 2/3 { <e' g'>8^. ( <d' fs'> ) <d' f'>^.}  | % 3

\times 2/3 { <cs' e'>8^.^3^5 <a' cs'>^. <b' d'>^.}
\times 2/3 { <bs' ds'>8^.^1^3 <cs' e'>^. <d' f'>^.^1^3}
\times 2/3 { <ds' fs'>8^. <e' g'>^.^1^3 <es' gs'>^.} | % 4

<fs' g'>8^3^5 r8 <a' d''>^2^5 r8 r4     | % 5

<a' cs'>8^1^2 r8 \ottava 1 <a' e'' g''> r8 r4 | % 6

\times 2/3 { <d 'fs'>8^.^1^3 <e' g'>^. <fs' a'>^. }
\times 2/3 { <b e>8^.^1^3 <ds' a'>^. <e' g' >^. }
\times 2/3 { <a cs'>8^.^1^3 <b d'>^. <cs' e>^. }   \ottava 0 | % 7

\times 2/3 { d''8^.^5 a'^.^3 fs'^.^2}
\times 2/3 { d'8^.^1 a^.^3 fs^.}
d8 r8  | % 8

\bar "|." 
}

lowerStaff =  {
\clef bass \key d \major \time 3/4
d8 r8 d'8 r8 r4  | % 1

a8 r8 a'8 r8 r4  | % 2

<d a>8_3 r8 <cs a> r8 <d a> r8 | % 3

<a, a>8 r8 r4 r4 \clef "treble" | % 4

\times 2/3 { <fs' a'>8^.^3^1 <fs' a'>^. <fs' a'>^.}  
\times 2/3 { <fs' a'>8 ( <e' g'> <d' fs'>^5^3 )}
\times 2/3 { <d' fs'>8^.^4^2 <d' fs'>^. <d' fs'>^.}   | % 5

\times 2/3 { <e' g'>8^. <e' g'>^. <e' g'>^.}  
\times 2/3 { <e' g'>8 ( <d' fs'> <cs' e'>^5^3 )}
\times 2/3 { <cs' e'>8^.^2^4 <cs' e'>^. <cs' e'>^.}  | % 6

<d' f'> r8 <g b e'> r8 <a e' g'> r8 | % 7

<d' fs'>8 r8 \clef "bass" d8 r8 r4   | % 8

\bar "|."
}

%-------Typeset music and generate midi

dynamics = {
  <>-\p <>-"dolce" s2       | % 1
  s2             | % 2
  s2             | % 3
  <>-\cresc s2   | % 4
  s2             | % 5
  s2      \!     | % 6
  <>-\f s2       | % 7
  s2             | % 8
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
