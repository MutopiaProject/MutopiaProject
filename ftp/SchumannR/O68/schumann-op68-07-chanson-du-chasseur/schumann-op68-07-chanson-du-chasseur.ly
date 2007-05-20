 \version "2.10.20"

 \paper { between-system-padding = #1
	ragged-bottom=##f
	ragged-last-bottom=##f
	}

     \header {
       title = "Album pour la jeunesse"
       subtitle = "40 (43) pièces de piano"
       subsubtitle = "-----"
       composer = "Robert Schumann (1810-1856)"
       opus = "Opus 68 n°7"
       instrument = "Chanson du chasseur"
       copyright = "Creative Commons Attribution-ShareAlike 3.0"
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
      mutopiatitle = "Album pour la jeunesse - 7.Chanson du chasseur "
       mutopiacomposer = "SchumannR"
       mutopiaopus = "O 68 n°7 "
       mutopiainstrument = "Piano"
       date = "1848"
       source = "Peters"
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 3.0"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       lastupdated = "2006/Jun/20"



 footer = "Mutopia-2007/05/20-691"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
     }

     upper = \relative c'' {
       \clef treble
       \key f \major
       \time 6/8
	\partial 8

	\once \override TextScript #'extra-offset = #'(-6 . 2)
	\repeat volta 2 {
	c,8^\markup { \bold "Avec fraîcheur et gaieté" }
	f4^> c8 f4^> c8 
	f4.^> ~ f4 c8_.
	f^. a^. c^. f^. c^. d^.
	c_. a_. f_. <e g>4 c8
\break
	f4^> c8 f4^> c8 
	f4.^> ~ f4 f8_. 
	a^. c^. f^. a^. f^. g^.
	f^. d^. <b! e>^. c4 
     }
\break
	\repeat volta 2 {
	c8
	g'4 c,8 g'4 c,8
	g'4. ~ g4 c,,8_.
	<e g>_. <e g>_. c_. f_. f_. c_.
	<e bes'>_. <e bes'>_. c_. <f a>4 a8
\break
	<cis e>4 a8 <cis e>4 a8
	<cis e>4. ~ <cis e>4 a,8_.
	<cis e>_. <cis e>_. a_. d_. d_. a_.
	<cis g'>_. <cis g'>_. a_. <d f>4 f8_.
\break
	bes^. d^. f^. bes^. f^. g^.
	f^. d^. bes^. \acciaccatura a8 <e g>4^^ f8_.
	bes^. d^. f^. bes^. f^. g^.
	f^. d^. bes^. \acciaccatura a8 <e g>4^^  <e c'>8
\break
	<f f'>4 <e c'>8 <f f'>4 <cis a'>8
	<d d'>4 <cis a'>8 <d d'>4 <d bes'>8
	<e g>4.^^ <e c'>4.^^
	<f a>4.^^ r8 r8 <e c'>8
\break
	<<{f'4 c8} \\{f,8 g4^^}>> <f f'>4 <cis a'>8
	<d d'>4 <cis a'>8 <d d'>4 <d bes'>8
	<e g>4.^^ <e c'>4.^^
	f4.^^ b8\rest b8\rest
     }
\break

 
     }
     
     lower = \relative c {
       \clef bass
       \key f \major
       \time 6/8
	\partial 8

	\repeat volta 2 {
	c8
	f4^> c8 f4^> c8 
	f4.^> ~ f4 c8_.
	f^. a^. c^. f^. c^. d^.
	c^. a^. f^. c'4 c,8
	f4^> c8 f4^> c8 
	f4.^> ~ f4 f8_. 
	a^. c^. f^. \clef treble a_. f_. g_.
	f_. d_. <g, d'>_. <c e>4

}

	\repeat volta 2 {
	c8
	g'4 c,8 g'4 c,8
	g'4. ~ g4 \clef bass c,,8_.
	bes'^. bes^. c,^. a'^. a^. c,^.
	g'^. g^. c,^. f4 a8
	<cis e>4 a8 <cis e>4 a8
	<cis e>4. ~ <cis e>4 a,8_.
	g'^. g^. a,^. f'^. f^. a,^.
	e'^. e^. a,^. d4 f8
	<bes d>4^> f8 <bes d>4^> f8
	<bes d>4^> f8 <bes c>4^> f8
	<bes d>4^> f8 <bes d>4^> f8
	<bes d>4^> f8 <bes c>4^> <bes c>8
	<a c>4 <bes c>8 <a c>4 <g a>8
	<f a>4 <g a>8 <f a>4 <bes, g'>8
	<c g'>4.^^ <c g'>4^^ c8_.
	f8^.^^ a^. c^. f^. a,^. <bes c>^.
	<a c>4 <bes c>8 <a c>4 <g a>8
	<f a>4 <g a>8 <f a>4 <bes, g'>8
	<c g'>4.^^ <c g'>4^^ c8_.
	f8^.^^ a^. c^. f^. r8
      }
  }
     
     dynamics = {

       s8\f
	s2.*3
	s2 s8 s8\f
	s2.*3
	s2 s8    %\bar ":|"
	s8\ff
	s2.
	s2 s8 s8\p
	s2.
	s2 s8 s8\ff
	s2.
	s2 s8 \once \override DynamicText #'extra-offset = #'(0.2 . 1.2) s8\p
	s2.
	s2 s8 s8\f
	s2.*12    %\bar ":|" 
     }
     
     pedal = {
       s8\sustainDown 
	s2. 
	s2\sustainUp s4  
	s2.
	s2 s8 s8\sustainDown 
	s2.
	s2\sustainUp s4 
	s2.
	s2  s8 %\bar
	s8\sustainDown 
	s2.
	s2\sustainUp s4
	s2.
	s2 s8 s8\sustainDown
	s2.
	s2\sustainUp s4
	s2.*14    %\bar
     }
     
     \score {
       \context PianoStaff <<
   \set PianoStaff.instrumentName = \markup { \fontsize #6 {"7. "} \hspace #1.0 }
         \context Staff=upper \upper
         \context Dynamics=dynamics \dynamics
         \context Staff=lower <<
           \clef bass
           \lower
         >>
         \context Dynamics=pedal \pedal
       >>
       \layout {
         \context {
           \type "Engraver_group"
           \name Dynamics
           \alias Voice % So that \cresc works, for example.
           \consists "Output_property_engraver"
     
           \override VerticalAxisGroup #'minimum-Y-extent = #'(-5 . 5)
           \consists "Piano_pedal_engraver"
           \consists "Script_engraver"
           \consists "Dynamic_engraver"
           \consists "Text_engraver"
     
           \override TextScript #'font-size = #2
           \override TextScript #'font-shape = #'italic
           \override DynamicText #'extra-offset = #'(0.2 . 2)
           \override Hairpin #'extra-offset = #'(0 . 2.5)
     
           \consists "Skip_event_swallow_translator"
     
           \consists "Axis_group_engraver"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
           \override VerticalAlignment #'forced-distance = #5.8
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
	tempoWholesPerMinute = #(ly:make-moment 140 4)
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
