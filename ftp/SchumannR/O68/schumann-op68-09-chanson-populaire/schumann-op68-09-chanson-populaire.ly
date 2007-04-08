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
       opus = "Opus 68 n°9"
       instrument = "Chanson populaire"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
      mutopiatitle = "Album pour la jeunesse - 9.Chanson populaire "
       mutopiacomposer = "SchumannR"
       mutopiaopus = "O 68 n°9 "
       mutopiainstrument = "Piano"
       date = "1848"
       source = "Peters"
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       lastupdated = "2006/Jun/20"



 
 footer = "Mutopia-2007/02/11-675"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
     }


     upper = \relative c'' {
       \clef treble
       \key d \minor
       \time 4/4
	\tempo 4=60	
	\override TextScript #'extra-offset = #'(-2 . 2)
	a4(^\markup { \bold "Sur un ton plaintif." } d e2\espressivo) |
	f4( g e2\espressivo) |
	\acciaccatura {\slurUp
	a,8} a'4( <cis, g'> <g e'> <f d'>) |
	<g_. bes>( <d_. g>) <e a>2 |
	a4( d e2\espressivo) |
\break %mes6
	f4( g e2\espressivo) |
	\acciaccatura {\slurUp
	a,8} a'4( <cis, g'> <g e'> <f d'>) |
	<bes-. d e> <a-. cis f> <a d>2 |

	\bar "||"

	\tempo 4=108
	\voiceOne
	<< {
	\acciaccatura {\slurUp a8 }
	\stemDown a'16-.[r32 fis( d8)] \stemUp d4 e2 |
	\acciaccatura {\slurUp a,8 }
	\stemDown a'16-.[ r32 fis( d8)] \stemUp d4 s2 |
	}
	\context Voice = "1" { \voiceTwo
	s4 d8 e16^. fis^. e8^. cis^. b4\rest |
	s4 d8 e16^. fis^. e2^^ |
	\oneVoice
	}
	>>
\break %mes 11
	\stemDown
	d'16-.[ r32 b!( g8)] fis16-.[ r32 a( d8)] b16-.[ r32 g( e8)] d16-.[ r32 fis( a8)] |
	g16-.[ r32 e( b!8)] d8 e16-. fis-. e8-. cis-. a4^> |

        \acciaccatura {\slurUp a8 } 
     a'16-.[ r32 fis( d8)] <<{d4 e2} \\{d8 e16^. fis^. e8^. cis^. b4\rest}>> |
\break %mes 14
	\acciaccatura {\slurUp a8} 
	a'16-.[ r32 fis( d8)] <<{d4 s2} \\{d8 e16^. fis^. e2^^}>> |
        d'16-.[ r32 b!( g8)] fis16-.[ r32 a( d8)] b16-.[ r32 g( e8)] d16-.[ r32 fis( a8)] |
	g16-.[ r32 e( b!8)] d8 e16-. fis-.\tempo 4=90 e8-. cis-. \tempo 4=70 a4^> |
	\bar "||"
\break %mes 17
	\tempo 4=60
	b4\rest <f! a d>(\arpeggio <a cis>2_\espressivo) |
	b4\rest <bes e>(\arpeggio <a cis>2_\espressivo) |
	b4\rest <<{cis( d f)} \\{a,2 a4}>> |
	<d-. g>( <d-. bes'>) <cis a'>2 |
	a4( <f a d> <a cis e>2_\espressivo) |
	<a d f>4( <bes d g> <a cis e>2_\espressivo) |
	a'4( <a, cis g'> <a d f> <a d>) |
	<bes-. d e>( <a-. cis f>) <a d>2^\fermata
	\bar "|."

     }
     
     lower = \relative c' {
       \clef bass
       \key d \minor
       \time 4/4
	\clef treble
	r4 <d f>8\arpeggio r8 r4 <cis e a>8\arpeggio r8 |
  <d f a>8\arpeggio r8 <bes d g>\arpeggio  r8 r4 <a cis e>8\arpeggio r8 |
	f'4( e <a, cis> <bes d>) |
	<g_. d'>( <bes_. d>) <a cis>2 |
	r4 <d f>8\arpeggio r8 r4 <cis e a>8\arpeggio r8 |
  <d f a>8\arpeggio r8 <bes d g>\arpeggio r8 r4 <a cis e>8\arpeggio r8 |
	f'4( e <a, cis> <bes d>) |
	g_.( a_.) <d f>2 |
%	\bar "||"
	r4 <d fis a>8\arpeggio r8 r4 <cis e a>4\arpeggio^^ |
	r4 <d fis a>8\arpeggio r8 r4 <cis e a>8\arpeggio r8 |
	<<{<g' b!>4( <fis a>)} \\{d2}>> <e g cis>4^( <fis a>) |
	<g,_. e' g>( <gis_. d' fis>) <a cis e>2 |
	r4 <d fis a>8\arpeggio r8 r4 <cis e a>\arpeggio^^ |
	r4 <d fis a>8\arpeggio r8 r4 <cis e a>8\arpeggio r8 |
	<<{<g' b!>4( <fis a>)} \\{d2}>> <e g cis>4^( <fis a>) |
	<g,_. e' g>( <gis_. d' fis>) <a cis e>2 |
	\bar "||"
	\slurUp a4( <a d> <a e'>2) |
	f'4( <g, g'> <a e'>2) |
	\slurDown a'4( g f d) |
	bes-.( g-.) a2 |
	\slurUp a4( <a d> <a cis e>2)~ |
	<a d f>4( <g d' g> <a cis e>2) |
	\slurDown a'4( <a, e' g> <d f> f) |
	<g,-. d' e>( <a-. cis f>) <d f>2 |
	\bar "|."

     }
     
     dynamics = {

        \override DynamicText #'extra-offset = #'(0 . 2.5)
	s1\p
	s1
	\override DynamicText #'extra-offset = #'(0 . 2)
	s4\fp s8 s8\> s4 s4\!
	s1*3
	s1\fp
	s1
	\override TextScript #'extra-offset = #'(-2 . 9)
	s1^\markup { \bold \fontsize #-1 Rieur. }
	s1*6
	s4 s2.
	\override DynamicText #'extra-offset = #'(-2 . 1.5)
	s1\p^\markup { \bold \fontsize #-1 "Comme" \bold \fontsize #-1 "au" \bold \fontsize #-1 "début." }
	s1
	\override DynamicText #'extra-offset = #'(0 . 2.5)
	s1\fp
	s1*3
	s1\fp
	s1 \bar "|." 
     }
     
     \score {
       \context PianoStaff <<
	\override Score.MetronomeMark #'transparent = ##t
   \set PianoStaff.instrumentName = \markup{ \fontsize #6 {"9. "} \hspace #1.0
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
           \override TextScript #'font-shape = #'bold
           \override Hairpin #'extra-offset = #'(0 . 1.8)
     
           \consists "Skip_event_swallow_translator"
     
           \consists "Axis_group_engraver"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
           \override VerticalAlignment #'forced-distance = #'4.5
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

