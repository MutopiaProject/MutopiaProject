\version "2.18.2"
\language "english"
exerciseNumber = "6."
\header {
    composer	        =       "Czerny, C."
    mutopiacomposer     =       "CzernyC"

    title	            =	"160 Eight-Measure Exercises"
    mutopiatitle        = 	"160 Eight-Measure Exercises, No. 6"

    opus	            =	"Op. 821"
    mutopiaopus         = 	"Op. 821, No. 6"
    
    source        	    =	"IMLSP; Leipzig: Edition Peters, n.d.1888. Plate 6990-6993."
    style             	=	"Technique"
    license          	=	"Public Domain"
    maintainer	        =	"Manuel Castejon Limas"
    maintainerWeb       =	"https://github.com/mcasl/Czerny"
    mutopiainstrument   =       "Piano"

 footer = "Mutopia-2015/11/12-2067"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%--------Definitions
global = {
  \key f \major
  \time 3/4
}


mbreak = { }


upperStaff = { \tempo "Andantino"
               
  <f'  a' >8( c'' <f' a'> c'' <f' a'> c''              | % 1
  <e'  bf'>8 c'' <e' bf'> c'' <e' bf'> c'' \mbreak    | % 2
  <e'  bf'>8)( c'' <e' bf'> c'' <e' bf'> c''            | % 3
  <f'  a' >8 c'' <f' a'> c'' <f' a'> c'')              | % 4
  <a'  c'' >8( f'' <a' c''> f'' <a' c''> f'') \mbreak   | % 5
  \tuplet 6/4 { bf'16^2 ( c'' bf' a' bf' c''^1  }       
  \tuplet 6/4 { d''^3  e'' d'' cs'' d''^1 e''^3 }       
  \tuplet 6/4 { f''^4  d''^2 g''^ 5 f'' e'' d'' }     | % 6
  \tuplet 6/4 { c''16 c'''^5 b''^4 bf'' a'' g''^1 }
  \tuplet 6/4 { f''^4 e'' d'' c''^1 bf'^3 a'^2 }
  \tuplet 6/4 { c''_5 bf' a' g' f' e'_2 }             | % 7
  f'8_1_\staccato ) r8 <a'^2 c''^ 3 f''^\staccato ^5> r8 r4  \bar "|."   % 8
}

     

lowerStaff =  {

\times 2/3  { f16^ 2  (  g f}                        % 1
  g32 f g f  g  f g f g f g                          % 1
  f32  g  f g f g f e f                            | % 1
  
  g8^\staccato )  r c ^\staccato r c ^\staccato r  | % 2
  
  \times 2/3  {    g16^2 (  a g  }                   % 3
  a32 g a g  a  g a g a g                            % 3
  a32  g a g a g a g f g \mbreak                   | % 3
  
  a8 ) ^\staccato r f ^\staccato r f ^\staccato r  | % 4
  
  \times 2/3  { ef16^2 (  f ef}
  f32  ef f ef  f  ef f ef f
  ef32 f ef  f  ef f ef f ef
  d32  ef                \mbreak                   | % 5
  
 d8 ) ( f   bf,8_4  f b,8_5 f_2                          | % 6
  
 <<  { \voiceOne        c8) <f^3 a^1>4 <f a>8 c[ ( <g bf>]        % 7
                        a8] ^\staccato ) f^1[( c a,]^4 f,)         % 8
     }
 \new Voice { \voiceTwo c2_5 c4( 
                        f8)  s2
 } >> \oneVoice          
 r8 \bar "|."   % 8
   
   
}


dynamics = { 
  <> \f s2.                      | %1
  s2.                            | %2
  s2.                            | %3
  s2.                            | %4
  <> \sf s2.                     | %5
  s4 s8 s8 \< s8 s16 s32 s32  \! | %6
  <> \sf s2.                     | %7
  s2.                            | %8 
}

pedal = {
}

\score {
  \new PianoStaff = "PianoStaff_pf" <<
    \set PianoStaff.instrumentName = \markup \huge \bold \exerciseNumber 
    \new Staff    = "Staff_pfUpper" <<\clef treble \global \upperStaff >>
    \new Dynamics = "Dynamics_pf" \dynamics
    \new Staff    = "Staff_pfLower" <<\clef bass \global \lowerStaff >>
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
  \midi { \tempo 4 = 60 }
}
