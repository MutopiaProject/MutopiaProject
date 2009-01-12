\version "2.12.0"

%{
http://notes.tarakanov.net/composers/v.htm

ChangeLog:
2008-Feb-26
	Submitted to mutopiaproject.org
2009-Jan-09
	Updated to Lilypond 2.12.0
	Changed fonts to Free UCS (http://www.gnu.org/software/freefont/)
	Fixed Cyrillic textual error
	Corrected octave errors in mm. 25, 184, 191 and wrong tenor note in 232
	Added transliteration
%}

%{
Text translation:
	Glory to God in the highest, and on earth peace, good will among men.
	We hymn thee, we bless thee, we worship thee, we glorify thee, we give thanks unto thee for thy great glory.
	O Lord King, heavenly God, Father Almighty; O Lord, the only-begotten Son, Jesus Christ; and the Holy Spirit.
	O Lord God, Lamb of God, Son of the Father, that takest away the sin of the world, have mercy on us, thou that takest away the sins of the world.
	Receive our prayer, thou that sittest at the right hand of the Father, and have mercy on us.
	For thou only art holy, thou only art the Lord, O Jesus Christ, to the glory of God the Father.  Amen.
	Every day will I bless thee, and I will praise thy name forever; yea, forever and ever.
	Vouchsafe, O Lord, to keep us this day without sin.
	Blessed art thou, O Lord, the God of our fathers, and praised and glorified is thy name forever.  Amen.
	Let thy mercy be upon us, O Lord, even as we have set our hope on thee.
	Blessed art thou, O Lord: teach me thy statutes. (thrice)
	Lord, thou hast been our refuge from generation to generation.  I said:  Lord, be merciful unto me; heal my soul, for I have sinned against thee.
	Lord, I have fled unto thee; teach me to do thy will, for thou art my God.
	For with thee is the fountain of life; in thy light shall we see light.
	O continue thy mercy unto them that know thee.
	Holy God, Holy Mighty, Holy Immortal: have mercy on us. (thrice)
	Glory to the Father and to the Son and to the Holy Spirit, both now and ever, and unto ages of ages.  Amen.
	Holy Immortal: have mercy on us.
	Holy God, Holy Mighty, Holy Immortal: have mercy on us.
%}

#(set-global-staff-size 20)
#(ly:set-option 'point-and-click #f)

dtDown = { \once\override DynamicText #'extra-offset = #'(0 . -1) }
hpLeftDown = { \once\override Hairpin #'extra-offset = #'(-3 . -1.5) }
hpRightDown = { \once\override Hairpin #'extra-offset = #'(2 . -1.5) }
hpLeftDownExtra = { \once\override Hairpin #'extra-offset = #'(-3 . -2.5) }
hpDown = { \once\override Hairpin #'extra-offset = #'(0 . -1) }
hpHalfDown = { \once\override Hairpin #'extra-offset = #'(0 . -0.5) }

\paper {
	#(define fonts (make-pango-font-tree "FreeSerif" "FreeSans" "FreeMono" 1))
	ragged-last-bottom = ##f
	between-system-padding = 0
}

\header {
	title = "Славословіе великое — Great Doxology"
	composer = "A. Veliumov" %А. Велиумов
	%tagline = ""
	copyright = "Public Domain"

	%mutopia-specific headers:
	mutopiatitle = "Great Doxology"
	mutopiacomposer = "VeliumovA"
	mutopiainstrument = "Voice (SATB)"
	date = "19th century"
	source = "Unknown (pre-revolutionary Russian)"
	style = "Romantic"
	maintainer = "Daniel Johnson"
	maintainerEmail = "il.basso.buffo at gmail.com"
	lastupdated = "2009/Jan/09"
 footer = "Mutopia-2009/01/12-1362"
 %tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

global = {
	\time 3/4 \key g \minor \dynamicUp \autoBeamOff
}

sopNotes = {
	\global \clef treble
	s1*0^\markup{\hspace #-6 \large\bold  "Moderato" } %"Умѣренно."
	%1
	g'8([ a' bes' c''] d''4) | g'2. | a'8([\< bes'\! c'' d''] ees''[\> c'']) | a'2.\! |
	%5
	g'8([\< a' bes'\! c'']) d''4 | ees''4( d''8[ c'']) bes'8([\> a'])\! | g'2 bes'4 | a'4(\> g' fis')\! | g'2. |
	%10
	g'8([\< a'])\! bes'([ c'']) d''([ bes'])\> | g'2.\! | a'8([\< bes'])\! c''([ d'']) ees''([ c''])\> | << { a'2.} { s4\! s2\< } >> |
	%14
	g'8([\! a' bes' c'']) d''4 | ees''4( d''8[ c'']) bes'([\> a']) | g'4\! a' bes' | a'4( g') fis'\> | g'2\! r4 |
	
	%19
	\dtDown f''4.(^>\f ees''8) d''8([ ees'']) | f''4. d''8 c'' d'' | ees''2 d''4 |
	%22
	c''4. bes'8 a'\> g'\! | f'4\< g'8([ a']) bes'([ c''])\! | d''4 d'' d'' |
	%25
	ees''4 ees'' ees'' | d''2(\> c''4)\! | bes'2 a'4 | g'4 g' d'' | d''2\< d''4 | c''4(\! d''4) \hpLeftDown ees''\> | d''4( g'') fis'' | g''2.\!\fermata |
	
	%33
	d''4.\p\< d''8 d'' d''\! | d''2 d''4 | d''2 d''4 |
	%36
	fis''( g'') ees'' | d''4( c'') bes' | a'4(\< bes') b'\! | c''2^\markup{\small\italic "rit."} %{ Замедляя %} cis''4\> | d''8\! r8
	%40
	d''4^\markup{\small\italic "a tempo"} %{ Прежній темръ. %} d''8 d'' | d''4 d'' d'' | c''!4(\< f'') ees''\! | d''2. |
	%44
	c''4\> c'' c''\! | bes'4 bes' a' | bes'4 bes'\p bes' | a'2. | a'2\> a'4\! |
	
	%49
	bes'4\p bes' bes' | c''2 a'4 |  bes'4( c'') bes' | a'2 a'4 | d''4 c''\< bes' | a'2.\! |
	%55
	d''4 d'' d'' | c''4 c'' c'' | c''2 c''4 | bes'2 r4 |
	%59
	a'4 a' a' | bes'4 a' bes' | c''2\> c''4\! | bes'2 bes'4 | g'2 c''4\< | e''4 e''\!
	%65
	e''4 | f''4\f f'' f'' | e''4 e'' e'' | f''2 f''4 | \hpLeftDown f''2\> e''4 | f''2.\!^\fermata |
	
	%70
	<a' d''>2\pp^\markup{\large\bold "Meno mosso."} %{ Рѣже %} <a' d''>4 | <a' d''>2 <a' d''>4 | <a' d''>4 <a' d''> \hpLeftDown <a' d''>\< | \hpRightDown <a' d''>2.\!\>^\fermata |
	%74
	r4\! <a' e''>4\pp <a' e''> | <a' e''>2 <a' e''>4 | <a' e''>2 <a' e''>4 |
	%77
	<a' d''>4 <a' d''> <a' d''> | <a' cis''>2 <a' cis''>4 | <a' d''>4 <a' d''> <a' d''> | d''4 c''! bes' | a'2.\> | a'2.\! | g'2^\fermata \bar "" \break
	
	%84
	d''4\mf^\markup{\large\bold "Tempo primo." } %{ "Прежній темръ." %} \bar "||" \key ees \major ees''2. | bes'2. | bes'4 bes' bes' | bes'2\> bes'4\! | bes'4 g' bes' | ees''2. |
	%90
	d''4 ees'' f'' | ees''2 ees''4 | ees''4 ees'' ees'' | \once\override Hairpin #'extra-offset = #'(-3 . -0.75) ees''2(\> d''4) | ees''2\!^\fermata
	%95
	c''4\p | b'2 b'4 | c''4 b' c'' | d''2 d''4 | ees''4( d'') c'' | b'4 b' b' | c''4 b' c'' | d''2.^\fermata |
	%102
	c''4\pp c'' c'' | c''4 c'' c'' | c''4 c'' c'' | c''4 c'' c'' | c''2. |
	%107
	c''4 c'' c'' | c''2. | c''4 c'' c'' | bes' bes' bes' | a' a' a' | bes'2 bes'4 | bes'^> \hpLeftDown bes'\> a' | bes'2.\!^\fermata |
	
	%115
	bes'2.\pp | a'2. | g'4 g' g' | fis'2. | g'2 g'4 | a'2 a'4 | bes'2. |
	%122
	g'2\pp g'4 | f'2. | ees'2\pp ees'4 | d'4 d' d' | ees'2.^> | f'2 f'4 | g'2. |
	%129
	aes'2 aes'4 | g'2. | f'4 f' f' | ees'2. | \hpLeftDown d'2\> d'4 | c'2.\!^\fermata |
	
	%135
	ees'4\pp g' bes' | d'4 f' aes' | g'4 bes' ees'' | d''4( c'') d'' | ees''2\< bes'4\! |
	%140
	f''4( ees''8[ d'']) c''8([ bes']) | g''2 g''4 | f''4( ees'') d'' | ees''4( d'') c'' | d''4(\> c'') b' | c''2.\! |
	%146
	d''4\p d'' d'' | ees''4 d'' c'' | b'2 b'4 | c''4 b' c'' | d''2 d''4 | ees''( d'') c'' | bes'!2 bes'4 | \hpLeftDown a'4(\> bes') a' | g'2.\!^\fermata |
	%155
	a'4\p a' a' | bes'4 a' g' | d''2 fis'4 | g'2. |
	%159
	a'2 a'4 | bes'4( a') g' | d''2 fis'4\< | g'2 g'4\! |
	%163
	g''2 f''4 | ees''2 d''4 | c''4( bes') a' | g'4( fis') g' | bes'2\> a'4 | g'2.\! |
	%169
	g'2\pp g'4 | g'2 g'4 | g'2 fis'4 | g'2.^\fermata \bar "||"
	
	\key g \minor
	%173
	g'4.\p g'8 g' g' | a'4 a' a' | bes'4 bes' bes' | d''4 d'' d'' | fis''2. | g''2. ~ | g''2 g''4 | fis''2 r4 |
	%181
	r4 d''4\mf g'' | g''2 g''4 | g''2 f''4 | ees''2 ees''4 | d''2 d''4 | c''2\> c''4\! |
	%187
	b'4 d'' d'' | ees''2. | ees''4 ees'' ees'' | d''4 d'' d'' | c''2^\markup{\small\italic "rit."} c''4 | c''4 bes'!\> bes' | bes'2\! a'4 | g'2.^\fermata |
	
	%195
	d''4.\p^\markup{\small\italic "a tempo."} d''8 d'' c'' | bes'4 bes' a' | g'4 g' a' | bes'4 bes' c'' | bes'2 bes'4 |
	%200
	bes'4 bes' bes' | bes'4 bes' bes' | a'4 bes' c'' | d''2( c''4) | bes'2. |
	%205
	R2.*2 | <d'' f''>2\f <d'' f''>4 | <c'' ees''>4(\> <bes' d''>) <a' c''>\! | <bes' d''>2. | r4 r4 <c'' f''>4 | <d'' f''>2 <c'' e''>4 |
	%212
	<b' d''>4(\> <c'' ees''>) <d'' f''>\! | <c'' ees''>2.(\< | <d'' g''>2)\! <d'' g''>4 | <ees'' g''>2.\f |
	%216
	<d'' g''>2 <d'' f''>4 | <c'' ees''>2. | <d'' f''>2 <d'' f''>4 | << { <ees'' g''>2. ~ \noBreak <ees'' g''>2 } { \dtDown \hpDown s2\ff\< s4\! s4\> s4\! } >> r4^\fermata |
	%221
	<a' d''>2.\mf | <a' c''>2. | bes'2. | r4 r a'4\p | bes'2 bes'4 | d''4 c'' bes' | c''2. | c''4(\> bes'! a' | bes'2.\! | a'4) a'4\> a'\! | g'2^\fermata \bar "||:"
	
	%232
	%\set Timing.measurePosition = #(ly:make-moment -1 4) \override Score.BarNumber #'stencil = ##f
	fis'4\p^\markup{\hspace #-7.5 \line { "[" \hspace #0.5 \musicglyph #"scripts.segno" "]" \hspace #1 \small\bold "Tre volte." %{ трижды %} }} | g'8([\< a' bes'\! c''\> d'' bes'\!]) | g'4 g' g' | a'8([\< bes' c''\! d''\> ees'' c''\!]) | a'4 a' a' |
	%236
	g'8([ a' bes' c'']) d''4 | ees''4 d''8([ c'']) bes'([ a']) | g'2( bes'4 | a'4 g') fis' | g'2.^\markup{ \hspace #3 \small\italic "[Fine.]" } \bar ":|"
	%241
	\break
	\override Staff.TimeSignature #'stencil = ##f \time 26/8
	fis'8 fis'\breve fis'8 g'2.^\fermata \bar "||" \break
	%242
	fis'4 | \time 3/4 g'8([\< a' bes' c''])\! d''4 | ees''4\> d''8\!([ c'']) bes'([ a']) | g'2( bes'4 | a'4\> g') fis'\! | \once\override DynamicText #'x-offset = #-4 g'2.*5/6\p^\fermata s8^\markup{\hspace #-11 \small\italic "[D.S. al Fine]"} \bar "|."
}

altNotes = {
	\global \clef treble
	%1
	d'2.( | g'8[\< fis'\! g' a']) bes'([\> g'])\! | fis'2.( ~  | fis'8[\< g'\! a' bes']) c''8([\> a'])\! |
	%5
	<< { g'2 } { s4\< s4\! } >> g'4 | g'2 << { g'4 } { s8\> s8\! } >> | g'2 g'4 | << { d'2. } { s2\> s4\! } >> | d'2. |
	%10
	d'2. | g'8([\< fis'\! g' a')] bes'([\> g'])\! | fis'2. | fis'8([\< g'])\! a'([ bes'])\> c''8([ a'])\! |
	%14
	g'2 g'8 g' | g'2 g'4 | g'4 g' g' | d'2 d'4\> | d'2\! r4 |
	
	%19
	f'2\f f'4 | f'4. f'8 f' f' | f'2 f'4 |
	%22
	f'4. f'8 f'\> e'\! | << { f'4 f' bes' } { s2\< s8 s8\! } >> | bes'4 bes' bes' |
	%25
	bes'4 bes' bes' | \hpDown bes'2(\> a'4)\! | f'2 fis'4 | g'4 g' fis' | g'4(\< fis') g' | g'2\! \hpLeftDown g'4\> | g'4( bes') a' | g'2.\!\fermata |
	
	%33
	fis'4.\p\< fis'8 fis' fis'\! | g'2 fis'4 | g'2 g'4 |
	%36
	a'4( bes') g' | g'4( fis') g' | a'4(\< g') g'\! | g'2^\markup{\small\italic "rit."} g'4\> | fis'8\! r8 
	%40
	fis'4^\markup{\small\italic "a tempo"} fis'8 fis' | g'4 g' d' | f'2\< f'4\! | f'2. |
	%44
	g'4\> g' g'\! | f'4 f' f' | f' f'\p f' | ees'2. | d'2\> d'4\! |
	
	%49
	d'4\p d' g' | a'2 fis'4 | g'4( a') g' | fis'2 fis'4 | g'4 fis'\< g' | fis'2.\! |
	%55
	g'4 g' g' | g'4 g' g' | f'2 f'4 | f'2 r4 |
	%59
	f'4 f' f' | f'4 f' f' | f'2\> f'4\! | f'2 f'4 | e'2 e'4\< | g'4 g'\!
	%65
	g'4 | \dtDown a'4\f a' a' | g'4 g' g' | a'2 a'4 | \hpLeftDown g'2\> bes'4 | a'2.\!^\fermata |
	
	%70
	f'2\pp f'4 | f'2 f'4 | f'4 f' \hpLeftDown f'\< | \hpRightDown f'2.\!^\fermata\> |
	%74
	r4\! g'4\pp g'4 | g'2 g'4 | g'2 g'4 |
	%77
	f'4 f' f' | e'2 e'4 | d'4 f' fis' | g'4 fis' g' | g'2.\> | fis'2.\! | g'2^\fermata
	
	%84
	f'!4\mf | \key ees \major g'2. | ees'2. | aes'4 aes' aes' | f'2\> f'4\! | ees'4 ees' ees' | g'2. |
	%90
	f'4 g' aes' | g'2 g'4 | g'4 aes' aes' | \hpLeftDown g'2(\> f'4) | g'2\!^\fermata
	%95
	g'4\p | g'2 g'4 | g'4 f' ees' | f'2 f'4 | ees'4( f') g' | g'4 g' g' | g'4 f' ees' | g'2.^\fermata |
	%102
	e'4\pp e' g' | f'4 g' aes' | g'4 g' g' | aes' g' f' | e'2. |
	%107
	f'4 g' aes' | g'2. | f'4 f' f' | f'4 f' f' | f'4 f' f' | f'2 g'4 | f'4^> \hpLeftDown f'4\> ees' | d'2.\!^\fermata |
	
	%115
	f'2.\pp | f'2( ees'4) | d'4 d' d' | d'2. | d'2 d'4 | f'2 f'4 | f'2. |
	%122
	ees'2\pp ees'4 | d'2. | c'2\pp c'4 | b4 b b | c'2.^> | d'2 d'4 | ees'2. |
	%129
	ees'2 ees'4 | ees'2. | c'4 c' c' | c'2. | \hpLeftDown b2\> b4 | c'2.\!^\fermata |
	
	%135
	bes2.\pp | d'2 d'4 | ees'2. | bes2 f'4 | ees'4\< f' g'\! |
	%140
	f'4( g') aes' | g'2 g'4 | g'2 g'4 | g'4( f') ees' | f'4(\> ees') d' | ees''2.\! |
	%146
	g'4\p g' g' | g'4 f' ees' | f'2 f'4 | ees'4 f' ees' | f'2 f'4 | ees'4( f') ees' | g'2 g'4 | \hpLeftDown fis'2\> fis'4 | g'2.\!^\fermata |
	%155
	fis'4\p fis' fis' | g'4 fis' g' | g'2 d'4 | d'2. |
	%159
	fis'2 fis'4 | g'4( fis') g' | g'2 d'4\< | d'2 g'4\! |
	%163
	g'2 g'4 | g'2 g'4 | g'2 ees'4 | d'2 d'4 | fis'2\> fis'4 | g'2.\! |
	%169
	ees'2\pp ees'4 | d'2 d'4 | d'2 d'4 | d'2.^\fermata |
	
	\key g \minor
	%173
	R2. | fis'4.\p fis'8 fis' fis' | g'4 g' g' | fis'4. fis'8 fis' fis' | a'4 a' a' | g'4 g' g' | g'4 g' a' | a'2 r4 |
	%181
	r4 g'\mf g' | g'2 g'4 | g'2 g'4 | g'2 g'4 | g'2 f'4 | ees'4(\> f') fis'\! |
	%187
	g'4 aes' aes' | g'2. | g'4 g' g' | f'4 f' f' | ees'4( f') g' | << { g'2.( } { s4 s2\> } >> | fis'2)\! fis'4 | g'2.^\fermata |
	
	%195
	d'4.\p d'8 d' d' | d'4 d' d' | d'4 d' f' | f'4 f' f' | f'2 g'4 |
	%200
	g'4 g' g' | e'4 e' e' | f'4 f' f' | f'2. | f'2. |
	%205
	R2.*2 | bes'2\f bes'4 | f'2\> f'4\! | f'2. | r4 r4 f'4 | bes'2 c''4 |
	%212
	g'2\> g'4\! | g'2.\< ~ | g'2\! g'4 | \dtDown <g' c''>2.\f |
	%216
	<g' b'>2 <g' b'>4 | g'2. | bes'!2 bes'4 | << { bes'2. ~ bes'2 } { \dtDown \hpDown s2\ff\< s4\! s4\> s4\! } >> r4^\fermata |
	%221
	fis'2.\mf | fis'2. | g'2. | r4 r4 fis'4\p | g'2 g'4 | g'4 g' g' | g'2. | g'2.(\> ~ | g'2.\! | fis'4) fis'\> fis'\! | d'2^\fermata 

	%232
	d'4\p | d'2. | g'8([ fis']) g'([ a']) bes'([ g']) | fis'2. | fis'8([ g']) a'([ bes']) c''([ a']) |
	%236
	g'2 g'4 | g'4 g' g' | g'2.( | d'2) d'4 | d'2.^\fermata |
	%241
	\override Staff.TimeSignature #'stencil = ##f
	d'8 d'\breve d'8 d'2.^\fermata
	%242
	d'4 | << { d'4( g') } { s4.\< s8\! } >> g'4 | g'4\> g'\! g' | g'2.( | d'2)\> d'4\! | \once\override DynamicText #'X-offset = #-4 d'2.\p^\fermata |
}

tenNotes = {
	\global \clef "G_8"
	%1
	bes2_( ~ bes8[ a] | g8[\< a\! bes c']) d'([\> bes])\! | a2.( ~ | a8[\< bes\! c' d']) ees'([\> c'])\! |
	%5
	<< { bes2 } { s4\< s4\! } >> d'4 | g'4( f'8[ ees']) d'8([\> c'])\! | bes2 d'4 | c'4(\> bes a)\! | bes2. |
	%10
	bes2. | g8([\< a\! bes c']) d'([\> bes])\! | a2. | a8([\< bes])\! c'([ d'])\> ees'([ c'])\! |
	%14
	bes2 d'8 d' | g'4( f'8[ ees']) d'([\> c']) | bes4\! c' d' | c'4( bes) a | bes2( c'4) |
	
	%19
	\dtDown d'4.(^>\f c'8) bes([ c']) | d'4. bes8 a bes | a2 bes4 |
	%22
	a4. d'8 c'\> bes\! | a4\< bes8([ c']) d'([ ees'])\! | f'4 f' f' |
	%25
	g'4 g' g' | \hpHalfDown f'2(\> ees'4)\! | d'2 c'4 | bes4 bes c' | d'4(\< c') bes | c'4(\! b) \hpLeftDown c'\> | bes!4( d') <c' d'> | <bes d'>2.\!\fermata |
	
	%33
	\dtDown \hpHalfDown a4.\p\< a8 a a\! | bes2 a4 | d'2 bes4 |
	%36
	c'4( bes) a | d'2 d'4 | d'2\< d'4\! | c'4(^\markup{\small\italic "rit."} bes) bes8([\> a]) | a8\! r8
	%40
	a4^\markup{\small\italic "a tempo"} a8 a | bes4 bes bes | c'2\< c'4\! | bes2. |
	%44
	bes4\> bes ees'\! | d'4 d' c' | d'4 d'\p d' | c'2. | fis2\> fis4\! |
	
	%49
	g4\p g d' | d'2 d'4 | d'2 d'4 | d'2 d'4 | d'4 d'\< d' | d'2.\! |
	%55
	f'!4 f' f' | ees'4 ees' ees' | ees'2 ees'4 | d'2 r4 |
	%59
	c'4 c' c' | bes4 ees' d' | ees'2\> ees'4\! | d'2 d'4 | c'2 c'4\< | c'4 c'\!
	%65
	c'4 | c'4\f c' c' | c'4 c' c' | c'2 c'4 | \hpLeftDown c'2\> c'4 | c'2.\!^\fermata |
	
	%70
	<a d'>2\pp <a d'>4 | <a d'>2 <a d'>4 | <a d'>4 <a d'> \hpLeftDown <a d'>\< | \hpRightDown <a d'>2.\!^\fermata\> |
	%74
	r4\! <a e'>4\pp <a e'> | <a e'>2 <a e'>4 | <a e'>2 <a e'>4 |
	%77
	<a d'>4 <a d'> <a d'> | <a cis'>2 <a cis'>4 | <a d'>4 <a d'> <a d'> | <g d'>4 <a d'> <bes d'> | ees'2.\> | d'2\!( c'4) | bes2^\fermata
	
	%84
	bes4\mf | \key ees \major bes2. | ees'2. | d'4 d' d' | d'2\> d'4\! | ees'4 ees' ees' | ees'2. |
	%90
	f'4 ees' d' | ees'2 bes4 | c'4 c' c' | \hpLeftDown bes2.\> | bes2\!^\fermata
	%95
	ees'4\p | d'2 d'4 | ees'4 d' c' | b2 b4 | c'4( d') ees' | d'4 d' d' | ees'4 d' c' | b2.^\fermata |
	%102
	c'4\pp c' e' | f'4 e' f' | c'4 c' c' | c'4 e' f' | g'2. |
	%107
	f'4 e' f' | e'2. | f'4 f' ees'! | d'4 d' d' | c'4 c' c' | d'2 c'4 | d'4^> \hpLeftDown d'\> c' | <f bes>2.\!^\fermata |
	
	%115
	d'2.\pp | c'2. | bes4 bes bes | a2. | bes2 bes4 | c'2 c'4 | d'2. |
	%122
	bes2\pp bes4 | bes2. | g2\pp g4 | g4 g g | g2.^> | bes2 bes4 | bes2. |
	%129
	c'2 c'4 | bes2. | aes4 aes aes | g2. | \hpLeftDown g2\> f4 | ees2.\!^\fermata |
	
	%135
	g2.\pp | f2 f4 | g2. | aes2 aes4 | g4\< aes bes\! |
	%140
	bes2 d'4 | ees'2 bes4 | b2 b4 | c'4( d') ees' | b4(\> c') g4 | g2.\! |
	%146
	b4\p b b | c'4 b c' | d'2 d'4 | c'4 d' c' | b2 b4 | c'4( b) c' | d'2 d'4 | \hpLeftDown d'2\> c'4 | bes2.\!^\fermata |
	%155
	d'2.\p | << \context Voice = tenVoice { \voiceOne d'2 \oneVoice } \\ { d'4( c') } >> <bes d'>4 | <a c'>2 <a c'>4 | <g bes>2. |
	%159
	d'2 d'4 | << { d'2 } \\ \context Voice = tenVoice { \voiceTwo d'4( c') \oneVoice } >> <bes d'>4 | <a c'>2 <a c'>4\< | <g bes>2 <g bes>4\! |
	%163
	b2 d'4 | g'2 f'4 | ees'4( d') c' | bes4( a) bes | c'2\> c'4 | bes2.\! |
	%169
	a2\pp a4 | bes2 bes4 | <a c'>2 <a c'>4 | <g bes>2.^\fermata |
	
	\key g \minor
	%173
	R2. | R2. | g4.\p g8 g g | a4 a a | d'4 d' d' | d'4 d' c' | bes4 c' cis' | d'2 r4 |
	%181
	r4 d'4\mf d' | ees'2 ees'4 | d'2 d'4 | c'2 c'4 | b2 b4 | c'2\> c'8([\! d']) |
	%187
	d'4 bes! bes | bes2. | bes4 bes bes | bes4 bes b | c'4( d') ees' | << { d'2.( } { s4 s2\> } >> | c'2)\! c'4 | bes2.^\fermata |
	
	%195
	bes4.\p bes8 a8 a8 | d'4 d' c' | bes4 bes c' | d'4 d' ees' | d'2 d'4 |
	%200
	c'4 c' c' | c'4 c' c' | c'4 d' ees' | f'2( ees'4) | d'2. |
	%205
	d'2\f d'4 | c'4(\> bes) c'\! | d'2 r4 | r4 r4 c'4 | d'2 d'4 | c'4( bes) c' | d'2 r4 |
	%212
	r4 r4 <b d'>4 | ees'2. | d'2 d'4 | ees'2.\f |
	%216
	R2. | ees'2. | <d' f'>2. | << { <ees' g'>2. ~ <ees' g'>2 } { \dtDown \hpDown s2\ff\< s4\! \hpHalfDown s4\> s4\! } >> r4^\fermata |
	%221
	<a c'>2.\mf | <a d'>2. | <bes d'>2. | r4 r4 d'4\p | d'2 d'4 | b4 c' d' | ees'2. | c'4(\> d' ees' | d'2.\! ~ | d'4) d'4\> c'\! | bes2^\fermata
	
	%232
	a4\p | bes2( ~ bes8[ a]) | g8([ a]) bes([ c']) d'([ bes]) | a2. | a8([ bes]) c'([ d']) ees'([ c']) |
	%236
	bes2 d'4 | g'4 f'8([ ees']) d'([ c']) | bes2( d'4 | c' bes) a4 | bes2.^\fermata |
	%241
	\override Staff.TimeSignature #'stencil = ##f
	a8 a\breve a8 bes2.^\fermata
	%242
	a4 | << { bes2 } { s4.\< s8\! } >> d'4 | g'4\> f'8\!([ ees']) d'([ c']) | bes2( d'4 | c'4\> bes) a\! | \once\override DynamicText #'X-offset = #-4 bes2.\p^\fermata
}

basNotes = {
	\global \clef bass
	%1
	<g, g>2. | <g, g>2. | d2. | d2. |
	%5
	<g, g>2 bes,4 | c2 c4 | d2. ~ | << { d2. } { s2\> s4\! } >> | <g, g>2. |
	%10
	<g, g>2. | <g, g>2 <g, g>4 | d2. | d2. |
	%14
	<g, g>2 bes,4 | c2 c4 | d4 d d | d2 d4 | g2( a4) |
	
	%19
	\dtDown bes2\f bes,4 | bes,4. f8 ees d | c2 d8([ e]) |
	%22
	f4. f8 f\> c\! | f4\< f8([ ees]) d([ c])\! | bes,4 bes, bes, |
	%25
	ees4 g ees | f2(\> f,4)\! | bes,2 d4 | g4 g a | \hpDown bes4(\< a) g | ees4(\! d) \hpLeftDownExtra c\> | d2 d4 | <g, g>2.\!\fermata |
	
	%33
	d4.\p\< d8 d d\! | g2 d4 | bes2 g4 |
	%36
	d2 <c c'>4 | <bes, bes>4( <a, a>) <g, g> | <fis, fis>4(\< <g, g>) <f, f>\! | <e, e>2^\markup{\small\italic "rit."} <ees, ees>4\> | d8\! r8
	%40
	d4^\markup{\small\italic "a tempo"} d8 d | g4 g g | a2\< a4\! | bes2. |
	%44
	ees4\> ees ees\! | f4 f f | bes,4 bes,\p bes, | c2. | d2\> d4\! |
	
	%49
	g4\p g g | fis2 d4 | g2 g4 | a2 d4 | bes4 a\< g | d2.\! |
	%55
	b4 b b | c'4 c' c' | a2 a4 | bes2 r4 |
	%59
	f4 f ees | d4 c bes, | a,2\> a,4\! | bes,2 bes,4 | c2 c4\< | c4 c\!
	%65
	c4 | f4\f a f | c'4 c c | f4( a) f | \once\override Hairpin #'extra-offset = #'(-3 . -0.5)  c'2\> c4 | f2.\!^\fermata |
	
	%70
	d2\pp d4 | d2 d4 | d4 d \hpLeftDown d\< | \hpRightDown d2.\!^\fermata\> |
	%74
	r4\! cis4\pp cis | cis2 cis4 | cis2 cis4 |
	%77
	d4 d <f, f> | <a, a>2 <g, g>4 | <f, f>4 d c | bes,4 a, g, | c2.\> | d2.\! | <g, d>2^\fermata
	
	%84
	bes,4\mf | \key ees \major ees2. | g2. | f4 f f | aes2\> aes4\! | g4 ees g | bes2. |
	%90
	bes4 bes bes, | ees2 ees4 | c4 aes, aes, | \hpLeftDown bes,2.\> | ees2\!^\fermata
	%95
	c4\p | <g, g>2 <g, g>4 | <g, g>4 <g, g> <g, g> | <g, g>2 <g, g>4 | <g, g>2 <g, g>4 | <g, g>4 <g, g> <g, g> | <g, g>4 <g, g> <g, g> | <g, g>2.^\fermata |
	%102
	\once\override DynamicText #'extra-offset = #'(0 . -0.5) c'4\pp c' bes | aes4 g f | e4 e e | f4 g aes | bes2. |
	%107
	aes4 g f | c'2( bes4) | a4 a a | bes4 bes bes | f4 f f | bes,2 ees4 | f4^> \hpLeftDown f\> f | bes,2.\!\fermata
	
	%115
	bes2.\pp | f2. | g4 g g | d2. | g2 g4 | f2 f4 | bes,2. |
	%122
	ees2\pp ees4 | bes,2. | c2\pp c4 | g,4 g, g, | c2.^> | bes,2 bes,4 | ees2. |
	%129
	aes2 aes4 | ees2. | f4 f f | g2. | \hpLeftDown g,2\> g,4 | c2.\!^\fermata |
	
	%135
	\dtDown <ees, ees>2.\pp | bes,2 bes,4 | <ees, ees>2. | <f, f>2 bes,4 | \hpDown <g, g>4\< <f, f> <ees, ees>\! |
	%140
	d4( ees) f | ees2 ees4 | g2 g4 | <g, g>2 <g, g>4 | \hpHalfDown <g, g>2\> g,4 | c2.\! |
	%146
	\dtDown <g, g>2.\p | <g, g>2 <g, g>4 | <g, g>2. | <g, g>2  <g, g>4 | <g, g>2 <g, g>4 | <g, g>2 c4 | d2 d4 | \hpLeftDownExtra d2\> d4 | <g, g>2.\!^\fermata |
	%155
	d2.\p | d2 d4 | d2 d4 | g,2. |
	%159
	d2 d4 | d2 d4 | d2 \hpHalfDown d4\< | <g, g>2 <g, g>4\! |
	%163
	<g, g>2 b,4 | c2 d4 | ees4( bes,!) c | d2 d4 | \hpHalfDown d2\> d4 | <g, g>2.\! |
	%169
	c2\pp c4 | d2 d4 | d2 d4 | g,2.^\fermata |
	
	\key g \minor
	%173
	R2.*3 | d4.\p d8 d d | d'4 d' c' | bes4 bes a | g4 ees ees | d4 d'\mf c' |
	%181
	b4 b b | c'2 c'4 | b2 b4 | c'2 c'4 | g2 g4 | aes2\> aes4\! |
	%187
	g4 f f | ees2. | ees4 ees ees | bes, bes, g, | c2 c4 | << { d2. ~ } { s4 s2\> } >> | d2\! d4 | <g, g>2.^\fermata |
	
	%195
	g4.\p g8 fis fis | g4 g fis | g4 g f! | bes,4 bes, a, | bes,2 g4 |
	%200
	e4 e e | g4 g g | f4 f f | << { f2. } \\ \context Voice = basVoice { \voiceThree \slurDown f,4( g, a,) \oneVoice } >> | bes,2. |
	%205
	\dtDown bes2\f bes4 | \hpHalfDown a4(\> g) a\! | bes2 r4 | r4 r4 f4 | bes2 bes4 | a4( g) a | bes2 r4 |
	%212
	r4 r4 g4 | c'2. | b2 b4 | \dtDown c'2.\f |
	%216
	R2. | c'2. | bes2. | << { <ees bes>2. ~ <ees bes>2 } { \dtDown \hpDown s2\ff\< s4\! \hpHalfDown s4\> s4\! } >> r4^\fermata |
	%221
	d2.\mf | d2. | g2. | r4 r4 d4\p | g2 g4 | f4 ees d | c2. | \hpHalfDown ees4(\> d c | d2.\! ~ | d4) d\> d\! | <g, g>2^\fermata
	
	%232
	d4\p | <g, g>2. | <g, g>4 <g, g> g, | d2. | d4 d d |
	%236
	<g, g>2 bes,4 | c4 c c | d2. ~ | d2 d4 | <g, g>2.^\fermata |
	%241
	\override Staff.TimeSignature #'stencil = ##f
	d8 d\breve d8 <g, g>2.^\fermata
	%242
	d4 | << { g2 } { s4.\< s8\! } >> bes,4 | c4\> c\! c | d2. ~ | d2\> d4\! | \once\override DynamicText #'X-offset = #-4 \once\override DynamicText #'extra-offset = #'(0 . -1.5) <g, g>2.\p^\fermata
}

sopText = \lyricmode {
	Сла -- ва, сла -- ва, сла -- ва, сла -- ва въ~выш -- нихъ Бо -- гу,
	и на зем -- ли, на зем -- ли миръ, въ~че -- ло -- вѣ -- цѣхъ бла -- го -- во -- ле -- ні -- е.
	%19
	Хва -- лимъ Тя, бла -- го -- сло -- вимъ Тя, кла -- ня -- ем -- ти -- ся, сла -- во -- сло -- вимъ Тя,
	бла -- го -- да -- римъ __ Тя ве -- ли -- кі -- я ра -- ди сла -- вы Тво -- е -- я.
	%33
	Гос -- по -- ди Ца -- рю не -- бес -- ный, Бо -- же От -- че Все -- дер -- жи -- те -- лю,
	Гос -- по -- ди Сы -- не Е -- ди -- но -- род -- ный І -- и -- су -- се Хри -- сте и Свя -- тый Ду -- ше.
	%49
	Гос -- по -- ди Бо -- же, Аг -- нче Бо -- жій, Сы -- не О -- течь, взем -- ляй грѣхъ мі -- ра, по -- ми -- луй насъ:
	взем -- ляй грѣ -- хи мі -- ра, прі -- и -- ми мо -- лит -- ву на -- шу.
	Сѣ -- дяй о -- дес -- ну -- ю От -- ца, по -- ми -- луй насъ.
	%70
	Я -- ко Ты е -- си е -- динъ Свят; Ты е -- си е -- динъ Гос -- подь, І -- и -- сусъ Хри -- стосъ, въ~сла -- ву Бо -- га От -- ца. А -- минь.
	%84
	На всякъ день бла -- го -- сло -- влю Тя, и вос -- хва -- лю и -- мя Тво -- е во вѣкъ и въ~вѣкъ вѣ -- ка.
	Спо -- до -- би Гос -- по -- ди, въ~день сей безъ __ грѣ -- ха со хра -- ни -- ти -- ся намъ.
	Бла -- го -- сло -- венъ е -- си, Гос -- по -- ди Бо -- же о -- тецъ на -- шихъ, и хваль -- но и про -- слав -- ле -- но и -- мя Тво -- е во вѣ -- ки, а -- минь.
	%115
	Бу -- ди, Гос -- по -- ди, ми -- лость Тво -- я на насъ,
	я -- ко -- же, я -- ко -- же у -- по -- ва -- хомъ на Тя, у -- по -- ва -- хомъ, у -- по -- ва -- хомъ на Тя.
	%135
	Бла -- го -- сло -- венъ е -- си, Гос -- по -- ди на -- у -- чи мя, на -- у -- чи мя оп -- рав -- да -- ні -- емъ Тво -- имъ.
	Бла -- го -- сло -- венъ е -- си, Гос -- по -- ди на -- у -- чи мя оп -- рав -- да -- ні -- емъ Тво -- имъ.
	Бла -- го -- сло -- венъ е -- си, Гос -- по -- ди на -- у -- чи __ мя, на -- у -- чи мя, на -- у -- чи мя оп -- рав -- да -- ні -- емъ Тво -- имъ, оп -- рав -- да -- ні -- емъ Тво -- имъ.
	%173
	Гос -- по -- ди, при -- бѣ -- жи -- ще былъ е -- си намъ въ~родъ и родъ, въ~родъ __ и родъ.
	Азъ рѣхъ: Гос -- по -- ди, по -- ми -- луй мя, по -- ми -- луй мя,
	ис -- цѣ -- ли ду -- шу мо -- ю, я -- ко со -- грѣ -- шихъ, со -- грѣ -- шихъ Те -- бе.
	%195
	Гос -- по -- ди, къ~Те -- бѣ при -- бѣ -- гохъ, на -- у -- чи мя тво -- ри -- ти во -- лю Тво -- ю я -- ко Ты е -- си Богъ __ мой,
	я -- ко у __ Те -- бѣ ис -- точ -- никъ жи -- во -- та, __ во свѣ -- тѣ Тво -- емъ уз -- римъ свѣтъ, __
	уз -- римъ свѣтъ, про -- ба -- ви мил -- ость Тво -- ю вѣ -- ду -- щимъ Тя.
	%232
	Свя -- тый __ Бо -- же, Свя -- тый __ Крѣп -- кій, Свя -- тый __ Без -- смерт -- ный, по -- ми -- луй насъ.
	Слава Отцу__и__Сыну__и__Святому__Духу,__и__нынѣ__и__присно__и__во__вѣки__вѣковъ, а -- минь.
	Свя -- тый __ Без -- смерт -- ный, по -- ми -- луй насъ.
}

sopXLitText = \lyricmode {
	Sla -- va, sla -- va, sla -- va, sla -- va v~vɨš -- niḫ Bo -- ğu,
	i na zʲem -- lʲi, na zʲem -- lʲi mʲir, fče -- lo -- vʲe -- ʦʲeḫ bla -- ğo -- vo -- lʲe -- nʲi -- je.
	%19
	Ḫva -- lʲim Tja, bla -- ğo -- slo -- vʲim Tja, kla -- nja -- jem -- ti -- sja, sla -- vo -- slo -- vʲim Tja,
	bla -- ğo -- da -- rʲim __ Tja vʲe -- lʲi -- ki -- ja ra -- dʲi sla -- vɨ Tvo -- je -- ja.
	%33
	Ğos -- po -- dʲi Tsa -- rju nʲe -- bʲes -- nɨj, Bo -- že Ot -- če Fsʲe -- dʲer -- ži -- tʲe -- lju,
	Ğos -- po -- dʲi Sɨ -- nʲe Je -- dʲi -- no -- rod -- nɨj I -- ji -- su -- sʲe Ḫri -- stʲe i Svja -- tɨj Du -- še.
	%49
	Ğos -- po -- dʲi Bo -- že, Ağ -- nše Bo -- žɨj, Sɨ -- nʲe O -- teć, vzʲem -- ljaj ğrʲeḫ mʲi -- ra, po -- mʲi -- luj nas:
	vzʲem -- ljaj ğrʲe -- ḫi mʲi -- ra, prʲi -- i -- mʲi mo -- lʲit -- vu na -- šu.
	Sʲe -- djaj o -- dʲes -- nu -- ju Ot -- ʦa, po -- mʲi -- luj nas.
	%70
	Ja -- ko Tɨ je -- sʲi je -- dʲin Svjat; Tɨ je -- sʲi je -- dʲinʹ Ğos -- podʹ, I -- ji -- sus Ḫri -- stos, f~sla -- vu Bo -- ga Ot -- ʦa. A -- mʲinʹ.
	%84
	Na fsjak dʲenʹ bla -- ğo -- slo -- vlju Tja, i vos -- ḫva -- lju i -- mja Tvo -- je vo vʲek i v~vʲek vʲe -- ka.
	Spo -- do -- bʲi Ğos -- po -- dʲi, v~dʲenʹ sʲej bʲez __ ğrʲe -- ḫa so ḫra -- nʲi -- tʲi -- sja nam.
	Bla -- ğo -- slo -- vʲen je -- si, Ğos -- po -- dʲi Bo -- že o -- teʦ na -- šiḫ, i ḫvalʹ -- no i pro -- slav -- lʲe -- no i -- mja Tvo -- je vo vʲe -- ki, a -- mʲinʹ.
	%115
	Bu -- dʲi, Ğos -- po -- dʲi, mʲi -- lostʹ Tvo -- ja na nas,
	ja -- ko -- že, ja -- ko -- že u -- po -- va -- ḫom na Tja, u -- po -- va -- ḫom, u -- po -- va -- ḫom na Tja.
	%135
	Bla -- ğo -- slo -- vʲen je -- si, Ğos -- po -- dʲi na -- u -- či mja, na -- u -- či mja op -- rav -- da -- nʲi -- jem Tvo -- jim.
	Bla -- ğo -- slo -- vʲen je -- si, Ğos -- po -- dʲi na -- u -- či mja op -- rav -- da -- nʲi -- jem Tvo -- jim.
	Bla -- ğo -- slo -- vʲen je -- si, Ğos -- po -- dʲi na -- u -- či __ mja, na -- u -- či mja, na -- u -- či mja op -- rav -- da -- nʲi -- jem Tvo -- jim, op -- rav -- da -- nʲi -- jem Tvo -- jim.
	%173
	Ğos -- po -- dʲi, prʲi -- bʲe -- žiš -- če bɨl je -- si nam v~rod i rod, v~rod __ i rod.
	Az rʲeḫ: Ğos -- po -- dʲi, po -- mʲi -- luj mja, po -- mʲi -- luj mja,
	is -- ʦe -- lʲi du -- šu mo -- ju, ja -- ko so -- ğrʲe -- šiḫ, so -- ğrʲe -- šiḫ Tʲe -- bʲe.
	%195
	Ğos -- po -- dʲi, k~Tʲe -- bʲe prʲi -- bʲe -- ğoḫ, na -- u -- či mja tvo -- rʲi -- tʲi vo -- lju Tvo -- ju ja -- ko Tɨ je -- si Boğ __ moj,
	ja -- ko u __ Tʲe -- bʲe jis -- toč -- nik ži -- vo -- ta, __ vo svʲe -- tʲe Tvo -- jem uz -- rim svʲet, __
	uz -- rʲim svʲet, pro -- ba -- vʲi mʲil -- ostʹ Tvo -- ju vʲe -- duš -- čim Tja.
	%232
	Svja -- tɨj __ Bo -- že, Svja -- tɨj __ Krʲep -- kij, Svja -- tɨj __ Bʲez -- smʲert -- nɨj, po -- mʲi -- luj nas.
	Slava Otʦu___i__Sɨnu___i__Svjatomu__Duḫu,___i__nɨnʲe___i__prʲisno___i__vo__vʲeki__vʲekov, a -- mʲinʹ.
	Svja -- tɨj __ Bʲez -- smʲert -- nɨj, po -- mʲi -- luj nas.
}

altText = \lyricmode {
	Сла -- ва, сла -- ва, сла -- ва, сла -- ва въ~выш -- нихъ Бо -- гу,
	и на зем -- ли, на зем -- ли миръ, въ~че -- ло -- вѣ -- цѣхъ бла -- го -- во -- ле -- ні -- е.
	%19
	Хва -- лимъ Тя, бла -- го -- сло -- вимъ Тя, кла -- ня -- ем -- ти -- ся, сла -- во -- сло -- вимъ Тя,
	бла -- го -- да -- римъ __ Тя ве -- ли -- кі -- я ра -- ди сла -- вы Тво -- е -- я.
	%33
	Гос -- по -- ди Ца -- рю не -- бес -- ный, Бо -- же От -- че Все -- дер -- жи -- те -- лю,
	Гос -- по -- ди Сы -- не Е -- ди -- но -- род -- ный І -- и -- су -- се Хри -- сте и Свя -- тый Ду -- ше.
	%49
	Гос -- по -- ди Бо -- же, Аг -- нче Бо -- жій, Сы -- не О -- течь, взем -- ляй грѣхъ мі -- ра, по -- ми -- луй насъ:
	взем -- ляй грѣ -- хи мі -- ра, прі -- и -- ми мо -- лит -- ву на -- шу.
	Сѣ -- дяй о -- дес -- ну -- ю От -- ца, по -- ми -- луй насъ.
	%70
	Я -- ко Ты е -- си е -- динъ Свят; Ты е -- си е -- динъ Гос -- подь, І -- и -- сусъ Хри -- стосъ, въ~сла -- ву Бо -- га От -- ца. А -- минь.
	%84
	На всякъ день бла -- го -- сло -- влю Тя, и вос -- хва -- лю и -- мя Тво -- е во вѣкъ и въ~вѣкъ вѣ -- ка.
	Спо -- до -- би Гос -- по -- ди, въ~день сей безъ __ грѣ -- ха со хра -- ни -- ти -- ся намъ.
	Бла -- го -- сло -- венъ е -- си, Гос -- по -- ди Бо -- же о -- тецъ на -- шихъ, и хваль -- но и про -- слав -- ле -- но и -- мя Тво -- е во вѣ -- ки, а -- минь.
	%115
	Бу -- ди, __ Гос -- по -- ди, ми -- лость Тво -- я на насъ,
	я -- ко -- же, я -- ко -- же у -- по -- ва -- хомъ на Тя, у -- по -- ва -- хомъ, у -- по -- ва -- хомъ на Тя.
	%135
	Бла -- го -- сло -- венъ е -- си, Гос -- по -- ди на -- у -- чи мя оп -- рав -- да -- ні -- емъ Тво -- имъ.
	Бла -- го -- сло -- венъ е -- си, Гос -- по -- ди на -- у -- чи мя оп -- рав -- да -- ні -- емъ Тво -- имъ.
	Бла -- го -- сло -- венъ е -- си, Гос -- по -- ди на -- у -- чи __ мя, на -- у -- чи мя, на -- у -- чи мя оп -- рав -- да -- ні -- емъ Тво -- имъ, оп -- рав -- да -- ні -- емъ Тво -- имъ.
	%173
	Гос -- по -- ди, при -- бѣ -- жи -- ще, Гос -- по -- ди, при -- бѣ -- жи -- ще былъ е -- си намъ въ~родъ и родъ.
	Азъ рѣхъ: Гос -- по -- ди, по -- ми -- луй мя, по -- ми -- луй мя,
	ис -- цѣ -- ли ду -- шу мо -- ю, я -- ко со -- грѣ -- шихъ __ Те -- бе.
	%195
	Гос -- по -- ди, къ~Те -- бѣ при -- бѣ -- гохъ, на -- у -- чи мя тво -- ри -- ти во -- лю Тво -- ю я -- ко Ты е -- си Богъ мой,
	я -- ко у Те -- бѣ ис -- точ -- ник жи -- во -- та, __ во свѣ -- тѣ Тво -- емъ уз -- римъ свѣтъ, __
	уз -- римъ свѣтъ, про -- ба -- ви мил -- ость Тво -- ю вѣ -- ду -- щимъ Тя.
	%232
	Свя -- тый Бо -- же, Свя -- тый Крѣп -- кій, Свя -- тый Без -- смерт -- ный, по -- ми -- луй насъ.
	Слава Отцу__и__Сыну__и__Святому__Духу,__и__нынѣ__и__присно__и__во__вѣки__вѣковъ, а -- минь.
	Свя -- тый __ Без -- смерт -- ный, по -- ми -- луй насъ.
}

altXLitText = \lyricmode {
	Sla -- va, sla -- va, sla -- va, sla -- va v~vɨš -- niḫ Bo -- ğu,
	i na zʲem -- lʲi, na zʲem -- lʲi mʲir, fče -- lo -- vʲe -- ʦʲeḫ bla -- ğo -- vo -- lʲe -- nʲi -- je.
	%19
	Ḫva -- lʲim Tja, bla -- ğo -- slo -- vʲim Tja, kla -- nja -- jem -- ti -- sja, sla -- vo -- slo -- vʲim Tja,
	bla -- ğo -- da -- rʲim __ Tja vʲe -- lʲi -- ki -- ja ra -- dʲi sla -- vɨ Tvo -- je -- ja.
	%33
	Ğos -- po -- dʲi Tsa -- rju nʲe -- bʲes -- nɨj, Bo -- že Ot -- če Fsʲe -- dʲer -- ži -- tʲe -- lju,
	Ğos -- po -- dʲi Sɨ -- nʲe Je -- dʲi -- no -- rod -- nɨj I -- ji -- su -- sʲe Ḫri -- stʲe i Svja -- tɨj Du -- še.
	%49
	Ğos -- po -- dʲi Bo -- že, Ağ -- nše Bo -- žɨj, Sɨ -- nʲe O -- teć, vzʲem -- ljaj ğrʲeḫ mʲi -- ra, po -- mʲi -- luj nas:
	vzʲem -- ljaj ğrʲe -- ḫi mʲi -- ra, prʲi -- i -- mʲi mo -- lʲit -- vu na -- šu.
	Sʲe -- djaj o -- dʲes -- nu -- ju Ot -- ʦa, po -- mʲi -- luj nas.
	%70
	Ja -- ko Tɨ je -- sʲi je -- dʲin Svjat; Tɨ je -- sʲi je -- dʲinʹ Ğos -- podʹ, I -- ji -- sus Ḫri -- stos, f~sla -- vu Bo -- ga Ot -- ʦa. A -- mʲinʹ.
	%84
	Na fsjak dʲenʹ bla -- ğo -- slo -- vlju Tja, i vos -- ḫva -- lju i -- mja Tvo -- je vo vʲek i v~vʲek vʲe -- ka.
	Spo -- do -- bʲi Ğos -- po -- dʲi, v~dʲenʹ sʲej bʲez __ ğrʲe -- ḫa so ḫra -- nʲi -- tʲi -- sja nam.
	Bla -- ğo -- slo -- vʲen je -- si, Ğos -- po -- dʲi Bo -- že o -- teʦ na -- šiḫ, i ḫvalʹ -- no i pro -- slav -- lʲe -- no i -- mja Tvo -- je vo vʲe -- ki, a -- mʲinʹ.
	%115
	Bu -- dʲi, Ğos -- po -- dʲi, mʲi -- lostʹ Tvo -- ja na nas,
	ja -- ko -- že, ja -- ko -- že u -- po -- va -- ḫom na Tja, u -- po -- va -- ḫom, u -- po -- va -- ḫom na Tja.
	%135
	Bla -- ğo -- slo -- vʲen je -- si, Ğos -- po -- dʲi na -- u -- či mja, op -- rav -- da -- nʲi -- jem Tvo -- jim.
	Bla -- ğo -- slo -- vʲen je -- si, Ğos -- po -- dʲi na -- u -- či mja op -- rav -- da -- nʲi -- jem Tvo -- jim.
	Bla -- ğo -- slo -- vʲen je -- si, Ğos -- po -- dʲi na -- u -- či __ mja, na -- u -- či mja, na -- u -- či mja op -- rav -- da -- nʲi -- jem Tvo -- jim, op -- rav -- da -- nʲi -- jem Tvo -- jim.
	%173
	Ğos -- po -- dʲi, prʲi -- bʲe -- žiš -- če, Ğos -- po -- dʲi, prʲi -- bʲe -- žiš -- če bɨl je -- si nam v~rod i rod.
	Az rʲeḫ: Ğos -- po -- dʲi, po -- mʲi -- luj mja, po -- mʲi -- luj mja,
	is -- ʦe -- lʲi du -- šu mo -- ju, ja -- ko so -- ğrʲe -- šiḫ __ Tʲe -- bʲe.
	%195
	Ğos -- po -- dʲi, k~Tʲe -- bʲe prʲi -- bʲe -- ğoḫ, na -- u -- či mja tvo -- rʲi -- tʲi vo -- lju Tvo -- ju ja -- ko Tɨ je -- si Boğ moj,
	ja -- ko u Tʲe -- bʲe jis -- toč -- nik ži -- vo -- ta, __ vo svʲe -- tʲe Tvo -- jem uz -- rim svʲet, __
	uz -- rʲim svʲet, pro -- ba -- vʲi mʲil -- ostʹ Tvo -- ju vʲe -- duš -- čim Tja.
	%232
	Svja -- tɨj Bo -- že, Svja -- tɨj Krʲep -- kij, Svja -- tɨj Bʲez -- smʲert -- nɨj, po -- mʲi -- luj nas.
	Slava Otʦu___i__Sɨnu___i__Svjatomu__Duḫu,___i__nɨnʲe___i__prʲisno___i__vo__vʲeki__vʲekov, a -- mʲinʹ.
	Svja -- tɨj Bʲez -- smʲert -- nɨj, po -- mʲi -- luj nas.

}

tenText = \lyricmode {
	Сла -- ва, сла -- ва,
	сла -- ва, сла -- ва въ~выш -- нихъ Бо -- гу,
	и на зем -- ли, на зем -- ли
	миръ, въ~че -- ло -- вѣ -- цѣхъ бла -- го -- во -- ле -- ні -- е. __
	%19
	Хва -- лимъ Тя, бла -- го -- сло -- вимъ Тя,
	кла -- ня -- ем -- ти -- ся, сла -- во -- сло -- вимъ Тя,
	бла -- го -- да -- римъ __ Тя ве -- ли -- кі -- я ра -- ди сла -- вы Тво -- е -- я.
	%33
	Гос -- по -- ди Ца -- рю не -- бес -- ный,
	Бо -- же От -- че Все -- дер -- жи -- те -- лю,
	Гос -- по -- ди Сы -- не Е -- ди -- но -- род --
	ный І -- и -- су -- се Хри -- сте и Свя -- тый Ду -- ше.
	%49
	Гос -- по -- ди Бо -- же, Аг -- нче Бо -- жій, Сы -- не О -- течь,
	взем -- ляй грѣхъ мі -- ра, по -- ми -- луй насъ:
	взем -- ляй грѣ -- хи мі -- ра, прі -- и -- ми мо -- лит -- ву на -- шу.
	Сѣ -- дяй о -- дес -- ну -- ю От -- ца, по -- ми -- луй насъ.
	%70
	Я -- ко Ты е -- си е -- динъ Свят;
	Ты е -- си е -- динъ Гос --
	подь, І -- и -- сусъ Хри -- стосъ, въ~сла -- ву Бо -- га От -- ца. А -- минь.
	%84
	На всякъ день бла -- го -- сло -- влю Тя, и вос -- хва -- лю
	и -- мя Тво -- е во вѣкъ и въ~вѣкъ вѣ -- ка.
	Спо -- до -- би Гос -- по -- ди, въ~день сей безъ __ грѣ -- ха со хра -- ни -- ти -- ся намъ.
	Бла -- го -- сло -- венъ е -- си, Гос -- по -- ди Бо -- же о -- тецъ
	на -- шихъ, и хваль -- но и про -- слав -- ле -- но и -- мя Тво -- е во вѣ -- ки, а -- минь.
	%115
	Бу -- ди, Гос -- по -- ди, ми -- лость Тво -- я на насъ,
	я -- ко -- же, я -- ко -- же у -- по -- ва -- хомъ на Тя,
	у -- по -- ва -- хомъ, у -- по -- ва -- хомъ на Тя.
	%135
	Бла -- го -- сло -- венъ е -- си, Гос -- по -- ди на -- у -- чи мя оп -- рав -- да -- ні -- емъ Тво -- имъ.
	Бла -- го -- сло -- венъ е -- си, Гос -- по -- ди на -- у -- чи мя оп -- рав -- да -- ні -- емъ Тво -- имъ.
	Бла -- го -- сло -- венъ е -- си, на -- у -- \once\override LyricText #'self-alignment-X = #LEFT чи __ мя, на -- у -- чи мя, на -- у -- чи мя оп -- рав -- да -- ні -- емъ Тво -- имъ, оп -- рав -- да -- ні -- емъ Тво -- имъ.
	%173
	Гос -- по -- ди, при -- бѣ -- жи -- ще былъ е -- си намъ въ~родъ и родъ, въ~родъ и родъ.
	Азъ рѣхъ: Гос -- по -- ди, по -- ми -- луй мя, по -- ми -- луй
	мя, ис -- цѣ -- ли ду -- шу мо -- ю, я -- ко со -- грѣ -- шихъ __ Те -- бе.
	%195
	Гос -- по -- ди, къ~Те -- бѣ при -- бѣ -- гохъ, на -- у -- чи мя тво -- ри -- ти
	во -- лю Тво -- ю я -- ко Ты е -- си Богъ __ мой,
	я -- ко у Те -- бѣ ис -- точ -- ник жи -- во -- та,
	во свѣ -- тѣ Тво -- емъ
	уз -- римъ свѣтъ, __
	уз -- римъ свѣтъ, про -- ба -- ви мил -- ость Тво -- ю вѣ -- ду -- щимъ Тя.
	%232
	Свя -- тый __ Бо -- же, Свя -- тый Крѣп -- кій, Свя --
	тый Без -- смерт -- ный, по -- ми -- луй насъ.
	Слава Отцу__и__Сыну__и__Святому__Духу,__и__нынѣ__и__присно__и__во__вѣки__вѣковъ, а -- минь.
	Свя -- тый Без -- смерт -- ный, по -- ми -- луй насъ.
}

tenXLitText = \lyricmode {
	Sla -- va, sla -- va, sla -- va, sla -- va v~vɨš -- niḫ Bo -- ğu,
	i na zʲem -- lʲi, na zʲem -- lʲi mʲir, fče -- lo -- vʲe -- ʦʲeḫ bla -- ğo -- vo -- lʲe -- nʲi -- je. __
	%19
	Ḫva -- lʲim Tja, bla -- ğo -- slo -- vʲim Tja, kla -- nja -- jem -- ti -- sja, sla -- vo -- slo -- vʲim Tja,
	bla -- ğo -- da -- rʲim __ Tja vʲe -- lʲi -- ki -- ja ra -- dʲi sla -- vɨ Tvo -- je -- ja.
	%33
	Ğos -- po -- dʲi Tsa -- rju nʲe -- bʲes -- nɨj, Bo -- že Ot -- če Fsʲe -- dʲer -- ži -- tʲe -- lju,
	Ğos -- po -- dʲi Sɨ -- nʲe Je -- dʲi -- no -- rod -- nɨj I -- ji -- su -- sʲe Ḫri -- stʲe i Svja -- tɨj Du -- še.
	%49
	Ğos -- po -- dʲi Bo -- že, Ağ -- nše Bo -- žɨj, Sɨ -- nʲe O -- teć, vzʲem -- ljaj ğrʲeḫ mʲi -- ra, po -- mʲi -- luj nas:
	vzʲem -- ljaj ğrʲe -- ḫi mʲi -- ra, prʲi -- i -- mʲi mo -- lʲit -- vu na -- šu.
	Sʲe -- djaj o -- dʲes -- nu -- ju Ot -- ʦa, po -- mʲi -- luj nas.
	%70
	Ja -- ko Tɨ je -- sʲi je -- dʲin Svjat; Tɨ je -- sʲi je -- dʲinʹ Ğos -- podʹ, I -- ji -- sus Ḫri -- stos, f~sla -- vu Bo -- ga Ot -- ʦa. A -- mʲinʹ.
	%84
	Na fsjak dʲenʹ bla -- ğo -- slo -- vlju Tja, i vos -- ḫva -- lju i -- mja Tvo -- je vo vʲek i v~vʲek vʲe -- ka.
	Spo -- do -- bʲi Ğos -- po -- dʲi, v~dʲenʹ sʲej bʲez __ ğrʲe -- ḫa so ḫra -- nʲi -- tʲi -- sja nam.
	Bla -- ğo -- slo -- vʲen je -- si, Ğos -- po -- dʲi Bo -- že o -- teʦ na -- šiḫ, i ḫvalʹ -- no i pro -- slav -- lʲe -- no i -- mja Tvo -- je vo vʲe -- ki, a -- mʲinʹ.
	%115
	Bu -- dʲi, Ğos -- po -- dʲi, mʲi -- lostʹ Tvo -- ja na nas,
	ja -- ko -- že, ja -- ko -- že u -- po -- va -- ḫom na Tja, u -- po -- va -- ḫom, u -- po -- va -- ḫom na Tja.
	%135
	Bla -- ğo -- slo -- vʲen je -- si, Ğos -- po -- dʲi na -- u -- či mja, op -- rav -- da -- nʲi -- jem Tvo -- jim.
	Bla -- ğo -- slo -- vʲen je -- si, Ğos -- po -- dʲi na -- u -- či mja op -- rav -- da -- nʲi -- jem Tvo -- jim.
	Bla -- ğo -- slo -- vʲen je -- si, na -- u -- \once\override LyricText #'self-alignment-X = #LEFT či __ mja, na -- u -- či mja, na -- u -- či mja op -- rav -- da -- nʲi -- jem Tvo -- jim, op -- rav -- da -- nʲi -- jem Tvo -- jim.
	%173
	Ğos -- po -- dʲi, prʲi -- bʲe -- žiš -- če bɨl je -- si nam v~rod i rod, v~rod i rod.
	Az rʲeḫ: Ğos -- po -- dʲi, po -- mʲi -- luj mja, po -- mʲi -- luj mja,
	is -- ʦe -- lʲi du -- šu mo -- ju, ja -- ko so -- ğrʲe -- šiḫ __ Tʲe -- bʲe.
	%195
	Ğos -- po -- dʲi, k~Tʲe -- bʲe prʲi -- bʲe -- ğoḫ, na -- u -- či mja tvo -- rʲi -- tʲi vo -- lju Tvo -- ju ja -- ko Tɨ je -- si Boğ __ moj,
	ja -- ko u Tʲe -- bʲe jis -- toč -- nik ži -- vo -- ta, vo svʲe -- tʲe Tvo -- jem uz -- rim svʲet, __
	uz -- rʲim svʲet, pro -- ba -- vʲi mʲil -- ostʹ Tvo -- ju vʲe -- duš -- čim Tja.
	%232
	Svja -- tɨj __ Bo -- že, Svja -- tɨj Krʲep -- kij, Svja -- tɨj Bʲez -- smʲert -- nɨj, po -- mʲi -- luj nas.
	Slava Otʦu___i__Sɨnu___i__Svjatomu__Duḫu,___i__nɨnʲe___i__prʲisno___i__vo__vʲeki__vʲekov, a -- mʲinʹ.
	Svja -- tɨj Bʲez -- smʲert -- nɨj, po -- mʲi -- luj nas.

}

basText = \lyricmode {
	Сла -- ва, сла -- ва,
	сла -- ва въ~выш -- нихъ Бо -- гу,
	и на зем -- ли миръ,
	въ~че -- ло -- вѣ -- цѣхъ бла -- го -- во -- ле -- ні -- е. __
	%19
	Хва -- лимъ Тя, бла -- го -- сло -- вимъ Тя,
	кла -- ня -- ем -- ти -- ся, сла -- во -- сло -- вимъ Тя,
	бла -- го -- да -- римъ __ Тя ве -- ли -- кі -- я ра -- ди сла -- вы Тво -- е -- я.
	%33
	Гос -- по -- ди Ца -- рю не -- бес -- ный,
	Бо -- же От -- че Все -- дер -- жи -- те -- лю,
	Гос -- по -- ди Сы -- не Е -- ди -- но -- род --
	ный І -- и -- су -- се Хри -- сте и Свя -- тый Ду -- ше.
	%49
	Гос -- по -- ди Бо -- же, Аг -- нче Бо -- жій, Сы -- не О -- течь,
	взем -- ляй грѣхъ мі -- ра, по -- ми -- луй насъ:
	взем -- ляй грѣ -- хи мі -- ра, прі -- и -- ми мо -- лит -- ву на -- шу.
	Сѣ -- дяй о -- дес -- ну -- ю От -- ца, __ по -- ми -- луй насъ.
	%70
	Я -- ко Ты е -- си е -- динъ Свят;
	Ты е -- си е -- динъ Гос --
	подь, І -- и -- сусъ Хри -- стосъ, въ~сла -- ву Бо -- га От -- ца. А -- минь.
	%84
	На всякъ день бла -- го -- сло -- влю Тя, и вос -- хва -- лю
	и -- мя Тво -- е во вѣкъ и въ~вѣкъ вѣ -- ка.
	Спо -- до -- би Гос -- по -- ди, въ~день сей безъ грѣ -- ха со хра -- ни -- ти -- ся намъ.
	Бла -- го -- сло -- венъ е -- си, Гос -- по -- ди Бо -- же о -- тецъ
	на -- шихъ, и хваль -- но и про -- слав -- ле -- но и -- мя Тво -- е во вѣ -- ки, а -- минь.
	%115
	Бу -- ди, Гос -- по -- ди, ми -- лость Тво -- я на насъ,
	я -- ко -- же, я -- ко -- же у -- по -- ва -- хомъ на Тя,
	у -- по -- ва -- хомъ, у -- по -- ва -- хомъ на Тя.
	%135
	Бла -- го -- сло -- венъ е -- си, Гос -- по -- ди
	на -- у -- чи мя оп -- рав -- да -- ні -- емъ Тво -- имъ.
	Бла -- го -- сло -- венъ, на -- у -- чи мя оп -- рав -- да -- ні -- емъ Тво -- имъ.
	Бла -- го -- сло -- венъ е -- си,
	на -- у -- чи мя, на -- у -- чи мя,
	на -- у -- чи мя оп -- рав -- да -- ні -- емъ Тво -- имъ,
	оп -- рав -- да -- ні -- емъ Тво -- имъ.
	%173
	Гос -- по -- ди, при -- бѣ -- жи -- ще былъ е -- си намъ въ~родъ и родъ. Азъ рѣхъ:
	Гос -- по -- ди, Гос -- по -- ди, по -- ми -- луй мя, по -- ми -- луй
	мя, ис -- цѣ -- ли ду -- шу мо -- ю, я -- ко со -- грѣ -- шихъ __ Те -- бе.
	%195
	Гос -- по -- ди, къ~Те -- бѣ при -- бѣ -- гохъ, на -- у -- чи мя тво -- ри -- ти
	во -- лю Тво -- ю я -- ко Ты е -- си Богъ __ мой,
	я -- ко у Те -- бѣ ис -- точ -- ник жи -- во -- та,
	во свѣ -- тѣ Тво -- емъ
	уз -- римъ свѣтъ, __
	уз -- римъ свѣтъ, про -- ба -- ви мил -- ость Тво -- ю вѣ -- ду -- щимъ Тя.
	%232
	Свя -- тый Бо -- же, Свя -- тый Крѣп -- кій, Свя -- тый Без -- смерт -- ный, по -- ми -- луй насъ.
	Слава Отцу__и__Сыну__и__Святому__Духу,__и__нынѣ__и__присно__и__во__вѣки__вѣковъ, а -- минь.
	Свя -- тый Без -- смерт -- ный, по -- ми -- луй насъ.
}


basXLitText = \lyricmode {
	Sla -- va, sla -- va, sla -- va v~vɨš -- niḫ Bo -- ğu,
	i na zʲem -- lʲi mʲir, fče -- lo -- vʲe -- ʦʲeḫ bla -- ğo -- vo -- lʲe -- nʲi -- je. __
	%19
	Ḫva -- lʲim Tja, bla -- ğo -- slo -- vʲim Tja, kla -- nja -- jem -- ti -- sja, sla -- vo -- slo -- vʲim Tja,
	bla -- ğo -- da -- rʲim __ Tja vʲe -- lʲi -- ki -- ja ra -- dʲi sla -- vɨ Tvo -- je -- ja.
	%33
	Ğos -- po -- dʲi Tsa -- rju nʲe -- bʲes -- nɨj, Bo -- že Ot -- če Fsʲe -- dʲer -- ži -- tʲe -- lju,
	Ğos -- po -- dʲi Sɨ -- nʲe Je -- dʲi -- no -- rod -- nɨj I -- ji -- su -- sʲe Ḫri -- stʲe i Svja -- tɨj Du -- še.
	%49
	Ğos -- po -- dʲi Bo -- že, Ağ -- nše Bo -- žɨj, Sɨ -- nʲe O -- teć, vzʲem -- ljaj ğrʲeḫ mʲi -- ra, po -- mʲi -- luj nas:
	vzʲem -- ljaj ğrʲe -- ḫi mʲi -- ra, prʲi -- i -- mʲi mo -- lʲit -- vu na -- šu.
	Sʲe -- djaj o -- dʲes -- nu -- ju Ot -- ʦa, po -- mʲi -- luj nas.
	%70
	Ja -- ko Tɨ je -- sʲi je -- dʲin Svjat; Tɨ je -- sʲi je -- dʲinʹ Ğos -- podʹ, I -- ji -- sus Ḫri -- stos, f~sla -- vu Bo -- ga Ot -- ʦa. A -- mʲinʹ.
	%84
	Na fsjak dʲenʹ bla -- ğo -- slo -- vlju Tja, i vos -- ḫva -- lju i -- mja Tvo -- je vo vʲek i v~vʲek vʲe -- ka.
	Spo -- do -- bʲi Ğos -- po -- dʲi, v~dʲenʹ sʲej bʲez ğrʲe -- ḫa so ḫra -- nʲi -- tʲi -- sja nam.
	Bla -- ğo -- slo -- vʲen je -- si, Ğos -- po -- dʲi Bo -- že o -- teʦ na -- šiḫ, i ḫvalʹ -- no i pro -- slav -- lʲe -- no i -- mja Tvo -- je vo vʲe -- ki, a -- mʲinʹ.
	%115
	Bu -- dʲi, Ğos -- po -- dʲi, mʲi -- lostʹ Tvo -- ja na nas,
	ja -- ko -- že, ja -- ko -- že u -- po -- va -- ḫom na Tja, u -- po -- va -- ḫom, u -- po -- va -- ḫom na Tja.
	%135
	Bla -- ğo -- slo -- vʲen je -- si, Ğos -- po -- dʲi na -- u -- či mja, op -- rav -- da -- nʲi -- jem Tvo -- jim.
	Bla -- ğo -- slo -- vʲen, na -- u -- či mja op -- rav -- da -- nʲi -- jem Tvo -- jim.
	Bla -- ğo -- slo -- vʲen je -- si, na -- u -- či mja, na -- u -- či mja, na -- u -- či mja op -- rav -- da -- nʲi -- jem Tvo -- jim, op -- rav -- da -- nʲi -- jem Tvo -- jim.
	%173
	Ğos -- po -- dʲi, prʲi -- bʲe -- žiš -- če bɨl je -- si nam v~rod i rod.
	Az rʲeḫ: Ğos -- po -- dʲi, Ğos -- po -- dʲi, po -- mʲi -- luj mja, po -- mʲi -- luj mja,
	is -- ʦe -- lʲi du -- šu mo -- ju, ja -- ko so -- ğrʲe -- šiḫ __ Tʲe -- bʲe.
	%195
	Ğos -- po -- dʲi, k~Tʲe -- bʲe prʲi -- bʲe -- ğoḫ, na -- u -- či mja tvo -- rʲi -- tʲi vo -- lju Tvo -- ju ja -- ko Tɨ je -- si Boğ __ moj,
	ja -- ko u Tʲe -- bʲe jis -- toč -- nik ži -- vo -- ta, vo svʲe -- tʲe Tvo -- jem uz -- rim svʲet, __
	uz -- rʲim svʲet, pro -- ba -- vʲi mʲil -- ostʹ Tvo -- ju vʲe -- duš -- čim Tja.
	%232
	Svja -- tɨj Bo -- že, Svja -- tɨj Krʲep -- kij, Svja -- tɨj Bʲez -- smʲert -- nɨj, po -- mʲi -- luj nas.
	Slava Otʦu___i__Sɨnu___i__Svjatomu__Duḫu,___i__nɨnʲe___i__prʲisno___i__vo__vʲeki__vʲekov, a -- mʲinʹ.
	Svja -- tɨj Bʲez -- smʲert -- nɨj, po -- mʲi -- luj nas.
}

\score {
	<<
		\new ChoirStaff
		<<
			\new Staff { \set Staff.instrumentName = "S" \new Voice = sopVoice \sopNotes }
			\new Lyrics \lyricsto sopVoice \sopText
			\new Lyrics \lyricsto sopVoice \sopXLitText
			\new Staff { \set Staff.instrumentName = "A" \new Voice = altVoice \altNotes }
			\new Lyrics \lyricsto altVoice \altText
			\new Lyrics \lyricsto altVoice \altXLitText
			\new Staff { \set Staff.instrumentName = "T" \new Voice = tenVoice \tenNotes }
			\new Lyrics \lyricsto tenVoice \tenText
			\new Lyrics \lyricsto tenVoice \tenXLitText
			\new Staff { \set Staff.instrumentName = "B" \new Voice = basVoice \basNotes }
			\new Lyrics \lyricsto basVoice \basText
			\new Lyrics \lyricsto basVoice \basXLitText
		>>
	>>
	
	\layout {
		system-count = 36
		\context {
			\Score
			\override NonMusicalPaperColumn #'line-break-system-details = #'((alignment-offsets . (
				  0    -5.5  -8
				-15.5 -21   -23.5
				-31   -36.5 -39
				-46.5 -52   -54.5
			)))
		}
		\context {
			\Voice
			\override Hairpin #'to-barline = ##f
			\override DynamicText #'X-offset = #-2
		}
	}
}
%{
\score {
	<<
	\new Staff {
		\set Staff.midiInstrument = "oboe"
		\new Voice { \sopNotes }
	}
	\new Staff {
		\set Staff.midiInstrument = "english horn"
		\new Voice { \altNotes }
	}
	\new Staff {
		\set Staff.midiInstrument = "viola"
		\new Voice { \tenNotes }
	}
	\new Staff {
		\set Staff.midiInstrument = "cello"
		\new Voice { \basNotes }
	}
	>>
	\midi {
		\context { \Score tempoWholesPerMinute = #(ly:make-moment 100 4) }
		\context { \Voice \remove Dynamic_performer }
	}
}
%}
