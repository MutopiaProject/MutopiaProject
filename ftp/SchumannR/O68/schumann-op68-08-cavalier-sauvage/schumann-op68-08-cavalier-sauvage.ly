 \version "2.10.16"

 \paper { between-system-padding = #1
	ragged-bottom=##f
	ragged-last-bottom=##f
	}

     \header {
       title = "Album pour la jeunesse"
       subtitle = "40 (43) pièces de piano"
       subsubtitle = "-----"
       composer = "Robert Schumann (1810-1856)"
       opus = "Opus 68 n°8"
       instrument = "Le cavalier sauvage"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
       mutopiatitle = "Album pour la jeunesse - 8.Le cavalier sauvage "
       mutopiacomposer = "SchumannR"
       mutopiaopus = "O 68 n°8 "
       mutopiainstrument = "Piano"
       date = "1848"
       source = "Peters"
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       lastupdated = "2006/Jun/20"





 footer = "Mutopia-2007/02/11-655"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
     }

     upper = \relative c' {
       \clef treble
       \key c \major
       \time 6/8	
	\partial 8
	\repeat volta 2 {
	\override TextScript #'extra-offset = #'(0 . 2)
	e8_.^\markup { \bold "vif" } |
	a_. e_. a_. c-. a-. c-.
	e( c) f-. e-. c-. a-.
	b( gis) c_. b_. gis_. e_.
	a_. e_. c'_. b_. r8 e,_.
	a_. e_. a_. c-. a-. c-.
	e( c) f-. e-. c-. a-.
	b( gis) c_. b_. gis_. e_.
	a_. e_. gis_. a_. r8
        }
	r8 |
	<c, f a>_. r r <c f a>_. r r
	<f a>4 <f a>8 <f a> r r
	<e g c>4 <e g c>8 <e g c> r r
	<f a c>_. a_. f_. <e g>_. r r
	<c f a>_. r r <c f a>_. r r
	<f a>4 <f a>8 <f a> r r
	<e g c>4 <e g c>8 <e g c> r r
	<c f a>_. r <c g'>_. f_. r \bar"||"
	e8_. |
	a_. e_. a_. c-. a-. c-.
	e( c) f-. e-. c-. a-.
	b( gis) c_. b_. gis_. e_.
	a_. e_. c'_. b_. r8 e,_.
	a_. e_. a_. c-. a-. c-.
	e( c) f-. e-. c-. a-.
	b( gis) c_. b_. gis_. e_.
	a_. e_. gis_. a_. r8 \bar"|."

     }
     
     lower = \relative c' {
       \clef bass
       \key c \major
       \time 6/8
	\partial 8
	\repeat volta 2 {
	r8 |
	\clef treble
	<a c>_. r r <a c e>_. r r
	<a c e>4 <a d f>8 <a c e> r r
	\clef bass
	<e gis b>4 <e a c>8 <e gis b> r r
	<a c>-. r <a c>-. <e gis b>-. r r
	\clef treble
	<a c>_. r r <a c e>_. r r
	<a c e>4 <a d f>8 <a c e> r r
	\clef bass
	<e gis b>4 <e a c>8 <e gis b> r r
	<a c>-. r <e b'>-. <a c>-. r
	} 
	c,_. |
	f-. c-. f-. a-. f-. a-.
	c( a) d-. c-. a_. f-.
	g( e) a-. g-. e-. c-.
	f-. c-. a'-. <c, g'>-. r c_.
	f-. c-. f-. a-. f-. a-.
	c( a) d-. c-. a_. f-.
	g( e) a-. g-. e-. c-.
	f-. c-. e-. f-. r \bar "||"
	r |
	<a c>_. r r <a c e>_. r r
	<a c e>4 <a d f>8 <a c e> r r
	\clef bass
	<e gis b>4 <e a c>8 <e gis b> r r
	<a c>-. r <a c>-. <e gis b>-. r r
	\clef treble
	<a c>_. r r <a c e>_. r r
	<a c e>4 <a d f>8 <a c e> r r
	\clef bass
	<e gis b>4 <e a c>8 <e gis b> r r
	<a c>-. r <e b'>-. <a c>-. r \bar "|."
     }
     
     dynamics = {

       s8\mf
	s2.
	s2.\sf
	s2.\sf
	s2.*2
	s2.\sf
	s2.\sf
	s4. s4
	s8
	s2.
        \once \override DynamicText #'extra-offset = #'(0 . -5.8)
	s2.\sf
	\once \override DynamicText #'extra-offset = #'(0 . -6.2)
	s2.\sf
	s2.*2
	\once \override DynamicText #'extra-offset = #'(0 . -5.8)
	s2.\sf
	s2.
	s4. s4
        \once \override DynamicText #'extra-offset = #'(0.35 . 2.5)
	s8\mf |
	s2.
        \once \override DynamicText #'extra-offset = #'(0.2 . 3.5)
	s2.\sf
	s2.\sf
	s2.*2
	s2.\sf
	s2.\sf
	s4. s4 
     }
     
     \score {
       \context PianoStaff <<
   \set PianoStaff.instrumentName = \markup{ \fontsize #6 {"8. "} \hspace #1.0
}
         \context Staff=upper \upper
         \context Dynamics=dynamics \dynamics
         \context Staff=lower <<
           \clef bass
           \lower
         >>

       >>
       \layout {
	ragged-last = ##f
         \context {
           \type "Engraver_group"
           \name Dynamics
           \alias Voice % So that \cresc works, for example.
           \consists "Output_property_engraver"
     
           \override VerticalAxisGroup #'minimum-Y-extent = #'(-5 . 5)
           \consists "Script_engraver"
           \consists "Dynamic_engraver"
           \consists "Text_engraver"
     
           \override TextScript #'font-size = #2
           \override TextScript #'font-shape = #'bold
           \override DynamicText #'extra-offset = #'(0 . 2.5)
           \override Hairpin #'extra-offset = #'(0 . 2.5)
     
           \consists "Skip_event_swallow_translator"
     
           \consists "Axis_group_engraver"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
           \override VerticalAlignment #'forced-distance = #5.6
         }
       }
     }
     \score {
	\unfoldRepeats
       \context PianoStaff <<
         \context Staff=upper  \upper \dynamics

         \context Staff=lower << \lower \dynamics
	>>

       >>
       \midi {
	\context { \Score
	tempoWholesPerMinute = #(ly:make-moment 152 4)
	     }

         \context {
           \type "Performer_group"
           \name Dynamics
         }
	
         \context {
           \PianoStaff
           \accepts Dynamics
         }
       }
     }
