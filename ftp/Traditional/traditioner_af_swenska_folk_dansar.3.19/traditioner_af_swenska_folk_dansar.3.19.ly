

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "3rd part, nr 19"
   \right-align "polska from Värmland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 3rd part, 1815"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 3rd part, nr 19"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-875"
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
	a8. cis'16 d'4 f'8. f'16 |
	g'8. bes'16 a'4 r |
	a'8. cis''16 d''4 << { e''8. g''16 |
	f''8. e''16 a'4  }  \\ { a'4 a'4 a'4 } >> r4 
}


 \break
  \repeat volta 2 {
	g''8 a''16 g'' f''4 << { d'' |
	c''8 c'' a'4 } \\ { f'4~ f'2 } >>  r4 |
	c''8( d'' e'' f'' g'' e'') |
	gis'4( a') r
}
}

     
lower =  {
  \global \clef bass
  \repeat volta 2 {
	a,8. cis16 d4 f8. f16 |
	g8. bes16 << { s2 	<e' g'>4 <d' f'> <cis' e'> 
	d' cis'  } \\ {  a2~ \sf a2. a2  } >> 
 r4 
}
  \repeat volta 2 {
	<< { cis'4( d') } \\ { e4 d4 } >>  bes( |
	a) <f c'>8 f16 e f8 g |
	<< { a2 cis'4 |
	d'( cis') } \\ {  a4 f4 e4 a2  } >>  r4
}
}

dynamics = {
  \repeat volta 2 {
s8. \f s16 s4 s4 
 s2.
s8. \p
s16 \> s4 s4
s4 \! s4 s4
}
  \repeat volta 2 {

s8 \> s16 s16 \! s4 s4
s2.
s8 \< s8 s8 s8 \! s8 s8
s4 \> s4 \! s4

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






  


