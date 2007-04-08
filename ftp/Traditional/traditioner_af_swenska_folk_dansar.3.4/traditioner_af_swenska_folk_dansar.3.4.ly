

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "3rd part, nr 4"
   \right-align "polska from Norrbotten, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 3rd part, 1815"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 3rd part, nr 4"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-877"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"









global={
  \key g \minor
  \time 3/4
}
    
upper = {
  \global
  \repeat volta 2 
{
	g'4( bes' \staccatissimo) a'8.( fis'16) |
	g' fis' g' bes' d''8 d'' d''4 |
	g'( bes' \staccatissimo) a'8. \staccatissimo fis'16 |
	g' fis' g' bes' d'8 d' d'4 |
%5
	g'_( bes' \staccatissimo) a'8.^( fis'16) |
	g' fis' g' bes' d''8 d'' d''4 |
	d'' f'' f''8( e'') |
	<g' e''>8.^( <e' cis''>16) <f' d''>4 d' 

  }
  \repeat volta 2 {
%	bes' a' bes' c'' d''8 d'' d''4 |
%
<< { 	d''( f'' \staccatissimo) f''8.( d''16) |
	bes' a' bes' c'' d''8 d'' d''4
	ees''( g''8.) d''16 ees''8 c'' |

	a'16 g' a' bes' c''8 c'' c''4 |


} \\ {
f'2 f'4 
g'2 r4
g'2 g'4
f'2 r4

}
>>
	d''16 c'' d'' ees'' f''( ees'') d'' c'' d''( c'') bes' a' |
	bes' a' bes' c'' d''( c'') bes' a' bes'( a') g' fis' |
%15
<< {	g'4 c'' c''8 a' |
	a'8. fis'16 g'4 g } \\ { g'2 ees'4 c'4 bes4 g4 } >>
}

}

lower = {
  \global \clef bass
  \repeat volta 2 
{
<< {	bes4 d' c' |
	bes bes bes |
	bes d' c' |
	bes bes bes |
%5
	bes d' c' |
	bes bes bes |
	a2 bes4 } \\ { 
g2 d4 
g4 g4  g 

g2 d4 
g4  g g  
g2 d4
g4 g g
f4 d4 g4 


} >> 
a4 d'4 d4


  }
  \repeat volta 2 {
<< { 	d'2 d'4 |
	d'( bes) bes |
%10
	c'2 c'4 |
	c'( a) a |
	bes2 a4 |
} \\ {
bes2 bes4
g2 g4 c2 ees4 f2 f4 bes,2 f4 


} >>
%15
	g2 <c' d>4 |
<< {	bes ees' c  } \\ { ees2 c4  } >>
	d g g, 
  }
}
    
dynamics = { 
  \repeat volta 2 { s2.*8 }
  \repeat volta 2 { s2.*8 }
}
  



\score {
  \new PianoStaff \with{systemStartDelimiter = #'SystemStartBracket } <<
    \new Staff = "upper" \upper
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" <<
      \clef bass
      \lower
    >>
  >>

  \layout {
    \context {
      \type "Engraver_group"
      \name Dynamics
      \alias Voice % So that \cresc works, for example.
      \consists "Output_property_engraver"
%      \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
      \consists "Piano_pedal_engraver"
      \consists "Script_engraver"
      \consists "Dynamic_engraver"
      \consists "Text_engraver"
      \override TextScript #'font-size = #2
      \override TextScript #'font-shape = #'italic

      \override DynamicText #'extra-offset = #'(0 . 2.5)
      \override Hairpin #'extra-offset = #'(0 . 2.5)


      \consists "Skip_event_swallow_translator"
      \consists "Axis_group_engraver"
    }
    \context {\Score \remove "Bar_number_engraver"}
    \context {
      \PianoStaff
      \accepts Dynamics
   \override VerticalAlignment #'forced-distance = #7
  \override SpanBar #'transparent = ##t

    }
  }
}

          


mididynamics = { \dynamics } 
midiupper = { \upper }
midilower = { \lower }

          




\score {
  \unfoldRepeats
  \new PianoStaff <<
    \new Staff = "upper" <<  \midiupper  \mididynamics >>
    \new Staff = "lower" <<  \midilower  \mididynamics >>
  >>
  \midi {
    \context {
      \type "Performer_group"
      \name Dynamics
      \consists "Piano_pedal_performer"
    }
    \context {
      \PianoStaff
      \accepts Dynamics
    }
 \tempo 4=100    
  }
}






  



