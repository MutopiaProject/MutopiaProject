

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "1st part, nr 30"
   \right-align "polska from Södermanland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 1st part, 1814"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 1st part, nr 30"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-865"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"









global={
  \key a \major
  \time 3/4
}
    
upper = {
  \global
  \repeat volta 2 
{
<< {	a'4 \trill d'' d'' |
	cis''8.( b'16) cis''8 d'' cis'' b' |
	a'8.( gis'16) a'4 b' |
	cis'' a'2 } \\ {
a'4 fis'4 fis' e'8. d'16 e'8 fis' e' d' cis'8. b16 cis'4 e'4 e'4 a'2

} >> 

  }
\break 
  \repeat volta 2 
{
	b'4 e'8 fis' gis' e' |
	a'4 a'8 b' cis'' a' |
	b'4 e'8 fis' gis' e' |
	a'4 <a' cis'' e'' a''>2 
  }

}

lower = {
  \global \clef bass
  \repeat volta 2 
{
	<a, a>4 <a, a> <a, a> |
	<a, a> <a, a> <d, d> |
	e, e <e gis> |
	<a, a> <a cis'>2 

  }
  \repeat volta 2 
{
	<e d'>4 <e d'> <e d'> |
	<a cis'> <a cis'> <a cis'> |
	<e d'> <e d'> <e d'> |
	<a cis'> <a, a>2 
  }

}
    
dynamics = { 

  \repeat volta 2 
{
s4 \f s4 s4
s2.*2
s4 s2 \sf 


  }
  \repeat volta 2 
{
s4 \sf s4 s4
s4 \sf s4 s4
s4 \sf s4 s4
s4 s2 \sf

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






  



