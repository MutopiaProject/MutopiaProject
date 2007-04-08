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
       opus = "Opus 68 n°4"
       instrument = "Un choral"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
      mutopiatitle = "Album pour la jeunesse - 4.Un choral "
       mutopiacomposer = "SchumannR"
       mutopiaopus = "O 68 n°4 "
       mutopiainstrument = "Piano"
       date = "1848"
       source = "Peters"
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       lastupdated = "2006/Jun/20"


 
 footer = "Mutopia-2007/02/11-782"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
     }
 
     upper = \relative c'' {
       \clef treble
       \key g \major
       \time 4/4


	\once \override TextScript #'extra-offset = #'(-5 . 2)
	\voiceOne
	<< { g2^\markup { \bold "Lentement" } a |
	b a |
	g fis |
	e \tempo 4=46 d\fermata |
	\tempo 4=92 g a |
	b c |
	b a |
	\tempo 4=62 g1\fermata |
\break
	\tempo 4=92 g2 a |
	b a |
	g fis |
	e \tempo 4=46 d\fermata |
	\tempo 4=92 g a |
	b c |
	b a |
	\tempo 4=62 g1\fermata \bar "||"
\break
% 2ème partie
	\tempo 4=92 b2 c |
	d c |
	b a |
	\tempo 4=62 b1\fermata |
	\tempo 4=92 d2 d |
	e d |
	c b |
	\tempo 4=62 a1\fermata |
\break
	\tempo 4=92 b4( c d2) |
	c b |
	g a |
	\tempo 4=46 b\fermata g\fermata |
	\tempo 4=92 b4( c d2) |
	c b |
	a a |
	g1 \bar "|."
	}% fin du soprano

	\context Voice = "1" { \voiceTwo
	d2 d |
	d d |
	cis d |
	cis d |
	b d |
	d g |
	d ~ d4 c |
	b1 |
	d2 d |
       	d d |
	cis d |
	cis d |
	b d |
	d g |
	d ~ d4 c |
	b1 
% 2éme partie
	g'2 fis |
	g fis |
	g g4_( fis) |
	g1 |
	g2 g |
	g g |
	fis g |
	fis1 |
	g2 g |
	g g |
	e fis |
	g e |
	g g |
	fis g |
	e fis |
	g1 |
	\oneVoice
	}
	>>



     }
     
     lower = \relative c {
       \clef bass
       \key g \major
       \time 4/4

	\voiceOne
	<< { b'2 a |
        g a |
	a a |
	a fis |
	e fis |
	g g |
	g fis |
	g1 |
	b2 a |
	g a |
	a a |
	a fis |
	e fis |
	g g |
	g fis |
	g1 |
% 2éme partie
	d'2 c |
	b c |
	d e4( d) |
	d1 |
	b2 d |
	c d |
	d d |
	d1 |
	d2 d |
	e d |
	c c |
	d c |
	d d |
	d d |
	c c |
	b1 |
  }% fin du ténor
	\context Voice = "1" { \voiceTwo
	g2 fis |
	g fis |
	e d |
	a d_\fermata
	e d |
	g e |
	d d |
	g,1_\fermata |
	g'2 fis |
	g fis |
	e d |
	a d_\fermata
	e d |
	g e |
	d d |
	g,1_\fermata |
% 2éme partie
	g'2 a |
	b a |
	g c4_( d) |
	g,1_\fermata |
	g2 b |
	c b |
	a g |
	d1_\fermata |
	g4_( a b2) |
	c g |
	c a |
	g_\fermata c,_\fermata |
        g'4_( a b2) |
	a g |
	c, d |
	g1_\fermata |
	       
	
	\oneVoice
	}
	>>
	

     }
     
     dynamics = {

	s2\p s2
       s1*31	
     }

     
     \score {
       \context PianoStaff <<
	\override Score.MetronomeMark #'transparent = ##t
  \set PianoStaff.instrumentName = \markup{ \fontsize #6 {"4."} \hspace #1.0 }
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
           \override VerticalAlignment #'forced-distance = #6
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
	tempoWholesPerMinute = #(ly:make-moment 92 4)
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
