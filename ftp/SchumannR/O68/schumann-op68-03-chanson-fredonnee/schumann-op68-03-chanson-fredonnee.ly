\version "2.12.3"

 \paper{ between-system-padding = #0
	ragged-bottom=##f
	ragged-last-bottom=##f	
	#(define page-breaking ly:minimal-breaking)
	}

 \header {
	title = "Album pour la jeunesse"
	subtitle = "40 (43) pièces de piano"
	subsubtitle = "-----"
	composer = "Robert Schumann (1810-1856)"
	opus = "Opus 68 N°3"
	instrument = "Chanson fredonnée"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
       mutopiatitle = "Album pour la jeunesse - 3.Chanson fredonnée"
       mutopiacomposer = "SchumannR"
       mutopiaopus = "O 68 n°3"
       mutopiainstrument = "Piano"
       date = "1848"
       source = "Peters"
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 3.0"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       lastupdated = "2006/Jun/20"



 footer = "Mutopia-2011/09/18-651"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2011. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
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
	e^3( d c d |
	 e f g2) |
	\once \override Fingering #'extra-offset = #'(-0.7 . 0)
	f4^4( g e f |
	d2 c4) r |
	\bar"||"
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
	b, g' g, f' <c e>4) b'\rest 
	\bar "|."
     }


dynamics = {
       s8\p s8 s4 s2 s1*23
     }

pedal = {
     }


\score {
	\new PianoStaff = "PianoStaff_pf" <<
	  \set PianoStaff.instrumentName = \markup{ \fontsize #6 {"3. "} \hspace #1.0 }
	  \new Staff = "Staff_pfUpper" \upper
	  \new Dynamics = "Dynamics_pf" \dynamics
	  \new Staff = "Staff_pfLower" << \lower >>
%	  \new Dynamics = "pedal" \pedal
  >>

  \layout {      % define Dynamics context
    \context {
      \type "Engraver_group"
      \name Dynamics
      \alias Voice
      \consists "Output_property_engraver"
%      \consists "Piano_pedal_engraver"
      \consists "Script_engraver"
      \consists "New_dynamic_engraver"
      \consists "Dynamic_align_engraver"
      \consists "Text_engraver"
      \consists "Skip_event_swallow_translator"
      \consists "Axis_group_engraver"
      pedalSustainStrings = #'("Ped." "*Ped." "*")
      pedalUnaCordaStrings = #'("una corda" "" "tre corde")
      \override DynamicLineSpanner #'Y-offset = #0
      \override TextScript #'font-size = #2
      \override TextScript #'font-shape = #'italic
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
    }
    % modify PianoStaff context to accept Dynamics context
    \context {
      \PianoStaff
      \accepts Dynamics
     }
   }
 }

\score {
	\unfoldRepeats
	\new PianoStaff = "PianoStaff_pf" <<
	\new Staff = "Staff_pfUpper" << \upper \dynamics \pedal >>
	\new Staff = "Staff_pfLower" << \lower \dynamics \pedal >>
	>>

  \midi {
  \context {
	tempoWholesPerMinute = #(ly:make-moment 70 4)
	   }
	 }
       }



