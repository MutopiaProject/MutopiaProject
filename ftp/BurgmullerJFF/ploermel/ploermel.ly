\version "2.10.20"
\header {
	title = "EL PERDÓN DE PLOËRMEL"
	subtitle = "Gran vals de salón sobre el tema de Meyerbeer"
	composer = "F. BURGMÜLLER"
	piece = "INTRODUCCIÓN"
	%copyright = "Calcografía de B. ESLAVA, c. 1870"
	% Mutopia headers
	mutopiatitle = "EL PERDÓN DE PLOËRMEL"
	mutopiacomposer = "BurgmullerJFF"
	mutopiainstrument = "Piano"
	source = "Calcografía de B. ESLAVA, c. 1870"
	style = "Romantic"
	copyright = "Public Domain"
	maintainer = "Alberto Corella"
	maintainerEmail = "ppiano@telefonica.net"
 footer = "Mutopia-2007/05/01-972"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
stemExtend = \once \override Stem #'length = #22
noFlag = \once \override Stem #'flag-style = #'no-flag

upper = \relative c'' {
	\clef treble
	\key a \major
	\time 6/8
	\clef bass
	\once \override TextScript #'padding = #3
	\partial 8 e,,8-.\f^\markup{\bold "Allegro risoluto (" \note #"4." #1 "=112)"} |
	\stemDown a,-.\< cis-. e-.-1 \stemNeutral \acciaccatura b'8 a-. gis-. a-.\! |
	\once\override DynamicLineSpanner #'padding = #'2.0
	b4.(\sf e,8) r \clef treble \once\override DynamicLineSpanner #'padding = #'2.0 e''8-.\p |
	\acciaccatura e8 b8-._\markup{\italic leggiero} r e-. \acciaccatura e8 ais,8-. r8 e'8-. |
	\acciaccatura e8 b8-. r b'-. \acciaccatura b8\< <e e,>8-.-^\!\sf r\fermata e,,8-.\f | %1.1
	\once\override DynamicLineSpanner #'padding = #'2.0
	cis8-.\< e-. a-.\! cis-. r <gis eis>-. |
	<a fis>4.-> <b fis dis>4.->\sf |
	\once\override DynamicLineSpanner #'padding = #'3.0
	r8\pp \once \override TextScript #'padding = #1.5 <d,! e>-._\markup{\italic legg.} <d fis>-. <d gis>-. <d fis>-. <d e>-. |
	<cis a'>8 r e' \acciaccatura e8 <a a,>-.-^\sf r\fermata << {\slurDown cis,,8(} \\ {s8} >> |
	<< {a'4.) \slurNeutral gis8( a gis)} \\ {a,4. b4.} >> |
	<fis' a,>4.(^\( cis8)^\) cis[( dis]) | %1.2
	<cis eis>4.^\markup{\italic "poco riten"} dis8( eis dis) |
	cis8^\markup{"a Tempo"} r gis \acciaccatura gis8 gis'8-. r <dis bis gis>-.\pp |
	<cis gis>8-. r gis-. \acciaccatura gis8 gis'8-. r <dis bis gis>-.\pp |
	<cis gis>8-. r r \once\override DynamicText #'X-offset = #'-3 f4.^^\ff |
	\once \override TextScript #'padding = #3 \once\override TextScript #'X-offset = #'2 f4._\markup{\italic "cresc."}^^ f4.^^ | %1.3
	\bar "||"
	\key f \major
	\once\override DynamicText #'X-offset = #'-3
	\once\override DynamicLineSpanner #'padding = #'2.0
	f8\ff r d'-.-> \acciaccatura d8 c8-.[ r a-.] |
	\acciaccatura a8 f-.[ r d-.] \acciaccatura d c-.[ \change Staff = lower a-. f-.] |
	\stemUp <f g c>8^\ff \change Staff = upper r8 r \stemNeutral <c'' f g c>-.-^\sf r r |
	R2. |
	\change Staff = lower \stemUp <c, bes g e>8^\p \change Staff = upper r8 r \stemNeutral <c' e g c>8-.\arpeggio\pp r r |
	R2.^\markup{\musicglyph #"scripts.ufermata"} | % 1.4
	\bar "||"
	\pageBreak	
	\time 2/4
	\once \override TextScript #'padding = #3
	\once\override DynamicLineSpanner #'padding = #'2.5
	r16\pp^\markup{\bold "Andantino grazioso (" \note #"4" #1 "=56)"}
	\once \override TextScript #'padding = #2.5
	f,32_\markup{"una corda"}[( a c8]) r16 a32[( f c8]) |
	r16 f32[( a c8]) r16 a32[( f c8]) |
	\override Staff.NoteCollision #'merge-differently-dotted = ##t
	<< {\small c'16[\( f32 a] c8 c,16[ a32 f] c8} \\ {\normalsize \once\override Beam #'positions = #'(-4 . -6) \once\override TextScript #'padding = #'1.5 c'8.[_\markup{\dynamic pp \italic "molto legato"} b16^\markup{\finger 1} c8.^\markup{\finger 5} a16]^\markup{\finger 4}} >> |
	<< {\small c16[ f32 a] c8 c,16[ a32 f] c8\)} \\ {\normalsize \once\override Beam #'positions = #'(-4 . -6) c'8.[ b16 c8. a16]} >> | %2.1
	\override DynamicLineSpanner #'padding = #'1.5
	c16(\< bes! a bes d8-.)\! d-.^-\f\> |
	d16[( g,8)\! \revert DynamicLineSpanner #'padding fis16] g16-1(_\markup{\italic dim} a-. bes-. b-.-4) |
	<< {\small c16[\( f32 a] c8 c,16[ a32 f] c8} \\ {\normalsize \once\override Beam #'positions = #'(-4 . -6) \once\override DynamicLineSpanner #'padding = #'1.5 c'8.[\pp b16^\markup{\finger 1} c8.^\markup{\finger 5} a16]^\markup{\finger 4}} >> |
	<< {\small c16[ f32 a] c8 \hideNotes c,16[ a32 f] c8\) \unHideNotes} \\ {\normalsize c'8. b16^\markup{\finger 1} c16[ f a,8 ~ ]} >>  | % 2.2
	<< {s2} \\ {a8[ \acciaccatura a8 \slurUp d16( c] a[ bes g c32]^.) \slurNeutral r32\sf} >> |
	c16( f,) a'->\( e_\markup{\italic "dolce"} f a, \acciaccatura a8 \times 2/3 {e'16[ d c]\)} |
	<< {c8( des d c)} \\ {c16\< e, des' e,\! d'\> e, c' e,\!} >> |
	c'16[( f,]-.) \times 2/3 {f''16 a, \once \override TextScript #'padding = #2.5 d_\markup{\italic "dim"}} \times 2/3 {c16[ e,-1 f-2]} \times 2/3 {a16-5 a, bes} | %2.3
	<< {c8\( des \acciaccatura e8 d8 c\)} \\ {c16\p e,_\markup{\italic "rallent"} des' e, d'_\markup{\italic "dim"} e, c' e,} >> |
	\bar "||"
	\time 6/8
	\once \override TextScript #'padding = #3.0
	f8-.^\markup{\bold "Allegro"} r a'-. \acciaccatura a8 cis,-.[_> r a'-.] |
	\acciaccatura a8 d,8-.[_> r a'-.] \acciaccatura a8 cis,-.[_> r a'-.] |
	\acciaccatura a8^\markup{\tiny "tre corde"} c,!-.[_> r a'-.] \acciaccatura a8 cis,-.[_> r a'-.] | % 2.4
	\acciaccatura a8 d,8-._>[ r a'-.] \acciaccatura a8 dis,-._>[ r a'-.] |
	\acciaccatura a8 e-.\f r \override Staff.OttavaBracket #'padding = #2.5 #(set-octavation 1) r <e' e'>\sf-.-^ #(set-octavation 0) r f,-. |
	\acciaccatura f8 e-. r #(set-octavation 1) r <e' e'>\sf-.-^ #(set-octavation 0) r f,-. |
	\revert Staff.OttavaBracket #'padding
	\acciaccatura f8 e-.\sf[\< r fis-.] \acciaccatura fis8 e-.->[ r g!-.] |
	\acciaccatura g8 e-.->[ r gis-.] \acciaccatura gis8\!\sf e-.-> r\fermata  % 2.5
	\bar "||"
	\key c \major
	\pageBreak
	\time 3/4
	\once \override TextScript #'padding = #1.5
	\once \override DynamicLineSpanner #'padding = #'2.0
	a8\f^\markup{\column {\caps "Vals" \line {\bold "Vivo " "(" \note #"2." #1 "=96)"}}} |
	\acciaccatura a8 \once \override TextScript #'padding = #2.0 e4-._>_\markup{\italic "marcato"} r a4-. |
	\acciaccatura a8 e4-._> r b'-. |
	\acciaccatura b8 e4-._> r b-. |
	\acciaccatura b8 c4-._> a-. e'-. |
	\acciaccatura e8 a4-._> r e-. |
	\acciaccatura e8 f4-. r \times 2/3 {bes,8\( c bes} |
	\once \override TextScript #'padding = #2.5
	a4-.\)_\markup{\italic "dim"} r \times 2/3 {a8\( b! a} | % 3.1
	gis4-.\) e-. a-. |
	\acciaccatura a8 e4-._>\f r a-. |
	\acciaccatura a8 e4-._> r b'-. |
	\acciaccatura b8 e4-.	r b-. |
	\acciaccatura b8 c4-._> a-. e'-. |
	\acciaccatura e8 a4-._> r e-. |
	\acciaccatura e8 c4-._> r a-. |
	\acciaccatura a8 c4-. d-. b-. |
	\acciaccatura b8 e4-._> r e-. | % 3.2
	\acciaccatura e8 a4_> r e |
	e4( d8 c b a) |
	c4 d b |
	a r \once \override DynamicLineSpanner #'padding = #'2.0 g,!\p |
	\acciaccatura g8 c2(^\markup{"cantabile"}\< d4 |
	e2 f4 |
	fis2 g4 |
	gis2\!\sf\> a4\!) | % 3.3
	d,2 e4 |
	\acciaccatura g8 f2_\markup{\italic "dolce"} e4 |
	f2 g4 |
	e4 r g |
	\acciaccatura g8 <c c,>2(\f\< <d d,>4 |
	<e e,>2 <c c'>4\!\sf |
	<b b'>2 <a a'>4) |
	<gis gis'>2( <a a'>4)  |
	<d d,>2_\markup{\italic "dim"}( <e e,>4 |
	<f f,>2 <fis fis,>4 |
	<g g,>2 <d d,>4 | % 3.4
	\once \override DynamicLineSpanner #'padding = #'2.0
	<e e,>4)\p r e,-. |
	\acciaccatura e8 d4 r d |
	\acciaccatura d8 c4-> r c |
	\acciaccatura c8 b4 r \once \override DynamicLineSpanner #'padding = #'2.0 \times 2/3 {b8\<\( c d} |
	\once \override TextScript #'padding = #3.0
	e4\)\!_\markup{\italic "cresc."} r \times 2/3 {e'8\( f e} |
	d4-.\)  r \times 2/3 {d8\( e d} |
	\once \override DynamicLineSpanner #'padding = #'2.0
	c4-.\)\< e,8-1\( fis gis a-1 |
	b8[ c d-1 e fis gis]\! | % 3.5
	a4-.\)\f r a,-. |
	\acciaccatura a8 e4-._> r a4-. |
	\acciaccatura a8 e4-._> r b'-. |
	\acciaccatura b8 e4-._> r b-. |
	\acciaccatura b8 c4-._> a-. e'-. |
	\acciaccatura e8 a4-._> r e-. |
	\acciaccatura e8 f4-. r \times 2/3 {bes,8\( c bes} |
	\once \override TextScript #'padding = #2.5
	a4-.\)_\markup{\italic "dim"} r \times 2/3 {a8\( b! a} | 
	gis4-.\) e-. a-. | % 3.6
	\acciaccatura a8 e4-._>\f r a-. |
	\acciaccatura a8 e4-._> r b'-. |
	\acciaccatura b8 e4-._> r b-. |
	\acciaccatura b8 c4-._> a-. e'-. |
	\acciaccatura e8 a4-._> r e-. |
	\acciaccatura e8 c4-._> r a-. |
	\acciaccatura a8 c4-._> d-. b-. |
	\acciaccatura b8 e4-._> r e-. |
	a4-._> r e-. | % 4.1
	e4\(_> d8 c b a\) |
	c4-. d-. b-. |
	a4-. r \once \override DynamicLineSpanner #'padding = #'1.5 e,4-.\ff |
	\acciaccatura e8 a,4-.\f^\markup{\italic "Vibrato"} r e'-. |
	\acciaccatura e8 a,4-.\f r e'-. |
	\acciaccatura e8 a,4-.\f r \once \override DynamicLineSpanner #'padding = #'2.5 e'-.-4\p |
	\repeat volta 2 {
	\bar "||"
	\key a \major
	<< {c'4\rest^\markup{\italic "dolce e cantabile"} c\rest e,} \\ {\set fingeringOrientations = #'(left) <cis-2 a-1>2. ~ } >> |
	\noBreak
	<< {e2( fis4)} \\ {<cis a>2.} >> |
	<< {fis2.->\(} \\ {<fis d b>2.\arpeggio ~} >> | % 4.2
	<< {e2.\)} \\ {<d b>2.} >> |
	<< {c'4\rest c\rest e,} \\ {<cis a>2. ~ } >> |
	<< {e2( fis4)} \\ {<cis a>2.} >> |
	<< {fis2.(} \\ {<fis d gis,>2.\arpeggio ~ } >> |
	<< {e4) c\rest c\rest} \\ {<d gis,>4 s2} >> |
	<< {e2( a4)} \\ {a,2.\<} >> |
	<< {a'2( cis4)} \\ {cis,2.} >> |
	<< {cis'2( b4)} \\ {fis2.\!\>} >> |
	<< {b2( fis4)} \\ {s2 s4\!} >> |
	a4_\markup{\italic "dim."}\( gis fis | % 4.3
	gis2 b4\) | } % fin repeat
	\alternative {
	{a4-. cis,(\> d dis fis e)\!}
	{a4 r r}
	}
	a'8-3\( gis a bes a g-2\) |
	g!8-4\( f e f g f\) |
	e8\( d cis d e d\) |
	cis8\( e a,4-.\) r | % 4.4
	a8\( gis a bes a g\) |
	g!8\( f e f g f\) |
	e8\( d cis d e d\) |
	\once \override DynamicLineSpanner #'padding = #'1.5 
	cis4\f r8 cis(^\< d e |
	f4)^\! r8 f( e d |
	cis4) r8 cis(^\< d e |
	f4)^\! r8 f( e d |
	cis4) r8 cis( d dis | % 4.5
	e4)_\markup{\italic "cresc    ed    accel"} r8 e( f fis |
	\noBreak
	g4) r8 fis(\< g a |
	bes4\!\f) r8 fis(\< g a |
	bes4\!) \once\override TextScript #'padding = #'1.5 r8_\markup{\italic "dim e poco riten"}  fis(g a |
	\noBreak
	bes4) r8 fis(\< g a |
	bes4)\pp r r |
	r4 r8 \once\override DynamicLineSpanner #'padding = #'1.5 fis8\p( g gis)  % 4.6
	
	\key d \major
	\bar "||"
	\acciaccatura b8^\markup{"piú moderato."} a8( gis a ais b cis)
	\acciaccatura e8 d8( cis d fis e d) |
	cis8( e16-.) r g,4-. g-. |
	g4.( b8 a g) |
	fis8(\< a d e d cis) |
	b8( dis e fis e d)\! | % 5.1
	cis8( a'16-.) r a,4-. a-. |
	a4_^ r8 fis( g gis) |
	\acciaccatura b8 a8(\p\< gis a ais b cis)\! |
	\acciaccatura e8 \once\override DynamicLineSpanner #'padding = #'2.0 d8(\< cis d e d c)\! |
	b8\>( g'16-.)\! r g,4-. g-. |
	g2.-> |
	fis8(-2\p a-1 \once\override TextScript #'padding = #'1.5 d-2_\markup{\italic "legiero"} fis a) r | % 5.2
	b8-5( a g e-1 cis-2) r |
	d( a' fis d a fis) |
	r4 <d' d'>-.\< <e e'>-. |
	<fis ais cis fis>4-.-^\!\ff\arpeggio \once\override TextScript #'padding = #'1.0 fis'8(_\markup{\italic "energico"} g fis e) |
	e8( d) d( cis) b4 |
	\once\override DynamicLineSpanner #'padding = #'1.5
	cis,4\p \once\override TextScript #'padding = #'1.5 cis8_\markup{\italic "dolce"}( d cis b |
	ais4-.) ais8( cis fis,4) | % 5.3
	<fis' ais cis fis>4\arpeggio\ff fis'8( g fis e) |
	e8->( d) \acciaccatura e8 d8( cis b4) |
	cis,4-._\markup{\italic "dim."} cis8( d cis b |
	\once\override TextScript #'padding = #'3.5
	ais4-.)^\markup{\small "una corda"} ais8-1( cis-2 ais'4-5) ~ |
	ais4 b,8( cis gis'4) ~ |
	gis4 ais,8( cis fis4) ~ | % 5.4
	fis4 cis,8( gis' cis4 |
	<ais fis>4) ais8-1( cis ais'4) ~ |
	ais4 b,8( cis gis'4) ~ |
	gis4 ais,8( cis fis4) ~ |
	fis4 cis,8( gis' cis4)( |
	<ais fis>) fis8( cis' fis4-.) |
	r4 fis8( cis' fis4-.) | % 5.5
	r4 fis,,8 cis'^\markup{\small "tre corde"} fis4-. |
	r fis8 cis' fis4-. |
	<g! cis,! g!>8\arpeggio\sf fis,8-3\( a-5 g fis  e |
	d\sf cis b a g fis |
	e d cis b a b |
	cis \once\override TextScript #'padding = #'2.0 d_\markup{\italic "dim  riten"} e fis g gis\) | % 5.6
	\pageBreak
	\acciaccatura b8^\markup{"a Tempo"} a8( gis a ais b cis)
	\acciaccatura e8 d8( cis d fis e d) |
	cis8( e16-.) r g,4-. g-. |
	g4.( b8 a g) |
	fis8(\< a d e d cis) |
	b8( dis e fis e d)\! | 
	cis8( a'16-.) r a,4-. a-. | % 6.1
	a4_^ r8 fis( g gis) |
	\acciaccatura b8 a8(\p\< gis a ais b cis)\! |
	\acciaccatura e8 \once\override DynamicLineSpanner #'padding = #'2.0 d8(\< cis d e d c)\! |
	b8\>( g'16-.)\! r g,4-. g-. |
	g2.-> |
	fis8(-2\p a-1 \once\override TextScript #'padding = #'1.5 d-2_\markup{\italic "legiero"} fis a) r | 
	b8-5( a g e-1 cis-2) r | % 6.2
	d( a' fis d a fis) |
	r4 <d' d'>-.\< <e e'>-. |
	<fis ais cis fis>4-.-^\!\ff\arpeggio \once\override TextScript #'padding = #'1.0 fis'8(_\markup{\italic "energico"} g fis e) |
	e8( d) d( cis) b4 |
	\once\override DynamicLineSpanner #'padding = #'1.5
	cis,4\p \once\override TextScript #'padding = #'1.5 cis8_\markup{\italic "dolce"}( d cis b |
	ais4-.) ais8( cis fis,4) | 
	<fis' ais cis fis>4\arpeggio\ff fis'8( g fis e) | % 6.3
	e8->( d) \acciaccatura e8 d8( cis b4) |
	cis,4-.\p cis8( d cis b |
	\once\override DynamicLineSpanner #'padding = #'2.5
	ais4-.)\pp ais8( cis fis4 |
	d4) d8( cis b d-5) |
	cis8( ais fis2-1) |
	\acciaccatura fis8 d'4-. d8( cis b d) |
	cis( ais fis4-.) << {\stemDown cis'!8-3( d} \\ {s4} >> | % 6.4
	<< {e2.)->} \\ {r4 \slurUp cis8( b a! cis^4)} >> |
	b8( gis e4) << {\stemDown e'8( dis} \\ {s4} >> |
	<< {e2.)->} \\ {r4 \slurUp c8(^3 b a c^4)} >> |
	b8(\f gis e4) <e e'>4-. |
	c'8( a e4-.) <e e'>4-.-^ |
	d'8( b e,4-.) <e e'>4-.-^ |
	c'8( a e4-.) <e e'>4-.-^ | %6.5
	\once\override TextScript #'padding = #' 3.0
	b'8(_\markup{\italic "molto cres ed accelerando"} gis e4-.) <e e'>4-._^ |
	c'8( a e4-.) <e e'>4-._^ |
	d'8( b e,4-.) <e e'>4-._^ |
	c'8( a e4-.) <e e'>4-._^ |
	\once\override TextScript #'padding = #'1.5
	<e gis b>^\markup{"animato."} r8 <f b f'>-. <f b f'>4-^ |
	<e b' e>4-. r8 <f b f'>-. <f b f'>4-^ |
	<e b' e>4-. r8 <f b f'>-. <f b f'>4-^ | % 6.6
	<e b' e>4-. r8 <f b f'>-. <f b f'>4-^ |
	<e b' e>\ff r8 <f f'>-.-^[ r <e e'>-.-^] |
	r8 <d d'>-.-^[ r <e e'>-.-^ r <d d'>-.-^] |
	r8 <c c'>-.-^[ r <d d'>-.-^ r <c c'>-.-^] |
	r8 <b b'>-.-^[ r <c c'>-.-^ r <b b'>-.-^] |
	\bar "||"
	\key c \major
	\once\override TextScript #'padding = #'1.5
	<a a'>4\sf^\markup{\bold "Vivo."} r a''4-. |
	\noBreak
	\acciaccatura a8 e4-._> r a4-. |
	\acciaccatura a8 e4-._> r b'4-. | % 7.1
	\acciaccatura b8 e4-._> r b4-. |
	\acciaccatura b8 c4-._> a-. e'-. |
	\acciaccatura e8 a4-._> r e-. |
	\acciaccatura e8 f4 r \times 2/3 {bes,8( c bes} |
	\once\override TextScript #'padding = #'2.0
	a4-._\markup{\italic "dim."}) r \times 2/3 {a8( b! a} |
	gis4-.) e-. a-. |
	\acciaccatura a8 e4-._> r a-. |
	\acciaccatura a8 e4-._> r b'4-. | 
	\acciaccatura b8 e4-._> r b4-. | % 7.2
	\acciaccatura b8 c4-._> a-. e'-. |
	\acciaccatura e8 a4-._> r e-. |
	\acciaccatura e8 c4-._> r a-. |
	\acciaccatura a8 c4-. d-. b-. |
	\acciaccatura b8 e4-. r e-. |
	\acciaccatura e8 a4-._> r e-. |
	e4( d8 c b a) |
	c4-. b-. \acciaccatura b8 e4-._> |
	c4-. b-. \acciaccatura b8 e4-._> |
	c8_>( b e4-.) c8( b | % 7.3
	e4-._>) c8( b e4-._>) |
	\repeat "unfold" 8 {e,8( e' e, e' e, e')} | %7.4

	\acciaccatura e,8 \once\override TextScript #'padding = #'2.0 <e e'>2.\(^\markup{"a Tempo."} |
	<d d'>2 <e e'>4 |
	<f f'>2._> |
	<e e'>2 <d d'>4\) |
	<d d'>4-.( <g, g'>-.\< <a a'>-.) |
	\phrasingSlurDown
	<c c'>2\!\f\>(\( <bes bes'>4\!)\) |
	<gis gis'>2.(\( |
	<a a'>4)\) r r |
	\phrasingSlurNeutral
	<e' e'>2.(\mf\< |
	<d d'>2 <e e'>4) |
	<g g'>-.-^ <f f'>-.-^ <g g'>-.-^\! | % 7.5
	<a a'>4-.-^\sf\> <f f'>-.-^ r8 <d d'>-.-^ |
	<d d'>4-.-^ <g g,>-. <a a,>-.\! |
	<c c,>2\>( <bes bes,>4\!) |
	<a a,>2 a4-. |
	\acciaccatura a8 cis,4-._\markup{\dynamic pp \italic " agitato"} r4 a'4-. |
	\acciaccatura a8 d,4-. r a'4-. |
	\acciaccatura a8 cis,4-. r4 a'4-. |
	\acciaccatura a8 c,!4-. r \once\override TextScript #'padding = #'2.0  a'4-._\markup{\italic "cres ed accel."} |
	\acciaccatura a8 cis,4-. r4 a'4-. |
	\acciaccatura a8 d,4-. r a'4-. |
	\acciaccatura a8 dis,4-. r a'4-. | % 7.6
	\bar "||"
	
	\key a \major
	\acciaccatura a8^\markup{\italic "piu animato"} \once\override DynamicLineSpanner #'padding = #'1.5 e4-.\f r e-. |
	<< {e2( fis4)} \\ {<cis a>2.} >> |
	\appoggiatura {gis16-1[ d'-2]} fis4-.-4_>( e8-1\< fis gis a-1 |
	b cis d e fis gis |
	a4)\!\sf r e,4-. |
	<< {e2( fis4)} \\ {<cis a>2.} >> |
	\appoggiatura {gis16-1[ d'-2]} fis4-.-4_>( \once\override DynamicLineSpanner #'padding = #'2.0 e8-1\< fis gis a-1 |
	b cis d e fis gis | % 8.1
	a4-.\!) r <a a,>-. |
	\phrasingSlurDown
	<a a,>2(\(\< <b b,>4)\) |
	\once\override Staff.OttavaBracket #'padding = #2.5
	#(set-octavation 1)
	<b b,>2(\( <a a,>4)\) |
	<a a,>2( <b b,>4 |
	<cis cis,>4-.)\! r <gis gis,>(\( |
	<a a,>4-.)\) #(set-octavation 0) r <fis fis,>-> ~ |
	<fis fis,>4 <b, b,>-.\< <cis cis,>-. |
	<e e,>2(\!\> <d d,>4\! |
	<cis cis,>-.) r \once\override Staff.OttavaBracket #'padding = #2.5 #(set-octavation 1) <a a'>4-. |
	<a a'>2(\(\< <b b'>4)\) | % 8.2
	<b b'>2(\( <a a'>4)\) |
	<a a'>2(\( <b b'>4)\) |
	<cis! cis'!>4-.\!_\markup{\dynamic sf \italic " risoluto"} \phrasingSlurNeutral a'8( b cis d |
	e4-.\sf\<) #(set-octavation 0)  a,,8( b cis d |
	e4-.-^\!\sf) cis-.-^ a-.-^ |
	e4-.-^ cis -.-^ a-.-^ |
	r4_\markup{\dynamic sf \italic " con fuoco"} <f' f'>-. <d d'>-.|
	r4 <b b'>-. <gis! gis'!> |
	r4 <f f'>-. <d d'>-. |
	r4 <b b'>-. <gis! gis'!>-. | % 8.3
	<a a'>4\ff r8 <a' cis e a>-. <a cis e a>4-. |
	<a cis e a>-. <a cis e a>-.\< <a cis e a>-. |
	<a cis e a>-. <a cis e a>-. <a cis e a>-. |
	<a cis e a>-. <a cis e a>-. <a cis e a>-. |
	<a cis e a>-.-^\!_\markup{\dynamic sf \italic " cres sempre piu animato"} r8 <cis e a cis>-. <cis e a cis>4-. |
	\noBreak
	<cis e a cis>-. <cis e a cis>-. <cis e a cis>-. |
	\noBreak
	<cis e a cis>-. <cis e a cis>-. <cis e a cis>-. |
	<cis e a cis>-. <cis e a cis>-. <cis e a cis>-. |
	<cis e a cis>4-.-^\f r8 <e a cis e>-. <e a cis e>4-.
	<e a cis e>-. \once\override DynamicLineSpanner #'padding = #'2.0 <e a cis e>-.\< <e a cis e>-. | % 8.4
	<e a cis e>-. <e a cis e>-. <e a cis e>-. |
	<e a cis e>-. <e a cis e>-. <e a cis e>-. |
	<a a'>-.-^\!_\markup{\dynamic sf \italic " presto"} cis-. e-. |
	<a, a'>-.-^\sf cis-. e-. |
	<a, a'>-.-^\sf cis-. e-. |
	<a, a'>-.-^\sf cis-. e-. |
	<a, a'>-.-^\sf r r |
	<e cis a e>-.\sf r r |
	<a a'>-.-^\sf r r |
	<e cis a e>-.\sf r r |
	#(set-octavation 1)
	\appoggiatura {e''32[ fis gis]} \once\override DynamicLineSpanner #'padding = #'1.5 a4-.-^\fff #(set-octavation 0) r r |
	\bar "|."
}

lower = \relative c {
    \clef bass
    \key a \major
    \time 6/8
	\partial 8 e,8-. |
	a,8-._2 cis-. e-. a-._1 gis-._3 a-._2 |
	b4.( e,8) r r |
	<e' gis d'>8-.\sustainDown r \once\override Staff.SustainPedalLineSpanner #'padding = #'2.5 r\sustainUp <e g cis!>8-. r r |
	<e gis d'>8-. r \once\override Staff.SustainPedalLineSpanner #'padding = #'2.0 r\sustainDown <e e,>-._^ r\fermata e8-.\sustainUp | %1.1
	cis8-. e-. a-. cis-. r <cis cis,>-. |
	<cis fis,>4. <a b,>4. |
	r8 <e gis>-. <e a>-. <e b'>-. <e a>-. <e gis>-. |
	<a a,>8 r r\sustainDown <a, a,>8-.-^ r\fermata\sustainUp r |
	<fis' cis fis,>4. <eis cis fis,> |
	<fis cis fis,>4. ~ <fis cis fis,>8 r r | %1.2
	<< {\stemExtend gis4. <fis bis>4.} \\ {gis,4. ~ <gis gis,>4._\( ~ } >> |
	<< {\stemExtend \noFlag eis'8 s2} \\ {<gis, cis,>8_\) r r r4} >> <fis' gis,>8-. |
	<eis cis>8 r r r4 <fis gis,>8-. |
	<eis cis>8-. r8 r << {\stemExtend <aes f>4.} \\ {<des, des,>4.\sustainDown} >> |
	<< {\stemExtend <bes' f>4. \stemExtend <bes f>4.} \\ {<des, des,>4. <des des,>4.} >> | %1.3
	\bar "||"
	\key f \major
	<c c,>8\sustainDown r\sustainUp d'-. c-.[ r a-.] |
	f-.[ r d-.] \stemDown c-. a-. f-. |
	<c c'>8\sustainDown r r \stemNeutral \clef treble <c'' f g>-.-^ \once\override Staff.SustainPedalLineSpanner #'padding = #'7.0 r\sustainUp r |
	R2. \clef bass |
	\stemDown <c, c,>8\sustainDown r r \clef treble <c' g' bes>-.\arpeggio \once\override Staff.SustainPedalLineSpanner #'padding = #'7.0 r\sustainUp r |
	R2.^\markup{\musicglyph #"scripts.ufermata"} | % 1.4
	\bar "||"
	\clef bass
	\time 2/4
	<f,, f,>8[\sustainDown c'( \once\override Staff.SustainPedalLineSpanner #'padding = #'4.0 <f a>\sustainUp c]) |
	f,8-.[\sustainDown c'( \once\override Staff.SustainPedalLineSpanner #'padding = #'2.0 <f a>\sustainUp c]) |
	f,8-.[\sustainDown c'( \once\override Staff.SustainPedalLineSpanner #'padding = #'2.0 <f a>\sustainUp c]) |
	f,8-.[\sustainDown c'( \once\override Staff.SustainPedalLineSpanner #'padding = #'2.0 <f a>\sustainUp c]) | % 2.1
	f,8-.[\sustainDown c'( \once\override Staff.SustainPedalLineSpanner #'padding = #'2.0 <e bes'>\sustainUp c]) |
	f,8-.[\sustainDown c'( \once\override Staff.SustainPedalLineSpanner #'padding = #'2.0 <e bes'>\sustainUp c]) |
	f,8-.[\sustainDown c'( \once\override Staff.SustainPedalLineSpanner #'padding = #'2.0 <f a>\sustainUp c]) |
	f,8-.[\sustainDown \override DynamicLineSpanner #'padding = #'1.5 c'(^\< \once\override Staff.SustainPedalLineSpanner #'padding = #'2.0 <f a>\sustainUp\!^\> c])\! \revert DynamicLineSpanner #'padding| % 2.2
	f,8-.[\sustainDown c'( \once\override Staff.SustainPedalLineSpanner #'padding = #'2.0 <e bes'>\sustainUp c]) |
	f,8-.[\sustainDown c'( \once\override Staff.SustainPedalLineSpanner #'padding = #'2.0 <f a>\sustainUp c]) |
	f,8-.[\sustainDown c'( \once\override Staff.SustainPedalLineSpanner #'padding = #'2.0 <g' bes>\sustainUp c,]) |
	f,8-.[\sustainDown c'( \once\override Staff.SustainPedalLineSpanner #'padding = #'2.0 <f a> c]) | % 2.3
	f,8-.[\sustainDown c'( \once\override Staff.SustainPedalLineSpanner #'padding = #'2.0 <g' bes>\sustainUp c,]) |
	\bar "||"
	\time 6/8
	\override TextScript #'padding = #2.5
	<f a>8-.^\markup{\dynamic pp \italic " agitato"} <f a c>-. <f a c>-. <f a cis>-. <f a cis>-. <f a cis>-. |
	<f a d>-. <f a d>-. <f a d>-. <f a cis>-. <f a cis>-. <f a cis>-. |
	<f a c!>-. <f a c>-. <f a c>-.^\markup{\italic "cres"} <f a cis>-. <f a cis>-. <f a cis>-. | % 2.4
	\revert TextScript #'padding
	<f a d>-. <f a d>-. <f a d>-. <f a c! dis>-. <f a c dis>-. <f a c dis>-. |
	<e a c e>\sustainDown r r <e e,>_._^ r\sustainUp r | 
	<e a c e>\sustainDown r r <e e,>_._^ r\sustainUp r |
	<e bes' d>8 r r r4 r8 |
	\once\override TextScript #'padding = #2.0
	r4^\markup{\italic "riten"} r8 r4\fermata  % 2.5
	\bar "||"
	\key c \major
	\pageBreak
	\time 3/4
	r8 |
	\stemNeutral
	<a, a,>4\sustainDown <e' a c> \once\override Staff.SustainPedalLineSpanner #'padding = #'3.5 <e a c>\sustainUp |
	gis,4\sustainDown <e' b' d> \once\override Staff.SustainPedalLineSpanner #'padding = #'2.0 <e b' d>\sustainUp |
	e,4\sustainDown <e' gis d'> \once\override Staff.SustainPedalLineSpanner #'padding = #'2.5 <e gis d'>\sustainUp |
	a,4\sustainDown <e' a c> \once\override Staff.SustainPedalLineSpanner #'padding = #'1.5 <e a c>\sustainUp |
	<< {c2. } \\ {c2.} \\ {\stemDown s4 <e a> <e a>} >> |
	<< {d2.} \\ {d2.} \\ {\stemDown s4 <f bes> <f bes>} >> |
	<< {des2.} \\ {des2.} \\ {\stemDown s4 <fis a c> <fis a c>} >> | % 3.1
	<e b'>4 r r |
	<a, a,>4\sustainDown <e' a c> \once\override Staff.SustainPedalLineSpanner #'padding = #'3.5 <e a c>\sustainUp |
	gis,4\sustainDown <e' b' d> <e b' d>\sustainUp |
	e,4\sustainDown <e' gis d'> <e gis d'>\sustainUp |
	a,4\sustainDown <e' a c> <e a c>\sustainUp |
	<< {c2. } \\ {c2.} \\ {\stemDown s4 <e a> <e a>} >> |
	<< {e2. } \\ {e2.} \\ {\stemDown s4 <a c> <a c>} >> |
	<< {e2. } \\ {e2.} \\ {\stemDown s4 <gis d'> <gis d'>} >> |
	a,4 <e' a c> <e a c> | % 3.2
	<< {c2. } \\ {c2.} \\ {\stemDown s4 <e a> <e a>} >> |
	<< {e2. } \\ {e2.} \\ {\stemDown s4 <a c> <a c>} >> |
	<< {e2. } \\ {e2.} \\ {\stemDown s4 <gis d'> <gis d'>} >> |
	<a c>4 r r |
	c,4-.\sustainDown <c' e>( g)\sustainUp |
	c,4-.\sustainDown <c' e>( g)\sustainUp |
	c,4-.\sustainDown <c' e>( g)\sustainUp |
	b,4-.\sustainDown <d' f> <d f>\sustainUp | % 3.3
	<< {g,2. } \\ {g2.} \\ {\stemDown s4 <d' f> <d f>} >> |
	<< {b2. } \\ {b2.} \\ {\stemDown s4 <d f> <d f>} >> |
	<< {g,2. } \\ {g2.} \\ {\stemDown s4 <d' f> <d f>} >> |
	c,4-.\sustainDown <c' e>( g)\sustainUp |
	c,4-.\sustainDown <c' e>( g)\sustainUp |
	c,4-.\sustainDown <c' e>( g)\sustainUp |
	c,4-.\sustainDown <c' e>( g)\sustainUp |
	b,4-.\sustainDown <d' f> <d f> | 
	<< {g,2. } \\ {g2.} \\ {\stemDown s4 <d' f> <d f>} >> |
	<< {b2. } \\ {b2.} \\ {\stemDown s4 <d f> <d f>} >> |
	<< {g,2. } \\ {g2.} \\ {\stemDown s4 <b f'> <b f'>} >> | %3.4
	c,4 <g' c e> <g c e> |
	<< {d2. } \\ {d2.} \\ {\stemDown s4 <f b> <f b>} >> |
	<< {e2. } \\ {e2.} \\ {\stemDown s4 <a c> <a c>} >> |
	<< {d,2. } \\ {d2.} \\ {\stemDown s4 <e gis b> <e gis b>} >> |
	<< {c2. } \\ {c2.} \\ {\stemDown s4 <e a> <e a>} >> |
	<< {d2. } \\ {d2.} \\ {\stemDown s4 <f b> <f b>} >> |
	<< {e2. } \\ {e2.} \\ {\stemDown s4 <a c> <a c>} >> |
	<< {e2. } \\ {e2.} \\ {\stemDown s4\sustainDown <gis b d> \once\override Staff.SustainPedalLineSpanner #'padding = #'2.0 <gis b d>\sustainUp } >> | % 3.5
	a,4 <e' a c> <e a c> |
	a,4\sustainDown <e' a c> \once\override Staff.SustainPedalLineSpanner #'padding = #'1.5 <e a c>\sustainUp |
	gis,4\sustainDown <e' b' d> \once\override Staff.SustainPedalLineSpanner #'padding = #'2.0 <e b' d>\sustainUp |
	e,4\sustainDown <e' gis d'> \once\override Staff.SustainPedalLineSpanner #'padding = #'2.5 <e gis d'>\sustainUp |
	a,4\sustainDown <e' a c> \once\override Staff.SustainPedalLineSpanner #'padding = #'1.5 <e a c>\sustainUp |
	<< {c2. } \\ {c2.} \\ {\stemDown s4 <e a> <e a>} >> |
	<< {d2.} \\ {d2.} \\ {\stemDown s4 <f bes> <f bes>} >> |
	<< {des2.} \\ {des2.} \\ {\stemDown s4 <fis a c> <fis a c>} >> |
	<e b'>4 r r | % 3.6
	<a, a,>4\sustainDown <e' a c> \once\override Staff.SustainPedalLineSpanner #'padding = #'3.5 <e a c>\sustainUp |
	gis,4 <e' b' d> <e b' d> |
	e,4\sustainDown <e' gis d'> \once\override Staff.SustainPedalLineSpanner #'padding = #'2.0 <e gis d'>\sustainUp |
	a,4 <e' a c> <e a c> |
	<< {c2. } \\ {c2.\sustainDown} \\ {\stemDown s4 <e a> \once\override Staff.SustainPedalLineSpanner #'padding = #'3.0 <e a>\sustainUp} >> |
	<< {e2. } \\ {e2.} \\ {\stemDown s4 <a c> <a c>} >> |
	<< {e2. } \\ {e2.} \\ {\stemDown s4 <gis d'> <gis d'>} >> |
	a,4 <e' a c> <e a c> |
	<< {c2. } \\ {c2.\sustainDown} \\ {\stemDown s4 <e a> \once\override Staff.SustainPedalLineSpanner #'padding = #'3.0 <e a>\sustainUp} >> | % 4.1
	<< {e2. } \\ {e2.} \\ {\stemDown s4 <a c> <a c>} >> |
	<< {e2. } \\ {e2.} \\ {\stemDown s4 <gis d'> <gis d'>} >> |
	<a c>4 r e-. |
	\override Staff.SustainPedalLineSpanner #'padding = #'2.0
	\acciaccatura e8 a,4-.\sustainDown r e'-.\sustainUp |
	\acciaccatura e8 a,4-.\sustainDown r e'-.\sustainUp |
	\acciaccatura e8 a,4-.\sustainDown r \revert Staff.SustainPedalLineSpanner #'padding e'-.\sustainUp |
	\repeat volta 2 {
	\bar "||"
	\key a \major
	<< {a,2.\sustainDown } \\ {a2.} \\ {\stemDown s4 e'4 \once\override Staff.SustainPedalLineSpanner #'padding = #'0.0 e\sustainUp} >> |
	<< {e,2.} \\ {e2.} \\ {\stemDown s4 e'4 e} >> |
	<< {gis,2.\sustainDown } \\ {gis2.} \\ {\stemDown s4 e'4 \once\override Staff.SustainPedalLineSpanner #'padding = #'0.5 e\sustainUp} >> | % 4.2
	<< {e,2.} \\ {e2.} \\ {\stemDown s4 e'4 e} >> |
	<< {a,2.\sustainDown } \\ {a2.} \\ {\stemDown s4 e'4 \once\override Staff.SustainPedalLineSpanner #'padding = #'0.0 e\sustainUp} >> |
	<< {e,2.} \\ {e2.} \\ \stemDown {s4 e'4 e} >> |
	<< {d2.\sustainDown} \\ {d2.} \\ {\stemDown s4 e4 \once\override Staff.SustainPedalLineSpanner #'padding = #'-1.0 e\sustainUp} >> |
	<< {e,2.} \\ {e2.} \\ {\stemDown s4 e'4 e} >> |
	<< {cis2.} \\ {cis2.} \\ {\stemDown s4 e4 e} >> |
	<< {a,2.} \\ {a2.} \\ {\stemDown s4 e'4 e} >> |
	<< {d2.} \\ {d2.} \\ {\stemDown s4 <fis b>4 <fis b>} >> |
	<< {dis2.} \\ {dis2.} \\ {\stemDown s4 <fis a b>4 <fis a b>} >> |
	<< {e2.} \\ {e2.} \\ {\stemDown s4 <b' d>4 <b d>} >> | % 4.3
	<< {e,2.} \\ {e2.} \\ {\stemDown s4 <b' d> <gis d'>} >> } % fin repeat
	\alternative {
	{<a cis>4-. cis,->\( d dis fis e\)}
	{<a cis>4 a-.( a-.)}
	}
	a,4 <cis g' a> <cis g' a> |
	a4 <d f a> <d f a> |
	a4 <f' gis> <f gis> |
	a,4 <cis e a> <cis e a> | % 4.4
	\once\override TextScript #'padding = #'3.5
	a4^\markup{\italic "cresc"} <cis g' a> <cis g' a> |
	a4 <d f a> <d f a> |
	a4 <f' gis> <f gis> |
	a,4( <e' a>8-.) r r4 |
	a,4( <d f gis>8-.) r r4
	a4( <e' a>8-.) r r4 |
	a,4( <d f gis>8-.) r r4 |
	a4( <e' a>8-.) r r4 | % 4.5
	<cis g' bes>4-. <cis g' bes>-. r |
	<e bes' cis!>4-. <e bes' cis>-. r |
	<g cis! e>4-. <g cis e>-. r |
	r4 <g cis! e>8\f r r4 |
	r4 <g cis! e>8\p r r4 |
	R2. |
	R2. | % 4.6
	
	\key d \major
	\once\override TextScript #'padding = #'3.0
	\grace {s8^\markup{\dynamic p \italic "grazioso"}} <d d,>4\sustainDown <fis a d> \once\override Staff.SustainPedalLineSpanner #'padding = #'2.0 <fis a d>\sustainUp |
	<< {\stemDown fis2.} \\ {s4 <a d> <a d>} >> |
	e4-. <a cis> <a cis> |
	a,4 <a' cis> <a cis> |
	d,4 <fis a d> <fis a d> |
	<< {\stemDown e2.} \\ {s4 <gis d'> <gis d'>} >> | % 5.1
	a,4 <e' a cis> <e a cis> |
	a,4 <e' a cis>8 r r4 |
	<d d,>4\sustainDown <fis a d> \once\override Staff.SustainPedalLineSpanner #'padding = #'2.0 <fis a d>\sustainUp |
	<< {\stemDown fis2.} \\ {s4 <a d> <a d>} >> |
	g4-. <b d> <b d> |
	<< {\stemDown e,2.} \\ {s4 <g bes d> <g bes d>} >> |
	a,4\sustainDown <fis' a d> <fis a d>\sustainUp | % 5.2
	a,4\sustainDown <g' a cis> <g a cis> |
	d4 <fis a d> <fis a d> |
	<d d'>4-.-^ r r |
	<fis fis,>4\sustainDown <fis ais cis> <fis ais cis> |
	b,4 <fis' b d> <fis b d> |
	<< {cis2.} \\ {cis2.} \\ {s4 \stemDown <eis b'>4 <eis b'>} >> |
	fis,4 <cis' fis ais> <cis fis ais> | % 5.3
	<fis fis,>4 <fis ais cis> <fis ais cis> |
	b,4 <fis' b d> <fis b d> |
	<< {cis2.} \\ {cis2.} \\ {s4 \stemDown <eis b'>4 <eis b'>} >> |
	\once\override TextScript #'padding = #'3.0
	fis,4-.^\markup{\dynamic pp \italic " lusingando"}\sustainDown cis'( <fis ais>)\sustainUp |
	fis,4-.\sustainDown cis'( <eis b'>)\sustainUp |
	fis,4-.\sustainDown cis'( <fis ais>)\sustainUp | % 5.4
	fis,4-.\sustainDown cis'( <eis b'>)\sustainUp |
	fis,4-.\sustainDown cis'( <fis ais>)\sustainUp |
	fis,4-.\sustainDown cis'( <eis b'>)\sustainUp |
	fis,4-.\sustainDown cis'( <fis ais>)\sustainUp |
	fis,4-.\sustainDown cis'( <eis b'>)\sustainUp |
	fis,4-.\sustainDown r <cis' fis ais> |
	fis,4-. r <cis' fis ais>\sustainUp | % 5.5
	fis,4-. r <cis' fis a!>-. |
	fis,4-. r <cis' fis a>-. |
	<e! e,!>8-. r r4 r |
	<a, a,>8-. r r4 r |
	s2. |
	s2. | % 5.6
	\once\override TextScript #'padding = #'3.0
	\grace {s8^\markup{\dynamic p \italic "grazioso"}} <d d,>4\sustainDown <fis a d> \once\override Staff.SustainPedalLineSpanner #'padding = #'2.0 <fis a d>\sustainUp |
	<< {\stemDown fis2.} \\ {s4 <a d> <a d>} >> |
	e4-. <a cis> <a cis> |
	a,4 <a' cis> <a cis> |
	d,4 <fis a d> <fis a d> |
	<< {\stemDown e2.} \\ {s4 <gis d'> <gis d'>} >> | 
	a,4 <e' a cis> <e a cis> | % 6.1
	a,4 <e' a cis>8 r r4 |
	<d d,>4\sustainDown <fis a d> \once\override Staff.SustainPedalLineSpanner #'padding = #'2.0 <fis a d>\sustainUp |
	<< {\stemDown fis2.} \\ {s4 <a d> <a d>} >> |
	g4-. <b d> <b d> |
	<< {\stemDown e,2.} \\ {s4 <g bes d> <g bes d>} >> |
	a,4\sustainDown <fis' a d> <fis a d>\sustainUp | 
	a,4\sustainDown <g' a cis> <g a cis> | % 6.2
	d4 <fis a d> <fis a d> |
	<d d'>4-.-^ r r |
	<fis fis,>4\sustainDown <fis ais cis> <fis ais cis> |
	b,4 <fis' b d> <fis b d> |
	<< {cis2.} \\ {cis2.} \\ {s4 \stemDown <eis b'>4 <eis b'>} >> |
	fis,4 <cis' fis ais> <cis fis ais> | 
	<fis fis,>4 <fis ais cis> <fis ais cis> | % 6.3
	b,4 <fis' b d> <fis b d> |
	<< {cis2.} \\ {cis2.} \\ {s4 \stemDown <eis b'>4 <eis b'>} >> |
	fis,4-. <cis' fis ais> <cis fis ais> |
	b4 <fis' b d> <fis b d> |
	fis,4 <fis' ais cis> <fis ais cis> |
	b,4 <fis' b d> <fis b d> |
	fis,4 <fis' ais cis> <fis ais cis> | % 6.4
	a,!4\sustainDown <e' a cis> <e a cis>\sustainUp |
	e,4 <e' gis b> <e gis b> |
	a,4\sustainDown <e' a c> <e a c>\sustainUp |
	e,4\sustainDown <e' gis b> r4\sustainUp |
	<e e,>4-.\sustainDown <e a c> r\sustainUp |
	<e e,>4-.\sustainDown <e b' d>-. r\sustainUp  |
	<e e,>4-.\sustainDown <e a c>-. r\sustainUp | % 6.5
	<e e,>4-.\sustainDown <e gis b>-. r\sustainUp |
	<e e,>4-.\sustainDown <e a c> r\sustainUp |
	<e e,>4-.\sustainDown <e b' d>-. r\sustainUp  |
	<e e,>4-.\sustainDown <e a c>-. r\sustainUp |
	\once\override TextScript #'padding = #'1.5
	<e e,>4-.^\markup{\dynamic sf \italic "agitato"} r <a b d>-^ |
	<gis b d>4-. r <a b d>-^ |
	<gis b d>4-. r <a b d>-^ | % 6.6
	<gis b d>4-. r <a b d>-^ |
	<gis b d>4 <f f,>8-.-^[ r <e e,>-.-^] r |
	<d d,>8-.-^[ r <e e,>-.-^ r <d d,>-.-^] r |
	<c c,>8-.-^[ r <d d,>-.-^ r <c c,>-.-^] r |
	<b b,>8-.-^[ r <c c,>-.-^ r <b b,>-.-^] r |
	\key c \major
	<a a,>4\sustainDown \once\override TextScript #'padding = #'2.0 <e' a c>^\markup{\italic "marcato."} \once\override Staff.SustainPedalLineSpanner #'padding = #'4.0 <e a c>\sustainUp |
	a,\sustainDown <e' a c> <e a c>\sustainUp |
	gis,\sustainDown <e' b' d> <e b' d>\sustainUp | % 7.1
	e,4\sustainDown <e' gis d'> <e gis d'>\sustainUp |
	a,4\sustainDown <e' a c> <e a c>\sustainUp |
	<< {c2.} \\ {c2.} \\ {\stemDown s4 <e a> <e a>} >> |
	<< {d2.} \\ {d2.\sustainDown} \\ {\stemDown s4 <f bes> <f bes>\sustainUp} >> |
	<< {dis2.} \\ {dis2.} \\ {\stemDown s4 <fis a c> <fis a c>} >> |
	<e b'>4 r r |
	<a, a,>4\sustainDown <e' a c> \once\override Staff.SustainPedalLineSpanner #'padding = #'4.0 <e a c>\sustainUp |
	gis,\sustainDown <e' b' d> <e b' d>\sustainUp | 
	e,4\sustainDown <e' gis d'> <e gis d'>\sustainUp | % 7.2
	a,4\sustainDown <e' a c> <e a c>\sustainUp |
	<< {c2.} \\ {c2.} \\ {\stemDown s4 <e a> <e a>} >> |
	<< {e2.} \\ {e2.} \\ {\stemDown s4 <a c> <a c>} >> |
	<< {e2.} \\ {e2.} \\ {\stemDown s4 <gis d'> <gis d'>} >> |
	a,4\sustainDown <e' a c> <e a c>\sustainUp |
	<< {c2.} \\ {c2.} \\ {\stemDown s4 <e a> <e a>} >> |
	<< {e2.} \\ {e2.} \\ {\stemDown s4 <a c> <a c>} >> |
	<e a e'>4-. <e gis e'>-. r |
	\once\override TextScript #'padding = #'1.0
	<e a e'>4-.^\markup{\italic "cres ed accelerando"} <e gis e'>-. r |
	<e a e'>4-. <e gis e'>-. <e a e'>-. | % 7.3
	<e gis e'>4-. <e a e'>-. <e gis e'>-. |
	<e e'>4-.^\markup{\dynamic ff \italic " strepitoso"}\sustainDown <dis dis'>-. <d d'>-. |
	<cis cis'>-. <c c'>-. <b b'>-. |
	<ais ais'>-. <a a'>-. <gis gis'>-. |
	<g! g'!>-. <fis fis'>-. <f f'>-.\sustainUp |
	<e e'>4-.\sustainDown^\ff r <e' e'>4-. |
	<e e'>-.-^ r \once\override TextScript #'padding = #'1.0 <e e'>-.\sustainUp^\markup{\italic "dim e poco riten"}  |
	<e e'>-.-^ r <e e'>-.|
	<e e'>-. r <e e'>-. | % 7.4
	\once\override TextScript #'padding = #'2.5
	c4^\markup{\dynamic p \italic " cantabile"} <bes' c e> <bes c e> |
	c,4 <bes' c e> <bes c e> |
	c,4\sustainDown <a' c f> <a c f>\sustainUp |
	c,4 <a'c f> <a c f> |
	c,4\sustainDown <bes' c e> <bes c e>\sustainUp |
	c,4 <bes' c e> <bes c e> |
	c,4 <a'c f> <a c f> |
	c,4 <a'c f> <a c f> |
	c,4\sustainDown <bes' c e> <bes c e>\sustainUp |
	c,4 <bes' c e> <bes c e> |
	c,4\sustainDown <a' c f> <a c f>\sustainUp | % 7.5
	c,4 <a'c f> <a c f> |
	c,4\sustainDown <bes' c e> <bes c e>\sustainUp |
	c,4 <bes' c e> <bes c e> |
	f4 <a c f> <a c f> |
	<< {f2.} \\ {f2.} \\ {\stemDown s4 <a cis> <a cis>} >> |
	<< {f2.} \\ {f2.} \\ {\stemDown s4 <a d> <a d>} >> |
	<< {f2.} \\ {f2.} \\ {\stemDown s4 <a cis> <a cis>} >> |
	<< {f2.} \\ {f2.} \\ {\stemDown s4 <a c!> <a c>} >> |
	<< {f2.} \\ {f2.} \\ {\stemDown s4 <a cis> <a cis>} >> |
	<< {f2.} \\ {f2.} \\ {\stemDown s4 <a d> <a d>} >> |
	<< {f2.} \\ {f2.} \\ {\stemDown s4 <a c! dis> <a c dis>} >> | % 7.6
	\key a \major
	<< {e2.} \\ {e2.\sustainDown} \\ {\grace {s8} \stemDown s4 <a cis! e> <a cis e>\sustainUp} >> |
	<< {e2.} \\ {e2.\sustainDown} \\ {\stemDown s4 <a cis! e> \once\override Staff.SustainPedalLineSpanner #'padding = #'2.0 <a cis e>\sustainUp} >> |
	<< {e2.} \\ {e2.\sustainDown} \\ {\stemDown s4 <b' d> <b d>} >> |
	<< {e,2.} \\ {e2.} \\ {\stemDown s4 <b' d> \once\override Staff.SustainPedalLineSpanner #'padding = #'2.0 <b d>\sustainUp} >> |
	<< {e,2.} \\ {e2.\sustainDown} \\ {\stemDown s4 <a cis> <a cis>\sustainUp} >> |
	<< {e2.} \\ {e2.} \\ {\stemDown s4 <a cis> <a cis>} >> |
	<< {e2.} \\ {e2.\sustainDown} \\ {\stemDown s4 <b' d> <b d>} >> |
	<< {e,2.} \\ {e2.} \\ {\stemDown s4 <b' d> \once\override Staff.SustainPedalLineSpanner #'padding = #'2.0 <b d>\sustainUp} >> | % 8.1
	<< {a2.} \\ {a2.} \\ {\stemDown s4 <cis e> <cis e>} >> |
	<< {g2.} \\ {g2.} \\ {\stemDown s4 <a cis e> <a cis e>} >> |
	<< {fis!2.} \\ {fis2.} \\ {\stemDown s4 <a dis> <a dis>} >> |
	<< {f2.} \\ {f2.} \\ {\stemDown s4 <a d!> <a d>} >> |
	e4 <a cis! e> <a cis e> |
	e4 <a cis e> <a cis e> |
	e4 <gis e'> <a e'> |
	e4 <cis' e> <b e> |
	<< {a2.} \\ {a2.} \\ {\stemDown s4 <cis e> <cis e>} >> |
	<< {g2.} \\ {g2.} \\ {\stemDown s4 <a cis e> <a cis e>} >> | % 8.2
	<< {fis!2.} \\ {fis2.} \\ {\stemDown s4 <a dis> <a dis>} >> |
	<< {f2.} \\ {f2.} \\ {\stemDown s4 <a d!> <a d>} >> |
	<e a cis e>4\sustainDown r r |
	<e a cis e>4 r r\sustainUp |
	<e a cis e>4-.\sustainDown <e a cis e>-. <e a cis e>-. |
	<e a cis e>4-. <e a cis e>-. <e a cis e>-.\sustainUp |
	<f f'>2\sustainDown <d d'>4-. |
	<b b'>2 <gis! gis'!>4-. |
	<f f'>2 <d d'>4-. |
	<b b'>2 <gis! gis'!>4-.\sustainUp | % 8.3
	<a a'>2.\sustainDown ~ |
	<a a'>4-. <cis cis'>-. <d d'>-. |
	<dis dis'>-. <e e'>-. <eis eis'>-. |
	<fis! fis'!>-. <g g'>-. <gis gis'>-. |
	<a a'>2.\sustainDown ~ |
	<a a'>4-.\sustainUp <cis cis,>-. <d d,>-. |
	<dis dis,>-. <e e,>-. <eis eis,>-. |
	<fis! fis,!>-. <g g,>-. <gis gis,>-. |
	<a a,>2.\sustainDown ~ |
	<a a,>4-.\sustainUp <cis, cis,>-. <d d,>-. | % 8.4
	<dis dis,>-. <e e,>-. <eis eis,>-. |
	<fis! fis,!>-. <g g,>-. <gis gis,>-. |
	<a a,>4-.-^ cis,-. e-. |
	<a a,>4-.-^ cis,-. e-. |
	<a a,>4-.-^ cis,-. e-. |
	<a a,>4-.-^ cis,-. e-. |
	<a a,>4-.-^ r r |
	<cis a e>-. r r |
	<a a,>4-.-^ r r |
	<cis a e>-. r r |
	\grace {s32\sustainDown s16} <a, a,>4-.-^ r r\sustainUp |
}

\score {
     \new PianoStaff <<
           \set PianoStaff.instrumentName = "PIANO  "
           \new Staff = "upper" \upper
           \new Staff = "lower" \lower
     >>
     \layout {}
        
     \midi {}
     }
\paper{
	print-page-number = ##t 
	ragged-last-bottom = ##f
    
}
