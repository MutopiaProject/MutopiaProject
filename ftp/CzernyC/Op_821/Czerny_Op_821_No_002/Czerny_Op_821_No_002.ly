\version "2.18.2"

\header {
    composer	        =       "Czerny, C."
    mutopiacomposer     =       "CzernyC"

    title	        =	"160 Eight-Measure Exercises"
    mutopiatitle        = 	"160 Eight-Measure Exercises, No. 2"

    opus	        =	"Op. 821"
    mutopiaopus         = 	"Op. 821, No. 2"
    
    source        	=	"IMLSP; Leipzig: Edition Peters, n.d.[1888]. Plate 6990-6993."
    style         	=	"Technique"
    license       	=	"Public Domain"
    maintainer	        =	"Manuel Castejon Limas"
    maintainerWeb       =	"https://github.com/mcasl/Czerny"
    mutopiainstrument   =       "Piano"

 footer = "Mutopia-2015/11/06-2061"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}


%--------Definitions
global = {
  \key c \major
  \time 3/4
}

exerciseNumber = "2."

upperStaff =   { \tempo "Allegro"
  <e'' g''>2 \f r8 <c'' e''>-\staccato    | %1
  <d'' f''>2 r8 <b'  d''>-\staccato       | %2
  <c'' e''>2 r8 <g'  e''>-\staccato       | %3                                      
  <f' a' d''>2 r8 <f' a' d''>-\staccato   | %4                                      

  <e' g' c''>2.                           | %5                                      
  <d' f' g' b'>2.                         | %6
  <e' g' c''>8-\staccato   g'16[-2 \( \<  a'] b'-1 c'' d'' e'' f''-1 g'' a'' b''   | %7
  c'''8-\staccato \sf \) r8 <e' g' c''>8-\staccato r8 r4   \bar "|." %8
}

lowerStaff =  {
          r16 c-5 \( d e f g-1 a-3 b c'8 \) r8       | %1
          r16 g,_5 \(  a, b, c d-1 e-3 f g8 \) r8    | %2
          r16 c,_5 \( d, e, f, g, a,_1 b,_3 c8 \) r8 | %3
          r16 f,_4 \( g, a, b,-1 cis-4 d e f8 \)  r8 | %4
          
          r16 g,_4 \( a, b, c b,_4 c d e d-4 e f              | %5
          g fis-3 g-1 fis-3 g-1 fis g a-2 g-1 f e d        | %6
  c8-\staccato \)  f16[_2 \(   e] d_1 c b, a, g,_1 f, e, d,   | %7
  c,8-\staccato \) r8 <c e g>8-\staccato r8 r4   \bar "|." %8  
}

%-------Typeset music and generate midi
\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "acoustic grand"
        \set PianoStaff.instrumentName = \markup \huge \bold \exerciseNumber  
        \new Staff = "upper" { \clef treble \global \upperStaff }
        \new Staff = "lower" { \clef bass   \global \lowerStaff }
    >>
    \layout{ }
    \midi  { \tempo 4 = 110 }
}
