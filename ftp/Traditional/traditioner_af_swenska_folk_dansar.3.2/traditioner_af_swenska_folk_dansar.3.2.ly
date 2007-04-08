

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "3rd part, nr 2"
   \right-align "polska from Uppland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 3rd part, 1815"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 3rd part, nr 2"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-843"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"









global={
  \key bes \major
  \time 3/4
}
    
upper = {
  \global

  \repeat volta 2 
{
	g'8( a'16) bes' g'8( a'16) bes' g'8( a'16) bes' |
	bes'( a') g' fis' d''4 d'' |
	d''8\turn e''16 fis'' g''8\staccatissimo a''\staccatissimo bes''\staccatissimo g''\staccatissimo |
	fis''16( g'' a'' fis'') d''8 <a' c''> <g' bes'> <fis' a'> |
%5
	g'8( a'16) bes' g'8( a'16) bes' g'8( a'16) bes' |
	bes'( a') g' fis' d''4 d'' |
	d''8\turn e''16 fis'' g''8 a'' bes'' g'' |

	fis''16( g'' a'' fis'') g''4 g' |






\bar "||"

	bes'8\staccatissimo d''\staccatissimo bes'\staccatissimo d''\staccatissimo ees''16( d'' c'' bes') |
	a'8\staccatissimo c''\staccatissimo a'\staccatissimo c''\staccatissimo d''16( c'' bes' a') |
	g'8\staccatissimo bes'\staccatissimo g'\staccatissimo bes'\staccatissimo c''16( bes' a' g') |
	g'8\trill fis'16 g' fis' g' a' fis' d'4 |
	bes'8\staccatissimo d''\staccatissimo bes'\staccatissimo d''\staccatissimo ees''16( d'' c'' bes') |
	a'8\staccatissimo c''\staccatissimo a'\staccatissimo c''\staccatissimo d''16 c'' bes' a' |
	g'8 bes' g' bes' c''16 bes' a' g' |


%10
	fis'16 g' a' fis' g'4 g |

}

}

lower = {
  \global \clef bass
  \repeat volta 2 
{
<< {	bes8( c'16) d' bes8( c'16) d' bes8( c'16) d' } \\ { g4 g4 g4  } >> |
 \once  \set doubleSlurs = ##t	<g c' ees'>4( <g bes d'>8) ( <g bes>16 <a c'>) <bes d'>8-. <bes d'>-. |
	<bes d'>( <a c'>) <g bes> <g bes> <g bes> <g bes> |
	<d a>4. d'8 d' d' |
%5
<< {	bes8( c'16) d' bes8( c'16) d' bes8( c'16) d' } \\ { g4 g4 g4  } >> |
\once  \set doubleSlurs = ##t	<g c' ees'>4( <g bes d'>8) ( <g bes>16 <a c'>) <bes d'>8-. <bes d'>-. |
	<bes d'>( <a c'>) <g bes> <g bes> <g bes> <g bes> |

	<d a c'> <d a c'> <g bes>4 g, |

\bar "||"
	<bes d'>4\staccatissimo <bes d'>\staccatissimo <g bes ees'>\staccatissimo |
	<a c' ees'>\staccatissimo <a c' ees'>\staccatissimo <fis a d'>\staccatissimo |
	<g bes d'>\staccatissimo <g bes d'>\staccatissimo <c' ees'>\staccatissimo |
	d'8 a d a fis d |
%10
	<< { d' f' d' f' bes ees'
	c' ees' c' ees' a d' 
	bes d' bes d' f c' 
a c' bes4 g,
 } \\ { 


bes2 g4 ( a2 ) fis4 ( g2 ) c4 ( d4 ) g4 g,4 }  >> |
	

  }
}
    
dynamics = { 
  \repeat volta 2 { s2.*8 
s2.*8 }
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
 \tempo 4=95    
  }
}






  



