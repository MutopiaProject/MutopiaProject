

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "1st part, nr 15"
   \right-align "polska from Västergötland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 1st part, 1814"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 1st part, nr 15"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-837"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"








global={
	\time 3/4
	\key f \major
}
    
upper =  {
  \global
  \repeat volta 2 {
	<< { a'8. c''16 bes'8. c''16 a'8. c''16 
	bes'8. d''16 c''4  } \\ { f'4 e'4 f'4  f'2 } >>   r4 |
	<< { a'8. c''16 bes'8. c''16 a'8. c''16 |

	c''8. bes'16 g'8. a'16 f'4 |
	 a'8. c''16 bes'8. c''16 a'8. c''16 
	bes'8. d''16 c''4 e'' |
	f''8. d''16 c''8. a'16 c''8. bes'16 |
	g'4( f') } \\ {  


   f'4 e'4 f'4  g'4 e'4 f'4 f'4 e'4 f'4 f'2 g'4 f'4 f'4( e'4) e'4( f'4)  } >> r4 |


}

  \repeat volta 2 {
	a'4 g'8. a'16 f'4 |
<< {	a'8. c''16 bes'8. c''16 a'4 } \\ { f'4 g'4 f'4 } >> |
	a'4 g'8. a'16 f'4 |
<< {	a'8. c''16 bes'8. c''16 a'4 } \\ { f'4 g'4 f'4 } >> |
	c''4\trill d''8. c''16 a'8. c''16 |
	c''4\trill  d''8. c''16 a'8. c''16 |
%5
<< {	d''8.( c''16) a'4\staccatissimo c''8.( bes'16)  g'4( f')  } \\ { g'4 f'4 e'4 e'4 f'4  }   >> r4
	
  }
}
     
lower =  {
  \global \clef bass
  \repeat volta 2 {
	<< { c'2.  } \\ { f4 g f } >> |
	d'8. bes16 a4 f4 |
	<< { c'2.  } \\ { f4 g f } >> |
	<e c'> <c bes> <f a> |
	<< { c'2.  } \\ { f4 g f } >> |
	d'8. bes16 a4 <c bes> |

	<f a>8. <bes, bes>16 <c a>4 <c g> |

	<c bes>( <f a>) r |

}
  \repeat volta 2 {
<< { 	c'4( bes a ) |
	c'2. } \\ { f2.  f4( e4 f4\staccatissimo ) } >>
<< { 	c'4( bes a ) |
	c'2. } \\ { f2.  f4( e4 f4\staccatissimo ) } >>

	<f a c'>4 \sf  <f a c'>8. <f a c'>16 <f a c'>8. <f a c'>16 |
	<f a c'>4 \sf <f a c'>8. <f a c'>16 <f a c'>8. <f a c'>16 |
	<e bes>4( <f a>\staccatissimo ) <c g> |
%5
	<c bes>( <f a>) r |

  }
}

dynamics = {
  \repeat volta 2 {
\once \override DynamicText #'transparent = ##t    s4 \mf s4 s4
s8  \> s16 s16 \! s4  s4
s2.*3
s8  \> s16 s16 \!  s4 s4 \sf  
s2.*2
}
  \repeat volta 2 {
s2.*4
s4 \f s4 s4 
s2.
s8 \> s16 s16 \! s4 s4
s8 \> s16 s16 \! s4 s4

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






  


