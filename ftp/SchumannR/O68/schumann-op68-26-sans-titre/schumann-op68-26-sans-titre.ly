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
       opus = "Opus 68 n°26"
       instrument = "* * * * *"
       copyright = "Creative Commons Attribution-ShareAlike 2.5" 
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
        mutopiatitle = "Album pour la jeunesse - 26. * * * * * "
       mutopiacomposer = "SchumannR"
       mutopiaopus = "O 68 n°26 "
       mutopiainstrument = "Piano"
       date = "1848"
       source = "Peters"
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       lastupdated = "2006/Jun/25"



 footer = "Mutopia-2007/02/11-788"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
     }

     upper = \relative c'' {
       \clef treble
       \key f \major
       \time 4/4
	\override TextScript #'extra-offset = #'(-3 . 3)	

	\repeat volta 2 {
	\partial 4
	c4^\markup { \bold "Pas vite, joliment déclamé." }( ~
	\voiceOne
	<< { 
	c8 cis d a c! bes a g)
	f2( ~ f8 e <g, d'> c)
	f4( g8 a bes4 d\espressivo
\break %mes 4
	g,2.) b4\rest
	b1\rest
     b8\rest <bes, c g'> <bes c g'> <bes c g'> <bes c g'> b'8\rest c, b'8\rest
\break %mes 7
	b8\rest  <c, f> b'8\rest <d, f> b'8\rest <d, g> b'8\rest <bes, c>
	b'8\rest <a, c f> <a c f> <bes d f> <a c f>4
     }
	\context Voice = "1" { \voiceTwo
	s1
	a8\rest <<bes c>> <<bes c>> <<bes c>> <<bes c>> a8\rest s4
	b8\rest <<f c'>> b8\rest <<c f>> b,8\rest <<bes f'>> b,8\rest <<d f>>
	b,8\rest <<c e>> <<c e>> <<d f>> <<c4 e>> s4
	s1
	s1
	s1
	s2.
	\oneVoice
	}
	>>
  }

	\repeat volta 2 {

	\voiceOne
	<< {
	a4(
	g c g f
\break %mes 10
	e f g) a8. g16
	g4( c g f)
	<<c^.( e>> <<b!^.) f'>> <<bes,^\fermata g'>> c( ~
\break %mes 13
	c8 cis d a c! bes a g) 
	f2( ~ f8 e <<g, d'>> c)
	f4( g8 a bes4 d\espressivo
\break %mes16
	g,2.) \once \override Staff.NoteCollision #'merge-differently-dotted = ##t f8. f'16
	f4( a, bes) d,8.( d'16) 
	d8\noBeam d( es a, c bes <<fis_\espressivo a>> g)

\break %mes 19
	c2( ~ c8 cis d bes
	<<f4) a>> <<f( aes d>> <<e,) g>> <<es!(~ f c'>>
	c8 cis d a c! bes a g
	<<a,2.) f'>> s4
  }
	\context Voice = "1" { \voiceTwo
	b,8\rest <<c f>>
	b,8\rest c b8\rest c b8\rest <<a d>> b8\rest <<b! d>>
	b8\rest c b8\rest b! b8\rest c c4
	b8\rest c b8\rest  <<c e>> b8\rest <<a d>> b8\rest <<b! d>>
	s1
	s1
	b8\rest <<g c>> <<g c>> <<g c>> <<g c>> b8\rest s4
	b8\rest <<f c'>> b8\rest <<c f>> b,8\rest <<bes f'>> b,8\rest <<d f>>
	b,8\rest <<c e>> <<c e>> <<d f>> <<c4 e>> f4 ~
	f8\noBeam \set followVoice = ##t
	\change Staff=lower
	fis g c, \stemUp es d c bes
	\set followVoice = ##f
	\change Staff=upper
	s1
	\stemDown
	b8\rest <<f' a>> <<f a>> <<f a>> <<f a>> b,8\rest b8\rest g'
	s1
	d2. <<bes4 e>> s2. s4
	\oneVoice
	}
	>>
    } 
 }
     
     lower = \relative c {
       \clef bass
       \key f \major
       \time 4/4

	\repeat volta 2 {
	\partial 4
	r4
	R1
	r8 <c g'> <c g'> <c g'> <c g'> r8 bes r8
	r8 a r8 es' r8 d r8 <bes g'>
	r8 <c g'> <c g'> <b! g'> <c g'>4 \stemDown c'4^\( ~
	c8 cis d a c! bes a g\)
	\grace c, f2( ~ \stemUp f8 e <bes d> c)
	\voiceOne
	<< {  \once\override PhrasingSlur  #'control-points = 
	#'((0 . 3) (0 . 4) (3 . 8) (14 . 8.9))
	f4^\( g8 a \set followVoice = ##t
	\change Staff=upper
	\once\override PhrasingSlur  #'control-points =
	#'((2.1 . -3.5) (6 . -4) (11 . -4) (17 . -9.2))
	bes4\)^\(
	\change Staff=lower
	e,4
	\set followVoice = ##f
	f2.\)
    }
	\context Voice = "1" { \voiceTwo
	b,8\rest a b8\rest d b8\rest g b8\rest c
	b8\rest f f bes f4
	\oneVoice } >>
  } % fin du repeat
	\repeat volta 2 {

	\voiceOne
	<< {
	s4
	s1
	s2. a'8. g16
	g4 s2.
	s1
	s1
	s1
	s1
	s1
	s1
	a4( d2 c8 d)
	s1
	s1
	s4 \stemUp fis,( g) c,(~
	c8 b! d c f4) 
 }
	\context Voice = "1" { \voiceTwo
	d8\rest f
	d8\rest e d8\rest <<e g>> d8\rest d d8\rest g,
	d'8\rest <<c g'>> d8\rest <<d g>> d8\rest <<e g>> f4
	d8\rest e a4 d, g,
	<<c^.( g'>> <<d^.) g>> <<e\fermata c'>> d,4\rest
	d1\rest
	d8\rest \stemUp bes bes bes bes d8\rest bes d8\rest 
	d8\rest a d8\rest es d8\rest d d8\rest <<bes g'>>
	\stemDown d8\rest <<c g'>> <<c, g'>> <<b,! g'>> <<c,4 g'>> <<f ~ a es'>>
	<<f,8\noBeam a es'>> s4. bes2
	fis_( g4 a8 bes)
	\tieUp c2 ~ c4.^( cis8
	d a c b! c g bes a!
	bes4) bes,2_( c4
	f,2.) s4
	\oneVoice
	}
	>>
   }
 }
     
     dynamics = {

	\repeat volta 2 {
	\partial 4
	s4\fp        
	s4 s4\> s4. s8\!
	s1*2
	s2. 
	\once \override DynamicText #'extra-offset = #'(1 . -6)
	s4\fp
	s1*3
	s2.
   }

	\repeat volta 2 {
	s4\mf
	s1
	s2.
	\once \override DynamicText #'extra-offset = #'(-0.7 . 1.3)
	s4\fp
	s1
	s4\> s4 s8\! s8 s4\p
	s1
	\once \override DynamicText #'extra-offset = #'(0.1 . 0.7)
	s1\fp
	s1
	s2.\once \override DynamicText #'extra-offset = #'(1 . 3)	
	s4\fp
	s1*6 
     }
  }
     
     \score {
       \context PianoStaff <<
   \set PianoStaff.instrumentName = \markup{ \fontsize #6 {"26. "} \hspace #1.0
}
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
     \score {
	\unfoldRepeats
       \context PianoStaff <<
         \context Staff=upper  \upper %\dynamics

         \context Staff=lower << \lower %\dynamics
	>>

       >>
       \midi {
	\context { \Score
	tempoWholesPerMinute = #(ly:make-moment 78 4)
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

