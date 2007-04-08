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
       opus = "Opus 16 n°2"
       instrument = "N°2"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
       mutopiatitle = "Préludes opus 16 - 2. "
       mutopiacomposer = "ScriabinA"
       mutopiaopus = "O 16 n°2"
       mutopiainstrument = "Piano"
       date = "composer's dates"
       source = "M.P.Belaïeff, Leipzig. 1897"
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       lastupdated = "2006/May/01"


 footer = "Mutopia-2007/02/17-760"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
    }

		% il y a un fichier MIDI séparé (synchronisation)
    
     upper = \relative c'' {
       \clef treble
       \key gis \minor
       \time 2/4
       
	\override Score.MetronomeMark #'extra-offset = #'(3 . 3) \tempo4 = 80
	\once \override TextScript #'extra-offset = #'(-7 . 0.2)
  <b dis>4^\(^\markup { \bold  "Allegro" } ~ \times 4/5 {<b dis>16 <b e>^. <b dis>^. <b dis>^. <dis gis>^.}
  	\override TupletNumber #'transparent = ##t
	<gis, cis>2\)
  <fisis b>4^\( ~ \times 4/5 {<fisis b>16 <fisis cis'>_. <fisis b>_. <fisis b>_. <ais dis>_. }
	<dis, gis>2\)
\break %mes
        <dis gis>4^\( ~ \times 4/5 {<dis gis>16 <dis ais'> <dis gis> <dis gis> <dis b'>\) }
	<dis fis>4^\( ~ \times 4/5 {<dis fis>16 <dis gis> <dis fis> <dis fis> <dis ais'>\) }
	<< { \override TupletNumber #'transparent = ##t
	\times 4/5 {eis16^\( fis eis ais gis} \times 4/5 {fis16 gis fis e! fis}
	dis2\) } 
	\\{ dis4 cisis
	dis2 } >>
\break %mes
	<e' gis>4^\( ~ \times 4/5 {<e gis>16 <e a!>^. <e gis>^. <e gis>^. <gis cis>^. }
	<cis, fis>2\)
	<bis e>4^\( ~ \times 4/5 {<bis e>16 <bis fis'>^. <bis e>^. <bis e>^. <dis gis>^. }
	<gis, cis>2\)
\break %mes
	<gis cis>4^\( ~ \times 4/5 {<gis cis>16 <gis dis'> <gis cis> <gis cis> <gis e'>\) }
    <gis b>4^\( ~ \times 4/5 {<gis b>16 <gis cis> <gis b> <gis b> <gis dis'>\) }
    
	\voiceOne << { 
	\times 4/5 {ais16^\( b ais dis cis} \times 4/5 {b16 cis b ais b}
	gis2\)
\break %mes
	a!4^\( ~ \times 4/5 {a16 b a a cis}
	cis4 b\)
	b ~ b8 a!
	<a, b eis a!>8 <a b fis' a> ~ <a b fis' a> <gis b e gis>
\break %mes
	b'4^\( ~ \times 4/5 {b16 cis b b fis'}
 } % fin 1ère voix
 	\context Voice = "1" { \voiceTwo 
	gis,4 fisis
	gis2
	<a,! cis>2
	<a! e'>4 <a dis>
	<a b dis>8[ <a b e>] <a b eis>[ <a b eis>]
	s2
	<gis d'! gis>2
	\oneVoice
	 } >>
	<d'! gis fis'>4 <d gis e'>\)	
	<cis a' cis e>\arpeggio <cis gis' cis e>\arpeggio
	<cis fisis cis' e>\arpeggio ~ <cis fisis cis' e>8 <dis dis'>
\break %mes
	<dis b' dis>4^\( ~ \times 4/5 {<dis b' dis>16 <e b' e> <dis b' dis> <dis b' dis> <gis dis' gis>}
	<cis, gis' cis>2\)
	<b fisis' b>4^\( ~ \times 4/5 {<b fisis' b>16 <cis fis cis'> <b fisis' b> <b fisis' b> <dis ais' dis>}
	<gis, dis' gis>2\)
\break %mes
	<gis dis' gis>4^\( ~ \times 4/5 {<gis dis' gis>16 <ais dis ais'> <gis dis' gis> <gis dis' gis> <b dis b'>\)}
	<ais e' gis ais>4^\( ~ \times 4/5 {<ais e' gis ais>16 <b e gis b> <ais e' gis ais> <ais e' gis ais> <cis e gis cis>\)}
	\times 4/5 {<bis gis' bis>16^\( <cis gis' cis> <bis gis' bis> <bis gis' bis> <dis gis dis'>} \times 4/5 {<cis gis' cis>16 <dis gis dis'> <cis gis' cis> <cis gis' cis> <e gis e'>}
	<dis ais' dis>2\)
\break %mes
	r8 <dis gis dis'>8^.^\( <fisis dis' fisis>^. <gis e' gis>^.\)
	<b e b'>2
	<b e gis b>
	<b e fisis b>
	<b dis gis b> ~
	<b dis gis b> \bar "|."
}

     lower = \relative c' {
       \clef bass
       \key gis \minor
       \time 2/4 
	\clef treble
	
	gis'4_\( ~ gis16 fisis gis b,
	e2\)
	dis4_\( ~ dis16 e dis fisis,
	b2\) \clef bass
	b4^\( ~ b16 ais b gis\)
	ais4^\( ~ ais16 b ais fis\)
	\times 2/3 {gis8\( cis b} \times 2/3 {ais gis ais}
	dis2\) \clef treble
	cis'4_\( ~ cis16 bis cis e,
	a!2\)
	gis4_\( ~ gis16 a! gis bis,
	e2\)
	e4_\( ~ e16 dis e cis\)
	dis4_\( ~ dis16 e dis b\)
	\times 2/3 {cis8\( fis e} \times 2/3 {dis8 cis dis}
	gis2\) \clef bass
	<fis,, fis'>8 <eis eis'> <fis fis'> <cis cis'>
	<fis fis'>8 <eis eis'> <fis fis'> <b, b'>
	<b b'>8[ ~ \times 2/3 {<b b'>16 <bis bis'> r32 <cis cis'>32]} <cis cis'>8 <d! d'!>
	<d! d'>8 <dis dis'> ~ <dis dis'> <e e'>
	<e e'> <dis dis'> <e e'> <b b'>
	<e e'> <dis dis'> <e e'> <e, e'>
	<a! a'! e'>4\arpeggio <a'! e' a! cis>\arpeggio
	<dis,, dis' ais' fisis' cis'>\arpeggio ~ <dis dis' ais' fisis' cis'>8 r8
	\override TupletNumber #'transparent = ##t
	<gis' gis'>4_\( ~ \times 4/5 {<gis gis'>16 <fisis fisis'> <gis gis'> <gis gis'> <b, b'>}
	<e e'>2\)
	<dis dis'>4_\( ~ \times 4/5 {<dis dis'>16 <e e'> <dis dis'> <dis dis'> <fisis, fisis'>}
	<b b'>2\)
	<b b'>4_\( ~ \times 4/5 {<b b'>16 <ais ais'> <b b'> <b b'> <gis gis'>\)}
	<cis cis'>4_\( ~ \times 4/5 {<cis cis'>16 <b b'> <cis cis'> <cis cis'> <ais ais'>\)}
	\times 4/5 {<dis dis'>16_\( <e e'> <dis dis'> <dis dis'> <fis fis'>} \times 4/5 {<e e'> <fis fis'>16 <e e'> <e e'> <cis cis'>}
	<fisis fisis'>2\)
	r8 <gis dis' b'>8_. <ais dis cis'>_. <b e cisis'>_.
	<gis' cisis e gis>2
	\grace { <dis, dis'>16[ <b' b'>] } <gis' cis e gis>2
	\grace { <dis, dis'>16[ <b' b'>] } <fisis' cis' e fisis>2
	\grace { <gis,, gis'>16[ <dis'' dis'>] } <gis b dis gis>2 ~
	<gis b dis gis>2

     }
     
     dynamics = {

       s2\pp
	s2*3
	s4 s8 \once \override TextScript #'extra-offset = #'(-0.5 . 1.8) s8_\markup { \italic \small "cresc." }
	s2
	s8 \once \override TextScript #'extra-offset = #'(-0.5 . 2.2) s8_\markup { \italic \small "dim." } s4
	s2
	s2\pp
	s2*3
	s4 \once\override Hairpin #'extra-offset = #'(0 . 2.3) s4\<
	s4 s8 s8\!
	\once\override Hairpin #'extra-offset = #'(0 . 2.3) s2\>
	s2\!
	\once \override DynamicText #'extra-offset = #'(-1.8 . 2) s2\p
	s2*2
	\once \override DynamicText #'extra-offset = #'(0.1 . 2) s8\f \once\override Hairpin #'extra-offset = #'(0 . 1.5) s8\> s8 s8\!
	\once \override DynamicText #'extra-offset = #'(-1.8 . 2) s2\p
	s2*3
	s2\ff
	s2*2
	\once \override DynamicText #'extra-offset = #'(0.1 . 1) s2\p
	\once\override Hairpin #'extra-offset = #'(0 . 2.3) s8\< s8 s8 s16 \once \override DynamicText #'extra-offset = #'(0.1 . 2) s16\f\!
	\once \override DynamicText #'extra-offset = #'(0.1 . 2) \once\override Hairpin #'extra-offset = #'(0 . 2.3) s8\p\< s8 s8 s16 \once \override DynamicText #'extra-offset = #'(0.1 . 2) s16\f\!
	\once \override DynamicText #'extra-offset = #'(0.1 . 2) \once\override Hairpin #'extra-offset = #'(0 . 2.3) s8\mf\< s8 s8 s16 s16\!
	\once \override DynamicText #'extra-offset = #'(0.5 . 2.5)s2\ff
	s2\ff
	\once \override DynamicText #'extra-offset = #'(0.5 . 4) s2\sff
	\once \override DynamicText #'extra-offset = #'(0.5 . 4) s2\fff
	s2*3
     }
     
     \score {
       \context PianoStaff <<
  \set PianoStaff.instrumentName = \markup{ \fontsize #6 {"2."} \hspace #1.0 }
	\set PianoStaff.connectArpeggios = ##t
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
           \override DynamicText #'extra-offset = #'(0 . 2.5)
           \override Hairpin #'extra-offset = #'(0 . 2.5)
     
           \consists "Skip_event_swallow_translator"
     
           \consists "Axis_group_engraver"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
           \override VerticalAlignment #'forced-distance = #6.2
         }
       }
     }
     
%   {
     \score {
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
     %  }
