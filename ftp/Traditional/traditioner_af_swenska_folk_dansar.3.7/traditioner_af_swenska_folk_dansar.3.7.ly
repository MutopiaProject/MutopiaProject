

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "3rd part, nr 7"
   \right-align "polska from Västergötland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 3rd part, 1815"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 3rd part, nr 7"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-880"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"








global={
	\time 3/4
	\key e \minor
}
    
upper =  {
  \global
  \repeat volta 2 {
	b'4 dis''8 e'' fis'' dis'' |
	g''4 \grace a''16 g''8 fis''16 g'' fis''8 e'' |
	b'4 dis''8 e'' fis'' dis'' |
	 \grace a''16  g''8 fis''16 g'' e''4 r |
%5
}
  \repeat volta 2 {
<< {	b'' g''8 g''16 b'' g''8 g''16 b'' |
	b''8.( a''16) fis'' g'' a'' g'' e''4 |
	b'' g''8 g''16 b'' g''8 g''16 b'' |
	b''8.( g''16) e''4 } \\  {  b'2. b'2. b'2.  b'2 } >> r4

}



}
     
lower =  {
  \global \clef bass
  \repeat volta 2 {
	<b, dis fis b>4 \staccatissimo <b, dis fis b> \staccatissimo <b, dis fis b> \staccatissimo |
	<e g b> \staccatissimo <e g b> \staccatissimo <e g b> \staccatissimo |
	<b, dis fis b> \staccatissimo <b, dis fis b> \staccatissimo <b, dis fis b> \staccatissimo |
	<e g b> \staccatissimo <e g b> \staccatissimo  <e g b> \staccatissimo 

}
  \repeat volta 2 {
	g e b, |
	fis b, e |
	g e b, |
	e g g
}
}

dynamics = {
  \repeat volta 2 {
s4 \f s4 s4
s2.*3

}
  \repeat volta 2 {
s4 \sf s4 s4
s4 \sf s4 s4
s4 \sf s4 s4
s4 \sf s4 s4
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






  


