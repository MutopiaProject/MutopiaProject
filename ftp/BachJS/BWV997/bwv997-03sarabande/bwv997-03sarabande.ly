\header{

	title = "Suite in C Minor for Lute (trans. to A minor)";
	subtitle = "3. Sarabande";
	opus = "BWV 997";
	composer = "Johann Sebastian Bach (1685-1750)";
	instrument= "Guitar";

	mutopiatitle = "Lute Suite BWV 997: 3. Sarabande";
	mutopiacomposer = "J. S. Bach";
	mutopiainstrument = "Lute, Guitar";
	date = "ca.1740-41";
	style = "Baroque";
	copyright = "Public Domain";
	filename = "bmv997-03sarabande.ly";
	lastupdated = "2001/Feb/25";
	tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by David Megginson.\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}";
        footer = "Mutopia-2001/02/25-52";

}

\include "paper16.ly"
Treble = \notes \context Voice = $Treble {
	\property Staff.midiInstrument = "acoustic guitar (nylon)"
	\time 3/4;
	\key a \minor;
	\clef treble;
\repeat "volta" 2 {
	\stemUp a''8. b''32( )c''' b''8 a'' gis'' a'' |
	d''2. |
	d''16 f'' e'' d'' b''8. a''16 gis'' f'' e'' d'' |
	c'' b' c'' b' a' e' a' b' c'' d'' e'' f'' |
%5
	g'' e'' cis''8( )cis'' r r4 |
	f'16 cis'' d'' gis'' a'' f' e' d' e' d'' cis'' gis'' |
	a'' e' dis' cis' dis' fis' a' cis'' b' gis' a' fis'' |
	<dis'4 a' c''> <gis' b'> r |
	c''16( d'' )e'' e'' e''( f'' )g'' g'' g''( a'' )bes'' bes'' |
%10
	bes''( )g'' g''( )e'' e''( )c'' c''( )bes' bes'( a' )bes' g'' |
	a'( bes' )c'' c'' c''( d'' )e'' e'' e''( f'' )g'' g'' |
	g''( )e'' e''( )cis'' cis''( )a' a'( )g' g'( f' )g' e'' |
	f' e' d' e' f' g' a' b' c'' b' a' c'' |
	b' a' g' a' b' c'' d'' e'' f'' e'' d'' f'' |
%15
	e'' g'' f'' a'' g'' c'' b' c'' f'' e'' d'' c'' |
} \alternative {{
	<e'2. g' c''> |
}{
	<e' g' c''> |
}}
\repeat "volta" 2 {
	e''8. f''32 g'' f''8 e'' d'' c'' |
	fis''2. |
	g''8. a''32 b'' a''16 g'' fis'' e'' d'' b' c'' a'' |
%20
	c'' b' c'' d'' b'4 <g'' b''> |
	<g''8 b''> <fis'' a''> <fis'' a''> <e'' g''> <e'' g''> <dis'' fis''> |
	fis'' g''16 a'' c''4( )b' |
	b'16 cis'' dis'' e'' fis'' a'' g'' fis'' g'' e'' fis'' dis'' |
	e''4 g''2 |
%25
	g''16( f'' )e'' e'' e''( d'' )cis'' cis'' cis''( b' )a' a' |
	a'( )cis'' cis''( )e'' e''( )g'' g''( )bes'' a''( )g'' f''( )e'' |
	f''( e'' )d'' d'' d'' c'' b' b' b'( a' )g' g' |
	g'( )b' b'( )d'' d''( )f'' f''( )a'' g''( )f'' e''( )d'' |
	e'' f''( e'' d'' c'' b' a' gis' )a' c'' e'' gis' |
%30
	f' d'' e' c'' d' b' c' a' b gis' d'' f'' |
	e'' gis'' a'' f'' dis'' e'' gis' a' d'' c'' b' a' |
} \alternative {{
	<c'2. e' a'> |
}{
	<c' e' a'> \bar "|.";
}}
}
Middle = \notes \context Voice = $Middle {
	\property Staff.midiInstrument = "acoustic guitar (nylon)"
	\time 3/4;
	\key a \minor;
	\clef treble;
\repeat "volta" 2 {
	\stemBoth <c''4 e''> d''8 c'' b' c'' |
	<f'2. b'> |
	<f'4 b'> <gis' d''> r |
	s s s |
%5
	r8 g'( )g'16 bes' a' g' a' g' f' e' |
	s4 s s |
	s s s |
	s s s |
	s s s |
%10
	s s s |
	s s s |
	s s s |
	s s s |
	s s s |
%15
	s s s |
} \alternative {{
	s s s |
}{
	s s s |
}}
\repeat "volta" 2 {
	<g' c''> a'8 g' f' e' |
	<d'2. a'> |
	<g'4 d''> e'' r8 a' |
%20
	<d'4 a'> g' r |
	s s s |
	d''8 e'' a'2 |
	r4 r r |
	<g' b'> r8 bes' bes' a' |
%25
	<e'4 a'> r r |
	s s s |
	s s s |
	s s s |
	s s s |
%30
	s s s |
	s s s |
} \alternative {{
	s s s |
}{
	s s s |
}}
}
Bass = \notes \context Voice = $Bass {
	\property Staff.midiInstrument = "acoustic guitar (nylon)"
	\time 3/4;
	\key a \minor;
	\clef treble;
\repeat "volta" 2 {
	\stemDown c'4 a a |
	a8. b32( )c' b8 a gis a |
	g4 a a |
	a r r |
%5
	a a a |
	a a a |
	a a a |
	e e'8 d' c' b |
	a r g r f r |
%10
	e4 r8 g' c' e' |
	f' r e' r d' r |
	cis'4 r8 e' a cis' |
	d'4 r8 d' e' f' |
	g'4 r8 g a b |
%15
	c' b e f g g |
} \alternative {{
	c' c' c'( )b b( )a |
}{
	c'2. |
}}
\repeat "volta" 2 {
	c'4 c' c' |
	c'8. d'32 e' d'8 c' b a |
	b4 c' d' |
%20
	g4. b8 e' g' |
	c'4 r r8 a' |
	a' g' fis' e' dis' e'16 fis' |
	g4 a b |
	e8 e' e' d' d' cis' |
%25
	cis'4 r8 a a cis' |
	g' e' cis' e' cis' a |
	d'4 r8 d' d' b |
	f' d' b d' b g |
	c'4 r8 e' c' a |
%30
	d' e' d' c' b b |
	c' b c' f e e |
} \alternative {{
	a a a( )b b( )c' |
}{
	a2. \bar "|.";
}}
}

GuitarStaff = \context Staff = GuitarStaff <
	\property Staff.midiInstrument = "acoustic guitar (nylon)"
	\property Staff.transposing = -12                           

	\Treble
	\Middle
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
		\tempo 4 = 45;
	}
}
