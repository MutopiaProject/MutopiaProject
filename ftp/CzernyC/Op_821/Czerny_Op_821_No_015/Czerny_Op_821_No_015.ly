\version "2.18.2"
\language "english"

\header {
    composer	        =       "Czerny, C."
    mutopiacomposer     =       "CzernyC"

    title	            =	"160 Eight-Measure Exercises"
    mutopiatitle        = "160 Eight-Measure Exercises, No. 15"

    opus	            =	"Op. 821"
    mutopiaopus         = "Op. 821, No. 15"
    
    source            =	"IMLSP; Leipzig: Edition Peters, n.d.[1888]. Plate 6990-6993."
    style             =	"Technique"
    license          =	"Public Domain"
    maintainer	        =	"Manuel Castejon Limas"
    maintainerWeb       =	"https://github.com/mcasl/Czerny"
    mutopiainstrument   =       "Piano"

 footer = "Mutopia-2015/12/03-2081"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%--------Definitions
exerciseNumber = "15."

mbreak = {  }
upperStaff =   { \tempo "Allegretto"
\clef treble \key g \major \time 2/4 
b'32^1 c''^2 cs''^3 d''^4 e''^5 d'' cs'' d''^4 b'^1 c''! cs'' d'' e'' d'' cs'' d'' | % 1

b'32 c''! cs'' d'' e'' d'' cs'' d'' g'^1 a' b' c''!^1 d'' e'' fs'' g''^5 | % 2

e''32^1 f''! fs'' g''^4 a''^5 g'' fs'' g''^4 e'' f''! fs'' g'' a'' g'' fs'' g'' | % 3

e''32 f''! fs'' g'' a'' g'' fs'' g'' c''^1 d'' e'' f''!^1 g'' a'' b'' c'''^5 | % 4

b''32^1 c''' cs''' d''' e''' d''' cs''' d'''^4 g''^1 a'' as'' b'' c'''! b'' as'' b''^4 | % 5

a''!32^1 as'' b'' c''' d''' c''' b'' c'''^4 d''^1 e'' f''! fs''^4 g''^5 fs'' ^3 e''^2 fs'' | % 6

g''32^1 a'' as'' b'' c''' b'' as'' b''^4 d'' e'' fs'' g''^4 b'^1 c'' cs'' d''^4 | % 7
g'8 r8 r4                       | % 8
\bar "|."

}

lowerStaff =  {
\clef bass \key g \major \time 2/4 
<g b d'>8 r8 <g b d'>8 r8 | % 1

<g b d'>8 r8 r4           | % 2

<c e g>8 r8 <c e g>8 r8   | % 3

<c e g>8 r8 r4            | % 4

<d g b>8 r8 <d g b>8 r8   | % 5

<d fs c'>8 r8 <d a c'>8 r8 | % 6

<g b>8 r8 r4              | % 7

<g, b, d>8 r8 r4          | % 8

\bar "|."
}

%-------Typeset music and generate midi

dynamics = {
  <>-\p s2       | % 1
  s2             | % 2
  <>-\cresc  s2  | % 3
  s2             | % 4
  <>-\f s2       | % 5
  s2             | % 6
  s2             | % 7
  s2             | % 78
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
