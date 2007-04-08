

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "1st part, nr 4"
   \right-align "polska from Västergötland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 1st part, 1814"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 1st part, nr 4"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-826"
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
	f''4 e''8( f'') d''( e'') |
	f''8. \reverseturn g''16 a''4 a'' |
	f''4 e''8( f'') d''( e'') |
	g''16( f'' e'' f'') a''8\staccatissimo f''\staccatissimo d''4 |
	f''4 e''8( f'') d''( e'') |

	g''16( f'' e'' f'') a''4\staccatissimo a''\staccatissimo |

	a'' \grace cis'''16 d'''4 a''8 f'' |
	e''8( f'') d''4 r |
}
  \repeat volta 2 {
	e''8( f'') d''4 a'' |
	g''8( a'') e''( f'') d''( e'') |
	f''( e'') d''4 a'' |

	<d'' g''>( <cis'' a''>) r |
	f''4 e''8( f'') d''( e'') |
	g''16( f'' e'' f'') a''4 a'' |
	a'' \grace cis'''16 d'''4 a''8 f'' |
	e''8( f'') d''4 r |

  }
}
     
lower =  {
  \global \clef bass
  \repeat volta 2 {
	d8 a g a f a |
	d a f a f a |
	d a g a f a |
	d a f a f a |
	d8 a g a f a |
	d a f a f a |

	d a f a b, a |
	a, a d a f a |

}
  \repeat volta 2 {

	g a f a d a |
	e a d a a, a |
	d a f a d a |

	bes, bes a g f e |
	d a g a f a |
	d a f a f a |
	d a f a d a |
	a, a d a f a 


  }
}

dynamics = {
  \repeat volta 2 {


s2.*8
}
  \repeat volta 2 {
\once \override DynamicText #'transparent = ##t 
s2. \mf

s2.*2

s8  \> s4 s8   \!  s4
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






  


