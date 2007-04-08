% "The Spirit of God Like a Fire is Burning," with first printed melody
% from Bellows Falls Hymnal, an unofficial Latter Day Saint hymnal
% published in Bellows Falls, Vermont by J. C. Little and G. B. Gardner, 1844.

% The tune is a reproduction of the 1844 printing
% and contains subtle differences to the tune sung today.

\version "2.6.0"
\header {
	filename="SpiritOfGod.ly"
	enteredby = "David Bolton"
	composer = "Anonymous"
	metre = "12 11 12 11 12 11"
	title = "The Spirit of God"
	poet = "William Wines Phelps (1792--1872)"

	meter=\metre
	mutopiatitle = "The Spirit of God"
	mutopiacomposer = \composer
	mutopiapoet = "W. W. Phelps (1792--1872)"
	mutopiainstrument = "Voice (SB)"
	date = "19th century"
	source = "J. C. Little and G. B. Gardner Hymnbook (Bellows Falls, Vermont: 1844)"
	style = "Hymn"
	copyright = "Public Domain"
	maintainer = "David Bolton"
	maintainerEmail = "dbolton graceland edu"
	lastupdated = "2005/Aug/16"

	piece = " "
	footer = "Mutopia-2005/08/18-593"
	tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

global= {
	\set Staff.midiInstrument = #"acoustic grand"
	\key c \major
	\override Staff.TimeSignature   #'style = #'numbered
	\time 4/4
	
}

upper = 
	\relative c'' {
	\slurDown
	\clef "treble"
	\partial 4 g4 | c2 d4 d | e2 d4 c | c2 b4 a | g4.( a8) g4
	f | e( g) c e |d( g,) a f' | e( d) c b | c2 
	\break
	%Chorus
	r4 g^\markup{CHORUS} | g4.( f8) e4 g | g4.( f8) e4 g | c( e) d c | b( a) g
	g | c2 d4 e | a,2 a4 a | f'2 e4. e8 | d2 r4
	e8. d16 | c2 d4 e | a,2 f'4 e | d4. e8 d4 c | b( a) g
	g | c( d) e c | a( f') e d | c2 b4 d | c2. \bar "|."

}

lower = 
	\relative c {
	\clef "bass"
	\partial 4 c4 | c2 g'4 g | c2 g4 g | c,2 d4 d | e4.( f8) e4
	d | c2 e4 c | f( d) e f | g2 g4 g | c,2
	\break
	%Chorus
	r4 c | c2 c4 c | c2 c4 c | f2 e4 f | g2 g4
	g | a2 g4 g | f2 e4 e | d2 c4 e | g2 r4
	c, | c2 d4 e | f2 f4 e | d2 d4 f | g2 g4
	g | c,2 e4 c | f( d) e f | g2 g4 g | c,2. \bar "|."
}

verbaone = \context Lyrics = "verbaone" \lyricmode {
	The4 spi2 -- rit4 of God2 like4 a fire2. is4 burn2 -- ing;4
	The4 lat2 -- ter4 day glo2 -- ry4 be -- gins2 to4 come forth;2.
	%chorus
	We'll4 sing2 and4 we'll shout2 with4 the arm2 -- ies4 of hea2 -- ven;4
	Ho4 -- san2 -- na,4 Ho -- san2 -- na4 to God2 and4. the8 Lamb!2.
	Let4 glo2 -- ry4 to them2 in4 the high2 -- est4 be giv2 -- en,4
	Hence4 -- forth2 and4 for -- ev2 -- er,4 a -- men2 and4 a -- men2.
}

verbatwo = \context Lyrics = "verbatwo" \lyricmode {
	The4 vis2 -- ions4 and bles2 -- ings4 of old2 are4 re -- turn2 --ing:4
	The4 an2 -- gels4 are com2 -- ing4 to vi2 -- it4 the earth,2.
}

% verbaone = \context Lyrics = "verbaone" \lyricmode {
%    A4 -- des2 -- te,4 fi -- del2 -- es,
%    Lae2 -- ti4 trium -- phan2 -- tes,4
%    Ven4 -- i2 -- te,4 ven-- i2 -- te4 in Beth2.. -- le8 -- hem.1
%    Na2 -- tum4 vi -- de2 -- te
%    Reg4 -- em ang-- el-- or2 -- um.4
%    Ven -- i -- te a -- dor -- e2 -- mus,4
%    Ven -- i -- te a -- dor -- e2 -- mus,4
%    Ven -- i -- te a -- dor -- e2 -- mus,
%    Do2.. -- mi8 -- num.2.
%    _4
%    A2 -- men.
%    }

\score{ 
    \context ChoirStaff {
        <<
        \new Staff { \upper }
        \new Lyrics { \verbaone }
        \new Staff { \lower }
        >>
    }

\layout{ }

\midi { \tempo 4 = 112 }
}
