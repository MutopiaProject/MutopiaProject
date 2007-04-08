 \version "2.10.16"

 \paper { between-system-padding = #1
	ragged-bottom=##f
	ragged-last-bottom=##f
	}
 
     \header {
       title = "Cinq Préludes "
       subtitle = "Opus 16"
       subsubtitle = "-----"
       composer = "A. Scriabin (1872-1915)"
       opus = "Opus 16 n°4"
       instrument = "N°4"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
       mutopiatitle = "Préludes opus 16 - 4. "
       mutopiacomposer = "ScriabinA"
       mutopiaopus = "O 16 n°4"
       mutopiainstrument = "Piano"
       date = "composer's dates"
       source = "M.P.Belaïeff, Leipzig. 1897"
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       lastupdated = "2006/May/01"



 footer = "Mutopia-2007/02/17-762"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
     }

     upper = \relative c'' {
       \clef treble
       \key es \minor
       \time 3/4

	%%%%%%%%%%%%%% IL Y A UN FICHIER MIDI SEPARE (overlaps)%%%%%%%%%%%%%

	\once \override Score.MetronomeMark #'extra-offset = #'(3.5 . 3)
	\tempo 4=44
	\once \override PhrasingSlur #'extra-offset = #'(0 . 0.7)
	\once \override TextScript #'extra-offset = #'(-5 . 1)
      bes4^\markup { \bold "Lento" }\( as8 bes \times 2/3 {des8[ ces8. ges16]} |
	as4 ges8 as \times 2/3 {ces8[ bes8. es,16]} |
	<ges, bes es ges>4_. <ges bes es ges>4_. <ges bes es ges>4_. |
\break
	\voiceOne
	<< { as'4 ges8 as \times 2/3 {ces8[ bes8. f16]} |
	ges4 f8 ges \times 2/3 {bes8[ as8. es16]} |
	<f, bes d! f>4_. <f bes d! f>4_. <f bes d! f>4_. |
\break
	ges'4 f8 ges \times 2/3 {as8[ bes8. ces16]} |
	des4 es8 fes \times 2/3 {es8[ des8. ces16]} |
	<ces, fes ces'>4_. <ces es ces'>4_. <ces es ces'>4_. |
	<bes bes'>4
      } % fin 1ère voix
	\context Voice = "1" { \voiceTwo
	<as des f>2 <bes f'>4 |
	<bes es>2 <as es'>4 |
	s2. |
	<ges ces es>2 <des' f>4 |
	<fes as>4 <fes ces'> <fes bes>8. <fes as>16 |
	s2. |
	\once \override NoteColumn #'force-hshift = #1.7 es8_. s8
	\oneVoice
	} >>
	as8 bes \times 2/3 {des8[ ces8. ges16]} |
	as4 ges8 as \times 2/3 {ces8[ bes8. es,16]} |
	<ges, bes es ges>4_. <ges bes es ges>4_. <ges bes es ges>4_.\)
	\bar "|."


     }
     
     lower = \relative c {
       \clef bass
       \key es \minor
       \time 3/4

	R2.
	R2.
	<es, bes' es>4_.^\( <es bes' es>_. <es bes' es>_.\) |
	<des des'>2 <ges des'>4 |
	<ces, ces'>2 <f ces'>4 |
	<bes, bes'>4_.^\( <bes bes'>_. <bes bes'>_.\) |
	<as as'>2 <des des'>8 <ces ces'> |
	<bes bes'>4 <as as'> <g! g'!>8. <as as'>16 |
	<as' fes'>4_.^\( <a! ges'>^. <a ges'>^.\) |
	<bes ges'>^. r4 r4 |
	R2. |
	<es, bes' es>4_._\( <es bes' es>_. <es bes' es>_.\)
  }
     
     dynamics = {
	     
       s8\p \once \override TextScript #'extra-offset = #'(-0.5 . 1.3) s8_\markup { \italic \small  sotto \small voce } s4 s4
	s2.*5
	s4\once \override TextScript #'extra-offset = #'(-0.5 . 1) s2_\markup { \italic \small  cresc. }
	s4\mf s4 \once \override TextScript #'extra-offset = #'(0 . 1) s4_\markup { \italic \small  dim. }
	s2.
	\once \override DynamicText #'extra-offset = #'(-1 . 2) s4\p s2\pp
	s2.
	\once \override DynamicText #'extra-offset = #'(1.5 . 1) s2.\ppp
     }
     
     
     \score {
       \context PianoStaff <<
  \set PianoStaff.instrumentName = \markup{ \fontsize #6 {"4."} \hspace #1.0 }
         \context Staff=upper \upper
         \context Dynamics=dynamics \dynamics
         \context Staff=lower <<
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
     
           \override VerticalAxisGroup #'minimum-Y-extent = #'(-5 . 5)
           \consists "Script_engraver"
           \consists "Dynamic_engraver"
           \consists "Text_engraver"
     
           \override TextScript #'font-size = #2
           \override TextScript #'font-shape = #'italic
           \override DynamicText #'extra-offset = #'(0.5 . 2)
           \override Hairpin #'extra-offset = #'(0 . 2.5)
     
           \consists "Skip_event_swallow_translator"
     
           \consists "Axis_group_engraver"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
           \override VerticalAlignment #'forced-distance = #5.7
         }
       }
     }
%{     \score {
       \context PianoStaff <<
         \context Staff=upper  \upper %\dynamics

         \context Staff=lower << \lower %\dynamics
	>>

       >>
       \midi {
	\context { \Score
	tempoWholesPerMinute = #(ly:make-moment 44 4)
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
