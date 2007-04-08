

\header {
    title = "Traditioner af Swenska Folk-Dansar"
    opus = \markup {
         \column  {
          \right-align  "3rd part, nr 22"
   \right-align "polska from Östergötland, Sweden" 
}
 } 
  source = "Traditioner af Swenska Folk-Dansar, 3rd part, 1815"



    enteredby = "Erik Sjölund"
				% mutopia headers.

    mutopiatitle = "Traditioner af Swenska Folk-Dansar, 3rd part, nr 22"

    mutopiacomposer = "Traditional"
    mutopiainstrument = "Piano"
    style = "Folk"
    copyright = "Creative Commons Attribution 2.5"
    maintainer = "Erik Sjölund"
    maintainerEmail = "erik.sjolund@gmail.com"




    lastupdated = "2006/November/25"
 footer = "Mutopia-2006/12/01-845"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
  }




     \version "2.8.5"








global={
	\time 3/4
	\key f \major
}


    
upper =  {
  \global
  \repeat volta 2 {
	c''8 f'' f''\trill e''16 f'' f''8\trill  e''16 f'' |
	c''8 g'' g''\trill f''16 g'' g''8\trill  f''16 g'' |
	a''8 f'' f'' f'' f'' g''16 a'' |
	g'' f'' e'' d'' c''4 c'' |
%5
	d''16 c'' bes' a' g' f' e' d' c'8 c' |
	c''16 bes' a' g' f' e' d' c' bes8 bes |
	bes'16 a' g' f' e' d' c' bes a8 f' |
	e'16 f' g' e' g'4( f') |

} 
  \repeat volta 2 {

	\grace bes'16 a'8 g'16 f' \grace bes'16   a'8 g'16 f' c''4 |
%10
	\grace c''16  b'8 a'16 g' b'8 d'' f''4 |
	\grace f''16  e''8 d''16 c'' a''8 g'' f'' e'' |
	d''( c'') b'16 c'' d'' b' g'4 |
	a''16 g'' f'' e'' d'' c'' b' a' g'8 g' |
	g''16 f'' e'' d'' c'' bes' a' g' f'8 f' |
%15
	f''16 e'' d'' c'' b' a' g' f' e'8 e' |
	d' c''16 b' c''8 d'' c''4 |
	c''8( d''16 ees'') d''8\staccatissimo b\staccatissimo b\staccatissimo d''\staccatissimo |
	d''( e''16 f'') e''8 c' c' g'' |
	bes''16 a'' g'' f'' e'' d'' c'' bes' a'8 f'' |
%20
	g' f''16 e'' <a' f''>4 <a f'> 

}

}


     
lower =  {
  \global \clef bass
  \repeat volta 2 {
	<< { a8 c' a c' a c' 
	bes c' bes c' bes c' 
	a8 c' a c' a c' 
	c8( g e g e c) |
	bes, g d g e g |
%5
	a, f c f d f |
	d f c e c f |
	g bes bes4( a) } \\ { f4 f f e e e f f f s2. bes,2 bes,4( a,2) a,4(  g,4) c4 f,4  c f2  } >>

}
  \repeat volta 2 {
\grace s16
	f8\staccatissimo a\staccatissimo f\staccatissimo a\staccatissimo e\staccatissimo g\staccatissimo |
	d\staccatissimo g\staccatissimo d\staccatissimo b,\staccatissimo g,\staccatissimo g\staccatissimo |
%10
	c e f( e) a( g) |
	f( fis) g g, g4 |

<< {	f8 d' a d' b d' |
	e c' g c' a c' |
	a c' g bes g c' |
%15
	f a f a f a 
} \\ { f2 f4( e2)  e4( d4)  g4 c4  f4 f4 f4 } >>
	fis8 a g, g g b |
	b g c' c e c |
	g( e c cis) d a, |
	bes, c f,4 f 

}
}

dynamics = {
  \repeat volta 2 {
s4 \f s4 s4
s2.*3
   s4 s4 s4 \sf
  s4 s4 s4 \sf 
s2.*2
}

  \repeat volta 2 {
\grace s16 s4 \p s4 s4
s2.
s4 \once \override DynamicText #'transparent = ##t s4 \mf  s4
s2.

\once \override DynamicText #'transparent = ##t  s4 \mf s4  \once \override DynamicText #'extra-offset = #'(0 . 3.5) s4 \sf 
\once \override DynamicText #'transparent = ##t  s4 \mf s4  \once \override DynamicText #'extra-offset = #'(0 . 3.5) s4 \sf 
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






  


