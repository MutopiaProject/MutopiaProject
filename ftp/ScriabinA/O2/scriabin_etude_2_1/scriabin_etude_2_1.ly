\version "2.10.10"

\header {
	title = "Etude"
	composer = "Alexander Scriabin"
	opus = "Op. 2, No. 1"
	instrument = "Piano"
	copyright = "Public Domain"
	source = "IMSLP"
	style = "Classical"
	maintainer = "Guy D. Lederfein"
	maintainerEmail = "glederfein@gmail.com"
	mutopiacomposer = "ScriabinA"
 footer = "Mutopia-2007/09/11-1029"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%
%%% Notes %%%
%%%%%%%%%%%%%

% 1.
% Currently there is no support in lilypond for creating a grace note leading to one of the notes of a chord.
% Therefore I used the following solution which I got from the lilypond forums:
% I used one voice for the chord and another one for the grace note and the note which it leads to that is invisible.
% In order to make the note the grace leads to collide with the one of the chord I overrode the x-extent property of the note head.
% This solution may cause errors when lilypond compiles the file related to clashing note columns.
% I had such a problem in bar 22 of my piece which I solved by overiding the slur's control points.
% I hope in the next versions of lilypond there will be a syntax written for these kinds of cases, so that it will be simpler to get this output.
%
% 2.
% In order to center the dynamics between the piano staves I used the template written in the lilypond docs.
% I removed the pedal part since I don't need pedals written and I didn't manage to get the midi output to use pedals.
% I also moved the dynamics a bit to the right since the default collides with the bar lines and removed the dashed lines from the text dynamics.
% I hope there will be a more elegant solution for centering dynamics in future versions of lilypond.

%%%%%%%%%%%%%
%%% Music %%%
%%%%%%%%%%%%%

%%% Right Hand %%%

upper = {
	\clef treble
	\key cis \minor
	\time 3/4
	
	% bars 1-12
	
	<<
	\relative {
		<e, cis'>8 <e dis'> <cis' e> <cis fis> <e gis> <cis e cis'> |
		b'8. a16 a2 |
		<fis, cis' fis>8 <a gis'> <fis' a> <cis b'> <fis cis'> <fis cis' fis> |
		<e e'>8. <dis dis'>16 <dis dis'>2 |
		% bar 5
		<e gis cis>8 <e dis'> <cis' e> fis <e gis> <cis gis' cis> |
		b'8. gis16 gis4 e |
		dis8. b16 b4 dis |
		b8. gis16 gis2 |
		<e, gis cis>8 <e dis'> <cis' e> <gis fis'> <e' gis> cis' |
		% bar 10
		b8. ais16 ais2 |
		<b, dis gis>8 <b ais'> <gis' b> <dis cis'> <b' dis> gis' |
		fis8. eis16 eis2 |
	}
	\\
	\relative {
		s8 e,4 cis' s8 |
		<b cis fis> <b fis'> <a fis'> <a fis'> <a fis'> <a fis'> |
		s8 cis4 cis s8 |
		a'8 a a a gis gis |
		% bar 5
		s8 gis4 cis s8 |
		<b gis'>8 <gis b> <gis b> <gis b> <e gis> <e gis> |
		<dis gis>8 gis gis gis <e fisis cis'> <e fisis cis'> |
		<b dis> <b dis> <fis bis> <fis bis> <fis bis> <fis bis> |
		s8 gis4 cis s8 |
		% bar 10
		<cis e gis>8 <cis e gis> <cis e gis> <cis fisis> <cis fisis> <cis fisis> |
		s8 dis4 gis s8 |
		<gis b dis>8 <gis b dis> <gis b dis> <gis cisis> <gis cisis> <gis cisis> |
	}
	>>
	
	\key bes \minor
	
	% bars 13-16
	
	<<
	\relative {
		<ges' bes ees>8 <ges f'> <ees' ges> <ees aes> <ges bes> <ees bes' ees> |
		des'8. bes16 bes4 ges |
		% bar 15
		f8. des16 des4 f |
		des8. bes16 bes8 r8 r4 |
	}
	\\
	\relative {
		s8 bes'4 ees s8 |
		<des bes'> <bes des> <bes des> <bes des> <ges bes> <ges bes> |
		% bar 15
		<f bes> bes bes bes <ges a ees'> <ges a ees'> |
		<des f> <des f> <des f> f-.( f-. f-.) |
	}
	>>
	
	\key ees \major
	
	% bars 17-20
	
	<<
	\relative {
		s4 \acciaccatura { \slurDown d'8 \slurNeutral } \once \override NoteHead #'X-extent = #'(0.0 . 0.0) \stemDown \hideNotes c \unHideNotes \stemUp s4. |
		c8. bes16 bes2 |
		\once \override Beam  #'positions = #'(5 . 5) bes8[ c \acciaccatura d c b] \times 2/3 {c g' f} |
		% bar 20
		f8. bes,16 bes2 |
	}
	\\
	\relative {
		\stemUp <d aes' bes>8 <ees aes c> <ees aes c> <ees aes b> <ees aes c> <ees aes c f> \stemDown |
		<ees aes> <ees aes> <d aes'> <d aes'> <d aes'> <d aes'> |
		<d aes'> <ees aes> <ees aes> <ees aes> <ees aes> <ees aes c> |
		% bar 20
		<ees aes c> <ees aes c> <d aes'> <d aes'> <d aes'> <d aes'> |
	}
	>>
	
	% bars 21-22
	
	<<
	\relative {
		ees'2 ees4 |
		eeses des des |
	}
	\\
	\relative {
		<des bes'>8 <des c'> <des c'> <des bes'> <des beses'> <c aes'> |
		<ces aes'>8 <ces beses'> <ces beses'> <ces aes'> <ces aes'> <bes ges'> |
	}
	\\
	\relative {
		s4 \stemDown \acciaccatura { \slurUp des'8 \slurNeutral } \once \override NoteHead #'X-extent = #'(0.0 . 0.0) \hideNotes c \unHideNotes \slurNeutral s4. |
		s4 \stemDown \once \override Slur #'control-points = #'((1 . -0.9) (1.66 . -1.5) (2.33 . -1.5) (3 . -1.2)) \acciaccatura ces8 \slurNeutral s2 |
	}
	>>
	
	% bars 23-24
	
	<<
	\relative {
		s4 \acciaccatura { \slurDown f8 \slurNeutral } \once \override NoteHead #'X-extent = #'(0.0 . 0.0) \stemDown \hideNotes ees \unHideNotes \stemUp s4. |
		s4 \acciaccatura { \slurDown f8 \slurNeutral } \once \override NoteHead #'X-extent = #'(0.0 . 0.0) \stemDown \hideNotes ees \unHideNotes \stemUp s4. |
	}
	\\
	\relative {
		\once \override Beam  #'positions = #'(2 . 1.5) \stemUp <ges c f>8 <ges c ees> <ges c ees> <ges c d> <ges c d> <ges c ees> |
		\once \override Beam  #'positions = #'(2 . 1.5) <ges c f>8 <ges c ees> <ges c ees> <ges c d> <ges c d> <ges c ees> |
	}
	>>
	
	\key cis \minor
	
	% bars 25-45
	
	<<
	\relative {
		% bar 25
		s4 \acciaccatura { \slurDown e8 \slurNeutral } \once \override NoteHead #'X-extent = #'(0.0 . 0.0) \stemDown \hideNotes dis \unHideNotes \stemUp s4. |
		<e, cis'>8 <e dis'> <cis' e> <cis fis> <e gis> <cis e cis'> |
		b'8. a16 a2 |
		<fis, cis' fis>8 <a gis'> <fis' a> <cis b'> <fis cis'> <fis cis' fis> |
		<e e'>8. <dis dis'>16 <dis dis'>2 |
		% bar 30
		<e gis cis>8 <e dis'> <cis' e> <cis fis> <e gis> <cis gis' cis> |
		b'8. gis16 gis4 e |
		dis8. b16 b4 dis |
		b8. gis16 gis8 r8 r4 |
		gis8 a \acciaccatura b a gis a <a dis> |
		% bar 35
		a8. gis16 gis2 |
		\once \override Beam  #'positions = #'(3 . 3) gis8[ a \acciaccatura b a gis] \times 2/3 {a e' dis} |
		dis8. gis,16 gis2 |
		s4 \acciaccatura { \slurDown b8 \slurNeutral } \once \override NoteHead #'X-extent = #'(0.0 . 0.0) \stemDown \hideNotes a \unHideNotes \stemUp s4. |
		s4 \acciaccatura { \slurDown gis8 \slurNeutral } \once \override NoteHead #'X-extent = #'(0.0 . 0.0) \stemDown \hideNotes fis \unHideNotes \stemUp s4. |
		% bar 40
		s4 \acciaccatura { \slurDown fis8 \slurNeutral} \once \override NoteHead #'X-extent = #'(0.0 . 0.0) \stemDown \hideNotes e \unHideNotes \stemUp s4. |
		e8. dis16 dis4 e |
		<e, gis cis>8 <e gis dis'> <cis' e> <cis fis> <e gis> <cis e cis'> |
		b'8. a16 gis4 fis |
		e8. cis16 <gis cis>4 <fis cis' fis> |
		% bar 45
		e'8 cis cis2\fermata |
	}
	\\
	\relative {
		% bar 25
		\stemUp <fis, bis e>8 <fis bis dis> <fis bis dis> <fis bis cisis> <fis bis dis> <fis bis e> \stemDown|
		s8 e4 cis' s8 |
		<b cis fis> <b fis'> <a fis'> <a fis'> <a fis'> <a fis'> |
		s8 cis4 cis s8 |
		a' a a a gis gis |
		% bar 30
		s8 gis4 cis s8 |
		<b gis'>8 <gis b> <gis b> <gis b> <e gis> <e gis> |
		<dis gis>8 gis gis gis <e fisis cis'> <e fisis cis'> |
		<b dis>8[ <b dis>] <b dis> dis-. \noBeam ( dis-. dis-.) |
		<bis fis'>8 <cis fis> <cis fis> <cis fis> <cis fis> <cis fis> |
		% bar 35
		<cis fis>8 <cis fis> <bis fis'> <bis fis'> <bis fis'> <bis fis'> |
		<bis fis'>8 <cis fis> <cis fis> <cis fis> <cis fis> <cis fis a> |
		<cis fis a>8 <cis fis> <bis fis'> <bis fis'> <bis fis'> <bis fis'> |
		\stemUp <cis e gis>8 <cis e a> <cis e a> <cis e gis> <cis gis' cis> <fis, cis' fis> |
		<a cis e>8 <a cis fis> <a cis fis> <a cis e> <a cis a'> <a cis dis> |
		% bar 40
		<a bis dis>8 <a bis e> <a bis e> <a bis dis> <gis cis gis'> <gis cis> \stemDown|
		<a cis>8 <a cis> <a cis> <a cis> <a cis> <a cis> |
		s8 e4 cis'4 s8 |
		<cis e>2 cis4 |
		<gis cis>4 s2 |
		% bar 45
		<e gis>2.\fermata |
	}
	>>
}

%%% Left Hand %%%

lower = {
	\clef bass
	\key cis \minor
	\time 3/4
	
	% bars 1-8
	
	<<
	\relative {
		<cis,, gis' gis'>8\arpeggio <gis' gis'> <gis gis'> <gis gis'>~ <gis cis,> <gis gis'> |
		<cis, fis cis' fis>\arpeggio <cis' fis cis'> <cis fis cis'> <cis fis cis'> <cis fis cis'> <cis fis cis'> |
		<a a'> <gis gis'> <fis fis'> <e e'> <dis dis'> <dis' a' cis> |
		s2. |
		% bar 5
		cis'8[ b] ais gis'4 e8 |
		e8 dis cisis dis dis gis, |
		ais8 b e dis b ais |
		<dis, gis>8[ <dis gis>] cisis e4 dis8 |
	}
	\\
	\relative {
		s2. |
		s2. |
		cis,8 cis4 a s8 |
		<gis fis' cis'>8\arpeggio <fis' cis'> <fis cis'> <fis cis'> <fis bis> <fis bis> |
		% bar 5
		cis2. |
		<dis gis>2 cis4 |
		b2 cis4 |
		gis4 gis2 |
	}
	>>
	
	% bars 9-12
	
	<<
	\relative {
		<cis,, cis'>8[ <b b'>] <ais ais'> r r cis'' |
		% bar 10
		b8. ais16 ais8 e'4 dis8 |
		<gis,, gis'>8[ <fis fis'>] <eis eis'> r r gis'' |
		fis8. eis16 eis8 b'4 ais8 |
	}
	\\
	\relative {
		s4. ais,8~ ais4 |
		% bar 10
		dis8[ dis] dis dis4 dis8 |
		s4. eis8~ eis4 |
		ais8[ ais] ais ais4 ais8 |
	}
	\\
	\relative {
		s2. |
		% bar 10
		s4 ais2 |
		s2. |
		s4 eis'2 |
	}
	>>
	
	\key bes \minor
	
	% bars 13-16
	
	<<
	\relative {
		ees8[ des] c bes'4 ges8 |
		ges f e f f bes, |
		% bar 15
		c des ges f des c |
		<f, bes>[ <f bes>] <f bes> \noBeam f-.( f-.[ f-.]) |
	}
	\\
	\relative {
		ees,2. |
		<f bes>2 ees4 |
		% bar 15
		des2 ees4 |
		bes4~ bes8 r8 r4 |
	}
	>>
	
	\key ees \major
	
	% bars 17-24
	
	<<
	\relative {
		f,8 f f f f f |
		f f f f f f |
		f f f f f f |
		% bar 20
		f f f f f f |
		g g g g ges ges |
		f f f f <des f> <des ges> |
		aes8 aes aes aes beses beses |
		aes8 aes aes aes beses beses |
	}
	\\
	\relative {
		bes,2. |
		bes2. |
		bes2. |
		% bar 20
		bes2. |
		ees2 aes,4 |
		des2 ges,4 |
		s2. |
		s2. |
	}
	>>
	
	\key cis \minor
	
	% bars 25-45
	
	<<
	\relative {
		% bar 25
		a2 gis4 |
		<cis,, gis' gis'>8\arpeggio <gis' gis'> <gis gis'> <gis gis'>~ <cis, gis'> <gis' gis'> |
		<cis, fis cis' fis>\arpeggio <cis' fis cis'> <cis fis cis'> <cis fis cis'> <cis fis cis'> <cis fis cis'> |
		<a a'>8 <gis gis'> <fis fis'> <e e'> <dis dis'> <dis' a' cis> |
		<gis, fis' cis'>8\arpeggio <fis' cis'> <fis cis'> <fis cis'> <gis, fis' bis> <fis' bis> |
		% bar 30
		cis'16 gis cis b ais8. gis'16 gis 8 fis16 e |
		e16 dis dis cisis cisis dis dis e dis gis, gis ais |
		ais16 b b e e dis dis b b ais ais gis |
		<gis, dis' gis>4. s4. |
		dis'8 dis dis dis dis dis |
		% bar 35
		dis8 dis dis dis dis dis |
		dis8 dis dis dis dis dis |
		dis8 dis dis dis dis dis |
		cis8 cis cis cis cis cis |
		cis8 cis cis cis cis cis |
		% bar 40
		cis8 cis cis cis cis cis |
		cis8 cis cis cis cis cis |
		s2 gis'4 |
		fisis4 gis a |
		cis,8 cis cis cis cis cis |
		% bar 45
		<cis, gis' cis>2._\fermata |
	}
	\\
	\relative {
		% bar 25
		gis,8 gis gis gis gis gis |
		s2. |
		s2. |
		cis8 cis4 a s8 |
		s2. |
		% bar 30
		cis2. |
		<dis gis>2 cis4 |
		b2 cis4 |
		s4. dis8-.( dis-.[ dis-.]) |
		gis,2. |
		% bar 35
		gis2. |
		gis2. |
		gis2. |
		b2 a4 |
		gis2 fis4 |
		% bar 40
		fis2 e4 |
		fis2 fisis4 |
		<cis gis' cis>8 cis' cis cis cis cis |
		cis8 cis cis cis cis cis |
		cis4 b a |
		% bar 45
		s2. |
	}
	>>
}

%%% Dynamics %%%

dynamics = {
	\override DynamicText #'self-alignment-X = #-1
	\override DynamicTextSpanner #'dash-period = #-1
	s16\p s16\< s2 s8\! |
	s8\> s s\! s4. |
	s8\< s2 s8\! |
	s8\> s s\! s4. |
	% bar 5
	\setTextCresc s8\< s2 s8\! |
	s2. |
	s2. |
	s4 s8\p s4. |
	\setTextCresc s4. s8\< s4 |
	% bar 10
	s2. |
	s2. |
	s2 s8 s8\! |
	s8\f s4 s4.|
	s2. |
	% bar 15
	s2. |
	\setTextDim s4 s8\> s4 s8\! |
	s8\pp s4 s4. |
	s2. |
	s8\ppp s4 s4. |
	% bar 20
	s2. |
	s8\mf s4 s4. |
	s2. |
	s2. |
	s2. |
	% bar 25
	s2. |
	s8\f s4 s8\< s8 s8\! |
	s8\> s8\! s2 |
	s8 s8\< s4. s8\! |
	s8\> s8\! s2 |
	% bar 30
	s8\mf s4 s4. |
	s2. |
	s2. |
	s2. |
	s8\pp s4 s4. |
	% bar 35
	s2. |
	s8\ppp s4 s4. |
	s2. |
	s8\pp s4 s4. |
	s2. |
	% bar 40
	\setTextDim s8\> s4 s4. |
	s2 s8 s8\! |
	s8\ppp s4 s4. |
	s2. |
	s2. |
	% bar 45
	s2. |
}

%%%%%%%%%%%%%%
%%% Output %%%
%%%%%%%%%%%%%%

%%% PDF, PS %%%

\score {
	\new PianoStaff <<
		\new Staff = "upper" \upper
		\new Dynamics = "dynamics" \dynamics
		\new Staff = "lower" \lower
	>>
	\layout {
		\context {
			\type "Engraver_group"
			\name Dynamics
			\alias Voice
			\consists "Output_property_engraver"

			\override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)

			\consists "Script_engraver"
			\consists "Dynamic_engraver"
			\consists "Text_engraver"
     
			\override DynamicText #'extra-offset = #'(0 . 2.5)
			\override Hairpin #'extra-offset = #'(0 . 2.5)
			\override DynamicTextSpanner #'extra-offset = #'(0 . 2.5) 
     
			\consists "Skip_event_swallow_translator"
     
			\consists "Axis_group_engraver"
		}
		\context {
			\PianoStaff
			\accepts Dynamics
			\override VerticalAlignment #'forced-distance = #9.5
		}
	}
}

%%% MIDI %%%

\score {
	\new PianoStaff <<
		\new Staff = "upper" << \upper \dynamics >>
		\new Staff = "lower" << \lower \dynamics >>
	>>
	\midi {
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
