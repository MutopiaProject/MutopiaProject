\version "2.6.0"

% Nocturne No. 1 in B-flat minor
% F. Chopin - Op. 9, No. 1
% 
% typeset by Benjamin Esham <bdesham@gmail.com>
%
% This file was last updated on 2005-08-07.
%
% This music is part of the Mutopia project (http://www.MutopiaProject.org/).
% Copyright (c) The Mutopia Project and Benjamin Esham, 2005.
%
% This work is licensed under the Creative Commons Attribution-ShareAlike License 2.5.
% To view a copy of that license visit http://creativecommons.org/licenses/by-sa/2.5/
% or send a letter to Creative Commons, 559 Nathan Abbott Way, Stanford, CA 94305, USA.
% 
% NOTES
% 
% - There are no fingerings in this version.  I'll probably add them in a later version.

%%
%% MACROS
%%

% some stuff to assist with polyphony
up = {\stemUp \slurUp \tieUp \phrasingSlurUp}
down = {\stemDown \slurDown \tieDown \phrasingSlurDown}
sreset = {\stemNeutral \slurNeutral \tieNeutral \phrasingSlurNeutral}

% don't display the numbers (or brackets) on tuplets
tupletNumbersOff = {
	\override TupletBracket #'bracket-visibility = ##f
	\override TupletBracket #'number-visibility = ##f
}

% reset \tupletNumbersOff
tupletNumbersOn = {
	\revert TupletBracket #'bracket-visibility
	\revert TupletBracket #'number-visibility
}

% display the tuplet number for this next tuplet only
tupletNumbersOnce = { \once \override TupletBracket #'number-visibility = ##t }

% options for breaking up tuplets
quarterTuplets = { \set tupletSpannerDuration = #(ly:make-moment 1 4) }
halfBarTuplets = { \set tupletSpannerDuration = #(ly:make-moment 3 4) }
wholeBarTuplets = { \set tupletSpannerDuration = #(ly:make-moment 6 4) }

% shorter versions of the pedal commands
pd = \sustainDown
pu = \sustainUp

%%
%% MUSIC
%%

rightNotes = \relative c'''{
	\time 6/4
	\key bes \minor
	\clef treble
	
	#(override-auto-beam-setting '(end * * * *) 6 8 'Staff)
	\set Staff.extraNatural = ##f
	
	\context Voice = main {
		
		\partial 2. bes8_\markup{\dynamic p \italic espress.}( c des a bes ges
		f4-.-\<)( f-. f-.) f-\! ges8-\>( f ees c-\!)
		des2-\>( bes4-\!) \times 6/11 { bes'8( c des a bes a gis a c bes ges) }
		\wholeBarTuplets
		\times 12/22 { f8[( ges e f bes-. a-. aes-. g-. ges-. f-. e-. ees-. d-. des-. c des c b c f e ees]) }
		des2->( bes4) bes'4-.-\<( bes-. bes-.-\!)
		% measure 5
		aes2._\markup{\dynamic{fz p}}( ~ << \context Voice = main { \up
			aes2 ~ aes8 ges
			\sreset
		} \\ { \down
			des4-> bes8-\< c des ges-\!
		} >>
		f2.->) ees4( f8-\> ees des beses-\!
		aes2) des4( ees_\markup{\italic smorz.} f8 ees des ees
		f2.) bes8-\p-\>\( c des a \acciaccatura c8 bes ges-\!\)
		f4-.-\<( f-. f-.-\!) f( ges8-\> f ees c-\!)
		% measure 10
		des2->( bes4) \times 6/11 { bes'8( c des a bes \once \override Hairpin #'extra-offset = #'(0.0 . -1.0)
			a-\< gis a c bes ges) }
		\once \override Hairpin #'extra-offset = #'(0.0 . -1.0)
		\once \override TextScript #'extra-offset = #'(0.0 . 0.8)
		\once \override OttavaBracket #'extra-offset = #'(0.0 . 1.0)
		\tupletNumbersOff \quarterTuplets \times 2/3 { f8-|-\!-\>_\markup{\italic legatissimo}[
			#(set-octavation 1) f''( e] ees[ des c] bes[ ges f] e[ ees des] c-\![ bes a]
			#(set-octavation 0) ges-\>[ f c-\!]) } \tupletNumbersOn
		des2-\>( bes4-\!) bes'4-.-\<( bes-. bes-.-\!)
		bes2->( d,4) ees-\trill( d8 ees ges8.-> f16)
		f2-\>( e4-\!) \acciaccatura { f16[ ges] } \halfBarTuplets \times 6/7 { f8-\<\( e f g a-. bes-. c-.-\! }
		% measure 15
		\tupletNumbersOff des2_\markup{\dynamic f \italic appassionato} \times 2/3 { bes8( ges? bes,)\) } des2->( c4)
			\tupletNumbersOn
		\acciaccatura bes8 f''4.->_\markup{\italic cresc.}( des8 \noBeam \times 2/3 { bes ges bes,) }  des2->( c4)
		\acciaccatura bes8 #(set-octavation 1) des''4_\markup{\italic{con forza}} ~ \tupletNumbersOff
			\times 2/3 { des8[ bes-. ges-.] #(set-octavation 0) des-.[ bes-. bes,-.] } ces2->( a4-\p \tupletNumbersOn
		bes2.) r2 r4
		\once \override TextScript #'extra-offset = #'(0.0 . 1.6)
		<f f'>2.-\pp^\markup{\italic{sotto voce}}( <fes fes'>
		% measure 20
		<ees ees'>8 <f? f'?> <ees ees'>4 <c c'> <bes bes'> <aes aes'>2->
		<bes bes'>4-\< <c c'>2-> <des des'>4 <ees ees'>2->-\!
		<f f'>8 <ges ges'> <bes bes'>4-\> <aes aes'> <f f'>2.-\!)
		<f f'>2._\markup{\italic{poco rallent.}}( <e e'>
		<d d'>8-\ppp <e e'> <d d'>4 <a a'> <b b'>2.->)
		% measure 25
		<d d'>8( <e e'> <d d'>4 <a a'> <bes? bes'?>2.-\f^\markup{\italic{a tempo}})(
		<c c'>2._\markup{\italic cresc.} <des des'>2.)
		<f f'>2.-\p( <fes fes'>
		<ees ees'>8 <f? f'?> <ees ees'>4 <c c'> <bes bes'> <aes aes'>2->
		<bes bes'>4-\< <c c'>2-> <des des'>4 <ees ees'>2->
		% measure 30
		<f f'>8 <ges ges'>-\!-\> <bes bes'>4 <aes aes'> \acciaccatura <aes aes'>8\( <f f'>2.-\!\))
		<f f'>2._\markup{\italic{poco rallent.}}( <e e'>
		<d d'>8-\ppp <e e'> <d d'>4 <a a'> <b b'>2.->)
		<d d'>8( <e e'> <d d'>4 <a a'> <bes? bes'?>2.^\markup{\italic{a tempo}})(
		<c c'>2. <des des'>2.)
		% measure 35
		<ees ees'>2._\markup{\dynamic f \italic{poco stretto}}( <f f'>
		<ges ges'>4 <f f'>8-\< <ges ges'> <aes aes'> <bes bes'>-\!) <bes bes'>4-\>( <ees, ees'>-\!) <aes aes'>4-> ~
		<aes aes'>4( <bes bes'>8-\> <aes aes'> <ges ges'> <f f'>-\!)
			<f f'>4( <ges ges'>8-\> <f f'> <ees ees'> <des des'>-\!)
		<ees ees'>1_\markup{\dynamic{fz p}}^( ~ <ees ees'>4-\< <e e'>4-\!)
		<f f'>2._\markup{\italic{poco rallent.}}( <e e'>
		% measure 40
		<d d'>8-\ppp <e e'> <d d'>4 <a a'> <b b'>2.->)
		<d d'>8( <e e'> <d d'>4 <a a'> <bes? bes'?>2.-\f^\markup{\italic{a tempo}})(
		<c c'>2. <des des'>2.)
		<ees ees'>2._\markup{\dynamic f \italic{poco stretto}}( <f f'>
		<ges ges'>4 <f f'>8-\< <ges ges'> <aes aes'> <bes bes'>-\!) <bes bes'>4-\>( <ees, ees'>-\!) <aes aes'>4-> ~
		% measure 45
		<aes aes'>4( <bes bes'>8-\> <aes aes'> <ges ges'> <f f'>-\!)	
			<f f'>4( <ges ges'>8-\> <f f'> <ees ees'> <des des'>-\!)
		<ees ees'>1_\markup{\dynamic{fz p}}^( ~ <ees ees'>4-\< <e e'>4-\!)
		<f f'>2._\markup{\italic{poco rallent.}}( <e e'>
		<d d'>8-\ppp <e e'> <d d'>4 <a a'> <b b'>2.)
		<d d'>8( <e e'> <d d'>4 <a a'> <bes? bes'?>2.-\f^\markup{\italic{a tempo}})(
		% measure 50
		<c c'>2. <des des'>2.)
		<< \context Voice = main { \up
			f'2^>( ees8 f) ees2( des4)
			\sreset
		} \\ { \down
			<f, ces'>2.-\ff <f ces'>
		} >>
		<ces' aes'>4.( <des bes'>8 <ces aes'> <des bes'> <ces aes'>4.) r8 r4
		<< \context Voice = main { \up
			f2( ees8 f) ees2^>( des4)
			\sreset
		} \\ { \down
			<f, ces'>1 <f ces'>2
		} >>
		<ces' aes'>8( <des bes'> <ces aes'> <des bes'> <ces aes'> <des bes'> <ces aes'>2.)
		% measure 55
		<des' f>4.->_\markup{\italic{con forza}}( <ces ees>8 <aes ces> <f aes>) <ces f>2( <ces ees ges>4
		<< \context Voice = main { \up
			<ges' bes>2.^> <f aes>)
			\sreset
		} \\ { \down
			ces1.
		} >>
		<des f>4.->-\pp( <ces ees>8 <aes ces> <f aes>) <ces f>2^( << \context Voice = main { \up
			ges'4
			<ges bes>2.^> <f aes>)
			\sreset
		} \\ { \down
			<ces ees>4 ~ ces1.
		} >>
		R1.
		% measure 60
		R1.
		<des' f>2->_\markup{\dynamic ppp \italic legatissimo}( <aes ees'>8 <des f>) <aes ees'>2( <f des'>4)
		<f' aes>4.( <ges bes>8 <f aes> <ges bes> <f aes>4.) r8 r4
		<des f>2( <aes ees'>8 <des f>) <aes ees'>2( <f des'>4)
		<f' aes>8( <ges bes> <f aes> <ges bes> <f aes> <ges bes> <f aes>2.)
		% measure 65
		<des' f>4._\markup{\italic{sempre pianissimo}}( <aes ees'>8 <f des'> <f aes>) <des f>2( <ees ges>4
		<ges bes>2. <f aes>)
		<des f>1.->_\markup{\dynamic fz} ~
		<des f>1. ~
		<des f>1._\markup{\italic smorz.}
		% measure 70
		r2_\markup{\italic{rall. e dolciss.}} r4 bes'8( c des a-> bes-> ges)
		\once \override TextScript #'extra-offset = #'(0.0 . 1.4)
		f4-.^\markup{\italic{a tempo}}( f-. f-.) f( ges8 f ees c
		des2 bes4) bes'8( c des a \times 2/3 { c8 bes ges) }
		\tupletNumbersOff \times 2/3 { f8[( ges e] f[) #(set-octavation 1) f''_\markup{\italic legatissimo}( e]
			ees[ des c] } \tupletNumbersOn \halfBarTuplets \times 6/20 { bes a ges f e ees des c bes a ges
			#(set-octavation 0) f ges e? f b, c e ees des) }
		des2( bes4-\<) bes'4-.( bes-. bes-.-\!)
		% measure 75
		bes2-\>( d,4-\!) \times 6/7 { ees8( f ees d ees ges8.-> f16) }
		f2-\>( e4-\!) f4^\trill^\markup{\flat} \grace { e16[( f] } g8-\<)-.( a-. bes-. c-.-\!)
		des2-\f( \times 2/3 { bes8 ges? bes,) } des2->( c4)
		\acciaccatura bes8 f''4._\markup{\italic cresc.}( des8 \noBeam \times 2/3 { bes ges bes,) }  des2->( c4)
		\acciaccatura bes8 #(set-octavation 1) des''4-\ff ~ \tupletNumbersOff \times 2/3 { des8[ bes-. ges-.]
			#(set-octavation 0) des-.[ bes-. bes,-.] } ces2->( a4_\markup{\italic dimin.}
		% measure 80
		bes2.-\p) ces2->( a4
		bes2._\markup{\italic smorz.}) ces16->[( ees ges ces] ees8) r8 r8 a,,8(
		\break			% including this makes a system look horrible for a4, but leaving it out makes that
						% system look horrible for both a4 and letter.
		bes2) r4 <ees' ges>2.->-\ff ~
		<ees ges>8_\markup{\italic accelerando} <ces ees>-> <a ces>-> <ges a>-> <ees ges>-> <ces ees>->
			\stemDown <a ces>->_\markup{\italic dimin.} <ges a>-> <ees ges>-> <ces ees>-> \change Staff = "down"
			\stemUp <a ces>8->^\markup{\italic ritenuto \dynamic ppp} <ges a ees'>-> \change Staff = "up"
		s1.
		% measure 85
		s1.

		\bar "|."
		
	} % end of Voice context
}

leftNotes = \relative c {
	#(override-auto-beam-setting '(end * * * *) 6 8 'Staff)
	
	\time 6/4
	\key bes \minor
	\clef bass
	
	\context Voice = main {

		\stemDown
		
		\partial 2. r2 r4
		bes8\pd( f' des' bes f'\pu f,) bes,\pd( f' ees' a, f' f,\pu)
		bes,\pd( f' des' bes f' f,\pu) bes,\pd( f' des' bes f' f,\pu)
		bes,\pd( f' des' bes f' f,\pu) bes,\pd( f' ees' a, f' f,\pu)
		bes,\pd( f' des' bes f' f,) bes,( f' des' bes f' f,\pu)
		% measure 5
		des,\pd( f' des' aes f' f,\pu) ges,\pd( des' bes' ges des' des,\pu)
		des,\pd( des' aes' f des' des,\pu) ges,\pd( des' beses' ges des' des,\pu)
		des,\pd( des' aes' f des' des,\pu) ges,\pd( des' beses' ges ees'\pu c,)
		f,\pd( c' a' f ees' a,\pu) bes,\pd( f' des' bes f' f,\pu)
		bes,\pd( f' des' bes f'\pu f,) bes,\pd( f' ees' a, f' f,\pu)
		% measure 10
		bes,\pd( f' des' bes f' f,\pu) bes,\pd( f' des' bes f' f,\pu)
		bes,\pd( f' des' bes f' f,\pu) bes,\pd( f' ees' a, f' f,\pu)
		bes,\pd( f' des' bes f' f,) bes,( f' des' bes f' f,\pu)
		bes,\pd( f' d' bes aes'\pu bes,) ees,\pd( ges ees' bes ges' ees\pu)
		c,\pd( g' e' c bes'\pu c,) f,\pd( c' \clef treble a' ees c' a\pu)
		% measure 15
		\clef bass bes,,\pd( f' des' bes ees,\pu ges') << {
			s8 f,2 s8
		} \\ {
			f,8\pd^( f' bes f' ees\pu a,)
		} >>
		bes,8\pd( f' des' bes ees,\pu ges') << {
			s8 f,2 s8
		} \\ {
			f,8\pd^( f' bes f' ees\pu a,)
		} >>
		ges,8\pd( des' ges bes fes'\pu ges,) << {
			ees2 f4
		} \\ {
			ees8\pd^( ges ces ees\pu) f, ees'
		} >>
		\once \override TextScript #'extra-offset = #'(0.0 . -1.6)
		bes,8\pd-\<( f' des' bes f' des-\! bes_\markup{\italic smorz.} f des bes f\pu ees)
		des\pd( aes' des aes' des, aes\pu) des,\pd( aes' des aeses' des, aes\pu)
		% measure 20
		des,\pd( aes' c ges' c, aes\pu) des,\pd( aes' c ges' c, aes\pu)
		des,\pd( aes' c ges' c, aes\pu) des,\pd( aes' c ges' c, aes\pu)
		des,\pd( aes' ees' aes c, aes\pu) des,\pd( aes' des aes' des, aes)
		des,( aes' des aes' des, aes\pu) cis,\pd( a' cis g' cis, a\pu)
		d,\pd( a' d fis d a\pu) d,\pd( g d' g d g,\pu)
		% measure 25
		d\pd( a' d fis d a\pu) g\pd( cis e bes'? e, cis\pu)
		aes?\pd( ees'? ges? beses aes aes,\pu) des,\pd( aes' des aes' des, aes\pu)
		des,\pd( aes' des aes' des, aes\pu) des,\pd( aes' des aeses' des, aes\pu)
		des,\pd( aes' c ges' c, aes\pu) des,\pd( aes' c ges' c, aes\pu)
		des,\pd( aes' c ges' c, aes\pu) des,\pd( aes' c ges' c, aes\pu)
		% measure 30
		des,\pd( aes' ees' aes c, aes\pu) des,\pd( aes' des aes' des, aes)
		des,( aes' des aes' des, aes\pu) cis,\pd( a' cis g' cis, a\pu)
		d,\pd( a' d fis d a\pu) d,\pd( g d' g d g,\pu)
		d\pd( a' d fis d a\pu) g\pd( cis e bes' e, cis\pu)
		aes?\pd( ees'? ges? beses aes\pu aes,) des,\pd( aes' des aes' des, bes?\pu)
		% measure 35
		aes\pd( ees' aes c aes ees\pu) aes,\pd( d f bes f d\pu)
		ges,\pd( bes ees bes' ees, bes\pu) ges\pd( c ees aes ees\pu c)
		f,\pd( aes des aes' des, aes\pu) des,\pd( aes' des aes' des, aes\pu)
		des,\pd( bes' ees g ees bes\pu) des,\pd( a' c ges' c,\pu aes)
		des,\pd( aes' des aes' des, aes\pu) cis,\pd( a' cis g' cis, a\pu)
		% measure 40
		d,\pd( a' d fis d a\pu) d,\pd( g d' g d g,\pu)
		d\pd( a' d fis d a\pu) g\pd( cis e bes'? e, cis\pu)
		aes?\pd( ees'? ges? beses aes aes,\pu) des,\pd( aes' des aes' des, bes?\pu)
		aes8\pd( ees' aes c aes ees\pu) aes,\pd( d f bes f d\pu)
		ges,\pd( bes ees bes' ees, bes\pu) ges\pd( c ees aes ees\pu c)
		% measure 45
		f,\pd( aes des aes' des, aes\pu) des,\pd( aes' des aes' des, aes\pu)
		des,\pd( bes' ees g ees bes\pu) des,\pd( a' c ges' c,\pu aes)
		des,\pd( aes' des aes' des, aes\pu) cis,\pd( a' cis g' cis, a\pu)
		d,\pd( a' d fis d a\pu) d,\pd( g d' g d g,\pu)
		d\pd( a' d fis d a\pu) g\pd( cis e bes' e, cis\pu)
		% measure 50
		aes?8\pd( ees'? ges? beses aes\pu aes,) des,\pd( aes' des aes' des, aes\pu)
		des,\pd( aes' des aes' des, aes) des,( aes' des aes' des, aes\pu)
		des,\pd( aes' des aes' des, aes) des,( aes' des aes' des, aes\pu)
		des,\pd( aes' des aes' des, aes) des,( aes' des aes' des, aes\pu)
		des,\pd( aes' des aes' des, aes) des,( aes' des aes' des, aes\pu)
		% measure 55
		des,\pd( aes' des aes' des, aes) des,( aes' des aes' des,\pu aes)
		des,\pd( aes' des aes' des, aes\pu) des,\pd( aes' des aes' des, aes\pu)
		des,\pd( aes' des aes' des, aes) des,( aes' des aes' des,\pu aes)
		des,\pd( aes' des aes' des, aes\pu) des\pd( aes' des aes des, aes)
		des( aes' des aes des, aes) des( aes' des aes des, aes)
		% measure 60
		des aes' des aes des, aes des aes' des aes des, aes\pu
		des\pd aes' des aes des, aes des aes' des aes des, aes
		des aes' des aes des, aes des aes' des aes des, aes
		des aes' des aes des, aes des aes' des aes des, aes
		des( aes' des aes des, aes) des( aes' des aes des, aes)
		% measure 65
		des( aes' des aes des, aes) des( aes' des aes des, aes)
		des( aes' des aes des, aes) des( aes' des aes des, aes)
		\once \override TextScript #'extra-offset = #'(0.0 . -1.0)
			des_\markup{\italic sempre \dynamic pp}( aes' des aes des,\pu) a\pd( des a' des a des,\pu) aes\pd(
		des aes' des aes des,\pu) ges,\pd( des' ges des' ges, des\pu) aes\pd(
		des aes' des aes des,\pu) a\pd( des a' des a des,\pu) a\pd(
		% measure 70
		<< {
			s8 s s s s bes4*1/2 des f s8 s s s
		} \\ \context Voice = "main" {
			des8 a' des a des,\pu) bes\pd( des f des' bes f' f,\pu)
		} >>
		bes,\pd( f' des' bes f' f,\pu) bes,\pd( f' ees' a, f' f,\pu)
		bes,\pd( f' des' bes f' f,\pu) bes,\pd( f' des' bes f' f,\pu)
		bes,\pd( f' des' bes f' f,\pu) bes,\pd( f' ees' a, f' f,\pu
		bes,\pd f' des' bes f' f,) bes,( f' des' bes f' f,\pu)
		% measure 75
		bes,\pd( f' d' bes aes' bes,\pu) ees,\pd( ges ees' bes ges' ees\pu)
		c,\pd( g' e' c bes'\pu c,) f,\pd( c' \clef treble a' ees c' a\pu)
		\clef bass bes,,\pd( f' des' bes ees,\pu ges') << {
			s8 f,2 s8
		} \\ {
			f,8\pd^( f' bes f' ees\pu a,)
		} >>
		bes,8\pd( f' des' bes ees,\pu ges') << {
			s8 f,2 s8
		} \\ {
			f,8\pd^( f' bes f' ees\pu a,)
		} >>
		ges,8\pd( des' ges bes fes' ges,\pu) << {
			ees2 f4
		} \\ {
			ees8\pd^( ges ces ees) f,\pu ees'
		} >>
		% measure 80
		bes,\pd( f' des' bes f' f,\pu) bes,\pd( ges' ees' a, ges'\pu ges,)
		bes,\pd( f' des' bes f' f,\pu) bes,\pd( ges' ees' a, ges' ges,\pu)
		bes,\pd( f' des' bes f' f,\pu) bes,\pd( ges' a ces ees ges)
		\stemNeutral \clef treble a4 r4 r r2 \clef bass s8 s8\pu
		<< {
			<f, bes d>2.( <f bes d>4-. <f bes d>-. <bes d>-.)
		} \\ {
			<bes,, bes'>2.\pd( <bes bes'>4-. <bes bes'>-. <bes bes'>-.\pu)
		} \\ {
			\stemDown
			s2. s4 s s8 ges''8*1/2 f		% this is a kludge to get the eighth notes to the right of the others
		} >>
		% measure 85
		<bes,, bes' d f bes d>1\arpeggio^\fermata_\fermata\pd s2\pu

		\bar "|."
	
	} % end of Voice context
}

%#(set-default-paper-size "letter")
#(set-global-staff-size 19)

\header {
	title = "Nocturne"
	dedication = \markup{à Madame Camilla Pleyel}
	composer = "F. Chopin"
	opus = "Op. 9, No. 1"
	arranger = "Edited by Rafael Joseffy"
	
	mutopiatitle = "Nocturne No. 1 in B-flat minor"
	mutopiacomposer = "ChopinFF"
	mutopiaopus = "Op. 9, No. 1"
	mutopiainstrument = "Piano"
	
	date = "1827"
	source = "Schirmer, 1915"
	style = "Romantic"
	copyright = "Creative Commons Attribution-ShareAlike 2.5"
	
	maintainer = "Benjamin D. Esham"
	maintainerEmail = "bdesham@gmail.com"
	lastupdated = "2005/Aug/07"
        
        footer = "Mutopia-2005/08/08-582"
        tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2005. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }

}

\score {
	\context PianoStaff <<
		\set PianoStaff.instrument = \markup{\fontsize #4 {1.} \hspace #1.0 }
		\context Staff = "up" <<
			\rightNotes
		>>
		\context Staff = "down" <<
			\leftNotes
		>>
	>>
	
	\layout {
		\context { \Score \override SpacingSpanner #'spacing-increment = #1.2 }
	}
	
	\midi { \tempo 4 = 116 }
}
