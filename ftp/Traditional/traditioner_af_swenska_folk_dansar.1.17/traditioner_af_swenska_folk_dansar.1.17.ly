

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "1st part, nr 17"
   \right-align "polska from Uppland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 1st part, 1814"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 1st part, nr 17"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-858"
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
	d''8[ \staccatissimo f'( d') f''] \staccatissimo \grace g''16 f''8 e''16 d'' |
	e''8[ \staccatissimo cis''( a') g''] \staccatissimo \grace a''16 g''8 f''16 e'' |
	f''8 cis'' \trill d'' e'' f'' a'' |
	e''16 f'' e'' d'' cis'' d'' e'' d'' \grace d''16 cis''8 bes'16 a' |
	d''8[ \staccatissimo f'( d') f''] \staccatissimo \grace g''16 f''8 e''16 d'' |
	e''8[ \staccatissimo cis''( a') g''] \staccatissimo \grace a''16 g''8 f''16 e'' |
	f''8 cis'' \trill d'' e'' f'' a'' |
	f''16( e'' d'' cis'') d''4 d' 
}

  \repeat volta 2 {

	f''8 \staccatissimo f'( e') <f'' a''> \staccatissimo <f'' a''>( <e'' g''>16 <d'' f''>) |
	<e'' g''>8 \staccatissimo e'( f') <g'' bes''> \staccatissimo <g'' bes''>( <f'' a''>16 <e'' g''>) |


	<f'' a''>8 \staccatissimo a( bes c') d' \staccatissimo f'( |
	e'16 f' g' e' \staccatissimo) \once  \set doubleSlurs = ##t    <d' f'>4( <cis' e'>) |
%10

	d''8[ \staccatissimo f'( d') f''] \grace g''16 f''8 e''16 d'' |
	e''8[ \staccatissimo cis''( a') g''] \grace a''16  g''8 f''16 e'' |
	f''8 \staccatissimo cis'' \trill ( d'') d' f'( d'') |
	f''16( e'' d'' cis'') d''4 d'


  }
}
     
lower =  {
  \global \clef bass
  \repeat volta 2 {
	<d f a>8 \staccatissimo  \repeat "tremolo" 2 <d f a>8 <d f a>8 <d f a> <d f a> |
	<a, cis e a> \staccatissimo \repeat "tremolo" 2 <a, cis e a>8 <a, cis e a>8 <a, cis e a> <a, cis e a> |
	<d f> <e g> <f a> <cis a> d f16 d |
	a,8( cis e a a, a) |
	<d f a>8 \staccatissimo  \repeat "tremolo" 2 <d f a>8 <d f a>8 <d f a> <d f a> |
	<a, cis e a> \staccatissimo \repeat "tremolo" 2 <a, cis e a>8 <a, cis e a>8 <a, cis e a> <a, cis e a> |
	<d f> <e g> <f a> <cis a> d f16 d |

%5
	<< { r8 <e g> } \\ { a,4 } >>  <d f>4 d, 

}
  \repeat volta 2 {

	a,,8( a,16 b,) c8 c' c' c' |
	c c'16.( bes32) a8 \staccatissimo g( e c) |
	f, f( g a) bes \staccatissimo bes( |
	g e) r gis( a) a, |
%10

	<d f a>8 \staccatissimo  \repeat "tremolo" 2 <d f a>8 <d f a>8 <d f a> <d f a> |
	<a, cis e a> \staccatissimo \repeat "tremolo" 2 <a, cis e a>8 <a, cis e a>8 <a, cis e a> <a, cis e a> |

	<d f> <e g> <f a> <f a> <d a> <d a> |


	<< { r8 <e g> } \\ { a,4 } >>  <d f>4 d, 
  }
}

dynamics = {
  \repeat volta 2 {
s2.*8
}
  \repeat volta 2 {
s2.*8
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






  


