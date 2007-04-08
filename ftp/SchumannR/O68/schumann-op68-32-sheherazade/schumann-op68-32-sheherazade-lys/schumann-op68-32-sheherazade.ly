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
       opus = "Opus 68 n°32"
       instrument = "Sheherazade"
       copyright = "Creative Commons Attribution-ShareAlike 2.5" 
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
        mutopiatitle = "Album pour la jeunesse - 32.Sheherazade "
       mutopiacomposer = "SchumannR"
       mutopiaopus = "O 68 n°32 "
       mutopiainstrument = "Piano"
       date = "1848"
       source = "Peters"
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       lastupdated = "2006/Jun/25"



 footer = "Mutopia-2007/02/11-692"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
     }

  %%%%%%%%%% IL Y A UN FICHIER MIDI SEPARE ( Overlaps de notes ) %%%%%%%%%%%%


     upper = \relative c'' {
       \clef treble
       \key a \minor
       \time 4/4
	
	\once \override TextScript #'extra-offset = #'(-5 . 2)
	\phrasingSlurUp
	\repeat volta 2 {
	\tempo 4=64
	\voiceOne
	<< { c2^\markup { \bold "Assez lent, léger." }\arpeggio\( d\arpeggio
	c4\arpeggio b8 a gis!4 a\)
	e'4\arpeggio\( b ~ b8 c b a
\break
	b1\)
	e2\arpeggio\( f\arpeggio
	e4\arpeggio d8 c b4\arpeggio c\)
\break
	a'4\arpeggio\( d, ~ d8 f e d
	c1\arpeggio\)
    }
	\context Voice = "1" { \voiceTwo
	<e, a>8\arpeggio e a g <f a>\arpeggio g a b
	<e, a>\arpeggio a <d, gis> c b e c e
	<e gis b>\arpeggio gis b gis <fis a>\arpeggio a fis a
	gis\arpeggio e^\( fis gis <f! g! b> a g f\)
	<e g c>\arpeggio g c b <a c>\arpeggio b c d
	<g, c>\arpeggio c <f, b> e f\arpeggio g4 g8
	<a c d>\arpeggio c d c b4 a8 b
	\tempo 4=58
	<e, g>\arpeggio g e a g e c4
	\oneVoice
	}
	>>
   }

	\repeat volta 2 {
	\tempo 4=64
	\voiceOne
	<< { b'2\arpeggio c4^.\arpeggio\(  c^.\)
\break
	b2\arpeggio\( c\arpeggio\)
	e\arpeggio\( ~ e8 d c b\)
	b4\( c2.\)
\break
	e2\arpeggio f4^.\arpeggio\(  f^.\)
	g2\arpeggio\( a\arpeggio\)
	c,\arpeggio\( ~ c8 bes a g\)
\break
	g4\( a2.\)
	a'2\arpeggio\( d,4 e
	d\arpeggio cis2.\)
\break
	a'2\arpeggio\( d,4 c!
	b1\arpeggio\)
	e2\arpeggio\( a,4 b
\break
	a gis2\) g!4\(
	f d' c b
	e2.\arpeggio\) g,4\(
\break
	f d' c b!\)
	c2\arpeggio\( d\arpeggio
  }    

  
	\bar "|."


	\context Voice = "1" { \voiceTwo
	<e, gis>8\arpeggio b' gis e <fis a>\arpeggio g a fis
      <e gis>\arpeggio b' gis e <e a>\arpeggio e c \change Staff=lower \stemUp a
	\change Staff=upper \stemDown <f' c'>\arpeggio c' a f gis d' e, gis
	gis! e a gis a e c \change Staff=lower \stemUp a
    \change Staff=upper \stemDown <e' bes' c>\arpeggio bes' d c <f, bes c>\arpeggio bes d c
	<g c>\arpeggio g d' c <a c>\arpeggio a \change Staff=lower \stemUp f c
	\change Staff=upper \stemDown <d fis>\arpeggio d g d g d e c
	e c f e f c \change Staff=lower \stemUp a f
	\change Staff=upper \stemDown <a' d>\arpeggio a d cis a d4 bes8
	<e, a>\arpeggio e a gis a e \change Staff=lower \stemUp cis a
      \change Staff=upper \stemDown <a' d>\arpeggio a d cis <d, a'>\arpeggio a' <e a>\arpeggio a
	 <b, fis' a>\arpeggio b^\( b' a <b, e gis b>\arpeggio gis' e \change Staff= lower \stemUp b\)
	\change Staff=upper \stemDown <e a c>\arpeggio e a gis a e f b
	<b, e>\arpeggio e gis e dis e bes e
	a, d f b e, a e gis
	<e a c>\arpeggio e c' b a g! <bes, f'> e
	a, d f bes e, a d, gis
	<c, e a>\arpeggio e a g! <f a>\arpeggio g a b
	\oneVoice
	}
	>>
}

	\alternative {
	{    \voiceOne << \tempo 4=56
    {c4\arpeggio \once \override TextScript #'extra-offset = #'(-4 . 0.2) b8^\markup { \small "ritard." } a \tempo 4=48 gis!4 a\)}
	\context Voice = "1" { \voiceTwo
	<e a>8\arpeggio a <d, gis> c b e c e 
	\oneVoice } >> 
	}

	{    \voiceOne << \tempo 4=54
 {c'4\arpeggio\( \once \override TextScript #'extra-offset = #'(-4 . 0.2) b8^\markup { \smaller "ritard." } a 	\tempo 4=44 gis!4 a\)\fermata}
	\context Voice = "1" { \voiceTwo
	<e a>8\arpeggio a <d, gis> c b e \tempo 4=30 c \tempo 4=18 e^\fermata 
	\oneVoice } >> 
	}
    }   %fin de l'alternative
		\bar "||"

}
    
     lower = \relative c {
       \clef bass
       \key a \minor
       \time 4/4
	\repeat volta 2 {
	a'2\( d
	a1\)
	e2\( dis
	e d!
	c\)\( c'
	c, d4 e\)
	f2\( g
	c,1\)        \bar ":|"
     }

	\repeat volta 2 {
	\stemDown
	e2\( dis
	d! c\)
	d\( e
	a,2.\) s4
	g'2\( f
	e f\)
	bes,2.\( c4
	f1\)
	f2 f4\( g
	a1\)
	f2 f4_\( e
	dis2 d!
	c\) c4\( d
	e2.\) cis4\(
	d b! e d
	c2.\) cis4\(
	d bes8 d e2\)
	\stemDown a2_\( ~ < d, a'> ~ 
     }
	\alternative {
	{ <a' a,>1\)}
	{ <a a,>1\repeatTie \fermata} %comment faire apparaître la phrasingSlur?
      }
	\bar "||"

    }
     
     dynamics = {

	\once \override DynamicText #'extra-offset = #'(-1 . 1.8)
       s1\p
	s1
	\once \override DynamicText #'extra-offset = #'(-0.5 . 13)
	s1\fp
	s8 s8\< s2 s8 s8\!
	s1*2
	s1\fp
	s1        \bar ":|"
	s1*8
	s1\sfp
	s1
	s1\sfp
	s1
	\once \override DynamicText #'extra-offset = #'(-0.7 . 13)
	s1\sfp
	s1*2
	\once \override DynamicText #'extra-offset = #'(0.4 . 13.5)
	s1\sf
	s1
	\once \override DynamicText #'extra-offset = #'(0.2 . 1)
	s1\pp
	s1       \bar ":|"
	s1         \bar "|."

     }
     
     
     \score {
       \context PianoStaff <<
	\override Score.MetronomeMark #'transparent = ##t
   \set PianoStaff.instrumentName = \markup{ \fontsize #6 {"32. "} \hspace #1.0 }
	\set PianoStaff.connectArpeggios = ##t
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
     
           \override VerticalAxisGroup #'minimum-Y-extent = #'(-5 . 15)

           \consists "Script_engraver"
           \consists "Dynamic_engraver"
           \consists "Text_engraver"
     
           \override TextScript #'font-size = #2
           \override TextScript #'font-shape = #'italic
           \override DynamicText #'extra-offset = #'(0 . 2.5)
           \override Hairpin #'extra-offset = #'(0 . 1.5)
     
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
 %{   \score {
	\unfoldRepeats
       \context PianoStaff <<
         \context Staff=upper  \upper \dynamics

         \context Staff=lower << \lower \dynamics
	>>

       >>
       \midi {
	\context { \Score
	tempoWholesPerMinute = #(ly:make-moment 64 4)
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
%}

