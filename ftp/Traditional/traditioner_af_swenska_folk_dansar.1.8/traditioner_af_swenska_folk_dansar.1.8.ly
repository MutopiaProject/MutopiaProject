

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "1st part, nr 8"
   \right-align "polska from Västergötland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 1st part, 1814"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 1st part, nr 8"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-830"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"








global={
	\time 3/4
	\key d \minor
}
    
upper =  {
  \global
  \repeat volta 2 {
	d''8 f''16 a'' d'''8 d''' c''' c''' |
	bes'' bes'' g''16 a'' bes'' g'' a''4 |
<< {	g''8 g'' f'' f'' e'' d'' } \\ { a'2 r4 } >> |
\grace e''16	d''8 \trill  cis''16 d'' e''8 cis'' a'4 |
	d''8 f''16 a'' d'''8 d''' c''' c''' |
	bes'' bes'' g''16 a'' bes'' g'' a''4 |
<< {	g''8 g'' f'' f'' e'' d'' } \\ { a'2 r4 } >> |


	f''16( e'' d'' cis'') d''4 d' |
}

  \repeat volta 2 {
	a''8 a'' g'' g'' f'' d'' |
	d'' \trill  cis''16 d'' e''8 cis''\staccatissimo a'4 |
	a''8 \staccatissimo  a''16( bes'') g''8\staccatissimo g''16( a'') f''8 d'' |
	d''\trill  cis''16 d'' e'' cis'' e'' cis'' a'4 |
	d''8 f''16 a'' d'''8 d''' c''' c''' |
	bes'' bes'' g''16 a'' bes'' g'' a''4 |
<< {	g''8 g'' f'' f'' e'' d'' } \\ { a'2 r4 } >> |


	f''16( e'' d'' cis'') d''4 d' |


  }
}
     
lower =  {
  \global \clef bass
  \repeat volta 2 {
	d8 d' f d' fis d' |
	g d' bes d' <a cis'> e' |
	a8.( b32 cis') d'8 d g gis |
	a a, cis e a a, |
	d8 d' f d' fis d' |
	g d' bes d' <a cis'> e' |
	a8.( b32 cis') d'8 d g gis |

	a a, d4 d, 

}
  \repeat volta 2 {
	<a f'> <cis' e'> <d' f'> |
	<a e'> <a e'>8 <a e'> <a e'>4 |
	f'8 d' e' cis' d' f' |
	<a e'>4 <a e'>8 <a e'> <a e'>4 
	d8 d' f d' fis d' |
	g d' bes d' <a cis'> e' |
	a8.( b32 cis') d'8 d g gis |
	a a, d4 d, 
  }
}

dynamics = {
  \repeat volta 2 {
s4 \mf s4 s4
s2.
s4 \f s4 s4 
s2.*3
s4 \sf s4 s4 
s2.
}
  \repeat volta 2 {
s4 \p s4 s4
s4 \mf s4 s4
s4 \p s4 s4
s4 \mf s4 s4
s4 \f s4 s4
s2.
s4 \sf s4 s4
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






  


