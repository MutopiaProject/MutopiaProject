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
       opus = "Opus 68 n°13"
       instrument = \markup \column {
	\line {"           Mai, cher Mai,-     " }
	\line {"Te voilà bientôt de retour!"} 
	}
       copyright = "Creative Commons Attribution-ShareAlike 2.5" 
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
        mutopiatitle = "Album pour la jeunesse - 13.Mai, cher Mai, ... "
       mutopiacomposer = "SchumannR"
       mutopiaopus = "O 68 n°13 "
       mutopiainstrument = "Piano"
       date = "1848"
       source = "Peters"
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       lastupdated = "2006/Jun/21"



 footer = "Mutopia-2007/02/11-662"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
     }
% Plutôt que de suivre l'édition Peters, révision d'A. Dörffel, j'ai créé 2 sections de repeat.
 
     upper = \relative c'' {
       \clef treble
       \key e \major
       \time 2/4
	\partial 8
	\override TextScript #'extra-offset = #'(-5 . 2)

	\repeat volta 2 { \tempo 4=52
	b16^\markup { \bold "Pas vite" }^.\( cis^.\)
	b\( gis'\) fis^.\( dis^.\) e\( b cis gis\)
	\grace { cis,[ fis] } b4\( a8\) cis16^.\( d!^.\)
	cis\( a'\) gis^.\( eis^.\) fis\( cis gis' fis\)
\break
	\grace { a,[ b] } e4\( dis8\) <fis, cis'>16_\( b\)
	b\( e\) <a, dis>^.\( cis^.\) b8 \grace dis <fis, cis'>16_\( b\)
	b\( e\) <a, dis>^.\( cis^.\) b8 <fis cis'>16_\( b\)
\break
	b\( b' ais gis <cis, fis> cisis dis b\)
     <fis b dis>8^.\( <e ais cis>^.\) <dis b'>\noBeam \grace { b'16[ dis] } <gis, cis>16_\( b\)
	<<{b^\( b' ais gis fis dis b e\)} \\{b4~ b8 gis}>>
	\tempo 4=46 <e ais dis>8^.\( <fis ais cis>^.\) <fis b>\noBeam
    }
\break
	\repeat volta 2 { \tempo 4=52
	\appoggiatura d'!8 <fis, cis'>16_\( b\)
	b^\( d! <eis, cis'> gis b a\) <<{e'!^\( d\) d^\( fis e b d[ cis\)]} \\{<a cis>8 ~ a16 s16 s4}>> <cis e>16^.\( <cis fis>^.\)
	<cis e>\( cis' b gis a cis, gis' fis\)
\break	
<<{e\arpeggio^\( dis\) cis^.^\( b^.\) b8\noBeam b16^.^\( cis^.\)} \\{a4\arpeggio b16_\( a\) gis_._\( fis_._\)}>>
	<gis b>\( gis'\) fis^.\( dis^.\) e\( b cis gis\)
	\grace { cis,[ fis] } b4\( a8\) cis16^.\( d!^.\)
\break
	cis\( a'\) gis^.\( eis^.\) fis\( cis gis' fis\)
	\grace { a,[ b] } e4\( dis8\) <fis, cis'>16_\( b\)
	b\( e\) <a, dis>^.\( cis^.\) b8 \grace dis <fis, cis'>16_\( b\)
\break
	b\( e\) <a, dis>^.\( cis^.\) b8 <fis cis'>16_\( b\)
	b\( gis' fis dis\) gis,\( e' dis bis\)
	e,_\( cis' b! gis a8\)\noBeam fis16_.\( e!_.\)
\break
	dis^>_\( fis\) a_.\( cis_.\) cis\( b\) cis^.\( fis^.\)
	\stemUp fis^\( b,\) cis^.^\( dis^.\) e8\noBeam <<{b'8 ~
	b8^\( \tempo 4=44 a16 gis fis\) cis^\( dis e\)
	\tempo 4=36 e8^\( dis e\)} \\{d!16_._\( e_.\) 
	e_\( d!\) cis b ais8 ais8 a!16_\( cis\) b_._\( a_.\) \tempo 4=20  a_\( \tempo 4=10 gis\)}>>
    }


     }
     
     lower = \relative c {
       \clef bass
       \key e \major
       \time 2/4
	\partial 8

	\repeat volta 2 {
	r8 \clef treble
	<<{gis''8^\( a gis eis\)} \\{e4. eis8}>> \clef bass
	r8 fis,16^.\( gis^.\) fis\( cis'\) r8 \clef treble
	<<{a'8\( b a a\)} \\{fis4. a8}>>
	r8 b,16_._\( cis_.\) b\( fis'\) <a, dis>8
	<gis e'>\noBeam a16_.\( cis_.\) dis\([ fis\)] <a, e'>_.\( dis_.\)
	<gis, e'>8\noBeam a16_.\( cis_.\) dis\([ fis\)] <a, e'>_.\( dis_.\)
	<<{e8^\( eis fis4\)} \\{gis,4_\( ais8 b16 dis\)}>> \clef bass
	fis,8^.\( fisis^.\) gis\noBeam <<{cis8\( ~ 
	cis cisis \stemDown \once \override Stem #'flag-style = #'no-flag dis\) s8} \\{eis,8 ~ 
	eis4_\( fis8[ gis16 cis,\)]}>>
	fis8^.\( <fis e'>^.\) <b dis>\noBeam 
     }

	\repeat volta 2 {
     \appoggiatura s8 <b d!>8 ~ % appogg. virtuelle pour synchroniser le midi
	<b d!>[ cis fis] \clef treble fis ~
	fis gis a <a, e'>16_._\( <a e'>_.\)
	<a e'>8^\( eis' <a, fis'> cis'\)
	<b, fis'>4._\( dis8\)
	<<{e8^\( a gis eis\)} \\{e4. eis8}>> \clef bass
	r8 fis,16^.\( gis^.\) fis\( cis'\) r8 \clef treble
	<<{a'8\( b a a\)} \\{fis4. a8}>>
	r8 b,16_._\( cis_.\) b\( fis'\) <a, dis>8
	<gis e'>\noBeam a16_.\( cis_.\) dis\([ fis\)] <a, e'>_.\( dis_.\)
	<gis, e'>8\noBeam a16_.\( cis_.\) dis\([ fis\)] <a, e'>_.\( dis_.\)
	<<{e8^\( bis cis fis\) 
	a,^\( <d! eis> <cis fis>\)} \\{gis2 a4.}>> \tieDown <a cis>8^\( ~
	<a b>\) <a dis>_._\( <gis e'>_.\) <a fis'>16_._\( <ais e'>_.\)
         <<{dis^>^\( fis\) a_._\( \change Staff=upper \stemDown cis_.\) cis[_\( b\)]} \\{\change Staff=lower \stemDown b,8._\( a16 gis8\noBeam\)}>> <gis e'>8 ~
	<gis e'>_\( a16 b cis8\) fis,16_\( fis'\)
	<<{b,8^\( fis' e\)} \\{b4_\( e8\)}>> 




}


     }
     
     dynamics = {

       s8\p
	s2*6
	s8\< s16\! s16 s16 s8\> s16\!
	s4. s8\f 
	s2 
	s4. %fin de la 1ère répétition
	\once \override DynamicText #'extra-offset = #'(0.1 . 3.5)
	s8\fp
	s16 s16\> s8 s16\! s16 s8\fp
	s16 s16\> s8 s16\! s16 s8
	s2*8
        \override Hairpin #'extra-offset = #'(0 . 2)
	s8\< s16 s16\! s8\> s16 s16\!
	s2*2
	s4. s8\fp
	s2
	s4. %fin de la 2ème répétition
     }
     
     \score {
       \context PianoStaff <<
	\set PianoStaff.connectArpeggios = ##t
	\override Score.MetronomeMark #'transparent = ##t
   \set PianoStaff.instrumentName = \markup{ \fontsize #6 {"13. "} \hspace #1.0
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
           \override VerticalAlignment #'forced-distance = #5.3
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
	tempoWholesPerMinute = #(ly:make-moment 52 4)
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

