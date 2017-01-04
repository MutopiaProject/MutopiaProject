\version "2.18.2"

% Nocturne No. 19 in E minor
% F. Chopin - Op. 72, No. 1
% 
% typeset by Benjamin Esham <bdesham@gmail.com>
%
% This file was last updated on 2016-12-16.
%
% This music is part of the Mutopia project (http://www.MutopiaProject.org/).
% Copyright (c) The Mutopia Project and Benjamin Esham, 2004–2006.
%
% This work is licensed under the Creative Commons Attribution-ShareAlike License 4.0.
% To view a copy of that license visit http://creativecommons.org/licenses/by-sa/4.0/
% or send a letter to Creative Commons, 559 Nathan Abbott Way, Stanford, CA 94305, USA.
% 
% HISTORY
%
% - 2004-12-13: initial release.
% - 2005-07-21: updated version to 2.6.0 (though with no actual changes).
% - 2005-08-02: tweaked size to fit on four letter-sized pages with Mutopia footer.
%               (Re-)added the large "19." at the beginning of the grand staff.
% - 2006-09-19: fixed two errors pointed out by Aron F. (thanks!) and updated the
%               syntax for Lilypond 2.8.
% - 2016-12-16: Updated to 2.18.2
% - 2017-01-04: Update license to CCASA version 4.0
%
% NOTES
% 
% - There are no fingerings in this version.  I may add them in a later version.
% 
% BUGS -- if you have ideas for fixing any of these, please e-mail me!
% 
% - A number of phrasing slurs are used; these should be "normal" slurs, but those
%   would be broken by acciaccatura.
% - The grace note at the end of measure 30 in the right hand should be slurred
%   to the G dotted half note in measure 31.
% - In measure 51, the D quarter note in the right hand should be tied to the D eighth
%   note immediately after it, and there should be an arpeggiation sign to the left of
%   the D quarter note and the G eighth note above it.
% - In the right hand in measure 36, the grace notes should not be slurred.
% - In the right hand in measures 13 and 42, the first G eighth note (in the upper
%   voice) should be tied to the second one (in the lower voice).
% - In the right hand in measure 45, the grace notes (F-sharp and E) should be slurred.

%%
%% MACROS
%%

% some stuff to assist with polyphony
up = {\stemUp \slurUp \phrasingSlurUp}
down = {\stemDown \slurDown \phrasingSlurDown}
sreset = {\stemNeutral \slurNeutral \phrasingSlurNeutral}

% don't display the numbers (or brackets) on tuplets
tupletNumbersOff = {
	\override TupletBracket.bracket-visibility = ##f
	\override TupletNumber.transparent = ##t
}

% reset \tupletNumbersOff
tupletNumbersOn = {
	\revert TupletBracket.bracket-visibility
	\override TupletNumber.transparent = ##f
}

% display the tuplet number for this next tuplet only
tupletNumbersOnce = { \once \override TupletNumber.transparent = ##f }

% shorter versions of the pedal commands
pd = \sustainOn
pu = \sustainOff

% Don't display dynamic mark; helps with MIDI output
noDyn = { \once \omit Staff.DynamicText }

%%
%% MUSIC
%%

rightNotes = \relative c''{
	\time 4/4
	\key e \minor
	\clef treble

	\set Staff.tupletSpannerDuration = #(ly:make-moment 1/4)
	\tupletNumbersOff

	\context Voice = main {
		
		% this is a kludge to get the text to be left-aligned in the measure but keep
		% the rest center-aligned in the measure.
		s4*0^\markup{\large{\bold{Andante (\note #"4" #0.8 = 69)}}}
			_\markup{\dynamic p \bold{\italic{molto legato}}}
			R1
		\acciaccatura b8 g'2._\markup{\bold\italic espress.}( fis8 e)
		dis2( ~ dis4 e8. c16)
		b4.( fis8-\> <a c> <g b> <fis a> <e g>-\!)
		% measure 5
		<dis fis>4-\<^( <e g>-\!-\> <dis fis>8-\!) r r4
		<d! b'>4-\p^( << \context Voice = main { \up
			b'2 cis4
			d2) d4( d_\markup{\italic dim.}
			cis1
			b4)
			\sreset
		} \\ { \down
			f4 fis_\markup{\italic cresc.} ais
			b2 b
			b2 ais
			b4
		} >> dis,4-\<^(
			\once \override TextScript.extra-offset = #'(0.0 . 1.0)
			e^\markup{\italic riten.} fis-\!)
		% measure 10
		\once \override TextScript.extra-offset = #'(0.0 . 1.0)
			<g g'>2.-\mf^\markup{\italic{a tempo}}( <fis fis'>8 <e e'>8)
		\tupletNumbersOn
		<dis dis'>2( ~ \tuplet 3/2 { <dis dis'>8-\< <e e'> <fis fis'>) <fis fis'>( <g g'> <a a'>-\!) }
		\tupletNumbersOff
		<b b'>4.( << \context Voice = main { \up
			\tupletNumbersOnce b8) b4( \tuplet 3/2 { b8 a g) }
			fis4( \tuplet 3/2 { g8 e' e } dis2)
			\tieUp d!2( ~ d4 c ~
			% measure 15
			c8 \tieNeutral b \once \override Script.extra-offset = #'(0.0 . 1.2) a-\trill g g4) g8 g
			a4( a8 a a4 a8 a)
			b4( b8 b b4 <b cis>)
			<b d!>2 cis
			dis2( e4-\> b-\!
			% measure 20
			ais2 b)
			b2^>( ais
			<dis, b'>2-\pp)
			\sreset
		} \\ {
			\down a'8 \tuplet 3/2 { a gis g \tupletNumbersOff g fis e }
			dis4 \tuplet 3/2 { e8 g g } fis2
			fis4-\p g8-\< f e2-\!
			% measure 15
			f2-\> e2-\!
			<e g>2_\markup{\italic{poco a poco cresc.}} f!
			<fis a>2 g
			fis2-\f-\>( b4-\!-\< ais-\!)
			a!2->_\markup{\dynamic sf \italic dim.} g
			% measure 20
			g4_\markup{\italic dim.} fis8 e d2
			cis2.-\> e?4-\!
			s2
		} >> r2
		
		% we have to use a phrasing slur because the acciaccatura would break a normal one
		<b' dis>2_\markup{\dynamic pp \bold\italic aspiratamente}\( \acciaccatura <a! cis>8 <a cis>2
		\acciaccatura <gis b>8 <gis b>2.\) <a c!>4_\markup{\italic cresc.}(
		% measure 25
		<ais cis>4. <b dis>8 << \context Voice = main { \up
			<cis e>8 <dis fis> <e g> <e g>
			<e g>4-\> <dis fis>2.-\!)
			<dis, b' dis>2-\f( <dis a'! cis>4. <dis a' b>8
			cis'4 b2 b4
			ais1
			% measure 30
			<fis a!>2.^\markup{\italic riten.}) r4
			\sreset
		} \\ { \down
			s4 ais
			b1
			s1
			<e, gis>1
			<e g!>4._\markup{\italic{poco dimin.}} <dis fis>8 <e g> <dis fis> <e g> <e g>
			% measure 30
			e4->( dis2) s16 s s \acciaccatura b'8 s16
		} >>
		\acciaccatura b8 g'2.-\f^\markup{\italic{a tempo}} b,16-\prall( ais b e
		\tupletNumbersOn
		dis2.) \tuplet 6/4 { e16-\<-\prall( dis e fis g a-\! }
		b2.) \tuplet 6/4 { b16-\<-\prall( cis dis e fis g-\! }
		\acciaccatura dis,8 fis'4->) e32-\>[( cis ais g! e cis ais e-\!] <dis b'>4_\markup{\italic dim.}) r
		% measure 35
		d!4-\p( \grace { e16[ fis g a] } \tuplet 3/2 { b8-.)( b-. b-.) } b4(
			\tuplet 10/8 { ais32-\<-\prall gis ais b cis d! e fis gis ais-\! }
		b2)( \ottava #1 << {
			s4 s16 s s \acciaccatura { ais16[ b cis] } s
			cis2-\trill cis4-\trill \tuplet 11/8 { bis32-\< cis d dis e eis fis! g gis a! ais-\! }
		} \\ {
			b,2^\trill^\markup{\sharp}(
			b2) ais2
		} >>
		<b! b'!>4-\f) \ottava #0 dis,,4-\<^( e fis-\!)
		<g g'>2.-\f( <fis fis'>8 <e e'>)
		% measure 40
		<dis dis'>2( ~ \tuplet 3/2 { <dis dis'>8-\< <e e'> <fis fis'> <g g'>[ <a a'>) r16 <b b'>-\!] }
		\tupletNumbersOff
		\tuplet 3/2 { <b b'>8-\ff( <b b'> <b b'> <b b'>) b\(( <a b>) } << \context Voice = main { \up
			\tuplet 3/2 { b8 b b b a g\) }
			\sreset
		} \\ { \down
			\tupletNumbersOff \tuplet 3/2 { \noDyn a8-\> \ff gis \noDyn g-\! \f g-\> fis \noDyn e-\! \mf }
		} >>
		<< {
			fis4( \tupletNumbersOff \tuplet 3/2 { g8 e' e } dis2)
			dis2\( ~ dis4 dis
			e2 e4 e
			% measure 45
			g2 \acciaccatura { fis16[ e] } e4 dis4
			<gis, b e>2.\) 
		} \\ {
			dis4 \tupletNumbersOff \tuplet 3/2 { e8 g g } fis2
			<fis a!>2-\sf ~ <fis a>
			<e g>2 <e g>
			% measure 45
			<g b>2_\markup{\italic dimin.} <fis a! b>->
			s2.
		} >>
		r4
		% phrasing slur because acciaccatura breaks normal slur
		<e' gis>2_\markup{\dynamic pp \bold\italic dolcissimo}\( << <d! fis> { s4 s16 s s \acciaccatura <cis e>8 s16 } >>
		<cis e>2.\) <d f>4(
		<dis fis!>4._\markup{\italic{poco cresc.}} <e gis>8 << \context Voice = main { \up
			<fis a>8 <gis b> <a c!> <a c>
			% measure 50
			<a c>4 <gis b>4_\markup{\italic dim.})
			\sreset
		} \\ { \down
			s4 dis4
			% measure 50
			e2
		} >> r2
		<< { \up
			\tupletNumbersOff
			% phrasing slur because acciaccatura breaks normal slur
			<e gis>4\( ~ \tuplet 3/2 { <e gis>8 <e gis> <e gis> } gis8 fis ~
				\tuplet 3/2 { <d fis>8 <d fis> <d fis> }
			\acciaccatura fis8 e2\)
			\sreset
		} \\ {
			r4-\p gis,2*1/2 d'!4 gis,4
			<a cis>2
		} >> r2
		<< \context Voice = main { \up
			dis1(
			\sreset
		} \\ { \down
			\noDyn <a c!>4.-\> \p <gis b>8-\! <a c>8 <gis b> <a c> <a c>
		} >> <gis b e>2._\markup{\italic dim.}) r4
		% measure 55
		<dis fis a>2.-\pp^( <dis fis a>4
		<e gis>4_\markup{\bold\italic calando}) r4 r2
		\clef bass
		e,,2.^> r4

		\bar "|."
		
	} % end of Voice context
}

leftNotes = \relative c' {
	\time 4/4
	\key e \minor
	\clef bass

	\set Staff.tupletSpannerDuration = #(ly:make-moment 1/4)
	
	\tuplet 3/2 {
		e,,8\pd( b' g' e c'\pu b) \tupletNumbersOff e,,\pd( b' g' e c'\pu b)
		e,,\pd(_\markup{\bold \italic "sempre legato"} b' g' e c'\pu b) e,,\pd( b' g' e c'\pu b)
		fis,\pd b a' fis c'\pu b g,\pd b g' e c'\pu b
		dis,,\pd b' a' fis c' b\pu e,,\pd b' g' e c' b\pu
		% measure 5
		b,,\pd b' b'\pu ais\pd g ais,\pu b\pd b, b' dis fis b\pu
		g,\pd( d' b' g\pu e' d) fis,,\pd( fis' cis' e cis fis,\pu)
		b,\pd( fis' d' b g'\pu fis eis\pd d b gis eis eis,\pu)
	}
	<<
		{ 
		  s1 s4 a'! g fis 
		} \\ { 
		  \tuplet 3/2 {
		    \tupletNumbersOff
		    fis,8\pd^( fis' cis' e! g!\pu fis e\pd cis ais \stemUp fis fis, fis,\pu
		    b8\pd^[) b'( fis'] \stemNeutral a! c! b g c b fis c' b) 
		  }
		}
	>>
	\tuplet 3/2 {
		% measure 10
		e,,\pd b' g' e c'\pu b e,,\pd b' g' e c'\pu b
		fis,\pd b a' fis c'\pu b g,\pd b g' e c'\pu b
		dis,,\pd b' a' fis c'\pu b e,,\pd b' g' e c'\pu b
		b,,\pd b' b'\pu ais\pd b, b,\pu b'\pd b, b' dis fis b\pu
		b,\pd b, b' d! g\pu b c\pd b c g e c\pu
		% measure 15
		g\pd d' g b e\pu d c\pd c, e g c e\pu
		cis\pd cis, e a f'\pu e d,,\pd d' f a e'\pu d
		dis,,\pd dis' fis! b g'\pu fis e,,\pd e' g b g' e\pu
		fis,,\pd fis' d'! b g'\pu fis fis,,\pd fis' d' cis g'\pu fis	
		b,,,\pd b' fis' b g'\pu fis e,,\pd e' g b fis'\pu e
		% measure 20
		fis,,\pd cis' e ais d\pu cis fis,,\pd d' fis b ais\pu b
		fis,\pd cis' eis fis! a!\pu g fis,\pd cis' eis fis! eis\pu fis
		b,,\pd fis' fis' dis cis b b, fis' fis' dis cis b\pu
		b,\pd fis' fis' dis cis b b, fis' fis' dis cis b\pu
		b,\pd b' gis' e cis b b, b' gis' e cis b\pu
		% measure 25
		b,\pd b' g'! e cis b\pu b,\pd b' g' e cis b\pu
		b,\pd fis' fis' dis cis b b, fis' fis' dis cis b\pu
		b,\pd fis' fis' dis cis b\pu b,\pd fis' fis' dis cis b\pu
		b,\pd b' gis' e cis b\pu b,\pd b' gis' e cis b\pu
		b,\pd b' g'! e cis b\pu b,\pd b' g' e cis b\pu
		% measure 30
		b,-\<\pd b' fis' a c! b a fis dis c b b,-\!
		e\pd( b' g' e c'\pu b) e,,\pd( b' g' e c'\pu b)
		fis,\pd( b a' fis c'\pu b) g,\pd( b g' e\pu c' b)
		dis,,\pd( b' a' fis c'\pu b) e,,\pd( b' g' e c'!\pu b)
	}
	<<
		{ s4 g b s }
		\\
		{ \tupletNumbersOff \tuplet 3/2 { b,,8\pd b' fis'\pu g\pd b, ais'\pu b\pd b,( ais\pu b dis fis) } }
	>>
	\tuplet 3/2 {
		% measure 35
		g,\pd d'! b' g\pu e' d fis,,\pd fis' d' e\pu cis fis,
		b,\pd fis' d' b g'\pu fis eis\pd d b eis, d eis,\pu
		fis\pd fis' cis' e g\pu fis e\pd cis ais fis fis, fis,\pu
	}
	<<
		{ s4 a'' g fis }
		\\
		{ \tupletNumbersOff \tuplet 3/2 { b,,8\pd b' fis' a! c! b\pu g c b fis c' b } }
	>>
	\tuplet 3/2 {
		e,,\pd b' g' e c'\pu b e,,\pd b' g' e c'\pu b
		% measure 40
		fis,\pd b a' fis c'\pu b g,\pd b g' e c'\pu b
		dis,,\pd b' b' fis c'->\pu b-> e,,\pd b' g' e c'\pu b
		b,,\pd b' b'\pu ais\pd b, b,\pu b'\pd b, b' dis fis b\pu
		% beam down to avoid collision with \sf in upper staff
		\stemDown c c, b \stemNeutral c^\> d! c b b,\pd b' fis' c'\pu b-\!
		b, b,\pd b' e c'\pu b ais^\< g\pd e ais, g ais,\pu-\!
		% measure 45
		b\pd b' e g c\pu b b,\pd ais b b, ais b\pu
		e\pd b' b' gis^\> fis e e, b' b' gis fis e\pu-\!
		e,\pd b' b' gis fis e e, b' b' gis fis e\pu
		e,\pd e' cis' a fis e e,^\< e' cis' a\pu fis e-\!
		e,\pd e' c'! a fis e\pu e,\pd e' c' a fis e\pu
		% measure 50
		e,^\>\pd b' b'-\! gis fis e e, b' b' gis fis e\pu
		e,\pd b' b' gis fis e e, b' b' gis fis e\pu
		e,\pd e' cis' a fis e e, e' cis' a fis e\pu
		e,\pd e' c'! a fis e\pu e,\pd e' c' a fis e\pu
		e,\pd b' b' gis fis e e, b' b' gis fis e\pu
		% measure 55
		e,\pd e' c' a fis e e, e' c' a fis e\pu
		e,\pd b' b' gis fis e e, b' b' gis fis e\pu_(
	}
	<e gis e'>2.->) r4

	\bar "|."
}

%#(set-default-paper-size "letter")
#(set-global-staff-size 18.7)		% 18.8+ pushes it to five pages with the mutopia footer

\header {
	title = "Nocturne"
	subtitle = \markup{\small Posthumous}
	composer = "F. Chopin"
	opus = "Op. 72, No. 1 (1827)"
	arranger = "Edited by Rafael Joseffy"
	
	mutopiatitle = "Nocturne No. 19 in E minor"
	mutopiacomposer = "ChopinFF"
	mutopiaopus = "Op. 72, No. 1"
	mutopiainstrument = "Piano"
	
	date = "1827"
	source = "Schirmer, 1915"
	style = "Romantic"
	license = "Creative Commons Attribution-ShareAlike 4.0"
	
	maintainer = "Benjamin D. Esham"
	maintainerEmail = "bdesham@gmail.com"

 footer = "Mutopia-2017/01/04-509"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2017 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\score {
	\context PianoStaff <<
		\set PianoStaff.instrumentName = \markup{\fontsize #4 {19.} \hspace #1.0 }
		\new Staff <<
			\rightNotes
		>>
		\new Staff <<
			\leftNotes
		>>
	>>
	
	\layout { }

	\midi { \tempo 4 = 70 }
}
