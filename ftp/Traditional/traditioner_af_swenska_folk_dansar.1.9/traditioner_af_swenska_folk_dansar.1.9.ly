

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "1st part, nr 9"
   \right-align "polska from Dalarna, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 1st part, 1814"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 1st part, nr 9"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-831"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"








global={
	\time 3/4
	\key d \minor
}

upperdacapo = {
	a''8. f''16 c''8 c'' bes' bes' |
	a' a' bes' bes' \repeat "tremolo" 2 c''8 |
	a''8. f''16 c''8 c'' bes' bes' |
	a' a' c''16 bes' a' bes' \repeat "tremolo" 2 c''8 |
%5
	d''8. bes'16 f''8. d''16 bes'8. d''16 |
	c''8. bes'16 a'8. bes'16 \repeat "tremolo" 2 c''8 |
	d''8\staccatissimo d''16( bes') f''8\staccatissimo f''16( d'') bes'8\staccatissimo bes'16( d'') |
	c''8\staccatissimo c''16( bes') a' g' a' bes' \repeat "tremolo" 2 c''8 |
	d''8. bes'16 <d'' bes''>8 <c'' a''> <bes' g''> e'' |
%10

     \override Score.RehearsalMark
       #'break-visibility = #begin-of-line-invisible
	<g' e''> <g' e''>16 <bes' g''> <bes' g''>4 <a' f''> |
     \once \override Score.RehearsalMark #'self-alignment-X = #right
 \mark \markup { \small \italic "Fin." }

}
    
upperlast = {  
	<c'' e''>8.( <d'' f''>16) <e'' g''>8\staccatissimo <e'' g''>16( <f'' a''>) <e'' g''>8\staccatissimo <e'' g''>16( <f'' a''>) |
	<e'' g''>8 <d'' f''> <c'' e''> <b' d''> c''4 |
	<c'' e''>8.( <d'' f''>16) <e'' g''>8\staccatissimo <e'' g''>16( <f'' a''>) <e'' g''>8\staccatissimo <e'' g''>16( <f'' a''>) |


     \override Score.RehearsalMark
       #'break-visibility = #begin-of-line-invisible
	<e'' g''>8 <d'' f''> <c'' e''> <b' d''> c''4 |
     \once \override Score.RehearsalMark #'self-alignment-X = #right
 \mark \markup { \small \italic "D.C. al Fin." }

}


upper =  {
  \global
  \repeat volta 2 {
   \upperdacapo
}
  \repeat volta 2 {
\upperlast
}
}
     
lowerdacapo = {
	f8( c' a c' g c') |
	f( c' g c' a c') |
	f( c' a c' g c') |
	f( c' g c' a c') |
%5
	<f bes d'> <f bes d'> <f bes d'> <f bes d'> <f bes d'> <f bes d'> |
	\repeat "tremolo" 6 <f a c'>8 |
	\repeat "tremolo" 6 <f bes d'>8 |
	\repeat "tremolo" 6 <f a c'>8 |
	bes8 d' g a bes b |
%10
	c' c r c f4 |
}

lower =  {
  \global \clef bass
  \repeat volta 2 {
  \lowerdacapo
}
  \repeat volta 2 {
	<c c'> <c c'> <c c'> |
	<g, g> r8 g c' g16 e |
	c4 <c c'> <c c'> |
	<g, g> r8 g c'16 bes a g 
}

}

dynamicsdacapo = { s4 \sf s4 s4
s2.
s4 \sf s4 s4 
s2.
s4 \p s4 s4 
s2.*3
s4 \f s4 s4
s2.
} 

dynamics = {
  \repeat volta 2 {
\dynamicsdacapo
}
  \repeat volta 2 {
s4 \p s4 s4
s2.*3
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

          


mididynamics = { \dynamics \dynamicsdacapo } 
midiupper = { \upper \upperdacapo }
midilower = { \lower \lowerdacapo }


          




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






  


