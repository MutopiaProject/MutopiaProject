% $Id: dumka_p4.ly,v 1.5 2003/07/21 22:24:15 cve Exp $
#(set! point-and-click line-location)

PIVRH = \notes {<
    \context Voice = AIV{
	<
	    \relative c' {
		c16^. aes^. bes^. d^. ees^"sempre staccato"
		c e cis f d g e \clef violin aes f g bes |
		c aes bes d ees c e cis f d g e aes f bes g |
		c aes bes d ees c d f g ees f aes bes fis g bes | c8
	    }
	    \relative c {
		c16 aes bes d ees c e cis f d g e aes f g bes |
		c aes bes d ees c e cis f d g e aes f bes g |
		c aes bes d ees c d f g ees f aes bes fis g bes | c8_\fff
	    }
	>
	[<c'8_> f' c''>~<c' f' c''>]
	[<f''16 f'''> <aes'' aes'''>] <bes''8^> bes'''>
	[<bes8_> ees' g' bes'>~<bes8 ees' g' bes'>]
	[<g''16 g'''><bes'' bes'''>] |
	<c'''8^> c''''>
	[<c'8_> f' c''>~<c' f' c''>]
	[<f''16 f'''> <aes'' aes'''>] <bes''8^> bes'''>
	[<bes8_> ees' g' bes'>~<bes8 ees' g' bes'>]
	[g''16-. bes''-.] |
	\relative c''' {
	    [c16-. <g-. c,> c <g-. c,>] [<f (c^\sf> )f,]
	    [f'-. aes-.] [bes-. <f-. bes,> bes-. <f-. bes,>] 
	    [<ees^\sf (bes> )ees,] 
	    [g'-. bes-.] |
	    [c16-. <g-. c,> c <g-. c,>] [<f (c^\sf> )f,]
	    [f'-. aes-.] [bes-. <f-. bes,> bes-. <f-. bes,>] 
	    [<ees^\sf (bes> )ees,] r8 |
	    <ees8-._\f aes> <ees aes ees'>
	    \voiceOne
	    aes^- bes16 <aes c>
	    \oneVoice
	    <ees8-. g> <g-. ees'> 
	    \voiceOne
	    g g16^. g^. |
	    \oneVoice
	    <ees8-. aes> <ees aes ees'>
	    \voiceOne
	    aes^- bes16 <aes c>
	    \oneVoice
	    <ees8-. g> <g-. ees'> 
	    \voiceOne
	    g g16^. g^. |
	    \oneVoice
	}
				%Andante
	\relative b {
	    bes32_\ff (bes' d,) g c, (c' g) bes
	    cis, (cis' g <a) d> e (<e') bes> fis,( <fis') c>
	    g, (g' bes,) d a (a' ees) g 
	    bes, (bes' d,) g d( <d') bes> ees,( <ees') bes> |
	}
	\break
	\relative b {
	    r32 bes'( bes,) g' c, (c' g) bes
	    cis, (cis' g <a) d> e (<e') bes> fis,( <fis') c>
	    g, (g' bes,) d a (a' ees) g 
	    bes, (bes' d,) g d( <d') bes> ees,( <ees') bes> |
	}
	\voiceOne
	\break
	\relative g'' {
	    r32 g (b,) d a (a' c, )ees b (b' f) g 
	    c, (<ees) g c> d (<g) d'> ees (ees' g, )c f, (f' aes, )c 
	    g (g' c, )ees aes,( <c) aes'> g (<c )g'> |
	}
	\break
	\relative g'' {
	    r32 g (b,) d a (a' c, )ees b (b' f) g 
	    c, (<ees) g c> d (<g) d'> ees (ees' g, )c f, (f' aes, )c 
	    g (g' c, )ees aes,( <c) aes'> g (<c )g'> |
	}
	\oneVoice
				%meno mosso 
	\relative a'' {
	    [<aes8 c ees aes> <g c ees g>]
	    [<f16. aes c f> <ees32 ees'> <des16 des'> <c c'>]
	    [<f8 aes c f> <ees aes c ees>]
	    [<des16. ees aes des> <c32 c'> <bes16 bes'> <aes aes'>] |
	    [<des16 ees (des'> <c) c'>] [<bes ees (bes'> <aes) aes'>]
	    [<f aes (f'> <ees) ees'>] [<des ees (des'> <c) c'>]
	    [<bes ees (bes'> <aes) aes'>]
	    \clef bass
	    [<f aes (f'><ees) ees'>][<des ees (des'><c) c'>]
	}
	\clef violin
	<
	    \relative b' {b8_\fff ~[b b,] [b' b'] [b' b,] b,}
	    \relative e' {e8~e e, e' e' e' e, e,}
	    \relative b {b8~b b, b' b' b' b, b,}
	>
	<
	    \relative g' {
		\portamentoUp \slurUp
		[gis16^._\mf ()b^.] |[cis8^- cis^-] [cis^- fis,16^. ()a^.] [b8^- b^-] 
		\voiceOne
		[b^- gis16^. ()b^.] |
		\oneVoice
		[cis8^- cis^-] [cis^- fis,16^. ()a^.] [b8^- b^-] [b^- e,16^. gis^.] |
		a8^- a^- a^- \clef bass [dis,16^.() fis^.] gis8^- gis^- gis^- [cis,16^.() e^.] |
		fis8^- bis,16^. ()dis^. e8^- ais,16^. ()cis^. dis4_\f ~dis8 fis |
		dis fis dis fis dis4_"dim." ~dis8 fis | dis fis dis fis ees!2->~ |
		ees1~ees~ees^\fermata \clef violin \bar "||"
	    }
	    \relative d' {
		s8 dis e fis s cis dis s s |
		dis e fis s cis dis e s | 
		bis cis dis  s ais bis cis s |
		gis s gis s gis4~ gis8 a | 
		gis a gis a gis4~gis8 a gis a gis a 
		aes2~aes1~aes~aes
	    }
		
	    \relative g {
		[gis16 b] |[cis8 cis] [cis fis,16 a] [b8 b] 
		[b gis16 b] |
		[cis8 cis] [cis fis,16 a] [b8 b] [b e,16 gis] |
		a8 a a [dis,16 fis] gis8 gis gis [cis,16 e] |
		fis8 bis,16 dis e8 ais,16 cis dis4~dis8 fis |
		dis fis dis fis dis4~dis8 fis | dis fis dis fis ees!2->~ |
		ees1~ees~ees
	    }
	>
    }
    \context Voice = BIV {
	\repeat unfold 7 {s1}
	\voiceTwo 
	\relative e' {
	    s4 ees16. f32 ees16 ees s4 ees16. d32 c16 bes |
	    s4 ees16. f32 ees16 ees s4 ees16. d32 c16 bes |
	}
	s1 s
	\relative a' {
	    s8 a8 b c16 d ees8 f g aes16 g |
	}
	\relative a' {
	    s8 a8 b c16 d ees8 f g aes16 g |
	}
	s1 s s
	s4 s s e'16. fis'32 s8 |
    }
>}

PIVLH = \notes {<
    \context Voice = CIV{
	\relative c, {
	    c16^"poco a poco cresc." 
	    aes bes d ees c e cis f d g ees aes f g bes |
	    c aes bes d ees c e cis f d g ees aes f bes g |
	    c aes bes d \clef violin ees c d f g ees f aes bes fis g bes | c8
	}
	\clef bass
	[<aes,8-> d f aes>~<aes,8 d f aes>]
	\clef violin
	[f'16 aes'] bes'8->
	\clef bass
	[<g,-> bes, ees g>~<g, bes, ees g>]
	\clef violin
	[g'16 bes'] |
	c''8->
	\clef bass
	[<aes,8-> d f aes>~<aes,8 d f aes>]
	\clef violin
	[f'16 aes'] bes'8->
	\clef bass
	[<g,-> bes, ees g>~<g, bes, ees g>] r |
	aes, <aes c' (e'> )aes'-> r
	g, <g bes (d'> )g'-> r |
	aes, <aes c' (e'> )aes'-> r
	[g, <g bes (d'> )g'->] 
	<
	    \relative g, {
		[g16_. bes_.] | c8_. c_. c_- g16_. aes_. bes8_. bes_. 
		bes_- ees16_. d_. |
		c8_. c_. c_- g16_. aes_. bes8_. bes_. bes_- ees16 ees |
	    }
	    \relative g,, {
		g16 bes c8 c c g16 aes bes8 bes bes ees16 d |
		c8 c c g16 aes bes8 bes bes ees16 ees |
	    }
	>
	\voiceOne
	\relative d, {
	    \grace {d8 (} [)d'8^- ees^-] [e16. () fis32 g16^. a^.] [bes8^- c^-] 
	    \clef violin [d16.() e32 fis16^. g^.] |
	    \clef bass
	}
	\relative d, {
	    \grace {d8} [d'8^- ees^-] [e16. () fis32 g16^. a^.] [bes8^- c^-] 
	    \clef violin [d16.() e32 fis16^. g^.] |
	    \clef bass
	}
	g4~g16. s s16 c4~c16. s s16 |
	g4~g16. s s16 c4~c16. s s16 |
	\oneVoice
	\relative e, {
	    r32 ees (c') aes ees' (c aes) ees r aes (ees') c aes' (ees c) aes 
	    r c (aes') ees c' (aes ees) c r ees (c') aes ees' (c aes) ees |
	}
	<
	    \relative e' {
		r ees (aes) ees r c (ees) c r aes (c) aes r ees (aes) ees r
		c (ees) c r aes (c) aes r ees (aes) ees 
	    }
	    \relative a {
		s aes s aes s ees s ees s c s c s aes s aes 
		s ees s ees s c s c s aes s aes
	    }
	>
	<
	    \relative g {gis8~[gis gis,] [gis' gis'] [gis' gis,] gis, r}
	    \relative e {e8~e e, e' e' \clef violin e' e, \clef bass e, s}
	    \relative g, {gis8~gis gis, gis' gis' gis' gis, gis, s}
	>
	<
	    \relative a { 
		a8 a a r gis gis gis r |
		a a a r gis gis gis r |
		fis fis fis r e e e r |
		dis r cis r \voiceOne cis () bis~bis cis |
		bis cis bis cis cis bis~bis cis |
		bis cis bis cis des4 c~|c b c2~c~c8 r r4 r1^\fermata
	    }
	    \relative a, { 
		a8 a a r gis gis gis r |
		a a a r gis gis gis r |
		fis fis fis r e e e r |
		dis r cis r s2 |
		s1 s s s s
	    }
	    \relative fis {
		fis8 e dis s e dis s s |
		fis e dis s e dis cis s |
		dis cis bis s cis bis ais s |
		gis s gis s s2 s1 s s s s
	    }
	>

    }
    \context Voice = DIV{
	\repeat unfold 9 {s1}
	\voiceTwo
	d2 <d4 g> s4 |
	d2 <d4 g> s4 |
	<
	    \relative f' {
		[f8^\fff ees] [d16. des32 c16 b]
		[a8  aes] [g16. ges32 f16 ees] |
	    }
	    \relative f {
		[f8 ees] [d16. des32 c16 b]
		[a8  aes] [g16. ges32 f16 ees] |
	    }
	>
	<
	    \relative f' {
		[f8^\fff ees] [d16. des32 c16 b]
		[a8  aes] [g16. ges32 f16 ees] |
	    }
	    \relative f {
		[f8 ees] [d16. des32 c16 b]
		[a8  aes] [g16. ges32 f16 ees] |
	    }
	>
	s1 s s
	s4 s s cis16. dis32 e16 r | s1 s
	s2 \grace {gis,,8} gis,4~gis,8 fis, |
	gis, fis, gis, fis, \grace {gis,,8} gis,4~gis,8 fis, |
	gis, fis, gis, fis, aes,2~aes,1~aes,2~aes,8 s s4 s1 |
    }
>}
