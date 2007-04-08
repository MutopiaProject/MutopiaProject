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
       opus = "Opus 68 n°36"
       instrument = "Chant de marins italiens"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
      mutopiatitle = "Album pour la jeunesse - 36.Chant de marins italiens "
       mutopiacomposer = "SchumannR"
       mutopiaopus = "O 68 n°36 "
       mutopiainstrument = "Piano"
       date = "1848"
       source = "Peters"
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       lastupdated = "2006/Jun/25"



 footer = "Mutopia-2007/02/11-688"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
     }

     upper = \relative c'' {
       \clef treble
       \key g \minor
       \time 6/8
	\partial 8
	\override Script #'avoid-slur = #'inside
	\once \override TextScript #'extra-offset = #'(-5 . 2)
	\clef bass
	g,16.^\markup { \bold "Lent" }( cis32)
	cis4.~ cis4 g16.( cis32)
	cis4.~ cis4\fermata <a cis>8^.

	\repeat volta 2 {
	\once \override TextScript #'extra-offset = #'(0 . 1)
	<bes d>8^\markup { \bold "Rapide" }^. <a c!>^. <g bes>^. <fis a>^. <g bes>^. <a c>^.
	\appoggiatura c8 
	<g bes>4. \clef treble <c es>8_. <d f>_. <es g>_. 
	<d f>_. <c es>_. <bes d>_. <a c>_. <bes d>_. <c es>_.
	\appoggiatura es8 
	<bes d>4. <es g>8_. <f a>_. <g bes>_.
	\textSpannerDown
	\override TextSpanner #'padding = #1.9
	\override TextSpanner #'edge-text = #'("cresc.") 
	<f a>_.\startTextSpan <e! g>_. <d f>_. <cis e!>_. <d f>_. <e g>_. 
	<d f>_. <cis e!>_. d_. <e! g>_. <f a>_. <g bes>_. 
	<f a>_. <e! g>_. <d f>_. <cis e>_. <d f>_. <cis e>_.
      }
        \alternative {
	{d4.\stopTextSpan( d'8-|) r8 
	\clef bass <a, cis>^.}
	{\clef treble d4.( d'8-|) r8 <fis, a>_.}
     }
	<g bes>^. <a c>^. <bes d>^. <c es>^. <d f!>^. <es g>^.
	\appoggiatura <es g>8 
	<a, c>4.^^ <fis a>8_. <g bes>_. <a c>_. 
	<bes d>^. <c es>^. <d f!>^. <es g>^. <f a>^. <g bes>^.
	\appoggiatura <g bes>8
	<c, es>4.^^ <a c>8^. <bes d>^. <c es>^.
	<d f>^. <es g>^. <f as>^. <es g>^. <d f>^. <c es>^. 
	<b! d>^. <c es>^. <d f>^. <c es>^. <b! d>^. c^.
	\textSpannerDown
	\override TextSpanner #'padding = #1.9
	\override TextSpanner #'edge-text = #'("cresc.")
	<d f>^.\startTextSpan <es g>^. <f as>^. <es g>^. <d f>^. <c es>^. 
	<b! d>^. <c es>^. <d f>^. <c es>^. d^. c^.\stopTextSpan
	g'-5^. es-3^. d-2^. c-1^. g-2^._\markup { \italic "L.H." }  f-3^.
	es-3_.^\markup { \italic "R.H." }  d_. c_. es_. d_. <a cis>^> 
	\clef bass
	<bes d>8^. <a c!>^. <g bes>^. <fis a>^. <g bes>^. <a c>^.
	\appoggiatura c8 
	<g bes>4. \clef treble <c es>8_. <d f>_. <es g>_. 
	<d f>_. <c es>_. <bes d>_. <a c>_. <bes d>_. <c es>_.
	\appoggiatura es8 
	<bes d>4.^^ <as' c>8^.^> <bes d>^. <c es>^.
	\textSpannerDown
	\override TextSpanner #'padding = #0.8
	\override TextSpanner #'edge-text = #'("cresc.") 
	<bes d>^.\startTextSpan <a c>^. <g bes>^. <fis a>_. <g bes>_. <a c>_. 
	<g bes>_. <fis a>_. g_. <a c>^.^> <bes d>^. <c es>^. 
	<bes d>^. <a c>^. <g bes>^. <fis a>_. <g bes>_. <fis a>_. 
	g4.( g'8\stopTextSpan-|) r8 <fis, a>_.

	<g bes>^. <a c>^. <bes d>^. <c es>^. <d f!>^. <es g>^.
	\appoggiatura <es g>8 
	<a, c>4.^^ <fis a>8_. <g bes>_. <a c>_. 
	<bes d>^. <c es>^. <d f!>^. <es g>^. <f a>^. <g bes>^.
	\appoggiatura <g bes>8
	<c, es>4.^^ <a c>8^. <bes d>^. <c es>^. 
	<d f>^. <es g>^. <f as>^. <es g>^. <d f>^. <c es>^. 
	<b! d>^. <c es>^. <d f>^. <c es>^. <b! d>^. c^.
	\textSpannerDown
	\override TextSpanner #'padding = #1.9
	\override TextSpanner #'edge-text = #'("cresc.")
	<d f>^.\startTextSpan <es g>^. <f as>^. <es g>^. <d f>^. <c es>^. 
	<b! d>^. <c es>^. <d f>^. <c es>^. d^. c^.\stopTextSpan 
	g'-5^. es-3^. d-2^. c-1_. g-2_._\markup { \italic "L.H." }  f-3_.
	es-3_.^\markup { \italic "R.H." }  d_. c_. es_. d_. <a cis>^>
	\clef bass
	<bes d>8^. <a c!>^. <g bes>^. <fis a>^. <g bes>^. <a c>^.
	\appoggiatura c8 
	<g bes>4.
	\clef treble 
	<c es>8_. <d f>_. <es g>_. 
	<d f>_. <c es>_. <bes d>_. <a c>_. <bes d>_. <c es>_.
	\appoggiatura es8 
	<bes d>4.^^ <as' c>8^. <bes d>^. <c es>^.
	\textSpannerDown
	\override TextSpanner #'padding = #0.8
	\override TextSpanner #'edge-text = #'("cresc.") 
	<bes d>\startTextSpan^. <a! c>^. <g bes>^. <fis a>_. <g bes>_. <a c>_. 
	<g bes>_. <fis a>_. g_. <a c>^.^> <bes d>^. <c es>^. 
	<bes d>^. <a c>^. <g bes>^. <fis a>_. <g bes>_. <fis a>_. 
	g4.( g'8\stopTextSpan-|) r8\fermata 
	\clef bass
	\once \override TextScript #'extra-offset = #'(0 . 2.4)
	g,,16.^\markup { \bold \fontsize #0 "Plus lent" }( cis32)
	cis4.~ cis4 g16.( cis32)
	cis4.~ cis4\fermata \clef treble 
	\once \override TextScript #'extra-offset = #'(0 . 2)
	<a' cis>8^\markup { \bold \fontsize #0 "Rapide" }^. 
	<bes d>^. <a c>^. <g bes>^. <fis a>_. 
	\acciaccatura c'8 
	<g bes>_. <fis a>_. 
	g4.^^~ g4 r8 \bar "|."




  }
 
     lower = \relative c {
       \clef bass
       \key g \minor
       \time 6/8
	\partial 8
	\tempo 4. = 20
	g16.( cis32)
	cis4.~ cis4 g16.( cis32)
	cis4.~ cis4\fermata \tempo 4. = 104 cis8-.

	\repeat volta 2 {
	g_. d'_. d_. d,_. d'_. d_.
	g,_. d'_. d_. es,_. es'_. es_.
	f,_. f'_. f_. f,_. f'_. f_.
	bes,-. f'_. f_. g,_. g'_. g_.
	a,^. a'^. a^. a,^. a'^. a^.
	d,^. a'^. a^. g,^. g'^. g^.
	a,^. a'^. a^. a,^. a'^. a^.
    }
	\alternative {
	{d,4.( d,8-|) r8 cis'_.}
	{d4.( d,8-|) r8 d'^.}
      }

	g8^. d'^. d^. c,^.c'^. c^.
	d,^. d'^. d^. d,^. d'^. d^.
	g,^. g'^.g^. es,^. es'^. es^.
	f,^. f'^. f^. f,^. f'^. f^.
	\clef treble
	bes,_. bes'_. bes_. es,_. bes'_. bes_.
	g,_. g'_. g_. c,_. g'_. g_.
	bes,_. bes'_. bes_. es,_. bes'_. bes_.
	g,_. g'_. g_. c,_. r8 r8
	r2.
	\clef bass
	r4 r8 r4 \stemDown cis,8^> \stemNeutral
	r8 d_. d_. d,_. d'_. d_.
	g,_. d'_. d_. es,_. es'_. es_.
	f,_. f'_. f_. f,_. f'_. f_.
	bes,^. f'^. f^. c^. c'^. c^.
	d,^. d'^. d^. d,^. d'^. d^.
	g,^. d'^. d^. c,^. c'^. c^.
	d,^. d'^. d^. d,^. d'^. d^.
	g,4.( g,8-|) r8 d'^.
	g8^. d'^. d^. c,^.c'^. c^.
	d,^. d'^. d^. d,^. d'^. d^.
	g,^. g'^.g^. es,^. es'^. es^.
	f,^. f'^. f^. f,^. f'^. f^.
	\clef treble
	bes,_. bes'_. bes_. es,_. bes'_. bes_.
	g,_. g'_. g_. c,_. g'_. g_.
	bes,_. bes'_. bes_. es,_. bes'_. bes_.
	g,_. g'_. g_. c,_. r8 r8
	r2.
	\clef bass
	r4 r8 r4 \stemDown cis,8^> \stemNeutral
	r8 d_. d_. d,_. d'_. d_.
	g,_. d'_. d_. es,_. es'_. es_.
	f,_. f'_. f_. f,_. f'_. f_.
	bes,^. f'^. f^. c^. c'^. c^.
	d,^. d'^. d^. d,^. d'^. d^.
	g,^. d'^. d^. c,^. c'^. c^.
	d,^. d'^. d^. d,^. d'^. d^.
	g,4.( g,8-|) \tempo 4. = 10 r8\fermata 
	\tempo 4. = 36
	g16.( cis32)
	cis4.~ cis4 g16.( cis32)
	cis4.~ cis4\fermata
	\tempo 4. = 110 cis8-._>
	d,_. d'_. d_. d,_. d'_. d_.
	g,4.^^~ g4 r8
	\bar "|."


  }
     
     dynamics = {

       s8\f
	s2 s8 s8\pp
	s2 s8 s8\fp
	s2.
	s2.\sf
	s2.
        \once \override DynamicText #'extra-offset = #'(0 . 6)
	s2.^\sf
	s2.
	s2.
	s2.
	s4. s8\sfz s8 s8\p
	% pour l'alternative:
	s4. s8\sfz s8 s8\p
	s2.
	s2.
	s2.
	s2.*3
	s2.
	s2.
	s2.\sfz
	s2.
	s2.\p
	s2.\sf
	s2.
        \once\override DynamicText #'extra-offset = #'(-0.3 . 6)
	s4.^\sf s4.\fp
	s2.
	s4. s4.\fp
	s2.
	s4. s8\sfz s8 s8\p
	s2.
	s2.
	s2.
	s2.*3
	s2.
	s2.
	s4.\sfz s4.
	s2.
	s2.\p
	s2.\sf
	s2.
        \once \override DynamicText #'extra-offset = #'(-0.3 . 6)
	s4.^\sf s4.\fp
	s2.
	s4. s4.\fp
	s2.
	s4. s8\sfz s8 s8\f
	s4. s4 s8\pp
	s4. s8 s8 s8\f
	s2.
	s2.  \bar "|." 
     }
     
     pedal = { s8  s2.\sustainDown s4. s4\sustainUp  s8 
	%s2.*49  s2.\sustainDown s4. s4\sustainUp  s8   s2.*2 (supprimé à cause de la mise en page)
  }
     
     \score {
       \context PianoStaff <<
	\override Score.MetronomeMark #'transparent = ##t
   \set PianoStaff.instrumentName = \markup{ \fontsize #6 {"36. "} \hspace #1.0 }
         \context Staff=upper \upper
         \context Dynamics=dynamics \dynamics
         \context Staff=lower <<
           \clef bass
           \lower
         >>
         \context Dynamics=pedal \pedal
       >>
       \layout {
	ragged-last = ##f
         \context {
           \type "Engraver_group"
           \name Dynamics
           \alias Voice % So that \cresc works, for example.
           \consists "Output_property_engraver"
     
           \override VerticalAxisGroup #'minimum-Y-extent = #'(-5 . 5)
           pedalSustainStrings = #'("Ped." "*Ped." "*")
           pedalUnaCordaStrings = #'("una corda" "" "tre corde")
     
           \consists "Piano_pedal_engraver"
           \consists "Script_engraver"
           \consists "Dynamic_engraver"
           \consists "Text_engraver"
     
           \override TextScript #'font-size = #2
           \override TextScript #'font-shape = #'italic
           \override DynamicText #'extra-offset = #'(0.6 . 2.2)
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
         \context Dynamics=pedal \pedal
       >>
       \midi {
	\context { \Score
	tempoWholesPerMinute = #(ly:make-moment 60 4)
	     }


         \context {
           \type "Performer_group"
           \name Dynamics
           \consists "Piano_pedal_performer"
         }
	
         \context {
           \PianoStaff
           \accepts Dynamics
         }
       }
     }

