

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "1st part, nr 10"
   \right-align "polska from Västergötland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 1st part, 1814"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 1st part, nr 10"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-816"
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

	c''8. b'16 a'8. gis'16 a'8. b'16 |
	c''8. e''16 <a' d''>8( dis'') <gis' e''>4 |
	c''8. b'16 a'8. gis'16 a'8. b'16 |
	<< { b'2( c''4) } \\ { d'8 g'8 fis'8 f'8 e'4  } >> |
%5

}
  \repeat volta 2 {
	e''8. c''16 c''8. e''16 g''8. e''16 |
	e''8( d'' c'' <b' d''>) <g' c'' e''>4 |
	e''8. c''16 c''8. e''16 g''8. e''16 |
	e''8( d'' c'' <b' d''>) <c'' e''>4 |
	c''8. b'16 a'8. g'16 c''4 |
	c''8. b'16 a'8. g'16 c''4 |

	c''8. b'16 a'8. g'16 a'8( b') |
	b'2( c''4) 
  }
}
     
lower =  {
  \global \clef bass
  \repeat volta 2 {
	<a c'>8 <a c'> <a c'> <a c'> <a c'> <a c'> |
	<a c'> <a c'> <f a> <f a> <e b> <e b> |
	<a c'> <a c'> <a c'> <a c'> <a c'> <a c'> |
	g2( c'4) |

}
  \repeat volta 2 {
	c8 <c' e'> <c' e'> <c' e'> <c' e'> <c' e'> |
	<c' e'>( <g d'> <e c'> <g d'>) <c' e'> c |
	\repeat "tremolo" 6 <c' e'>8 |
	<c' e'>8 <g d'> <e c'> <g d'> <c' e'> c |
	\clef treble g8 <d' f'> <d' f'> <d' f'> e'16( d' e' c') |
 g8 <d' f'> <d' f'> <d' f'> e'16( d' e' c') |
	<< { r8 <d' f'> <d' f'> <d' f'> <d' f'> <d' f'> } \\ {g2. } >> |

        << {	d'8 g' fis' f' e'4 } \\ {g2 c4 } >>|



  }
}

dynamics = {
  \repeat volta 2 {
\once \override DynamicText #'transparent = ##t 
s4 \mf s4 s4

s2.*2
s4 \> s4  s4 \! 


}
  \repeat volta 2 {


s8  \>   s8   \! s4  s4
s2.*3
s2 s4 \sf 
s2 s4 \sf
s2.
s4 \> s4 s4 \! 


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






  


