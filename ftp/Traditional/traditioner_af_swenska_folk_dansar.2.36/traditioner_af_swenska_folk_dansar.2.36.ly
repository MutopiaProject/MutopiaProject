

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "2nd part, nr 36"
   \right-align "polska from Södermanland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 2nd part, 1814"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 2nd part, nr 36"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-867"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"









global={
  \key c \major
  \time 3/4
}
    
upper =  {
  \global
<< { 	g''8 f''16 e'' f''8 e''16 d'' e''8 d''16 c'' |
	\grace e''16 d''8 c''16 b' c''4 c'' |
	g'8 e'' f' d'' e' c'' |
	d' c''16 b' c''4 c'' |
%5
	g'8 e'' f' d'' e' c'' } \\ {
g'4 g'4 g'4 g'4 g'4 r4 e'4 d'4 c'4 d'4 e'4 e'4 g'4 f'4 e'4


} >>
	d'8 c''16 b' c''8 d'' e'' fis'' |
	g'' <d'' b''> <c'' a''> <b' g''> \grace b''16 << { a''8 g''16 fis'' |
	g''4 g''2 } \\ { e''8 a'8 b'4 b'2 } >> \bar "||"


	<e'' g''>8 <f'' a''>16 <e'' g''> <d'' f''>8 <e'' g''>16 <d'' f''> <c'' e''>8 <d'' f''>16 <c'' e''> |
%10
	<b' d''>8 <cis'' e''> <d'' f''>4 <d'' f''> |
	<a' f''>8 a''16 g'' f''8 e'' d'' c'' |
	b'8. a'16 << { g'4 g' |
	g'8 e'' f' d'' e' c'' } \\ {
r8 b8 c'8 d'8 e'4 d'4 c'4 

} >>
	d'8 c''16 b' \grace d''16 c''8 b'16 a' g'8 f' |
%15
	<< { g' e'' f' d'' e' c'' |
	d' c''16 b' <e' c''>2 } \\ {
e'4 d'4 c'4 d'8[ d'8] 
} >> \bar "||"
}
     
lower =  {
  \global \clef bass
	e'8 c' d' b c' e' |
	d' f' e' g( e c) |
	g,4 g a |
	f8 g c' g e c |
%5
	e' c' d' b c' a |
	<fis a> d <fis a> d <fis a> d |
	g g, d e c d |
	g d16 b, g,8 g, g,4  \bar "||"
	g,8 g g g g g |
%10
	g f16 e d8 a, f, d, |
	d4~ d8 e f fis |
	g d g f e d |
	c4 g a |
	f8 g e f e d |
%15
	c4 g, a, |
	f,8 g, c4 c, \bar "||"
}

dynamics = {
s2.*16
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






  


