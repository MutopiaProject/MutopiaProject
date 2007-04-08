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
       opus = "Opus 68 n°12"
       instrument = "Le Père Fouettard."
       copyright = "Creative Commons Attribution-ShareAlike 2.5" 
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
        mutopiatitle = "Album pour la jeunesse - 12.Le Père Fouettard "
       mutopiacomposer = "SchumannR"
       mutopiaopus = "O 68 n°12 "
       mutopiainstrument = "Piano"
       date = "1848"
       source = "Peters"
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       lastupdated = "2006/Jun/20"



 footer = "Mutopia-2007/02/11-784"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
     }

     upper = \relative c' {
       \clef treble
       \key  a\minor
       \time 2/4	
	\override Script #'avoid-slur = #'inside
	\once \override Score.MetronomeMark #'extra-offset = #'(-3 . 2)
	\tempo 4 = 126
	\clef bass \stemUp \slurDown
 
	a,16^^ b a b c^^ b c b
	a8^^( b) c^^( e)
	\clef treble
	a^^( b) c^^( e)
	<e gis b> <e gis b> <e a c>4
	\clef bass
	a,,16^^ b a b c^^ b c b
	a8^^( b) c^^( e)
	\clef treble
	a^^( b) c^^( e)
	<e gis b> <e gis b> a4 \bar "|:"
	
	\repeat volta 2 {
	\clef bass
	bes,16^^ a bes a g^^ a g a
	bes8^^( g) g^^( e)
	\clef treble \stemUp 
	<g' bes>^^( <e g>) <e g>^^( <cis e>)
	<a cis e> <a cis e> <a d f>4
	\clef bass \stemDown
	c16^^ b! c b a^^ b a b
	c8^^( a) a^^( fis)
	\clef treble \stemUp 
	<a' c>^^( <fis a>) <fis a>^^( <dis fis>)
	<dis fis> <dis fis> <b e gis>4
	a16^^ b a b c^^ b c b
	a8^^( b) c^^( e)
	a^^( b) c^^( e)
	<e, gis b> <e gis b> <e^^ a c> <e^^ g! a cis>
	<f a d>4^^ f16^^ e f e
	d8^^( e) f^^( a)
	d^^( e) f^^( a)
	<b, e gis> <b e gis> <c e a>4
     }

	\repeat volta 2 {
	\key f \major
	\phrasingSlurUp
	a16\( f a f a f g e
	a f bes g c a g e\)
	a\( f a f a f g e 
	a f bes g c a d b!\)
	e\( c e c e c d b!
	e c f d g e d b!\)
	e\( c e c e c d b!
	e c d b! c g bes g\)
     }

	\repeat volta 2 {
	\phrasingSlurDown
	bes16\( g bes g bes16 g bes g
	bes16 g bes g bes16 g bes g\)
	aes\( f aes f aes f aes f
	aes f aes f aes f aes f\)

	\voiceOne
	<< { \phrasingSlurUp
	f4.\( es8
	f ges aes es\)
	f\( g! aes bes\)
   }
	\context Voice = "1" { \voiceTwo
	% comment raccourcir la longueur des stems uniquement pour les 2 mesures suivantes ?
	des,16 aes des aes des aes c aes
	des aes ges' aes, aes' aes, c aes
	f' des g! e! aes f bes f
	\oneVoice
	}
	>>	
	c'\( e, bes' g e\) b'16\rest b8\rest
	
	a16\( f a f a f g e
	a f bes g c a g e\)
	a\( f a f a f g e 
	a f bes g c a e f\)

	\voiceOne
	<< { 
	d'4.\( c8
	d e! f d\)
	c\( a f\) <d bes'>^.
    }
	\context Voice = "1" { \voiceTwo
	% raccourcir les stems pour mieux placer le fp (dynamics)
	bes'16 f bes f bes f a f
	bes f e'! f, f' f, d' f,
	c' f, a e f8 s8
	\oneVoice
	}
	>>	
	<bes, e>4( <a f'>8) b'8\rest
 }

	\key a\minor
	\clef bass \slurDown
	a,,16^^ b a b c^^ b c b
	a8^^( b) c^^( e)
	\clef treble
	a^^( b) c^^( e)
	<e gis b> <e gis b> <e a c>4
	\clef bass
	a,,16^^ b a b c^^ b c b
	a8^^( b) c^^( e)
	\clef treble
	a^^( b) c^^( e)
	<e gis b> <e gis b> a4
	\clef bass
	bes,16^^ a bes a g^^ a g a
	bes8^^( g) g^^( e)
	\clef treble
	<g' bes>^^( <e g>) <e g>^^( <cis e>)
	<a cis e> <a cis e> <a d f>4
	\clef bass
	c16^^ b! c b a^^ b a b
	c8^^( a) a^^( fis)
	\clef treble
	<a' c>^^( <fis a>) <fis a>^^( <dis fis>)
	<dis fis> <dis fis> <b e gis>4
	a16^^ b a b c^^ b c b
	a8^^( b) c^^( e)
	a^^( b) c^^( e)
	<e, gis b> <e gis b> <e a c>^^ <e g! a cis>^^
	<f a d>4^^ f16^^ e f e
	d8^^( e) f^^( a)
	d^^( e) f^^( a)
	<b, e gis> <b e gis> <c e a>4	
 }
     
     lower = \relative c {
       \clef bass
       \key a \minor
       \time 2/4
	\override Script #'avoid-slur = #'inside

	a,16^^ b a b c^^ b c b
	a8^^( b) c^^( e)
	a^^( b) \stemUp c^^( e)
	\stemNeutral e e a4
	a,,16^^ b a b c^^ b c b
	a8^^( b) c^^( e)
	a^^( b) \stemUp c^^( e)
	\stemNeutral e e a4 \bar "|:"
	
	\repeat volta 2 {
	bes,16^^ a bes a g^^ a g a
	bes8^^( g) g^^( e)
	cis^^( e) e^^( g)
	a a d4
	c16^^ b! c b a^^ b a b
	c8^^( a) a^^( fis)
	dis^^( fis) fis^^( a)
	b b e4
	a,16^^ b a b c^^ b c b
	a8^^( b) \stemUp c^^( e)
	a^^( b) c^^( e)
	\stemNeutral e, e a^^ a,^^
	d16^^ e d e f^^ e f e
	\stemUp d8^^( e) f^^( a)
	\clef treble 
	d^^( e) f^^( a)
	e e a4
	\clef bass
  }
	\repeat volta 2 {
	\clef bass \stemNeutral 
	f,16\( a f a f a c, g'
	f a g bes a c c, g'\)
	f16\( a f a f a c, g'
	f a g bes a c g b!\)
	\clef treble
	c\( e c e c e g, d'
	c e d f e g g, d'\)
	c\( e c e c e g, d'
	c e d f e8\) r8
	\clef bass
  }
	\repeat volta 2 {
	\clef bass
	c,,4.^^\( des8
	c aes' g4\)
	c,4.^^\( des8
	c bes' aes4\)
	\phrasingSlurDown \stemDown
	des4.\( aes8
	des ees f aes,\)
	des <des e!> <des f> <des f>
	<c g'> r8 r16 c' bes g
	\phrasingSlurUp
	f\( a f a f a c, g'
	f a g bes a c c, g'\)
	f16\( a f a f a c, g'
	f a g bes a c f, a\)
	\phrasingSlurDown 
	bes4.\( f8
	bes c d bes\)
	a\( c d\) g,-.
	c,4( f8) r8
  }
 	\key a\minor \stemNeutral 
	a,,16^^ b a b c^^ b c b
	a8^^( b) c^^( e)
	a^^( b) \stemUp c^^( e)
	\stemNeutral e e a4
	a,,16^^ b a b c^^ b c b
	a8^^( b) c^^( e)
	a^^( b) \stemUp c^^( e)
	\stemNeutral e e a4
	bes,16^^ a bes a g^^ a g a
	bes8^^( g) g^^( e)
	cis^^( e) e^^( g)
	a a d4
	c16^^ b! c b a^^ b a b
	c8^^( a) a^^( fis)
	dis^^( fis) fis^^( a)
	b b e4
	a,16^^ b a b c^^ b c b
	a8^^( b) \stemUp c^^( e)
	a^^( b) c^^( e)
	\stemNeutral e, e a^^ a,^^
	d16^^ e d e f^^ e f e
	d8^^( e) f^^( a)
	\clef treble
	d^^( e) f^^( a)
	e e a4 \bar "|."


}
     
     dynamics = {

       s2\f
	s2*2 
	s8\f s8\f s8\f s8
	s2*3
	s8\f s8\f s4\f \bar "|:"
	\repeat volta 2 {
	s2\f
	s2*7
        \once \override DynamicText #'extra-offset = #'(3.1 . 1.5)
	s2\ff
	s2*6
	s8\f s8\f s4\f
   }
	\repeat volta 2 {	 
	s2\p
	s16\< s8 s16\! s16\> s8 s16\!
	s2
	s16\< s4. s16\!
	s2
	s16\< s8 s16\! s16\> s8 s16\!
	s2*2 
   }
	\repeat volta 2 {
	s2*2
	\once \override TextScript #'extra-offset = #'(-0.5 . 1)
	s2_\markup { \italic \fontsize #-2 cresc. }
	s2
        \once \override DynamicText #'extra-offset = #'(-1 . 2.5)
	s2\p
	s2
	s8 \once\override Hairpin #'extra-offset = #'(0 . 0.5) s8\< s8 s8\!
        \once \override DynamicText #'extra-offset = #'(1 . 2.5)
	s16\sf s16 \once\override Hairpin #'extra-offset = #'(0 . 2.3) s4\> s8\!
	s2\p
	s16\< s8 s16\! s16\> s8 s16\!	
	s2
	s16\< s8 s16\! s16\> s8 s16\!
        \once \override DynamicText #'extra-offset = #'(-1.5 . 3.7)
	s2\fp
	s16 \once \override Hairpin #'extra-offset = #'(-2.1 . 1) s16\< s8\! s16 \once \override Hairpin #'extra-offset = #'(1.1 . 1) s16\> s8\!
	s2*2
   }
	s2\f
	s2*2
	s8\f s8\f s4\f
	s2*3
	s8\f s8\f s4\f
	s2\f
	s2*7
        \once \override DynamicText #'extra-offset = #'(3.1 . 1.4)
	s2\ff
	s2*6
	s8\f s8\f s4\f \bar "|."
 }
     
     \score {
       \context PianoStaff <<
   \set PianoStaff.instrumentName = \markup{ \fontsize #6 {"12. "} \hspace #1.0
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
           \override Hairpin #'extra-offset = #'(0 . 3)
     
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
	tempoWholesPerMinute = #(ly:make-moment 126 4)
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

