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
       opus = "Opus 68 n°11"
       instrument = "Sicilienne"
       copyright = "Creative Commons Attribution-ShareAlike 2.5" 
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
        mutopiatitle = "Album pour la jeunesse - 11.Sicilienne "
       mutopiacomposer = "SchumannR"
       mutopiaopus = "O 68 n°11 "
       mutopiainstrument = "Piano"
       date = "1848"
       source = "Peters"
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       lastupdated = "2006/Jun/20"



 footer = "Mutopia-2007/02/11-783"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
     }

     upper = \relative c'' {
       \clef treble
       \key a \minor
       \time 6/8
	\partial 8
	\phrasingSlurUp
	\once \override TextScript #'extra-offset = #'(-5 . 2)



	\repeat volta 2 {
	e8^\markup { \bold "Espiègle" }\(
	gis,4\) gis8 gis_._\( a_. b_.\)
	a4 a8 a4 e'8\(
	gis,4\) gis8 gis_._\( a_. b_.\)
	a4.^^ ~ a4 g!8_\(
	fis4\) \once \override TextScript #'extra-offset = #'(0 . -1) fis8_\markup { \italic \fontsize #0 "cresc." } fis ais cis
	b4 b8 b4 a!8
	g fis e b'4 b,8
	e4.^^ ~e4
     }

	\repeat volta 2 {
	g'8\(
	ais,4\) ais8 ais^.^\( b^. cis^.\)
	b4 b8 b4 g'8\(
	ais,4\) ais8 ais^.^\( b^. cis^.\)
	\grace { b16[ cis] } b4.^^ ~b4 <fis a>8
	g4 g8 g fis e
	\once \override TextScript #'extra-offset = #'(0 . -1)
	<e c'>4_\markup { \italic \fontsize #0 "cresc." } <e c'>8 <e c'>4 c'8
	b a g d'4 d,8 
     }
	\alternative {
	{g4.^^ ~ g4 s8}
	{g4\( \tempo 4 = 40 <e gis>8\) ~ <e gis>4\fermata \tempo 4 = 110 e'8\(} 
        }
	gis,4\) gis8 gis_._\( a_. b_.\)
	a4 a8 a4 e'8\(
	gis,4\) gis8 gis_._\( a_. b_.\)
	a4.^^ ~ a4 g!8_\(
	fis4\) \once \override TextScript #'extra-offset = #'(0 . -1) fis8_\markup { \italic \fontsize #0 "cresc." } fis ais cis
	b4 b8 b4 a!8
	g fis e b'4 b,8
	e4.^^ ~e4 r8 \bar "||" 
	\time 2/4
	a16\( c e c\) f^>\( d e c\)
	f^>\( d e c\) d\( b a8^.\) 
	a16\( c e c\) f^>\( d e c\)
	f^>\( d e c\) d\( b a8^.\) \bar "||"
	a16\( b c a\) e'^>\( c b g\)
	e'^>\( c b g\) <dis fis>_\( g e8_.\)
	a16\( b c a\) e'^>\( c b g\)
	e'^>\( c b g\) <dis fis>_\( g e8_.\) \bar "||"
	a16\( c e c\) f^>\( d e c\)
	f^>\( d e c\) d\( b a8^.\) 
	a16\( c e c\) f^>\( d e c\)
	f^>\( d e c\) d\( b a8^.\) \bar "|."
%comme au début sans les répétitions
	\time 6/8
	r4 r8 r4 e'8\(
	gis,4\) gis8 gis_._\( a_. b_.\)
	a4 a8 a4 e'8\(
	gis,4\) gis8 gis_._\( a_. b_.\)
	a4.^^ ~ a4 g!8_\(
	fis4\) \once \override TextScript #'extra-offset = #'(0 . -1) fis8_\markup { \italic \fontsize #0 "cresc." } fis ais cis
	b4 b8 b4 a!8
	g fis e b'4 b,8
	e4.^^ ~e4 % bar "||"
	g'8\(
	ais,4\) ais8 ais^.^\( b^. cis^.\)
	b4 b8 b4 g'8\(
	ais,4\) ais8 ais^.^\( b^. cis^.\)
	\grace { b16[ cis] } b4.^^ ~b4 <fis a>8
	g4 g8 g fis e
	\once \override TextScript #'extra-offset = #'(0 . -1)
	<e c'>4_\markup { \italic \fontsize #0 "cresc." } <e c'>8 <e c'>4 c'8
	b a g d'4 d,8 
	g4\( \tempo 4 = 40 <e gis>8\) ~ <e gis>4\fermata \tempo 4 = 110 e'8\(
	gis,4\) gis8 gis_._\( a_. b_.\)
	a4 a8 a4 e'8\(
	gis,4\) gis8 gis_._\( a_. b_.\)
	a4.^^ ~ a4 g!8_\(
	fis4\) \once \override TextScript #'extra-offset = #'(0 . -1) fis8_\markup { \italic \fontsize #0 "cresc." } fis ais cis
	b4 b8 b4 a!8
	g fis e b'4 b,8
	e4.^^ ~e4 r8 \bar "|." 
 }
     
     lower = \relative c {
       \clef bass
       \key a \minor
       \time 6/8
	\partial 8

	\repeat volta 2 {
	r8 \clef treble
	<b' d>4 <b d>8 <b d>4.
	<c e>4 <c e>8 <c e>4.
	<b d>4 <b d>8 <b d>4.
	<c e>4. ~ <c e>4 \clef bass <b d>8\(
	<ais cis>4\) <ais cis>8 <ais cis>4.
	<b dis>4 <b dis>8 <b dis>4 b8
	e4\( g,8\) b4 b,8
	e4.^^ ~ e4
     }

	\repeat volta 2 {
	r8 \clef treble
	<cis' e>4 <cis e>8 <cis e>4.
	<dis fis>4 <dis fis>8 <dis fis>4.
	<cis e>4 <cis e>8 <cis e>4.
	<dis fis>4.^^ ~ <dis fis>4 dis8
	e4 e8 e8 r8 r8 \clef bass
	<a, c>4 <a c>8 <a c>4 c8
	b a g d'4 d,8
      }
	\alternative {
	{g4.^^ ~ g4 s8}
	{g4\( <e b'>8\) ~ <e b'>4\fermata r8} 
	} \clef treble
	<b' d>4 <b d>8 <b d>4.
	<c e>4 <c e>8 <c e>4.
	<b d>4 <b d>8 <b d>4.
	<c e>4. ~ <c e>4 \clef bass <b d>8\(
	<ais cis>4\) <ais cis>8 <ais cis>4.
	<b dis>4 <b dis>8 <b dis>4 b8
	e4\( g,8\) b4 b,8
	e4.^^ ~ e4 r8 \bar "||" 
	\time 2/4

	<a c e>4 <a d f>8 <a c e>
	<a d f>8 <a c e> <e gis d'>\( <a c>\)
	<a c e>4 <a d f>8 <a c e>
	<a d f>8 <a c e> <e gis d'>\( <a c>\) \bar "||"
	<a c e>4 <fis a e'>8_\( <g! b>\)
	<fis a e'>8_\( <g b>\) b\( e,\)
	<a c e>4 <fis a e'>8_\( <g! b>\)
	<fis a e'>8_\( <g b>\) b\( e,\) \bar "||"
	<a c e>4 <a d f>8 <a c e>
	<a d f>8 <a c e> <e gis d'>\( <a c>\)
	<a c e>4_\markup \column { \italic \fontsize #0 
	\line { "            (Comme au début et sans "}
	\line { \italic "             répétitions jusqu'à la fin.)"} } 
	<a d f>8 <a c e>
	<a d f>8 <a c e> <e gis d'>\( <a c>\) \bar "|."
% comme au début sans les répétitions
	\time 6/8
	r4 r8 r4 r8 \clef treble
	<b d>4 <b d>8 <b d>4.
	<c e>4 <c e>8 <c e>4.
	<b d>4 <b d>8 <b d>4.
	<c e>4. ~ <c e>4 \clef bass <b d>8\(
	<ais cis>4\) <ais cis>8 <ais cis>4.
	<b dis>4 <b dis>8 <b dis>4 b8
	e4\( g,8\) b4 b,8
	e4.^^ ~ e4     % bar "||"
	r8 \clef treble
	<cis' e>4 <cis e>8 <cis e>4.
	<dis fis>4 <dis fis>8 <dis fis>4.
	<cis e>4 <cis e>8 <cis e>4.
	<dis fis>4.^^ ~ <dis fis>4 dis8
	e4 e8 e8 r8 r8 \clef bass
	<a, c>4 <a c>8 <a c>4 c8
	b a g d'4 d,8
	g4\( <e b'>8\) ~ <e b'>4\fermata r8
	<b' d>4 <b d>8 <b d>4.
	<c e>4 <c e>8 <c e>4.
	<b d>4 <b d>8 <b d>4.
	<c e>4. ~ <c e>4 \clef bass <b d>8\(
	<ais cis>4\) <ais cis>8 <ais cis>4.
	<b dis>4 <b dis>8 <b dis>4 b8
	e4\( g,8\) b4 b,8
	e4.^^ ~ e4_\markup { \italic \fontsize #0 "(Fin.)" } r8 \bar "|."
     }
     
     dynamics = {

       s8\p
	s2.*4
	s4 s8 s4.
	s2 s8 s8\f
	s2.
	s2 s8 %\bar ""
	s8\p
	s2.*5
	s2 s8 s8\f
	s2.
	s2 s8 s8    %\bar ""    %1ere alternative
	s8\< s8 s8\f s8\> s8 s8\p  %2e alternative
	s2.*4
	s4 s8 s4.
	s2 s8 s8\f
	s2.
	s2.     %\bar "||"    \time 2/4
	s2\p
	s2*3    %\bar "||"
	s2*4    %\bar "||"
	s2*4    %\bar "|."
% comme au début sans les répétitions
	s4. s4 s8\p
	s2.*4
	s4 s8 s4.
	s2 s8 s8\f
	s2.
	s2 s8 s8\p
	s2.*5
	s2 s8 s8\f
	s2.
	s8\< s8 s8\f s8\> s8 s8\p
	s2.*4
	s4 s8 s4.
	s2 s8 s8\f
	s2.
	s2. %\bar "|."
     }

     
     \score {
       \context PianoStaff <<
	\override Score.MetronomeMark #'transparent = ##t
   \set PianoStaff.instrumentName = \markup{ \fontsize #6 {"11. "} \hspace #1.0
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
           \override Hairpin #'extra-offset = #'(0 . 2.5)
     
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
	tempoWholesPerMinute = #(ly:make-moment 110 4)
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

