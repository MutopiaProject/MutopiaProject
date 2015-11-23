\version "2.18.2"
\language "english"
exerciseNumber = "11."
\header {
    composer	        =       "Czerny, C."
    mutopiacomposer     =       "CzernyC"

    title	            =	"160 Eight-Measure Exercises"
    mutopiatitle        = 	"160 Eight-Measure Exercises, No. 11"

    opus	            =	"Op. 821"
    mutopiaopus         = 	"Op. 821, No. 11"
    
    source        	    =	"IMLSP; Leipzig: Edition Peters, n.d.1888. Plate 6990-6993."
    style             	=	"Technique"
    license          	=	"Public Domain"
    maintainer	        =	"Manuel Castejon Limas"
    maintainerWeb       =	"https://github.com/mcasl/Czerny"
    mutopiainstrument   =       "Piano"

 footer = "Mutopia-2015/11/20-2076"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%--------Definitions
global = {
  \key bf \major
  \time 4/4
}


mbreak = { }

Dquad  = { <d'' d'''>16 < d'' d'''> < d'' d'''> < d'' d'''>  }
EFquad = { <ef'' ef'''>16 <ef'' ef'''> <ef'' ef'''> <ef'' ef'''> }
Cquad  = { <c'' c'''>16 <c'' c'''> <c'' c'''> <c'' c'''> }
BFquad = { <bf' bf''>16 <bf' bf''> <bf' bf''> <bf' bf''> } 
Aquad  = { <a' a''>16 <a' a''> <a' a''> <a' a''> } 

BF_low_dup  = { <bf' bf''>16  <bf' bf''>  }
Cdup   = { <c'' c'''>16  <c'' c'''>  }
CSdup  = { <cs'' cs'''>16  <cs'' cs'''>  }
Ddup   = { <d'' d'''>16    <d'' d'''>    }
EFdup  = { <ef'' ef'''>16  <ef'' ef'''>  }
Edup   = { <e'' e'''>16    <e'' e'''>    }
Fdup   = { <f'' f'''>16    <f'' f'''>    }
Gdup   = { <g'' g'''>16    <g'' g'''>    }
Adup   = { <a'' a'''>16    <a'' a'''>    }
BFdup  = { <bf'' bf'''>16  <bf'' bf'''>  }
C_high_dup   = { <c''' c''''>16  <c''' c''''>  }

pianoUpper = { \tempo "Allegro moderato"
  \clef treble                                                         \bar "|."   % 8
  \Dquad  \Dquad  \EFquad \Dquad    | % 1
  \Cquad  \Cquad  \Dquad  \Cquad    | % 2  
  \BFquad \BFquad \Aquad  \BFquad   | % 3
  \Dquad  \Dquad  \Cquad  \Cquad    | % 4
  \ottava 1 \Fdup \Edup  \Fdup \Edup
          \Fdup \Gdup  \Adup \BFdup | % 5
          \C_high_dup \BFdup \Adup \Gdup 
  \ottava 0
  \Fdup \EFdup \Ddup \Cdup          | % 6          
  \BFquad \Dquad \CSdup \Ddup  \EFdup \Cdup         | % 7 
  \BF_low_dup  \Ddup \Fdup \Ddup <bf' bf''>8 r8 r4  | % 8
}

tenorPiano =  {  
  \clef treble f'2^2( g'4 f'4 ) | % 1
  \clef bass   ef'2^2 ( f'4 ef'   | % 2
  \clef treble <bf^5 d'^3>4 ) (<d'^3 f'^1> <c'^4 ef'^2> <bf^3 d'^1> )  | % 3
  \clef bass   bf2 a^1     | % 4
  bf1                      | % 5
  g2 ( c'4^2 ef')          | % 6
  d'4^1 ( bf2^2) a8( ef'                      | % 7
  \clef treble <bf^4  d'^2>8 )( f' <bf d'> f'  <bf d'>) bf'8\rest bf'4\rest  | % 8
  \bar "|."   
}

bassPiano = {
 \clef treble bf1     | % 1
 <f_5 a_4>1           | % 2
 s1                   | % 3
 f2._2_5 ( ef4_3        | % 4
 d8_4)( cs_5 d cs d2) | % 5
 <ef_5 g_4>1          | % 6
 f2._5 f4_3_5         | % 7
 s1                   | % 8
}

dynamics = { 
  <> \p s1 | %1
  s1       | %2
  s1       | %3
  s1       | %4
  s1       | %5
  s1       | %6
  s1       | %7
  s1       | %8 
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
  %  \mergeDifferentlyHeadedOn 
  %  \mergeDifferentlyDottedOn
  }
  
  \midi {}
}
