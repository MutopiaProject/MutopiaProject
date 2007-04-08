

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "3rd part, nr 6"
   \right-align "polska from Västergötland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 3rd part, 1815"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 3rd part, nr 6"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-879"
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
<< {	a'8.( b'16) b'8.( c''16) b'8.( a'16) |
	gis'8.( a'16) b'4

} \\ {	a'4 f' fis' |
	e'8. fis'16 gis'4 } >>
 e'4 |

<< { 
	c''8.( d''16) e''8.( f''16) e''8.( d''16) |
	c''8. d''16 e''4 b' |
%5
	c''8. c''16 f''8 e'' d'' c'' |
	b'8.( a'16) d''8 c'' b' gis' |


} \\ {
	a'4 a' g'8. f'16 |
	e'8. g'16 c''4 d' |
%5
	e'8. e'16 a'8 g' f' e' |
	f'2 d'4 } >>


	<< { a'8. gis'16 } \\ { c'4 } >> a'8. b'16 c''8. d''16 
	e''8.( f''16) d''4 e''8. b'16 |
	c''8.( b'16) a'4 a'8. c''16 |
%10
	b'8.( a'16) gis'4 e'  |

<< {
	a'8.( b'16) c''8.( d''16) e''8.( f''16) |
	d''8. f''16 e''4 
	
} \\
{  

a'4 a'4 a'4 

	b'8. d''16 c''4  




} 
>>

<e' a' c''>8.^( <d' gis' b'>16)
	\once  \set doubleSlurs = ##t     <b d' gis'>4( <c' a'>) r4

}
}
     
lower =  {
  \global \clef bass
  \repeat volta 2 {
	<a, a>4 <d, d> <dis, dis> |
	<e, e>4. e16 e e8 e |
	<a, a>4 <d, d> <g, g> |
	<c, c>4. g16 g g8 g |
%5
	c, c c c c c |
	d, d d d e e |
	f, <f a> <f a> <f a> <f a> <f a> |
\repeat "tremolo" 6	<e gis b>8 |
\repeat "tremolo" 6 	<f a c'>8 |
%10
\repeat "tremolo" 6 	<e gis b>8 |
	<a, a>4 <f, f> <d, d> |
	<g, g> <c, c> <e, e> |
	a,8 c16 e a8 e16 c a,4
}
}

dynamics = {
  \repeat volta 2 {
s2.*4
s4 \sf s4 s4
s4 \sf s4 s4
s4 \sf s4 s4
s2.*6
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






  


