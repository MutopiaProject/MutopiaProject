\version "2.18.2"
\language "english"

\header {
    composer	        =       "Czerny, C."
    mutopiacomposer     =       "CzernyC"

    title	            =	"160 Eight-Measure Exercises"
    mutopiatitle        = 	"160 Eight-Measure Exercises, No. 14"

    opus	            =	"Op. 821"
    mutopiaopus         = 	"Op. 821, No. 14"
    
    source        	    =	"IMLSP; Leipzig: Edition Peters, n.d.[1888]. Plate 6990-6993."
    style             	=	"Technique"
    license          	=	"Public Domain"
    maintainer	        =	"Manuel Castejon Limas"
    maintainerWeb       =	"https://github.com/mcasl/Czerny"
    mutopiainstrument   =       "Piano"

 footer = "Mutopia-2015/11/27-2079"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}


%--------Definitions
exerciseNumber = "14."

mbreak = {  }
upperStaff =   { \tempo "Allegretto"
\clef treble \key bf \major \time 3/8 

\times 4/5 { f''32^2[ ( g''  f''  e''  f'']} bf''8^.^5 ) r8    | % 1

\times 4/5 { f''32^2[ ( g''  f''  e''  f'']} c'''8^. ) r8      | % 2

\times 4/5 { f''32^2[ ( g''  f''  e''  f'']} d'''8^.^5 )      
d'''32^3([ ef'''! d''' c''']                                   | % 3

bf''8^.^1) r8 r8                                               | % 4

\times 4/5 { f''32^2[ ( g''  f''  e''  f'']} c'''8^.^5 ) r8    | % 5

\times 4/5 { f''32^2[ ( g''  f''  e''  f'']} d'''8^. ) r8      | % 6

\times 4/5 { f''32^2[ ( g''  f''  e''  f'']} ef'''!8^. ) 
ef'''32^3([ f''' ef''' d''']                                   | % 7                                 

c'''8^.) r8 r8                                                 | % 8

\ottava 1 \times 4/5 { f'''32^2[ ( g'''
                       f'''  e'''  f''']} bf'''8^.^5 ) r8      | % 9

\times 4/5 { f'''32^3[ ( g''' f'''  e'''
             f''']} d'''8^. ) r8                               | % 10

\times 4/5 { c'''32^2[ ( d''' c'''  b''!
             c''']} g'''8^.^5 ) r8                             | % 11

\times 4/5 { ef'''32^3[ ( f''' ef'''  d'''
             ef''']} c'''8^. ) r8                              | % 12

\times 4/5 { d'''32^2[ ( ef''' d'''  c'''
             d''']} f'''8^.^4 ) r8     \ottava 0               | % 13

\times 4/5 { f''32^2[ ( g''  f''  e''  f'']} a''8^.^4 ) r8     | % 14


bf''32^2 [( c'''  bf''  a'']  bf''[ 
d'''^4 f''' d'''] bf'' f''^ 1 d''^2 f''^4                      | % 15

bf'8^.^1) r8 r8                                                | % 16
\bar "|." 

}

lowerStaff =  {
\clef treble \key bf \major \time 3/8 
  <bf d' f' >8_._4 r8  <bf d' f' >_.  | % 1
  <a ef' f'>8_. r8 <a ef' f'>8_.      | % 2
  <bf d' f'>8_. r8 r8                 | % 3
  r8 d'32_2 [( ef' d'  c'] bf8_. )    | % 4
<a ef' f'>8_. r8 <a ef' f'>8_.        | % 5 
<bf d' f'>8_. r8 <bf d' f'>8_.        | % 6
<a c' f'>8_. r8 r8                    | % 7
r8 ef'32_2 [( f' ef'  d'] c'8_. )     | % 8
\clef bass
<d f bf>_1_3_5^. r8 <d f bf>^.        | % 9
<d f bf>^. r8 <d f bf>^.              | % 10
<ef g c'>_4^. r8 <ef g c'>^.          | % 11
<ef g c'>^. r8 <ef g c'>^._1_3_5      | % 12
<f bf d'>^._1_2_4 r8                  
\set fingeringOrientations = #'(down left)
<f-5 bf-3 d'>^.                       | % 13
\set fingeringOrientations = #'(left)
<f c'-2 ef'>^. r8 <f c' ef'>^.        | % 14

<bf d'>^. r8 <bf, d f>_4^.            | % 15

<bf, d f>^. r8 r8                     | % 16
\bar "|."
}

%-------Typeset music and generate midi

dynamics = {
  <>-\markup { \italic { \bold \large p scherzando } } s4.  | % 1
  <>-\markup { \italic { e leggiero } } s4.                 | % 2
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


