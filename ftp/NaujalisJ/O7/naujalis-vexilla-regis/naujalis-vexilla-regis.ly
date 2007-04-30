\version "2.11.22"
#(set-global-staff-size 18)
%#(ly:set-option 'point-and-click #f)

\paper {
	%#(set-paper-size "letter")
	%#(define fonts (make-pango-font-tree "Utopia" "Luxi Sans" "Luxi Mono" 0.9))
	left-margin = 0.5\in
	line-width = 7.5\in
	head-separation = 0\in
	bottom-margin = 0.25\in

	bookTitleMarkup = \markup {
		\column {
			\fill-line { \override #'(font-size . 4) \bold \fromproperty #'header:title }
			\fill-line {
				""
				\override #'(baseline-skip . 2)
				\column {
					\right-align { \line { \fromproperty #'header:composer \fromproperty #'header:composerdates }}
					\right-align { \fromproperty #'header:opus }
				}
			}
			""
		}
	}
	scoreTitleMarkup = ##f
}

\header {
	title = "Vexilla Regis Prodeunt"
	composer = "Juozas Naujalis"
	composerdates = "(1869-1934)"
	opus = "Op. 7, No. 3"

	mutopiatitle = "Vexilla Regis Prodeunt"
	mutopiacomposer = "NaujalisJ"
	mutopiapoet = ""
	mutopiaopus = "Op. 7, No. 3"
	mutopiainstrument = "Voice (SATB)"
	date = "19th century"
	source = "C. Witanowski, 1901"
	style = "Romantic"
	copyright = "Public Domain"
	maintainer = "Daniel Johnson"
	maintainerEmail = "il.basso.buffo at gmail dot com"
	lastupdated = "2007/Apr/29"
 footer = "Mutopia-2007/04/30-971"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

sopNotes = {
	b'2 b'2 b'2 | b'1 a'2 | g'1 g'2 | fis'1. | a'2 a'2 b'2 | c''1 b'2 | \break
	a'1 fis'2 | g'1. | g'2 b'2 c''2 | d''1 g'2 | c''2( b'2) a'2 | a'1. | \break
	b'2 e''2 d''2 | b'1 a'2 | g'1 fis'2 | g'1. \bar "||" g'1. | g'1.^\fermata \bar "|."
}

textI = {
	\set stanza = "1."
	\lyricmode { Vex -- il -- la re -- gis pro -- de -- unt, ful -- get cru -- cis my -- }
	\set stanza = "1."
	\lyricmode { ste -- ri -- um, qua vi -- ta mor -- tem per -- tu -- lit, }
	\set stanza = "1."
	\lyricmode { et mor -- te vi -- tam pro -- tu -- lit. }
}
textII = {
	\set stanza = "2."
	\lyricmode { Quo vul -- ne -- ra -- tus in -- su -- per quæ vul -- ne -- ra -- ta }
	\set stanza = "2."
	\lyricmode { lan -- ce -- æ mu -- cro -- ne di -- ro cri -- mi -- num, }
	\set stanza = "2."
	\lyricmode { ut nos la -- va -- ret cri -- mi -- ne. }
}
textIII = {
	\set stanza = "3."
	\lyricmode { Im -- ple -- ta sunt, quæ con -- ci -- nit Da -- vid fi -- de -- li }
	\set stanza = "3."
	\lyricmode { car -- mi -- ne, di -- cen -- do na -- ti -- o -- ni -- bus: }
	\set stanza = "3."
	\lyricmode { re -- gna -- vit a li -- gno De -- us. }
}
textIV = {
	\set stanza = "4."
	\lyricmode { Ar -- bor de -- co -- ra~et ful -- gi -- da, or -- na -- ta Re -- gis }
	\set stanza = "4."
	\lyricmode { pur -- pu -- ra, e -- lec -- ta di -- gno sti -- pi -- te }
	\set stanza = "4."
	\lyricmode { tam san -- cta mem -- bra tan -- ge -- re. }
}
textV = {
	\set stanza = "5."
	\lyricmode { Be -- a -- ta, cu -- jus bra -- chi -- is pre -- tium pe -- pen -- dit }
	\set stanza = "5."
	\lyricmode { sæ -- cu -- li, sta -- te -- ra fa -- cta cor -- po -- ris, }
	\set stanza = "5."
	\lyricmode { tu -- lit -- que præ -- dam tar -- ta -- ri. }
}
textVI = {
	\set stanza = "6."
	\lyricmode { O crux a -- ve, spes u -- ni -- ca, hoc Pas -- si -- o -- nis }
	\set stanza = "6."
	\lyricmode { tem -- po -- re: pi -- is a -- dau -- ge gra -- ti -- am, }
	\set stanza = "6."
	\lyricmode { re -- is -- que de -- le cri -- mi -- na. }
}
textVII = {
	\set stanza = "7."
	\lyricmode { Te fons sa -- lu -- tis Tri -- ni -- tas, col -- lau -- det o -- mnis }
	\set stanza = "7."
	\lyricmode { spi -- ri -- tus: qui -- bus cru -- cis vi -- cto -- ri -- am }
	\set stanza = "7."
	\lyricmode { lar -- gi -- ris, ad -- de præ -- mi -- um. A -- men. }
}

altNotes = {
	g'2 g'2 g'2 | g'2( fis'2) e'2 | e'2( d'2) cis'2 | d'1. | d'2 e'2 g'2 | a'2( fis'2) g'2 |
	fis'2.( e'4) dis'2 | e'1. | e'2 e'2 e'2 | d'1 b2 | e'1 e'2 | d'1. |
	d'2 g'2 a'2 | g'2( fis'2) e'2 | e'1 d'2 | d'1. | e'1. | d'1. |
}

tenNotes = {
	d'2 e'2 b2 | d'1 c'2 | b1 a4( g) | a1. | fis2 a2 d'2 | e'2( c'2) d'2 |
	c'1 b2 | b1. | b2 g2 g2 | g2( fis2) g2 | g1 g2 | fis1. |
	g2 b2 d'2 | d'1 c'2 | b2( a2) a2 | b1. | c'1. | b1. |
}

basNotes = {
	g2 e2 e2 | b,1 c2 | e1 e2 | d1. | d2 c2 b,2 | a,1 g,2 |
	a,1 b,2 | e1. | e2 e2 e2 | b,1 e2 | c1 cis2 | d1. |
	g2 e2 fis2 | g2( b,2) c2 | e2( c2) d2 | g,1. | c1. | g,1._\fermata |
}

\score {
	\new ChoirStaff <<
		\new Staff = trebStaff {
			\set Staff.midiInstrument = "oboe"
			\key g \major \time 3/2
			\clef treble
			<<
				\new Voice = sopVoice { \voiceOne \sopNotes }
				\new Voice { \voiceTwo \altNotes }
			>>
		}
		\new Lyrics \lyricsto sopVoice { \textI }
		\new Lyrics \lyricsto sopVoice { \textII }
		\new Lyrics \lyricsto sopVoice { \textIII }
		\new Lyrics \lyricsto sopVoice { \textIV }
		\new Lyrics \lyricsto sopVoice { \textV }
		\new Lyrics \lyricsto sopVoice { \textVI }
		\new Lyrics \lyricsto sopVoice { \textVII }
		\new Staff = bassStaff {
			\set Staff.midiInstrument = "oboe"
			\key g \major \time 3/2
			\clef bass
			<<
				\new Voice { \voiceOne \tenNotes }
				\new Voice { \voiceTwo \basNotes }
			>>
 		}
 	>>
	\layout {
		\context {
			\Score
			\remove Bar_number_engraver
			\override NonMusicalPaperColumn #'line-break-system-details = #'((alignment-offsets . ( 0 -8 -10.5 -13 -15.5 -18 -20.5 -23 -29.5 )))
		}
	}
	\midi {
		\context {
			\Voice
			\remove Dynamic_performer
		}
		\context {
			\Score tempoWholesPerMinute = #(ly:make-moment 90 2)
		}
	}
}
