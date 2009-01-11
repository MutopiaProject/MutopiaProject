%NOTES:  The flute part slurs are just the piano piano slurs from the original;
% not being a flute player, I dunno if it makes sense to a flute player.

\version "2.10"
\header {
title = "Berceuse (Lullaby)"
subtitle = \markup{\italic "from Dolly, Op. 56"}

composer =  \markup{\column {\line {" "}"Gabriel Faure" 
					 { \italic "(1845 - 1924)"}
							} 
					}
	mutopiatitle = "Berceuse"
 	mutopiacomposer = "FaureG"
 	mutopiainstrument = "Flute and Guitar"
 	mutopiaopus = "Op. 56"
 	source = "New adaptation from Paris: J. Hamelle"
 	style = "Romantic"
 	copyright = "Public Domain"
 	maintainer = "Mike Blackstock"
	maintainerEmail = "mike@blackstock.ca"
	maintainerWeb = "http://www.blackstock.ca"
 	lastupdated = "2008/Jun/25"
 footer = "Mutopia-2008/09/01-1536"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
} %end header

flute = \relative c' {
	\set Staff.instrumentName = "Flute"
	\set Staff.midiInstrument = "flute"
	\clef violin
	\key e \major
	\time 2/4 
	                   
	R2  |
	R2 |
	b''4 b ~ |
	b8 gis (  a b |	
	gis e fis gis )|
	e4 (   b8) r | 
	b'4 b ~ |
	b8 gis (  a b |
	gis e e' dis )|
% 10
	cis4 (  b8) r |
	fis'4 fis ~ |
	fis8 dis (  e fis |
	dis b cis dis ) |
	b4 (  fis8) r |
	fis'4 fis ~ |
	fis8 gis (  e cis |
	e fis dis b |
	dis4 cis ) | 
	b b ~ |
% 20
	b8 gis (  a b | 
	gis e fis gis )|
	e4 (  b8) r | 
	b'4 b ~ |
	b8 gis (  a b | 
	gis e e' dis |
	cis4 b8 ) r | 
	e4 e ~ |
	e8 cis (  b a )| 
	e'4 e ~ |
% 30
	e8 cis (  b a) | 
	b4 b ~ |
	b8 gis (  fis e | 
	gis4 fis  |
	e ) ~ e8 r \bar "||" 

	\key c \major
	e4 e ~ |
	e8 (  c d e | 
	e4 c ) ~ |
	c8 g (  a c | 
	b d ) g4-> ~ |
% 40
	g8 e g4-> ~ |  
	g8 bes,! (  d g |
	f e d e )| 
	f4 f ~ |
	f8 d (  e f | 
	f4 d ) ~ |
	d8 a (  b d | 
	c e ) a4-> ~ |
	a8 f a4-> ~ | 
	a8 c, (  e a |
% 50
	g fis! e fis )| 
	g4 g ~ |
	g8 e (  fis! g )|
	g4 e ~ |
	e8 b (  cis! e | 
	d fis! ) b4-> ~ |
	b8 g b4-> ~ | 
	b8 fis! (  dis'! cis! |
	b a fis!  dis! ) \bar "||"

	\key e \major
	b4 b ~ |
% 60
	b8 gis (  a b | 
	gis e fis gis |
	e4) r | 
	b' b ~ |
	b8 gis (  a b | 
	gis e fis gis |
	e4) r |
	e' e ~ |
	e8 cis (  d! e | 
	cis a b cis |
% 70
	a ) e' (  dis cis )| 
	b4 (  cis |
	d! dis! ) |
	b' b ~ |
	b8 gis (  a b | 
	gis e fis gis |
	e4 b8) r | 
	b'4 b ~ |
	b8 gis (  a b | 
	gis e fis gis |
% 80
	e4 b8 ) r | 
	e4 (  b8 ) r |
	e4 (  b8 ) r | 
	e4 r 
	\bar "|."
}
guitarUpperVoice = \relative c {
	\set Staff.instrumentName = "Guitar"
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
	\voiceOne 
	\clef "G_8"
	\key e \major
	\time 2/4 
	                   
	gis'16 b e cis < a dis >4 | 
	gis16 b e cis < a dis >4 |
	gis16 b e cis < a dis >4 | 
	gis16 b e cis < a dis >4 |
	gis16 b e cis < a dis >4 | 
	gis16 b e cis < a dis >4 | 
	gis16 b e cis < a dis >4 |
	gis16 b e cis < a dis >4 |
	gis16 b e b < b e gis >4 | 
% 10
	ais!16 e' fis e < fis, b dis >4 | 
	dis'16 fis b gis < e ais! >4 | 
	dis16 fis b gis < e ais! >4 |
	dis16 fis b gis < e ais! >4 | 
	dis16 fis b gis < e ais! >4 |
	dis16 fis b fis < fis cis' >4 | 
	fis16 gis bis! gis < e gis cis >4 |
	e16 fis cis' fis, < dis fis b >4 | 
	b16 dis fis dis < cis gis' >4 |
	gis'16 a, b a fis'4 | 
% 20
	< gis, e' >16 b e cis < a dis >4 | 
	gis16 b e cis < a dis >4 | 
	gis16 b e cis < a dis >4 |
	gis16 b e cis < a dis >4 | 
	gis16 b e cis < a dis >4 |
	gis16 b e b < b e gis >4 | 
	ais!16 e' fis e < fis, b dis >4 |
	b16 dis fis dis < d! e >4 | 
	cis16 eis! gis eis < e! fis >4 |
	d!16 fisis! a fisis < d gis >4 | 
% 30
	e16 gis b gis < e a >4 |
	fis16 ais! cis ais < a! b >4 | 
	r16 gis b gis < e gis cis >4 |
	cis16 gis' cis gis < dis a' b >4 | 
	r16 gis, e' b gis' e b gis \bar "||" 

	\key c \major
	r8 g16 g e' c g' e | 
	r8 a,16 a e' c a' e |
	r8 g,16 g e' c g' e | 
	r8 g,16 g e' c g' e |
	r8 b16 b g' d b' g | 
% 40
	r8 b,16 b g' e b' g |
	r8 bes,!16 bes g' d bes'! g | 
	r8 a,16 a g' cis,! a' g |
	r8 a,16 a f' d a' f | 
	r8 bes,!16 bes f' d bes'! f |
	r8 a,16 a f' d a' f | 
	r8 a,16 a f' d a' f |
	r8 a,16 a e' c a' e | 
	r8 a,16 a f' d a' f | 
	r8 a,16 a e' c a' e | 
% 50
	r8 a,16 a dis! b a' dis, | 
	r8 b16 b g' e b' g | 
	r8 c,16 c g' e c' g |
	r8 b,16 b g' e b' g | 
	r8 b,16 b g' e b' g | 
	r8 b,16 b fis'! d b' fis | 
	r8 b,16 b e cis! g' e |
	r b fis'! dis! b' fis a e | 
	gis! dis! fis! cis! dis a b fis! \bar "||"

	\key e \major
	gis b e cis < a dis >4 | 
% 60
	gis16 b e cis < a dis >4 | 
	gis16 b e cis < a dis >4 | 
	gis16 b e cis < a dis >4 | 
	gis16 b e cis < a dis >4 | 
	gis16 b e cis < a dis >4 | 
	gis16 b e cis < a dis >4 | 
	gis16 b e cis < d! e >4 | 
	r16 e a fis < d! gis >4 |  
	r16 e a fis < d! gis >4  | 
	r16 e a fis < d! gis >4 | 
% 70
	r16 e a e < e g! >4 |
	r16 gis b gis < gis cis >4 | 
	r16 a d! a < a dis! >4 | 
	r16 b, e cis < a dis >4 | 
	gis16 b e cis < a dis >4 | 
	gis16 b e cis < a dis >4 | 
	gis16 b e cis < a dis >4 | 
	gis16 b e cis < a dis >4 | 
	b' b ~ | 
	b8 gis a b | 
% 80
	gis e fis gis | 
	r e fis gis | 
	r e fis gis | 
	< b,, e gis b e >4 r |

	\bar "|."
}
guitarLowerVoice = \relative c {
	\voiceTwo 
	                   
	e,8 b' fis' b, e, b' fis' b,   % 3
	e, b' fis' b, e, b' fis' b,   % 5
	e, b' fis' b, e, b' fis' b,   % 7
	e, b' fis' b, e, b' fis' b,   % 9
	e, b' cis cis fis, fis' b, b   % 11
	b fis' cis' fis, b, fis' cis' fis,   % 13
	b, fis' cis' fis, b, fis' cis' fis,   % 15
	b, fis' a, a' gis, dis' cis cis'   % 17
	ais,! fis' b, b' dis, dis e e   % 19
	dis b a' b, e, b' fis' b,   % 21
	e, b' fis' b, e, b' fis' b,   % 23
	e, b' fis' b, e, b' fis' b,   % 25
	e, b' cis cis fis, fis' b, b   % 27
	gis e' gis e a, e' a e   % 29
	b e b' e, cis e cis' e,   % 31
	dis b' dis b e, b' cis, cis'   % 33
	a, a' b, b' e,,4 ~ e8 r   % 35
	c'2 a   % 37
	c e   % 39
	g e   % 41
	e, a   % 43
	d bes!   % 45
	d f   % 47
	a, d   % 49
	a b   % 51
	e c   % 53
	e g   % 55
	b, e   % 57
	b8 fis'! b cis! b a fis! dis!   % 59
	e, b' fis' b, e, b' fis' b,   % 61
	e, b' fis' b, e, b' fis' b,   % 63
	e, b' fis' b, e, b' fis' b,   % 65
	e, b' fis' b, e, b' e b   % 67
	a e' b' e, a, e' b' e,   % 69 <--- renumber to 68
	a, e' b' e, a, e' ais,! ais'!   % 71
	r b r b, r b' r b,   % 73
	e, b' fis' b,    % 75
	e, b' fis' b, e, b' fis' b,   % 77
	e, b' fis' b, e, b' fis' b,   % 79
	e,16 b'' < b, e' > cis' < fis, a dis >8 b, 
	e,16 b'' < b, e' > cis' < fis, dis' >4   % 81
	e,16 b'' < b, e' > cis' < fis, dis' >4
	e,16 b'' < b, e' > cis' < fis, dis' >4   % 83
	e,16 b'' e cis < fis, dis' >4 e, 


}
guitar = \simultaneous {
	\context Voice="guitarUpperVoice" \guitarUpperVoice
	\context Voice="guitarLowerVoice" \guitarLowerVoice
}
\score {
	\simultaneous {
		\context Staff="flute" \flute
		\context Staff="guitar" \guitar
}

\midi	{
	tempoWholesPerMinute = #(ly:make-moment 58 4)

} % end midi

\layout {
	
	}
}


