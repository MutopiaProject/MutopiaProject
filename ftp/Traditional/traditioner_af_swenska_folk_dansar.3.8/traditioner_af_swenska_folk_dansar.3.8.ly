

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "3rd part, nr 8"
   \right-align "gånglåt from Dalarna, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 3rd part, 1815"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 3rd part, nr 8"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-881"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"








global={
	\time 2/4
	\key a \minor
}
    
upper =  {
  \global
\partial 8 a'8	
  \repeat volta 2 {
c''8 c''16 b' a'( gis' a' c'') |
	e''8 e'' f'' e''16 d'' |
	c''8 c'' b'16( a' c'' b') |
	a'4. a'8 |
%5
	c'' c''16 b' a' gis' a' c'' |
	e''8.( d''16) c'' d'' e'' f'' |
	g''8 g''16 e'' d''( c'' e'' d'') |

}
\alternative { {  
	c''4. a'8 } { c''4. c''8 } } 



  \repeat volta 2 {

	<c'' e''> <c'' e''> <c'' e''>16 <d'' f''> <c'' e''> <b' d''> |
%10
	<c'' e''>8. <b' d''>16 <a' c''>8 a' |
<< { 	d''8 d'' c'' b'16 a' } \\ { gis'8 gis' a'4 } >> |
	gis'4. a'8 |
	c'' c''16 b' a'( gis' a' c'') |
	e''8 e''~ e''16 f'' e'' d'' |
%15
	c''8 c'' b'16( a' c'' b') |
	
}
\alternative { {  
	a'4. c''8 } { a'4. r8 } } 




}
     
lower =  {
  \global \clef bass
\partial 8 r8
  \repeat volta 2 {
	a,8 <a c'> <a c'> <a c'> |
<< {	c'16( b c' cis') d'8 b |
	a a gis gis } \\ { a4 d4 e8 e8 e8 e8 } >>
	<a, a>4. r8 |
%5
	a, <a c'> <a c'> <a c'> |
<< {	c'16( b c' d') e'8 d' 
	c' c' b b  } \\ { g4 g8 f8 e8 c8 g8 g8 } >> 


}
\alternative { {  
	<c'  c>4. r8  } { 	<c'  c>4. r8  } } 




  \repeat volta 2 {
	c e g g |
%10
	c' gis a c' |
	b e a a, |
	<e b>4. r8 |
	a, <a c'> <a c'> <a c'> |
<< { 	c'16( b c' cis') d'8 b |
%15
	a a gis gis } \\ { a4 d4 e8 e8 e8 e8 } >>

}

\alternative { {  
	<a, a>4. r8  } { <a, a>4. r8  } } 

}

dynamics = {
\partial 8 s8 
  \repeat volta 2 {

s2*7
}
\alternative { {  
 s2 } { s2 } } 


  \repeat volta 2 {
s2*7
}
\alternative { {  
 s2 } { s2 } } 

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
 \tempo 4=70    
  }
}






  


