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
       opus = "Opus 68 n°16"
       instrument = "Premier chagrin"
       copyright = "Creative Commons Attribution-ShareAlike 2.5" 
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
        mutopiatitle = "Album pour la jeunesse - 16.Premier chagrin "
       mutopiacomposer = "SchumannR"
       mutopiaopus = "O 68 n°16 "
       mutopiainstrument = "Piano"
       date = "1848"
       source = "Peters"
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       lastupdated = "2006/Jun/25"


 footer = "Mutopia-2007/02/11-676"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
     }

     upper = \relative c'' {
       \clef treble
       \key e \minor
       \time 2/4
	\partial 8
	\override TextScript #'extra-offset = #'(-2 . 2)	

	g'8(^\markup { \bold "Pas vite" }
	fis[ e dis e]
	b4.) e8(
	c4.) e8(
	b4.) b8(
	c)[ c( b a]
	g)[ g( fis e)]
	dis4.( e8\break
	<dis fis>4.) g'8(\noBeam
	fis[ e dis e]
	b4.) e8(
	c4.) e8(
	b4.) b8(
	c)[ c( b a]
	g)[ g( fis e)]\break 
	dis4.( fis8
	e4) r8 \bar "|:"

	\repeat volta 2 {
	\partial 8
	\textSpannerDown
	\override TextSpanner #'padding = #1.9
	\override TextSpanner #'edge-text = #'("cresc.")
	e'8( 
	d[\startTextSpan c b\stopTextSpan  c]
	a[ <f! b> <e c'>)] \tempo 4=66  e'8(\noBeam
	\override TextScript #'extra-offset = #'(-4.5 . -0.3) 
	d[^\markup{ \fontsize #0  "Un peu plus lent" } c b c]
	e,[ <dis fis> <e g>)] r8\break
	\override TextScript #'extra-offset = #'(-4 . -8)
	r4^\markup{ \fontsize #0  "Au tempo" } r8 

	\voiceOne
	<< { s8 
	s2
	s4.
	s8
	s4. g'8\noBeam(
	fis8[ e dis e] 
}
	\context Voice = "1" { \voiceTwo
	\slurUp
	g8(
	fis[ e dis e]
	d![ c b c]
	b[ a g  a8])
	\set followVoice = ##t
	\change Staff=lower
	g2
	\oneVoice
	}
	>>

	b4.) e8(\break
	c4.) e8(
	b4.) e,8-|
	<e d'>^> <e c'>^> b'8\rest e,-|
	\slurUp
    <dis c'>^> <e b'>^> <c fis a>^.( <cis e g>^.)
	<b e g>4 <a b dis fis>
	<g b e>4 b'8\rest 
	} 
     }
     
     lower = \relative c'' {
       \clef bass
       \key e \minor
       \time 2/4
	\partial 8

	r8
	R2
	\tieUp
	\slurUp
	\clef treble
	r8 g ~ <e g>4
	r8 a ~ <e a>4
	r8 g ~ <e g>4
	\slurDown
	r8 fis([ dis fis)]
	\clef bass
	\slurUp 
	r8 e([ a, ais)]
	r8 ais( b4) ~
	b8[ b b,] r8
	R2
	\clef treble
	r8 g'' ~ <e g>4
	r8 a ~ <e a>4
	r8 g ~ <e g>4
	\slurDown
	r8 fis([ dis fis)]
	\clef bass
	\slurUp 
	r8 e([ a, ais)]
	r8 ais([ b a]
	<e g>)\noBeam \slurDown e[( e,)] \bar "|:"
	

	\repeat volta 2 {
	\slurUp \partial 8
	r8
	r4 r8 e''(
	f![ d c)] r8
	r4 r8 a(
	c[ a e)] \clef treble \tempo 4=74 g'(
	\voiceOne
	<< { fis[ e dis e]
	b4.) g'8\noBeam(
	fis[ e dis e]
	d![ c b dis)]
      }
	\context Voice = "1" { \voiceTwo
	c2
	b
	a ~
	a4 b
	e2
	\oneVoice
	}
	>>	
	b'8\rest g ~ <e g>4
	b'8\rest a ~ <e a>4
	b'8\rest g ~ <e g>8 b'8\rest
	\clef bass
	<gis, b>_> <a c>_> d,8\rest e-|
	\slurDown
	<fis a>_> <g b>_> a,( ais)
	b4 b ~
	b8 e[( e,)]
      
	}
     }
     
     dynamics = {
       
	\partial 8 
       s8\fp
	s2*7
	s4. s8\fp
	s2*7
	s4 s8 \bar "|:"
	s8
	s2*2
	s4 s8 \once\override Hairpin #'extra-offset = #'(0 . 2.3) s8\>
	s4 s8\! s8
	s2*2
	s4 s8 s8\>
	s4  s4\!
	s2*3
	s4. s8\f
	s8\f s4.
	s8\f s8 s4\>
	s8 s8 s8\! s8
	s4 s8
     }
     
     \score {
       \context PianoStaff <<
	\override Score.MetronomeMark #'transparent = ##t
   \set PianoStaff.instrumentName = \markup{ \fontsize #6 {"16. "} \hspace #1.0
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
           \override Hairpin #'extra-offset = #'(0 . 1.8)
     
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
	tempoWholesPerMinute = #(ly:make-moment 74 4)
	     }

         \context {
          \type "Performer_group"
           \name Dynamics
         }
       }
     }

