

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "2nd part, nr 30"
   \right-align "polska from Östergötland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 2nd part, 1814"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 2nd part, nr 30"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-839"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"








global={
	\time 3/4
	\key d \major
}


upperII = {

	d'16( fis') a'-. fis'-.	d'16( fis') a'-. fis'-.	d'16( fis') a'-. fis'-. |
	\repeat "tremolo" 2 <e' g'>8 \times 2/3 { a'16[ g' e'] } \times 2/3 { a'16[ g' e'] } \times 2/3 { a'16[ g' e'] } \times 2/3 { a'16[ g' e'] }   |
	\repeat "tremolo" 2 <d' fis'>8 \times 2/3 { a'16[ g' d'] } \times 2/3 { a'16[ g' d'] }  \times 2/3 { a'16[ g' d'] } \times 2/3 { a'16[ g' d'] } |
	\repeat "tremolo" 2  <e' g'>8 \times 2/3 { a'16[ g' e'] } \times 2/3 { a'16[ g' e'] } \times 2/3 { a'16[ g' e'] }  \times 2/3 { a'16[ g' e'] }  |
	fis'16 d' e' fis' g' a' b' cis'' d'' e'' fis'' g'' |
	a''( g'') e'' cis'' cis''4( d'') |

}

upperIII = {

	a'8 cis''16 e'' a''8\staccatissimo a''16( b'') a''4 |
	a''8\trill g''16 a'' b''8 d'' d''4\trill |
	<e' d''> e'16 gis' b' d'' cis'' e'' a'' <a' cis''> |
	<cis'' e''>( <b' d''>) <a' cis''> <gis' b'> \set doubleSlurs = ##t <d' b'>4( <cis' a'>8) <e' g'> |
	fis'16( a') d''-. a'-.  fis'16( a') d''-. a'-.  fis'16( a') d''-. a'-. |
%15
	<< { b'( ais' b' ais' b' ais' b' ais') b'4 } \\ { d'2~ d'8^( dis'8) } >> |
	e'4 \times 2/3 { e''16[ gis' e'] }  \times 2/3 { e''16[ gis' e'] }  \times 2/3 { e''16[ gis' e'] }  \times 2/3 { e''16[ gis' e'] }  |


	
     \override Score.RehearsalMark
       #'break-visibility = #begin-of-line-invisible
	<< { a'8. cis''16 e''16. d''32 cis''16. b'32 a'16. g'32 fis'16. e'32 } \\ { e'2 s4 } >> |
     \once \override Score.RehearsalMark #'self-alignment-X = #right

 \mark \markup {  \small \italic "al  " \null \tiny  \musicglyph #"scripts.segno" }

}
    
upper =  {
  \global
  \repeat volta 2 {

	d'8 fis'16 a' <fis' d''>8 <fis' d''>16 <g' e''> <fis' d''>4 |
	d''8\trill cis''16 d'' e''8\trill d''16 e'' fis''4 |
	<b g'>8 <g'' b''>16 <fis'' a''> <fis'' a''>8 <e'' g''>16 <dis'' fis''> <e'' g''>8 <g'' b''>16 <fis'' a''> |

     \override Score.RehearsalMark
       #'break-visibility = #begin-of-line-invisible
	<e'' g''> <fis'' a''> <e'' g''> <d'' fis''> <cis'' e''> <b' d''> <a' cis''> <g' b'> <fis' a'> <e' g'> <d' fis'> <cis' e'> |
     \once \override Score.RehearsalMark #'self-alignment-X = #right

    \mark \markup {  \tiny  \musicglyph #"scripts.segno"  }


  \upperII



}
\bar ":|:"
\upperIII
 

}


lowerII = {


	d8 a, d a, d a, |
	cis a, cis a, cis a, |
	d8 a, d a, d a, |
	cis a, cis a, cis a, |
	<d, d> <d, d> <e, e> <e, e> <fis, fis> <d, d> |
	a, <e g> << { g4( fis) } \\ { d2 } >>  |


}

lowerIII = { 

	<a cis' e'>8 <a cis' e'> <a cis' e'> <a cis' e'> <g cis' e'> <g cis' e'> |
%10
	<fis b cis'> <fis b cis'> <g b d'> <g b d'> <g b d'> <g b d'> |
	<gis b> <gis b> <e gis b> <e gis b> a a, |
	e e a a, a r |

	<d a>( fis)\staccatissimo <d a>( fis)\staccatissimo <d a>( fis)\staccatissimo |
	g g, b, d g16 a g fis |
%15
	<< { r8 <gis b> <gis b> <gis b> <gis b> <gis b> 
	a4 a a } \\ { e2 d4 cis8 a,8 cis8 a,8 cis8 a,8  } >>



}
     
lower =  {
  \global \clef bass
  \repeat volta 2 {
	<d, d>8 <d, d> <d, d> <d, d> <d, d> <d, d> |
	fis d cis a, d d, |
	<d, d> <d, d> <b,, b,> <b,, b,> <e, e> <e, e> |
	\repeat "tremolo" 6 <a, a>8 |


   \lowerII
 }
\bar ":|:"
\lowerIII  
}
dynamicsI = {

s4 \f s4 s4
s2.*3


}
dynamicsII = {
s2.
s4 \sf s4 s4
s4 \sf s4 s4
s4 \sf s4 s4
s2.
s2.


}
dynamicsIII = {


s2.*6
s4 \sf s4 s4
s2.

}


dynamics = {
  \repeat volta 2 {
\dynamicsI
\dynamicsII

}

\dynamicsIII

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

          


mididynamics = {  \dynamics  \dynamicsII  \dynamicsIII \dynamicsII  } 
midiupper = { \upper \upperII \upperIII \upperII }
midilower = { \lower \lowerII \lowerIII \lowerII }






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






  


