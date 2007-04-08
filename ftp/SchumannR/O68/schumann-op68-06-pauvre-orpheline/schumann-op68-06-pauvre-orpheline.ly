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
       opus = "Opus 68 n°6"
       instrument = "Pauvre orpheline."
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
      mutopiatitle = "Album pour la jeunesse - 6.Pauvre orpheline "
       mutopiacomposer = "SchumannR"
       mutopiaopus = "O 68 n°6 "
       mutopiainstrument = "Piano"
       date = "1848"
       source = "Peters"
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       lastupdated = "2006/Jun/20"



 footer = "Mutopia-2007/02/11-687"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
     }

     upper = \relative c'' {
       \clef treble
       \key a \minor
       \time 2/4
	\partial 8

	\once \override TextScript #'extra-offset = #'(0 . 2.5)
	a16^\markup { \bold "Lent" }_\( b^\)
	<a c>8[_.^\( <gis b>_. a_.\)] a16_\( b\)
	<a c>8[^.^\( <b d>^. <c e>^.\)] e16.\( f32
	<e g>4 <d f>
	b4.\) a16_\( b\)
\break
	<a c>8[_.^\( <gis b>_. a_.\)] a16_\( b\)
	<a c>8[^.^\( <b d>^. <c e>^.\)] e16.\( f32
	<e g>4 <d f>\)
	<<{b8.^\( c16 a8\)} \\{gis4 a8}>> \bar "|:"
	\repeat volta 2 {
	<e gis>16 <e a>
	<e b'>8[_.^\( <e c'>_. <e d'>_. f'_.\)]
	\stemUp e_.^\( <e, c'>_.\) <e b'>\noBeam \tempo 4=36 <e gis>16 <e a>
\break
	\once \override TextScript #'extra-offset = #'(-5 . 0)
	\tempo 4=32
	<e b'>8^\markup { \small \fontsize #0 "Plus" \small \fontsize #0 "lentement" }[_.^\( <e c'>_. <e d'>_. <a f'>_.\)]
	<gis b>4. 
	\tempo 4=40
	\once \override TextScript #'extra-offset = #'(0 . 1.5) <e a>16^\markup { \small \fontsize #0 "Au" \small \fontsize #0 "Tempo" }_\( <gis b>\)
	<a c>8[_.^\( <gis b>_. a_.\)] a16_\( b\)
	\stemDown <a c>8[^.^\( <b d>^. <c e>^.\)] e16\( f
	<e g>4 <d f>
\break
	b4.\) \stemUp a16_\( b\)
	<a c>8[_.^\( <gis b>_. a_.\)] a16_\( b\)
	\stemDown <a c>8[^.^\( <b d>^. <c e>^.\)] e16\( f
	<e g>4 <d f>\)
	<<{b8.^\( c16 a8\)} \\{gis4 a8}>>
     } 
 }
     
     lower = \relative c {
       \clef bass
       \key a \minor
       \time 2/4
	\override Staff.NoteCollision #'merge-differently-dotted = ##t
	\partial 8

	r8
	<a' e'>[^.^\( <e d'>^. <a c>^.^\)] r8
	<a e'>[^.^\( <g! g'!>^. <c g'>^.\)] r8 \clef treble
	<<{c'4^\( b8. a16 gis4.\)} \\{c,4 d e4.}>> b'8\rest
	\clef bass <a, e'>[^.^\( <e d'>^. <a c>^.^\)] r8
	<a e'>[^.^\( <g! g'!>^. <c g'>^.\)] r8 \clef treble
	<<{c'4^\( b8. a16\) e8.^\( d16 c8\)} \\{c4 d e4 a,8}>> \bar "|:"
	\repeat volta 2 {
	\clef bass e16 fis
	gis8[^.^\( a^. b^. <d e>^.\)]
	<c e>^.^\( <a c>^.\) <gis b>\noBeam e16 fis
    gis8[^.^\( a^. b^.\)] <<{e8 s2} \\{c16_\( d \tieUp e4\)^\( ~ e16 d c b\)}>>
	a8[^.^\( <e d'>^. <a c>^.^\)] r8
	<a e'>[^.^\( <g! g'!>^. <c g'>^.\)] r8 \clef treble
	<<{c'4^\( b8. a16 gis4.\)} \\{c,4 d e4.}>> b'8\rest
	\clef bass <a, e'>[^.^\( <e d'>^. <a c>^.^\)] r8
	<a e'>[^.^\( <g! g'!>^. <c g'>^.\)] r8 \clef treble
	<<{c'4^\( b8. a16\) e8.^\( d16 c8\)} \\{c4 d e4 a,8}>>
     }
 }
     
     dynamics = {

       s8\p
	s2
	s4. s16\< s16
	s16\! s16 s8 s8\> s8
	s16\! s16 s4.
	s2
	s4. s16\< s16
	s16\! s8 s8\> s8 s16\!
	s16 s16\> s8 s8\! %\bar "||"
	s8
	s2*2
	s16 \once\override Hairpin #'extra-offset = #'(0 . 3.1)s16\< s8 s16 s16\! s8
	s16 \once\override Hairpin #'extra-offset = #'(0 . 3.1)s16\> s8 s16 s16\! s8
	s2
	s4. s16\< s16
	s8\! s8 s8\> s8
	s8\! s4.
	s2
	s4. s16\< s16
	s8\! s8 s8\> s16 s16\!
	s16 s16\> s8 s8\! %reprise   
     }
     
     \score {
       \context PianoStaff <<
	\override Score.MetronomeMark #'transparent = ##t
   \set PianoStaff.instrumentName = \markup{ \fontsize #6 {"6. "} \hspace #1.0
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
           \override VerticalAlignment #'forced-distance = #6
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
	tempoWholesPerMinute = #(ly:make-moment 80 8)
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
