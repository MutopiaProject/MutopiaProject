\version "2.10.0"
#(set-global-staff-size 18)

\paper {
	top-margin = 0.25\in
	bottom-margin = 0.25\in
	print-page-number = ##t
	ragged-last-bottom = ##f
	head-separation = 0\in
	system-count = 11
}
\header {
	title = "Wiegenlied"
	composer = "Ferdinand Ries (1784–1838)"

	%mutopia-specific headers:
	mutopiatitle = "Wiegenlied"
	mutopiacomposer = "RiesF"
	mutopiapoet = ""
	mutopiaopus = ""
	mutopiainstrument = "Voice and Piano"
	date = "19th century"
	source = "The University Society, 1904"
	style = "Romantic"
	copyright = "Public Domain"
	maintainer = "Daniel Johnson"
	maintainerEmail = "il.basso.buffo at gmail dot com"
	lastupdated = "2006/Dec/08"
 footer = "Mutopia-2006/12/21-887"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

sopNotes = {
	\key f \major
	\clef treble
	\time 4/4
	\autoBeamOff
	\partial 4
	\set hairpinToBarline = ##f
	\once \override Score.RehearsalMark #'extra-offset = #'(6.0 . 1.0) \mark \markup {\large \bold "Einfach, innig." }
	c'4 | a'4 a'4 c''4 c''4 | \acciaccatura { c''8 } bes'8[( a'8]) bes'8[( d''8]) g'4.^\< c''8\! | f''4. f'8 a'4.^\> g'8\! |
	g'2 r4 c'4 | a'4 a'4 c''4 c''4 | \acciaccatura { c''8 } bes'8[( a'8]) bes'8[( d''8]) g'2 |
	a'4^\pp a'8 a'8 a'4. a'8 | a'2.^\markup{ \tiny \italic "espress." } a'4 | g'4.^\< g'8 d''4.\! d''8 |
	c''2. a'4^\p | g'4. g'8 c''4. c''8 | f'2 r2 |
	
	r2 r4 r8^\p g'8 | g'4. g'8 aes'8 aes'8 c''8 aes'8 | g'2. r4 |
	bes'!4^\< c''8\! ees''8 c''8[( bes'8^\> g'8]) f'8\! | ees'2 r4 r8 bes'8 | bes'8.^\< bes'16 bes'8 bes'8\! ees''4. ces''8^\> |
	bes'2.\! ais'4^\< | cis''4.^\> ais'8\!^\markup{ \tiny{\hspace #5 \italic "dim."}} fis'4 gis'4 | ais'2. r4 |
	R1 | R1 | R1 | r2 r4 c'4^\pp |
	
	a'4^\markup{\tiny \italic "tranquillo."} a'4 c''4 c''4 | \acciaccatura { c''8 } bes'8[( a'8]) bes'8[( d''8]) g'4. c''8^\< | f''4.\! f'8 a'4. g'8^\> | g'2\! r4 c'4^\p |
	a'4 a'4 c''4 c''4 | \acciaccatura { c''8 } bes'8[( a'8]) bes'8[( d''8]) g'4. g'8^\pp | a'4. a'8 a'4 a'4 | a'2. a'4^\markup{\tiny\italic "espress."} |
	g'4.^\< g'8 d''4.\! d''8 | c''2. a'4^\p | g'4. g'8 c''4.^\> c''8 | f'2\! r4 c''4^\pp |
	c''2 r4 c''4^\markup{\tiny\italic "dim."} | f''1 ~ | f''1 ~ | \override Script #'padding = #1 f''2^\fermata r2 \bar "|." 
}

rhNotes = {
	\clef treble
	r4 | <a f' a'>2 <c' f' c''>2 | <d' bes'>2 <e' g'>2 | <c' f' c''>2^(
	<<
		\context Voice = rhVoice { \voiceOne a'4. g'8 | g'8^) d''4(-> c''4-> d''4-> c''8 ~ | \oneVoice }
		\\
		{ \voiceFour f'2 | \voiceTwo e'4 e'4 f'4 <e' bes'>4 | }
	>>
	<f' a' c''>2) <c' f' c''>2( | <d' bes'>2 <e' g'>2) | <cis' a'>2(^. <d' f' a'>2^. | <cis' e' a'>2.^.) r4 |
	<d' f' g'>2 <e' g' d''>2 | \once\override Slur #'height-limit = #6 <f' c''>8( c'''8 a''8 f''8 c''8 a'8 f'8 c'8) | <d' f' g'>2^( <e' c''>2 ~ 
	<<
		\context Voice = rhVoice { \voiceOne c''8^) a'8( f'8 c'8 b8 a'8 g'8 c''8 ~ | \oneVoice }
		\\
		{ f'4 r4 s4 c'4 ~ | }
	>>

	<<
		\context Voice = rhVoice { \voiceOne
			c''8 c''8 a'8 f'8 e'4 d'4) | s1 | r4 g''4(^\markup{\tiny\smaller\smaller \italic "L.H."} c'''4) r4 |
			s1 | r4 bes''4( ees'''4) r4 | s1 |
			r4 bes''4( ees'''4) r4 | s1 | s1 |
			d''4.( bes'8 g'4 bes'4) | d''4.( bes'8 g'4 bes'4) | d''4( bes'4 \oneVoice <d' g'>4-. <c' f'>4-. | <bes e'>4-. <bes d'>4-. <bes c'>2) \voiceOne |
	
			<f' a'>2( <f' c''>2 | <d' bes'>2 <e' g'>2) | <c' f' c''>2( a'4. g'8) | g'8 d''4(-> c''4-> d''4-> c''8 ~ |
			<f' a' c''>2) <c' f' c''>2( | bes'2 <e' g'>4.)
		}
		\\
		{
			<c' f'>2 <b g'>2 | \oneVoice
			\times 2/3 { <e' g'>8( c'8 <e' g'>8) } \times 2/3 { <e' g'>8( c'8 <e' g'>8) } \times 2/3 { <ees' aes'>8( c'8 <ees' aes'>8) } \times 2/3 { <ees' aes'>8( c'8 <ees' aes'>8) } |
			\override TupletBracket #'stencil = ##f \override TupletNumber #'stencil = ##f
			\voiceTwo
			\times 2/3 { <e'! g'>8( c'8 <e' g'>8) } \times 2/3 { <e' g'>8( c'8 <e' g'>8) } \times 2/3 { <e' g'>8( c'8 <e' g'>8) } \times 2/3 { <e' g'>8( c'8 <e' g'>8) } |
			\oneVoice
			\times 2/3 { <ees' bes'!>8( bes8 <ees' bes'>8) } \times 2/3 { <ees' bes'>8( bes8 <ees' bes'>8) } \times 2/3 { <ees' bes'>8( bes8 <ees' bes'>8) } \times 2/3 { <ees' bes'>8( bes8 <ees' bes'>8) } |
			\voiceTwo
			\times 2/3 { <ees' bes'>8( bes8 <ees' bes'>8) } \times 2/3 { <ees' bes'>8( bes8 <ees' bes'>8) } \times 2/3 { <ees' bes'>8( bes8 <ees' bes'>8) } \times 2/3 { <ees' bes'>8( bes8 <ees' bes'>8) } |

			\oneVoice
			\times 2/3 { <ges' bes'>8( ees'8 <ges' bes'>8) } \times 2/3 { <ges' bes'>8( ees'8 <ges' bes'>8) } \times 2/3 { <ges' ces''>8( ees'8 <ges' ces''>8) } \times 2/3 { <ges' ces''>8( ees'8 <ges' ces''>8) } |
			\voiceTwo
			\times 2/3 { <ges' bes'>8( ees'8 <ges' bes'>8) } \times 2/3 { <ges' bes'>8( ees'8 <ges' bes'>8) } \times 2/3 { <ges' bes'>8( ees'8 <ges' bes'>8) } \times 2/3 { <ges' bes'>8( ees'8 <ges' bes'>8) } |
			\oneVoice
			\times 2/3 { <fis' cis''>8( cis'8 <fis' cis''>8) } \times 2/3 { <fis' cis''>8( cis'8 <fis' cis''>8) } \times 2/3 { <fis' cis''>8( dis'8 <fis' cis''>8) } \times 2/3 { <gis' cis''>8( eis'8 <gis' cis''>8) } |
			<fis' ais' cis''>2. s4 | \voiceTwo

			<e' bes'!>2 e'2 | <e' bes'>2 e'2 | <e' bes'>2 s2 | s1 |
			
			r8 c'4 c'4 c'4 c'8 ~ | c'8 c'4 c'4 c'4 c'8 | s2 \voiceFour f'2 \voiceTwo | e'4 e'4 f'4 <e' bes'>4 |
			s1 | d'4 dis'4 s4.
		}
	>>
	\oneVoice r8 <cis' a'>2(^. <b f' a'>2^. | <cis' e' a'>2.^.) r4 |
	\once\override Slur #'height-limit = #4 <d' f' g'>2( <e' g' d''>2 | <f' c''>8) c'''8( a''8 f''8 c''8 a'8 f'8 c'8) | <d' f' g'>2 <e' c''>2 | <a f'>4
	<<
		\context Voice = rhVoice { \voiceOne r8 a'8(-> ~ a'8 g'8 e'8 d'8 | <a c'>4) r8 a'8->( ~ a'8 g'8 e'8 d'8 \oneVoice }
		\\
		{ a4 ~ a2 | s4 a4( bes2) }
	>>
	<a c'>8 <bes d'>8 <a c'>8 <bes d'>8 <a c'>8 bes8 a8 bes8 | a4.) r8 <a f'>4(-. <a f'>4)-. | <a f'>2^\fermata r2 | 
}

lhNotesA = {
	\clef bass
	\voiceOne
	s4 | r8 c4 c4 c4 c8 ~ | c8 c4 c4 c4 c8 ~ | <a, c>2 \voiceTwo \change Staff = rhStaff c'4 b4 \voiceOne \change Staff = lhStaff |
	g4( bes!4 a4 g4) | r8 c4 c4 c4 c8 ~ | c8 c4 c4 c4 c8 |
	\oneVoice <a, e>2(-. <d a>2-. | <a, e a>2.-.) s4 | <c! bes!>2 <c bes>2 |
	<c a>2. s4 | \voiceOne b2 bes2 | s2 g2 |
	
	s1 | g2( fis2) | \oneVoice <c g>2. s4 |
	\voiceOne g2.( aes4) | \oneVoice <ees g>2. s4 | \voiceOne bes2( a!2) |
	\oneVoice <ees bes>2. s4 \voiceOne | ais2( b2) | \oneVoice \once\override Slur #'height-limit = #7 <fis ais>8( fis,8 cis8 fis8 \once\override TupletNumber #'extra-offset = #'(0 . 6) \times 4/5 { \stemUp ais8 cis'8 \change Staff = rhStaff \stemDown fis'8 ais'8 cis''8) } \change Staff = lhStaff |
	\voiceOne r4 g4 d'4. bes8 | g4 bes4 d'4. bes8 | g2( bes4-. a4-. | g4-. f4-. e2) |
	
	c1 | c1 | <a, c>2 \voiceTwo \change Staff = rhStaff c'4 b4 \change Staff = lhStaff \voiceOne | g4( bes!4 a4 g4) |
	r8 c4 c4 c4 c8 ~ | c8 c4 c4 c4 \oneVoice r8 | <a, e>2(-. <d a>2-. | <a, e a>2.)-. s4 |
	<c! bes!>2 <c bes>2 | <c a>2. s4 | \voiceOne b2( bes2) | r4 f4( e2) |
	r4 f4( e2) | <c f>2 ~  <c f>8 d8 c8 d8 | s1 | s1 | 
}

lhNotesB = {
	\override Rest #'staff-position = #0
	\voiceTwo
	r4 | f,2 a,2 | g,2 bes,2 | s2 <d g>2 |
	c1 | f,2( a,2 | g,2 bes,2) |
	s1 | s2. r4 | s1 |
	s2. r4 | c1( | <f a>4) r4 f4( e4 |

	\oneVoice <d a>2 <g, f>2) \voiceTwo | c1 | s2. r4 |
	bes,!1 | s2. r4 | ees1 |
	s2. r4 | cis1 | s1 |
	c!1 | c1 | c1 ~ | c1 |

	f,2( a,2 | g,2 bes,2) | s2 <d g>2 | c1 |
	f,2( a,2 | g,2 bes,2) | s1 | s2. r4 |
	s1 | s2. r4 | c1 | f,8 ~ <f, c>8 ~ <f, c>2. |
	f,8 ~ <f, c>8 ~ <f, c>2. | f,1 ~ | \oneVoice <f, c>4. r8 <f, c>4(-. <f, c>4)-. | <f, c>2\fermata r2 | 
}


dynamics = {
	r4 | s1\p | s1 | s1 |
	\once\override Hairpin #'extra-offset = #'(1.5 . 3.5) s8\< s8\! s2 \once\override Hairpin #'extra-offset = #'(-1.5 . 3.5) s8\> s8 | s1\!\p | s1 |
	s1\pp | s1 | s2\p\< s2\! |
	s8 s4.-"dolce" s2 | s2\> s2\! | s2-"espress." s4.\< s8\!|
	
	s2 s4.\> s8\! | s1\p | s1 |
	s1 | s1 | s1\pp |
	s1 | s1 | s8 s4.-"string." s2 |
	\once\override DynamicText #'extra-offset = #'(0.25 . 2.5) s1\mf | s2. \once \override TextScript #'extra-offset = #'(0 . 2) s4-\markup {\whiteout "dim. e rit."} | s1 | s1 |
	
	s1-\markup {\dynamic "pp" \hspace #0.5 "a tempo"} | s1 | s1 | \once\override Hairpin #'extra-offset = #'(2 . 3.5) s8\< s8\! s2 \once\override Hairpin #'extra-offset = #'(-1.5 . 3.5) s8\> s8 |
	s1\! | s1 | s1\pp | s1 |
	s2\< s2\! | s8 s4.-"dolce." s2 | \once \override Hairpin #'extra-offset = #'(1.5 . 2) s2.\> s4\! | s1 |
	s1 | s1-"dim." | s4. s8\ppp s2 | s1 |
}

text = \lyricmode {
	Der A -- bend schaut durch’s Fen -- ster -- lein und lauscht ob Al -- les
	ruht? Lieb’ Kind -- chen schlum -- m’re nun auch ein,
	liegst ja in Got -- tes Hut. Schlaf ein, schlaf ein, schlaf
	ein, liegst ja in Got -- tes Hut.
	
	Die Quel -- len mur -- meln leis’ im Reid,
	Thau fällt auf Wies’ __ und Hain. Ver -- stummt ist schon der Vög -- lein
	Lied, lieb Kind -- chen shlaf nun ein.
	
	Die Hai -- de -- glöck -- chen läu -- ten sacht, ge -- streift vom Mon -- den -- schein, Und
	nä -- her, nä -- her kommt die Nacht, lieb’ Kind -- chen, schlaf nun ein.  Schlaf
	ein, schlaf ein, schlaf ein, lieb’ Kind -- chen, schlaf nun ein.  Schlaf
	ein, schlaf ein! __
}

\score {
	<<
		\new Staff = melStaff {
			\new Voice = mel { \sopNotes }
		}
		\lyricsto mel \new Lyrics \text

		\context PianoStaff <<
			\new Staff = rhStaff {
				\key f \major
				\new Voice = rhVoice { \rhNotes }
			}
			\new Dynamics = dynamics \dynamics
			\new Staff = lhStaff
			{
				\key f \major
				<<
					\new Voice = lhVoiceA { \lhNotesA }
					\new Voice = lhVoiceB { \lhNotesB }
				>>
			}
		>>
	>>
	\layout {
		\context { \RemoveEmptyStaffContext }
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
			\override TextScript #'extra-offset = #'(0 . 1)
			\override DynamicText #'extra-offset = #'(0.25 . 2)
			\override Hairpin #'extra-offset = #'(0 . 2)
     
			\consists "Skip_event_swallow_translator"
     
			\consists "Axis_group_engraver"
		}
		\context {
			\PianoStaff
			\accepts Dynamics
			\override VerticalAlignment #'forced-distance = #6
		}
	}
	
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 68 4)
      }
    }


}
