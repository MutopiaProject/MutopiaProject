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
       opus = "Opus 16 n°3"
       instrument = "N°3"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
       mutopiatitle = "Préludes opus 16 - 3. "
       mutopiacomposer = "ScriabinA"
       mutopiaopus = "O 16 n°3"
       mutopiainstrument = "Piano"
       date = "composer's dates"
       source = "M.P.Belaïeff, Leipzig. 1897"
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       lastupdated = "2006/May/02"



 footer = "Mutopia-2007/02/17-761"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
     }

     upper = \relative c'' {
       \clef treble
       \key ges \major
       \time 4/4

	\once \override Score.MetronomeMark #'extra-offset = #'(12 . 2)
	\tempo4 = 63
	\once \override TextScript #'extra-offset = #'(-10 . 2.2)
	r4^\markup { \bold "Andante cantabile" } ges'4^\( f bes, |
	ces es des ges, |
	as ces bes es, |
	f ges bes as\) |
\break %mes 5
	\tupletDown
	r4 r4 des ~ \times 2/3 {des4^\( ges,8} |
	\override TupletNumber #'transparent = ##t
	\override TupletBracket #'transparent = ##t
	\times 2/3 {ges8^. as^. bes^.} ces4 ~ \times 2/3 {ces8 bes as} \times 2/3 {des,8 ges f} |
	\textSpannerDown \override TextSpanner #'padding = #1.9 \override TextSpanner #'edge-text = #'("cresc.")
	\times 2/3 {es8\startTextSpan f ges} as4 ~ \times 2/3 {as8 ges f} \times 2/3 {ges as bes\stopTextSpan} |
\break %mes8
	\times 2/3 {des des, es} \times 2/3 {des f' es} \times 2/3 {ges, des' es,} \voiceOne << { \times 2/3 {f as bes} | 
	ges4\)} \context Voice = "1" { \voiceTwo ces,4 ~ | 
	ces4 \oneVoice } >> 

	<ces ges' ces>4^\( <bes ges' bes> <es, bes' des es> |
	<f ces' des f> <ges des' ges> <bes f' bes> <ces f as> |
\break %mes11
	<bes ges'>\) b'4\rest des ~ \times 2/3 {des4^\( ges,8} |
	\times 2/3 {ges8^. as^. bes^.} ces4 ~ \times 2/3 {ces8 bes as} \times 2/3 {des,8 ges f} |
	\textSpannerDown \override TextSpanner #'padding = #1.9 \override TextSpanner #'edge-text = #'("cresc.")
	\times 2/3 {es8\startTextSpan f ges} as4 ~ \times 2/3 {as8 ges f} \times 2/3 {ges8 as bes\stopTextSpan} |
\break %mes14
	\times 2/3 {des8 des, es} \times 2/3 {des8 f' es} \times 2/3 {des8 as' bes,} \voiceOne << { \times 2/3 {c!8 es f} | 
	des4\)} \context Voice = "1" { \voiceTwo ges,4 ~ | 
	ges4 \oneVoice } >>

	<ges des' ges>4^\( <f des' f> <bes, f' as bes> |
	<c! ges' as c> <des as' des> <f c' f> <ges c es> |
\break %mes17
	<f bes des>\) b4\rest  \times 2/3 {f'8^\( e! f} \times 2/3 {as8 ges bes,} |
	\times 2/3 {bes8 c! es~}  es2\)  <ges, c es>4^\( |
	<f bes des> <es as c!> <des f bes> <ces! f as> |
    <bes es ges>\) b'4\rest \times 2/3 {bes8^\( a! bes} \times 2/3 {des8 ces! es,} |
\break %mes21
	\times 2/3 {es8 f as~}  as2\) <ces, f as>4^\( |
	<bes es ges> <as des f> <ges bes es> <ges c! f> |
	\voiceOne << { <ces des>2} \context Voice = "1" { \voiceTwo ges4 f \oneVoice } >>  <ces' f as>4 <des f bes> |
	<bes ges'>\) \revert TupletBracket #'transparent \revert TupletNumber #'transparent \tupletDown b'4\rest \set Timing.beatLength = #(ly:make-moment 1 12) \times 4/6 {des8^\([ es16 des es des]} \set Timing.beatLength = #(ly:make-moment 3 12)  \times 2/3 {c!8 des ges,} |
\break %mes 25
	\times 4/5 {ges16 f^. ges^. as^. bes^.} ces4 ~ \set Timing.beatLength = #(ly:make-moment 1 12) \times 4/6 {ces8[ bes16 as bes as]} \unset Timing.beatLength  \times 4/5 {des,16[ bes' as ges f]} |
	\tupletUp \times 4/6 {es16[ f^. d!^. es^. f^. ges^.]} \override TupletBracket #'transparent = ##t \override TupletNumber #'transparent = ##t as4~ \set Timing.beatLength = #(ly:make-moment 3 12)  \times 2/3 {as8 ges f} \times 2/3 {ges8 as bes} |
\break %mes27
	\times 2/3 {des8 des, es} \times 2/3 {des8 f' es} \times 2/3 {ges,8 des' es,} \voiceOne << { \times 2/3 {f8 as bes} | 
	ges4\)} \context Voice = "1" { \voiceTwo ces,4( |
	bes4) \oneVoice } >>
	<f' des'>4^\( <bes es> <des ges> |
	<f bes> <des ges> <ces as'> <f, des'> ~ |
\break %mes30
	<bes des>\) <f des'>4^\( <bes es> <des ges> |
	<f bes> <des ges> <ces as'> <f, des'> ~ |
	<bes des> \voiceOne << { des2\) des4 ~ |
	des4 des^\(  s2 | s2}
	\context Voice = "1" { \voiceTwo f,4( ges)  f( | ges) <es ges> ~ ges2 ~ | ges2
	\oneVoice } >>
	<ces, des f as>2\arpeggio |
	<bes des ges bes>2\arpeggio^\fermata\) s2 
	


     }
     
     lower = \relative c {
       \clef bass
       \key ges \major
       \time 4/4

	r4 \clef treble bes''4_\( as des,
	es ges f bes,
	ces es des ges,
	as bes des ces\) \clef bass
	r4 <bes ges'>_\( <as f'> <des, bes'>
	<es ces'> <ges es'> <f des'> <bes, ges'>
	<ces as'> <es ces'> <des bes'> <ges, es'>
	<as f'> <bes ges'> <des bes'> <des, des'>
	<es es'>\) <es es'>_\( <des des'> <ges, ges'>
	<as as'> <bes bes'> <des des'> <des, des'>
	<ges ges'>\) <bes'' ges'>_\( <as f'> <des, bes'>
	<es ces'> <ges es'> <f des'> <bes, ges'>
	<ces as'> <es ces'> <des bes'> <ges es'>
	<as f'> <bes ges'> <as f'> <as, as'>
	<bes bes'>\) <bes bes'>_\( <as as'> <des, des'>
	<es es'> <f f'> <as as'> <a! a'!>
	<bes bes'>\) \clef treble <des' bes'>_\( <c! a'!> <f, des'>
	<ges es'> <bes ges'> <a! f'>\) \clef bass <a,, a'>_\(
	<bes bes'> <c! c'!> <des des'> <d! d'!>
	<es es'>\) <ges' es'>_\( <f d'!> <bes, ges'>
	<ces as'> <es ces'> <d! bes'>\) <d,,! d'!>_\(
	<es es'> <f f'> <ges ges'> <as as'>
	<des des'>2 <des, des'>
	<ges ges'>4\) <bes'' ges'>^\( <as f'> <des, bes'>
	<es ces'> <ges es'> <f des'> <bes, ges'>
	<ces as'> <es ces'> <des bes'> <ges, es'>
	<as f'> <bes ges'> <des bes'> \tieUp <des, des'> ~
	<ges des'>\) <des' bes'>^\( \clef treble <ges es'> <bes ges'>
	<des bes'> \tieUp <es bes'> ~ <as, es' as> \tieUp <des bes'> ~
	<ges, des' ges>\) \clef bass <des bes'>^\( \clef treble <ges es'> <bes ges'>
	<des bes'> \tieUp <es bes'> ~ <as, es' as> \tieUp <des bes'> ~
	<ges, des' ges>\) \clef bass \voiceOne << {bes2 bes4~ | 
	bes4 ces}
	\context Voice = "1" { \voiceTwo des,4( es) des( | 
	es) <as, es'> \oneVoice } >> d2\rest 
	d2\rest <des, des'>2\arpeggio
	<ges, ges' des'>\arpeggio_\fermata s2    \bar"|."
	

     }
     
     dynamics = {

       s4\p\< s2.
	s1
	s8 s8\! s8 s8\> s2
	s2. s8 s8\!
	s1
	s8\< s16 s16\! s8 s8\> s4 s8\! s8
	s1
	s4\mf \override TextScript #'extra-offset = #'(-2.5 . 2) s2._\markup { \italic \small  dim. }
	s4 s2.\p
	s1*2
	s8\< s16 s16\! s8 s8\> s4 s8\! s8
	s1
     \once \override DynamicText #'extra-offset = #'(-0.5 . 3.2) s4\mf \override TextScript #'extra-offset = #'(-3.5 . 2.5) s2._\markup { \italic \small  dim. }
	s4 s2.\p
	s4 s4\< s4 s4\!
	s2 \once \override DynamicText #'extra-offset = #'(0 . 4.2) s4\mf \once \override DynamicText #'extra-offset = #'(-12 . -0.2) s4\p
	s8\< s8 s8\! s8 s4 s4\p
	s2 \once\override Hairpin #'extra-offset = #'(0 . 2) s4\< s4
	s8 s8\! \once \override DynamicText #'extra-offset = #'(0 . 2) s4\p \once \override DynamicText #'extra-offset = #'(0.8 . 4.2) s4\mf s4
	s8\< s8 s4\! s4 s4\p
       s8 \once\override Hairpin #'extra-offset = #'(0 . 0) s8\< s4 s4 s8 s8\!
	\once\override Hairpin #'extra-offset = #'(0.7 . 0) s4\> s2.
	s4\! \once \override DynamicText #'extra-offset = #'(0 . 4) s4\pp
s2
	s1
	s2 s8 s8\< s8 s8\!
	\override TextScript #'extra-offset = #'(-0.5 . 2.5)
	s4_\markup { \italic \small  rubato } s2 \override TextScript #'extra-offset = #'(-0.5 . 10.5) s4_\markup { \bold \small rit. }
	s4 s4\p s2
	s1
	s4 s4\pp s2
	s1*5 
     }

     
     \score {
       \context PianoStaff <<
  \set PianoStaff.instrumentName = \markup{ \fontsize #6 {"3."} \hspace #1.0 }
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
           \override VerticalAlignment #'forced-distance = #5.5
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
	tempoWholesPerMinute = #(ly:make-moment 63 4)
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
