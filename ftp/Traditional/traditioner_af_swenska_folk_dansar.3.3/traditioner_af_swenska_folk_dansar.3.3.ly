

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "3rd part, nr 3"
   \right-align "polska from Västmanland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 3rd part, 1815"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 3rd part, nr 3"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-848"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"









global={
  \key f \major
  \time 3/4
}
    
upper = {
  \global
  \repeat volta 2 
{
	<< { a''8 bes''16 a'' g''8 a''16 g'' f''8 e'' } \\ {    f''4 d''4 bes'4     } >>|
<< { 	f''8 g''16 f'' e''8 f''16 e'' d''8 cis'' } \\ { a'4 bes'4 e'4 } >>  |
<< { 	d''8. cis''16 d''8 e'' f'' g'' } \\ { d'4. bes'8 c''8 d''8 } >>  |
	<e'' a''>16(  g'' f''  e'') f''8\staccatissimo   c''\staccatissimo   a'\staccatissimo   f'\staccatissimo   |

	<< { a''8 bes''16 a'' g''8 a''16 g'' f''8 e'' } \\ {    f''4 d''4 bes'4     } >>|
<< { 	f''8 g''16 f'' e''8 f''16 e'' d''8 cis'' } \\ { a'4 bes'4 e'4 } >>  |
<< { 	d''8.( cis''16) d''8 e'' f'' g'' } \\ { d'4. bes'8 c''8 d''8 } >>  |

%5
	<< { g''8\trill f''16 g'' a''4 f'' } \\ { e''4 f''4 f''4} >> |


  }
  \repeat volta 2 {
	<f'' a''> <f'' a''>8 <e'' g''>16 <f'' a''> <g'' bes''>8 <f'' a''> |
	<e'' g''>4 <e'' g''>8 <d'' f''>16 <e'' g''> <f'' a''>8 <e'' g''> |
	<f'' d''> e''16 f'' g''8 f'' e'' d'' |

	d''\prall  cis''16 d'' e''8 cis'' a'4 |

	<f'' a''> <f'' a''>8 <e'' g''>16 <f'' a''> <g'' bes''>8 <f'' a''> |
	<e'' g''>4 <e'' g''>8 <d'' f''>16 <e'' g''> <f'' a''>8 <e'' g''> |


%10
<< {	f''8.( e''16) d''8 f'' e'' d'' } \\ { a'2 r4 } >> |
	f''16( e'' d'' cis'') d''4 d' 

}

}

lower = {
  \global \clef bass
  \repeat volta 2 
{
	d'4 bes c' |
	f g a |
	bes4. g8 a bes |
	c' c <f a>2 |
	d'4 bes c' |
	f g a |
	bes4. g8 a bes |

	c'8 c f4 f, |

  }
  \repeat volta 2 {
	f' d' bes8 b |
	c' c e g c' cis' |
	d' a bes a g gis |
	a a, cis e a4 |

	f' d' bes8 b |
	c' c e g c' cis' |

	d'8 a f d e f |
	g a d'4 d 


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
 \tempo 4=90    
  }
}






  



