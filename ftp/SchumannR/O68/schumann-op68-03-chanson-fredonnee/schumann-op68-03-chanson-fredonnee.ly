 \version "2.10.16"

 \paper { between-system-padding = #1
	ragged-bottom=##f
	ragged-last-bottom=##f
	}

     \header {
       title = "Album pour la jeunesse"
       subsubtitle = "-----"
       composer = "Robert Schumann (1810-1856)"
       opus = "Opus 68 N°3"
       instrument = "Chanson fredonnée"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
      mutopiatitle = "Album pour la jeunesse - 3.Chanson fredonnée "
       mutopiacomposer = "SchumannR"
       mutopiaopus = "O 68 n°3 "
       mutopiainstrument = "Piano"
       date = "1848"
       source = "Peters"
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       lastupdated = "2006/Jun/20"



 footer = "Mutopia-2007/02/11-651"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
     }

     upper = \relative c'' {
       \clef treble
       \key c \major
       \time 4/4
	\override TextScript #'extra-offset = #'(-5 . 2)
	\once \override Fingering #'extra-offset = #'(-0.7 . 0)
        e4^3^\markup { \bold "pas vite" }( d c d |
	e f g2) |
	\once \override Fingering #'extra-offset = #'(-0.7 . 0)
	f4^4( g e f |
	d f c d) |
	\once \override Fingering #'extra-offset = #'(-0.7 . 0)
	e^3( d c d
	 e f g2) |
	\once \override Fingering #'extra-offset = #'(-0.7 . 0)
	f4^4( g e f |
	d2 c4) r \bar"||"
	\voiceOne
	<<
	{
	\once \override Fingering #'extra-offset = #'(-0.7 . -1.2)
	b4^5( a g a |
	\once \override Fingering #'extra-offset = #'(-0.7 . -2.2)
	b^5
	\once \override Fingering #'extra-offset = #'(-0.7 . -2.2)
	c^4 d2) |
	\once \override Fingering #'extra-offset = #'(-0.7 . -1.2)
	c4^4( d b c |
	\once \override Fingering #'extra-offset = #'(-0.7 . -2.4)
	a^3
	\once \override Fingering #'extra-offset = #'(-0.7 . -2.2)
	c^5 
	\once \override Fingering #'extra-offset = #'(-0.7 . -2.2)
	g^3 a) |
	\once \override Fingering #'extra-offset = #'(-0.7 . -1.2)
	b^5( a g a |
	\once \override Fingering #'extra-offset = #'(-0.7 . -2.2)
	b^5 
	\once \override Fingering #'extra-offset = #'(-0.7 . -2.2)
	c^3 d e |
	c d b c) | }
	\context Voice="1" { \voiceTwo
	b8 d, a' d, g d a' d, |
	b'
	\once \override Fingering #'extra-offset = #'(0.3 . 2.2)
	g_1 c g d' g, fis g |
	c g d' a b g c g |
	a d, c' d, g d a' d, |
	b' d, a' d, g d a' d, |
	b' g c g d' g, e' g, |
	c g d' 
	\once \override Fingering #'extra-offset = #'(0.7 . 2)
	fis,_1 b 
	\once \override Fingering #'extra-offset = #'(0.8 . 2.2)
	g_1 c g|
	\oneVoice
	}
	>>

	<a fis>2( \stemDown 
	\once \override Fingering #'extra-offset = #'(0 . -0.3)
	g8^1) b c d |
	e4( d c d |
	e f g2) |
	f4( g e f |
	d f c d) |
	e( d c d |
	e f g a) |
	f( g e f |
	d2 c4) a\rest |
     }
     
     lower = \relative c' {
       \clef treble
       \key c \major
       \time 4/4

	\once \override Fingering #'extra-offset = #'(-1.7 . 2.2)
	c8_3( g' 
	\once \override Fingering #'extra-offset = #'(-1.8 . 2.2)
	b,_4 g' 
	\once \override Fingering #'extra-offset = #'(-1.8 . 2.2)
	a,_5 g' b, g' |
	\once \override Fingering #'extra-offset = #'(-1.8 . 2.2)
	c,_4 g' 
	\once \override Fingering #'extra-offset = #'(-1.4 . 2)	
	d_3 g 
	\once \override Fingering #'extra-offset = #'(-1.4 . 1.8)	
	e_2 g e g) |
	\once \override Fingering #'extra-offset = #'(-1.4 . 1.3)
	d_3( g 
	\once \override Fingering #'extra-offset = #'(-1.6 . 2.2)	
	b,_5 g' 
	\once \override Fingering #'extra-offset = #'(-1.5 . 2.2)
	c,_3 g' 
	\once \override Fingering #'extra-offset = #'(-1.5 . 2.2)
	a,_5 g' |
	\once \override Fingering #'extra-offset = #'(-1.6 . 2.2)
	b,_4 g' 
	\once \override Fingering #'extra-offset = #'(-0.6 . 2.2)
	d_2 g 
	\once \override Fingering #'extra-offset = #'(-1.7 . 2)
	a,_5 g' 
	\once \override Fingering #'extra-offset = #'(-1.7 . 2)
	b,_4 g') |
	\once \override Fingering #'extra-offset = #'(-1.7 . 1.7)
	c,_3( g' b, g' a, g' b, g' |
	c, g' d g e g e g) |
	d( g b, g' c, g' a, g' |
	b, g' b, f' 
	\once \override Fingering #'extra-offset = #'(1.7 . -6)
	<c^2 e^4>4) r \bar"||"
	\clef bass
	\once \override Fingering #'extra-offset = #'(-0.7 . 0)
	g4^3( fis e fis |
	g a b2) |
	e,4^4( fis g e |
	fis a e fis) |
	\once \override Fingering #'extra-offset = #'(-0.5 . -0.4)
	g^2( fis e fis |
	g a 
	\once \override Fingering #'extra-offset = #'(-1.5 . -2.3)
	b^2 c |
	\once \override Fingering #'extra-offset = #'(1.5 . -1.9)
	a^2 b 
	\once \override Fingering #'extra-offset = #'(-1.5 . -2)
	g^2 
	\once \override Fingering #'extra-offset = #'(0 . -0.2)
	e^4) |
	<d c'>2( <g b>8) g( a b) |
	\clef treble
	\once \override Fingering #'extra-offset = #'(-1.7 . 2.2)
	c8_3( g' b, g' a, g' b, g' |
	c, g' d g e g e g) |
	d( g b, g' c, g' a, g' |
	b, g' d g a, g' b, g') |
	c,( g' b, g' a, g' b, g' |
	c, g' d g e g f g) |
	d( g b, g' c, g' a, g' |
	b, g' b, f' <c e>4) b'\rest \bar "|."
     }
     
     dynamics = {
       s8\p s8 s4 s2 s1*23
     }
     
%     pedal = {
%     }
     
     \score {
       \context PianoStaff <<
   \set PianoStaff.instrumentName = \markup{ \fontsize #4 { "3." } \hspace #1.0
}
         \context Staff=upper \upper
         \context Dynamics=dynamics \dynamics
         \context Staff=lower <<
           \clef bass
           \lower
         >>
%         \context Dynamics=pedal \pedal
       >>
       \layout {
         \context {
           \type "Engraver_group"
           \name Dynamics
           \alias Voice % So that \cresc works, for example.
           \consists "Output_property_engraver"
     
           \override VerticalAxisGroup #'minimum-Y-extent = #'(-5 . 5)
%           pedalSustainStrings = #'("Ped." "*Ped." "*")
%           pedalUnaCordaStrings = #'("una corda" "" "tre corde")
     
%           \consists "Piano_pedal_engraver"
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
           \override VerticalAlignment #'forced-distance = #4.5
         }
       }
     }
     \score {
       \context PianoStaff <<
         \context Staff=upper << \upper \dynamics >>
         \context Staff=lower << \lower \dynamics >>
%         \context Dynamics=pedal \pedal
       >>
       \midi {
	\context {  \Score
	tempoWholesPerMinute = #(ly:make-moment 70 4)
	     }

         \context {
           \type "Performer_group"
           \name Dynamics
%           \consists "Piano_pedal_performer"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
         }
       }
     }
