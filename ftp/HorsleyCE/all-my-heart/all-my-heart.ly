\version "2.11.41"
#(set-global-staff-size 18)
\paper {
	between-system-padding = 0
	page-top-space = 0\in
	head-separation = 0.1\in
	foot-separation = 0.1\in
}

\header {
	title = "All My Heart This Night Rejoices"
	subtitle = "Christmas Hymn"
	composer = "Charles Edward Horsley (1822-1876)"
	arranger = " "
	poet = \markup { \override #'(baseline-skip . 2) { \column { "Paul Gerhardt (1607-1676)" "tr. Catherine Winkworth (1827-1878)" } } }
	% http://www.nla.gov.au/apps/cdview?pi=nla.mus-an12776451-s2-v

	mutopiatitle = "All My Heart This Night Rejoices"
	mutopiacomposer = "HorsleyCE"
	mutopiapoet = "Paul Gerhardt (1607-1676)"
	mutopiaopus = ""
	mutopiainstrument = "Voice (SATB) and Organ or Piano"
	date = "1862"
	source = "Melbourne: C. E. Horsley, c. 1862"
	copyright = "Public Domain"
	style = "Hymn"
	maintainer = "Daniel Johnson"
	maintainerEmail = "il.basso.buffo at gmail dot com"
	lastupdated = "2008/Mar/06"
 footer = "Mutopia-2008/03/10-1366"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

twoVerses = { \overrideProperty "Score.NonMusicalPaperColumn" #'line-break-system-details #'((alignment-offsets . (0 -5.5 -7.5   -13 -18.5 -20.5   -26 -31.5 -33.5   -39 -44.5 -46.5   -52 -56.5 -61))) }

hpDown = { \once\override Hairpin #'extra-offset = #'(0 . -0.5) }
dtDown = { \once\override DynamicText #'extra-offset = #'(0 . -1) }
dtLeftDown = { \once\override DynamicText #'extra-offset = #'(-1 . -1) }
shift = { \once\override NoteColumn #'force-hshift = #1.25 }

dyn = {
	%1
	s1\mf s1 | s1 s1 | s1\< s1\! | s1\> s1\! |
	%5
	s1\p s1 | s2.\< s4\!\> s1\! | s1\f s1 | s1 s1 |
	
	%9
	s1-" " s1 | s1*2 | s1*2 | s1*2 |
	%13
	s1\f s1 | s1*2 | s1*2 | s1*2 |
	
	%17
	s1\pp s1 | s1*2 | s1*2 | s1*2 |
	%21
	s1-"poco cresc." s2\> s2\! | s1\p s1 | s1\f s1 | s1*2 |
	
	%25
	s1-"cresc." s1 | s1\< s1\! | s1*2 | \once\override TextScript #'extra-offset = #'(0 . 1.5) s1-\markup{"più" \dynamic "f"} s2\> s2\! |
	%29
	\once\override TextScript #'extra-offset = #'(0 . 1.5) s1-\markup{\dynamic "f" "al fine"} s1 | s1*2 | s1\f s1 | s1*2 |
	
	%33
	\once\override Hairpin #'extra-offset = #'(0 . 1.85) \once\override Hairpin #'rotation = #'(-1.4 0 0) s1\< s2 s2\! | s1*2 | \once\override TextScript #'extra-offset = #'(0 . 1.75) s1-\markup{"più" \dynamic "f"} s1 | s1*2 |
	%37
	s1\f s1 | s1*2 | s1*2 | s1*2 |
	
	%41
	s1\f
}

sopNotes = {
	\clef treble \key d \major \time 4/2 \dynamicUp

	%1
	\twoVerses
	\once\override TextScript #'extra-offset = #'(0 . -2) s1*0^\markup {\hspace #-6 \upright\large\bold "With spirit."}
	\dtLeftDown fis'2.\mf fis'4 b'2 a' | d''2. d''4 d''2 cis''2 | fis'2\< b' a'1\! | d''2\> fis'2 a'1\! | \break
	%5
	\twoVerses
	fis'2.\p gis'4 a'2 a'2 | << \context Voice = sopVoice { cis''2.( b'4) a'1 } \\ { \dynamicUp s2\< s2\!\> s1\! } >> | cis''2.\f cis''4 d''2 a'2 | c''2 c'' c'' b' | \break
	
	%9
	\twoVerses
	e''2.^> d''4 cis''!1 | cis''2.^> b'4 a'1 | d''2 d' e' fis' | a'1 g'1 | \break
	%13
	\twoVerses
	b'2.\f b'4 a'1 | d''2. d'4 cis'1 | e''2^> d'' b' g' | fis'2.( e'4) d'1^\fermata \bar ":|" \break
	
	%17
	fis'2\pp r4 fis'4 b'2 b' | d''2. cis''4 cis''2 b' | b'2 g' fis'1 | b'2 g' fis'1 | \break
	%21
	b'2^"poco cresc." b' b'\> b'\! | d''1\p cis''1^\fermata | d''2.\f b'4 a'2^\fermata r4 e'4 | g'2 g' g' fis' | \break
	
	%25
	fis'2.^"cresc." e'4 a'1 | g'2.\< fis'4 b'1\! | d''2 d'' cis'' b' | b'1^\markup{"più" \dynamic "f"} a'2(\> g')\! | \break
	%29
	fis'2.^\markup{\dynamic "f" "al fine"} fis'4 b'2 a' | d''2. d''4 d''2 cis''2 | fis'2\f b' a'1 | d''2 fis'2 a'1 | \break
	
	%33
	fis'2.\< gis'4 a'2 a'2\! | cis''2.( b'4) a'1 | a'2.^\markup{"più" \dynamic "f"} a'4 b'2 cis''2 | d''2 b' b' a' | \break
	%37
	fis''2.\f^> e''4 d''1 | d''2. b'4 a'1 | a'2 a' gis' g' | d''1 cis'' | \break
	
	%41
	d''2.\f b'4 a'1 | a'2. a'4 d''1 | d''2 b' a' fis' | fis'1.( e'2) | d'\breve \bar "|."
}

altNotes = {
	\clef treble \key d \major \time 4/2 \dynamicUp

	%1
	\dtLeftDown d'2.\mf d'4 d'4( e') a'2 | fis'2 g' a' a' | fis'2\< b' a'1\! | d''2\> fis'2 a'1\! |
	%5
	d'2.\p e'4 e'2 \slurUp cis'4( d') | e'2(\< d')\!\>  \slurNeutral cis'1\! | \dtDown a'2.\f a'4 a'2 a' | g'2 a' a' g'4( fis') |
	
	%9
	e'2.^> e'4 e'1 | e'2.^> e'4 a'1 | a'2 g'4( fis') e'2 d' | e'1 e'1 |
	%13
	cis'2.\f cis'4 d'1 | e'2. e'4 e'1 | e'2^> a' g' e'4( d') | cis'1 d'1^\fermata |
	
	%17
	fis'2.\pp fis'4 fis'2 fis' | g'2. g'4 fis'2 fis' | g'2 e' d'1 | d'2 e'2 d'1 |
	%21
	d'2^"poco cresc." dis' e'\> eis'\! | fis'1\p fis'^\fermata | fis'2.\f fis'4 e'2^\fermata r4 e'4 | d'2 e' d' d' |
	
	%25
	cis'2.^"cresc." cis'4 d'1 | d'2\< dis' e'1\! | e'2 e' e' e' | g'1^\markup{"più" \dynamic "f"} fis'2(\> e')\! |
	%29
	d'2.^\markup{\dynamic "f" "al fine"} d'4 d'4( e') a'2 | fis'2 g' a' a' | fis'2\f b' a'1 | d''2 fis'2 a'1 |
	
	%33
	d'2.\< e'4 e'2 cis'4(\! d') | e'2( d') cis'1 | e'2^\markup{"più" \dynamic "f"} e' fis' a' | a'2 g' g' fis' |
	%37
	fis'2.\f^> fis'4 fis'1 | g'2. g'4 g'1 | fis'2 fis' e' e' | e'2( fis') a'2( b'4 a'4) |
	
	fis'2.\f fis'4 e'1 | fis'2. fis'4 fis'1 | e'2 e' fis' d' | d'1( cis') | d'\breve |
}

tenNotes = {
	\clef "G_8" \key d \major \time 4/2 \dynamicUp

	\dtLeftDown a2.\mf a4 b4( cis') d'2 | d'2. d'4 e'2 e'2 | fis2\< b a1\! | d'2\> fis2 a1\! |
	d'2(\p cis'4) b4 a2 a | << \context Voice = tenVoice { a2.( gis4) a1 } \\ { \dynamicUp s2\< s2\!\> s2\! } >> | e'2.\f e'4 d'2 d' | e'2 fis'4( e') d'2 d' |
	
	b2.^> b4 cis'1 | cis'2.^> cis'4 d'1 | d'2 d' b a | b1 b |
	g2.\f g4 a1 | b2. b4 cis'1 | cis'2^> d' d' b | a2.( g4) fis1^\fermata |
	
	d'2.\pp d'4 d'2 d' | e'2. e'4 d'2 d' | b2 b2 b1 | b2 b2 b1 |
	b2^"poco cresc." b2 b2\> b2\! | ais1\p ais1^\fermata | d'2.\f d'4 e'2^\fermata r4 a4 | b2 cis'4( b) a2 a |
	
	a2.^"cresc." a4 a1 | b2.\< b4 b1\! | b2 b b b | cis'1^\markup{"più" \dynamic "f"} \hpDown d'2(\> e')\! |
	a2.^\markup{\dynamic "f" "al fine"} a4 b4( cis') d'2 | d'2. d'4 e'2 e'2 | fis2\f b a1 | d'2 fis2 a1 |
	
	d'2\< cis'4( b4) a2 a\! | gis1 a1 | cis'2^\markup{"più" \dynamic "f"} cis' d' e' | a2 b4( cis') d'2 d' |
	cis'2.\f^> cis'4 b1 | b2. d'4 e'1 | d'2. d'4 d'2 d' | d'1 e' |
	
	d'2.\f d'4 e'1 | d'2. d'4 d'1 | d'2 d' d' gis | a1.( g!2) | fis\breve |
}

basNotes = {
	\clef bass \key d \major \time 4/2 \dynamicUp

	\dtLeftDown d2.\mf d4 g2 fis | b2 b a a | fis2\< b a1\! | \once\override Hairpin #'height = #0.5 \hpDown d'2\> fis2 a1\! |
	d2.\p d4 cis2 fis | << \context Voice = basVoice { e1 a1 } \\ { \dynamicUp s2\< s2\!\> s1\! } >> | e2.\f g4 fis2 fis | e2 d g g |
	
	gis2.^> gis4 a1 | g!2.^> g4 fis1 | b2 b4( a) g2 fis | e1 e |
	e2.\f e4 fis1 | g2. g4 a1 | g2^> fis g g, | a,1 d^\fermata |
	
	b2.\pp b4 b2 b2 | ais2. ais4 b2 b | e2 e b,1 | g2 e b,1 |
	g2^"poco cresc." g g\> g\! | fis1\p fis^\fermata | b,2.\f b,4 cis2^\fermata r4 cis4 | b,2 a, d d |
	
	a2^"cresc." g fis1 | b2\< a g1\! | g,2 g, g g | a1^\markup{"più" \dynamic "f"} b2(\> cis')\! |
	d2.^\markup{\dynamic "f" "al fine"} d4 g2 fis | b2 b a a | fis2\f b a1 | d'2 fis2 a1 |
	
	d2.\< d4 cis2 fis\! | e1 a1 | a2^\markup{"più" \dynamic "f"} a a g | fis2 g d d' |
	\once\override Hairpin #'extra-offset = #'(0 . -0.4) ais2.\f^> ais4 b1 | g2. g4 cis1 | d2 d b, bes, | a,1 a |
	
	b2.\f b4 cis'1 | d'2 cis'( b) a | gis2 gis, a, b, | a,\breve | d\breve |
}

sopText = \lyricmode {
	\set fontSize = #-0.75
	\set stanza = "1. "
	All my heart this night re -- joi -- ces As I hear Far and near
	Sweet -- est An -- gel voi -- ces “Christ is born” their choirs are sing -- ing
	’Till the air Ev -- ery -- where Now with joy is ring -- ing,
	’Till the air Ev -- ery -- where Now with joy is ring -- ing.
	
	\set stanza = "3. "
	Hark! a voice from yon -- der man -- ger Soft and sweet Doth en -- treat
	“Flee from woe and dan -- ger. Breth -- ren come: from all that grieve you
	You are freed; All you need I will sure -- ly give you.” __
	
	\set stanza = "4. "
	Come then let us has -- ten yon -- der Here let all great and small
	Kneel in awe and won -- der Love him who with love is yearn -- ing
	Hail the Star That from far Bright with hope is burn -- ing,
	Hail the Star That from far Bright with hope is burn -- ing.
}
altText = \lyricmode {
	\set fontSize = #-0.75
	\set stanza = "1. "
	All my heart this night re -- joi -- ces As I hear Far and near
	Sweet -- est An -- gel voi -- ces “Christ is born” their choirs are sing -- ing
	’Till the air Ev -- ery -- where Now with joy is ring -- ing,
	’Till the air Ev -- ery -- where Now with joy is ring -- ing.
	
	\set stanza = "3. "
	Hark! a voice from yon -- der man -- ger Soft and sweet Doth en -- treat
	“Flee from woe and dan -- ger. Breth -- ren come: from all that grieve you
	You are freed; All you need I will sure -- ly give you.” __
	
	\set stanza = "4. "
	Come then let __ us has -- ten yon -- der Here let all great and small
	Kneel in awe and won -- der Love him who with love is yearn -- ing
	Hail the Star That from far Bright with hope is burn -- ing,
	Hail the Star That from far Bright with hope is burn -- ing.
}
tenText = \lyricmode {
	\set fontSize = #-0.75
	\set stanza = "1. "
	All my heart this night re -- joi -- ces As I hear Far and near
	Sweet -- est An -- gel voi -- ces “Christ is born” their choirs are sing -- ing
	’Till the air Ev -- ery -- where Now with joy is ring -- ing,
	’Till the air Ev -- ery -- where Now with joy is ring -- ing.
	
	\set stanza = "3. "
	Hark! a voice from yon -- der man -- ger Soft and sweet Doth en -- treat
	“Flee from woe and dan -- ger. Breth -- ren come: from all that grieve you
	You are freed; All you need I will sure -- ly give you.” __
	
	\set stanza = "4. "
	Come then let __ us has -- ten yon -- der Here let all great and small
	Kneel in __ awe and won -- der Love him who with love is yearn -- ing
	Hail the Star That from far Bright with hope is burn -- ing,
	Hail the Star That from far Bright with hope is burn -- ing.
}
basText = \lyricmode {
	\set fontSize = #-0.75
	\set stanza = "1. "
	All my heart this night re -- joi -- ces As I hear Far and near
	Sweet -- est An -- gel voi -- ces “Christ is born” their choirs are sing -- ing
	’Till the air Ev -- ery -- where Now with joy is ring -- ing,
	’Till the air Ev -- ery -- where Now with joy is ring -- ing.
	
	\set stanza = "3. "
	Hark! a voice from yon -- der man -- ger Soft and sweet Doth en -- treat
	“Flee from woe and dan -- ger. Breth -- ren come: from all that grieve you
	You are freed; All you need I will sure -- ly give you.” __
	
	\set stanza = "4. "
	Come then let us has -- ten yon -- der Here let all great and small
	Kneel in awe and won -- der Love him who with love is yearn -- ing
	Hail the Star That from far Bright with hope is burn -- ing,
	Hail the Star That from __ far Bright with hope is burn -- ing.
}


textTwo = \lyricmode {
	\set fontSize = #-0.75
	\set stanza = "2. "
	For it dawns, the prom -- ised mor -- row Of his birth Who the Earth
	Res -- cues from her sor -- row God to wear our form de -- scend -- eth
	Of his grace To our race Here his Son he lend -- eth,
	Of his grace To our race Here his Son he lend -- eth.
}

rhNotes = {
	\clef treble \key d \major \time 4/2
	\once\override TextScript #'extra-offset = #'(0 . -2.5) s1*0^\markup {\hspace #-5 \upright\bold "With spirit."}
	
	<d' fis'>1 << { b'2 } \\ { d'4 e' } >> \voiceOne a'2 \oneVoice | << { \voiceOne d''1 ~ d''2 cis'' } \\ { \voiceThree fis'2 g' s1 } \\ { \voiceTwo d'1 <e' a'>1 } >> | fis'2 b' a'1 | d''2 fis'2 a'1 |
	<d' fis'>2. <e' gis'>4 <e' a'>2 << { a'2 } \\ { cis'4( d') } >> | << { cis''2. b'4 } \\ { e'2 d' } >> <cis' a'>1 | <a' cis''>2. <a' cis''>4 <a' d''>2 a' | << { <g' c''>2  <a' c''> <a' c''> b' } \\ { e'2 fis'4 e' d'2 g'4 fis' } >> |
	
	<< { e''2.^> d''4 } \\ { e'1 } >> <cis''! e'>1 | << { cis''2.^> b'4 } \\ { e'1 } >> <d' a'>1 | <d' a' d''>2 << { g'4 fis' } \\ { d'2 } >> e'2 <d' fis'> | << { a'1 g'1 } \\ { e'\breve } >> |
	<cis' b'>1 <d' a'>2 r2 | \slurUp <e' d''>1( ~ <e' cis''>2) \slurNeutral r2 | <e' e''>2-> <a' d''> <g' b'> << { g'2 } \\ { e'4( d') } >> | << { fis'2. e'4 } \\ { cis'1 } >> d'1^\fermata |
	
	<d' fis'>1 <fis' b'>1 | << { d''2. cis''4 cis''2 b' } \\ { g'1 fis' } >> | <g' b'>2 <e' g'>2 <d' fis'>1 | <d' g' b'>2 <e' g'>2 <d' fis'>1 |
	<< { b'\breve } \\ { d'2 dis' e' eis' } >> | << { d'1 cis'^\fermata } \\ { fis'\breve } >> | << { d''2 b' } \\ { <d' fis'>1 } >> <e' a'>2^\fermata r4 e'4 | << { g'1. fis'2 } \\ { d'2 e' d'1 } >> |
	
	<< { fis'2. e'4 } \\ { cis'1 } >> <d' a'>1 | << { g'2. fis'4 } \\ { d'2 dis' } >> <e' b'>1 | << { d''1 cis''2 b' } \\ { e'\breve } >> | <g' b'>1 <fis' a'>2 <e' g'> |
	<d' fis'>1 << { b'2 } \\ { d'4 e' } >> \voiceOne a'2 \oneVoice | << { \voiceOne d''1 ~ d''2 cis'' } \\ { \voiceThree fis'2 g' s1 } \\ { \voiceTwo d'1 <e' a'>1 } >> | fis'2 b' a'1 | d''2 fis'2 a'1 |
	
	<d' fis'>2. <e' gis'>4 <e' a'>2 << { a'2 } \\ { \once\override Stem #'length = #4 cis'4( d') } >> | << { cis''2. b'4 } \\ { e'2 d' } >> <cis' a'>1 | <e' a'>1 <fis' b'>2 <a' cis''> | <a' d''>2 <g' b'> <g' b'> <fis' a'> |
	<< { fis''2.^> e''4 d''1 } \\ { fis'\breve } >> | << { d''2. b'4 a'1 } \\ { g'\breve } >> | <fis' a'>1 << { gis'2 g'2 } \\ { e'1 } >> | << { d''1 cis'' } \\ { e'2 fis' g' a'4 g' } >> |
	
	<< { d''2. b'4 } \\ { fis'1 } >> <e' a'>1 | << { a'1 d''1 } \\ { <d' fis'>\breve } >> | << { d''2 b' } \\ { <d' e'>1 } >> <d' fis' a'>2 <gis d' fis'> |
	<< { fis'1. e'2 } \\ { <a d'>1 <g! cis'> } >> | <fis a d'>\breve |
}

lhNotes = {
	\clef bass \key d \major \time 4/2
	
	<d a>1 << { \voiceOne \set followVoice = ##t b4 cis' \change Staff = up \voiceTwo d'2 } \\ { g2 fis } >> | b,1 a, | <fis, fis>2 <b, b> <a, a>1 | <d d'>2 <fis, fis>2 <a, a>1 |
	<d a>2. <d b>4 <cis a>2 <fis a> | << { a2. gis4 } \\ { e1 } >> a1 | << { e'1 } \\ { a2. g4 } >> <fis d'>1 | e2 d g1 |
	
	<gis b>1 <a cis'>1 | <g! cis'>1 fis1 | b2. a4 << { \override Stem #'length = #14 b2 a \revert Stem #'length } \\ { g2 fis } >> | <e b>\breve |
	<e g>1 <fis a>2 r2 | <g b>1 <a cis'>2 r2 | <g cis'>2-> <fis d'> <g d'> <g, b> | << { a2. g4 } \\ { a,1 } >> <d fis>1_\fermata |
	
	<b d'>\breve | <ais e'>1 <b d'>1 | << { b\breve } \\ { e1 b, } >> | << { b\breve} \\ { g2 e b,1 } >> |
	<g b>\breve | <fis ais>\breve_\fermata | b,1 cis2_\fermata r4 cis4 | <b, b>2 << { cis'4( b) } \\ { a,2 } >> <d a>1 |
	
	<< { a\breve } \\ { \shift a2 g fis1 } >> | << { b\breve } \\ { \shift b2 a g1 } >> | << { b\breve } \\ { g,1 g } >> | <a, cis'>1 <b, d'>2 cis |
	<d a>1 << { \voiceOne \set followVoice = ##t b4 cis' \change Staff = up \voiceTwo d'2 } \\ { g2 fis } >> | b,1 a, | fis2 b a1 | d'2 fis2 a1 |
	
	<< { \override Stem #'length = #4 d'2 cis'4 b \revert Stem #'length a1 } \\ { d1 cis2 fis } >> | <e gis>1 <a, a>1 | << { cis'1 d'2 e' } \\ { a1. g2 } >> | <fis a>2 << { b4 cis' } \\ { g2 } >> <d d'>1 |
	<ais cis'>1 <b d'>1 | << { \set followVoice = ##t b2. \voiceFour \change Staff = up d'4 e'1 } \\ { g1 cis1 } >> | << { d'\breve } \\ { d2 cis b, bes, } >> | <a, d'>1 <a e'>1 |
	
	<b, d'>1 cis1 | <d d'>2 <cis cis'> <b, b> <a, a> | <gis, gis>2 <gis,, gis,> <a,, a,> <b,, b,> |
	<a,, a,>\breve | <d, d>\breve |
	
}

\score {
	<<
		\new ChoirStaff {
			<<
			\new Staff = sopStaff { \set Staff.instrumentName = \markup{ \center-align{"Soprano" "1º"} } \new Voice = sopVoice { \sopNotes } }
			\new Lyrics \lyricsto sopVoice \sopText
			\new Lyrics \lyricsto sopVoice \textTwo
			
			\new Staff = altStaff { \set Staff.instrumentName = \markup{ \center-align{"Soprano" "2º"} } \new Voice = altVoice { \altNotes } }
			\new Lyrics \lyricsto altVoice \altText
			\new Lyrics \lyricsto altVoice \textTwo
		
			\new Staff = tenStaff { \set Staff.instrumentName = "Tenor" \new Voice = tenVoice { \tenNotes } }
			\new Lyrics \lyricsto tenVoice \tenText
			\new Lyrics \lyricsto tenVoice \textTwo
		
			\new Staff = basStaff { \set Staff.instrumentName = "Bass" \new Voice = basVoice { \basNotes } }
			\new Lyrics \lyricsto basVoice \basText
			\new Lyrics \lyricsto basVoice \textTwo
			>>
		}
		\new GrandStaff {
			\set GrandStaff.instrumentName = \markup { \tiny \center-align { "Organ" \italic"or" "Pianoforte" } }
			<<
			\new Staff = up \with { fontSize = #-2 \override StaffSymbol #'staff-space = #(magstep -2) } { \rhNotes }
			\new Dynamics { \set fontSize = #-2 \dyn }
			\new Staff = down \with { fontSize = #-2 \override StaffSymbol #'staff-space = #(magstep -2) } { \lhNotes }
			>>
		}
	>>
	\layout {
		\context {
			\type "Engraver_group"
			\name Dynamics
			\alias Voice % So that \cresc works, for example.
			\consists "Output_property_engraver"
			\override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
			\consists "Script_engraver"
			\consists "Dynamic_engraver"
			\consists "Text_engraver"
			\override TextScript #'font-size = #-0.5
			\override TextScript #'font-shape = #'italic
			\override TextScript #'extra-offset = #'(0 . 0.75)
			\override DynamicText #'extra-offset = #'(0 . 2.5)
			\override Hairpin #'extra-offset = #'(0 . 1.75)
			\consists "Skip_event_swallow_translator"
			\consists "Axis_group_engraver"
		}
		\context {
			\GrandStaff
			\accepts Dynamics
			\consists Instrument_name_engraver
		}
		\context {
			\Score
			\override NonMusicalPaperColumn #'line-break-system-details = #'((alignment-offsets . (0 -6   -13 -19   -26 -32   -39 -45   -52 -56.5 -61)))
		}
		\context {
			\Voice
			\override TextScript #'font-shape = #'italic
			\override TextScript #'font-size = #-0.5
		}
	}
}
\score {
	<<
	\new Staff { \set Staff.midiInstrument = "oboe" \sopNotes }
	\new Staff { \set Staff.midiInstrument = "english horn" \altNotes }
	\new Staff { \set Staff.midiInstrument = "viola" \tenNotes }
	\new Staff { \set Staff.midiInstrument = "cello" \basNotes }
	\new Staff = "up" { \set Staff.midiInstrument = "church organ" \rhNotes }
	\new Staff = "down" { \set Staff.midiInstrument = "church organ" \lhNotes }
	>>
	\midi {
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 72 2)
		}
	}
}
