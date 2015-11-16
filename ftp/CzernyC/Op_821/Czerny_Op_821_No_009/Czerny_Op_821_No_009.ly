\version "2.18.2"
\language "english"
exerciseNumber = "9."
\header {
    composer	        =       "Czerny, C."
    mutopiacomposer     =       "CzernyC"

    title	            =	"160 Eight-Measure Exercises"
    mutopiatitle        = 	"160 Eight-Measure Exercises, No. 9"

    opus	            =	"Op. 821"
    mutopiaopus         = 	"Op. 821, No. 9"
    
    source        	    =	"IMLSP; Leipzig: Edition Peters, n.d.1888. Plate 6990-6993."
    style             	=	"Technique"
    license          	=	"Public Domain"
    maintainer	        =	"Manuel Castejon Limas"
    maintainerWeb       =	"https://github.com/mcasl/Czerny"
    mutopiainstrument   =       "Piano"

 footer = "Mutopia-2015/11/16-2072"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%--------Definitions
global = {
  \key f \major
  \time 6/8
}


mbreak = {   }


pianoUpper = { \tempo "Vivace"
  \clef "treble"
  \ottava 1 c''''16^5 ( bf''' a''' g'''16 f''' e'''^3 \ottava 0 d''' c'''16 bf''^4 a'' g''16 f''         | % 1
  e''^2 f'' e'' f'' g'' f'' e''8^\staccato ) r8 r8                                                       | % 2
  \ottava 1 bf'''16^4 ( a''' g''' f'''16 e'''^3 d''' \ottava 0 c''' bf''16^4 a'' g'' f''16^1 e''^2      | % 3
  f''^3 g'' f''^2 g'' a'' g'' f''8^\staccato ) r8 r8                                                     | % 4
 \ottava 1 f''''16^4 ( e'''' d'''' c''''16 bf'''^4 a'''  g''' f'''16 a'''^3 g''' f'''16 e'''^3 \ottava 0 | % 5
  d'''16  c''' bf''^3 a''16 g'' fs''^2 g''^1 [ a'' bf'' c''' ] d'''8^\staccato )                          | % 6                   
  \ottava 1 c'''16 ^1 [ ( f'''^2 a''' f''' ] c''''8^5 ^\staccato ) e''16_1[ ( g''16_2 c''' g'' ] e'''8^5^\staccato )                   | % 7
  f'''16^4 ( c''' a'' c''' f''' a''' f'''8^3 )  \ottava 0 r8 r8 | % 8
\bar "|."   % 8
}

tenorPiano =  {
  \clef "bass"
  f8 a c' f a c'   | % 1
  g8 bf c' g bf c' | % 2
  g8 bf c' g bf c' | % 3
  a8 c' f' a c' f'   | % 4
  a8 c' f' a c' f'    | % 5
\clef "treble"
  bf8 d' g' bf d' g' | % 6
  c' f'_3 a' c' g' bf' | % 7
  <f' a'>8 <f' a'>8 <f' a'>8 <f' a'>8 r8 r8 | % 8
   \bar "|."   % 8
}

bassPiano =  {
  \clef "bass"
  f4._5 f4. | % 1
  g4._4 g   | % 2
  g4. g     | % 3
  a4._5 a     | % 4
  a4. a     | % 5
 \clef "treble"
 bf4._4 bf   | % 6
  c'4._5 c'   | % 7
  s2.       | % 8
   \bar "|."   % 8
}


dynamics = { 
  <> \p s2. | %1
  s2.       | %2
  s2.       | %3
  s2.       | %4
  <> \sf s8 s8 \cresc  s2       | %5
  s2.       | %6
  <> \f s2.       | %7
  s2.       | %8 
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
    \mergeDifferentlyHeadedOn 
    \mergeDifferentlyDottedOn
  }
  
  \midi {}
}
