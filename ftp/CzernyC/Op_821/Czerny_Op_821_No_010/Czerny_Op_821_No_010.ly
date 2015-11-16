\version "2.18.2"
\language "english"
\header {
    composer	        =       "Czerny, C."
    mutopiacomposer     =       "CzernyC"

    title	            =	"160 Eight-Measure Exercises"
    mutopiatitle        = 	"160 Eight-Measure Exercises, No. 10"

    opus	            =	"Op. 821"
    mutopiaopus         = 	"Op. 821, No. 10"
    
    source        	    =	"IMLSP; Leipzig: Edition Peters, n.d.[1888]. Plate 6990-6993."
    style             	=	"Technique"
    license          	=	"Public Domain"
    maintainer	        =	"Manuel Castejon Limas"
    maintainerWeb       =	"https://github.com/mcasl/Czerny"
    mutopiainstrument   =       "Piano"

 footer = "Mutopia-2015/11/16-2073"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}


%--------Definitions
global = {
  \key f \major
  \time 2/4
}

exerciseNumber = "10."
mbreak = {  }
upperStaff =   { \tempo "Allegro"
  a'16^1 r c''^2 r f''^4 r a''^5 r                                       | %1
  c'''32^3 ( bf'' ) r16 a''32^3 ( g''32) r16 f''32^3 ( e''32 ) r16 r8    | %2
  a'16^1 r c''^2 r e''^4 r g''^5 r                                       | %3
  d'''32^3 ( c''' ) r16 bf''32^3 ( a''32) r16 g''32^3 ( f''32 ) r16 r8    | %4
  f''16^1 r a'' r c''' r f''' r           | %5
  g'''32^3 ( f''' ) r16 e'''32^3 ( d'''32) r16 c'''32^3 ( bf''32 ) r16 a''32^3 ( g''32 ) r16             | %6
  d'''32^5 ( c''' ) r16 a''32^2 ( f''32) r16 c'''32^5 ( bf''32 ) r16 g''32^2( e'') r16            | %7
  f''32^3[ ( g'' f'' e''] f''^1 a'' c''' a'' f''8^\staccato ) r8
 \bar "|."   %8 
}

lowerStaff =  {
\clef bass
  f32^5[ c' a c'] f[ c' a c'] f[ c' a c'] f[ c' a c']             | %1
  g32^4[ c' bf c'] g32[ c' bf c'] g32[ c' bf c']  g32[ c' bf c']  | %2
  e32[ c' bf c'] e32[ c' bf c'] e32[ c' bf c']  e32[ c' bf c']    | %3
  f32^5[ c' a c'] f[ c' a c'] f[ c' a c'] f[ c' a c']             | %4
  a32[ f' c' f'] a[ f' c' f'] a[ f' c' f'] a[ f' c' f']         | %5
  \clef treble 
  bf32_4[ f' d' f']    bf32[ f' d' f']    bf32[ g' d' g']    bf32[ g' d' g']  | %6
  c'32_5[ a'_1 f'_3 a']    c'32[ a' f' a']  c'32_5[ bf'_1 g'_2 bf']  c'32[ bf'g' bf'] | %7
  <f'_3 a'_1>8  <f' a'>8 <f' a'>8  r8                                         | %8
   \bar "|."   
}

%-------Typeset music and generate midi

dynamics = { 
  <>\f s2   | %1
  s2        | %2
  s2        | %3
  s2        | %4
  s32 <>\< s32 s16 s8 s8 s16 s32 s64 \! s64  | %5
  <>\sf s2  | %6
  s2        | %7
  s2        | %8 
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


