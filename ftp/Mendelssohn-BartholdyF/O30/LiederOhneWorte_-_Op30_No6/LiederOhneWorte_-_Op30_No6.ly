\version "2.12.2"

\header
{
	title = "Lieder Ohne Worte"
	subtitle = "Venetianisches Gondellied."
	composer = "Felix Mendelssohn Bartholdy"
	opus = "Op.30 No.6"
	
	mutopiatitle = "Lieder ohne Worte: Venetianisches Gondellied, Op.30 No.6"
	mutopiacomposer = "Mendelssohn-BartholdyF"
	mutopiaopus = "Op. 30, No. 6"
	mutopiainstrument = "Piano"
	date = "1833-1834" % date found on wikipedia at http://en.wikipedia.org/wiki/Songs_without_Words
	source = "Breitkopf & Härtel, 1874-1877"
	style = "Romantic"
	copyright = "Public Domain"
	maintainer = "Ryan Prince"
	maintainerEmail = "rprincerp@gmail.com"
	moreInfo = "This file was created from a public domain scan of the work. The source is located in the Petrucci Music Library, http://imslp.org/."

 footer = "Mutopia-2010/02/03-1741"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

#(set-global-staff-size 17)

on = \sustainOn
off = \sustainOff

su = \stemUp
sd = \stemDown

br = {\break \noPageBreak}
pb = \pageBreak
nb = \noBreak

rightHandOne = \relative c''
{ \clef treble \key fis \minor \time 6/8
	\partial 8 \once \override TextScript
		#'extra-offset = #'(-3.5 . 1.0)
		b8\rest ^\markup { \bold
		"Allegretto tranquillo." }				\nb	|
	b1*6/8\rest									\nb	| % 1
	b\rest										\nb	| % 2
	eis,2._\(_\f_\>								\nb	| % 3
	gis\)\!										\nb	| % 4
	b1*6/8\rest									\br	| % 5
	b4\rest b8\rest b\rest a8\(_\markup
		{ \dynamic "p" \italic \whiteout
		"cantabile"} b							\nb	| % 6
	\sd cis4.\) cis								\nb	| % 7
	cis~ cis4 cis8								\nb	| % 8
	cis\(_\< a' gis fis_\> e d\)\!				\nb	| % 9
	cis4 b8\rest \su fis4.						\br	| % 10
	a4._~ a4 \sd b8								\nb	| % 11
	cis4. fis_\<								\nb	| % 12
	eis2._\sfz _~								\nb	| % 13
	eis4._~ eis8_\p a,^( b						\nb	| % 14
	cis4.) cis									\br	| % 15
	cis~ cis4 cis8								\nb	| % 16
	cis\(_\< a' gis fis_\> e d\)\!				\nb	| % 17
	cis\( fis e d cis bis\)						\nb	| % 18
	cis( a cis) \su fis,4._~					\nb	| % 19
	fis4 gis8 eis4 gis8					  \br \bar "|:"%20
	
	\su fis4._~ fis4 b8\rest					\nb	| % 21
	b4\rest b8\rest b\rest eis,8_( fis			\nb	| % 22
	<eis gis>4.) <eis gis>						\nb	| % 23
	\override TextSpanner #'bound-details #'left
		#'text = \markup { \italic
		"cresc." } \textSpannerDown
		<fis_~ a^~> <fis a>8 <eis gis>_(
		\startTextSpan <fis a>					\nb	| % 24
	<gis b>4.) <gis b> \stopTextSpan			\br	| % 25
	<a_~ cis^~> <a cis>8 <fis a>^\(_\markup
		{ \italic "più" } <gis b>				\nb	| % 26
	<a cis>4.\)_\f <a cis>						\nb	| % 27
	\sd <bis dis>^> <bis dis>^>					\nb	| % 28
	<cis eis>2.^\(^>_\ff						\nb	| % 29
	<eis gis>\)^>_\sfz							\pb	| % 30
	b1*6/8\rest_\markup { \italic "dim." }		\nb	| % 31
	b4\rest b8\rest b\rest b\rest
		cis'~_\pp \startTrillSpan				\nb	| % 32
	cis2._\< ~									\nb	| % 33
	cis2.*2/3 _\> s2.*1/3 \stopTrillSpan		\nb	| % 34
	e8_\sfz\( d cis b g fis\)					\br	| % 35
	e_\markup { \italic "dim." } \( d cis
		\su b^\prall a b\)						\nb	| % 36
	\sd cis4._\p cis							\nb	| % 37
	cis^~ cis4 cis8								\nb	| % 38
	cis8_\(_\< a'_\> gis\! fis e d				\nb	| % 39
	cis fis e d cis bis\)						\br	| % 40
	cis^(_\p a cis) \su fis,4._~				\nb	| % 41
	fis4_\( gis8 eis4 gis8\)			  \nb \bar":|"% 42
	fis4. b8\rest b\rest <a,_~ cis^~ fis^~>		\nb	| % 43
	<a cis fis>4\startTextSpan
		<a_~ cis^~ e!^~>8 <a cis e>4 <a_~ d^~>8	\nb	| % 44
	<a d>4 <fis_~ a^~ cis^~>8
		<fis a cis>4\stopTextSpan \override
		TextScript #'extra-offset =
		#'(0.0 . -3.0) \sd eis''8_\markup
		{ \dynamic "f" } \startTrillSpan ~		\br	| % 45
	\override TextScript #'extra-offset =
		#'(0.0 . -2.0) \afterGrace eis2._\(
		_\markup { \italic "dim." }
		{ \su dis32[ \stopTrillSpan eis\)] }	\nb	| % 46
	\sd cis'4_\markup { \dynamic "p" }^\( a8
		fis4\) \su <a,,_~ cis^~ fis^~>8			\nb	| % 47
	<a cis fis>4\startTextSpan
		<a_~ cis^~ e!^~>8 <a cis e>4 <a_~ d^~>8	\nb	| % 48
	<a d>4 <fis_~ a^~ cis^~>8
		<fis a cis>4\stopTextSpan \override
		TextScript #'extra-offset =
		#'(-0.5 . -2.1) \sd eis''8_\markup
		{ \dynamic "f" } \startTrillSpan ~		\nb	| % 49
	\override TextScript #'extra-offset =
		#'(0.0 . -2.0) eis2.*1/5_\(_\markup
		{ \dynamic "sfz" } \afterGrace
		s2.*4/5_\(_\markup { \italic "dim." }
		{ \su dis32[ \stopTrillSpan eis\)] }	\br	| % 50
	\sd cis'4_\sfz^\( a8 fis4 cis8\)			\nb	| % 51
	cis'4^\(_\markup { \italic "dim." }
		a8 fis4 cis8\)							\nb	| % 52
	cis'4.^~_\> cis4 a8							\nb	| % 53
	fis2.^~_\pp									\nb	| % 54
	fis\fermata							  \nb \bar "|."%55
}
rightHandTwo = \relative c''
{ \clef treble \key fis \minor \time 6/8
	s8												|
	s2.*12											| % 1-12
	\su eis4. gis4.^\sfz ^~							| % 13
	gis4.^~ gis8 s4									| % 14
	s2.*6											| % 15-20
	s2.*18											| % 21-38
	cis2.^~											| % 39
	cis4 s2											| % 40
	s2.*15											| % 41-55
}

leftHand = \relative c
{ \clef bass \key fis \minor \time 6/8
	\su cis8^\p\on									|
	fis,\( cis' <fis a> \sd cis <fis a> cis'\)		| % 1
	\su fis,,\( cis' <fis a> \sd cis
		<fis a> cis'\)\off							| % 2
	\su fis,,\on cis' <eis gis> \sd cis
		<eis gis> cis'								| % 3
	\su fis,, cis' <eis gis> \sd cis <eis gis> cis'	| % 4
	\once \override TextScript #'extra-offset =
		#'(0.0 . 2.5)fis,,^\markup
		{ \italic "dim." } cis' <gis' b>
		<b d>\(\off cis, <a' cis>					| % 5
	<gis b> cis, <fis a> <eis gis> <fis a> <gis b>\)| % 6
	fis,\(\on cis' <fis a> cis <fis a> cis'\)\off	| % 7
	\su fis,,\on cis' <eis gis> \sd cis
		<eis gis> cis'\off							| % 8
	\su fis,,\on cis' <fis a> \sd cis <fis a> cis'	| % 9
	fis,, cis' <fis a> cis <fis a> cis'				| % 10
	fis,, cis' <fis a> cis <fis a> cis'				| % 11
	\su a,, cis' <fis a> \sd cis <fis a> cis'\off	| % 12
	\su cis,,\on cis' <gis' b> \sd <b d>\(
		cis, <a' cis>\off							| % 13
	<gis b> cis, <fis a> <eis gis> <fis a> <gis b>\)| % 14
	fis,\(\on cis' <fis a> cis <fis a> cis'\)\off	| % 15
	\su fis,,\on cis' <eis gis> \sd cis
		<eis gis> cis'\off							| % 16
	\su fis,,\on cis' <fis a> \sd cis <fis a> cis'	| % 17
	fis,, cis' <fis a> cis <fis a> cis'				| % 18
	\su a,, cis' <fis a> \sd cis <fis a> cis'\off	| % 19
	\su cis,,\on cis' <gis' b>
		\sd cis, <gis' b> cis\off					| % 20
		
	fis,, cis'\on <fis a> cis <fis a> cis'			| % 21
	cis, <fis a> cis' cis, <fis a> cis'\off			| % 22
	\su cis,,\on cis' <gis' b>
		\sd cis, <gis' b> cis\off					| % 23
	\su fis,,\on cis' <fis a>
		\sd cis <fis a> cis'\off					| % 24
	e,,\on e' <b' d> e, <b' d> e					| % 25
	
	a,,\on e' <a cis> e <a cis> e'					| % 26
	a,, e' <a cis> e <a cis> e'\off					| % 27
	fis,,\on a' <dis fis> a <dis fis> a'\off		| % 28
	\su cis,,,\on eis' <gis cis>
		\sd eis <gis cis> eis'						| % 29
	\su cis,, eis' <gis cis>
		\sd eis <gis cis> eis'						| % 30
	cis,,^\( cis' <gis' b>\off <b d> cis, <a' cis>	| % 31
	<gis b> cis, <fis a> <eis gis> <fis a> <gis b>\)| % 32
	ais,\on^\( e'! <g cis> e <g cis> e'\)			| % 33
	ais,,^\( e' <g cis> e <g cis> e'\)\off			| % 34
	b,\on^\( fis' <b d fis>\) r4\off r8				| % 35
	r4 r8 \su d,,4.									| % 36
	cis8^\(\on cis' <fis a>
		\sd cis <fis a> cis'\)\off					| % 37
	\su cis,,^\(\on cis' <eis gis>
		\sd cis <eis gis> cis'\)\off				| % 38
	fis,,\on cis' <fis a> \sd cis <fis a> cis'\off	| % 39
	\sd fis,, cis' <fis a> \sd cis
		<fis a> cis'\off							| % 40
	\su a,,\on cis' <fis a> \sd cis <fis a> cis'\off| % 41
	\su cis,,\on cis' <gis' b>
		\sd cis, <gis' b> cis\off					| % 42
	fis,,^\(\on cis' <fis a>\) \su fis,^( \sd fis'4)| % 43
	\su fis,8^( \sd fis'4)
		\su fis,8^( \sd fis'4*1/2) s\off			| % 44
	\su e,8^( \sd e'4) d,8^\( d' <fis b>\)			| % 45
	\su cis,\on cis' <gis' b>
		\sd cis, <gis' b> cis\off					| % 46
	fis,,^\(\on cis' <fis a>\) \su fis,^( \sd fis'4)| % 47
	\su fis,8^( \sd fis'4*1/2) s\off
		\su fis,8^( \sd fis'4)						| % 48
	\su e,8^( \sd e'4) \su d,8_\( d' <fis b>\)		| % 49
	cis,\on cis' <gis' b> \sd cis, <gis' b> cis\off	| % 50
	fis,,_\p\(\on cis' <fis a> cis <fis a> cis'\)	| % 51
	fis,,\( cis' <fis a> cis <fis a> cis'\)			| % 52
	fis,,\( cis' <fis a> cis <fis a> cis'\)			| % 53
	r8 r \su cis,( \sd <fis a cis>) r8 \su cis_(	| % 54
	fis,) r8 r r4*1/2 s^\fermata r8					| % 55
}

\score
{
	\new PianoStaff
	<<
		\new Staff = one
		<<
			{
				\rightHandOne
			} \\ {
				\rightHandTwo
			}
		>>
		\new Staff = two
		<<
			{
				\leftHand
			}
		>>
	>>
	\layout {}
	\midi {}
}
