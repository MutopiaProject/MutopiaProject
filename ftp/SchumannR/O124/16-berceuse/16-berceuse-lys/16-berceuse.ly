 \version "2.6.4"

     \header {
      title = "Feuilles d'album"
       subtitle = "20 pièces de piano"
       subsubtitle = "(1841)"
       composer = "Robert Schumann (1810-1856)"
       opus = "Opus 124 n°16"
       instrument = "Berceuse"
       copyright = "Creative Commons Attribution-ShareAlike 2.5" 
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
        mutopiatitle = "Feuilles d'album"
       mutopiacomposer = "SchumannR"
       mutopiaopus = "O 124 n°16 "
       mutopiainstrument = "Piano"
       date = "1841"
       source = "Peters"
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       lastupdated = "2006/Feb/07"

       footer = "Mutopia-2006/02/10-665"
       tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2005. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
 }

%comment créer quelques macros pour alléger le fichier? (autre configuration?)

melodie = \relative c'' { \time 6/8    \key es \major   \clef treble
	\phrasingSlurUp
	\once \override TextScript #'extra-offset = #'(-5 . 2)
	bes4.^\markup { \bold "Allegretto" }\( g'4. |
	f es\) |
	 \acciaccatura d8 \stemUp c8\( b! c es d c |
	bes4. aes\) |
\break %mes 5
	g\( bes |
	aes g\) |
	 \acciaccatura g8 f\( e! f \stemUp c'4 c,8 |
	es4. d\) |
	\stemUp bes'4.\( g'4. |
\break %mes 10
	f es\) |
	 \acciaccatura d8 c8\( b! c es d c |
	bes4. aes\) |
	g\( bes |
	aes g\) |
\break %mes 15
	 \acciaccatura g8 f\( e! f aes4 d,8 |
	\tieUp es4. ~ es8\) b'8\rest b8\rest |
	\bar "||"

	\phrasingSlurUp
	\voiceOne
	<< { f'4.\( bes,\) |
	bes\( a!4\) g8\( |
	\times 3/2 {f8[ a!8]} \times 3/2 {c8[ es8]\)} |
\break %mes 20
	<es, f a! es'>4.\( <d bes' d>\) |
	f'4.\( b,!\) |
	g'4\( c,8\) g'4\( cis,8\) |  \tempo 4=70
	\textSpannerUp
	\override TextSpanner #'padding = #2.8
	\override TextSpanner #'edge-text = #'("ritardando " . "Au Tempo")
	<bes d>8\( <a! cis> \startTextSpan <bes d> \tempo 4=64 <d f> <c! es> a |
	bes4.~ bes4\) d8\rest | \tempo 4=76
     }
	\context Voice = "1" { \voiceTwo
	s4. f,4.
	es4. es4 es8
	es4.~ es4 s8
	s2.
	s4. aes!4\( g8\)
	s2.
	f4. a4 es8~
	es4 s8 s4.
	\oneVoice
	}
	>>
\break %mes 25
	bes'4.\( \stopTextSpan <bes g'>4. |
	f' es\) |
	 \acciaccatura d8 \stemUp c8\( b! c es d c |
	bes4. aes\) |
\break %mes 29
	g\( bes |
	aes g\) |                        
	 \acciaccatura g8 f\( e! f \stemUp c'4 c,8 |
	es4. d\) |
\break %mes 33
	\stemUp bes'4.\( g'4. |
	f es\) |
	 \acciaccatura d8 c8\( b! c es d c |
	bes4. aes\) |
\break %mes 37
	g\( bes |
	aes g\) |
	 \acciaccatura g8 f\( e! f aes4 d,8 | \tempo 4=68
	\tieUp es4. ~ es8\) b'8\rest \tempo 4=60 b8\rest |

	\bar "||" \key g \minor \tempo 4=76
\break %mes 41
	<bes, d g>4\( <a fis'>8\) <bes g'>\( d'\) <a, fis'>^. |
	<bes g'>16\( a' bes8\) <c, a'>8^. <a fis'>4\( <bes d g>8\) |
	<bes d g>4\( <a fis'>8\) <bes g'>\( d'\) <a, fis'>^. |
	<bes g'>16\( a' bes8\) <c, a'>8^. <a fis'>4\( <bes d g>8\) |
	\clef bass \stemDown 
\break %mes 45
	<a d fis>4\( <g cis e!>8\) <fis d'>\( a'\) <g, cis>^. |
	<fis d'>16\( e'! fis8\) <g, bes e>8^. <e! g cis>4\( <fis a d>8\) |
	<a d fis>4\( <g cis e!>8\) <fis d'>\( a'\) <g, cis>^. |
	<fis d'>16\( e'! fis8\) <g, bes e>8^. <e! g cis>4\( <fis a d>8\) |
	\clef treble \stemUp
\break %mes 49
	<bes d g>4\( <a fis'>8\) <bes g'>\( d'\) <a, fis'>^. |
	<bes g'>16\( a' bes8\) <c, a'>8^. <a fis'>4\( <bes d g>8\) |
	<bes d g>4\( <a fis'>8\) <bes g'>\( d'\) <a, fis'>^. | \tempo 4=68
	<bes g'>16\( a' bes8\) \tempo 4=60 <c, a'>8^. <a fis'>4\( \tempo 4=42 <bes d g>8\) |

	\bar "||"
	\key es \major \tempo 4=76
\break %mes 53
	bes'4.\( g'4. |
	f es\) |
	 \acciaccatura d8 \stemUp c8\( b! c es d c |
	bes4. aes\) |
	g\( bes |
\break %mes 58
	aes g\) |
	 \acciaccatura g8 f\( e! f \stemUp c'4 c,8 es4. d\) |
	\stemUp bes'4.\( g'4. |
	f es\) |
\break %mes 63
	 \acciaccatura d8 c8\( b! c es d c |
	bes4. aes\) |
	g\( bes |
	aes g\) |
	 \acciaccatura g8 f\( e! f aes4 d,8 |
\break %mes 68
	\tieUp es4. ~ es8\) b'8\rest b8\rest |
	\bar "||"

	\phrasingSlurUp
	\voiceOne
	<< { f'4.\( bes,\) |
	bes\( a!4\) g8\( |
	\times 3/2 {f8[ a!8]} \times 3/2 {c8[ es8]\)} |
	<es, f a! es'>4.\( <d bes' d>\) |
\break %mes 73
	f'4.\( b,!\) |
	g'4\( c,8\) g'4\( cis,8\) |  \tempo 4=70
	\textSpannerUp
	\override TextSpanner #'padding = #2.8
	\override TextSpanner #'edge-text = #'("ritardando " . "Au Tempo")
	<bes d>8\( <a! cis> \startTextSpan <bes d> \tempo 4=64 <d f> <c! es> a |
	bes4.~ bes4\) d8\rest | \tempo 4=76
     }
	\context Voice = "1" { \voiceTwo
	s4. f,4.
	es4. es4 es8
	es4.~ es4 s8
	s2.
	s4. aes!4\( g8\)
	s2.
	f4. a4 es8~
	es4 s8 s4.
	\oneVoice
	}
	>>   
\break %mes 77
	bes'4.\( \stopTextSpan <bes g'>4. |
	f' es\) |
	 \acciaccatura d8 \stemUp c8\( b! c es d c |
	bes4. aes\) |
	g\( bes |
\break %mes 82
	aes g\) |
	 \acciaccatura g8 f\( e! f \stemUp c'4 c,8 |
	es4. d\) |
	\stemUp bes'4.\( g'4. |
	f es\) |
\break %mes 87
	 \acciaccatura d8 c8\( b! c es d c |
	bes4. aes\) |
	g\( bes |
	aes g\) |
	 \acciaccatura g8 f\( e! f aes4 d,8 |
\break %mes 92: coda
	\once \override NoteColumn #'force-hshift = #0.1
	 es2.\) | \tempo 4=72
	\clef bass
	<c es>4. <bes es> |
	\voiceOne << {es\( d\) | \tempo 4=66
	\clef treble
	<des f>8\( <c es> <bes des> bes' aes g | \tempo 4=60
\break %mes 96
	f\arpeggio\noBeam\) e'!\( f aes4 d,8 | \tempo 4=76
	es4\) f8\rest s4.} |
	\context Voice = "1" { \voiceTwo
	\clef bass <f,, aes>8 <es g> <f aes> <aes c> <g bes> <f aes>
	\clef treble s4. <c' es>4 es8
	d!4.\arpeggio s4.
	s2. \oneVoice }
	>> 

	s2. |
	b'4\rest b8\rest <g es'>4.^\fermata |
	\bar "|."



}
	% les accord sensés être liés (mes. 15-16  39-40  67-68  91-92)
middle = \relative c' {

	s2.*14   %mes. 15-16
	<< {s2 s8 \hideNotes bes8~ \unHideNotes 
	\once \override NoteColumn #'force-hshift = #-0.8 
	bes4. } \\
      {s2 s8 \hideNotes  aes8~ \unHideNotes 
	\once \override NoteColumn #'force-hshift = #1 aes4 
	\set followVoice = ##t 
	\hideNotes  g8 }
     >>
	s4.
	s2.*22     %mes. 39-40

	<< {s2 s8 \hideNotes bes8~ \unHideNotes 
	\once \override NoteColumn #'force-hshift = #-0.8 
	bes4. } \\
      {s2 s8 \hideNotes  aes8~ \unHideNotes 
	\once \override NoteColumn #'force-hshift = #0.8 aes4

	\hideNotes \unHideNotes \set followVoice = ##t 
	\hideNotes  g8 }
     >>
	s4.
	s2.*26    %mes 67-68

	<< {s2 s8 \hideNotes bes8~ \unHideNotes 
	\once \override NoteColumn #'force-hshift = #-0.8 
	bes4. } \\
      {s2 s8 \hideNotes  aes8~ \unHideNotes 
	\once \override NoteColumn #'force-hshift = #0.8 aes4

	\hideNotes \unHideNotes \set followVoice = ##t 
	\hideNotes  g8 }
     >>
	s4.

	 s2.*22    %mes 91-92
 
	<< {s2 s8 \hideNotes bes8~ \unHideNotes 
	\once \override NoteColumn #'force-hshift = #0.5 
	bes4. } \\
      {s2 s8 \hideNotes  aes8~ \unHideNotes 
	\once \override NoteColumn #'force-hshift = #-0.7 aes4

	\hideNotes \unHideNotes \set followVoice = ##t 
	\hideNotes  g8 }
     >>
	s4.
	s2.*7
	\bar "|."
    }

basse = \relative c { \time 6/8 \clef bass \key es \major % Les arpèges
	
	\phrasingSlurDown
	\once\override PhrasingSlur  #'control-points =
	    #'((0.5 . 3.2) (1 . 5) (11 . 10) (18 . 3.5))
	es8\( bes'16 es g8~ g es16 bes es,8\)~ |
	\once\override PhrasingSlur  #'control-points =
	    #'((0.5 . 3.2) (1 . 5) (11 . 10) (18 . 3.5))
	es8^\( bes'16 es g8~ g es16 bes es,8\)~ %
	es8\( aes16 es' \change Staff=upper \tieDown aes8\) ~  aes\( \change Staff=lower es16 aes, \tieDown es8\) ~ |
	\voiceOne
	<< {\stemDown es2. | } \context Voice = "1" { \voiceTwo
	\stemUp f8[^\( aes16 d \change Staff=upper \stemDown\tieDown f8]\)~ f_\( \change Staff=lower \stemUp d16 aes f8\) | } 
	>>
%mes 5
	\stemDown es8\( bes'16 es \change Staff=upper g8\) \change Staff=lower d\( bes16 f d8\) |
	c8\( aes'16 c \change Staff=upper es8\) \change Staff=lower bes,\( g'16 des' \change Staff=upper e!8\) |
	\change Staff=lower aes,,8\( f'16 c' \change Staff=upper f8\) \change Staff=lower a,,!\( es'16 f \change Staff=upper c'8\) |
	\change Staff=lower \stemUp bes,,8_\( bes'16 f' \change Staff=upper \stemDown \tieNeutral <aes bes>8\) ~  <aes bes>\( <aes bes>16 \change Staff=lower \stemUp f bes,8 |
	\voiceOne << {es,8\) b'8\rest b8\rest}
	\context Voice = "1" { \voiceTwo  \change Staff=upper \stemDown g''8_\( \change Staff=lower \stemUp es16 bes g8\)
	\oneVoice } >>
	\stemDown es8\( bes'16 es \change Staff=upper  g8\) |
% mes 10
	\change Staff=upper \stemDown bes8\( g16 \change Staff=lower \stemDown es bes8\) <es, g>\( bes'16 es \change Staff=upper \stemDown g8\) |
	\change Staff=lower \stemDown es,8\( aes16 c aes'8\) \change Staff=upper \stemDown \phrasingSlurDown c\( aes16 es \change Staff=lower \stemUp c8\) |
	<<{ \stemUp f,8[^\( aes16 bes \change Staff=upper \stemDown d8]\) f_\( \change Staff=lower \stemUp d16 bes aes8\) | }
	 \\{\stemDown es2.}>>
	\stemDown es8^\( bes'16 es \change Staff=upper g8\) \change Staff=lower des,^\( g16 bes \change Staff=upper fes'8\) |
	\change Staff=lower c,8^\( aes'16 c \change Staff=upper es8\) \change Staff=lower bes,^\( g'16 des' \change Staff=upper e!8\) |
%mes 15
   \change Staff=lower aes,,8_\( f'16 c' \change Staff=upper f8\) \change Staff=lower \stemUp bes,,,8\( bes'16 f' \change Staff=upper \stemDown < as bes >8\) |
   \change Staff=lower \stemNeutral es,8\( bes'16 es \change Staff=upper \stemDown  g8\) bes8\( g16 \change Staff=lower \stemUp es bes8\) |

	\bar "||"

	\stemDown d8\( f16 bes d8~ d8 d16 bes f8\) |
	c8\( f16 a! c8~ c8 a16 f bes,8\) |
	a!8\( c16 f c'8\) \stemUp f,,8\( f'16 a! \change Staff=upper \stemDown  es'8\) |
%mes 20
	\change Staff=lower \stemDown bes,8\( f'16 a! f'8~ f8 f16 bes, f8\) |
	d8\( f16 bes d8\) f8\( d16 b! f8\) |
	\voiceOne
	<< { \stemDown es4. e! |
	f f4 f8\noBeam |
	bes,4. d4\rest d8\rest |
     }
	\context Voice = "1" { \voiceTwo \phrasingSlurDown
	\override Staff.NoteCollision #'merge-differently-dotted = ##t
	\stemUp es8\( g16 c \change Staff=upper \stemDown g'8\) \change Staff=lower \stemUp e,!8\( g16 cis \change Staff=upper \stemDown g'8\) |
     \change Staff=lower \phrasingSlurUp \stemUp <bes, d>8\( <a! cis> <bes d> <d f> <c! es> c\) |
	\phrasingSlurDown bes,8\( f'16 bes \change Staff=upper \stemDown d8\) aes'8\( f16 d \change Staff=lower \stemUp bes8\) |
	\oneVoice
	}
	>>
%mes 25
	\once\override PhrasingSlur  #'control-points =
	    #'((0.5 . 3.2) (1 . 5) (13 . 11) (21 . 4))
	es,8\( bes'16 es g8~ g g16 es bes8\) |
	es,8\( bes'16 es \change Staff=upper \stemDown g8 bes g16 \change Staff=lower es16 bes8\) |
	es,8\( aes16 c es8\)  \change Staff=upper aes8\( \change Staff=lower es16 c aes8\) |
	\voiceOne
	<< {\stemDown es2. |} 
	\context Voice = "1" { \voiceTwo
     \phrasingSlurUp \stemUp f8[\( aes16 d \change Staff=upper \stemDown\tieDown f8]\)~ \phrasingSlurDown f\( \change Staff=lower \stemUp d16 aes f8\) | } >>
%mes 29
	\stemDown es8\( bes'16 es \change Staff=upper g8\) \change Staff=lower d\( bes16 f d8\) |
	c8\( aes'16 c \change Staff=upper es8\) \change Staff=lower bes,\( g'16 des' \change Staff=upper e!8\) |
	\change Staff=lower aes,,8\( f'16 c' \change Staff=upper f8\) \change Staff=lower a,,!\( es'16 f \change Staff=upper c'8\) |
	\phrasingSlurDown
	\change Staff=lower \stemUp bes,,8\( bes'16 f' \change Staff=upper \stemDown \tieNeutral <aes bes>8\) ~  <aes bes>\( <aes bes>16 \change Staff=lower \stemUp f bes,8 |
%mes 33
	\voiceOne << {es,8\) b'8\rest b8\rest}
	\context Voice = "1" { \voiceTwo  \change Staff=upper \phrasingSlurDown \stemDown g''8\( \change Staff=lower \stemUp es16 bes g8\)
	\oneVoice } >>
	\stemDown es8\( bes'16 es \change Staff=upper  g8\) |
	\change Staff=upper \stemDown bes8\( g16 \change Staff=lower \stemDown es bes8\) <es, g>\( bes'16 es \change Staff=upper \stemDown g8\) |
	\change Staff=lower \stemDown es,8\( aes16 c aes'8\) \change Staff=upper \stemDown \phrasingSlurDown c\( aes16 es \change Staff=lower \stemUp c8\) |
	<<{\phrasingSlurUp \stemUp f,8[\( aes16 bes \change Staff=upper \stemDown d8]\) \phrasingSlurDown f\( \change Staff=lower \stemUp 
	d16 bes aes8\) | } 
	\\{\stemDown es2.| }>>
%mes 37
	\phrasingSlurUp \stemDown es8\( bes'16 es \change Staff=upper g8\) \change Staff=lower des,\( g16 bes \change Staff=upper fes'8\) |
	\change Staff=lower c,8\( aes'16 c \change Staff=upper es8\) \change Staff=lower bes,\( g'16 des' \change Staff=upper e!8\) |
	\phrasingSlurDown \change Staff=lower aes,,8\( f'16 c' \change Staff=upper f8\) \change Staff=lower \stemUp bes,,,8\( bes'16 f' \change Staff=upper \stemDown < as bes >8\) |
  \change Staff=lower \stemNeutral es,8\( bes'16 es \change Staff=upper \stemDown  g8\) bes8\( g16 \change Staff=lower \stemUp es bes8\) |

	\bar "||"
%mes 41
	\key g \minor
	\voiceOne \phrasingSlurUp
	<< { r8 d4 r8 d4 |
	r8 d8\( c\)~ c16\( d es8( d)\) |
	r8 d4 r8 d4 |
	r8 d8\( c\)~ c16\( d es8( d)\) |
%mes45
	r8 a4 r8 a4 |
	r8 a8\( g\)~ g16\( a bes8( a)\) |
	r8 a4 r8 a4 |
	r8 a8\( g\)~ g16\( a bes8( a)\) |
%mes 49
	r8 d4 r8 d4 |
	r8 d8\( c\)~ c16\( d es8( d)\) |
	r8 d4 r8 d4 |
	r8 d8\( c\)~ c16\( d es8( d)\) |
     }
	\context Voice = "1" { \voiceTwo \phrasingSlurDown
	s8 g,8\( d\) s8 g\( d\)
	s8 g8\( c,\) s8 d\( g\)
	s8 g8\( d\) s8 g\( d\)
	s8 g8\( c,\) s8 d\( g\)

	s8 d8\( a\) s8 d\( a\)
	s8 d8\( g,\) s8 a\( d\)
	s8 d8\( a\) s8 d\( a\)
	s8 d8\( g,\) s8 a\( d\)

	s8 g8\( d\) s8 g\( d\)
	s8 g8\( c,\) s8 d\( g\)
	s8 g8\( d\) s8 g\( d\)
	s8 g8\( c,\) s8 d\( g\)
	\oneVoice
	}
	>>
%mes 53
	\bar "||"  \key es \major 
	\override Staff.NoteCollision #'merge-differently-dotted = ##t
	\stemDown  \phrasingSlurDown
	\once\override PhrasingSlur  #'control-points =
	    #'((0.5 . 3.2) (1 . 5) (9.6 . 10) (16.6 . 3.5))
	es'8\( bes'16 es g8~ g es16 bes es,8\)~ |
	\once\override PhrasingSlur  #'control-points =
	    #'((0.5 . 3.2) (1 . 5) (9.6 . 10) (16.6 . 3.5))
	es8\( bes'16 es g8~ g es16 bes es,8\)~ |
	es8\( aes16 es' \change Staff=upper \tieDown aes8\) ~  aes\( \change Staff=lower es16 aes, \tieDown es8\) ~ |
	\voiceOne
	<< { \stemDown es2.| } \context Voice = "1" { \voiceTwo
      \phrasingSlurUp \stemUp f8[\( aes16 d \change Staff=upper \stemDown \tieDown f8]\)~ \phrasingSlurDown f\( \change Staff=lower \stemUp d16 aes f8\) |} >>
	\stemDown es8\( bes'16 es \change Staff=upper g8\) \change Staff=lower d\( bes16 f d8\) |
%mes 58
	c8\( aes'16 c \change Staff=upper es8\) \change Staff=lower bes,\( g'16 des' \change Staff=upper e!8\) |
	\change Staff=lower aes,,8\( f'16 c' \change Staff=upper f8\) \change Staff=lower a,,!\( es'16 f \change Staff=upper c'8\) |
	\phrasingSlurDown \change Staff=lower \stemUp bes,,8\( bes'16 f' \change Staff=upper \stemDown \tieNeutral <aes bes>8\) ~  <aes bes>\( <aes bes>16 \change Staff=lower \stemUp f bes,8 |

	\voiceOne << {es,8\) b'8\rest b8\rest}
	\context Voice = "1" { \voiceTwo  \change Staff=upper \phrasingSlurDown \stemDown g''8\( \change Staff=lower \stemUp es16 bes g8\)
	\oneVoice } >>

	\stemDown es8\( bes'16 es \change Staff=upper  g8\) |
	\change Staff=upper \stemDown bes8\( g16 \change Staff=lower \stemDown es bes8\) <es, g>\( bes'16 es \change Staff=upper \stemDown g8\) |
%mes 63
	\change Staff=lower \stemDown es,8\( aes16 c aes'8\) \change Staff=upper \stemDown \phrasingSlurDown c\( aes16 es \change Staff=lower \stemUp c8\) |
	<<{\phrasingSlurUp \stemUp f,8[\( aes16 bes \change Staff=upper \stemDown d8]\) \phrasingSlurDown f\( \change Staff=lower \stemUp 
	d16 bes aes8\) | } 
	\\{\stemDown es2. | }>>
	\phrasingSlurUp \stemDown es8\( bes'16 es \change Staff=upper g8\) \change Staff=lower des,\( g16 bes \change Staff=upper fes'8\) |
	\change Staff=lower c,8\( aes'16 c \change Staff=upper es8\) \change Staff=lower bes,\( g'16 des' \change Staff=upper e!8\) |
	\phrasingSlurDown \change Staff=lower aes,,8\( f'16 c' \change Staff=upper f8\) \change Staff=lower \stemUp bes,,,8\( bes'16 f' \change Staff=upper \stemDown < as bes >8\) |
%mes 68
	\change Staff=lower \stemNeutral es,8\( bes'16 es \change Staff=upper \stemDown  g8\) bes8\( g16 \change Staff=lower \stemUp es bes8\) |
	\bar "||"

	\stemDown d8\( f16 bes d8~ d8 d16 bes f8\) |
	c8\( f16 a! c8~ c8 a16 f bes,8\) |
	a!8\( c16 f c'8\) \stemUp f,,8\( f'16 a! \change Staff=upper \stemDown  es'8\) |
	\change Staff=lower \stemDown bes,8\( f'16 a! f'8~ f8 f16 bes, f8\) |
%mes 73
	d8\( f16 bes d8\) f8\( d16 b! f8\) |
	\voiceOne
	<< { \stemDown 
	\override Staff.NoteCollision #'merge-differently-dotted = ##t
	 es4. e! |
	f f4 f8\noBeam |
	bes,4. d4\rest d8\rest |
     }
	\context Voice = "1" { \voiceTwo \phrasingSlurDown
	\stemUp \override Staff.NoteCollision #'merge-differently-dotted = ##t
	es8\( g16 c \change Staff=upper \stemDown g'8\) \change Staff=lower \stemUp e,!8\( g16 cis \change Staff=upper \stemDown g'8\) |
     \change Staff=lower \phrasingSlurUp \stemUp <bes, d>8\( <a! cis> <bes d> <d f> <c! es> c\) |
	\phrasingSlurDown bes,8\( f'16 bes \change Staff=upper \stemDown d8\) aes'8\( f16 d \change Staff=lower \stemUp bes8\) |
	\oneVoice
	}
	>>
%mes 77
	\once\override PhrasingSlur  #'control-points =
	    #'((0.5 . 3.2) (1 . 5) (9.6 . 10) (16.6 . 4.6))
	es,8\( bes'16 es g8~ g g16 es bes8\) |
	es,8\( bes'16 es \change Staff=upper \stemDown g8 bes g16 \change Staff=lower es16 bes8\) |
	es,8\( aes16 c es8\)  \change Staff=upper aes8\( \change Staff=lower es16 c aes8\) |
	\voiceOne
	<< {\stemDown es2. | } 
	\context Voice = "1" { \voiceTwo
       \phrasingSlurUp \stemUp f8\([ aes16 d \change Staff=upper \stemDown\tieDown f8]\)~ \phrasingSlurDown f\( \change Staff=lower \stemUp d16 aes f8\) | } 
	>>
	\stemDown es8\( bes'16 es \change Staff=upper g8\) \change Staff=lower d\( bes16 f d8\) |
%mes 82
	c8\( aes'16 c \change Staff=upper es8\) \change Staff=lower bes,\( g'16 des' \change Staff=upper e!8\) |
	\change Staff=lower aes,,8\( f'16 c' \change Staff=upper f8\) \change Staff=lower a,,!\( es'16 f \change Staff=upper c'8\) |
	\phrasingSlurDown \change Staff=lower \stemUp bes,,8\( bes'16 f' \change Staff=upper \stemDown \tieNeutral <aes bes>8\) ~ <aes bes>8\( <aes bes>16 \change Staff=lower \stemUp f bes,8\) |
	\voiceOne << { es,8 b'8\rest b8\rest }
	\context Voice = "1" { \voiceTwo  \change Staff=upper \phrasingSlurDown \stemDown g''8\( \change Staff=lower \stemUp es16 bes g8\)
	\oneVoice } 
	>>
	\stemDown es8\( bes'16 es \change Staff=upper  g8\) |
	\change Staff=upper \stemDown bes8\( g16 \change Staff=lower \stemDown es bes8\) <es, g>\( bes'16 es \change Staff=upper \stemDown g8\) |
%mes87
	\change Staff=lower \stemDown es,8\( aes16 c aes'8\) \change Staff=upper \stemDown \phrasingSlurDown c\( aes16 es \change Staff=lower \stemUp c8\) |
	<<{\phrasingSlurUp \stemUp f,8[\( aes16 bes \change Staff=upper \stemDown d8]\) \phrasingSlurDown f\( \change Staff=lower \stemUp d16 bes aes8\) |} 
	\\{\stemDown es2.| }>>
	\phrasingSlurUp \stemDown es8\( bes'16 es \change Staff=upper g8\) \change Staff=lower des,\( g16 bes \change Staff=upper fes'8\) |
	\change Staff=lower c,8\( aes'16 c \change Staff=upper es8\) \change Staff=lower bes,\( g'16 des' \change Staff=upper e!8\) |
	\phrasingSlurDown \change Staff=lower aes,,8\( f'16 c' \change Staff=upper f8\) \change Staff=lower \stemUp bes,,,8\( bes'16 f' \change Staff=upper \stemDown < as bes >8\) |

%mes 92: coda
	\change Staff=lower \voiceOne << {\phrasingSlurDown \stemUp es,8\( bes'16 es \change Staff=upper \stemDown  g8\) des'8\( bes16 g \change Staff=lower \stemUp es8\) |
	\change Staff=upper \clef bass \stemDown c'8\( aes16 es \change Staff=lower \stemUp c8\) \change Staff=upper \stemDown bes'8\( g16 es \change Staff=lower \stemUp bes8\) ~ |
	bes8. bes16 bes8 ~ bes8. bes16 bes8 | 
	\change Staff=upper \stemDown g'4 \change Staff=lower \phrasingSlurUp 
\stemUp g8\( aes4 bes8 |
%mes 96
    <aes ces>4.\arpeggio\) <f bes d>4\( \change Staff=upper \stemDown aes'8\) |
	s4. \stemUp bes8\( g e8\rest\) |
  g8\( es16 bes c8\rest\) es8\(\change Staff=upper \stemUp bes16 g c8\rest\) |
	s2. |
     }
% polyphonie: mes 92
	\context Voice = "1" {\voiceTwo 
	\stemDown \override PianoStaff.NoteCollision #'merge-differently-dotted = ##t es,,4. \change Staff=upper \stemUp des'' | %exception
	\change Staff=lower \stemDown es,,4. es4. |
	es4. ~ es4. |
	es4. es'4. |
% plyphonie: mes 96
	es4.\arpeggio es4. |
	es8 bes'16 es \change Staff=upper \stemDown g8 s8 g16 \change Staff=lower \stemUp es16 bes8 |
	\once \override TextScript #'extra-offset = #'(0 . 1.8)
	s4^\markup { \italic "dim." } g8 s4 es8 |
	es,8  d'\rest d\rest \stemDown <es bes'>4.^\fermata |
	\oneVoice } >>

	\bar "|."
	
}


     dynamics = {

       s2.\p
	s2.*15 \bar "||"
	s2.*4
	s8\< s2 s8\!
	s2.*19 \bar "||"
	s2.\p
	s2.*3
	s2.\pp
	s2.*3
	s2.\mf
	s2.
	s2.\pp
	s2. \bar "||"
	s2.\p
	s2.*15 \bar "||"
	s2.*4
	s8\< s2 s8\!
	s2.*20
	s8\< s8 s8\! s8\> s8 s8\!
	s2.
	s8 s8\< s8\! s8 s8 s8\>
	s8\! s4 s4.
	s2.
	s4.\once \override DynamicText #'extra-offset = #'(0 . 3) s4.\pp 

	\bar "|."
     }
         

     
     
     \score {
       \context PianoStaff <<
   \set PianoStaff.instrument = \markup{ \fontsize #6 {"16. "} \hspace #1.0 }
        \override Score.MetronomeMark #'transparent = ##t
	\set PianoStaff.connectArpeggios = ##t
         \context Staff=upper <<
	 \context Voice=Cinq \melodie
	 \context Voice=TroisQuatre \middle 
	>>

         \context Dynamics=dynamics \dynamics
         \context Staff=lower <<
           \clef bass
	\context Voice=UnDeux \basse
         >>

       >>
       \layout {
	raggedlast = ##f
         \context {
           \type "Engraver_group_engraver"
           \name Dynamics
           \alias Voice % So that \cresc works, for example.
           \consists "Output_property_engraver"
     
           minimumVerticalExtent = #'(5 . -40)
   
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
           \override VerticalAlignment #'forced-distance = #5.4
         }
       }
     }
     \score {
       \context PianoStaff <<
         \context Staff=upper  \melodie \dynamics
	                       \middle \dynamics

         \context Staff=lower << 
	\basse \dynamics
	>>

       >>
       \midi {
	\tempo 4=76
         \context {
           \type "Performer_group_performer"
           \name Dynamics
         }
	
         \context {
           \PianoStaff
           \accepts Dynamics
         }
       }
     }

