\header {
	title = "Hymn of Eve"
	subtitle = "(Uxbridge)"
	composer = \markup { Arne's \italic { Death of Abel,} 1755}
	poet = "Charles Wesley"
	date = "1755"
	filename = "Uxbridge.ly"

	mutopiatitle = "Hymn of Eve (Uxbridge)"
	mutopiacomposer = "ArneT"
	mutopiapoet = "C. Wesley (1707-1788)"
	mutopiainstrument = "Voice (SATB)"
	source = "Methodist Hymn Book, 1933, No. 648"
	metre = "8.8.8.8. D."
	meter = "8.8.8.8. D."
	copyright = "Public Domain"
	style = "Hymn"
	maintainer = "Peter Chubb"
	maintainerEmail = "mutopia@chubb.wattle.id.au"
	lastupdated = "2009/August/5"
 footer = "Mutopia-2009/08/05-97"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

% $Id: Uxbridge.ly,v 1.7 2009-08-05 03:58:04 peterc Exp $

% fit onto one page
#(set-global-staff-size 16)

\version "2.12.0"

global={
	\key d \major
	\time 3/4
	\partial 4
	\repeat unfold 4 {
	\skip 4
	\skip 2.*5
	\skip 2
	\bar "||" \break
	}
}

sop=\relative c'' {
	\autoBeamOff
	a4 |
	fis4. e8 d4 |
	d'4. cis8 b4 |
	b(  a)   a8[( g)] |
	fis4. g8 a4 |
	b4  d8[( b)]  a[( fis)] |
	fis4( e)

	a4 |
	fis4. e8 d4 |
%8
	d'4. cis8 b4 |
	cis2
	d4 |
	e4 a, d |
	cis4. d8 b4 |
	a2

	a4 |
	a4. g8 fis4 |
	a4. b8 c4 |
	b2

	b4 |
%16
	gis4. fis8 e4 |
	b'4. cis8 d4 |
	cis2

	a4 |
	fis4. e8 d4 |
	c'4. b8 a4 |
	b2

	cis4 |
	d d, g |
	fis4. g8 e4 |
	d2
}

alto=\relative c' {
	d4 |
	d4. cis8 d4 |
	d4. d8 d4 |
	d2

	e4 |
	d4. d8 d4 |
	d4 d d |
	d ( cis)

	e |
	d4. cis8 d4 | %8
	e e e |
	e2
	a4 |
	a a fis |
	e fis d |
	cis2

	e4 |
	fis4. d8 d4 |
	d4. d8 d4 |
	d2

	fis4|	   %16
	e4. dis8 e4 |
	e4. e8 e4 |
	e2

	e4 |
	d4. cis8 d4 |
	d4. d8 d4 |
	d2
	g4 |
	fis d d |
	d4. e8 cis4 |
	d2
}


ten=\relative c {
	fis4 |
	a4. g8 a4 |
	b4. a8 g4 |
	g ( fis)
	a |
	a4. b8 fis4 |
	g4 g fis |
	a2

	a4 |
	a4. g8 a4 | %8
	b a gis |
	a2

	a4 |
	a a a |
	a a gis |
	a2

	a4 |
	a4. b8 a4 |
	fis4. g8 a4 |
	g2

	b4 |    %16
	b4. a8 gis4 |
	gis4. a8 b4 |
	a2

	a4 |
	a4. g8 fis4 |
	a4. g8 fis4 |
	g2

	a4 |
	a a b |
	a b g |
	fis2
}

bass=\relative c {
	d4 |
	d4. e8 fis4 |
	g4. g8 g4 |
	d2

	cis4 |
	d4. d8 d4 |
	g b, d |
	a2

	cis4 |
	d4. e8 fis4 | %8
	gis a e |
	a2

	fis4 |
	cis cis d |
	e d e |
	a,2

	cis4 |
	d4. d8 d4 |
	d4. d8 d4 |
	g2

	dis4 | %16
	e4. e8 e4 | 
	e4. e8 e4 |
	a2

	cis,4 |
	d4. d8 d4 |
	d4. d8 d4 |
	g2

	e4 |
	d fis, g |
	a g a |
	d2
}


VerseOne=\lyricmode {
	A -- way with our sor -- row and fear!
	We soon shall re -- co -- ver our home,
	The ci -- ty of saints shall ap -- pear
	The day of e -- ter -- ni -- ty come:
	From earth we shall quick -- ly re -- move,
	And mount to our na -- tive a -- bode,
	The house of our Fa -- ther a -- bove,
	The pa -- lace of an -- gels and God.
}

VerseTwo = \lyricmode {
	Our mourn -- ing is all at an end,
	When, raised by the life -- gi -- ving word,
	We see the new ci -- ty de -- scend,
	A -- dorned as a bride for her Lord;
	The ci -- ty so ho -- ly and clean,
	No sor -- row can breathe in the air;
	No gloom of af -- flic -- tion or sin,
	No sha -- dow of e -- vil is there.
}

VerseThree = \lyricmode {
	By faith we al -- rea -- dy be -- hold
	That love -- ly Je -- ru -- sa -- lem here:
	Her walls are of jas -- per and gold,
	As cry -- stal her build -- ings are clear:
	Im -- mov -- ab -- ly found -- ed in grace,
	She stands as she e -- ver hath stood,
	And bright -- ly her Build -- er dis -- plays,
	And flames with the glo -- ry of God.
}

VerseFour = \lyricmode {
	No need of the sun in that day,
	Which ne -- ver is fol -- lowed by night,
	Where Je -- sus's _ beau -- ties dis -- play
	A pure and a per -- ma -- nent light:
	The Lamb is their light ands their Sun,
	And lo, by re -- flec -- tion they shine,
	With Je -- sus in -- ef -- fa -- bly one,
	And bright in ef -- ful -- gence di -- vine.
}

Words = \context Lyrics = "sop" <<
	\context Lyrics = "sop-1" {
		\set stanza = "1."
		\VerseOne
	}
	\context Lyrics = "sop-2" {
		\set stanza = "2."
		\VerseTwo
	}
	\context Lyrics = "sop-3" {
		\set stanza = "3."
		\VerseThree
	}
	\context Lyrics = "sop-4" {
		\set stanza = "4."
		\VerseFour
	}
>>

upper = \context Staff = "upper" <<
	\clef "treble" \set Staff.midiInstrument = "recorder"
	 \unset Staff.melismaBusyProperties
	\global
	\context Voice = "sop" {\voiceOne \sop}
	\lyricsto sop \Words
	\context Voice = "alto" {\voiceTwo \alto}
>>

lower=\context Staff = "lower" <<
	\clef "bass"
	\set Staff.midiInstrument = "acoustic bass"
	\global
	\context Voice = "tenor" {\voiceOne \ten}
	\context Voice = "bass" {\voiceTwo \bass}
>>

\score {

	% Transposing down a tone gives a range c' -> d''
	% which is good for mixed-voice untrained singers
	% (i.e., congregations)
        \transpose c' bes \context ChoirStaff <<
		\upper
		\lower
	>>

	\layout{
%		line-width = 180.0\mm
		indent = 0.0\pt
		\context {
		    \Staff
		    \remove "Time_signature_engraver"
		}
	}

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 180 4)
      }
    }
}

