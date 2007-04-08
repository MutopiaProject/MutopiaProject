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
       opus = "Opus 68 n°14"
       instrument = "Petite Etude"
       copyright = "Creative Commons Attribution-ShareAlike 2.5" 
     
       % These are headers used by the Mutopia Project
       % http://www.mutopiaproject.org/
        mutopiatitle = "Album pour la jeunesse - 14.Petite Etude "
       mutopiacomposer = "SchumannR"
       mutopiaopus = "O 68 n°14 "
       mutopiainstrument = "Piano"
       date = "1848"
       source = "Peters"
       style = "Romantic"
       copyright = "Creative Commons Attribution-ShareAlike 2.5"
       maintainer = "Philippe Hézaine"
       maintainerEmail = "philippe.hezaine@free.fr"
       lastupdated = "2006/Jun/25"



 footer = "Mutopia-2007/02/11-786"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
     }


upper = \relative c'' {
       \clef treble
       \key g \major
       \time 6/8
	\stemUp
	\phrasingSlurUp
	\override TextScript #'extra-offset = #'(-5 . 2)

	s2.^\markup { \bold "Léger et très égal" }
	s2.*31
	\repeat volta 2 {
	s2.*31
	r2.
	}
    }
     
     lower = \relative c' {
       \clef bass
       \key g \major 
       \time 6/8
	\stemDown
	\phrasingSlurUp
% 1	
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (14.6 . 12.5))
	g8\( b d
	\change Staff=upper
	\stemUp
	 b'8 g d\)
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (14.5 . 13))
	\change Staff=lower
	\stemDown
	g,8\( c e 
	\change Staff=upper
	\stemUp
	c'8 g e\)
% 3
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (15.1 . 14))
	\change Staff=lower
	\stemDown
	g,8\( c fis!
	\change Staff=upper
	\stemUp
	e'8 c a\)
% 4
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (14.7 . 13.5))
	\change Staff=lower
	\stemDown
	g,8\( b g'
	\change Staff=upper
	\stemUp
	d'8 b g\)
% 5
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18.1) (14.7 . 14.5))
	\change Staff=lower
	\stemDown
	g,8\( b g'

\change Staff=upper
	\stemUp
g'8 d b\)
\break %mes 6
%  rester sur la portée du dessus
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . -1) (3 . 5) (10 . 6.5) (17.7 . 3.7))
	\stemDown
	b,8\( dis g 
\stemUp
dis'8 b g\)
% 7
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . -1) (3 . 5) (10 . 7) (16.7 . 4))
\stemDown
	c,8\( e g
\stemUp
e'8 c g\)
% 8
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . -1) (3 . 5) (10 . 6) (16.3 . 3))
\stemDown
	b,8\( c e
\stemUp
c'8 g e\)
% mes 9
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (16.1 . 11.9))
	\change Staff=lower
	\stemDown 
	a,8\( c e
\change Staff=upper
	\stemUp
a8 e c\)
% 10
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (15.9 . 12.2))
\change Staff=lower
	\stemDown
	g8\( c e 
\change Staff=upper
	\stemUp
a8 e c\)
\break % mes 11
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (16.1 . 12.5))
\change Staff=lower
	\stemDown
	fis,8\( a d
\change Staff=upper
	\stemUp
c'8 a d,\)
% 12
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (17 . 12.5))
\change Staff=lower
	\stemDown
	gis,8\( b d 
\change Staff=upper
	\stemUp
b'8 f! d\)
% 13
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (16.1 . 12.5))
\change Staff=lower
	\stemDown
	a8\( c e
\change Staff=upper
	\stemUp
a8 e c\)
% 14
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 17) (15.9 . 11.8))
\change Staff=lower
	\stemDown
	c,8\( g' a 
\change Staff=upper
	\stemUp
e'8 a, g\)
% 15
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 17) (16.4 . 12.5))
\change Staff=lower
	\stemDown
	d8\( fis a
\change Staff=upper
	\stemUp
a'8 d, c\)
\break % mes 16
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 17) (18.3 . 13.4))
\change Staff=lower
	\stemDown
	d,8\( fis ais 
\change Staff=upper
	\stemUp
d8 fis ais\)
% 17
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (15.7 . 12.7))
\change Staff=lower
	\stemDown
	g,8\( b d
\change Staff=upper
	\stemUp
b'8 g d\)
% 18
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (15.9 . 12.8))
\change Staff=lower
	\stemDown
	g,8\( c e 
\change Staff=upper
	\stemUp
c'8 g e\)
% 19
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (16.2 . 14))
\change Staff=lower
	\stemDown
	g,8\( c fis!
\change Staff=upper
	\stemUp
e'8 c a\)
% 20
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (16 . 13.5))
\change Staff=lower
	\stemDown
	g,8\( b g' 
\change Staff=upper
	\stemUp
d'8 b g\)
\break % mes 21
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18.3) (16.1 . 14.5))
\change Staff=lower
	\stemDown
	g,8\( b g'
\change Staff=upper
	\stemUp
g'8 d b\)

% rester sur la portée du dessus
% 22
 \once\override PhrasingSlur  #'control-points = 
	    #'((0 . -1) (3 . 5) (10 . 6) (17.7 . 3.5))
	\stemDown
	b,8\( dis g 
\stemUp
dis'8 b g\)
% 23
 \once\override PhrasingSlur  #'control-points = 
	    #'((0 . -1) (3 . 5) (10 . 6.3) (16.6 . 3.8))
\stemDown
	c,8\( e g
\stemUp
e'8 c g\)
% 24
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . -1) (3 . 5) (10 . 6) (16.2 . 3))
\stemDown
	b,8\( c e
\stemUp
c'8 g e\)
% 25
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 17) (16 . 12.3))
	\change Staff=lower
	\stemDown 
	a,8\( c e
\change Staff=upper
	\stemUp
a8 e c\)
\break % mes 26
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (16.2 . 12.5))
\change Staff=lower
	\stemDown
	g8\( c e 
\change Staff=upper
	\stemUp
a8 e c\)
% 27
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (16.2 . 12.6))
\change Staff=lower
	\stemDown
	fis,8\( a d
\change Staff=upper
	\stemUp
c'8 a d,\)
% 28
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (16.9 . 12.5))
\change Staff=lower
	\stemDown
	gis,8\( b d
\change Staff=upper
	\stemUp
b'8 f! d\)
% 29
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (16.1 . 12.5))
\change Staff=lower
	\stemDown
	a8\( c e
\change Staff=upper
	\stemUp
a8 e c\)
% 30
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (16 . 11.7))
\change Staff=lower
	\stemDown
	c,8\( g' a 
\change Staff=upper
	\stemUp
e'8 a, g\)
\break % mes 31
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (15.7 . 12.5))
\change Staff=lower
	\stemDown
	d8\( g a
\change Staff=upper
	\stemUp
a'8 d, c\)
% 32
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (16.1 . 12.5))
\change Staff=lower
	\stemDown
	d,8\( fis a 
\change Staff=upper
	\stemUp
a'8 d, c\)

% 2° partie
	\repeat volta 2 {
% 33
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (15.9 . 12.5))
\change Staff=lower
	\stemDown
        d,8\( fis c' 
\change Staff=upper
	\stemUp
a'8 d, c\)
% 34
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (15.9 . 12.5))
\change Staff=lower
	\stemDown
	d,8\( e c' 
\change Staff=upper
	\stemUp
g'8 d c\)
% 35
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 17) (16.1 . 12))
\change Staff=lower
	\stemDown
	d,8\( a' c
\change Staff=upper
	\stemUp
fis8 d c\)
\break % mes 36
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (16 . 11.8))
\change Staff=lower
	\stemDown
	d,8\( g c 
\change Staff=upper
	\stemUp
e8 c g\)
% 37
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (16.2 . 12.5))
\change Staff=lower
	\stemDown
	d8\( fis c'
\change Staff=upper
	\stemUp
c'8 d, c\)
% 38
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (17.5 . 12.5))
\change Staff=lower
	\stemDown
	d,8\( eis b' 
\change Staff=upper
	\stemUp
gis'8 d b\)
% 39
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (16.2 . 11.9))
\change Staff=lower
	\stemDown
	d,8\( fis c'
\change Staff=upper
	\stemUp
a'8 d, c\)
% 40
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (16.8 . 13))
\change Staff=lower
	\stemDown
	d,8\( f! b 
\change Staff=upper
	\stemUp
b'8 g f!\)
\break % mes 41
	% rester sur la portée du dessus
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . -1) (3 . 5) (10 . 7) (16 . 3.7))
	\stemDown
	c8\( e g
\stemUp
e'8 c g\)
% 42
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . -1) (3 . 5) (10 . 6) (18.7 . 2.8))
\stemDown
	c,8\( es fis!
\stemUp
a8 fis! es!\)
% 43
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . -1) (3 . 5) (10 . 6) (15.8 . 3.3))
\stemDown
	b8\( d g
\stemUp
d'8 b g\)
% 44
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . -1) (3 . 5) (10 . 6) (17.4 . 2.8))
\stemDown
	bes,8\( cis e
\stemUp
g8 e cis!\)
% 45
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (15.4 . 12.3))
	\change Staff=lower 
	a8\( c! d
\change Staff=upper
	\stemUp
fis8 d c\)
\break % mes 46
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (16.5 . 12.5))
\change Staff=lower
	\stemDown
	g8\( c d 
\change Staff=upper
	\stemUp
g8 d c\)
% 47
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (16.3 . 12.5))
\change Staff=lower
	\stemDown
	fis,8\( c' d
\change Staff=upper
	\stemUp
a'8 d, c\)
% 48
<<{\override Staff.NoteCollision
#'merge-differently-dotted = ##t 
g'4.( a)} \\{g8 d c a' d, c} \\{
	\change Staff=lower
	\stemDown
	e,4.( fis)}>>
% 49
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (16.1 . 12.6))
\change Staff=lower
	\stemDown
	g8\( b d
\change Staff=upper
	\stemUp
b'8 g d\)
% 50
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (16.1 . 12.9))
\change Staff=lower
	\stemDown
	g,8\( c e 
\change Staff=upper
	\stemUp
c'8 g e\)
\break % mes 51
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (16.3 . 13.8))
\change Staff=lower
	\stemDown
	g,8\( c fis!
\change Staff=upper
	\stemUp
e'8 c a\)
% 52
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (16 . 13.5))
\change Staff=lower
	\stemDown
	g,8\( b g' 
\change Staff=upper
	\stemUp
d'8 b g\)
% 53
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18.3) (16 . 14.6))
\change Staff=lower
	\stemDown
	g,8\( b g'
\change Staff=upper
	\stemUp
g'8 d b\)

% rester sur la portée du dessus
%54
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . -1) (3 . 5) (10 . 6) (17.6 . 3.5))
	\stemDown
	b,8\( dis g
\stemUp
dis'8 b g\)
% 55
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . -1) (3 . 5) (10 . 6) (16.5 . 3.5))
\stemDown
	c,8\( e g
\stemUp
e'8 c g\)
\break % mes 56
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (16.8 . 12.8))
	\change Staff=lower
	\stemDown
	b,8\( d e
\change Staff=upper
	\stemUp
b'8 gis d\)
% 57
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (16 . 12.8))
\change Staff=lower
	\stemDown
	a8\( c e
\change Staff=upper
	\stemUp
c'8 a e\)
% 58
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (17.2 . 12.5))
\change Staff=lower
	\stemDown
	b8\( d e
\change Staff=upper
	\stemUp
gis8 e d\)
% 59
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (16 . 12.5))
\change Staff=lower
	\stemDown
	c,8\( e a
\change Staff=upper
	\stemUp
a'8 e c\)
% 60
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 17) (15.8 . 12))
\change Staff=lower
	\stemDown
	cis,8\( g' a
\change Staff=upper
	\stemUp
e'8 a, g\)
\break % mes 61
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (21 . 11.9))
\change Staff=lower
	\stemDown
	d8\( g c!
\change Staff=upper
	\stemUp
a'8 d, c\)
% 62
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (6 . 18) (21 . 11.9))
\change Staff=lower
	\stemDown
	d,8\( fis c'
\change Staff=upper
	\stemUp
b'8 d, c\)
% 63
 \once\override PhrasingSlur  #'control-points =
	    #'((0 . 7) (0 . 11) (20 . 24) (26 . 2.8))
\change Staff=lower
	\stemDown
	g8\( b d
\change Staff=upper
	\stemUp
g8 d b
% 64
\change Staff=lower
	\stemDown
	g,8\) r r r4 r8

	} 
     }
     
     dynamics = {
	
	s2.\p
	s2.*31
	s2.\p
	s2.*31 
     }
     
     pedal = {

	s8\sustainDown s2 s8\sustainUp 
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp 
	s2.\sustainDown 
	s2 s8 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s2.\sustainDown 
	s2 s8 s8\sustainUp
	s2.\sustainDown 
	s2 s8 s8\sustainUp	
	s8\sustainDown s2 s8\sustainUp 
	s8\sustainDown s2 s8\sustainUp
	s2.\sustainDown 
	s2 s8 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s2.\sustainDown 
	s2 s8 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s2.\sustainDown 
	s2 s8 s8\sustainUp
	s2.\sustainDown 
	s2 s8 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s2.\sustainDown 
	s2 s8 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp

% 2° partie

	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s2.
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s2.\sustainDown 
	s2 s8 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s8\sustainDown s2 s8\sustainUp
	s2.\sustainDown 
	s8 s8\sustainUp s2

    }


\score {
       \context PianoStaff <<
   \set PianoStaff.instrumentName = \markup{ \fontsize #6 {"14. "} \hspace #1.0 }
%\set PianoStaff.pedalSustainStyle = #'mixed
         \context Staff=upper \upper
         \context Dynamics=dynamics \dynamics
         \context Staff=lower <<
           \clef bass
           \lower
         >>
         \context Dynamics=pedal \pedal
       >>
       \layout {
	ragged-last = ##f
         \context {
           \type "Engraver_group"
           \name Dynamics
           \alias Voice % So that \cresc works, for example.
           \consists "Output_property_engraver"
     
           \override VerticalAxisGroup #'minimum-Y-extent = #'(-5 . 5)
           pedalSustainStrings = #'("Ped." "*Ped." "*")
%	   pedalSustainStyle = #'mixed
%           pedalUnaCordaStrings = #'("una corda" "" "tre corde")
     
           \consists "Piano_pedal_engraver"
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
         \context Staff=upper  \upper \dynamics

         \context Staff=lower << \lower \dynamics
	>>
         \context Dynamics=pedal \pedal
       >>
       \midi {
	\context { \Score
	tempoWholesPerMinute = #(ly:make-moment 160 4)
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

