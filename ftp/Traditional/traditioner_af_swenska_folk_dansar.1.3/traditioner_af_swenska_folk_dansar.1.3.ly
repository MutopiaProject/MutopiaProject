

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "1st part, nr 3"
   \right-align "polska from Västergötland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 1st part, 1814"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 1st part, nr 3"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-823"
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
	a'8\staccatissimo \repeat "tremolo" 2 b'8 c''8\staccatissimo a'\staccatissimo gis'\staccatissimo |
	a'8\staccatissimo \repeat "tremolo" 2 b'8  c''8\staccatissimo a'\staccatissimo gis'\staccatissimo |
	a'8. gis'16( a'8.) b'16( c''8.) d''16(
	e''8.) d''16( e''8.) f''16( e''8.) c''16(
	a'8\staccatissimo ) \repeat "tremolo" 2 b'8 c''8\staccatissimo a'\staccatissimo gis'\staccatissimo
	a'8\staccatissimo \repeat "tremolo" 2 b'8 c''8\staccatissimo a'\staccatissimo gis'\staccatissimo 
	a'8. b'16( c''4) << { c''8. d''16 } \\ { a'4 } >> |

	<< { e''4 e'' } \\ { gis'4 gis'4 } >> r4 |
}
  \repeat volta 2 {
	e''4 g'' g''( 
	g''8.) fis''16( g''8.) a''16( g''8.) fis''16( |
	e''8.) d''16 c''4 c''8. d''16 |
	e''8. dis''16( e''8.) f''16( e''8.) d''16( |

	c''8.) b'16( c''8.) a'16( b'8.) gis'16( |
	a'2) r4


  }
}
     
lower =  {
  \global \clef bass
  \repeat volta 2 {
  << { c'8 d'16.( cis'32) d'8 e' c' b\staccatissimo }  \\ { a8 a4 a8 a8 a8 } >> 
  << { c'8 d'16.( cis'32) d'8\staccatissimo e' c' b }  \\ { a8 a4 a8 a8 a8 } >> 
	<a c'> <a c'> <a c'> <a c'> <f a> <f a> 
	\repeat "tremolo" 6 <e gis b>8 |
  << { c'8 d'16.( cis'32) d'8\staccatissimo e' c' b }  \\ { a8\staccatissimo a4 a8 a8 a8 } >> 
  << { c'8 d'16.( cis'32) d'8\staccatissimo e' c' b }  \\ { a8\staccatissimo a4 a8 a8 a8 } >>


	<a c'> <a c'> <a c'> <a c'> <f a> <f a> 
	<e b>8 <e b> <e b>4 r4 |
}
  \repeat volta 2 {
	c8 <c' e'> <c' e'> <c' e'> <c' e'> <c' e'> |
	\repeat "tremolo" 6 <b d'>8 |
	<c' g'>8 <c' g'> <c' e'> <c' e'> <a c'> <a c'> |
	\repeat "tremolo" 6 <gis b>8 |
	<a e'>8 <a e'> <a c'> <a c'> <e d'> <e d'> |

	<a c'> <a c'> a,4 r4 

  }
}

dynamics = {
  \repeat volta 2 {


s8 \sf s2 s8 
s8 \sf s2 s8 
s2.*2
s8 \sf s2 s8 
s8 \sf s2 s8 
s2.*2
}
  \repeat volta 2 {
s8 \p s2 s8 
s2.*5



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






  


