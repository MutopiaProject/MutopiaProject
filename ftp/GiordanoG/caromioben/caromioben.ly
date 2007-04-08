\header{
title="Caro Mio Ben";
subtitle = "(Come once again)";
filename = "caromioben.ly";
enteredby = "Peter Chubb" +
	  "}\def\largamente{\bf largamente}{";
composer = "Attributed to Guiseppe Giordiano\\\\" + "1748--1798";
tagline = "\\\\This music is part of the
            Mutopia project, http://sca.uwaterloo.ca/Mutopia/\\\\It has been typeset and placed in the
            public domain by Peter Chubb.\\\\Unrestricted modification and redistribution is permitted and
            encouraged --- copy this music and share it!";
mutopiatitle = "Caro Mio Ben (Come Once Again)";
mutopiacomposer = "G. Giordiano (1748-1798)";
mutopiainstrument = "voice piano";
date="1780s";
source="Boosey and Hawkes 1903, as corrected from other editions";
style="classical";
copyright="Public Domain";
}
\version "1.2.1";
%{
	Transcribed from a 1903 Boosey & Hawkes arrangement, and
	corrected from various other editions.
%}

global=\notes{
	\time 4/4;
	\key D;
	\property Staff.timeSignatureStyle = "C"
}

tune=\notes\relative c''{
	\partial 2;
	\property Voice.noAutoBeaming = 1
	\property Voice.dynamicDirection = 1
	\skip 2;
	\skip 1*3;
	\break
%5
	\property Voice.textStyle = "italic"
	r2 d4 cis8. b16 |
	a2 b4  a8. g16 |
	fis2 g4 fis8 e |
% Lily currently can't end slurs inside a grace section.
%	a2 d,4 ( \grace { [e16 ) d16]}
	a2 d,4  \grace { [e16  d16]}
	   cis8 d |
        fis4( )e r2 |
%10
	r2 b'4 a8. g16 |
	fis2 g4 fis8 e |
	[a8()d] [d,()g] fis4( )e8. d16 |
	d2 r2 |
	r1 |
%15
	r2 a'4 b8 cis |
	b2 \< b4 cis8 \! d |
	cis2 e4-> \f d8 cis |
	[b8()gis] [a( )d] cis4 [b8.( )a16] |
	a2 b4 a8. g16 |
%20
	fis4 r4 a4 g8 fis |
	fis4( )e  d' gis,8 gis |
	a2-\fermata(\<  \!)d4\sp cis8. b16 |
	a2 \< b4 \! a8. g16 |
	fis2 g4 fis8 e |
%25
	[a8( )d] [d, ( ) g] fis4( )e8. d16 |
	d2 \p \grace { [g16 (   a16] }
		)b4 a8. g16 |
	fis4 r4 \< \grace { [g16 ( a16] }  )b4 
	\! a8. g16 |
	fis4 r4 d'4 cis8 b |
        a2 ( \grace { [b16 a gis a ] } )d4-\fermata r4 |
%30
	fis,2 e4. d8 |
	d2 r2 |
	r1 | r2-\fermata \bar "|.";
}

pianoRH=\notes\relative c' {
%1
	\partial 2;
	\context Staff <
		{\voiceone  \property Voice.slurdirection=UP
			d'4^"{\Large \bf Larghetto.}"( [cis8. b16] | <)a2 d,> <b4( g d> 
			 [<a8. fis> <g16 e>] | )fis2}
		{\voicetwo fis4 g | s2 s4 cis,4 | d2 }
	> 
	<g4 e b> 
	\context Staff <
		{ \voiceone [fis8. e16] }
		{ \voicetwo <cis4 a> }
	> |
	\context Staff <
		{  \voiceone [a8( )d] [d,( )g] fis4 \shifton [e8. d16] }
		{  \voicetwo d4_"\largamente" b d [d8 cis] }
	>
%5
	<d2 a> <fis4( d> <g cis,> |
	<)a2 d,> <b4( g d> 
	\context Staff <
		{ \voiceone [<a8. fis> <g16 e>]  }
		{ \voicetwo cis,4}
	> |
	<)fis2 d> <g4( b,> \context Staff <
		{\voiceone [fis8 e]}
		{\voicetwo cis4}
	> |
	<)a2 d, a> <d, gis,> |
	\context Staff <
		{\voiceone d4( )cis }
		{\voicetwo a2} 
	>
	\context Staff <
		{\voiceone  <d'4( fis,> [cis8. )b16] }
		{\voicetwo s4 g4}
	> |
%10
	a2 \mf <b4  d,> 
	\context Staff < 
		{ \voiceone [a8.( g16] | <)fis2 d> }
		{ \voicetwo cis4 | s2 }
	>
	<g4( e b> 
	\context Staff <
		{\voiceone [fis8 e] }
		{\voicetwo cis4}
	> |
	<)a4 d,> \context Staff < 
		{\voiceone [d,8 g]}
		{\voicetwo b,4}
	> <fis4 d a> <e cis g> |
	[<d8 fis,> a' d fis] <a4( d, a> 
	\context Staff <
		{ \voiceone [g8. fis16] }
		{ \voicetwo <d4 b> }
	> |
	[<e8 cis> <cis a e> <d a d,> <g, d>] <fis4 d a> <e cis g> |
%15
	<)d2 fis,> <a'4 e a, \p >  <a e cis> |
	\context Staff <
		{ \voiceone a4( )gis} 
		{\voicetwo <e2 b>}
	>
	<b4 e, b> <b gis b,> |
	<a4. cis, \<>  r8 < a4 e a,> [< \! gis8 e d> <a e cis>] |
	<gis4 e b \> > [<a8 e a,> <a d,>] <a4 e cis> <gis e \! d > |
	<a2 e cis> <g!4 e b \pp >  <e a,> |
%20
	<fis4.( a,> <g8 e> <a4 d,> [<g8 e> <fis d>] |
	<)fis4  d(>  <e )cis> <gis e d \mf > <gis e d> |
	<a2-\fermata e cis> 
	\context Staff <
		{\voiceone <fis4 ( d > <g cis,> | )a2}
		{\voicetwo s4 \pp s4 | d,4 ( )cis } 
	>
	\context Staff <
		{\voiceone b4( [<a8. fis>  <g16 e>] | <)fis2 b,>}
		{\voicetwo b,4 \p cis | \shifton e4 ( ) d }
	>
	<g4( e b \mf>  [<fis8. d a> <e16 cis a>] |
	<)d4. a> <g8 e b> <fis4 d a> <cis a g> |
%25
	<d2 b fis> <g4 e b> <e a> |
	\context Staff <
		{\voiceone <fis2 a,> <b4 g b,> [<a8. fis> <g16 e>]|
		\shifton cis,4 ( ) b}
		{\voicetwo e4 ( ) d s4 cis | <fis2 d> }
	>
	<d'4 fis, d> \context Staff < 
		{\voiceone [<cis8 fis,> <b g>] }
		{\voicetwo  d,4 }
	>
	<a4 d, a> r4 r4-\fermata <g e b \f> |
%30
	<fis2 d a> <e cis a g> |
	<d a fis> <d'4( fis, d> 
	\context Staff <
		{\voiceone [<cis8 fis,> <b g>] }
		{\voicetwo d,4}
	> |
	[<a8_"{\it rit.}" d,> d d, \< <g e b>] <fis4 d a> <e cis  \! g >
	<)d2-\fermata fis,> \bar "|.";
}

pianoLH=\notes\relative c {
	\property Voice.dynamicDirection = 1
	\partial 2;
	<d4 a'> <e a> |
	<fis2 a> g4 a  |
	b2 <e,,4 e'> [<a8 a'> <g g'>] |
	<fis4 fis'> <g g'> <a a'> <a g'> |
%5
	<d2 fis> <d4 a'> <e a> |
	<fis2 a> <g4 g,> <a a,> |
	<b2 b,> e,4( [a8 g] |
	)fis2 <e b> |
	\context Staff <
		{\voiceone fis4( )e }
		{\voicetwo a,2}
	>
	<d4 \f a'> <e cis'> |
%10
	<fis2 d'> <g,4 g' > <a a'> |
	<b2 b'> e4 [a8 g] |
	fis4 <g, g,> <a2 a,> |
	<d d, > <fis4 fis,> <g g,> |
	[<a8 a,> <g g,> <fis fis,> <b b,>] <a4 a,> <a, a,> |
%15
	<a2  d,> cis4 a |
	e'2 gis4 e |
	a4. r8 cis,4 [b8 a] |
	[e'8( d cis )fis] e4 e, |
	a2 e'4 cis |
%20
	d r <fis a> <g b> |
	a2  b,4  <e, e'> |
	<a2-\fermata a'> <d4 a'> <e a> |
	<fis2 a> g,4( [a8. ais16] |
	)b2 e4( [fis8. g16] |
%25
	)fis4.  <e8 e,8> a,4 a|
	b2 <e4 e,> <cis cis,> |
	<d2 d,> <g,4 g,> <a a,> |
	<b2 b,> <b'4 b,> [<a8 a,> <g g,>] |
	<fis4 fis,> r4 r4-\fermata g,4 |
%30
	a2 < ~a a,> |
	<d2 d,> b'4 [a8 g] |
	fis4. <g8 g,> <a4 a,>  <a, a,> |
	<a2-\fermata d,> \bar "|.";
}


piano=\notes{
	\context PianoStaff <
	      \context Staff=pianoRH \notes {\clef "treble"; \global\pianoRH}
	      \context Staff=pianoLH \notes {\clef "bass"; \global\pianoLH}
	>
}

ItalianWords=\lyrics{
	\partial 2;
	""2 | ""1 | ""1 | ""1 | 
	""2 Ca-4 ro8 mio8 |  ben2
	cre-4 di-8 "m\\t{i~}al-"8  | men2 sen-4 za8 di |
	te2  lan4 __ gui8 __ "sc\\t{e~}il" | cor.2 ""2 | ""2 
	Ca-4 ro8. mio16 | ben2 sen-4 za8 di | te4 lan- gui4.  __ _16 "sc\\t{e~}il"16 | cor.2
	""2 | ""1 | ""2 Il4 tuo8 fe- | del2 so-4 spir-8 "\\t{a~o}-"8 | gnor2 ces-4
	sa8 cru-8 | del4  tan __ to4 ri4 __ | gor2
	Ces-4 sa8. cru-16 | del4 ""4 tan-4 to8 ri-8 |
	gor,2 tan-4 to8 ri- | gor.2 
	Car-4 ro8. mio16 | ben2 cre-4
	di-8. "m\\t{i }al-"16 | men2 sen-4 za8 di |
	te4 lan- gui4. __ _16 "sc\\t{e~}il"16 | cor.2 
	Ca-4 ro8. mio16 | ben4 ""4 cre4 __
	di-8. "m\\t{i~}al"16 __ | men4 ""4 sen-4 za8 di |
	te2 __  ""2 |
	lan-2 gui-4. "sc\\t{e~}il"8 | cor.2 ""2 | ""1 | ""2
}

% English translation removed: still copyright.

words=\lyrics <
      \context Lyrics = It { \property Lyrics . textStyle = "roman" \ItalianWords }
%      \context Lyrics = En { \property Lyrics . textStyle = "italic" \EnglishWords }
>

voice=\context Staff = voice <
	     \notes {\global\clef "G"; \tune}
	     \context Lyrics=voice \words
>

\score{
    \notes  <
	 \voice
	 \piano
    >
    \paper {
	% Try to fit on two A4 sheets
	textheight=295.0\mm;
	indent=0.0\mm;
	crescendo_height = \staffheight/6.0;

	% Mutopia guidelines
	linewidth = 18.0\cm;

%	\translator {\BarNumberingStaffContext}
	\translator {\HaraKiriStaffContext}
	\translator {\ScoreContext
	barColumnPriority = "0";
	marginBreakPriority = "-4";
	skipBars = 1;
	\consists "Mark_engraver";
	\consists "Bar_number_engraver";}

    }
    \midi {
	\tempo 4=80;
    }
}
