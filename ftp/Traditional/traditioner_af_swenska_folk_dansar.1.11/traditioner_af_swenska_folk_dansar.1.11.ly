

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "1st part, nr 11"
   \right-align "polska from Västergötland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 1st part, 1814"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 1st part, nr 11"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-817"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"








global={
	\time 3/4
	\key a \minor
}


upperdacapo = {

	a'8. b'16 c''4 b'8. a'16 |
	gis'8. b'16 e''4 gis' |
	a'8. b'16 c''4 << { b'8.( a'16) 
	a'8( gis'16 a') b'8 \staccatissimo gis' \staccatissimo  } \\ { dis'4 ( e'2 ) } >>  e'4  \mark \markup { \musicglyph #"scripts.segno" }
 |
%5
	a'8. b'16 c''4 b'8. a'16 |
	gis'8. b'16 e''4 gis' |
	a'8. b'16 c''4 b'8. a'16 |




	
     \override Score.RehearsalMark
       #'break-visibility = #begin-of-line-invisible
	gis'( a' b' gis') a'4 c' |
     \once \override Score.RehearsalMark #'self-alignment-X = #right

    \mark \markup {  \small \italic "Fin." }

}
    
upper =  {
  \global
  \repeat volta 2 {


  \upperdacapo



}
  \repeat volta 2 {

	e'' c'' c''8. e''16 |
%10
	e''8.( d''16) b'4\staccatissimo r |
	d'' b' b'8. d''16 |



	
     \override Score.RehearsalMark
       #'break-visibility = #begin-of-line-invisible
	c''8 e''16 c'' a'4 r
     \once \override Score.RehearsalMark #'self-alignment-X = #right

 \mark \markup {  \small \italic "D.C. al  " \null \tiny  \musicglyph #"scripts.segno" }
 
  }
}


lowerdacapo = {
	\repeat "tremolo" 6 <a c'>8 |
	\repeat "tremolo" 6  <e b>8 |
	\repeat "tremolo" 4 <a c'>8 <f a>8 <f a> |
	\repeat "tremolo" 6  <e b>8 |
	\repeat "tremolo" 6 <a c'>8 |
	\repeat "tremolo" 6 <e b>8 |
	a8 a, a <a c'> <b d'> <c' e'> |
	<b d'> e <a c'>4 a, |



}
     
lower =  {
  \global \clef bass
  \repeat volta 2 {
   \lowerdacapo
}
  \repeat volta 2 {

	<c c'>8 <c c'> <c c'> <c c'> <c c'> <c c'> |
	\repeat "tremolo" 6  <g b>8 |
        \repeat "tremolo" 6 <gis b>8 |
	a8 a, a <a c'> <a c'> <a c'> |
  }
}


dynamicsdacapo = { s2.*4 }
dynamics = {
  \repeat volta 2 {
\once \override DynamicText #'transparent = ##t
s4 \mf s4 s4
s2.*3
\dynamicsdacapo 
}

  \repeat volta 2 {
s8  \>   s8   \! s4  s4
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






  


