

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "3rd part, nr 12"
   \right-align "polska from Hälsingland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 3rd part, 1815"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 3rd part, nr 12"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-870"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"








global={
	\time 3/4
	\key g \minor
}
    
upper =  {
  \global
  \repeat volta 2 {
	<bes d'>4 <a fis'> <bes g'> |
	<d' a'> bes'8.( c''16) bes'8. a'16 |
	g'4 bes'8. c''16 d''8 ees'' |
	d''8. cis''16 d''8 c'' bes' a' |
%5
<< {	g'4 f''8.( g''16) f''8 d'' |
	ees''8. c''16 d''4  } \\ { g'2. g'4 fis'4 } >> r4 |

}
  \repeat volta 2 {
	d' f''8.( g''16) f''8 d'' |
	ees''8. c''16 d''8 c'' bes' a' |
	g'4 f''8.( g''16) f''8 d'' |
%10
	ees''8. c''16 d''4 d''8. bes'16 |
	g'4 bes' bes'8 c''16 bes' |
	a'8. fis'16 g'4 r |

}
  \repeat volta 2 {
	g' g'' bes' |
	bes'( a') a'8. fis'16 |
%15
	g'4 g'' bes' |
	bes'( a') a'8. fis'16 |
	<d' g'>4 <ees' a'>8. <ees' c''>16 <d' bes'>8 <c' a'> |
	<bes g'>8.( <a fis'>16) <bes g'>4 r
}



}
     
lower =  {
  \global \clef bass
  \repeat volta 2 {
	g,4 g g |
	fis g8. a16 g8. fis16 |
	g4 g, g |
	fis a d |
%5
	ees d b, |
	c8. ees16 d4 d, 

}
  \repeat volta 2 {
	<d, d>2 b,4 |
	c8. ees16 d4 r |
	g2 b4 |
%10
	c'8. ees'16 d'4 r |
	<< { bes4 \stemUp d'4 } \\ { g2 } >> \stemUp d'4 |
	<d c'> <g bes> g, 

}

  \repeat volta 2 {
	\stemDown bes8^( d' bes d' bes d') |
	\stemDown c'^( d' c' d' c' d') |
%15
	\stemDown bes^( d' bes d' bes d') |
	\stemDown c'^( d' c' d' c' d') |
	bes4 c' \stemUp c |
	\stemDown d  \stemDown g \stemUp g,
}

}

dynamics = {
  \repeat volta 2 {

s2.*6

}
  \repeat volta 2 {
s4 \f s4 s4
s2.
s4 \p s4 s4
s2.*3


}
  \repeat volta 2 {
s4 \p s4 s4 
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






  


