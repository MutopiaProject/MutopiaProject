

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "3rd part, nr 34"
   \right-align "polska from Södermanland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 3rd part, 1815"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 3rd part, nr 34"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-876"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"









global={
  \key d \major
  \time 3/4
}
    
upper =  {
  \global
\repeat volta 2 {
<< {	<fis'' a''>8.( <e'' g''>16) <d'' fis''>8 \staccatissimo d'' \staccatissimo fis'' \staccatissimo  a'' \staccatissimo |
	b''16 a'' g'' fis'' fis''4( e'') |
	fis''8.( e''16) d''8 \staccatissimo  a' \staccatissimo  d'' \staccatissimo fis'' \staccatissimo |
	e'' e''16 d'' d''4( cis'') } \\ {
a'4. fis'8 a'8 fis''8  g''16  fis'' e'' d'' d''4 cis'' a'8. g'16 fis'8 fis'8 a'8 d''8 b'4 e'2

} >>
%5
	a'8 d''16 a' g' fis' e' d' <d' b'>4 |
	a'16 b' cis'' d'' a'8( g') g'( fis') |
	a' d''16 a' g' fis' e' d' <d' b'>4 |
	a'16( b' cis'' d'') a'8( g') g'( fis') |
	a'16 b' cis'' d'' e'' fis'' g'' e'' << { g'' fis'' e'' d'' |
%10
	cis'' d'' e'' cis'' d''4  } \\ { a'4 g'4 fis'4 } >> d'4
}
\repeat volta 2 {
	<fis' a'>8 <fis' a'>16 <g' b'> <a' c''>8 <a' c''> <b' d''>16 <a' c''> <g' b'> <fis' a'> |
	<g' b'>8 d''16 b' g'8 d'16 b g4 |
	<gis' b'>8 <gis' b'>16 <a' cis''> <b' d''>8 <b' d''> <cis'' e''>16( <b' d''> <a' cis''> <gis' b'>) |
	<a' cis''>8 e''16 cis'' a'8 e'16 cis' a4

}
}
     
lower =  {
  \global \clef bass
\repeat volta 2 {
	<d, d>4. d8 d d |
	d, d a, a a,4 |
	d4. a8 fis d |
	g( gis) a a, a4 |\break
%5
	d8 fis a fis g g, |
	fis a e cis' d d' |
	d fis a fis g g, |
	fis a e cis' d d' |

% note: the original source is unclear in the next bar
% It is hard to see which notes are meant / Erik Sjolund
	a, a <a cis'> <a cis'> <a d'> <a d'> | \break
%10
	<a e'> <a e'> d'4 d |
}
\repeat volta 2 {
	<d, d>4. d8 d d |
	g, b,16 d g8 d16 b, g,4 |
	<e, e>4. e8 e e |
	a, cis16 e a8 e16 cis a,4 

}
}

dynamics = {
\repeat volta 2 {
s4 \sf s4 s4
s2.*3
s4 \p s4 s4 
s2.*3
s16 \f s16 s16 s16 s4 s4
s2.
}
\repeat volta 2 {

s2.*4

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






  


