\version "2.12.2"

\header
{
	title = "Lieder Ohne Worte"
	composer = "Felix Mendelssohn Bartholdy"
	opus = "Op.85 No.1"
	
	mutopiatitle = "Lieder ohne Worte, Op.85 No.1"
	mutopiacomposer = "Mendelssohn-BartholdyF"
	mutopiaopus = "Op. 85, No. 1"
	mutopiainstrument = "Piano"
	date = "1833-1834" % date found on wikipedia at http://en.wikipedia.org/wiki/Songs_without_Words
	source = "Breitkopf & Härtel, 1874-1877"
	style = "Romantic"
	copyright = "Public Domain"
	maintainer = "Ryan Prince"
	maintainerEmail = "rprincerp@gmail.com"
	moreInfo = "This file was created from a public domain scan of the work. The source is located in the Petrucci Music Library, http://imslp.org/."

 footer = "Mutopia-2010/02/28-1744"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

#(set-global-staff-size 17)

on = \sustainOn
off = \sustainOff

su = \stemUp
sd = \stemDown
sn = \stemNeutral

csone = {\change Staff = one}
cstwo = {\change Staff = two}

br = {\break \noPageBreak}
pb = \pageBreak
nb = \noBreak

rightHand = \relative c''
{ \clef treble \key d \minor \time 2/4
	\override DynamicLineSpanner #'staff-padding = #2
	\once \override TextScript #'extra-offset = #'(-3.5 . 1.0) s2_\mf ^\markup { \bold "Andante espressivo." }			\nb	| % 1
	\su c4^\( d8 f\)																									\nb	| % 2
	c4 c16^([ a g16*4/3 f16*2/3)]																						\nb	| % 3
	e8.*10/9^( f16*2/3) g8^( bes)																						\br	| % 4
	bes4_( a8) r																										\nb	| % 5
	a4_\p^\( bes8 d\)																									\nb	| % 6
	a4^\( bes8 d\)																										\nb	| % 7
	a8. a16 c^\(_\markup { \italic "cresc." } bes a g\)																	\br	| % 8
	g8.^\( fis16 g a bes16*4/3_\< b16*2/3\)																				\nb	| % 9
	c4^\(_\mf d8 f\)																									\nb	| % 10
	c8.^( a16) c16^([ a g16*4/3 f16*2/3)]																				\nb	| % 11
	e8.*10/9^( f16*2/3) g8^( bes)																						\br	| % 12
	bes4^( a8) r																										\nb	| % 13
	e4^\(_\p f8 a\)																										\nb	| % 14
	e4^\( f8 a\)																										\nb	| % 15
	e8.*10/9^( e16*2/3) gis8^( b)																						\br	| % 16
	a4. a8																												\nb	| % 17
	a8 a c^( bes16 a)																									\nb	| % 18
	g8.*10/9^( fis16*2/3) a8^( d,)																						\nb	| % 19
	\override TextSpanner #'bound-details #'left #'text = \markup { \italic "cresc." }
		\textSpannerDown bes'8\startTextSpan bes es^( d16 c)\stopTextSpan
		\override TextSpanner #'bound-details #'right #'text = \markup { \dynamic "f" }									\br	| % 20
	bes8.*10/9\startTextSpan a16*2/3 c8^( f,)																			\nb	| % 21
	d'\stopTextSpan d bes'^( a16 g)																						\nb	| % 22
	f8^\( e g f\)																										\nb	| % 23
	e_\markup { \italic "dim." } ^\( d bes a\)																			\pb	| % 24
	g2																													\nb	| % 25
	g4^\(_\p aes8 c\)																									\nb	| % 26
	g2																													\nb	| % 27
	g4^\(_\markup { \dynamic \whiteout "pp" } aes8 c\)																	\br	| % 28
	g2*1/2 s_\markup { \italic "cresc." }																				\nb	| % 29
	\su c4^\( d8_\f f!\)																								\nb	| % 30
	c4 c16^([ a_\p g16*4/3 f16*2/3)]																					\nb	| % 31
	e8.*10/9^(_\markup { \italic "cresc." } f16*2/3) g8^( bes)															\br	| % 32
	bes8^( a) c16^([_\markup { \italic "cresc." } a g16*4/3 f16*2/3)]													\nb	| % 33
	e16^\( f fis g a bes d c\)																							\nb	| % 34
	bes8^( a^~) a16 a a a																								\nb	| % 35
	c8_\f^\( b g'_\sfz bes,\)																							\br	| % 36
	a^\(_\markup { \italic "dim." } c bes g\)																			\nb	| % 37
	f8^\(_\p e16*4/3 f16*2/3] a8.*10/9 g16*2/3\)																		\nb	| % 38
	f4 r																												\nb	| % 39
	c'4^\(_\markup { \italic "dim." } d8 f\)																			\br	| % 40
	c4^\> c\!																											\nb	| % 41
	c^\(_\markup { \italic "dim." } d8 f\)																				\nb	| % 42
	c4.^\> c8\!																											\nb	| % 43
	c4^\( a\)																											\br	| % 44
	c4.^> c8																											\nb	| % 45
	c4^>^\( a\)																											\nb	| % 46
	c4^>^\( a\)																											\nb	| % 47
	c2^>																												\nb	| % 48
	s4 <a, c f>_\pp																										\nb	| % 49
	<a c f>2^\fermata																							 \nb \bar "|."% 50
}

leftHand = \relative c,
{ \clef bass \key d \minor \time 2/4
	\su f16*2/3_\([ c' f] \csone \sd a[ c f]\) \cstwo \su f,,_\([ c' f] \csone \sd a[ c f]\)								| % 1
	\cstwo \su f,,16*2/3_\([ c' f] a[ \csone \sd c f]\) \cstwo \su f,,_\([ d' f] bes[ d \csone \sd f]\)						| % 2
	\cstwo \su f,,_\([ c' f] a[ \csone \sd c f]\) \cstwo \su f,,_\([ c' f] a[ \csone \sd c f]\)								| % 3
	\cstwo \su g,,_\([ c g'] \csone \sd bes[ c f]\) \cstwo \su c,,_\([ c' e] g[ bes \csone \sd c]\)							| % 4
	\cstwo \su <f,,, f'>^\([ c'' e] \sd g[ bes c]\) \su f,,_\([ c' f] \csone \sd a[ c f\)]									| % 5
	\cstwo \su d,,_\([ d' f] a[ \csone \sd d f\)] \cstwo \su d,,_\([ d' e] g[ bes \csone \sd d\)]							| % 6
	\cstwo \su d,,_\([ d' f] a[ \csone \sd d f\)] \cstwo \su d,,_\([ d' e] g[ bes \csone \sd d\)]							| % 7
	\cstwo \su d,,_\([ d' f] a[ \csone \sd d f\)] \cstwo \su bes,,,_\([ bes' d] f[ g \csone \sd d'\)]						| % 8
	\cstwo \su c,,[ c' e] g[ bes \csone \sd c] \cstwo \su c,[ bes' \csone \sd c] e[ g b]									| % 9
	\cstwo \su f,,16*2/3_\([ c' f] a[ \csone \sd c f]\) \cstwo \su f,,_\([ d' f] bes[ d \csone \sd f]\)						| % 10
	\cstwo \su f,,_\([ c' f] a[ c \csone \sd f]\) \cstwo \su a,,_\([ c f] a[ \csone \sd c f]\)								| % 11
	\cstwo \su g,,_\([ c g'] \csone \sd bes[ c f]\) \cstwo \su e,,_\([ c' e] g[ bes \csone \sd c]\)							| % 12
	\cstwo \su c,,_\([ c' e] g[ bes \csone \sd c]\) \cstwo \su f,,_\([ c' f] \csone \sd a[ c f\)]							| % 13
	\cstwo \su a,,,_\([ a' cis] e[ \csone \sd a cis]\) \cstwo \su a,,_\([ a' b] d[ f \csone \sd a]\)						| % 14
	\cstwo \su a,,_\([ a' cis] e[ \csone \sd a cis]\) \cstwo \su d,,_\([ a' d] f[ \csone \sd a b]\)							| % 15
	\cstwo \su e,,_\([ c'! e] a[ \sd \csone c e]\) \cstwo \su e,,_\([ d' e] gis[ b \csone \sd e]\)							| % 16
	\cstwo \su a,,,_\([ a' c] e[ \csone \sd a c]\) \cstwo \su a,,_\([ a' c] e[ \csone \sd a c]\)							| % 17
	\cstwo \su c,,_\([ c' es] a[ \csone \sd c es]\) \cstwo \su c,,_\([ c' es] a[ \csone \sd c es]\)							| % 18
	\cstwo \su d,,_\([ d' a'] c[ \csone \sd d fis]\) \cstwo \su d,,_\([ d' fis] a[ \csone \sd c d]\)						| % 19
	\cstwo \su g,,_\([ d' g] bes[ \csone \sd d g]\) \cstwo \su es,,_\([ es' g] c[ \csone \sd es g]\)						| % 20
	\cstwo \su f,,_\([ es' f] \csone \sd c'[ es a]\) \cstwo \su f,,_\([ f' a] \csone \sd c[ es f]\)							| % 21
	\cstwo \su bes,,_\([ f' bes] \csone \sd d[ f bes]\) \cstwo \su bes,,_\([ g' bes] \csone \sd d[ g bes]\)					| % 22
	\cstwo \su bes,,_\([ g' c] e[ \csone \sd g c]\) \cstwo \su a,,_\([ a' c] \csone \sd f[ a c]\)							| % 23
	\cstwo \su bes,,_\([ f' g] \csone \sd d'[ f g]\) \cstwo \su bes,,_\([ f' g] \csone \sd d'[ f g]\)						| % 24
	\cstwo \su c,,,_\([ c' e] \csone \sd g[ c e]\) \cstwo \su c,,_\([ c' e] \csone \sd b'[ c e]\)							| % 25
	\cstwo \su c,,_\([ c' e] \csone \sd bes'![ c e]\) \cstwo \su f,,_\([ c' f] aes![ \csone \sd c f]\)						| % 26
	\cstwo \su e,,_\([ c' e] g[ \csone \sd c e]\) \cstwo \su <c,, c'>_\([ e' g] \csone \sd b[ c e]\)						| % 27
	\cstwo \su c,,_\([ c' e] \csone \sd bes'![ c e]\) \cstwo \su f,,_\([ c' f] aes![ \csone \sd c f]\)						| % 28
	\cstwo \su e,,_\([ c' e] g[ \csone \sd c e]\) \cstwo \su <bes,, bes'>_\([ c' e] g[ \csone \sd c e]\)					| % 29
	\cstwo \su <a,,, a'>_\([ es'' fis] \csone \sd c'[ es fis]\) \cstwo \su <bes,,, bes'>_\([ d' g] d'[ \csone \sd f g]\)	| % 30
	\cstwo \su c,,,_\([ c' f] a[ \csone \sd c f]\) \cstwo \su c,,_\([ c' f] a[ c \csone \sd f]\)							| % 31
	\cstwo \su c,,_\([ c' g'] bes[ c \csone \sd f]\) \cstwo \su c,,_\([ c' e] bes'[ c \csone \sd g']\)						| % 32
	\cstwo \su c,,,_\([ c' f] a[ \csone \sd c f]\) \cstwo \su c,,_\([ c' f] a[ c \csone \sd f]\)							| % 33
	\cstwo \su c,,_\([ c' g'] bes[ c \csone \sd e]\) \cstwo \su c,,_\([ c' e] bes'[ c \csone \sd e]\)						| % 34
	\cstwo \su cis,,_\([ cis' e] g[ \csone \sd a e']\) \cstwo \su d,,_\([ d' f] a[ \csone \sd d f]\)						| % 35
	\cstwo \su d,,_\([ d' f] aes[ \csone \sd d f]\) \cstwo \su e,,_\([ e' g] bes![ \csone \sd c g']\)						| % 36
	\cstwo \su fis,,_\([ fis' a] c[ \csone \sd d a']\) \cstwo \su g,,_\([ d' g] bes[ \csone \sd d g]\)						| % 37
	\cstwo \su c,,,_\([ c' f] a[ c \csone \sd f]\) \cstwo \su c,,_\([ c' e] bes'[ \csone \sd c g']\)						| % 38
	\cstwo \su f,,_\([ c' f] a[ \csone \sd c f]\) \cstwo \su f,,_\([ e' f] a[ \csone \sd c f]\)								| % 39
	\cstwo \su f,,_\([ es' f] a[ \csone \sd c f]\) \cstwo \su f,,_\([ d' f] bes[ \csone \sd d f]\)							| % 40
	\cstwo \su f,,_\([ g' bes] \csone \sd c[ e g]\) \cstwo \su f,,_\([ f' a] \csone \sd c[ f a]\)							| % 41
	\cstwo \su f,,_\([ es' f] \csone \sd c'[ f a]\) \cstwo \su f,,_\([ d' f] bes[ \csone \sd d f]\)							| % 42
	\cstwo \su f,,_\([^\pp g' bes] \csone \sd c[ e g]\) \cstwo \su f,_\([ c' \csone \sd g'] bes[ e g]\)						| % 43
	\cstwo \su f,,,_\([ c' f] a[ \csone \sd c f]\) \cstwo \su f,_\([ c' \csone \sd f] c'[ f a]\)							| % 44
	\cstwo \su f,,,_\([ g' bes] \csone \sd c[ e g]\) \cstwo \su f,_\([ c' \csone \sd g'] bes[ e g]\)						| % 45
	\cstwo \su f,,,_\([ c' f] a[ \csone \sd c f]\) \cstwo \su f,_\([ \csone \sd c' f] c'[ f a]\)							| % 46
	\cstwo \su f,,_\([ \csone \sd c' f] \su a[ f' a]\) \sd f,_\([ c' f] \su a[ c f]\)										| % 47
	\sd f,,_\([ c' f] \su a[ c f]\) \sd a,,_\([ f' a] \su c[ f a]\)															| % 48
	c8 r \cstwo <f,,,,,, f'>4																								| % 49
	<f f'>2^\fermata																										| % 50
}

pedals = \relative c
{ \clef bass \key d \minor \time 2/4
	s16*2/3\on s s    s s s    s s s    s s s																				| % 1
	s s s    s s s\off    s\on s s    s s s\off																				| % 2
	s\on s s    s s s    s s s    s s s\off																					| % 3
	s\on s s    s s s    s s s    s s s\off																					| % 4
	s\on s s    s s s\off    s s s    s s s																					| % 5
	s\on s s    s s s\off    s\on s s    s s s\off																			| % 6
	s\on s s    s s s\off    s\on s s    s s s\off																			| % 7
	s\on s s    s s s\off    s\on s s    s s s\off																			| % 8
	s\on s s    s s s    s s s    s s s\off																					| % 9
	s\on s s    s s s\off    s\on s s    s s s\off																			| % 10
	s\on s s    s s s    s s s    s s s\off																					| % 11
	s\on s s    s s s    s s s    s s s\off																					| % 12
	s\on s s    s s s\off    s\on s s    s s s\off																			| % 13
	s\on s s    s s s\off    s\on s s    s s s\off																			| % 14
	s\on s s    s s s\off    s\on s s    s s s\off																			| % 15
	s\on s s    s s s_\sfz \off    s\on s s    s s s\off																	| % 16
	s\on s s    s s s    s s s    s s s\off																					| % 17
	s\on s s    s s s\off    s\on s s    s s s\off																			| % 18
	s\on s s    s s s    s s s    s s s\off																					| % 19
	s\on s s    s s s\off    s\on s s    s s s\off																			| % 20
	s\on s s    s s s    s s s    s s s\off																					| % 21
	s\on s s    s s s\off    s\on s s    s s s\off																			| % 22
	s\on s s    s s s\off    s\on s s    s s s\off																			| % 23
	s\on s s    s s s    s s s    s s s\off																					| % 24
	s\on s s    s s s    s s s    s s s																						| % 25
	s s s    s s s\off    s\on s s    s s s\off																				| % 26
	s\on s s    s s s    s s s\off    s s s																					| % 27
	s\on s s    s s s\off    s\on s s    s s s\off																			| % 28
	s\on s s    s s s    s s s    s s s\off																					| % 29
	s\on s s    s s s\off    s\on s s    s s s\off																			| % 30
	s\on s s    s s s    s s s    s s s\off																					| % 31
	s\on s s    s s s    s s s    s s s\off																					| % 32
	s\on s s    s s s    s s s    s s s\off																					| % 33
	s\on s s    s s s    s s s    s s s\off																					| % 34
	s\on s s    s s s\off    s\on s s    s s s\off																			| % 35
	s\on s s    s s s\off    s\on s s    s s s\off																			| % 36
	s\on s s    s s s\off    s\on s s    s s s\off																			| % 37
	s\on s s    s s s\off    s\on s s    s s s\off																			| % 38
	s\on s s    s s s    s s s    s s s\off																					| % 39
	s\on s s    s s s\off    s\on s s    s s s\off																			| % 40
	s\on s s    s s s\off    s\on s s    s s s\off																			| % 41
	s\on s s    s s s\off    s\on s s    s s s\off																			| % 42
	s\on s s    s s s    s s s    s s s\off																					| % 43
	s\on s s    s s s    s s s    s s s\off																					| % 44
	s\on s s    s s s    s s s    s s s\off																					| % 45
	s\on s s    s s s    s s s    s s s																						| % 46
	s s s    s s s    s s s    s s s																						| % 47
	s s s    s s s    s s s    s s s																						| % 48
	s s s    s s s    s s s    s s s																						| % 49
	s s s    s s s    s s s    s s s\off																					| % 50
}

\score
{
	\new PianoStaff
	<<
		\new Staff = one
		<<
			{
				\rightHand
			}
		>>
		\new Staff = two
		<<
			{
				\leftHand
			} \\ {
				\pedals
			}
		>>
	>>
	\layout {}
	\midi {}
}
