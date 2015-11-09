\version "2.18.2"

exerciseNumber = "4."
\header {
    composer	        =       "Czerny, C."
    mutopiacomposer     =       "CzernyC"

    title	            =	"160 Eight-Measure Exercises"
    mutopiatitle        = 	"160 Eight-Measure Exercises, No. 4"

    opus	            =	"Op. 821"
    mutopiaopus         = 	"Op. 821, No. 4"
    
    source        	    =	"IMLSP; Leipzig: Edition Peters, n.d.[1888]. Plate 6990-6993."
    style             	=	"Technique"
    license          	=	"Public Domain"
    maintainer	        =	"Manuel Castejon Limas"
    maintainerWeb       =	"https://github.com/mcasl/Czerny"
    mutopiainstrument   =       "Piano"

 footer = "Mutopia-2015/11/09-2063"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%--------Definitions
global = {
  \key c \major
  \time 6/8
}


mbreak = { \break }


upperStaff =   { \tempo "Vivace"
  e''8 ^2-\staccato f''8-\staccato g''8-\staccato   \acciaccatura a''^5  g''^4-\staccato f''-\staccato e''-\staccato    | %1
  d''8 ^1-\staccato e''8-\staccato f''8-\staccato   \acciaccatura g''  f''-\staccato e''-\staccato d''-\staccato        | %2
  e''8 ^3-\staccato d''8-\staccato c''8-\staccato  c''8^2-\staccato <b' d''>8-\staccato <c'' e''>8-\staccato            | %3
  <c'' e''>4. \( <b' d''>8-\staccato \) r8 r8                                                                           | %4
  e''8 ^1-\staccato f''8-\staccato g''8-\staccato   \acciaccatura a''  g''-\staccato f''-\staccato e''-\staccato        | %5
  a''8 ^2-\staccato b''8-\staccato c'''8-\staccato  \acciaccatura d'''  c'''-\staccato b''-\staccato a''-\staccato      | %6
  g''8^1 ( c'''^5\staccato )  <e''^2 g''^4> \staccato <b' g''^5> ( f'' \staccato ) <b' d''^3> \staccato                 | %7
  c''8 \staccato r8 r8 r4 r8                                                                                  \bar "|."   %8 
}

lowerStaff =  {
\clef treble
  c'16_5 g' d' g' e' g' e'_2 g' d' g' c' g'16                 | %1
  b16_5 g' c'_4 g' d'_3 g' d'_2 g' c' g' b g'                 | %2
  c'16_5 g' d' g' e' g' e'_2 g' d' g' c' g'16                 | %3
  g16 g' fis' g' fis' g' fis' g' a'_2 g'_1 f'_2 d'_4 \mbreak  | %4
  c'16_5 g' d' g' e' g' e'_2 g' d' g' c' g'16                 | %5
  \clef bass  f^5 c' g c' a c' a_2 c' g c' f c'               | %6
  << \mergeDifferentlyHeadedOn  \mergeDifferentlyDottedOn { \voiceOne g16_5 e'_1 c'_3 e' c' e' g f' d' f' d' f' } \\ \new Voice { \voiceTwo g4. g4. } >> \oneVoice  | %7
  c'16^4 e' g' e' g' e' c'8 r8 r8                   \bar "|."   %8 
}

%-------Typeset music and generate midi
pdolce = \markup { \dynamic p \italic { dolce } }
dynamics = { 
  <>-\pdolce  s2. | %1
  s2.             | %2
  s2.             | %3
  <>->    s2.     | %4
  <> \cresc s2.   | %5
  <> \sf s2.      | %6
  <> \f s2.       | %7
  s2.             | %8 
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


