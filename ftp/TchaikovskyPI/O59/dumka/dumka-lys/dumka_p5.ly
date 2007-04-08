% $Id: dumka_p5.ly,v 1.3 2003/07/21 00:59:05 cve Exp $

#(set! point-and-click line-location)

PVRH = \notes {<
    \context Voice = AV {
	\voiceOne
	\property PianoStaff.connectArpeggios = ##t
	\relative c' {
	    c2^"cantabile" ( ees4 ) c | f1 | 
	    g4 ( ~ g8 \times 2/3 { f16 ees d} c4^- ) c^- |
	    bes g2. | c4^- c^- ees4. ( d16 ) c |
	    bes1 | g8 (c b )c g4 \clef bass f8. (ees32 )f | g1 |
	    \clef violin
	    g'4^> g^>  g4. f16 (ees) d1 |
	    g4^> g^>  g4. f16 (ees) d1 |
	    c4 c8( d f ees d\arpeggio ) c | \clef bass ees2. ees4 |
	    d c g c8. (d32) c | g2. ees'4 |
	    d c g c8. (d32) c |
	    
	}
	\oneVoice
	<d2._\pp g> <ees4 g c'> | <d2. g> <ees4 g c'> |
	<d g> <ees g c'> <d g> <ees g c'> |
	<d1 g> | <ees g>~<ees g> | \clef violin
	<c''8_\ff ees'' g'' c'''^>> c'^> r4 r2 | \clef bass
	<ees8_\ff g c'^>> r r4 r2\fermata \bar "|."
    }
    \context Voice = BV {
	\voiceTwo
	<ees8_pp g> a\rest a4\rest a2\rest |
	<f8 c'> r r4 r2 |
	<g8 c'> b\rest r4 r2 |
	g4 r d2\rest |
	g8 e\rest r4 <ees8 g c'> e\rest e4\rest |
	f1 | g2 s2 | d2 c4 d |
	<g8 c'> a\rest a4\rest <aes8 c'> a\rest a4\rest |
	r <f2 (c'> <g4) b> |
	<g8 c'> a\rest a4\rest <aes8 c'> a\rest a4\rest |
	r <f2 (c'> <g4) b> | r g8 r r4 <ees8\arpeggio g> r |
	r4 <ees2_\p bes> <ees8 bes> r | 
	<f8 bes> r <ees g> r d r <ees g> r |
	d2. <ees8_\pp bes?> r |
	<f8 bes> r <ees g> r d r <ees g> r |
	s1 s s s s s s s
    }
>
}

PVLH = \notes {<
    \context Voice = CV {
	\oneVoice
	<c,8 g, c> r r4 r2 |
	<aes,8 c> r r4 r2 |
	<ees,8 g, c ees> r r4 r2 |
	<g,4 d> r r2 |
	<ees,8 c> r r4 <c,8 g, c> r r4 |
	\voiceOne
	bes,1 c2. c4 | b,2 a,4 b, |
	\oneVoice
	<ees,8 c ees> r r4 <d,8 d> r r4 |
	r \voiceOne d2. | 
	\oneVoice
	<ees,8 c ees> r r4 <d,8 d> r r4 |
	r \voiceOne d2. |
	r4 <ees,8 c> r r4 <c,8 g, c-\arpeggio> r |
	\oneVoice
	r4 <g,2 bes,> <g,,8 g,> r |
	<bes,, bes,> r <c, c> r <g, b,> r <c, g, c> r |
	<g,2. b,> <g,8 bes,> r |
	<bes,, bes,> r <c, c> r <g, b,> r <c, g, c> r |
	<g,2. b,> <c,4 g, c> | <g,2. b,> <c,4 g, c>|
	<g, b,> <c, g, c> <g, b,> <c, g, c>|
	<g,1 b,> | <c, g, c>~<c, g, c> |
	<c8 ees g c'_>> <c, c_>> r4 r2 | <c,8 g, c_>> r r4 r2\fermata

    }
    \context Voice = DV {
	\voiceTwo
	s1 s s s s 
	d,4. ees,8 d,8. ees,32 d, c,8 d, | ees,2. aes,4 | g,1
	s1 r4 aes,2 g,4 s1 | r4 aes,2 g,4 | 
	\repeat unfold 13 {s1}
    }
> 
}