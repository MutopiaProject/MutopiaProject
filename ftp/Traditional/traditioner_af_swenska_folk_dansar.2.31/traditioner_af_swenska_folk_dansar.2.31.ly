

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "2nd part, nr 31"
   \right-align "polska from Östergötland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 2nd part, 1814"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 2nd part, nr 31"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-840"
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
	bes'8 bes''16 a'' bes''8\staccatissimo f''\staccatissimo ees''16( d'') c''-. bes'-. |
	ees'8 g''16( f'') g''8\staccatissimo ees'\staccatissimo d'\staccatissimo f''\staccatissimo |
	<a c'> ees''16( d'') ees''8\staccatissimo <a c'>\staccatissimo bes\staccatissimo <bes' d''>\staccatissimo |
	<a' c''>16 <bes' d''> <c'' ees''> <bes' d''> <a' c''> <g' bes'> <f' a'> <ees' g'> <d' f'> <c' ees'> <bes d'> <a c'> |
%5
	bes8 bes''16( a'') bes''8\staccatissimo f''\staccatissimo ees''16( d'') c''-. bes'-. |

	ees'8 g''16( f'') g''8\staccatissimo ees'\staccatissimo d'\staccatissimo f''\staccatissimo |
	<a c'> ees''16( d'') ees''8\staccatissimo <a c'>\staccatissimo bes\staccatissimo <f' d''>\staccatissimo |

	<ees' c''>16 ( <d' bes'> <c' a'> <ees' c''>\staccatissimo )  \once  \set doubleSlurs = ##t <ees' c''>4( <d' bes'>) |

}
  \repeat volta 2 {
	d''16( c'' d'' ees'') d''8\staccatissimo bes'\staccatissimo bes'\staccatissimo f''\staccatissimo |
	bes''16( a'') g''-. f''-. e''8\staccatissimo c''\staccatissimo c''( bes') |
	a'\staccatissimo c'''\staccatissimo g'\staccatissimo bes''\staccatissimo f'\staccatissimo a''\staccatissimo |
%10
	g''16( f'' e''-. ) g''-.  f''8 c''16 a' f'4 

	bes'8\staccatissimo bes''16( a'') bes''8\staccatissimo f''\staccatissimo ees''16( d'') c''-. bes'-. |
	ees'8\staccatissimo g''16( f'') g''8\staccatissimo ees'\staccatissimo d'\staccatissimo f''\staccatissimo |
	<a c'>\staccatissimo ees''16( d'') ees''8\staccatissimo <a c'>\staccatissimo bes\staccatissimo <f' d''>\staccatissimo |

	<ees' c''>16 ( <d' bes'> <c' a'> <ees' c''>\staccatissimo )  \once  \set doubleSlurs = ##t <ees' c''>4( <d' bes'>) |

}

}


     
lower =  {
  \global \clef bass
  \repeat volta 2 {
	<bes, d f>4. <bes, d f>8 <bes, d f> <bes, d f> |
	<bes, ees g>4. <bes, g>8 <bes, f> <bes, d> |
	<f, f>4. f8 d bes, |
	f,4. <f, f>8 <f, f> <f, f> |
%5
	<bes, d f>4. <bes, d f>8 <bes, d f> <bes, d f> |
	<bes, ees g>4. <bes, g>8 <bes, f> <bes, d> |
	<f, f>4. f8\staccatissimo d\staccatissimo bes,\staccatissimo |


	f,4 r16 f, g, a, bes,4 |
}
  \repeat volta 2 {
	\repeat "tremolo" 6 <bes, d f>8 |
	<g, d g>8 <g, d g> <c e g> <c e g> <c e g> <c e g> |
	f( c ) <e g>( c) <f a>( c) |
	<g bes>( c) <f a>4 f16( ees d c) 

	<bes, d f>4. <bes, d f>8 <bes, d f> <bes, d f> |
	<bes, ees g>4. <bes, g>8 <bes, f> <bes, d> |
	<f, f>4. f8 d bes, |
	f,4 r16 f, g, a, bes,4 |

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






  


