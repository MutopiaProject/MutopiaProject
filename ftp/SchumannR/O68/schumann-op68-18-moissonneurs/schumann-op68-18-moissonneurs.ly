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
       opus = "Opus 68 n°18"
       instrument = "Chant des moissonneurs"
       copyright = "Creative Commons Attribution-ShareAlike 2.5" 
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
        mutopiatitle = "Album pour la jeunesse - 18.Chant des moissonneurs "
       mutopiacomposer = "SchumannR"
       mutopiaopus = "O 68 n°18 "
       mutopiainstrument = "Piano"
       date = "1848"
       source = "Peters"
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       lastupdated = "2006/Jun/25"



 footer = "Mutopia-2007/02/11-663"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
     }

     upper = \relative c'' {
       \clef treble
       \key c \major
       \time 6/8
	\override TextScript #'extra-offset = #'(-1 . 2)	
	\phrasingSlurUp
	\repeat volta 2 {
% attacher head head les slurs des acciaccatura? (pour update)

	\voiceOne
	<< {g8\(^\markup { \bold "Pas très vite" } c b a d c
	\acciaccatura { \slurUp c } b a b c4 e8\)
	g,8\( c b a d c
	\acciaccatura { \slurUp c } b a b c4\) b8\rest	
	}
	\context Voice = "1" { \voiceTwo
	e,4. f_> ~ 
	f e
	e f_> ~
	f e4 s8
	\oneVoice
	}
	>>
	\break       
     }

	\repeat volta 2 {

	\voiceOne
	<< {  
	b'4.\( c^> ~
	c4 a8 g4\) r8
	b4.\( c^> ~
	c4 a8 g4\) b8\rest

	}
	\context Voice = "1" { \voiceTwo
	d,8 g fis e a g
	fis e fis g4( b8)
	d,8 g fis e a g
	fis e fis g4 s8
	\oneVoice
	}
	>>
	\break	
     }

	\voiceOne
	<< {g8\( c b a d c
	\acciaccatura { \slurUp c} b a b c4 e8\)
	g,8\( c b a d c
	\acciaccatura { \slurUp c} b a b c4\)	
	}
	\context Voice = "1" { \voiceTwo
	e,4. f_> ~ 
	f e
	e f_> ~
	f e4
	\oneVoice
	}
	>>
	\bar "||"
	\break
	c8\(
	f_> a d c a f
	e g d c d e
	f a d c a f
	e g d c4\) c8\(
	\break
	f_> a d c a f
	e g d c d e
	f a d c a f
	e g d c4.\) \bar "||"

	\voiceOne
	<< {c'8\( f e d g f
	\acciaccatura { \slurUp f} e d e f4 a8\)
	c,8\( f e d g f
	\acciaccatura { \slurUp f} e d e f4\) b,8\rest	
	}
	\context Voice = "1" { \voiceTwo
	a4. bes_> ~ 
	bes a
	a bes_> ~
	bes a4 s8
	\oneVoice
	}
	>>

	\voiceOne
	<< {  
	e'4.\( f^> ~
	f4 d8 c4\) r8
	e4.\( f^> ~
	f4 d8 c4\) g8_.

	}
	\context Voice = "1" { \voiceTwo
	g8 c b! a d c
	b a b  c4( e8)
	g,8 c b a d c
	b a b c4 s8
	\oneVoice
	}
	>>
	\stemDown
	<g d'>8^. <c e>^. <d f>^. <c e>^. <g d'>^. <e c'>^.
	<b' d> <a c>^. <b d>^. c^. b8\rest g^.
	<g d'>8^. <c e>^. <d f>^. <c e>^. <g d'>^. <e c'>^.
	<b' d>^. <a c>^. <b d>^. c^. b8\rest c^.
	b-. c-. d-. c-. d-. dis-.
	e-. f-. fis-. g-. b,8\rest \stemUp <f! b>_.
	<e c'>_. b'8\rest b8\rest <e, c'>_. b'8\rest b8\rest
	\stemDown <e c'>^. b8\rest b8\rest    \bar "|."
	
 
  }
     
     lower = \relative c {
       \clef bass
       \key c \major
       \time 6/8
	\phrasingSlurUp	

	\repeat volta 2 {

	<c g'>4. <c g'>~
	<c g'> <c g'>
	<c g'> <c g'>~
	<c g'> <c g'>4 r8
}

	\repeat volta 2 {
	g'4.\( c,\)
	d8\( d' c b a g\)
	g4.\( c,\)
	d8\( d' c b a g\) 
	}
	\break
	<c, g'>4. <c g'>~
	<c g'> <c g'>
	<c g'> <c g'>~
	<c g'> <c g'>4
	\bar "||"
	\break
	c8\(
	f^> a d c a f
	e g d c d e
	f a d c a f
	e g d c4\) 
	\phrasingSlurUp c8\(
	\break
	f^> a d c a f
	e g d c d e
	f a d c a f
	e g d c d e\)
	\break
	<f c'>4. <f c'>~
	<f c'> <f c'>
	<f c'> <f c'>~
	<f c'> <f c'>4 r8
	\break
	c'4.\( f,\)
	g8\( g' f e d c\)
	c4.\( f,\)
	g8\( g' f e d c\)
	\break
	<g d'>8^. r8 r8 <c e>^. r8 r8
	r8 r8 <g d'>^. <c e>^. r8 r8
	<g d'>^. r8 r8 <c e>^. r8 r8
	r8 r8 <g d'>^. <c e>^. r8 r8
	\break
	r2.
	r4 r8 r8 r8 g^.
	c-. r8 r8 c-. r8 r8
	c,_. r8 r8 \bar "|."	

     }
     
     dynamics = {

        \repeat volta 2 {

	s2.\p
       s2.*3  }

	\repeat volta 2 {
	s2.*4
	}
	s2.\p
	s2.*2
	s4. s4\break
	s8\f
	s2.*8
	s2.\p
	s2.*7
	s2.\p
	s2.*3
	s4. s4.\<
	s4 s4 \!s8 s8\p
	s2.
	s4.
     }
     
     \score {
       \context PianoStaff <<
   \set PianoStaff.instrumentName = \markup{ \fontsize #6 {"18. "} \hspace #1.0
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
           \override DynamicText #'extra-offset = #'(0 . 2)
           \override Hairpin #'extra-offset = #'(0 . 2.5)
     
           \consists "Skip_event_swallow_translator"
     
           \consists "Axis_group_engraver"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
           \override VerticalAlignment #'forced-distance = #5.6
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
	tempoWholesPerMinute = #(ly:make-moment 130 4)
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

