\version "2.11.35"

#(set-global-staff-size 18)
#(ly:set-option 'point-and-click #f)

\paper {
	% We need a font with the Cyrillic "yat" character (U+0463).
	% I wish we had a better free font than DejaVu for this.
	% Adobe's Times Ten Cyrillic is ideal, but not free.
	% Or you could use the version of Times New Roman that ships with Windows Vista.
	#(define fonts (make-pango-font-tree "DejaVu Serif Condensed" "DejaVu Sans Condensed" "DejaVu Sans Mono" 0.9))
	ragged-last-bottom = ##f
	between-system-padding = 0
}

\header {
	title = "„Дѣва днесь“"
	subtitle = "Кондак Рождеству Христову"
	composer = "Д. Бортнянский (1751-1825)"
	
	%mutopia-specific headers:
	mutopiatitle = "Kontakion of Christmas"
	mutopiacomposer = "BortnianskyD"
	mutopiainstrument = "Voice (SATB)"
	date = "18th-19th century"
	source = "Unknown (pre-revolutionary Russian)"
	style = "Romantic"
	copyright = "Public Domain"
	maintainer = "Daniel Johnson"
	maintainerEmail = "il.basso.buffo at gmail dot com"
	lastupdated = "2008/Feb/19"
 footer = "Mutopia-2008/02/19-1323"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

global = {
	\time 2/2 \key c \major
}

sopNotes = \relative c'' {
	\global \clef treble
	%1
	<c e>1( | <b d>2. <c e>4 | <b d>2 <a c>) | <gis b>2 r2 |
	%5
	<a c>2 <b d> | <c e>2 r2 |
	%7
	<c e>2 <b d> | <c e> <d f>( | <c e>2 <b d>4) <b d> | <c e>2. r4 |
	%11
	<b d>2( <c e> | <b d>4 <g b> <a c> <b d>) | <c e>2 <c e>4 r4 |
	%14
	<c e>4( <b d> << \context Voice = sopVoice { \voiceOne e fis) \oneVoice } \\ { c2 } >> | <b g'>1 | <b g'>2 r2 |
	
	%17
	<c e>1( | <b d>2. <c e>4 | <b d>2) <a c> | <gis b>2 r2 |
	%21
	<a c>2( <b d>) | <c e>2 r2 |
	%23
	<c e>2 <b d> | <c e>( <d f> | <c e>2 <b d>4) <b d> | <c e>2. r4 |
	%27
	<b d>2( <c e> | <b d>4 <g b> <a c> <b d>) | <c e>2 <c e>4 r4 |
	%30
	<c e>4( <b d> << \context Voice = sopVoice { \voiceOne e fis) \oneVoice } \\ { c2 } >> | <b g'>1 | <b g'>2 r2 |

	%33
	<c e>1( | <b d>2. <c e>4 | <b d>2) <a c> | <gis b>2 r2 |
	%37
	<a c>2 <b d> | <c e>2 r2 |
	%39
	<c e>2 <b d> | <c e> <d f>( | <c e>4) <c e> <b d>2 | <c e>2. r4 |
	%43
	<b d>2( <c e> | <b d>4 <g b> <a c>) <b d> | <c e>2 <c e>4 r4 |
	%46
	<c e>4( <b d> <c e>) <c fis> | <b g'>1 | <b g'>2 r2 |

	%49
	<c e>1 | <b d>2.( <c e>4 | <b d>2 <a c>) | <gis b>2 r2 |
	%53
	<a c>2 <b d> | <c e>2 r2 |
	%55
	<c e>2 <b d> | <c e> <d f> | <c e>4 <c e> <b d>4. <b d>8 | <c e>2. r4 |
	%59
	<b d>2( <c e> | <b d>4 <g b> <a c>) <b d> | <c e>4. <c e>8 <c e>4 r4 |
	%62
	<c e>4( <b d> <c e>) <c fis> | <b g'>2. <b g'>4 | <b g'>2 r2 |

	%65
	<c e>1 | <b d>2.( <c e>4) | <b d>2( <a c>) | <gis b>2 r2 |
	%69
	<a c>2( <b d>) | <c e>2 <c e>4 r4 |
	%71
	<c e>2 <b d> | <c e>( <d f>) | <c e>2( <b d>2) | <c e>2. r4 |
	%75
	<b d>2( <c e>) | <b d>4( <g b> <a c>) <b d> | <c e>2 r2 |
	%78
	<c e>4( <b d>) <c e> <c fis> | <b g'>2 <c g'>2 | \tieUp \slurDown <d f!>1( ~ | <b d f>2) <b d>2 | <c e>1\fermata \bar "|."
}

altNotes = \relative c'' {
	\global \clef treble
	%1
	g1( ~ | g1 ~ | g2 e) | e2 r2 |
	%5
	e2 g | g2 r2 | g2 g | g2 g ~ |
	%9
	g2. g4 | g2. r4 |
	%11
	g1 ~ | g1 | g2 g4 r4 |
	%14
	a1 | d,1 | d2 r2 |

	%17
	g1 ~ | g1 ~ | g2 e | e2 r2 |
	%21
	e2( g) | g2 r2 |
	%23
	g2 g | g1 ~ | g2. g4 | g2. r4 |
	%27
	g1 ~ | g1 | g2 g4 r4 |
	%30
	a1 | d,1 | d2 r2 |

	%33
	g1 ~ | g1 ~ | g2 e | e2 r2 |
	%37
	e2 g | g2 r2 |
	%39
	g2 g | g2 g ~ | g4 g g2 | g2. r4 |
	%43
	g1 ~ | g2. g4 | g2 g4 r4 |
	%46
	a2. a4 | d,1 | d2 r2 |

	%49
	g1 | g1( ~ | g2 e) | e2 r2 |
	%53
	e2 g | g2 r2 |
	%55
	g2 g | g2 g | g4 g g4. g8 | g2. r4 |
	%59
	g1 ~ | g2. g4 | g4. g8 g4 r4 |
	%62
	a2. a4 | d,2. d4 | d2 r2 |

	%65
	g1 | g1 | g2( e) | e2 r2 |
	%69
	e2( g) | g2 g4 r4 |
	%71
	g2 g | g1 | g1 | g2. r4 |
	%75
	g1 | g2. g4 | g2 r2 |
	%78
	a2 a4 a | d,2 g2 | a1( | g2) g | g1\fermata |
}

tenNotes = \relative c' {
	\global \clef "G_8"
	%1
	<c e>1( | <b d>2. <c e>4 | <b d>2 <a c>) | <gis b>2 r2 |
	%5
	<a c>2 <b d> | <c e>2 r2 | <c e>2 <b d> | <c e> <d f>( |
	%9
	<c e>2 <b d>4) <b d> | <c e>2. r4 |
	%11
	<b d>2( <c e> | <b d>4 <g b> <a c> <b d>) | <c e>2 <c e>4 r4 |
	%14
	<c e>4( <b d> << \context Voice = tenVoice { \voiceOne e fis) \oneVoice } \\ { c2 } >> | <b g'>1 | <b g'>2 r2 |
	
	%17
	<c e>1( | <b d>2. <c e>4 | <b d>2) <a c> | <gis b>2 r2 |
	%21
	<a c>2( <b d>) | <c e>2 r2 |
	%23
	<c e>2 <b d> | <c e>( <d f> | <c e>2 <b d>4) <b d> | <c e>2. r4 |
	%27
	<b d>2( <c e> | <b d>4 <g b> <a c> <b d>) | <c e>2 <c e>4 r4 |
	%30
	<c e>4( <b d> << \context Voice = tenVoice { \voiceOne e fis) \oneVoice } \\ { c2 } >> | <b g'>1 | <b g'>2 r2 |

	%33
	<c e>1( | <b d>2. <c e>4 | <b d>2) <a c> | <gis b>2 r2 |
	%37
	<a c>2 <b d> | <c e>2 r2 |
	%39
	<c e>2 <b d> | <c e> <d f>( | <c e>4) <c e> <b d>2 | <c e>2. r4 |
	%43
	<b d>2( <c e> | <b d>4 <g b> <a c>) <b d> | <c e>2 <c e>4 r4 |
	%46
	<c e>4( <b d> <c e>) <c fis> | <b g'>1 | <b g'>2 r2 |

	%49
	<c e>1 | <b d>2.( <c e>4 | <b d>2 <a c>) | <gis b>2 r2 |
	%53
	<a c>2 <b d> | <c e>2 r2 |
	%55
	<c e>2 <b d> | <c e> <d f> | <c e>4 <c e> <b d>4. <b d>8 | <c e>2. r4 |
	%59
	<b d>2( <c e> | <b d>4 <g b> <a c>) <b d> | <c e>4. <c e>8 <c e>4 r4 |
	%62
	<c e>4( <b d> <c e>) <c fis> | <b g'>2. <b g'>4 | <b g'>2 r2 |

	%65
	<c e>1 | <b d>2.( <c e>4) | <b d>2( <a c>) | <gis b>2 r2 |
	%69
	<a c>2( <b d>) | <c e>2 <c e>4 r4 |
	%71
	<c e>2 <b d> | <c e>( <d f>) | <c e>2( <b d>2) | <c e>2. r4 |
	%75
	<b d>2( <c e>) | <b d>4( <g b> <a c>) <b d> | <c e>2 r2 |
	%78
	<c e>4( <b d>) <c e> <c fis> | <b g'>2 <c g'>2 | \tieUp \slurDown <d f!>1( ~ | <b d f>2) <b d>2 | <c e>1\fermata
}

basNotes = \relative c' {
	\global \clef bass
	%1
	c1( | g2. c4 | g2 a) | e2 r2 |
	%5
	a2 g | c,2 r2 | c'2 g | e2 b( |
	%9
	c4 e g) g, | c4( d e f) |
	%11
	g2( c | g1) | c2 c,4 r4 | a'2.( d,4) | g1 | g,2 r2 |

	%17
	c'1( | g2. c4 | g2) a | e2 r2 |
	%21
	a2( g) | c,2 r2 |
	%23
	c'2 g | e2( b | c4 e g) g, | c4( d e f) |
	%27
	g2( c | g1) | c2 c,4 r4 |
	%30
	a'2.( d,4) | g1 | g,2 r2 |

	%33
	c'1( | g2. c4 | g2) a | e2 r2 |
	%37
	a2 g | c,2 r2 |
	%39
	c'2 g | e2 b( | c4) e g2 | c,4( d e f) |
	%43
	g2( c | g2.) g4 | c2 c,4 r4 |
	%46
	a'2. d,4 | g1 | g,2 r2 |

	%49
	c'1 | g2.( c4 | g2 a) | e2 r2 |
	%53
	a2 g | c,2 r2 |
	%55
	c'2 g | e2 b | c4 e g4. g,8 | c4( d e f) |
	%59
	g2( c | g2.) g4 | c4. c,8 c4 r4 |
	%62
	a'2. d,4 | g2. g,4 | g2 r2 |

	%65
	c'1 | g2.( c4) | g2( a) | e2 r2 |
	%69
	a2( g) | c2 c,4 r4 |
	%71
	c'2 g | e2( b) | c4( e g2) | c,4( d e f) |
	%59
	g2( c) | g2. g4 | c2 r2 |
	%62
	a2 a4 d,4 | g2 e | f1( | g2) g, | c1\fermata |
}

mainText = \lyricmode {
	Дѣ -- ва, Дѣ -- ва днесь Пре -- су -- ще -- ствен -- на -- го раж -- да -- етъ, раж -- да -- етъ,
	и __ зем -- ля вер -- тепъ Не -- при -- ступ -- но -- му при -- но -- ситъ, при -- но -- ситъ:
	Ан -- ге -- ли, Ан -- ге -- ли съ~па -- стырь -- ми сла -- во -- сло -- вятъ, сла -- во -- сло -- вятъ, сла -- во -- сло -- вятъ,
	вол -- сви же, вол -- сви же со звѣз -- до -- ю пу -- те -- шес -- тву -- ютъ, пу -- те -- шес -- тву -- ютъ, пу -- те -- шес -- тву -- ютъ:
	насъ бо __ ра -- ди ро -- ди -- ся От -- ро -- ча __ мла -- до, Пре -- вѣч -- ный Богъ, Пре -- вѣч -- ный Богъ, Пре -- вѣч -- ный Богъ.
}
basText = \lyricmode {
	Дѣ -- ва, Дѣ -- ва днесь Пре -- су -- ще -- ствен -- на -- го __ раж -- да -- етъ, раж -- да -- етъ,
	и __ зем -- ля вер -- тепъ Не -- при -- ступ -- но -- му __ при -- но -- ситъ, при -- но -- ситъ:
	Ан -- ге -- ли, Ан -- ге -- ли съ~па -- стырь -- ми сла -- во -- сло -- вятъ, __ сла -- во -- сло -- вятъ, сла -- во -- сло -- вятъ,
	вол -- сви же, вол -- сви же со звѣз -- до -- ю пу -- те -- шес -- тву -- ютъ, __ пу -- те -- шес -- тву -- ютъ, пу -- те -- шес -- тву -- ютъ:
	насъ бо __ ра -- ди ро -- ди -- ся От -- ро -- ча __ мла -- до, __ Пре -- вѣч -- ный Богъ, Пре -- вѣч -- ный Богъ, Пре -- вѣч -- ный Богъ.
}

% Use this instead if your singers don't read Cyrillic.
mainTextTransliterated = \lyricmode {
	Dje -- va, Dje -- va dnjes’ Prje -- su -- šče -- stvjen -- na -- go raž -- da -- jet, raž -- da -- jet,
	i __ zjem -- lja vjer -- tjep Nje -- pri -- stup -- no -- mu pri -- no -- sit, pri -- no -- sit:
	An -- ge -- lji, An -- ge -- lji spa -- stïr’ -- mi sla -- vo -- slo -- vjat, sla -- vo -- slo -- vjat, sla -- vo -- slo -- vjat,
	vol -- svji že, vol -- svji že so zvjez -- do -- ju pu -- te -- šes -- tvu -- jut, pu -- te -- šes -- tvu -- jut, pu -- te -- šes -- tvu -- jut:
	nas bo __ ra -- dji ro -- dji -- sja Ot -- ro -- ča __ mla -- do, Pre -- vječ -- nïj Bog, Pre -- vječ -- nïj Bog, Pre -- vječ -- nïj Bog.
}
basTextTransliterated = \lyricmode {
	Dje -- va, Dje -- va dnjes’ Prje -- su -- šče -- stvjen -- na -- go __ raž -- da -- jet, raž -- da -- jet,
	i __ zjem -- lja vjer -- tjep Nje -- pri -- stup -- no -- mu __ pri -- no -- sit, pri -- no -- sit:
	An -- ge -- lji, An -- ge -- lji spa -- stïr’ -- mi sla -- vo -- slo -- vjat, __ sla -- vo -- slo -- vjat, sla -- vo -- slo -- vjat,
	vol -- svji že, vol -- svji že so zvjez -- do -- ju pu -- te -- šes -- tvu -- jut, __ pu -- te -- šes -- tvu -- jut, pu -- te -- šes -- tvu -- jut:
	nas bo __ ra -- dji ro -- dji -- sja Ot -- ro -- ča __ mla -- do, __ Pre -- vječ -- nïj Bog, Pre -- vječ -- nïj Bog, Pre -- vječ -- nïj Bog.
}

\score {
	\new ChoirStaff
	<<
	\new Staff { \set Staff.instrumentName = "С" \new Voice = sopVoice \sopNotes }
	\new Lyrics \lyricsto sopVoice \mainText
	\new Staff { \set Staff.instrumentName = "А" \new Voice = altVoice \altNotes }
	\new Lyrics \lyricsto sopVoice \mainText
	\new Staff { \set Staff.instrumentName = "Т" \new Voice = tenVoice \tenNotes }
	\new Lyrics \lyricsto sopVoice \mainText
	\new Staff { \set Staff.instrumentName = "Б" \new Voice = basVoice \basNotes }
	\new Lyrics \lyricsto basVoice \basText
	>>
	
	\layout {
		\context {
			\Score
			\override NonMusicalPaperColumn #'line-break-system-details = #'((alignment-offsets . (0 -5.5 -11.5 -17 -23 -28.5 -34.5 -40)))
		}
	}
}

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
		\context { \Score tempoWholesPerMinute = #(ly:make-moment 80 2) }
	}
}
