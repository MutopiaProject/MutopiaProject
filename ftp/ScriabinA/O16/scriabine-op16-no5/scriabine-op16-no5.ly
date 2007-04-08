 \version "2.10.16"

 \paper { between-system-padding = #1
	ragged-bottom=##f
	ragged-last-bottom=##f
	bottom-margin= 1\cm
	foot-separation= 1\cm
	after-title-space= 1\cm
	}
 
     \header {
       title = "Cinq Préludes "
       subtitle = "Opus 16"
       subsubtitle = "-----"
       composer = "A. Scriabin (1872-1915)"
       opus = "Opus 16 n°5"
       instrument = "N°5"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
       mutopiatitle = "Préludes opus 16 - 5. "
       mutopiacomposer = "ScriabinA"
       mutopiaopus = "O 16 n°5"
       mutopiainstrument = "Piano"
       date = "composer's dates"
       source = "M.P.Belaïeff, Leipzig. 1897"
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       lastupdated = "2006/May/01"



 footer = "Mutopia-2007/02/17-763"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
     }

     upper = \relative c'' {
       \clef treble
       \key fis \major
       \time 3/8

	\override Staff.NoteCollision #'merge-differently-dotted = ##t
	\override PhrasingSlur #'extra-offset = #'(0 . 1.9)
	\override Score.MetronomeMark #'extra-offset = #'(5.5 . 5)
	\tempo 8=126
	\voiceOne
	<< { \once \override TextScript #'extra-offset = #'(-7 . 2)
	cis,8.^\markup { \bold "Allegretto" }^\( dis16^- gis^- ais^- |
	b8. cis16 cisis dis |
	ais' gis dis b ais gis |
	eis fis gis fis dis'\) b32\rest dis,32^\( |
\break
	cis8.^. dis16^- gis^- ais^- |
	b8. cis16 cisis dis |
	ais' gis dis b ais gis |
	eis fis ais cis <fis, fis'>8\) |
\break
	fis8.^\( gis16 cis dis |
	fis,8. gis16 cis dis |
	cis4. |
	cis16 b ais gis fis dis |
\break
	cis8.^. dis16^- gis^- ais^- |
	b8. cis16 cisis dis |
	ais' gis dis b ais gis |
	eis fis ais cis <fis, fis'>8\) |
\break
	fis8.^\( gis16 cis dis |
	fis,8. gis16 cis dis |
	cis4. |
	cis16 b ais gis fis dis |
\break
	cis8.^. dis16^- gis^- ais^- |
	b8. cis16 cisis dis |
	ais' gis dis b ais gis |
	eis fis ais cis <fis, fis'>8\) | \bar "|."
     } % fin 1ère voix

     \context Voice = "1" { \voiceTwo
	e,16\rest eis16 ~ <eis b'>4 |
	c'16\rest cis16 ~ <cis eis>4 |
	e8\rest e8\rest <b eis>8 |
	ais4 s8 |
	e16\rest eis16 ~ <eis b'>4 |
	c'16\rest cis16 ~ <cis eis>4 |
	e8\rest e8\rest <b eis>8 |
	ais4 s8 |
	a16\rest ais16 ~ <ais e'!>4 |
	a16\rest ais16 ~ <ais e'!>4 |
	cis'16 fis, dis fis, dis' fis |
	s4. |
	e,16\rest eis16 ~ <eis b'>4 |
	c'16\rest cis16 ~ <cis eis>4 |
	e8\rest e8\rest <b eis>8 |
	ais4 s8 |
	a16\rest ais16 ~ <ais e'!>4 |
	a16\rest ais16 ~ <ais e'!>4 |
	cis'16 fis, dis fis, dis' fis |
	s4. |
	e,16\rest eis16 ~ <eis b'>4 |
	c'16\rest cis16 ~ <cis eis>4 |
	e8\rest e8\rest <b eis>8 |
	ais4 s8 |
	\oneVoice
	}
	>>




     }
     
     lower = \relative c {
       \clef bass
       \key fis \major
       \time 3/8

	cis,8 gis' eis' |
	gis cis, b' |
	\clef treble dis'4 \clef bass <cis,, cis'>8 |
	<fis cis'>4 <bis, gis'>8 |
	cis,8 gis' eis' |
	gis cis, b' |
	\clef treble dis'4 \clef bass <cis,, cis'>8 |
	<fis cis'>8. cis16 <fis, ais'>8 |
	fis8 cis' ais' |
	fis,8 cis' ais' |
	b,, b' fis' |
	\times 3/4 {gis,,8 gis' fis' b} |
	cis,,8 gis' eis' |
	gis cis, b' |
	\clef treble dis'4 \clef bass <cis,, cis'>8 |
	<fis cis'>8. cis16 <fis, ais'>8 |
	fis8 cis' ais' |
	fis,8 cis' ais' |
	b,, b' fis' |
	\times 3/4 {gis,,8 gis' fis' b} |
	cis,,8 gis' eis' |
	gis cis, b' |
	\clef treble dis'4 \clef bass <cis,, cis'>8 |
	<fis cis'>8. cis16 <fis, ais'>8 |


     }
     
     dynamics = {

	\once \override DynamicText #'extra-offset = #'(-3 . 3)
       s8\mf \once \override TextScript #'extra-offset = #'(-3.5 . -1) s8_\markup { \italic \small rubato } s8
       s8 s8\> s16 s16\!
	s4.\pp
	s4.*2
	s8 s8\> s16 s16\!
	s4.\pp
	s4.
	s8 \once \override TextScript #'extra-offset = #'(2.5 . 1.8) s4_\markup { \italic \small cresc. }
	s4.
	\once \override DynamicText #'extra-offset = #'(0 . -0.5)
	s4.\f
	s4.
	\once \override DynamicText #'extra-offset = #'(-3 . 3)
	s4.\mf
	s8\> s8 s16 s16\!
	s4.\pp
	s4.
	s8 \once \override TextScript #'extra-offset = #'(2.5 . 1.8) s4_\markup { \italic \small cresc. }
	s4.
	\once \override DynamicText #'extra-offset = #'(0 . -0.5)
	s4.\f
	s16\> s16 s8 s16 s16\!
	s4 \once \override TextScript #'extra-offset = #'(-1.5 . 1.6) s16_\markup { \italic \small  dim. } s16\> 
	s4 s16 s16\!
	s4.\pp
	s4. 
     }
     
     
     \score {
       \context PianoStaff <<
  \set PianoStaff.instrumentName = \markup{ \fontsize #6 {"5."} \hspace #1.0 }
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
           \override DynamicText #'extra-offset = #'(0.5 . 2.2)
           \override Hairpin #'extra-offset = #'(0 . 1.8)
     
           \consists "Skip_event_swallow_translator"
     
           \consists "Axis_group_engraver"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
           \override VerticalAlignment #'forced-distance = #7
         }
       }
     }
     \score {
       \context PianoStaff <<
         \context Staff=upper  \upper %\dynamics

         \context Staff=lower << \lower %\dynamics
	>>

       >>
       \midi {
	\context { \Score
	tempoWholesPerMinute = #(ly:make-moment 126 8)
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
