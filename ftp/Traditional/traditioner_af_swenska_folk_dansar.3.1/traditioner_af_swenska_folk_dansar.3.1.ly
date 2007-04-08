

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "3rd part, nr 1"
   \right-align "polska from Uppland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 3rd part, 1815"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 3rd part, nr 1"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-868"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"








global={
	\time 3/4
	\key a \minor
}

upperdacapo = {
	<c'' e''>16 a'' gis'' a'' <c'' e''>8 <b' d''> <a' c''> <gis' b'> |
	d''16 c'' b' a' gis' a' b' c'' e'4 |
	a'16 \prall gis' a' b' c'' \prall b' c'' d'' e'' d'' c'' b' |

%5



     \override Score.RehearsalMark
       #'break-visibility = #begin-of-line-invisible
	c''16 b' a' gis' a'4 a |
     \once \override Score.RehearsalMark #'self-alignment-X = #right
 \mark \markup { \small \italic "Fin." }



}
    
upper =  {
  \global


  \repeat volta 2 {
	<c'' e''>16 a'' gis'' a'' <c'' e''>8 <b' d''> <a' c''> <gis' b'> |
	d''16 c'' b' a' gis' a' b' c'' e'4 |
	a'16 \prall gis' a' b' c'' \prall b' c'' d'' e'' d'' c'' b' |

	d'' c'' b' a' gis' a' b' c'' b'4 \mark \markup { \musicglyph #"scripts.segno" } |
   \upperdacapo
}
\repeat volta 2 {
	<e' c''>8. g'16 e'8 c' e' g' |
	<g' c''>8. <c'' e''>16 <e'' g''> <d'' f''> <c'' e''> <b' d''> c''4 |
	c''8 <fis'' c'''> <g'' b''> <f'' a''> <e'' g''> <d'' f''> |




     \override Score.RehearsalMark
       #'break-visibility = #begin-of-line-invisible
<< {	e''16 g'' d'' f'' e'' g'' b' d'' c''4 } \\ { c''8 g'8 g'8 f'8 e'4 } >>
     \once \override Score.RehearsalMark #'self-alignment-X = #right
 \mark \markup {  \small \italic "D.C. al  " \null \tiny  \musicglyph #"scripts.segno" }
}
}
     
lowerdacapo = {
	a8( a,) a d'( e') e' |
	a4 c'8 a gis e |
	<a, c e> a <a, c e> a f b |
	e <b d'> <a c'>4 a, 
}

lower =  {
  \global \clef bass
  \repeat volta 2 {
	a8( a,) a d'( e') e' |
	a4 c'8 a gis e |
	<a c'> e' <a c'> e' <gis b> e' |
	a4 c'8 a gis e |

%
%5
  \lowerdacapo
}
  \repeat volta 2 {
	<c g>4. c8 c c |
	e c g g, c c'16 b |
	a8 a g d e f |
	g b c' <g d'> c'16 d' c' b 
}
}
dynamicsdacapo = {
s2.*4
} 

dynamics = {
  \repeat volta 2 {
s2.*4
\dynamicsdacapo
}
  \repeat volta 2 {
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






  


