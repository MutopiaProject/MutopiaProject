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
       opus = "Opus 68 n°25"
       instrument = "Echos du Théâtre"
       copyright = "Creative Commons Attribution-ShareAlike 2.5" 
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
        mutopiatitle = "Album pour la jeunesse - 25.Echos du Théâtre "
       mutopiacomposer = "SchumannR"
       mutopiaopus = "O 68 n°25 "
       mutopiainstrument = "Piano"
       date = "1848"
       source = "Peters"
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       lastupdated = "2006/Jun/25"



 footer = "Mutopia-2007/02/11-787"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
     }

     upper = \relative c'' {
       \clef treble
       \key a \minor
       \time 2/4
	\override Script #'avoid-slur = #'inside
	\override TextScript #'extra-offset = #'(-2 . 2)	

	\repeat volta 2 {
	\partial 8
	e16^\markup { \bold "un peu agité" } f
	e( c) a b d( c) gis a
	c4( b8) f'16 g
	f( d) ais b d( b) fisis gis
	<a d>4^>( c8) a'16 bes
\break
	a( f) cis d f( e) a bes
	a( f) cis d f( e) a e
	e( d b'16.) d,32 d16( c a'16.) c,32
	<a c>4^^( <gis b>8)
     }
\break
	\repeat volta 2 {	 
	\partial 8
	e16. e32
	f4.^^ e16. e32
	f4.^^ e16. e32
	f8^^ a^^ c^^ f,^^
	e4. <e g c e>16. <e g c e>32
	<e g c e>4. <e g c e>16. <e g c e>32
	<e g c e>4. <e c' e>16. <e c' e>32
\break
	<e c' e>8\noBeam <c' d>16 e <a, d f>8 <g b d>
	<g c e>  
	
	<<{e'8([ d c]
	b[ d c b]
	c)\noBeam c([bes a]
\break
	g[ bes a g]
	a)\noBeam }
	\\
	{<e  e'>4 <e e'>16. <e e'>32
	<e  e'>4. <e e'>16. <e e'>32	
	<e  e'>8 <c c'>4 <c c'>16. <c c'>32
	<c c'>4. <c c'>16. <c c'>32
	<c c'>8}
     >>
   


	a'16 b c8 <a d>
	<gis b e> a16 b! c8 <a d>
     <gis b e>\noBeam  
	\textSpannerDown
	\override TextSpanner #'padding = #1.2
	\override TextSpanner #'edge-text = #'("dimin.")
	<e e'>16\startTextSpan 
	<e e'> <e e'>8\stopTextSpan <e e'>16 <e e'>
	%\break 
	<e e'>8 <e e'>16 <e e'> <e e'>8\noBeam  e'16 f
\break
	e( c) a b d( c) gis a
	c4( b8) f'16 g
	f( d) ais b d( b) fisis gis
	<a d>4^>( c8) a'16 bes
\break
	a( f) cis d f( e) a bes
	a( f) cis d f( e c'16.) e,32
	e16( d b'16.) d,32 <a c>8 <gis b>
	<gis b>4^^( a8)
} 
  }
     
     lower = \relative c' {
       \clef treble
       \key a \minor
       \time 2/4
	\override Script #'avoid-slur = #'inside

	\repeat volta 2 {
	\partial 8
	<a c e>16 <a c e>
	<a c e>2~
        <a c e>8 <a d f>16 <a d f> <a d f>8 <a d f>16 <a d f>
	<a d f>2~
        <a d f>8 <a c e>16 <a c e> <a c e>8 <a cis e>16 <a cis e>
	<a d f>8 <a b! d>16 <a b! d> <a c e>8 <a cis e>16 <a cis e>
	<a d f>8 <a b! d>16 <a b! d> <a c e>8 <a c e>16 <a c e>
	<<{gis8 <b e>16. <b e>32 a8 <c e>16. <c e>32} \\{gis4 a}>>
	<e e'>4.^^  
	
	 
 }
	\repeat volta 2 {
	\clef bass
	\partial 8

	<e, e'>16. <e e'>32
	<f f'>4.^^ <e e'>16. <e e'>32
	<f f'>4.^^ <e e'>16. <e e'>32
	<f f'>8^^ <a a'>^^ <c c'>^^ <f, f'>^^
	<e e'>4. <c' c'>16. <c c'>32
	<c c'>4. <c c'>16. <c c'>32
	<c c'>4. <b b'>8 
	<a a'> <g g'> <f f'> <g g'>
	<c c'> c'([ b a]
	gis[ b a g]
	a) a[( g! f]
	e[ g f e]
	f) a16 b! c8 <f, a d>
	<e\noBeam b' e> a16 b! c8 <f, a d>
	<e b' e> r8 r4

	r4 \clef treble r8 <a c e>16 <a c e>16
	<a c e>8 <a c e>16 <a c e>16 <a c e>8 <a c e>16 <a c e>16 
	<a d f>8 <a d f>16 <a d f> <a d f>8 <a d f>16 <a d f> 
       <a d f>8 <a d f>16 <a d f> <a b d>8 <a b d>16 <a b d>
	<a c e>8 <a c e>16 <a c e> <a c e>8 <a cis e>16 <a cis e>
	<a d f>8 <a b! d>16 <a b! d> <a c e>8 <a cis e>16 <a cis e>
	<a d f>8 <a b! d>16 <a b! d> <a c e>8 <a c e>16. <a c e>32
	\clef bass
	d,8 <f b>16. <f b>32 <e e'>8 <e e'>
	<e e'>4^^_( a8)

	

 }
     }
     
     dynamics = {
	%\override TextScript #'extra-offset = 3'(-0.5 . 3)   _\markup { \italic \fontsize #-2 dolce. }
       \partial 8
	\repeat volta 2 { 
	s8\mf
	s2*4
	\override TextScript #'extra-offset = #'(0 . 1.5)
	s2_\markup { \italic \fontsize #-1 cresc. }
	s2*2
	s4. 
      }

	\repeat volta 2 {
	s8\f
	s2*3
	s4. s8\ff
	s2*7
	s4 s8 s8\f
	s8\f s4 s8\f
	s2\f
	s4. s16 s16\p
	s2*2
	\override TextScript #'extra-offset = #'(0 . 1.5)
	s4 s4_\markup { \italic \fontsize #-1 cresc. }
	s2*3
	s2\f
	s4.

     }	
}
     
     \score {
       \context PianoStaff <<
   \set PianoStaff.instrumentName = \markup{ \fontsize #6 {"25. "} \hspace #1.0
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
	ragged-bottom = ##f
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
	\unfoldRepeats
       \context PianoStaff <<
         \context Staff=upper  \upper %\dynamics

         \context Staff=lower << \lower %\dynamics
	>>
%         \context Dynamics=pedal \pedal
       >>
       \midi {
	\context { \Score
	tempoWholesPerMinute = #(ly:make-moment 76 4)
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

