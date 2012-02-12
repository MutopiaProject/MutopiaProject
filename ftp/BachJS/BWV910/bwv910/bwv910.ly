\version "2.14.2"

\header {
	title = "Toccata"
	subtitle = "in f sharp minor"
	composer = "J. S. Bach"
	opus = "BWV 910"
 mutopiatitle = "Toccata in f sharp minor"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 910"
 mutopiainstrument = "Piano/Harpsichord/Clavichord"
 source = "Bach Gesellschaft Ausgabe, 1853"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Imre Polik"
 maintainerEmail = "imre@polik.net"
 maintainerWeb = "http://imre.polik.net"
 lastupdated = "2011/12/14"

 footer = "Mutopia-2011/12/19-1814"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"


Arh =  {\relative c' {
	%Page 1
	\time 4/4
	%line 1
	s2 \stemUp fis32[ cis fis gis a h cis d] cis[ h a gis a fis cis' a]
	fis' [eis fis cis] \stemDown a_"m.s." gis a fis \skip 8 r16 r32 e' d[ e fis  e d cis h ais ] h[ cis d cis h a gis fis]
	%line 2
	gis[ a h a gis fis eis dis ] eis[ fis gis fis eis dis cis h] a [cis fis eis fis \change Staff = "LH" \stemUp fis, a gis] \skip 4
	\change Staff = "RH" \stemUp cis[ fis a gis a cis, fis eis] fis[ gis a h cis d e! fis] d16[ a h gis] eis![ gis cis gis]
	%line 3
	a16 eis fis cis d h gis' h, cis gis a cis \stemDown fis \change Staff = "LH" \stemUp a, d fis,
	h fis gis dis eis gis cis gis a eis fis cis <<{a fis dis' \tieDown fis,~ | \stemDown fis4} \\ {s8 dis'8~ | \stemUp < dis gis his>4} >>
	s4 << {d'8\rest cis~ cis 4}\\{e,16\rest gis cis fis, gis4}>>
	%line 4
	\change Staff = "RH" <<{r8 fis'~fis4 r8 a[ gis fis]}\\{r16 cis[ fis cis] d4 r16 fis[ a fis8 e8 dis16]}>>
	<<{e16 gis cis gis a fis gis dis \stemDown e16 [\change Staff = "LH" \stemUp his cis gis] a fis gis dis}\\{e'4 s4*3}>>
	r16 eis' gis cis,  <<{s8 cis8~ cis4}\\{d16 h cis gis a4}>> r4
	%line 5
	<<{s16*6 fis'8 s8 eis~ eis4 }\\{cis16\rest fis h fis gis eis fis dis eis cis eis cis d h cis gis}>>
	<<{a16 cis fis cis d h cis gis a eis fis cis \stemDown d[ \change Staff = "LH" \stemUp h cis gis]}\\{cis4 s4 cis4 s4}>>
	<<{r2 r16 fis a eis fis4}\\{r2 r4 \stemDown fis16[ cis dis \change Staff = "LH" \stemUp gis,]}>>
	
	%Page 2
	%Line 1
	s1
	s1
	<<{s4*3 d'4}\\{cis16 a cis fis gis,fis'eis h ais cis fis cis \stemDown d[ \change Staff = "LH" \stemUp a h eis,]}>>
	%Line 2.
	\change Staff = "LH" \stemUp fis16 h d h cis gis ais eis fis ais cis gis ais fis gis eis
	\change Staff = "RH" r8 r16 cis'' fis[ a32 gis fis16 gis32 eis] fis16[ e32 d cis h a gis] fis[ a gis fis e dis e cis]
	\bar "||"
	}
}

Alh = {	\relative c {
	%Page 1
	\time 4/4
	r16 fis32[ gis a h cis d] cis[ h a gis a fis cis'a] \skip 2
	\skip 4 \stemUp cis^"m.d." [h cis a] \stemDown fis cis fis,16 \skip 2
	%line 2
	\skip 4*3 fis'32 [eis fis gis a h cis d!]
	\skip 1
	%line 3
	fis,,1~
	fis
	s4 r16 e fis dis  e4_~ e16 dis' e cis
	%line 4
	d,!4 <<{r16 a''[ h8] fis4 r16 gis a fis}\\{r8 r16 fis~ his,4 r4}>>
	<<{gis'4}\\{cis,4}>> r4 r2
	eis4 r <<{ \change Staff = "RH" \stemDown r16 eis'[ fis cis] d[ \change Staff = "LH" \stemUp a h fis]}\\{fis4 r}>>
	%line 5
	<<{gis4 r gis r }\\{d4 r cis r }>>
	<<{fis r fis r}\\{cis r cis r}>>
	a'16 eis fis h, cis gis a fis his,4 r4
	
	%Page 2
	%Line 1
	<<{a''16 cis fis h, cis gis a eis fis a cis gis a eis fis his,}\\{cis,4 r4 r2}>>
	<<{cis'16 fis a eis fis h,! cis gis a cis fis cis fis a fis a}\\{r1}>>
	r4 cis,, fis2~
	%Line 2.
	fis1
	fis'8\fermata s8*7
	
	}
}

Brh = {	\relative c' {
	%Page 2, line 2, bar 3
	\time 3/2
	<<{h'2\rest fis fis}\\{his,1.}>>
	<<{fis'2 eis e4( g8 fis)}\\{cis2 cis cis}>>
	%Line 3
	<<{fis1 gis!2~ | gis}\\{cis,2 his h | ais}>>
	<<{fis'2 e | dis}\\{h2 cis~ | cis}>>
	\appoggiatura fis16 eis2 fis-\mordent~ 
	fis8 a gis h <<{eis,2.-\mordent fis4}\\{h,2 h}>>
	<<{fis'2 r2 r2}\\{h,2 fis'2 fis2}>>
	%Line 4
	<<{r2 cis'2 cis | cis his4 h2 ais4}\\{fis2 eis2 e2~ |e4 dis2. e8 dis e cis}\\{s4*3 gis'4 fisis gis |ais2. gis8 fis e2}>>
	<<{h'4. cis8 ais2.-\prall gis4}\\{dis2 cis cis}>>
	<<{gis'2 e' e}\\{cis,2 h cis}>>
	%Line 5
	<<{e'2 dis d4 ( f8 e)}\\{fis,2 h1}>>
	<<{e1-\mordent fis2}\\{h,2 ais a}>>
	<<{h2 e d8 ([fis e fis16 d16])}\\{a2 gis4 fis gis2}>>
	<<{d'4(cis ) fis2 fis}\\{a,2 cis4 dis8 e dis4 e8 cis}>>
	<<{fis4( eis) r4 e2 a8 dis,}\\{his2 cis1}>>
	%Page 3
	%Line 1
	<<{e8. [gis16 fis e fis gis] dis2. cis4}\\{cis1 his2}>>
	<<{cis2 dis eis}\\{cis2 ~ cis4 h d (cis)}>>
	<<{fis1 fis2~ |fis4 gis8^(a) gis4 a8^(h)g4-\prall fis8^(eis)|eis2}\\{cis1.|h1.~|h2}>>
	%Line 2.
	<<{fis'1~|fis2. gis4 eis2}\\{cis2~ cis8 [h a gis]|a4 h8 cis gis2. gis4}>>
	<<{e'!1.~|e2 d4 e8 cis}\\{fis,1.~|fis1}>>
	<<{d'2~|d2^(cis4-\prall)}\\{h4 cis8 a|gis!2.}>>
	<<{fis'8 eis fis4. e8}\\{h4 a2}>>
	<<{d8([ cis h a16 gis]) a4.-\mordent h8 gis4-\prall_(fis8 gis)}\\{r4 d cis2 h}>>
	%Line 3
	<<{fis'2 fis'16 ([gis fis e d8 e16 cis] ) d4. (e16 fis)}\\{a,,2 r2 a'2}>>
	<<{\appoggiatura fis'16 his,2. cis32 ([dis cis8 dis32 his]) cis2~| cis1}\\{gis1~ gis2~|gis2 a4. (gis16 a)}>>
	<<{h2}\\{h8 (eis,4) fis8}>>
	\newSpacingSection \time 4/4 <<{ \textLengthOn cis'4._\markup{\typewriter "     "} s1*0}\\{\appoggiatura fis,16 eis4.}>>
	}
}

Blh =	\relative c {
	%Page 2, line 2, bar 3
	\time 3/2
	<gis dis' gis>1.
	<<{gis'2 r2*2}\\{cis,1.}>>
	%Line 3
	dis1 eis2
	fis2~ fis8[ e d!16 cis d h] ais2
	h2 <<{h' a}\\{cis, d!}>>
	<<{gis1.}\\{h,2 cis1}>>
	<<{fis2 ais a}\\{fis,2 fis'4 e dis e8^( cis)}>>
	%Line 4
	<<{gis'1.}\\{his,2 cis4^(h) \stemUp ais8 [cis16 h ais8 h16 gis]}>>
	fisis2-\prall gis cis
	<<{fisis4 gis2 ais4 fisis2-\prall}\\{dis1.}>>
	<<{gis1 \stemUp ais2}\\{gis,2 r2 r2}>>
	%Line 5
	h'1 h2
	cis1 dis2
	e1.
	a,2 \clef treble a' fis 
	gis a fis
	%Page 3
	%Line 1
	gis2 fis fis
	<<{fis4 eis fis2 gis}\\{r2 h, h}>>
	<<{cis2. d4 e2~|e2 dis4}\\{h2 ais1|h2.}>>
	<<{e4 fis2}\\{cis4 d2}>>
	<<{gis2 fis4 e! d2}\\{gis,2 a h}>>
	%Line 2
	\clef bass <<{cis2~ cis h2}\\{cis2 cis,1}>>
	<<{ais'4 h8 (cis) h4 d8 ( cis) cis2~|cis2}\\{fis,2 gis ais|h}>>
	<<{h4 a g fis}\\{h,1}>>
	<<{eis2. gis4 fis2}\\{cis2. cis4 d2}>>
	<<{r4 fis2 gis4 eis2}\\{h2 cis1}>>
	%Line 3
	<<{fis2 r2 fis'4 e| dis1}\\{fis,,2 r2 fis'2~ |fis1}>>
	<<{cis'2|cis8 [h16 a a8 gis16 fis] fis4 gis8 a gis4 a8 fis}\\{eis2 | e!2 dis d}>>
	<<{gis4.}\\{cis,4.}>>
}

Crh = \relative c' {
	%Page 3, line 4 bar 1
	\textLengthOn \stemDown  cis'8 \textLengthOff d^"Presto e staccato" cis h a
	gis fis eis dis cis a' gis4-\prall
	<<{r4 r8 fis'8 a gis fis e}\\{fis,8 fis16 gis a gis a gis fis e fis e dis cis dis cis}>> 
	<<{dis'8 cis his ais gis e' dis4-\prall}\\{\change Staff = "LH" \stemUp his,16 ais his ais gis fis gis fis e dis e cis fis8 gis}>>
	%Line 5
	<<{cis'4 cis8 dis eis fis gis4~|gis16 fis gis a h a h a gis a fis4 eis8}\\{\change Staff = "LH" \stemUp cis,,8 [\change Staff = "RH" \stemDown cis'16 dis] eis fis eis fis gis a gis a h cis h cis|d4. cis8 h16 a h a gis cis h cis}>>
	<<{fis8 fis16 gis a gis a gis fis e fis e dis cis dis cis}\\{a16 gis a gis fis4 \change Staff = "LH" \stemUp cis8  h a gis}>>
	%Page 4, line 1
	<<{his'16 cis his cis dis e dis e fis his, cis8~ cis h~|h a~ a gis~ gis fis~ fis eis}\\{\change Staff = "LH" \stemUp fis,4. cis8 his8 gis'16 a! fis gis eis fis| gis16 [\change Staff = "RH" \stemDown cis8 cis16] d cis d h cis h cis a h a h gis}>>
	<<{fis'4 e'16\rest a, gis a h4 r16 h a h}\\{a,16 cis h cis d4 r16 dis cis dis e4}>>
	%line 2
	<<{cis'4 r16 cis h cis d!4 r8 d8~|d16 cis h cis }\\{r16 eis, dis eis fis4 r16 fis16 eis fis gis8 fis|eis4}>>
	<<{a8 cis d cis h a}\\{fis8 ais h fis eis cis}>>
	<<{gis'8 fis eis dis cis a' gis4-\prall}\\{\change Staff = "LH" \stemUp h,8 a gis fis eis fis8^~ fis16 eis dis eis}>>
	%line 3
	<<{fis'8 r16 a r h r cis d8 h4 a8}\\{fis,8 fis' gis ais h r16 d, r e r fis}>>
	<<{a16 gis r h r cis r d e8 cis4 h8}\\{e,8 gis a h cis r16 e, r fis r gis}>>
	<<{h16 a r cis r d r e r fis r fis r gis r ais}\\{fis,8 a h cis d a h cis}>>
	%line 4
	<<{r8 h'4 a!8 gis e fis16 e fis d | e d e cis d cis d e}\\{d8 r16 d r e r fis e d! cis8~ cis h~ | h a~ a gis}>>
	<<{cis8 r16 cis fis e fis e|d cis d cis h a h a gis d' cis h h8. a16}\\{a16 gis a gis fis8 a | gis a e d8~ d16 [\change Staff = "LH" \stemUp gis,] a4 gis8}>>
	%line 5
	<<{a'4 r16 fis' e fis his,4 r16 cis h cis}\\{a,16 cis' h cis fis,4 r16 gis fis gis cis,4}>>
	<<{a'4 r16 h a h gis4 r16 cis h cis}\\{r16 fis, e fis dis4 r16 e dis e cis4}>>
	<<{fis4 r16 dis gis dis e4 r8 gis'}\\{r16 dis, cis dis his4 cis8 e' fis e}>>
	%line 6
	<<{a8 gis fis e dis cis his ais}\\{dis8 e his gis fis e dis cis}>>
	<<{gis'8 e' dis4-\prall cis16 gis fis gis a gis a gis}\\{\change Staff = "LH" \stemUp his,8 cis8^~ cis16 his ais his cis4 s}>>
	<<{fis16 fis' eis fis g fis g fis eis eis dis eis fis e fis e}\\{r2 r16 gis, fis gis a gis a gis}>>
	%page 5, line 1
	<<{d'!4 cis h a |gis r8 cis}\\{fis,8 h4 a4 gis fis8_~ | fis fis eis4-\prall}>>
	<<{d'8 cis h a | gis fis eis dis}\\{fis8 r16 cis d cis d cis | \change Staff = "LH" \stemUp h a h a gis fis gis fis}>>
	<<{cis'8 a' gis4-\prall ^~|
	%line 2
	gis16 fis gis a h4~ h16 a h cis d4~|
	d16 cis d e fis4~ fis16 h, e8~ e16 a, d8~|
	d16 g, cis8~ cis16 fis, h8~ h16 h ais gis ais4}\\{
	\change Staff = "LH" \stemUp eis,16 cis fis8~ fis16 eis fis gis|
	a4~ a16 gis a h cis4~ cis16 h cis d|
	\change Staff = "RH" \stemDown e4 ~ e16 d e fis g8. cis16 fis,8. h16|
	e,8. a16 d,8. g16 cis,4~ cis16 e d cis}>>
	%line 3
	<<{h'8 r r h ais h fis gis}\\{h,16 d e fis g fis g fis e d e d cis d cis d}>>
	<<{ais'8 h4 ais8 h16 fis'8 eis16 r16 fis8 gis16}\\{e,16 fis d e cis fis e fis d8 d' cis h}>>
	<<{r16 a' r his, r cis r dis r eis r dis r eis r fis}\\{cis8 a gis fis gis cis h a}>>
	%line 4
	<<{gis'8 d! cis h a4 gis}\\{gis8 h a gis8 ~ gis fis4 eis8}>>
	<<{fis16 a cis a d8 cis h a r16 gis h gis}\\{fis8 r8 r16 fis a fis gis8 fis e d}>>
	<<{cis'8 h a gis r16 fis a fis h8 a}\\{r16 cis, eis cis fis8 e dis cis r16 h dis h}>>
	%line 5
	<<{gis'8 fis r16 e gis e a8 gis fis e}\\{e8 dis cis h r16 a cis ais dis8 cis}>>
	<<{r16 dis fis dis gis8 fis  e dis cis fis8~|
	fis e dis r16 gis a gis a gis fisis8 ais}\\{
	\change Staff = "LH" \stemUp his,8 a! r16 gis his gis cis8 h a4|
	r16 gis cis4 his8 cis e ais, r}>>
	%line 6
	<<{dis'16 cis dis cis h8 ais cis h e dis}\\{r8 dis, gis16 fisis gis fisis gis fisis gis fisis gis fisis gis fisis}>>
	<<{cis'8. h16 ais h ais h cis dis h dis cis e dis fis!}\\{gis,16 fisis gis8 dis gis fisis gis ais4}>>
	<<{e'16 dis e dis e gis fis e dis8. dis16 eis gis eis dis}\\{h8 ais h cis~ cis16 fis, h8~ h4}>>
	%page 6
	%line 1
	<<{cisis16 his ais8 r16 fis'16 gis ais! h!8 ais gis fis}\\{eis,4 r r16 dis' eis fis r his, cisis dis}>>
	<<{eis16 dis eis fis gis4^~ gis16 ais fisis gis eis h' ais gis| fisis4}\\{
	eis4_~ eis16 his cisis dis cisis8 dis4 cis8_~| cis16 e dis cis}>>
	<<{gis'4^~ gis16 gis ais gis fis4^~| fis16 fis gis fis}\\{
	h,16 dis cis h ais4_~ ais16 a h a|gis8 his,}>>
	%line 2
	<<{e'16 gis fis e dis gis a dis, dis8. cis16}\\{cis,4^~ cis8 his16 cis his4}>>
	<<{cis'4 r8 gis' a gis fis e|
	dis cis his ais gis e' dis4-\prall}\\{
	cis,16 e fis gis a gis a gis fis e fis e dis cis dis cis|
	his cis his cis dis e dis e fis his, cis dis cis8.-\prall his16}>>
	%line 3
	<<{cis'4 gis16 ais gis ais h4 r16 gis a h|
	cis8 h a16 cis d! e! fis8 e d16 fis gis a|
	h2.^~ h16 a g fis|eis8 fis}\\{
	cis,16 dis cis dis e4 r16 dis e fis gis8 fis|
	eis16 cis dis eis fis8 e d16 fis gis ais h8 a|
	gis16 dis' e fis gis fis gis fis eis cis dis eis fis8 h,~|
	h16 a gis fis}>>
	%line 4
	<<{gis'!16 d! cis h a8 gis16 fis fis8 eis16 fis|
		fis a h cis d cis d cis h a h a gis fis gis fis|
	eis4^~ eis16 eis fis gis a8. a16 gis8 cis}\\{
		eis,8 cis fis16 cis h a \change Staff = "LH" \stemUp gis4|
		fis2 eis8 fis cis his|
	cis16 gis' a h \change Staff = "RH" \stemDown cis4_~ cis16 cis fis8_~ fis16 eis fis gis}>>
	%line 5
	<<{a8 ais h cis d dis eis fis}\\{cis,8 cis d e fis fis gis a}>>
	<<{ his'16\rest  \stemUp fis a gis fis eis fis8^~ fis8. gis16 a gis a8^~|
		a16 a16 gis fis eis4 r16 cis fis e d cis d8|
	 cis4^~ cis8 h8^~ h ais8 h8. g'16}\\{
	s2  r16 fis, a gis fis eis fis8_~|
	fis16 fis gis a h8. h16  s2 |
	\change Staff = "LH" \stemUp r16 cis, fis e d cis d h \change Staff = "RH" \stemDown cis4 s}\\	{
	gis'4\rest \stemDown r8 r16  cis16 dis2|
	\stemUp cis4~ cis16 d! cis8  \stemDown ais4 r16 cis8 \tieDown h16~|
	h8 \tieNeutral ais fis2 <fis d>8. <d' h>16}>>
	%line 6, bar 2
	<<{r16 fis gis a h4 ais fis}\\{r4 r16 eis fis gis r16 gis fis eis r16 his16 cis8}>>
	\bar "||"
}

Clh = \relative c {
	%Page 3, line 4 bar 1
	s8 r2
	R1
	R1
	s1
	%Line 5
	R1
	R1
	r4 r8 fis a gis fis e
	%Page 4, line 1
	<<{s1}\\{dis8 cis his ais gis e' dis4}>>
	eis8 fis h, e a, d gis, cis
	<<{s1}\\{fis,4 r16 fis' e fis gis4 r16 gis fis gis}>>
	%line 2
	\stemDown a4 r16 a gis a h4 r16 h a h
	cis8 cis, d16 cis d cis h a! h a gis fis gis fis
	eis fis eis fis gis a gis a h cis a h cis4
	%line 3
	d!8 d4 cis8 h h' cis dis
	e e,4 dis?8 cis cis' dis eis  
	fis fis,4 e8 d! d'4 cis8
	%line 4
	h8 \clef treble h' cis dis e \stemUp r16 a, d,!8 r16 gis 
	cis,8 r16 fis h,8 r16 e fis8 e d cis 
	\clef bass \stemDown h a gis fis e fis d e
	%line 5
	a,4 r16 dis cis dis gis,4 r16 a gis a
	fis4 r16 gis fis gis e4 r16  a gis a
	dis,4 r16 gis fis gis cis, gis'' fis gis a gis a gis
	%line 6
	fis e fis e dis! cis dis cis his! cis his cis dis e dis e
	fis gis e fis gis4 cis, r16 cis' h cis
	d cis d cis h h a h cis h cis h a a gis a
	%page 5, line 1
	h a gis fis eis gis fis a dis, fis eis gis fis e d cis
	\stemUp h d cis h cis h cis8 fis,8 r r4
	s1 
	%line 2
	R1
	R1
	r2 r4 r8 \stemNeutral fis'
	%line 3
	g fis e d cis h ais gis!
	fis h e, fis h4 r16 h d h
	fis'4 r16 fis, a fis cis' h' a h! gis h fis a
	%line 4
	eis16 gis cis, eis dis fis eis gis fis a cis a h gis cis cis,
	d8 cis h a gis16 gis' h gis cis8 h
	a gis r16 fis a fis h8 a gis fis
	%line 5
	\stemDown r16 e gis e a8 [gis fis e] r16 dis fis dis
	gis8 fis e dis r16 cis e cis fis e dis cis
	his8 r16 cis fis dis gis gis, cis8 r16 cis dis cis dis cis
	%line 6
	\stemNeutral h ais h ais gis8 dis' e dis cis h
	ais gis fisis eis dis gis4 fisis8
	gis fis! gis ais h ais gis gis'
	%page 6
	%line 1
	ais ais h! ais gis fis eis dis
	cisis his ais gis ais h gis ais
	dis, dis' e dis cis ais dis cis
	%line 2
	his gis' a gis fis dis gis4
	cis, r r2
	R1
	%line 3
	R1
	R1
	R1
	%line 4
	r2 r4 r8 \stemDown cis8
	d cis h a gis fis eis dis
	cis2~ \stemUp cis4~  cis16 cis' dis eis
	%line 5
	fis16 e! fis e d! cis d cis h a h a gis fis eis fis
	his,4 r4 r4 r8 r16 \stemDown his''
	cis2 fis,2_~
	%line 6
	fis2_~ fis16 cis fis e d cis d h
	<<{r16 a' gis fis eis gis fis eis fis2}\\{cis2 fis,}>>
	\bar "||"
}


Drh = \relative c' {
	%page 6, line 6, bar 3
	<<{cis'4^~cis16 cis dis ais h dis gis dis h dis gis, h32_( ais)}\\{fisis8. gis16 ais8 ais gis4 r}>>
	%page 7
	%line 1
	<<{h4^~ h16 h cis gis a cis fis cis a cis fis, a32_( g)}\\{eis8. fis16 gis8 gis fis4 r}>>
	<<{g4^~ g16 g a e fis a d a fis a d, a'32 _(gis)}\\{cis,8. d16 e8 e d4 r}>>
	<<{a'4^~ a16 a h fis gis h e h gis h e, h'32 _(ais)}\\{dis,8. e16 fis8 fis e4 r}>>
	%line 2
	<<{h'4^~ h16 h cis gis a cis fis cis a cis fis, fis'32_(e!)}\\{eis,8. fis16 gis8 gis fis4 r}>>
	<<{e'4^~ e16 e fis cis d fis h fis d fis h, fis'32 _(eis)}\\{ais,8. h16 cis8 cis h4 r}>>
	<<{fis'4^~ fis16 fis gis dis e4 r}\\{his8. cis16 dis8 dis cis4 r}>>
	%line 3
	<<{eis8. fis16 <eis gis>8 <eis gis> gis ^(fis) r4}\\{r16 gis, cis dis cis8 cis cis4 r}>>
	<<{dis8. e!16 fis8 fis fis ^(e) r4}\\{r16 fis, h cis h8 h h4 r}>>
	<<{his8. cis16 <dis his>8 <dis his> dis^( cis) r4}\\{r16 dis, gis ais gis8 gis gis4 r}>>
	%line 4
	<<{ais8. h16 <ais cis>8 <ais cis> cis ^( h) r4}\\{r16 cis, fis gis fis8 fis fis4 r}>>
	<<{eis8. fis16 <gis eis>8 <gis eis> gis ^( fis) r4}\\{r16 gis, cis dis cis8 cis cis4 r}>>
	<<{dis8. e!16 <fis dis>8 <fis dis> fis ^(e) r4}\\{r16 fis, h cis h8 h h4 r}>>
	%line 5
	<<{gis'8. a16 <gis h>8 <gis h> h( a) r4}\\{r16 h, e fis e8 e e4 r}>>
	<<{ais8. h16 <ais cis>8 <ais cis> cis ( h) r4}\\{r16 cis, fis gis fis8 fis fis4 r}>>
	<<{ his8. cis16 <his dis>8 <his dis> dis (cis) r4}\\{r16 dis, gis ais gis8 gis gis4 r}>>
	%line 6
	<<{ cis8. d!16 <e cis>8 <e cis> e (d) r4}\\{r16 e, a h a8 a a4 r}>>
	<<{dis8. e16 <dis fis>8 <dis fis> fis (e) r4}\\{r16 fis, h cis h8 h h4 r}>>
	<<{eis8. fis16 <eis gis>8 <eis gis> gis( fis) r4}\\{r16 gis, cis dis cis8 cis cis4 r}>>
	%page 8
	%line 1
	<<{e4~ e16 e fis cis d! fis h fis d fis h, cis32(ais)}\\{ais8. h16 cis8 cis h4 r}>>
	<<{eis8. fis16 gis4~ gis16 cis, fis cis a cis fis, a32(g)}\\{h4~ h16 h cis gis a!4 r}>>
	<<{g4~ g16 fis h fis eis gis cis gis eis gis cis, fis32 (eis)}\\{d8. e16  s4*3}>>
	%line 2
	<<{fis16 a cis a fis [a32 fis cis16 fis32 eis] fis16 a cis a fis [a32 fis cis16 fis32 eis]}\\{cis4 r d r}>>
	<<{fis16 gis h gis eis [gis32 eis cis16 fis32 eis] fis16 [a32 fis cis16 fis32 eis] fis16 [a32 fis cis16 fis32 eis]}\\{cis4 s4*3}>>
	%line 3
	<<{fis16 [a32 fis cis16 fis32 eis] fis16 [a32 fis cis16 e32 dis] e4~ e16 e fis cis}\\{s2 ais8. h16 cis8 cis}>>
	<<{d16 fis h fis d [ fis32 d h16 cis32 ais] h4~ h16 [h cis \change Staff = "LH" \stemUp gis]}\\{h4 r s2}>>
	%line 4
	<<{a16 cis fis cis a [cis32 a fis16 a32 gis] a16 [ fis'32 eis fis16 a,] r16 fis'8 [eis16]}\\{fis,4 r r r8 cis'8}>>
	<<{fis8}\\{\textLengthOn cis8_\markup{\typewriter "     "}}>>

}


Dlh = \relative c {
	%page 6, line 6, bar 3
	<<{r16 ais' dis8^~ dis dis dis4 r}\\{dis,8. eis16 fisis8 fisis gis4 r}>>
	%page 7
	%line 1
	<<{r16 gis cis8^~ cis cis cis4 r}\\{cis,8. dis16 eis8 eis fis4 r}>>
	<<{r16 e a8^~ a a a4 r}\\{a,8. h16 cis8 cis d4 r}>>
	<<{r16 fis h8^~ h h h4 r}\\{ h,8. cis16 dis8 dis e4 r}>>
	%line 2
	<<{ r16 gis cis8^~ cis cis cis4 r}\\{ cis,8. dis16 eis8 eis fis4 r}>>
	<<{ r16 cis' fis8^~ fis fis fis4 r}\\{fis,8. gis16 ais8 ais h4 r}>>
	<<{ r16 dis gis8^~ gis gis gis4 r}\\{gis,8. ais16 his8 his cis16 e gis e cis e gis, cis32^(h)}>>
	%line 3
	h4~ h16 h cis gis a cis fis cis a cis fis, a32 ^( gis)
	a4~ a16 a h fis gis h e h gis h e, gis32^(fis)
	fis4~ fis16 fis gis dis e gis cis gis e gis cis, e32^(dis)
	%line 4
	e4~ e16 e fis cis d fis h fis d fis h, d32 (ais)
	h4 ~ h16 h cis gis a cis fis cis a cis fis, a32(gis)
	a4~ a16 a h fis gis h e h gis h e, e'32(d!)
	%line 5
	d4~ d16 d e h cis e a e cis e a, e'32(dis)
	e4~ e16 e fis cis d! fis h fis d fis h, fis'32(eis)
	fis4~ fis16 fis gis dis e! gis cis gis e gis cis, g'32(fis)
	%line 6
	g4~ g16 g a e fis a d a fis a d, a'32 (gis)
	a4~ a16 a h fis gis h e h gis h e, h'32(ais)
	h4~ h16 h cis gis a cis fis cis \stemDown a cis fis, \change Staff = "RH" e''!32( dis)
	%page 8
	%line 1
	\change Staff = "LH" \stemNeutral
	<<{r16 cis, fis8~ fis fis fis4 r}\\{fis,8. gis16 ais8 ais h4 r}>>
	<<{r16 gis cis8~ cis cis cis4 r}\\{cis,8. dis16 eis8 eis fis4 r}>>
	<<{r16 d! g ais h8 h h4 r}\\{h,8. cis16 d8 d  cis4 r}\\{s4 h'8 fis gis4 s4}>>
	%line 2
	<<{<fis a>4 r <fis a> r}\\{a,4 r h r}>>
	<<{ <fis' a>4 r8 <gis h> <a fis cis> r <cis, fis a> r}\\{cis4 r8 cis fis, r a}>>
	%line 3
	<<{<d fis a>8 r a' gis r16 cis, fis8~ fis fis}\\{h,8 r cis4 fis,8. gis16 ais8 ais}>>
	<<{fis'4 r}\\{h,4 r}>> <<{eis8. fis16 gis8 gis}\\{cis,,8. dis16 eis8 eis}\\{ a16\rest gis cis8_~ cis cis }>>
	%line 4
	<<{ cis4 s2 gis'8 h}\\{fis,4 r his, cis}\\{s4*3 r8 cis'}>>
	\bar "||"
	\time 6/8 <<{ais'8}\\{fis,8}\\{cis'8}>>
}

Erh = \relative c' {
	%\time 6/8 
	%page 8, line 4, bar 2
	<<{r8 r8 r4.}\\{fis8 [fis] eis e e}>>
	<<{r4. r8 cis' cis}\\{dis,8 d d cis16[ h cis dis e cis]}>>
	%line 5
	<<{his'8 h h ais a a|
		gis16 fis gis a h gis a gis fis gis a fis|
		gis8 cis16 h cis8 fis, h16 ais h8|
	eis,8 fis4~ fis16 fis eis fis gis eis}\\{
	dis8 gis16 fis gis8 cis,8 fis16 eis fis8~|
	fis8 eis4-\prall fis8 [\change Staff = "LH" \stemUp  a, d~]|
	d gis, cis~ cis [fis, h~]|
	h16 h a gis fis a gis8 cis h}>>
	%line 6
	fis'4.~ fis16 e! fis gis a fis
	gis4.~ gis16 a gis fis e gis
	fis4.~ fis16 gis fis e dis fis
	%page 9
	%line 1
	<<{e4 e8 fis dis gis|
		eis cis fis h16 cis h a gis h|
		a8 cis fis~ fis eis4|
	fis8 fis [fis] eis e e}\\{
		cis,8 cis [cis] his h h|
		\change Staff = "LH" \stemUp ais a a gis4 \change Staff = "RH" \stemDown cis8~|
		cis a' fis gis16 fis gis a h gis|
		a h a gis fis a gis8 cis16 his cis8}>>
	%line 2
	<<{dis8 d d cis fis4~|
		fis16 fis eis fis gis eis fis dis gis a gis fis|
		eis cis fis4~ fis8 e a~|
		a dis, gis~ gis cis, fis~|
	fis his, cis~ cis his4}\\{
	fis8 h16 ais h8~ h16 h a gis fis a|
	gis8 cis4~ cis8 h4~|
	h8. [a16 gis fis] gis a gis fis e fis|
	dis8 gis16 fis gis8 cis, fis16 eis fis8|
	his,16 dis gis fis e!8 dis8. dis16 gis fis}>>
	%line 3, bar 2
	<<{cis'4 r8 r4.}\\{e,16 cis a'4~ a16 fis d' h gis h}>>
	<<{r8 cis cis his h h }\\{eis,8 fis16 gis a8~ a gis16 fis gis8~}>>
	%line 4
	<<{ais8 a d gis, cis16 h cis8}\\{gis8 fis16 e! d8~ d cis4~}>>
	<<{fis8 h16 ais h8 eis, fis4~}\\{cis8 h4~ h16 h a! h cis8}>>
	<<{fis16 fis eis fis gis a h4~ h16 h}\\{d,8 cis eis fis16 a gis fis gis8~}>>
	%line 5
	<<{a4~ a16 a gis4~ gis16 a}\\{gis16 gis fis eis fis8~ fis16 fis eis dis eis8}>>
	<<{fis8 a d h gis cis}\\{fis, fis fis eis e e}>>
	<<{ais8 fis h eis, cis'4~}\\{dis,8 d d cis fis e}>>
	%line 6
	<<{ cis'8 his4 cis4 gis'8}\\{a,16 fis dis fis e dis e fis e dis cis e}>>
	<<{ fis'16 gis fis e dis fis e8 cis fis}\\{dis,16 e dis cis his dis \change Staff = "LH" \stemUp cis8 [\change Staff = "RH" \stemDown e a~]}>>
	<<{ dis8 h e cis a dis}\\{a8 dis, gis8~ gis cis, fis~}>>
	%page 10, line 1
	<<{his8 cis4~ cis8 his4}\\{fis8 e gis a dis,4}>>
	<<{cis'4 e8~ e a, dis8~}\\{cis,8 gis' cis ais a gis~}>>
	<<{dis'8 gis, cis8~ cis his4}\\{gis8 r gis a gis16 a fis dis}>>
	%line 2
	<<{cis'16 dis e4~ e16 e d4~}\\{e,8 gis fis~ fis4 e8~}>>
	<<{d'16 cis fis4~ fis16 fis e4~}\\{e,8 r16 cis' a fis h8 r16 h g e}>>
	<<{e'16 e d a' f d gis,8.-\fermata fis'16 (e d)}\\{a4. e4 r8}>>
	cis'16 (h a) gis (fis e) \change Staff = "LH" d (cis h a gis a)
	%line 3
	\change Staff = "RH"
	<<{r16 fis'' h,8. a16 a8 e' [e]}\\{r8 a, gis a16 h cis h a gis}>>
	<<{dis'8 d d cis4 fis8~}\\{fis,16 gis a8 h8~ h16 e, a4}>>
	<<{fis'16 h, e4~ e8 e4~}\\{gis,4 gis8 fis8. a16 gis h}>>
	<<{e8 e4~ e16 e~ e8 dis}\\{a8. cis16 h d cis8 fis,4}>>
	%line 4
	<<{e'8 r16 g e cis ais8 fis' [fis]}\\{gis,!16 a h8 g fis4 h8~}>>
	<<{eis8 e e d g16 fis g8}\\{h,8 ais16 gis ais8 h4 d8}>>
	<<{cis8 fis16 e fis8 h, e16 dis e8~}\\{e8 fis cis d e h}>>
	<<{e16 e d! fis d8~ d16 d cis e cis8~}\\{ais8 s4 g8 s4}\\{s8 fis8\rest fis16\rest h~  h8 fis8\rest fis16\rest a16~}>>
	%line 5
	<<{cis16 cis h d h8~ h16 h ais cis ais8~}\\{fis8 s4 e8 s4}\\{a8 e8\rest e16\rest g16~ g8 d8\rest d16\rest fis16~}>>
	<<{ais8 h4~ h16 h ais8.-\prall ais16}\\{e8 d4 e e8~}\\{fis8 h, g'~ g fis4~}>>
	<<{h8 r r}\\{e,8 d d}\\{fis16 fis g h g fis}>> <<{eis16 gis cis fis d cis}\\{cis,8 r r}>>
	%page 11, line 1
	\stemNeutral h'16 d eis, d' cis h a h a gis fis a
	dis,8. cis'16 h a gis a gis fis e gis
	cis,8. h'16 a gis fis gis fis e dis fis
	his,8. a'16 gis fis eis gis cis d cis h!
	%line 2
	a8 d16 cis d8 gis, cis16 h cis8
	<<{r8 fis fis eis e e}\\{fis,8 h16 a h8 cis gis ais}>>
	<<{dis8 d d cis4 r8}\\{h8 fis16 a gis h eis,4 r8}>>
	<<{cis'16 fis cis a fis a h4 r8}\\{fis4 r8 dis4 r8}>>
	%line 3
	<<{h'16 d! h gis eis gis a4 a8\rest}\\{eis4 eis8 r16 cis fis cis a cis}>>
	s2.
	s2.
	s2.
	%line 4
	cis16 a cis fis eis gis fis cis fis a gis h 
	a fis a cis h d cis [a cis32 dis e16 dis32 eis fis16]
	eis32 [ fis gis16 fis32 gis a16 gis32 a h16] <<{cis,16 [a'] gis8. [fis16]}\\{cis4 h8}>>
	%line 5
	<<{fis'8 fis [ fis] eis e e}\\{s8 h4~ h4 ais8~}\\{ais8 h16 cis d8~ d gis, cis~}>>
	<<{dis8 d d d8. d16 cis h}\\{ais8 h fis~ fis16 fis eis4}\\{cis'8 fis, h16 a! gis4 h,8}>>
	<<{\once \override Stem #'length = #8 ais'8 s8*5}\\{\once \override Stem #'length = #10 fis8 s8*5}\\{cis8 a'\rest a\rest a4.\rest-\fermata } >>
	\bar "|."
	}

Elh = \relative c {
	%page 8, line 4, bar 2
	r8 r8 r4.
	R2.
	%line 5
	\stemDown R2. r4. r8 fis fis
	eis e e dis d d
	cis d4 h8 cis4
	%line 6
	<<{a'16 h a gis fis a h4.~|
		h16 cis h a gis his cis4.~|
	cis16 ais his cis dis ais his4.}\\{
		d,4. dis|
		e a|
	dis, gis}>>
	%page 9
	%line 1
	cis,16 his cis dis e cis dis8 gis16 fis gis8
	cis,8 fis16 eis fis8~ fis eis4
	fis16 gis fis eis d cis \stemNeutral h8 gis cis
	fis,8 r r r4.
	%line 2
	R2.
	R2.
	r4.
	r8 cis'' cis
	his h h ais a a
	%line 3
	gis8. gis16 a gis fis [(gis32 a) gis16-\prall fis gis8]
	cis,8. cis'16 h a d8. d16 h gis
	cis h a cis fis e! dis fis eis dis eis cis
	%line 4
	<<{fis e! d! cis h a h8 gis4}\\{fis8\rest fis fis eis e e}>>
	<<{a8 fis4 cis'8 fis,8. gis16}\\{dis8 d d cis d a}>>
	<<{a'8 gis cis h8. cis16 d!8}\\{h,8 cis4 dis8 e! eis}>>
	%line 5
	<<{cis'8. h16 cis8 d!8 h cis}\\{fis,8. gis16 a8 h gis cis}>>
	<<{a16 gis fis eis fis8 r4.}\\{fis8 r fis gis cis16 h cis8}>>
	fis,8 h16 ais h8~ h16 h a gis a e
	%line 6
	fis16 a gis fis gis gis, cis4 r8
	r8 r8 gis' cis16 dis cis h! a cis
	h cis h a gis h a h a gis fis a
	%page 10, line 1
	gis16 a gis fis e gis fis gis fis e dis fis
	<<{r8 gis gis fisis fis fis}\\{e16 fis e dis cis e dis e dis cis his dis}>>
	<<{eis8 e e~ e16 dis dis4-\prall}\\{cis16 dis cis h a gis fis8 gis4}>>
	%line 2
	<<{cis8 r16 cis' ais fis h8 r16 h gis e}\\{cis,8 r r r4.}>>
	<<{a''8 cis4 dis8 h4}\\{r8 a a gis g g}>>
	<<{cis8 a d d4 r8}\\{fis,8 f f e4-\fermata r8}>>
	s2.
	%line 3
	<<{r8 h' d! cis4 cis8~}\\{dis,8 e4 a,4 r8}>>
	<<{ cis'8 fis,16 h gis e }\\{}>> a8. fis'16 dis h
	e8. e16 cis gis a cis a fis h gis
	cis e cis a gis e a cis a fis h h,
	%line 4
	e8 e' e~ e dis16 cis d8
	cis fis16 e fis8 <<{h, d g~}\\{r8 h, h}>>
	<<{g'8 cis, fis~ fis h, e}\\{ais,8 a a gis g g}>>
	<<{fis'8 r r s8.}\\{fis,8 h16 ais h8 e, a16 g a8}>>
	%line 5
	d,8 g16 fis g8 cis, fis16 e fis8~
	fis16 fis g h g e cis8 fis fis,
	h4 h'8~ h16 h a d h a
	%page 11, line 1
	\stemNeutral gis8 cis cis, fis8. gis16 a fis
	h cis h a gis h e,8. fis16 gis e
	a h a gis fis a dis,8. e16 fis dis
	gis a gis fis eis gis cis, d! cis h a cis
	%line 2
	<<{s2. | r8 d' d gis, cis16 h cis8}\\{fis,,8 fis' [ fis] eis e e | dis d d cis4 r8}>>
	<<{fis8 h16 a h8 gis16 cis gis eis cis gis'}\\{h,4 r8 h4 r8}>>
	<<{a'4 r8 fis16 h fis dis  h fis'}\\{a,4 r8 a4 r8}>>
	%line 3
	<<{gis'4 gis8 fis4 s8}\\{gis,4 cis8 fis,4 r8}>>
	fis'16 cis fis cis a cis fis, cis fis a gis h
	a fis a cis h d cis a cis fis eis gis
	fis cis fis a gis h a fis a cis h d
	%line 4
	s2.
	s2.
	r4. <<{fis4 eis8}\\{fis,8 cis'4}>>
	%line 5
	<<{fis16 e d cis h ais gis8 cis16 h cis8}\\{fis,4.~ fis4.~}>>
	<<{fis8 h16 ais h8~h16 a gis4}\\{fis4.~ fis}>>
	<<{fis8 r r r4.}\\{fis,8 r r r4.-\fermata}>>
	\bar "|."
}

\score {\new PianoStaff
	<<
	\set PianoStaff.midiInstrument = #"acoustic grand"
	\context Staff = "RH" { % Right hand 
		\clef treble
		\key fis \minor
		\set Score.markFormatter = #format-mark-box-letters
		\set tempoWholesPerMinute = #(ly:make-moment 60 4)
		\newSpacingSection
		\override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 16)
		\mark \default 
		\Arh 
		\set tempoWholesPerMinute = #(ly:make-moment 45 2)  
		\newSpacingSection 
		\override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4)
		\mark \default 
		\Brh
		\set tempoWholesPerMinute = #(ly:make-moment 95 4)  
		%\newSpacingSection %it is inside Brh
		\override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 16)
		\mark \default 
		\Crh\break
		\set tempoWholesPerMinute = #(ly:make-moment 45 4)  
		\newSpacingSection 
		\override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8)
		\mark \default 
		\Drh
		\set tempoWholesPerMinute = #(ly:make-moment 180 8) 
		\newSpacingSection 
		\override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 16)
		\mark \default 
		\Erh
	}
	\context Staff = "LH" {  % Left hand 	
		\clef bass
		\key fis \minor
		\Alh 
		\Blh
		\Clh
		\Dlh
		\Elh
	}
	>>
	\midi { }
	\layout  {}
	
}



\paper {
}

