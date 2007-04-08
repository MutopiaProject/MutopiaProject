

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "3rd part, nr 14"
   \right-align "polska from Västmanland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 3rd part, 1815"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 3rd part, nr 14"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-841"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"








global={
	\time 3/4
	\key a \minor
}


    
upper =  {
  \global

	a''8 gis''16 a'' e''8 dis''16 e'' c''8 b'16 c'' |
	a'8 gis'16 a' e'8 dis'16 e' c'8 b16 c' |
	a8( c' e') gis' a' b' |
	c'' b'16 c'' d'' c'' b' a' gis'8 e' |
%5
	<< { c''8( b') c''( b') c''( d'') |
	e''( dis'' e'') c''-. b'-. a'-.  } \\
{ e'2. e'2. } >>
	<< { c''8( b') c''( b') c''( d'') |
	e''( dis'' e'') c''-. b'-. a'-.  } \\
{ e'2. e'2. } >>
	a''8 gis''16 a'' e''8 dis''16 e'' c''8 b'16 c'' |
	b'16 a' gis' b' a'4 a 

\bar "||" 


<< { 	c''16 b' c'' d'' c''8 g'\staccatissimo e'\staccatissimo c'\staccatissimo |
	c''( e'' d'' c'') d''4 } \\
{ e'4.  s4. fis'2 b'4 } >>
%10
	<b' d''>16 <a' c''> <b' d''> <c'' e''> <d'' f''> <c'' e''> <b' d''> <a' c''> <g' b'> <f' a'> <e' g'> <d' f'> |
	<< { e'8 c'' b' d'' c''4 } \\ { c'4 d'8 f'8 e'4 } >>
	<< { c''8( b') c''( b') c''( d'') |
	e''( dis'' e'') c''-. b'-. a'-.  } \\
{ e'2. e'2. } >>
	<< { c''8( b') c''( b') c''( d'') |
	e''( dis'' e'') c''-. b'-. a'-.  } \\
{ e'2. e'2. } >>
	a''8 gis''16 a'' e''8 dis''16 e'' c''8 b'16 c'' |
	b'16 a' gis' b' a'4 a 



}


     
lower =  {
  \global \clef bass


	a,4 c e |
	a8 g16 a e8 dis16 e c8 b,16 c |
	a,8( c e) d c b, |
	a,4 d e |
%5
	<< { a8( gis) a( gis) a( b) |
	c'( b c') a-. b-. c'-. } \\ { s2. e2. } >>
	<< { a8( gis) a( gis) a( b) |
	c'( b c') a-. b-. c'-. } \\ { s2. e2. } >>


	a,8 e c e a, e |

	e, e a4 a, |


\bar "||"
  


	<c, c>4. g8 e c |
	<a, a>2 <g, g>4 |
	<f, g>4. g,8 g, g, |
	c d g g, c4
	<< { a8( gis) a( gis) a( b) |
	c'( b c') a-. b-. c'-. } \\ { s2. e2. } >>
	<< { a8( gis) a( gis) a( b) |
	c'( b c') a-. b-. c'-. } \\ { s2. e2. } >>
	a,8 e c e a, e |

	e, e a4 a, 



}

dynamics = {
s4 \f s4 s4
s2.*3
s4 \p s4 s4
\once \override DynamicText #'transparent = ##t  s8 \p  \once \override Hairpin #'extra-offset = #'(0 . 3.5) s8 \> s8 s8 s8 s8 \!
s2.
\once \override DynamicText #'transparent = ##t  s8 \p  \once \override Hairpin #'extra-offset = #'(0 . 3.5) s8 \> s8 s8 s8 s8 \!
s4 \f s4 s4
s2.

s4 \ff s4 s4

s8 \> s8 s8 \! s8 s8 s8
s2.*2
s4 \p s4 s4
\once \override DynamicText #'transparent = ##t  s8 \p  \once \override Hairpin #'extra-offset = #'(0 . 3.5) s8 \> s8 s8 s8 s8 \!
s2.
\once \override DynamicText #'transparent = ##t  s8 \p  \once \override Hairpin #'extra-offset = #'(0 . 3.5) s8 \> s8 s8 s8 s8 \!
s4 \f s4 s4
s2.


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






  


