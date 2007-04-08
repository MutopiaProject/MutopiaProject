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
       opus = "Opus 16 n°1"
       instrument = "N°1"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
       mutopiatitle = "Préludes opus 16 - 1. "
       mutopiacomposer = "ScriabinA"
       mutopiaopus = "O 16 n°1"
       mutopiainstrument = "Piano"
       date = "composer's dates"
       source = "M.P.Belaïeff, Leipzig. 1897"
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       lastupdated = "2006/Apr/30"



 footer = "Mutopia-2007/02/17-759"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
     }

     upper = \relative c'' {
       \clef treble
       \key b \major
       \time 3/4
	\partial 8
	 \override TupletNumber #'transparent = ##t
	\override TupletBracket #'transparent = ##t
	\once \override TextScript #'extra-offset = #'(-5 . 2)
	 r8^\markup { \bold "Andante" }
	\override Score.MetronomeMark #'padding = #2.5
	 \tempo 4=40 
	R2. |
	 R2. |
\break
	 gis'4\( fis8 e \times 2/3 {dis8[ cis dis]} |
	\times 2/3 {fis4 e8}\times 2/3 {dis8[ cis dis]} gis,4
	cis8 b \times 2/3 {gis8[ ais b]} dis cis
\break
	gis2 fis4\)
	cis''\( b8[ a!] \times 2/3 {gis8 fis gis}
\break
	\times 2/3 {b4 gis8} \times 2/3 {fis8[ e fis]} b,4
	e8[ dis] \times 2/3 {gis,8[ ais b]} dis8[ cis]
	b2.\)
\break
	\voiceOne
	<< {  \stemDown \times 2/3 {ais'8^-^\( gis^- ais^-} s4 \stemUp \times 2/3 {ais'8 gis ais}
	dis,4 cis8[ b] ais[ gis]
	s4 s4 \times 2/3 {gis'8 fis gis\)}
\break
	cis,4^\( b8[ a!] gis[ fis]
	\override Score.MetronomeMark #'transparent = ##t
	\tempo 4=44
	\times 2/3 {gis8 fisis gis} b,4\tempo 4=48 g'!
	\times 2/3 {fis8 eis fis}\tempo 4=52 b,4 dis\)
\break
	\textSpannerDown \override TextSpanner #'padding = #1.9 \override TextSpanner #'edge-text = #'("dim.")
	dis4^\( fis,\startTextSpan b\tempo 4=48
	dis\tempo 4=44 cis\tempo 4=34 e,

 }
	\context Voice = "1" { \voiceTwo
	\override TupletNumber #'transparent = ##t
	\override TupletBracket #'transparent = ##t
	s4 dis'2^-
	b8\rest fis'8 eis[ dis] dis[ gis]
	\times 2/3 {gis8^-[ fis^- gis^-]} cis,2^-
	b8\rest e8 dis[ cis] b[ fis']
	<b, dis>4 dis, <b' dis>
	<b dis> dis, <eis b'>
	<fis b> dis dis
	e2 s4
	\oneVoice
	}
	>>
	
	\tempo 4=40
	gis'4\stopTextSpan\)^\( fis8 e \times 2/3 {dis8[ cis dis]} |
\break
	\times 2/3 {fis4 e8}\times 2/3 {dis8[ cis dis]} gis,4
	cis8 b \times 2/3 {gis8[ ais b]} \times 2/3 {dis4 cis8}
	gis2 fis4\)
\break
	cis''^\( b8[ a!] \times 2/3 {gis8 fis gis}
	\times 2/3 {b4 gis8} \times 2/3 {fis8[ e fis]} b,4\)
	cis^\( b8[ a!] \times 2/3 {gis8 fis gis}
\break
	\times 2/3 {b4 gis8} \times 2/3 {fis8[ e fis]} b,4\)
	fis'4^\( gis' b,
	\textSpannerDown \override TextSpanner #'padding = #1.9 \override TextSpanner #'edge-text = #'("cresc.")
	ais cis'\startTextSpan e,
\break
	dis fis' a,!
	gis b' e,\)
	g,!\stopTextSpan\( cis' fis,,
\break
	\textSpannerDown \override TextSpanner #'padding = #1.9 \override TextSpanner #'edge-text = #'("dim.")
	ais'\startTextSpan e, g'!
	g,! cis fis,
	ais\stopTextSpan e g!\)
\break
	b,4\rest <c! g'!> <g! e'>
	<e c'!> <c! g'!> <g! e'>
	<e c'!> <e g! c> <e g! c>
\break
	<e g! c> <e g! c> <e g! c>
	<dis fis b dis>2.
	<dis fis b dis>2.~
	<dis fis b dis>2.
	R2.
	\bar "|."
 
     }
     
     lower = \relative c {
       \clef bass
       \key b \major
       \time 3/4
	\partial 8
	\voiceOne
	<< { \override TupletNumber #'transparent = ##t
	      \override TupletBracket #'transparent = ##t
	s8
%mes 1
	\times 2/3 {s4. b'4^- cis4^- gis'8^- s8}
	\times 2/3 {s4. b,4 cis4 gis'8 s8}
	\times 2/3 {s4. b,4 cis4 gis'8 s8}
	\times 2/3 {s4. b,4 cis4 gis'8 s8}
	\times 2/3 {s4. b,4 cis4 gis'8 s8}
%mes 6
	\times 2/3 {s4. gis,4 ais4 fis'8 s8}
	\times 2/3 {s4. e4 fis4 cis'8 s8}
	\times 2/3 {s4. cis,4 dis4 b'8 s8}
	\times 2/3 {s4. cis,4 e4 gis8 s8}
	s2.
	\times 2/3 {s4. gis4 b4 dis8 s8}
	s2.
	\times 2/3 {s4. fis,4 a!4 cis8 s8}
	s2.
	s2.
	s2.
	s2.
	s2.
	\times 2/3 {s4. b,4 cis4 gis'8 s8}
	\times 2/3 {s4. b,4 cis4 gis'8 s8}
	\times 2/3 {s4. b,4 cis4 gis'8 s8}
	\times 2/3 {s4. gis,4 ais4 fis'8 s8}
	\times 2/3 {s4. cis4 dis4 b'8 s8}
	\times 2/3 {s4. cis,4 e4 b'8 s8}
	\times 2/3 {s4. cis,4 dis4 b'8 s8}
	\times 2/3 {s4. cis,4 e4 b'8 s8}
	\times 2/3 {s4. b,4 cis4 gis'8 s8}
	\times 2/3 {s4. gis,4 ais4 gis'8 s8}
	\times 2/3 {s4. cis,4 dis4 cis'8 s8}
	\times 2/3 {s4. cis,4 e4 b'8 s8}
	\times 2/3 {s4. e,4 fis4 g!8 s8}
	\times 2/3 {s4. e4 fis4 g!8 s8}
	\times 2/3 {s4. e4 fis4 g!8 s8}
	\times 2/3 {s4. e4 fis4 g!8 s8}
	s2.*8 } %fin de la 1ere voix

	s8
	\context Voice = "1" { \voiceTwo
	\override TupletNumber #'transparent = ##t
	\override TupletBracket #'transparent = ##t
%mes 1
	\stemUp fis,,8\(
	\times 2/3 {b,8[ fis' cis']} \stemDown \times 2/3 {b'8[ gis cis]} \times 2/3 {e,[ gis'\) fis,,]\(}
	\stemUp \times 2/3 {b,8 fis' cis'} \stemDown \times 2/3 {b'8[ gis cis]}
 \times 2/3 {e, gis'\) fis,,\(}
\break
	\stemUp \times 2/3 {b,8 fis' cis'} \stemDown \times 2/3 {b'8[ gis cis]} 
\times 2/3 {e, gis'\) fis,,\(}
	\stemUp \times 2/3 {b,8 fis' cis'} \stemDown \times 2/3 {b'8[ gis cis]} 
\times 2/3 {e, gis'\) fis,,\(}
	\stemUp \times 2/3 {b,8 fis' cis'} \stemDown \times 2/3 {b'8[ gis cis]} 
\times 2/3 {e, gis'\) fis,,\(}
\break
	\stemUp \times 2/3 {b,8 fis' cis'} \stemDown \times 2/3 {gis'8[ fis ais]} \times 2/3 {e fis'\) fis,,\(}
	\stemUp \times 2/3 {b,8 b' fis'} \stemDown \times 2/3 {e'8[ cis fis]} \times 2/3 {a, cis'\) b,,\(}
	\stemUp \times 2/3 {b,8 b' fis'} \stemDown \times 2/3 {cis'8[ b dis]} \times 2/3 {a b'\) b,,\(}
	\stemUp \times 2/3 {cis,8 gis' e'} \stemDown \times 2/3 {cis'8[ gis e']} \times 2/3 {ais,! gis'\) gis,,\(}
	\stemUp \times 2/3 {gis,8 gis' dis'} \stemDown \times 2/3 {dis'8[ b gis']} \times 2/3 {dis gis,\) dis\(}
	\stemUp \times 2/3 {gis,8 dis' b'} \stemDown \times 2/3 {gis'8[ fis b]} \times 2/3 {dis, dis'\) b,\(}
\stemUp \times 2/3 {cis,8 b' cis} \stemDown \times 2/3 {gis'8[ gis, eis']} b'16 cis, b\) cis,\( ~
	\stemUp \times 2/3 {<fis, cis'>8 cis' a'!} \stemDown \times 2/3 {fis'8[ e a!]} \times 2/3 {cis, cis'\) a,\(}
	\stemUp \times 2/3 {b,8 a'! b} \stemDown \times 2/3 {fis'8[ fis, dis']} a'!16 b, a\) b,\(
	\stemUp \times 2/3 {e,8 b' b'~ } \stemDown \times 2/3 {b8[ b b,]} \times 2/3 {eis, dis' b'\) }
	\stemUp \times 2/3 {fis,8\( dis' b'~ } \stemDown \times 2/3 {b8[ b dis,]} \times 2/3 {g,! dis' b'\) }
	\stemUp \times 2/3 {fis,8\( dis' b'} \stemDown \times 2/3 {ais8[ gis fis]} \times 2/3 {gis fis b,\) }
	\stemUp \times 2/3 {fis,8\( fis' cis'} \stemDown \times 2/3 {ais'8[ gis fis]} b16 gis cis,\) fis,\(
	\stemUp \times 2/3 {b,8 fis' cis'} \stemDown \times 2/3 {b'8[ gis cis]} \times 2/3 {e, gis'\) fis,,\(}
	\stemUp \times 2/3 {b,8 fis' cis'} \stemDown \times 2/3 {b'8[ gis cis]} \times 2/3 {e, gis'\) fis,,\(}
	\stemUp \times 2/3 {b,8 fis' cis'} \stemDown \times 2/3 {b'8[ gis cis]} \times 2/3 {e, gis'\) fis,,\(}
	\stemUp \times 2/3 {b,8 fis' cis'} \stemDown \times 2/3 {gis'8[ fis ais]} \times 2/3 {e fis'\) fis,,\(}
	\stemUp \times 2/3 {b,8 b' fis'} \stemDown \times 2/3 {cis'8[ b dis]} \times 2/3 {a b'\) b,,\(}
	\stemUp \times 2/3 {b,8 b' gis'} \stemDown \times 2/3 {cis8[ b e]} \times 2/3 {gis, b'\) b,,\(}
	\stemUp \times 2/3 {b,8 b' fis'} \stemDown \times 2/3 {cis'8[ b dis]} \times 2/3 {a b'\) b,,\(}
	\stemUp \times 2/3 {b,8 b' gis'} \stemDown \times 2/3 {cis8[ b e]} \times 2/3 {gis, b'\) b,,\(}
	\stemUp \times 2/3 {b,8 fis' cis'} \stemDown \times 2/3 {b'8[ gis cis]} \times 2/3 {e, gis'\) fis,,\(}
	\stemUp \times 2/3 {b,8 fis' cis'} \stemDown \times 2/3 {gis'8[ fis ais]} \times 2/3 {e gis'\) fis,,\(}
	\stemUp \times 2/3 {b,8 fis' fis'} \stemDown \times 2/3 {cis'8[ b dis]} \times 2/3 {a! cis'\) b,,\(}
	\stemUp \times 2/3 {b,8 b' gis'} \stemDown \times 2/3 {cis8[ b e]} \times 2/3 {gis, b'\) b,,\(}
	\stemUp \times 2/3 {b,8 b' g'!} \stemDown \times 2/3 {e'8[ cis fis]} \times 2/3 {ais,! g'!\) b,,\(}
	\stemUp \times 2/3 {b,8 b' g'!} \stemDown \times 2/3 {e'8[ cis fis]} \times 2/3 {ais,! g'!\) b,,\(}
	\stemUp \times 2/3 {b,8 b' g'!} \stemDown \times 2/3 {e'8[ cis fis]} \times 2/3 {ais,! g'!\) b,,\(}
	\stemUp \times 2/3 {b,8 b' g'!} \stemDown \times 2/3 {e'8[ cis fis]} \times 2/3 {ais,! g'!\) b,,\(}
	\stemUp \times 2/3 {b,8 b' g'!} \stemDown \times 2/3 {e'8[ ais,! c!]} \times 2/3 {ais e c!}
	\times 2/3 {ais'8 e g,!} \stemUp b,4\) d'4\rest
	d4\rest <b, g'! c!>4 <b g'! c!>
	<b g'! c!> <b g'! c!> <b g'! c!>
	<b fis' b>2.
	<b fis' b>2.
	#(set-octavation -1) \set Staff.ottavation = #"8"
	b,2. ~ 
	b2 #(set-octavation 0) d''4\rest \bar "|."
	\oneVoice
     } >>





     }
     
     dynamics = { 

       s8\mf
	s2 s8 \once \override DynamicText #'extra-offset = #'(2.7 . -0.5) s8\pp
	s2.
	\once \override TextScript #'extra-offset = #'(-0.7 . 3)
	s2_\markup { \italic \small "cantabile" } s8 s8\<
	s16 s16\! s16\> s16 s16\! s16 s4.
	\once \override TextScript #'extra-offset = #'(-0.7 . 2)
	s2._\markup { \italic \small "cresc." }   
	s2.
	s2.\mf
	s2.
	\once \override TextScript #'extra-offset = #'(0 . 2.5)
	s2._\markup { \italic \small "dim." }
	s2.\p
	s4\p s4 \once \override DynamicText #'extra-offset = #'(-2 . 14.5) s4\pp
	\override Hairpin #'extra-offset = #'(1 . 4)
	s16\< s8 s16\! s8\> s8 s8 s8\!
	s2 \once \override DynamicText #'extra-offset = #'(-2 . 14.5) s4\pp
	s2.
	\once \override TextScript #'extra-offset = #'(0 . 2.5)
	s4_\markup { \italic \small "cresc." } \once \override TextScript #'extra-offset = #'(-10 . 13.5) s4_\markup { \bold \small "accel." } s4
	s2.
	\once \override DynamicText #'extra-offset = #'(0.1 . 2) s8\f \once \override TextScript #'extra-offset = #'(0 . 12.5) s8_\markup { \italic \small "rubato" } s4 s4
	\once \override TextScript #'extra-offset = #'(2.5 . 10.5)
	s2._\markup { \bold \small "rit." }
	s2.\pp
	s2.*3
	\once \override DynamicText #'extra-offset = #'(0.5 . 4) s4\mf \once \override DynamicText #'extra-offset = #'(-11 . -0.7) s4\pp s4
	s2.
	\once \override DynamicText #'extra-offset = #'(-0.9 . 12) s2.\pp
	s2.*5
	\once \override DynamicText #'extra-offset = #'(1 . 4)
	s2.\f
	s2.*2
	\once \override DynamicText #'extra-offset = #'(0.9 . 3.3) s4\p s8 \once \override TextScript #'extra-offset = #'(0 . 3.6) s8_\markup { \italic \small "dim." } s4
	s2.*2
	s4 \once \override DynamicText #'extra-offset = #'(0.1 . 0) s2\pp
	s2.
	\once \override DynamicText #'extra-offset = #'(0.1 . 0) s2.\ppp
	s2.*3   %\bar "|." 
     }

     
     \score {
       \context PianoStaff <<
  \set PianoStaff.instrumentName = \markup{ \fontsize #6 {"1."} \hspace #1.0 }
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
           \override Hairpin #'extra-offset = #'(0 . 3)
     
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
       \context PianoStaff <<
         \context Staff=upper  \upper %\dynamics

         \context Staff=lower << \lower %\dynamics
	>>

       >>
       \midi {
	\context { \Score
	tempoWholesPerMinute = #(ly:make-moment 40 4)
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
