% This is an edition of Sibylla Samia by Orlande de Lassus prepared by 
% Francis Hemingway (music@francishemingway.com) based on the CPDL edition (www.cpdl.org) 
% by Brian Russell (CPDL #16135), which I checked against two sources, the first of which is a modern edition, and the second is the earliest
% known manuscript, housed in the Austrian National Library.
% 1. di Lasso, Orlando. "Sibylla Samia," in Prophetiae Sibyllarum, edited by Reinhold Schlötterer (Kassel, Germany: Bärenreiter, 1990).
% 2. Vienna, Österreichische Nationalbibliothek, Musiksammlung, Mus. Hs. 18.744


\version "2.10.33"
#(ly:set-option 'point-and-click #f)
\include "english.ly"

\header {
	title = "5. Sibylla Samia"
	subtitle = "from Prophetiae Sibyllarum"
	composer = "Orlande de Lassus (1530 or 1532-1594)"
	
	%mutopia-specific headers:
	mutopiatitle = "Sibylla Samia"
	mutopiacomposer = "LassusOd"
	mutopiainstrument = "Voice (SATB)"
	date = "Mid-to-late 1550's"
	source = "Vienna, Österreichische Nationalbibliothek, Musiksammlung, Mus. Hs. 18.744"
	style = "Renaissance"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Francis Hemingway"
	maintainerEmail = "francis@francishemingway.com"
	lastupdated = "2008/Dec/8"
%	moreinfo = "
%	<p>This edition is based on the <a href="http://www.cpdl.org">Choral Public Domain Library</a> edition by Brian Russell (<a href="http://www.choralwiki.net/wiki/index.php/Prophetiae_Sibyllarum_-_V._Sibylla_Samia_%28Orlando_di_Lasso%29">CPDL #16135</a>), which I checked against two sources, the first of which is a modern edition, and the second is the earliest known manuscript, housed in the Austrian National Library. Apart from halving on note lengths, only two changes have been made from the manuscript source: the b natural in the tenor part in bar 25, which is needed to follow the rules of <i>musica ficta</i> and the last two words of the cantus part have been repeated: although they are not explicitly written out, a repeat is indicated, and this seems the most sensible interpretation. Not </p>
%	<ol>
%	<li>di Lasso, Orlando. "Sibylla Samia," in Prophetiae Sibyllarum, edited by Reinhold Schlötterer (Kassel, Germany: Bärenreiter, 1990).</li>
%	<li>Vienna, Österreichische Nationalbibliothek, Musiksammlung, Mus. Hs. 18.744</li>
%	</ol>"
 footer = "Mutopia-2008/12/10-1602"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}


%to fit the music A4 better, set the global-staff-szie to 17.
	#(set-global-staff-size 17)
\paper 
{
	ragged-last-bottom = ##f
	ragged-bottom = ##f
}

\score{
<<
%sop part
\relative c''
{
	\set Staff.instrumentName = "Cantus"
	%preamble	
	\key f \major	
	\time 2/2	
	
	%first line
	
	g1 g 
	\time 3/2
	f fs2 g1 a2 a b c4 a~a g2 g4 f2 
	\time 2/2
	e1 fs g2. e4
	
	%second line
	e4 r8 c'4 a4 f8~f bf4 g a8 fs8. fs16 fs4 g g2 e1 f4 f g2 a4 c d2

	%third line
	b4 c a4. a8 e2 fs g4 g b4. b8 c2 a2~a4 a c bf~bf g e4. e8 
	
	%fourth line
	e2 fs g r4 g4 g2 bf4 bf4 a bf4 a2 fs4 f2 f4 f g2 a4~

	%fifth line
	a4 a4 a2 g2 r2 r2 r4 f4~f4 f f f fs2 g4 d'~d d a4. a8

	%sixth line
	b2 r4 c4~c8 c8 c4 cs2 d4 bf4. bf8 bf4 bf1 a1 \bar "|."
}
\addlyrics { 
	%first line
	Ec -- ce di -- es, ni -- gras quae tol -- let lae -- ta te -- ne -- bras, Mox ve -- ni 
	%second line
	-- et, sol -- vens no -- do -- sa vo -- lu -- mi -- na va -- tum Gen -- tis Ju -- dae -- ae,  re -- fe --	
	%third line
	rent, ut car -- mi -- na ple -- bis. Hunc po -- te -- runt cla -- rum vi -- ro -- rum tan -- ge --

	%fourth line
	re re -- gem, Hu -- ma -- no quem vir -- go si -- nu in -- vi -- o -- la -- ta 

	%fifth line
	fo -- ve -- bit. An -- nu -- it hoc coe -- lum, ru -- ti -- lan -- ti --

	%sixth line
	a si -- de -- ra mon -- strant, si -- de -- ra mon -- strant. __
	
}


%Altus part
\relative c'
{
	\set Staff.instrumentName = "Altus"
	%preamble	
	\key f \major	
	\time 2/2	
	
	%first line
	
	d1 ef 
	\time 3/2
	d1 d2 e1 e2 e g g4 f4~f4 d2 ef4 d2
	\time 2/2
	b1 d b2. c4

	%second line
	c8 g'4 e8 c4 f d bf8 ef4 c8 d4 d2 e a,1 a4 a e'2 f2. f4

	%third line
	g4 e f c~c8 cs8 cs4 d2 d4 d g4. g8 e2 e2 f4 f c d bf4. bf8 c2
	%fourth line
	cs2 d e e d4 e f2 fs4 g8 \melisma f e d \melismaEnd e4  a2 d,2 d4 d e2
	%fifth line
	f1 d4. \melisma e8  f e f4 \melismaEnd bf,8 \melisma c d  bf  c2 \melismaEnd d4 d2 d4 d d d2 fs4 fs2 fs4  
	%sixth line
	g4. g8 e4 e4~e8 e8 g4 a2 f8 f4 f8 g2 g1 fs
}
\addlyrics { 
	%First line
	Ec -- ce di -- es, ni -- gras quae tol -- let lae -- ta te -- ne -- bras, Mox ve -- ni -- 
	%second line
	et, sol -- vens no -- do -- sa vo -- lu -- mi -- na va -- tum Gen -- tis Ju -- dae -- ae, re -- 
	%third line
	fe -- rent, ut car -- mi -- na ple -- bis. Hunc po -- te -- runt, cla -- rum vi -- ro -- rum tan -- ge -- re
	%fourth line
	re -- gem, Hu -- ma -- no quem vir -- go si -- _  nu in -- vi -- o -- la
	%fifth line
	ta fo_ -- ve_ -- bit. An -- nu -- it hoc coe -- lum, ru -- ti --
	%sixth line
	lant -- ti -- a si -- de -- ra mon -- strant, si -- de -- ra mon -- strant. __ 
}
%tenor part
\relative c
{
	\set Staff.instrumentName = "Tenor"
	%preamble	
	\key f \major	
	\time 2/2	
	\clef "treble_8"	

	g'2 bf ~ | bf1 |   % 3
	\time 3/2	
	bf1 a2 | c1 cs2 |   % 5
	cs d e4 c ~ | c b2 c4 a2 \time 2/2 | 
	gs1 | a |   % 9
	d2. g,4 | g c a f |   % 11
	bf g8 bf c8. a16 a4 ~ | a b c2 |   % 13
	cs1 | d4 c c2 |   % 15
	c4 a bf2 | g4 a f4. f8 |   % 17
	a2 d, | g4 g d'4. d8 |   % 19
	c2 cs! | d4 c a f |   % 21
	g4. g8 g2 | a a |   % 23
	c c | b!4 c d2 |   % 25
	d4 d4~d8 \melisma cs16 
	%editorial / musica ficta natural
	\set suggestAccidentals = ##t
	b
	\set suggestAccidentals = ##f 
	cs4 \melismaEnd | d2 bf |   % 27
	bf4 bf c2 | c4 d \melisma c8 a c4 ~ |   % 29
	c8 bf bf a16 bf c4 \melismaEnd d~  | d8 \melisma  c bf2 a4 |   % 31
	\melismaEnd bf  bf2 bf4 | a a bf2 |   % 33
	a d ~ | d4 d g,4. g8 |   % 35
	a4 e'4. e8 e4 | d2 bf4 ef4~ef8 ef8 d4 d2 d1
}
\addlyrics { 
	%First line
	Ec -- ce di -- es, ni -- gras quae tol -- let lae -- ta te -- ne -- bras, Mox ve -- ni -- 
	%second line
	et, sol -- vens no -- do -- sa vo -- lu -- mi -- na va -- tum Gen -- tis Ju -- dae -- ae, re -- fe --
	%third line
	rent, ut car -- mi -- na ple -- bis. Hunc po -- te -- runt, cla -- rum vi -- ro -- rum tan -- ge -- re
	%fourth line
	re -- gem, Hu -- ma -- no quem vir -- go si_ --   nu in -- vi -- o -- la
	%fifth line
	ta fo_ -- ve_ -- bit. An -- nu -- it hoc coe -- lum, ru -- ti --
	%sixth line
	lant -- ti -- a si -- de -- ra mon -- strant, si -- de -- ra mon -- strant. __ 
}

%bass part
\relative c
{
	\set Staff.instrumentName = "Bassus"
	%preamble	
	\key f \major	
	\time 2/2	
	\clef bass 

	g'1 | ef |   % 3
	\time 3/2
	bf d2 | c1 a2 |   % 5
	a' g c,4 f ~ | f g2 c,4 d2 \time 2/2 | 
	e1 | d |   % 9
	g,2. c4 | c r f d |   % 11
	bf ef c8 f d8. d16 | d4 g c,2 |   % 13
	r a | d4 f c2 |   % 15
	f r | r1 |   % 17
	r2 r4 a | bf4. bf8 g2 |   % 19
	r4 a2 a4 | d, f2 bf,4 |   % 21
	ef4. ef8 c2 | a d |   % 23
	r4 c c2 | g4 c bf4. \melisma c8 |   % 25
	d4 \melismaEnd g a2 | d, r |   % 27
	r1 | f2 f4 f |   % 29
	g2 a4 d, | g2 f |   % 31
	r4 bf,2 bf4 | d d g2 |   % 33
	d4 d2 d4 | g,4. g8 c2 |   % 35
	c'4. c8 a2 \melisma | bf \melismaEnd ef,4. \melisma  f8 | g1 | \melismaEnd d
}
\addlyrics { 
	%First line
	Ec -- ce di -- es, ni -- gras quae tol -- let lae -- ta te -- ne -- bras, Mox ve -- ni -- 
	%second line
	et, sol -- vens no -- do -- sa vo -- lu -- mi -- na va -- tum Gen -- tis Ju -- dae -- ae. 
	%third line	
	Hunc po -- te -- runt, cla -- rum vi -- ro -- rum tan -- ge -- re
	%fourth line
	re -- gem, Hu -- ma -- no quem vir_ -- go si --  nu 
	%fifth line
	in -- vi -- o -- la -- ta fo -- ve -- bit. An -- nu -- it hoc coe -- lum, ru -- ti --
	%sixth line
	lan -- ti -- a si -- de -- ra_ mon_ -- strant. __ 
}

>>

\layout {}
\midi {}
}
