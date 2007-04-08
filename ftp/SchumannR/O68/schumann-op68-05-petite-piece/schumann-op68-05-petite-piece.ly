 \version "2.10.16"

 \paper { between-system-padding = #1
	ragged-bottom=##f
	ragged-last-bottom=##f
	}

     \header {
       title = "Album pour la jeunesse"
       subsubtitle = "------"
       composer = "Robert Schumann (1810-1856)"
       opus = "Opus 68 N°5"
       instrument = "Petite pièce"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
        mutopiatitle = "Album pour la jeunesse - 5.Petite pièce "
       mutopiacomposer = "SchumannR"
       mutopiaopus = "O 68 n°5 "
       mutopiainstrument = "Piano"
       date = "1848"
       source = "Peters"
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       lastupdated = "2006/Jun/20"



       
 footer = "Mutopia-2007/02/11-653"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
     }

     upper = \relative c'' {
       \clef treble
       \key c \major
       \time 4/4
	\stemDown
       \partial 2.
	s4
	\once \override Fingering #'extra-offset = #'(-0.3 . 0.2)
	\override TextScript #'extra-offset = #'(-5 . 0.2)
        e-2^\markup { \bold "pas vite" }( f |
	g a \once \override Fingering #'extra-offset = #'(0 . -2) d,-1 e |
	f2) c4-1( d |
	e \once \override Fingering #'extra-offset = #'(0 . 0.4) e-4 d a |
	c b) \once \override Fingering #'extra-offset = #'(-0.3 . 0.3) e-2( f |
	g a d, e |
	f2) c4( d |
	e e d b |
	 d-3 c) \bar "||" b( c |
	d e c d |
	e2) c4( d |
	e f d e |
	f d) e( f |
	g a d, e |
	f2) c4( d |
	e e d b |
	d c) b( c |
	d e c d |
	e2) c4( d |
	e f d e |
	f d) e( f |
	g a d, e |
	f2) c4( d |
	e e d b |
	d c) \bar "|."
     }
     
     lower = \relative c' {
       \clef bass
       \key c \major
       \time 4/4
	\stemUp \slurDown
       \partial 2.
	s4
	\clef treble
	\once \override Fingering #'extra-offset = #'(-1.5 . 2)
	c8_5( g' d g |
	e g f g \once \override Fingering #'extra-offset = #'(-1.5 . 2)
	b,_5 g' c, g' |
	d g d g) \once \override Fingering #'extra-offset = #'(-1.5 . 2)
	a,_5( g' b, g' |
	c, g' c, g' \once \override Fingering #'extra-offset = #'(0 . 3) d_2 \once \override Fingering #'extra-offset = #'(0 . 4) fis_1 d fis |
	g, g' g, g') \once \override Fingering #'extra-offset = #'(-1.5 . 2)
	c,_5( g' d g |
	e g f g \once \override Fingering #'extra-offset = #'(-1.5 . 2)
	b,_5 g' c, g' |
	d g d g) \once \override Fingering #'extra-offset = #'(-1.7 . 2)
	a,_5( g' b, g' |
	c, g' e g f, f' \once \override Fingering #'extra-offset = #'(-1.5 . 2)g,_5 \once \override Fingering #'extra-offset = #'(0 . 2.2) d'_2) |
	\voiceOne
	<<
	{ f4^1( e)^2 \bar "||" }
	\context Voice="1" { \voiceTwo
	\once \override Fingering #'extra-offset = #'(0.4 . 1.7)c2_4
	\oneVoice
	}
	>>
	\stemUp \slurDown
	\once \override Fingering #'extra-offset = #'(-1.4 . -8)
	g8_5( g' a, g' |
	b, g' c, g' \once \override Fingering #'extra-offset = #'(-1.4 . -7.5)		a,_5 g' b, g' |
	c, g' c, g') \once \override Fingering #'extra-offset = #'(-1.4 . -8)
	a,_5( g' b, g' |
	c, g' d g \once \override Fingering #'extra-offset = #'(-1.4 . -7)
	b,_5 g' c, g' |
	d g b, g') \once \override Fingering #'extra-offset = #'(-1.4 . -7)
	c,_5( g' d g |
	e g f g \once \override Fingering #'extra-offset = #'(-1.4 . -7.5)
	b,_5 g' \once \override Fingering #'extra-offset = #'(1.5 . -7.2)
	cis,_4 g' |
	\once \override Fingering #'extra-offset = #'(-1.4 . -6)
	d_3 g d g) \once \override Fingering #'extra-offset = #'(-1.4 . -8)
	a,_5( g' b, g' |
	c, g' e g f, f' g, d') |
	\voiceOne
	<<
	{ f4^1( e^2) }
	\context Voice="1" { \voiceTwo
	\once \override Fingering #'extra-offset = #'(0.4 . 1.7)c2_4
	\oneVoice
	}
	>>
	\stemUp \slurDown
	g8( g' a, g' |
	b, g' c, g' a, g' b, g' |
	c, g' c, g') a,( g' b, g' |
	c, g' d g b, g' c, g' |
	d g b, g') c,( g' d g |
	e g f g b, g' cis, g' |
	d g d g) a,( g' b, g' |
	c, g' e g f, f' g, d') | 
	\voiceOne
	<<
	{ f4( e) }
	\context Voice="1" { \voiceTwo
	c2
	\oneVoice
	}
	>>
     }
     
     dynamics = {
	\partial 2.
       s4 s4\p s4 s1*23 
     }

     
     \score {
       \context PianoStaff <<
   \set PianoStaff.instrumentName = \markup{ \fontsize #6 {"5. "} \hspace #1.0
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
           \override VerticalAlignment #'forced-distance = #4.4
         }
       }
     }
     \score {
       \context PianoStaff <<
         \context Staff=upper << \upper \dynamics >>
         \context Staff=lower << \lower \dynamics >>

       >>
       \midi {
	\context { \Score
	tempoWholesPerMinute = #(ly:make-moment 68 4)
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
