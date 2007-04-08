

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "3rd part, nr 21"
   \right-align "polska from Östergötland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 3rd part, 1815"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 3rd part, nr 21"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-844"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"








global={
	\time 3/4
	\key bes \major
}


    
upper =  {
  \global
  \repeat volta 2 {
	bes'16( c'' d'' ees'') f''8 f'' f'' f'' |
	f''( bes'') <d'' bes'>\staccatissimo <d'' bes'>16( <ees'' c''>) <f'' d''>4 |
	f'8( bes') d'\staccatissimo d'16( ees') f'4 |
	<ees'' g''>8( <d'' f''>16 <c'' ees''>) <ees'' g''>8 <d'' f''> <c'' ees''> <bes' d''> |
%5
	<a' c''>16 d'' c'' bes' a' bes' a' g' a'8 f' |


	bes'16( c'' d'' ees'') f''8 f'' f'' f'' |
	f''( bes'') <d'' bes''>\staccatissimo <d'' bes''>16( <ees'' c''>) <f'' d''>4 |
	f'8( bes') d' d'16( ees') f'4 |


	<d'' f''>8( <c'' ees''>16 <bes' d''>)  <ees'' g''>8 <d'' f''> <c'' ees''> <bes' d''> |


	<bes' d''>16( <a' c''> <g' bes'> <a' c''>) \once  \set doubleSlurs = ##t <ees' a' c''>4( <d' bes'>) |


} 
  \repeat volta 2 {

	f'16( g' a' bes') c''8 c'' c'' c'' |
	c'' f''16 c'' bes'4 a' |
	c''8 d''16 e'' f''8 a''16 f'' g''8 bes''16 g'' |
%10
	a''( g'' f'' e'') f''4. ees''8 |
	d''( bes') ees''( c'') f''4 |
	f''8.( d''16) ees''8.( c''16) d''8.( bes'16) |
	d''( cis'' d'') bes'\staccatissimo ees''( d'' ees'') cis''\staccatissimo f''8 f'' |
	f''16( e'' f'') d''\staccatissimo ees''( d'' ees'') c''\staccatissimo d''8( bes') |
%15
	g''( a''16 bes'') f''8 d''16 bes' f'8 <g' ees''> |
	<f' d''>16( <ees' c''> <d' bes'> <c' a'>) <d' bes'>4 bes 

}

}


     
lower =  {
  \global \clef bass
  \repeat volta 2 {
	<bes d'>4. <bes d'>8 <a c'> <c' ees'> |
	<bes d'>2 r4 |
	d' bes8 bes16 c' d'4 |
	ees,8 ees c d ees e |
	f f, a, c f a |

	<bes d'>4. <bes d'>8 <a c'> <c' ees'> |
	<bes d'>2 r4 |
	d' bes8( bes16 c') d'4 |

	bes,8 bes ees f g e |

	f f, r f,( bes,4) |
}
  \repeat volta 2 {
	<f a>4. <f a>8 <e g> <g bes> |
	<f a> <f a> <c g> <c g> f f |
	c'( bes a f e c) |
	bes, c f, <f a>( <g bes> <a c'>) |
	<bes d'>4 <f c'> <d bes> |
	<d bes>8 <d bes> <f c'> <f c'> <bes d'> <bes d'> |
	<bes d'>4 <f c'> <d bes> |

	<d bes>8 <d bes> <f c'> <f c'> <bes d'> <bes d'> |
	<ees g bes>4\arpeggio <bes, d f bes>4.\arpeggio ees8 |
	f f, bes,4 bes,, 

}
}

dynamics = {
  \repeat volta 2 {
s4 \mf s4 s4
s4 \sf s4 s4
s4 \p s4 s4
s4 \f s4 s4
s2.
s4 \mf s4 s4
s4 \sf s4 s4
s4 \p s4 s4
s4 \f s4 s4
s2.
}

  \repeat volta 2 {
s2.*4
s4 \p s4 s4
s2.*3
s4 \f s4 s4
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






  


