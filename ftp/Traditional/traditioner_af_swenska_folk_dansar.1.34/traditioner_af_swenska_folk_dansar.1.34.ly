

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "1st part, nr 34"
   \right-align "polska from Östergötland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 1st part, 1814"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 1st part, nr 34"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-866"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"








global={
	\time 3/4
	\key c \major
}


    
upper =  {
  \global
  \repeat volta 2 {
	a'16( b' c'' b') c''8 \staccatissimo d'' \staccatissimo e'' \staccatissimo c'' \staccatissimo |
	\grace  { d''16[ e''16]  } f''8. e''16 d'' e'' d'' c'' \grace c''16 b'8 a'16 g' |
	\stemDown g'8 \staccatissimo \stemDown  c''16( \stemDown  b') c''8 \staccatissimo d'' \staccatissimo e'' \staccatissimo c'' \staccatissimo |
 \grace  { d''16[ e''16]  }	f''8. e''16 d'' c'' d'' e'' c''4 |
%5
 
} 
  \repeat volta 2 {
	<b' d''>8. <c'' e''>16 <d'' f''>4. <e'' g''>8 |
	<f'' a''> \staccatissimo <f'' a''>16 <e'' g''> <d'' f''>8 \staccatissimo <d'' f''>16 <c'' e''> <b' d''>8 \staccatissimo <b' d''>16 <a' c''> |
	\stemUp <g' b'>8 \staccatissimo \stemUp <d' b'>16 \stemUp <c' a'> <b g'>8 << { b'8 c'' d'' 	e''16 d'' c'' b' b'4( c'') } \\ { g'8 g' g' g'4 <f' d'>4  e'4 } >>  |

}
}

     
lower =  {
  \global \clef bass
  \repeat volta 2 {

	<c e>8 g <c e> g <c e> g |
	<g, d> g <g, d> g <g, d> g |
	<c e> g <c e> g <c e> g |
	<g, d> g <g, d> g <c e> g |
%5

}
%5
  \repeat volta 2 {
	g, \staccato g \staccato g, \staccato g \staccato g, \staccato g \staccato |
	g, \staccato g \staccato g, \staccato g \staccato g, \staccato g \staccato |
	g, g g, f e d |
	c[ g,] c[ g,16 e,] c,4
}
}

dynamics = {
  \repeat volta 2 {
s4  \f  s4 s4 
s4  \sf  s4 s4 
s2.
s4  \sf  s4 s4 


}
  \repeat volta 2 {
s4  \p  s4 s4 
s2.
s4 s8 s8 \f s8 s8  
s2.
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






  


