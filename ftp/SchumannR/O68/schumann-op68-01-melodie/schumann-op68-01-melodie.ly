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
  opus = "Opus 68 N°1"
  instrument = "Mélodie"
  copyright = "Creative Commons Attribution-ShareAlike 2.5"
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
       mutopiatitle = "Album pour la jeunesse - 1.Mélodie "
       mutopiacomposer = "SchumannR"
       mutopiaopus = "O 68 n°1"
       mutopiainstrument = "Piano"
       date = "1848"
       source = "Peters "
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       maintainerWeb = ""
       lastupdated = "2006/Jun/20"



       
 footer = "Mutopia-2007/02/11-647"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
     }

     upper = \relative c'' {
       \clef treble
       \key c \major
       \time 4/4
	\repeat volta 2 {
        \once\override TextScript #'extra-offset = #'(-5 . 2)

	e4-5^\markup { \bold "pas vite" }( d c b |
	a8 c b d c4 \stemUp g) |
	\stemDown g'-5( f e c |
	b_1 \stemUp <fis_2 a_3> g_1) r 
     }
	\stemDown d'-3\espressivo( c b) r |
	f'-3\espressivo( e d) r |
	a'-5\espressivo( g f e |
	d8 f e g
	\voiceOne
	<<
	{ f4.^\markup { \finger "4-5" } d8) | } 
	\context Voice="1" { \voiceTwo
	a8 c b d
	\oneVoice
	}
	>>
	\stemDown <c e>4( d c b |
	a8 c b d c4 \stemUp g) |
	\stemDown a'-5( g^\markup { \finger "4-5" } <b, f'>^\markup { \finger "4-5" } <c e> |
	d8-3 f-5 b,-1 d-3 c4-2) a4\rest |
	d-3\espressivo( c b) a4\rest  |
	f'-3\espressivo( e d) a4\rest |
	a'-5\espressivo( g f e |
	d8 f e g
	\voiceOne
	<<
	{ f4. d8) | } 
	\context Voice="1" { \voiceTwo
	a8 c b d
	\oneVoice
	}
	>>
	\stemDown <c e>4( d c b |
	a8 c b d c4 \stemUp g) |
	\stemDown a'( g <b, f'> <c e> |
	d8 f b, d c4) a4\rest \bar "|." 
     }
     
     lower = \relative c' {
       \clef treble
       \key c \major
       \time 4/4

	\repeat volta 2 {
	c8_5( g' f g e g c, e |
	f d g f e f e d) |
	e_3( g d g c, g' e g |
	d g c, d b d g,4) |
     }
	f'!8_2( g e g d g fis g) |
	d_3( g c, g' b, g' fis g) |
	f!_2( g e g d g c, g' |
	b, g' c, cis d4 g) |
	c,8_5( g' f g e g c, e |
	f d g f e f e c)
	f( c' e, c' d, g c, g' |
	f a g f e g c, e)
	f( g e g d g fis g) |
	d( g c, g' b, g' fis g) |
	f!( g e g d g c, g' |
	b, g' c, cis d4 g) |
	c,8( g' f g e g c, e |
	f d g f e f e c) |
	f( c' e, c' d, g c, g' |
	f a g f e g c,4)

     }
     
     dynamics = {
        
	s1\p 
	s1*5
	s4\> s2 s4\!
	s1*7
	s4\> s2 s4\!
	s1*5
     }
     
     \score {
       \context PianoStaff <<
   \set PianoStaff.instrumentName = \markup{ \fontsize #6 {"1. "} \hspace #1.0
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
           \override VerticalAlignment #'forced-distance = #5
         }
       }
     }
     \score {
	\unfoldRepeats
       \context PianoStaff <<
         \context Staff=upper  \upper %\dynamics

         \context Staff=lower << \lower %\dynamics
	>>
       >>
       \midi {
	\context { \Score
	tempoWholesPerMinute = #(ly:make-moment 60 4)
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
