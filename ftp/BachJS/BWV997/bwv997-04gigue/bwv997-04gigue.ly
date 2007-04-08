\header{

	title = "Suite in C Minor for Lute (trans. to A minor)";
	subtitle = "4. Gigue";
	opus = "BWV 997";
	composer = "Johann Sebastian Bach (1685-1750)";
	instrument= "Guitar";

	mutopiatitle = "Lute Suite BWV 997: 4. Gigue";
	mutopiacomposer = "J. S. Bach";
	mutopiainstrument = "Lute, Guitar";
	date = "ca.1740-41";
	style = "Baroque";
	copyright = "Public Domain";
	filename = "bmv997-04gigue.ly";
	lastupdated = "2001/Feb/24";
	tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by David Megginson.\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}";
        footer = "Mutopia-2001/02/24-53";

}

\include "paper16.ly"
Treble = \notes \context Voice = $Treble {
	\property Staff.midiInstrument = "acoustic guitar (nylon)"
	\time 6/8;
	\key a \minor;
	\clef treble;
\repeat "volta" 2 {
	\stemUp \partial 8; e''8 |
	d''( )c'' e'' c''( )b' e'' |
	b'8. gis'16 a'8 a''4 e''8 |
	\grace{[e''16( f''16 )g''16]} f''8. e''16 d''8 \grace{d''8} c''8. d''16 b'8 |
	\grace{[b'16( c'' )d'']} c''8. b'16 a'8 a'4 e''8 |
%5
	a'( )gis' e'' b'( )a' e'' |
	c''( )b' e'' d''( )c'' e'' |
	a''8. \trill gis''16 a''8 b''8. c'''16 a''8 |
	\grace{a''8} gis''4.( )gis''4 b''8 |
	b''( )c''' gis'' gis''( )a'' e'' |
%10
	e''( )f'' cis'' cis''( )d'' a'' |
	a''( )b'' fis'' fis''( )g'' dis'' |
	dis''( )e'' b' b'( )c'' gis'' |
	gis''( )a'' e'' e''( )f'' b'' |
	b''( )c''' e'' e''( )dis'' a''32( b'' )c'''16 |
%15
	b''8. dis''16 e''8 fis''16 g'' a'' g'' fis''8 \trill |
	\grace{fis''8} e''4.( )e''4
}
\repeat "volta" 2 {
	b''8 |
	a''( )gis'' b'' f''( )e'' b'' |
	d''( )cis'' g'' bes'( )a' g''32( a'' )bes''16 |
	a''8. cis''16 d''8 e''16 f'' g'' f'' e''8 |
%20
	\grace{g''8} f''8. e''16 d''8 d''4 f''8 |
	c''( )b' f'' a'( )g' f'' |
	f''( )e'' bes'' bes''( )a'' c'' |
	b'16 c'' d'' e'' f''8( )f''16 e'' d'' c'' fis''8 |
	\grace{fis''8} g''4.( )g''4 \mordent g'8 |
%25
	d''( )c'' g' e''( )d'' g' |
	f''( )e'' g' g''( )f'' g' |
	g''16 f'' e'' f'' g''8 bes'( )a' a'' |
	b''16 a'' gis'' a'' b''8 d''( )c'' c''' |
	g'' fis'' a'' ees''( )d'' a'' |
%30
	c''( )b' d'' aes'( )g' d''32( e'' )f''16 |
	e''8. a''16 g''8 e''8. \trill d''16 c''8 |
	c''4.( )c''4 c'''8 |
	gis''( )a'' e'' e''( )f'' g'' |
	cis''( )d'' a' a'( )bes' d'' |
%35
	gis'16 a' b' d'' c'' b' c'' f'' e'' d'' c'' b' |
	a'8 gis'16 a' b'8 e'4 e''8 |
	d''( )c'' e'' c''( )b' e'' |
	b'8. gis'16 a'8 a''4 e''8 |
	\grace{[e''8( f''8 )g''8]} f''8. e''16 b'8 \grace{d''8} c''8. d''16 b'8 |
%40
	\grace{[b'8( c''8 )d''8]} c''8. b'16 a'8 g''4 a''32( g'' f'' )e'' |
	e''8( )f'' cis'' cis''( )d'' a' |
	a'( )bes' fis' fis'( )g' d'' |
	d''( )e'' b' b'( )c'' gis' |
	gis'( )a' e' e'( )f' cis'' |
%45
	cis''( )d'' a' a'( )bes' e'' |
	e''( )f'' a' a'( )gis' d''32( e'' )f''16 |
	e''8. gis'16 a'8 b'16 c'' d'' c'' b'8 \trill |
	\grace{b'8} a'4.( )a'4
}
}
Bass = \notes \context Voice = $Bass {
	\property Staff.midiInstrument = "acoustic guitar (nylon)"
	\time 6/8;
	\key a \minor;
	\clef treble;
\repeat "volta" 2 {
	\stemDown \partial 8; r8 |
	a4 r8 g4 r8 |
	f4 r8 c'4 r8 |
	d'4 r8 e'4 r8 |
	a4 b8 c' b a |
%5
	e4 r8 fis4 r8 |
	gis4 r8 a4 r8 |
	f'4 r8 d'4 r8 |
	e8. gis16 b8 e'8. fis'16 gis'8 |
	a4 b8 c'4 cis'8 |
%10
	d'4 e'8 f'4 fis'8 |
	g'4 a'8 b'4 a'8 |
	g'4 f'8 e'4 d'8 |
	c'4 r8 gis'4 r8 |
	a'4 r8 fis'4 r8 |
%15
	g'4 e'8 b'4 b8 |
	e8. gis16 b8 e'4
}
\repeat "volta" 2 {
	r8 |
	e4 r8 gis4 r8 |
	a4 r8 cis'4 r8 |
	d'4 bes8 g4 a8 |
%20
	d'4 e'8 f' e' d' |
	g4 r8 b4 r8 |
	c'4 r8 f'4 e'8 |
	d'4 b8 c'4 a8 |
	g b d' f'( )e' f' |
%25
	e'4 r8 b4 r8 |
	c'4 r8 d'4 r8 |
	e'4 r8 f'4 r8 |
	gis'4 r8 a'4 r8 |
	d'4 r8 fis'4 r8 |
%30
	g'4 r8 b4 r8 |
	c'4 e'8 g'4 g8 |
	c'8. e'16 d'8 c'8. b16 a8 |
	b4 cis'8 d'4 e'8 |
	f'4 e'8 d'4 c'8 |
%35
	b4 e8 a4 f8 |
	e4.( )e8. fis16 gis8 |
	a4 r8 g4 r8 |
	f4 r8 c'4 r8 |
	d'4 r8 e'4 r8 |
%40
	a4 b8 cis'4 a8 |
	d'4 e'8 f'4 fis8 |
	g4 a8 bes4 b8 |
	c'4 d'8 e'4 d'8 |
	c'4 bes8 a4 g8 |
%45
	f4 r8 cis'4 r8 |
	d'4 r8 b4 r8 |
	c'4 a8 e'4 e8 |
	a8. c'16 e'8 a4
}
}

GuitarStaff = \context Staff = GuitarStaff <
	\property Staff.midiInstrument = "acoustic guitar (nylon)"
	\property Staff.transposing = -12                           

	\Treble
	\Bass
>

\score {
	<
		\GuitarStaff
	>
	\paper {
		linewidth = 18.0 \cm;
	}
	\midi {
		\tempo 4 = 80;
	}
}
