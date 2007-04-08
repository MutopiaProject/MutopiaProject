

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "2nd part, nr 27"
   \right-align "polska from Östergötland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 2nd part, 1814"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 2nd part, nr 27"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-838"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"








global={
	\time 3/4
	\key g \major
}


    
upper =  {
  \global
  \repeat volta 2 {

	g'8 b' d'' g'' fis''16( g'' a'' b'') |
	g''8.( a''16) \staccatissimo \grace a''16 g''8 fis''16 e'' d''8 c'' |
	<g' b'>16\staccatissimo <a' c''>\staccatissimo <b' d''>8\staccatissimo   	<g' b'>16\staccatissimo <a' c''>\staccatissimo <b' d''>8\staccatissimo   	<g' b'>16\staccatissimo <a' c''>\staccatissimo <b' d''>8\staccatissimo  |
	<c'' e''>16( <b' d''>) <a' c''>-. <g' b'>-. <g' b'>4( <fis' a'>) |
%5
} 
  \repeat volta 2 {
	<g' b'>8( d'') <b' d''>( <a' c''>) <a' c''>( <g' b'>) |
	g'' fis''16 e'' dis''4 b' |
	b''8 fis''\trill g''\staccatissimo e''\staccatissimo fis''\staccatissimo dis''\staccatissimo |
	b'( cis''16 dis'') e''4. fis''8\trill |
	g''\staccatissimo <b' d''>\trill <c'' e''>( <b' d''> <a' c''> <g' b'>) |
%10
	c''\staccatissimo a''\staccatissimo b'\staccatissimo g''\staccatissimo a'\staccatissimo fis''\staccatissimo |
	d''( e''16 fis'') g'' e'' fis'' g'' a''8 c'' |
	b'16 a' g' fis' fis'4( g') 


}

}


     
lower =  {
  \global \clef bass
  \repeat volta 2 {
	<g b>8 <g b> <g b> <g b> <d c'> <d c'> |
	<e b> <e b> <c a> <c a> <d fis> <d fis> |
	g g, g g, g g, |
	c cis d d, d4 |
%5
}
  \repeat volta 2 {
	g8( b) gis( a) fis( g) |
	<e g> <e g> <fis a> <fis a> <fis a> <fis a> |
	<dis fis> b <e g> b <fis a> b |
	<b, fis a> <b, fis a> <e g> <e g>16 <dis fis> <e g>8 <d a> |
	g, g g g g g |
%10
	<c e a>4 <d g b> <d a c'> |
	<g b>8 <fis a> <e g> <d fis> <c e> <a, a> |
	d <a c'> << { c'4( b) } \\ { g2 } >> 

}

  
}

dynamics = {
  \repeat volta 2 {
s2.*4
}

  \repeat volta 2 {
s2.*2
s4 \f s4 s4
s4 s4 s8 s8 \<
s4 \! s4 s4
s2.*3
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






  


