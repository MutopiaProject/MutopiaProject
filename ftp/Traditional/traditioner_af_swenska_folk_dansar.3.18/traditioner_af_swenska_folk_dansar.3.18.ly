

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "3rd part, nr 18"
   \right-align "polska from Småland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 3rd part, 1815"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 3rd part, nr 18"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-842"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"








global={
	\time 3/4
	\key g \minor
}


    
upper =  {
  \global
  \repeat volta 2 {
	g'8 bes'16 d'' g''8 g''16 bes'' bes'' a'' g'' fis'' |
	g'' d'' bes'' g'' d''4~ d''8 ees''16 f'' |
	ees''8 c''16 ees'' d''4 c''16 bes' a' g' |
	fis' d'' cis'' d'' e' d'' cis'' d'' d' d'' cis'' d'' |
%5
	g'8 bes'16 d'' g''8 g''16 bes'' bes'' a'' g'' fis'' |
	g'' d'' bes'' g'' d''4 d''8( ees''16 f'') |

	ees'' d'' c'' bes' a'8 a''16 g'' fis'' ees'' d'' c'' |


	bes' g'' a' fis'' <a' c'' fis''>4( <bes' g''>) 


} 
  \repeat volta 2 {

	bes''16 a'' bes'' f'' d'' bes' d'' f'' bes'' a'' bes'' d''' |
	c''' b'' c''' a'' f'' a' c'' f'' a'' b'' c''' a'' |
	bes'' a'' g'' fis'' g'' d'' bes' d'' c'' d'' a' d'' |
%10
	bes'8 d'''16 d'' <fis'' a''>8( <e'' g''>) <e'' g''>( <d'' f''>) |
	g''16 fis'' g'' d'' bes' g' bes' d'' g'' fis'' g'' bes'' |
	a'' gis'' a'' fis'' d'' d' fis' a' d'' fis'' a'' c''' |
	bes''8 bes''16 d''' c'''8 c'''16 a'' d'''8 d'''16 a'' |
	bes'' g'' a'' fis'' g''8 bes'' g''4 

}

}


     
lower =  {
  \global \clef bass
  \repeat volta 2 {
	\repeat "tremolo" 4 <g bes>8 <d a c'>8 <d a c'> |
	\repeat "tremolo" 4 <g bes>8 <g b>8 <g b> |
	c' a bes bes, <ees g> <ees g> |
	<d a>4 <e g> <fis a> |
%5

	\repeat "tremolo" 4 <g bes>8 <d a c'>8 <d a c'> |
	\repeat "tremolo" 4 <g bes>8 <g b>8 <g b> |


	c8 c' <c' ees'> c d fis |
	g d g, g g,4 |



}
  \repeat volta 2 {
	\repeat "tremolo" 6 <bes d'>8 |
	\repeat "tremolo" 4 <a c' f'>8 <a c' fis'>8 <a c' fis'> |
	<g d'> <a d'> <bes d'> <g d'> <a d'> <fis d'> |
%10
	<g d'> bes a( cis') cis'( d') |
	\repeat "tremolo" 6 <g bes d'>8 |
	\repeat "tremolo" 6 <fis a d'>8 |
	<g bes d'>8 <g bes d'> <g a ees'> <g a ees'> <fis a d'> <fis a d'> |
	<g bes d'> <d a c'> << { bes d' bes4 } \\ { g4 g4 } >> 

}
}

dynamics = {
  \repeat volta 2 {
s2.*8
}

  \repeat volta 2 {
s2.*8
}

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






  


