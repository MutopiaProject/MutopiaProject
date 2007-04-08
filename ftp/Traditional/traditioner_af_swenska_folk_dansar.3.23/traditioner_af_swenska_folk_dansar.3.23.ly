

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "3rd part, nr 23"
   \right-align "polska from Östergötland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 3rd part, 1815"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 3rd part, nr 23"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-846"
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
	d''8( e''16 fis'') g''8\staccatissimo e''\staccatissimo a''\staccatissimo g''\staccatissimo |
	fis''16 g'' a'' fis'' d''4. c''8 |
	b' a'16 b' c''8 a'16 c'' b'8 a'16 g' |
	fis' g' a' fis' g'4 g |
%5
} 
  \repeat volta 2 {
	<b g'>8( <d' b'>) <d' b'>( <c' a'>) <c' a'>( <b g'>) |
	<c' a'>( <e' c''>) <e' c''>( <d' b'>) <d' b'>( <c' a'>) |
	<d' b'>( <b' d''>) <b' d''>( <a' c''>) <a' c''>( <g' b'>) |
	<a' c''>( <c'' e''>) <c'' e''>( <b' d''>) <b' d''>( <a' c''>) |
	<b' d''>( <g' d'' g''>) <g' d'' g''>( <a' d'' fis''>) <a' d'' fis''>( <a' cis'' e''>) |
%10
	<d'' fis''>16 g'' a'' fis'' d''4. c''8 |
	b' a'16 b' c''8 a'16 c'' b'8 a'16 g' |
	fis' g' a' fis' g'4 g 

}

}


     
lower =  {
  \global \clef bass
  \repeat volta 2 {
	\once  \set doubleSlurs = ##t <d a c'>4.( <g b>8) r <c e a> |
	<d fis a>4 r8 <d fis> <e g> <fis a> |
	g r <c e a> r <d g b> r |
	<d a c'> <d a c'> <g b>4 g, |
}
%5
  \repeat volta 2 {
	g, g g |
	g, g g |
	g, g g |
	g, g g |
	g,8( b) b( a) a( g) |
%10
	a d r <d fis>( <e g> <fis a>) |
	<g d'> r <c e a> r <d g b> r |
	<d a c'> <d a c'> <g b>4 g, 

}
}

dynamics = {
  \repeat volta 2 {
\once \override DynamicText #'transparent = ##t  s8 \mf s16 \> s16 \! s2
s4 s4 \> s8 \! s8
s4 \p s4 s4
s2.
}

  \repeat volta 2 {
s4 \p s4 s4
s2.
\setTextCresc

\once \override DynamicTextSpanner #'extra-offset = #'(0 . 2) \override DynamicTextSpanner #'dash-period = #-1.0  s4 \< s4 s4
s4 s4 s8 s8 \!


s4 \f s4 s4
s2.
s4 \p s4 s4
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






  


