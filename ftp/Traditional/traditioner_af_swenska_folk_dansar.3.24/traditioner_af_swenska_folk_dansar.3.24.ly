

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "3rd part, nr 24"
   \right-align "polska from Östergötland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 3rd part, 1815"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 3rd part, nr 24"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-847"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"








global={
	\time 3/4
	\key a \major
}


    
upper =  {
  \global
  \repeat volta 2 {
	<cis'' e''>8\staccatissimo <cis'' e''>\staccatissimo <cis'' e''>16( <b' d''> <a' cis''> <b' d''>) <cis'' e''>8 a'' |
	<cis'' e''>\staccatissimo  <cis'' e''>\staccatissimo <cis'' e''>16( <b' d''> <a' cis''> <b' d''>) <cis'' e''>8\staccatissimo <d'' fis''>\staccatissimo |
	<cis'' e''>4( <b' d''> <a' cis''>) |
	b'8 fis''16 e'' d'' cis'' b' a' gis'8 e' |
	<cis'' e''>8\staccatissimo <cis'' e''>\staccatissimo <cis'' e''>16( <b' d''> <a' cis''> <b' d''>) <cis'' e''>8 a'' |
	<cis'' e''>\staccatissimo  <cis'' e''>\staccatissimo <cis'' e''>16( <b' d''> <a' cis''> <b' d''>) <cis'' e''>8\staccatissimo <d'' fis''>\staccatissimo |
	<cis'' e''>4( <b' d''> <a' cis''>) |


%5
	<< { d''8 d''16 cis'' b'4( a') } \\ { <a' e'>4 <gis' d'>4 cis'4 } >> |


} 
  \repeat volta 2 {

	a'8 cis''16 b' a' b' cis'' dis'' e''4 |
	dis''16 e'' fis'' gis'' a''8 a'' a''4 |
	gis'' b''16 gis'' e'' gis'' fis'' a'' cis'' a'' |
	gis'' fis'' e'' dis'' e''4 e' |
<< {

%10
	e''4. a''8 cis'' e'' |
	d''4. fis''8 b' d'' |
} \\ { cis''2 a'4 a'2 b'4 } >>

	<a' cis''>4.( e''8) a' cis'' |
	b'16 d'' cis'' e'' d'' cis'' b' a' gis'8 e' |

<< {

%10
	e''4. a''8 cis'' e'' |
	d''4. fis''8 b' d'' |
} \\ { cis''2 a'4 a'2 b'4 } >>



	cis''16 e'' a' cis'' b' d'' e' d'' \grace d''16 cis''8 b'16 a' |
%15
	gis'( a' b' cis'') <d' gis' b'>4( <cis' a'>) |
}

}


     
lower =  {
  \global \clef bass
  \repeat volta 2 {
	a,8 a a a a a |
	a, a a a a a |
%15
	e e eis eis fis fis |
	<d fis b>4. <dis fis b>8 <e gis b> <e gis b> |
	a,8 a a a a a |
	a, a a a a a |

	e e eis eis fis e16 d |
	e8 e, r e, a,4 |


}
%5
  \repeat volta 2 {
	\repeat "tremolo" 4 <a cis'>8 <gis b>8 <gis b> |
%20
	<fis a b> <fis a b> <dis fis b> <dis fis b> <b, fis b> <b, fis b> |
	<e gis b> <e gis b> <e gis b> <e gis b> <a, cis fis> <a, cis fis> |
	<b, fis a> <b, fis a> <e gis> <b d'>( <a cis'> <gis b>) |
	a a,( cis e a g) |
	fis( a fis d gis e) |
%25
	a( a, cis a, fis) e |


	<d fis> <cis ais> <b, b> <b, b> <e b> <e b> |

	a( a, cis e a g) |

	fis a fis d gis e |
	a a, <d fis> <e gis> <fis a> <dis fis> |
	<< { e4 } \\ { e8 e, } >>  <e, e>4 a, 

}
}

dynamics = {
  \repeat volta 2 {
\once \override DynamicText #'transparent = ##t   s4  \mf s4 s4
s2.*7
}

  \repeat volta 2 {
\once \override DynamicText #'transparent = ##t   s4  \mf s4 s4
s2.*3
s4 \p s4 s4
s2.*2
s16 \< s16 s16 s16 \! s16 \> s16 s16 s16 \! s4
s4 \p s4 s4
s2.*2
s4 s4 \> s4 \!
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






  


