

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "1st part, nr 5"
   \right-align "polska from Västergötland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 1st part, 1814"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 1st part, nr 5"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-827"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"








global={
	\time 3/4
	\key a \minor
}
    
upper =  {
  \global
  \repeat volta 2 {
	f''4 f''8. c''16 f''8. a''16 |
	a''8. g''16 a''( g'' f'' g'') a''4 |
	f'' f''8. c''16 f''8. a''16 |
	<bes' g''>8. <g' e''>16 <bes' g''>4( <a' f''>) |
}

  \repeat volta 2 {
	a'' a''8. f''16 d''4 |
	g'' g''8. e''16 c''4 |
	d'' d''8. bes'16 a'8. bes'16 |
	c''8. d''16 c''8. bes'16 a'4 |
	f'8. a'16 c''8. e''16 f''8. a''16 |
	<bes' g''>8. <g' e''>16 <bes' g''>4 <a' f''> |
  }
}
     
lower =  {
  \global \clef bass
  \repeat volta 2 {
	<f a c'>4 <f a c'> <f a c'> |
	<c bes c'> <c bes c'> <f a c'> |
	<f a c'> <f a c'> <f a c'> |
	<c c'>8. <c c'>16 <c c'>4 <f c'> |

}
  \repeat volta 2 {
	<< {f4 a} \\ {f2 } >> b4 |
	<< {e4 g} \\ {e2 } >>  c'4 |
	<< { bes4 bes d' } \\ { g4 g f } >> |
	<< { g4 c' c' } \\ {  e4 c f } >> |
	<f a c'> <f a c'> <f a c'> |
	<c c'>8. <c c'>16 <c c'>4 <f c'> |
  }
}

dynamics = {
  \repeat volta 2 {


s2.*4
}
  \repeat volta 2 {

s4 s4 s4 \sf 
s4 s4 s4 \sf 

s2.*4


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






  


