

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "1st part, nr 19"
   \right-align "polska from Västergötland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 1st part, 1814"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 1st part, nr 19"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-860"
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
	d''4 \staccatissimo  \once \override TextScript #'padding = #2.0 d''8. ^\markup{ \italic Staccato } f''16 e''8. cis''16 |
	a'4 \staccatissimo a'8. bes'16 a'8. f'16 |
	d'8 \staccatissimo e' \staccatissimo f'4 f'8. e'16 |
	cis'8.( d'16) e'8 f'16 e' d'8 cis' |
%5
	a4 \staccatissimo d''8. f''16 e''8. cis''16 |
	a'4 \staccatissimo a'8. bes'16 a'8. f'16 |
	d'8 \staccatissimo e' \staccatissimo f'4 f'8. e'16 |
	cis'8. d'16 e'8 f'16 e' d'4 
}
  \repeat volta 2 {
	a4( d' f'8.) d'16 |
%10
	cis'8.( d'16 e'8 f'16 e' d'8 cis') |
	a4( d' f'8. d'16) |
	cis'8. d'16 e'8 f'16 e' \repeat "tremolo" 2 d'8

	a4( d' f'8. d'16) |
%10
	cis'8.( d'16 e'8 f'16 e' d'8) cis' |
	a4( d' f'8. d'16) |
	cis'8. d'16 e'8 f'16 e'  d'4
}


}

lower =  {
  \global \clef bass
  \repeat volta 2 {

	<< { f8 \f a \p ( f a g a) } \\ { d2 r4 } >> |
	<< { f8 \f ( a \p f a f a) } \\ { d2 r4 } >> |
	<< { f8 \f a \p f a f a } \\ { d2 r4 } >> |
<< {	e8 \f a  \p e a e a  } \\ { a,2 r4 } >> |

	<< { f8 \f a \p  f a g a } \\ { d2 r4 } >> |
	<< { f8\f  a \p f a f a } \\ { d2 r4 } >> |
	<< { f8\f a \p f a f a } \\ { d2 r4 } >> |
<< {	e8\f a \p e a  f4	 } \\ { a,2 d4 } >> |

}
  \repeat volta 2 {
	<d f>8( a, <d f> a, <d f> a,) |
	<e g>8( a, <e g> a, <e g> a,) |
	<d f>8( a, <d f> a, <d f> a,) |
	<e g>8( a, <e g> a, <e g> a,) |
	<d f>8( a, <d f> a, <d f> a,) |
	<e g>8( a, <e g> a, <e g> a,) |
	<d f>8( a, <d f> a, <d f> a,) |
	<e g>8( a, <e g> a,) <d f>4  

}
}

dynamics = {
  \repeat volta 2 {
s8 \f s8 s2 
s2.*7

}
  \repeat volta 2 {
s4 \p s4 s4
s2.*7
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






  


