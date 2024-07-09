\version "2.24.2"
\include "articulate.ly"
\header {
	tagline = ##f
	title = \markup \center-column {\larger "Maiglöckchen" \smaller "Idylle" " " " "}
	opus = \markup \center-column \smaller \bold {"Johann Kafka. Op. 92"}
	mutopiatitle = "Maiglöckchen"
	mutopiacomposer = "KafkaJN"
	mutopiaopus = "Op. 92"
	mutopiainstrument = "Piano"
	source = "C. F. W. Siegel, Leipzig"
	sourceurl = "https://imslp.org/wiki/Maigl%C3%B6ckchen%2C_Op.92_(Kafka%2C_Johann_Nepomuk)"
	style = "Romantic"
	license = "Public Domain"
	maintainer = "Sascha Oppermann"
	}

\paper {
	top-margin = 2.5\cm
	bottom-margin = 2.5\cm
	left-margin = 1.5\cm
	right-margin = 1.5\cm
	page-count = 7
	}


\markup {
	\fill-line {
		\hspace #1 \override #'(baseline-skip . 2)
		\column {
			\line { \bold \teeny { Maiglöckchen läutet in dem Thal, } }
			\line { \bold \teeny { Das klingt so hell und fein, } }
			\line { \bold \teeny { So kommt zum Reigen allzumal, } }
			\line { \bold \teeny { Ihr lieben Blümelein! } }
		}
		\hspace #2 \override #'(baseline-skip . 2)
		\column {
			\line { \bold \teeny { Die Blümchen, blau und gelb und weiss, } }
			\line { \bold \teeny { Die kommen all' herbei, } }
			\line { \bold \teeny { Vergissmeinnicht und Ehrenpreis, } }
			\line { \bold \teeny { Zeitlos' und Akelei. } }
		}
		\hspace #1
	}
}

\markup {
	\fill-line {
		\hspace #1 \override #'(baseline-skip . 2)
		\column {
			\null
			\null
			\line { \bold \teeny { Da hält's auch mich nicht mehr zu Haus, } }
			\line { \bold \teeny { Maiglöckchen ruft auch mich, } }
			\line { \bold \teeny { Die Blümchen gehn zum Tanz hinaus, } }
			\line { \bold \teeny { Zum Tanze geh' auch ich. } }
			\null
		}
		\hspace #1
	}
}

\markup {
	\fill-line {
		\hspace #1 \override #'(baseline-skip . .5)
		\column {
			\null
			\line { \italic \teeny { Hoffmann von Fallersleben } }
			\null
		}
		\hspace #1
	}
}


dolce = \markup { \italic dolce }
ritardando = \markup { \italic ritard. }
diminuendo = \markup { \italic dimin. }
risoluto = \markup { \italic risoluto }
leggiero = \markup { \italic leggiero }
rinforzando = #(make-dynamic-script "rf")
dolcissimo = \markup { \italic dolcissimo }
piu = \markup { \italic più }
espressivo = \markup { \italic espressivo }

oben = \relative c'' {
	\clef treble \time 4/4 \key f \major
	\override TupletBracket.tuplet-slur = ##t
	\partial 16
	c16 \p ^\markup { \halign #0 \bold {Andante ad libitum} }
	c8._\dolce d16 c8. e16 g8 \times 2/3 {fis16 ( g a} g8\staccato ) r16 c,16
	c8. d16 c8. f16 <a c>8 \times 2/3 {<gis b>16_\ritardando ( <a c> <bes d>} <a c>8\staccato ) r16 cis16
	d8.\accent ^\markup { \halign #9 \bold {a tempo} } _\mf \times 2/3 {c32 ( bes a} g8-. ) r16 c c8.-> \times 2/3 {bes32 ( a g} f8-. ) r16 bes \break
	
	bes8.-> \times 2/3 {a32 ( g f} e8-. ) r16 a a8.-> \times 2/3 {g32 ( f e} d8-. ) r16 d\p
	d8-. \times 2/3 {d16 ( cis d} f8-. ) \times 2/3 {f16 ( e d )} d8-. \times 2/3 {c16 ( f a} c8-. ) r
	des,-. \times 2/3 {c16 ( e g} c8-. ) r r4 \times 2/3 {c,,8\p_\risoluto c c} \break

	c r \times 2/3 {<c e>\cresc <c e> <c e>} <c e> r \times 2/3 {<c e g> <c e g> <c e g>}
	<c e g> r \times 2/3 {<c e g bes> <c e g bes> <c e g bes>} <c e g bes> r \times 2/3 {<e bes' d>\f <e bes' d> <e bes' d>}
	<e bes' d> r \times 2/3 {<e bes' des>\> <e bes' des> <e bes' des>} <e bes' des> r  \times 2/3 {<e bes' c> <e bes' c> <e bes' c>\!} 
	<e bes' c> r\fermata \tuplet 7/4 {c'16_\leggiero ( bes g e g bes d} c8-. ) r \tuplet 7/4 {c'16\pp ( bes g e g bes d} \break

	c8-. ) r \ottava #1 \tuplet 7/4 {c'16\ppp ( bes g e g bes d} c8-. ) \ottava #0 r r r16 <a, d>\f
	<a d>8.\> <g c>16 <f bes>8 <e a> <d g>_\ritardando <c f> <bes e> <a d>\!
	\times 2/3 {<g c> ( <f bes> <e a> )} <d f g>\p r <c e g c>\arpeggio r r\fermata \bar "||" \break

	%%%%%%%%%%%%%%%%
	%%%% Seite 2 %%%
	%%%%%%%%%%%%%%%%

	\time 3/4
	\partial 8
	c'\p ^\markup { \halign #0 \bold {Molto moderato} }
	c\marcato _\dolce ( a' f a, c d\prall )
	c-^ ( a' f a, c d\prall )
	c-^ ( a' g bes, c e )
	d' ( c a f\prall e d )
	c-^ ^\markup { \halign #0 \bold {a tempo} } ( a' f a, c d\prall ) \break

	c-^ ( a' f a, c d\prall )
	c-^\> ( d'e, bes' bes, e\! )
	f4. c8\noBeam c c 
	c-^ ( a' f a, c d\prall )
	c-^ ( a' f a, c d\prall ) \break

	c-^ ( a' f a, c d\prall )
	d' ( c a f\prall e d )
	c-^ ^\markup { \halign #0 \bold {a tempo} } ( a' f a, c d\prall )
	c-^ ( a' f a, c d\prall )
	c-^ \> ( d' e, bes' bes, e\! ) \break

	f4. \ottava #1 f8-.\noBeam f-. f-.
	<d f>-._[ \< <f bes>-. <bes d>-. <d f>-. <c e>-. <bes d>-.\!]
	<f a d>-.-^_[ c'16\p ( b] c8-. ) <c a'>-.\pp <c a'>-. <c a'>-.
	<c a'>-.-^ g'16\p ( fis g8-. ) <e bes'>-.\pp <e bes'>-. <e bes'>-.
	<e bes'>-.-^ a16\p ( gis a8-. ) <a f'>-.\pp <a f'>-. <a f'>-. \break

	<d,, f>-._[ \< <f bes>-. <bes d>-. <d f>-. <c e>-. <bes d>-.\!]
	<f a d>-.-^_[ c'16\p ( b] c8-. ) <c a'>-.\pp <c a'>-. <c a'>-.
	<c a'>-.-^ g'16\p ( fis g8-. ) <bes e>-.\pp <bes e>-. <bes e>-.
	<a f'> r r f,-.\p\noBeam f-. f-.
	<d f>-._[ \< <f bes>-. <bes d>-. <d f>-. <c e>-. <bes d>-.\!] \break \pageBreak

	%%%%%%%%%%%%%%%%
	%%%% Seite 3 %%%
	%%%%%%%%%%%%%%%%

	<f a d>-.-^_[ c'16\p ( b] c8-. ) <c a'>-.\pp <c a'>-. <c a'>-.
	<c a'>-.-^ g'16\p ( fis g8-. ) <e bes'>-.\pp <e bes'>-. <e bes'>-.
	<e bes'>-.-^ a16\p ( gis a8-. ) <a f'>-.\pp <a f'>-. <a f'>-.
	<d,, f>-.\p_[ \< <f bes>-. <bes d>-. <d f>-. <c e>-. <bes d>-.\!]
	<f a d>-.-^_[ c'16\p ( b] c8-.\< ) <a c>-. <a c>-. <b d>-. \break

	<c e>-.-^\mf_[ <c e>16 ( e,] <c' e>8-._[ ) <e, c' e>-. <e gis e'>-. <e gis e'>-.]
	<e a c>-.-^\rinforzando <c'' e>16\pp ( e, <c' e>8-. ) <e, c' e>-. <e gis e'>-. <e gis e'>-.
	<e a c>-. r r c-.\noBeam \p c-._\ritardando f-.
	<g, bes f'>-.-^ ^\markup { \halign #0 \bold {a tempo} } <bes e>16_\dolcissimo ( g <bes e>8-._[ ) <bes e>-. <e, bes'>-. <bes' d>-.]
	d-.-^_[ <a c>16 ( f] <a c>8-. ) <a c>-. <a c>-. <a f'>-. \break

	f'-.-^_\markup { \italic cresc. } <a, e'>16 ( g <a e'>8-. ) <g a e'>-. <g a e'>-. <g a e'>-.
	g'-.-^ <a, f'>16 ( f <a f'>8-. ) <a f'>-. <f a>-. <a f'>-.
	e'-.-^ <bes d>16 ( g <bes d>8-. ) <bes d>-. <g bes>-. <bes d>-.
	d-.-^_[ <a c>16 ( f] <a c>8-. ) <a c>-. <a c>-. <c a'>-.
	a'-.-^ g16 ( bes, g'8-. ) <bes, g'>-. <g e'>-. <g e'>-. \break

	<a f'>-. r r c-.\noBeam c-. f-.
	f-.-^ <bes, e>16 ( g <bes e>8-._[ ) <bes e>-. <e, bes'>-. <bes' d>-.]
	d-.-^_[ <a c>16 ( f] <a c>8-. ) <a c>-. <a c>-. <a f'>-.
	f'-.-^ <a, e'>16_\markup { \italic cresc. }  ( g <a e'>8-. ) <g a e'>-. <g a dis>-. <g a e'>-.
	<bes g' bes>-.-^\f\< <f' a>16 ( a, <f' a>8-. ) <a, f' a>-. <gis e' gis>-. <a f' a>-. \break

	<e' c' e>-.-^\ff <bes' d>16 ( d, <bes' d>8-. ) <d, bes' d>-. <cis a' cis>-. <d bes' d>-.
	<d bes' d>-.-^ <a' c>16 ( c, <a' c>8-. ) <c, a' c>-. <b gis' b>-. <c a'c>-.
	<d bes' d>-.-^ <bes' d>16 ( d, <bes' d>8-. ) <d, bes' d>-._\ritardando <g, c e>-. <g c e>-.
	<a f'>-. \ottava #0 r \tuplet 7/4 {f,16-1\< ( a c es-4 f-1 a c} es-.\! ) r\fermata  \bar "||" \break 

	%%%%%%%%%%%%%%%%
	%%%% Seite 4 %%%
	%%%%%%%%%%%%%%%%

	\key bes \major  \ottava #1
	\partial 8
	f,8 ^\markup { \halign #1 \bold {Piu mosso} }
	<f bes d>\mf <f bes d> <f bes d> <f bes d> <f bes d> <f bes d>
	<f bes d> <f bes d> <f a es'> <f a es'> <es f a> <es f a>
	<d f bes> <d f bes> <d f bes> <d f bes> <d f bes> <d f bes>
	<d f bes> <d f bes> <d f c'> <d f c'> <d bes' d> <d bes' d>
	<f a es'>^[ <f a es'> <f a es'> <f a es'> <f a es'> <f a es'>]
	<f bes d>^[ <f bes d> <f bes f'> <f bes f'> <f bes d> <f bes d>] \break

	<f a c> <f a c> <f a c> <f a c> <f a c> <f a c>
	<f a c>\< <f a c> <f a c> <f a c> <f a cis> <f a cis>
	<fis d'>\f <fis d'> <fis d'> <fis d'> <fis d'> <fis d'>
	<fis d'> <fis d'> <g e'> <g e'> <a fis'> <a fis'>
	<bes g'> <bes g'> <a fis'> <a fis'> <bes g'> <bes g'>
	<c a'> <c a'> <bes g'> <bes g'> <g es'> <g es'> \break

	<f bes d> <f bes d> <f bes cis> <f bes cis> <f bes d> <f bes d>
	<f a es'> <f a es'> <f a es'> <f a es'>_\ritardando <es f a> <es f a>
	<d f bes>-._[ ^\markup { \bold {a tempo} } <f f'>-. <f f'>-. <f f'>-. <f f'>-. <f f'>-.]
	<f f'>-.\> ( <f e'>-. <f es'>-. <f d'>-. <f c'>-. f-. )
	<f bes d>\mf <f bes d> <f bes d> <f bes d> <f bes d> <f bes d>
	<f bes d> <f bes d> <f a es'> <f a es'> <es f a> <es f a> \break

	<d f bes> <d f bes> <d f bes> <d f bes> <d f bes> <d f bes>
	<d f bes> <d f bes> <d f c'> <d f c'> <d bes' d> <d bes' d>
	<f a es'>^[ <f a es'> <f a es'> <f a es'> <f a es'> <f a es'>]
	<f bes d>^[ <f bes d> <f bes f'> <f bes f'> <f bes d> <f bes d>]
	<f a c> <f a c> <f a c> <f a c> <f a c> <f a c>
	<f a c>\< <f a c> <f a c> <f a c> <f a cis> <f a cis>\! \break

	<fis d'>\f <fis d'> <fis d'> <fis d'> <fis d'> <fis d'>
	<fis d'>_[ <fis d'> <g e'> <g e'> <a fis'> <a fis'>]
	<bes g'> <bes g'> <a fis'> <a fis'> <bes g'> <bes g'>
	<c a'> <c a'> <bes g'> <bes g'> <g es'> <g es'>
	<f bes d> <f bes d> <f bes cis> <f bes cis> <f bes d> <f bes d>
	<f a es'> <f a es'>_\ritardando <f a es'> <f a es'> <es f a> <es f a> \bar "||" \break \pageBreak

	%%%%%%%%%%%%%%%%
	%%%% Seite 5 %%%
	%%%%%%%%%%%%%%%%

	\time 6/8
	<d f bes> ^\markup { \halign #0 \bold {Molto moderato} } r r r4 f8\p
	f4\startTrillSpan ( e16\stopTrillSpan f f'8-. ) r es16 ( d
	c8-. ) bes-. <d f>-. <f bes>-. r r
	f,4\startTrillSpan ( e16\stopTrillSpan f f'8-. ) r es16 ( d
	d8-. ) c-. <es a>-. <a c>-. r r \break

	c,4\startTrillSpan ( b16\stopTrillSpan c g'8-. ) r f-.
	f-. <c es>-. <c es a>-. <a' c es>-. r r
	es4\startTrillSpan ( d16\stopTrillSpan es a8-. ) r g-.
	g-. <d f>-. <f bes d>-. <bes d f>-. r r
	f,-._[ r16 <f bes f'>-.]^\leggiero <f bes f'>-. <f bes f'>-. <f bes es>8-._[ r16 <f bes d>-.] <f bes d>-._[ <f bes d>-.] \break

	<f c'>8-. <f bes>-. <d' f>-. <f bes>-. r r
	f,-._[ r16 <f bes f'>-.] <f bes f'>-. <f bes f'>-. <f bes es>8-._[ r16 <f bes d>-.] <f bes d>-._[ <f bes d>-.]
	<g d'>8-._[ <g b>-. <g c>-.] <c es g c>-. r r
	<g bes cis g'>-._[\f\< r16 <g bes cis g'>-.] <g bes cis g'>-. <g bes cis g'>-. <g bes cis g'>8-. <a a'>-. <bes bes'>-.
	<d f bes d>-._\rinforzando\> <d f bes>-. <d f>-.^\dolce <bes d>-. <f bes>-. <f' bes>-. \break

	<c es a>-._\rinforzando <es g>-.\p <f, d'>-. <a es'>-._\ritardando <a c>-. <a f'>-.
	<d, bes'>-.\p_[ ^\markup { \bold {a tempo} } r16 <f bes f'>-.] <f bes f'>-. <f bes f'>-. <f bes f'>8-._[ r16 <g bes e>-.] <g bes e>-._[ <g bes e>-.]
	<g bes e>8-._[ r16 <f a es'>-.] <f a es'>-. <f a es'>-. <f a es'>8-._[ r16 <f bes d>-.] <f bes d>-._[ <f bes d>-.]
	<f bes d>8-.^[_\decresc r16 <f bes d>-.]\! <f bes d>-. <f bes d>-. <f bes d>8-.^[ r16 <e des'>-.] <e des'>-.^[ <e des'>-.] \break

	<e des'>8-.^[ r16 <es c'>-.] <es c'>-. <es c'>-. <es c'>8-.^[ r16 <d bes'>-.] <d bes'>-.^[ <d bes'>-.]
	<d bes'>8-._\piu^[ r16 <es c'>-._\decresc ] <es c'>-. <es c'>-.\! <es c'>8-.^[ r16_\ritardando <d bes'>-.] <d bes'>-.^[ <d bes'>-.]
	<d bes'>8-.\pp <bes d>-.\> <d f>-. <f bes>-.^[ <bes d>-. <d f>-.] \!
	<f bes>-.\ppp r r <bes, d f bes>-.\arpeggio\ppp \ottava #0 r \bar "||" \break

	%%%%%%%%%%%%%%%%
	%%%% Seite 6 %%%
	%%%%%%%%%%%%%%%%

	\time 3/4 \key f \major
	\partial 8
	c,\p
	c-^_\dolce ( a' f a, c d\prall )
	c-^ ( a' f a, c d\prall )
	c-^ ( a' g bes, c e )
	d' ( c a f\prall_\ritardando e d )
	c-^ ^\markup { \halign #0 \bold {a tempo} } ( a' f a, c d\prall ) \break

	c-^ ( a' f a, c d\prall )
	c-^\> ( d'e, bes' bes, e\! )
	f4. \ottava #1 f8-.\noBeam f-. f-. 
	<d f>-._[\< <f bes>-. <bes d>-. <d f>-. <c e>-. <bes d>-.\!]
	<f a d>-.-^_[ c'16\p ( b] c8-. ) <c a'>-.\pp <c a'>-. <c a'>-. \break

	<c a'>-.-^ g'16\p ( fis g8-. ) <e bes'>-.\pp <e bes'>-. <e bes'>-.
	<e bes'>-.-^ a16\p ( gis a8-. ) <a f'>-.\pp <a f'>-. <a f'>-.
	<d,, f>-.\p_[ \< <f bes>-. <bes d>-. <d f>-. <c e>-. <bes d>-.\!]
	<f a d>-.-^_[ c'16\p ( b] c8-. ) <c a'>-.\pp <c a'>-. <c a'>-.
	<c a'>-.-^ g'16\p ( fis g8-. ) <bes e>-.\pp <bes e>-. <bes e>-. \break

	<a f'>-. \ottava #0 r r4 <c,, c'>8_\espressivo _[ r16 <c c'>]
	<c c'>8-. r r <f f'>-.\noBeam_\leggiero <f f'>-. <f f'>-.
	<e e'>-. r r <d d'>-.\noBeam <d d'>-. <d d'>-.
	<c c'>2.~
	<c c'>4 a'4. ( d8 ) \break

	<c, c'>-. r r <c bes'>-.\noBeam <c bes'>-. <c bes'>-.
	<c fis>-. r r <c g'>-.\noBeam <c g'>-. <c g'>-.
	<f gis b d>2-> <f gis e'>8.->_\ritardando <f gis d'>16
	<f a c>2^\markup { \bold {a tempo} } <c c'>8-._[ r16 <c c'>]
	<c c'>8-. r r <f f'>-.\noBeam <f f'>-. <f f'>-. \break

	%%%%%%%%%%%%%%%%
	%%%% Seite 7 %%%
	%%%%%%%%%%%%%%%%

	<e e'>-. r r <g g'>-.\noBeam <f f'>-. <d d'>-.
	<c c'>2.
	~<c c'>4 <a a'>4.\< <a a'>8\!
	<b f' a>8-.\f r r <b f' g>-.\noBeam_\leggiero <b f' g>-. <b f' g>-. \break

	<e bes' d>-. r r <e bes' c>-.\noBeam\> <e bes' c>-. <e bes' c>-.\!
	<a, f'>-. r r <c a'>-.\noBeam\pp <c a'>-. <c a'>-.
	<a f'>-. r r c-.\noBeam\p c-. c-.
	c-^ ( c' c, bes' c, g' ) \break

	c,-^ ( c' c, a' c, f )
	c-^ ( c'\< c,-^ <bes' d> c,-^ <g' e'>\! )
	<a f'>-.\> <c e>-. <bes d>-. <a c>-. <g bes>-. <f a>-.\!
	c-^ ( c' c, bes' c, g' ) \break

	c,-^ ( c' c, a' c, f )
	c-^ ( c'\< c,-^ <bes' d>_\ritardando c,-^ <g' e'>\! )
	<a f'>-.\rinforzando ^\markup { \halign #1 \bold {a tempo} } r r4 r8 c,
	c-^ ( c'\< _\markup { \italic {molto} \ritardando } c,-^ <bes' d> c,-^ <g' e'>\! ) \break

	<a f'>-._\rinforzando ^\markup { \halign #1 \bold {a tempo} } r r <c a'>-.\noBeam\p <c a'>-. <c a'>-.
	<a f'>-. r r <c a'>-.\noBeam\pp <c a'>-. <c a'>-.
	<a f'>-. r r <c a'>-.\noBeam\ppp _\markup { \italic {molto} \ritardando } <c a'>-. <c a'>-.
	<a f'>-.\ppp r r4^\fermata <c, e g c>8\arpeggio\f ^\markup { \halign #0 \bold {a tempo} } r
	<f a c f>\arpeggio\ff r r4 r

	\bar "|."
}

unten = \relative c' {
	\clef bass \time 4/4 \key f \major
	\partial 16
	r16^\markup { \italic { con Ped. }}
	\clef treble <c e g bes>2. ~<c e g bes>8 r8
	<c f a>2. ~<c f a>8 r8
	<c d fis a>4-> ( <bes d g>8-. ) r <bes c e g>4-> ( <a c f>8-. ) r \clef bass

	<cis, e g bes>2^\diminuendo ( <d f a> )
	<b d f g> <c f a>
	<c e g bes>4^\pp ~<c e g bes>8 r8 r2

	<c, c'>8  r r4 <c c'>8 r r4
	<c c'>8  r r4 <c c'>8 r r4
	<c c'>8  r r4 <c c'>8 r r4
	<c c'>8 r\fermata^\p r4 r2

	r2 r4 r8 r16 \clef treble f'''
	f8. e16 d8 c bes a g f
	\times 2/3 {e ( d c )} bes r \clef bass <c,, c'> r r\fermata \bar "||"

	%%%%%%%%%%%%%%%%
	%%%% Seite 2 %%%
	%%%%%%%%%%%%%%%%

	\time 3/4
	\partial 8
	r^\markup { \italic { con Ped. }}
	f-. a' ( c f c a)
	f,-. a' ( c f c a)
	c,,-. bes'' ( c e c bes )
	f,-. a' ( c f^\ritardando ) <f, gis b d>4->
	f,8-. a' ( c f c a )

	f,-. a' ( c f c a)
	c,,-. bes'' ( c e c bes )
	f,-. a' ( c f c a )
	f,-. a' ( c f c a )
	f,-. a' ( c f c a )

	c,,-. bes'' ( c e c bes )
	f,-. a' ( c f^\ritardando ) <f, gis b d>4->
	f,8-. a' ( c f c a )
	f,-. a' ( c f c a )
	c,,-. bes'' ( c e c bes )

	f,-. a' ( c f c a )
	bes,-. f' ( bes d bes f )
	f,-. a' ( c f c a )
	c,-. bes' ( c e c bes )
	f,-. a' ( c f c a )

	bes,-. f' ( bes d bes f )
	f,-. a' ( c f c a )
	c,-. bes' ( c e c bes )
	f,-. a' ( c f c a )
	bes,-. f' ( bes d bes f )

	%%%%%%%%%%%%%%%%
	%%%% Seite 3 %%%
	%%%%%%%%%%%%%%%%

	f,-. a' ( c f c a )
	c,-. bes' ( c e c bes )
	f,-. a' ( c f c a )
	bes,-. f' ( bes d bes f )
	f,-._[ f' ( a c a f )]

	e,-._[ e' ( a c )] <e, b'>[ ( d' )]
	<a c>-.^[ \clef treble e' ( a c] ) <e, b'>^[ ( d' )]
	<a c>_[ ( e' c a e d] )
	\clef bass <c, c'>-. bes' ( c e c bes )
	f,-. a' ( c f c a )

	a,-. g' ( a cis a g )
	d,-. f' ( a d a f )
	bes,-. bes' ( d g d bes )
	c,-._[ a' ( c f c a] )
	c,,-._[ bes'' ( c e c bes] )

	f,-. a' ( c f c a )
	c,-. bes' ( c e c bes )
	f,-. a' ( c f c a )
	a,-. g' ( a cis a g )
	d,-. f' ( a d a f )

	<bes,, bes'>-. bes'' ( d g d bes )
	<c,, c'>-. a'' ( c f c a )
	<c,, c'>-. bes'' ( c e c bes )
	<f, f'> r <f, f'>4.^\f_\fermata \bar "||"

	%%%%%%%%%%%%%%%%
	%%%% Seite 4 %%%
	%%%%%%%%%%%%%%%%

	\key bes \major
	\partial 8
	r8
	bes' r <f' bes d> r <bes d f> r
	f, r <f' c'> r <c' f> r
	bes, r <f' bes d> r <bes d f> r
	bes, r <f' bes d> r <bes d f> r
	f, r <f' c'> r <c' f> r
	bes, r <f' bes d> r <bes d f> r

	f, r <f' a c> r <a c f> r
	f, r <f' a c> r <a c f> r
	<d,, d'> r <d' fis a c> r <a' c d> r
	<d,, d'> r <d' fis a c> r <a' c d> r
	<g, g'> r  <g' bes d> r <bes d g> r
	<es,, es'> r <es' g c> r <g c es> r

	<f, f'> r <f' bes d> r <bes d f> r
	<f,, f'> r <f'' c'> r <c' f> r
	<bes,, bes'> r r4 r
	<f'' a c es>2.
	bes,8 r <f' bes d> r <bes d f> r
	f, r <f' c'> r <c' f> r

	bes, r <f' bes d> r <bes d f> r
	bes, r <f' bes d> r <bes d f> r
	f, r <f' c'> r <c' f> r
	bes, r <f' bes d> r <bes d f> r
	f, r <f' a c> r <a c f> r
	f, r <f' a c> r <a c f> r

	<d,, d'> r <d' fis a c> r <a' c d> r
	<d,, d'> r <d' fis a c> r <a' c d> r
	<g, g'> r <g' bes d> r <bes d g> r
	<es,, es'> r <es' g c> r <g c es> r
	<f, f'> r <f' bes d> r <bes d f> r
	<f,, f'> r <f'' c'> r <c' f> r \bar "||"

	%%%%%%%%%%%%%%%%
	%%%% Seite 5 %%%
	%%%%%%%%%%%%%%%%

	\time 6/8
	<bes,, bes'>-._[ f'' ( bes d bes f] )
	bes,-5_[ ( f'-3 bes-2 d-1 bes f] )
	bes,_[ ( f' bes d bes f] )
	bes,_[ ( f' bes d bes f] )
	bes,-5_[ ( f'-3 a-2 es'-1 a, f] )

	bes,_[ ( f' a es' a, f] )
	bes,_[ ( f' a es' a, f] )
	bes,_[ ( f' a es' a, f] )
	bes,_[ ( f' bes d bes f] )
	bes,_[ ( f' bes d bes f] )

	bes,_[ ( f' bes d bes f] )
	bes,_[ ( f' bes d bes f] )
	es,-._[ es'( g c g es] )
	e,-._[ <g' bes> ( cis e cis bes] )
	f,-._[ f' ( bes d bes f] )

	f,-._[ f' ( a c a es'] )
	bes,-5 ( f'-3 <bes d> ) bes,-5 ( g'-3 <bes e> )
	bes,-5 ( f'-3 <a es'> ) bes, ( f' <bes d> )
	bes, ( f' <bes d> ) bes, ( g' <bes des> )

	bes, ( f' <a c> ) bes, ( f' <bes d> )
	bes, ( f' <a c> ) bes, ( f' <bes d> )
	bes, ( f' <bes d> ) bes, ( f' <bes d> )
	bes,-. r r <bes f' bes d>-.\arpeggio r \bar "||"

	%%%%%%%%%%%%%%%%
	%%%% Seite 6 %%%
	%%%%%%%%%%%%%%%%

	\time 3/4 \key f \major
	\partial 8
	r
	f-. a' ( c f c a )
	f,-. a' ( c f c a)
	c,,-. bes'' ( c e c bes )
	f,-. a' ( c f ) <f, gis b d>4->
	f,8-. a' ( c f c a )

	f,-. a' ( c f c a )
	c,,-. bes'' ( c e c bes )
	f,-. a' ( c f c a )
	bes,-. f' ( bes d bes f )
	f,-. a' ( c f c a )

	c,-. bes' ( c e c bes )
	f,-. a' ( c f c a )
	bes,-. f' ( bes d bes f )
	f,-. a' ( c f c a )
	c,-. bes' ( c e c bes )

	f,-. a' ( c f c a )
	f,-. a' ( c f c a )
	f,-. bes' ( d f d bes )
	f,-. a' ( c f c a )
	f,-. a' ( c f c a )

	c,-. bes' ( c e c bes )
	c,-. bes' ( c e c bes )
	f,-. gis' ( b f' b, gis )
	f,-. a' ( c f c a )
	f,-. a' ( c f c a )

	%%%%%%%%%%%%%%%%
	%%%% Seite 7 %%%
	%%%%%%%%%%%%%%%%

	f,-. bes' ( d f d bes )
	f,-. a' ( c f  c a )
	f,-. a' ( c f  c a )
	g,-. g' ( b d b g )

	c,-. bes' ( c e c bes )
	f,-. a' ( c f c a )
	f,-. a' ( c f c a )
	c,-. bes' ( c e c bes )

	f,-. a' ( c f c a )
	c,-. bes' ( c e c bes )
	f,-. a' ( c f c a )
	c,-. bes' ( c e c bes )

	f,-. a' ( c f c a )
	c,-. bes' ( c e c bes )
	f,-. a' ( c f c a )
	c,-. bes' ( c e c bes )

	f,-. a' ( c f c a )
	f,-. a' ( c f c a )
	f,-. r r4 r
	r r^\fermata <c' e g c>8\arpeggio r
	<f, a c f>\arpeggio r r4 r
	\bar "|."
}

\pointAndClickOff

\score {
	\new PianoStaff <<
		\set PianoStaff.instrumentName=#"Piano"
		\new Staff = "oben" {\oben}
		\new Staff = "unten" {\unten}
	>>
	\layout {}
}

\score {
	\unfoldRepeats \articulate {
		\new PianoStaff <<
				\new Staff = "oben" {\tempo 4=110 \oben}
				\new Staff = "unten" {\unten}
			>>
		}
	\midi {}
}
