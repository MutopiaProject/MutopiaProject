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
       opus = "Opus 68 n°2"
       instrument = "Marche militaire"
       copyright = "Creative Commons Attribution-ShareAlike 2.5" 
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
        mutopiatitle = "Album pour la jeunesse - 2.Marche militaire "
       mutopiacomposer = "SchumannR"
       mutopiaopus = "O 68 n°2 "
       mutopiainstrument = "Piano"
       date = "1848"
       source = "Peters"
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       lastupdated = "2006/Jun/20"




       
 footer = "Mutopia-2007/02/11-650"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
     }

     upper = \relative c'' {
       \clef treble
       \key g \major
       \time 2/4
	\override TextScript #'extra-offset = #'(-5 . 2)	

	<g b>8.^\markup { \bold "Gaiement et bien rythmé" } <g c>16 <g d'>8 r |
	<g e'> r <g d'> r |
	<fis c'> r <g b> r |
	<fis a> r g r |
	<g b>8. <g c>16 <g d'>8 r |
	<g e'> r <g d'> r |
\break %mes7
	<e' g> r <d fis> r |
	<cis e> r d r |
	<g, b>8. <g c>16 <g d'>8 r |
	<g e'> r <g d'> r |
	<fis c'> r <g b> r |
	<fis a> r g r |
\break %mes13
	<g b>8. <g c>16 <g d'>8 r |
	<g e'> r <g d'> r |
	<e' g> r <d fis> r |
	<cis e> r d r |
	\repeat volta 2 {
	d,8. e16 fis4 |
	e d |
\break %mes19
	<fis e'>8 r <g d'> r |
	<a c> r <g b> r |
	<d fis a>8. e16 fis4 |
	e d |
	<a' c>8 r <g b> r |
	<fis a> r <g b> r |
\break %mes25
	<g b>8. <g c>16 <g d'>8 r |
	<g e'> r <g d'> r |
	<fis c'> r <g b> r |
	<fis a> r g r |
	c,8. d16 e4 |
	d c |
	d <a' d fis>8 r |
	<b d g> r r4 \bar ":|"
	}
     }
     
     lower = \relative c {
       \clef bass
       \key g \major
       \time 2/4

	g'8. a16 b8 r
	c r b r
	a r g r
	<d c'> r <g b> r
	g8. a16 b8 r
	c r b r
	cis r d r
	\clef treble
	<a g'> r <d fis> r
	\clef bass
	g,8. a16 b8 r
	c r b r
	a r g r
	<d c'> r <g b> r
	g8. a16 b8 r
	c r b r
	cis r d r
	\clef treble
	<a g'> r <d fis> r
	\clef bass
	\repeat volta 2 {
        d,8. e16 fis4
	e d
	c'8 r b r
	<fis d'> r <g d'> r
	d8. e16 fis4
	e d
	<fis d'>8 r <g d'> r
	<d d'> r <g d'> r
	g8. a16 b8 r
	c r b r
	a r g r
	<d c'> r <g b> r
	c,8. d16 e4
	d c
	d d'8 r
	g, r r4
	}
     }
     
     dynamics = {
        
	s2\f
	s2*3
	s2\f
	s2*3
	s2\f
	s2*3
	s2\f
	s2*3
	\once \override DynamicText #'extra-offset = #'(0 . 2.1)
	s2\f
	s2*3
	s2\f
	s2*3
	s2\f
	s2*5
	s4 \once \override DynamicText #'extra-offset = #'(-1.5 . 2.5) s4\f
	s2\f  
     }
     
     \score {
       \context PianoStaff <<
   \set PianoStaff.instrumentName = \markup{ \fontsize #6 {"2. "} \hspace #1.0
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
           \override TextScript #'font-shape = #'italic
           \override DynamicText #'extra-offset = #'(0 . 2.5)
           \override Hairpin #'extra-offset = #'(0 . 2.5)
     
           \consists "Skip_event_swallow_translator"
     
           \consists "Axis_group_engraver"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
           \override VerticalAlignment #'forced-distance = #4.6
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
	tempoWholesPerMinute = #(ly:make-moment 120 4)
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
