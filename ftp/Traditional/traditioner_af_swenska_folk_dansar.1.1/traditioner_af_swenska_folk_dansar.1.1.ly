

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "1st part, nr 1"
   \right-align "polska from Norrbotten, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 1st part, 1814"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 1st part, nr 1"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-815"
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
	g''4-.( fis''8-.) fis''-. d''-. d''-. |
	g''4-.( fis''8-.) fis''-. d''-. d''-. |

	<< { g''4-.( fis''8-.) fis''-. d''-. d''-. } \\ { cis''4 d''4 r4 } >> |
	<< { g''4-.( fis''8) fis'' d'' d'' } \\ { cis''4 d''4 r4 } >> |


	<< { d''8. ees''16 d''8 c''16 bes' a'8 bes'  } \\ {	bes'8. c''16 bes'8 a'16 g' fis'8 g' } >>
	<< { a'8 bes' \grace d''16 c''8 bes'16 a' bes'8 c'' } \\ { 	fis'8 g' \grace bes'16 a'8 g'16 fis' g'8 a' } >>

	<< { d''8. ees''16 d''8 c''16 bes' a'8 bes'  } \\ {	bes'8. c''16 bes'8 a'16 g' fis'8 g' } >>
	<< { a'8 bes' \grace d''16 c''8 bes'16 a' bes'8 c'' } \\ { 	fis'8 g' \grace bes'16 a'8 g'16 fis' g'8 a' } >>




	<< { d''8\staccatissimo d''16( ees'') c''8\staccatissimo c''16( d'') bes'8\staccatissimo bes'16( c'') } \\ { bes'8 bes'8 a'8 a'8 g'8 g'8 } >> |
	bes'16( a' g'-.  fis'-. ) g'4 d' |
	<< { g'8( a' bes' c'' d'') bes'\staccatissimo } \\ { d'8 fis' g' a' bes' g'  } >>|

	bes'16( a' g'-. fis'-. ) g'4( g'') 

  }
}
     
lower =  {
  \global \clef treble
  \repeat volta 2 {
	<g' bes'>4( <a' c''>2) |
	<g' bes'>4( <a' c''>2) |
        << { g'4( a'8-.) a'8-. fis'8-. fis'8-. } \\ { e'4( d'2) } >> 
        << { g'4( a'8-.) a'8-. fis'8-. fis'8-. } \\ { e'4( d'2) } >> 
\clef bass
	r8 <d d'>8-. <d d'>-. <d d'>-. <d d'>-. <d d'>-. |
	\repeat "tremolo" 6 <d d'>8 |
	\repeat "tremolo" 6 <d d'>8 |
	\repeat "tremolo" 6 <d d'>8 |


	d8 d' fis d' g d' |
	c' d' bes g fis d |
	bes( a g f bes,) ees\staccatissimo |
	c d g d16 bes, g,4 |

  }
}

dynamics = {
  \repeat volta 2 {

\once \override DynamicText #'transparent = ##t   s4 \mf
 \>  s8 \! s4.
 s4 \>  s8 \! s4.
 s4 \>  s8 \! s4.
 s4 \>  s8 \! s4.

 s2.*4 \p
s2.*2 \f
 s2 \< s4 \!
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






  


