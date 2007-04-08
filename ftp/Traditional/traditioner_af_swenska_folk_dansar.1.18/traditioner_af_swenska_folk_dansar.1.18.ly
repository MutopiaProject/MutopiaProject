

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "1st part, nr 18"
   \right-align "polska from Västergötland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 1st part, 1814"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 1st part, nr 18"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-859"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"








global={
	\time 3/4
	\key a \minor
}

upperdacapo = {
	a'4 a'8. gis'16 a'8. c''16 |

     \override Score.RehearsalMark
       #'break-visibility = #begin-of-line-invisible

	b'4( d''8.) c''16 a'4 |
     \once \override Score.RehearsalMark #'self-alignment-X = #right
 \mark \markup { \small \italic "Fin." }



}
    
upper =  {
  \global
  \repeat volta 2 {
   \upperdacapo
}


<< {	e''4 e'' g''8( f'') } \\ { g'4 g'4 g'4 } >> |
<< {	d''4( e'') c'' } \\ { g'2. } >>
<< {	e''4 e'' g''8( f'') } \\ { g'4 g'4 g'4 } >> |



     \override Score.RehearsalMark
       #'break-visibility = #begin-of-line-invisible
<< {	d''4( e'') c'' } \\ { g'2. } >>

     \once \override Score.RehearsalMark #'self-alignment-X = #right
 \mark \markup { \small \italic "D.C." }


}
     
lowerdacapo = {
	<a c'>8 e' <a c'> e' <a c'> e' |
	<gis d'> e' <gis d'> e' <a c'> e' |

}

lower =  {
  \global \clef bass
  \repeat volta 2 {
  \lowerdacapo
}
	c( c' b c' e' d') 
	b( g c' g e g) 
	c( c' b c' e' d') 
	b( g c' g e) g 
}

dynamicsdacapo = { 
s4 \f s4 s4
s4 \sf s4 s4
} 

dynamics = {
  \repeat volta 2 {
\dynamicsdacapo
}
s4 \p s4 s4
s2.*3

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






  


