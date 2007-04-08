% $Id: dumka_p1.ly,v 1.5 2003/06/30 01:54:41 cve Exp $

#(set! point-and-click line-location)

PIRH = \notes {<
    \context Voice = strutsA {
	\property Voice.NoteHead \set #'transparent = ##t
	\property Voice.Stem \set #'transparent = ##t
	\property Voice.Beam \set #'transparent = ##t
	\property Voice.TextSpanner \set #'type = #'dashed-line
	\property Voice.TextSpanner \set #'edge-height = #'(0 . 2.0)
	\property Voice.TextSpanner \set #'edge-text = #'("8" . "")
	\shiftOn
	s2
	\repeat unfold 41 {s1}
	s2 s16
	\property Staff.centralCPosition = #-13
	f''''1-\spanrequest \start "text"
	f''''1 f''''1 s4
	\property Staff.centralCPosition = #-6
	f'''8-\spanrequest \stop "text" s16 |

    }
    \context Voice = AI {
	\voiceOne \slurSS
	\property PianoStaff.connectArpeggios = ##t
	\relative c'' {
	    c2 ( ees4 ) c | f1 | 
	    g4 ~ g8 \times 2/3 { f16 ees d} c4^- c^- |
	    <bes g> g2. | c4^- c^- ees4.\arpeggio ( d16 ) c |
	    bes1 | g8 (c b )c g4 (f8. ees32 )f | g1 |
	    <g4^> g'^>> <g^> g'>  g'4.-> (f16 ) ees d1 |
	    <g,4^> g'^>> <g^> g'>  g'4. (f16 ) ees d1 |
	    c4 c8 ( d f ees d ) c | ees2. ees4 |
	    d\arpeggio c\arpeggio g\arpeggio c8.\arpeggio d32 c |
	    g2. aes4~ | aes4. b8 ( c d ees ) e |
	    \oneVoice \slurAttAny
	    f ( ) g bes4^>~ bes8_\mp aes ( g ) f | 
	    bes\decr ( aes g ) f bes ( aes g  \! f ~ | ) f_\p
	    c' ( b c bes aes g )f ~ | f_"dim." c' ( b c bes aes g ) f ~ |
	    f16\decr c' ( b c bes aes g ) f ~ f ( c' b c bes aes g ) f\rced ~ |
	    \time 3/2 
	    f_\pp c' ( b c bes aes g f ) ees ( c' b c aes g f ees ) d
	    c'( b c g f ees ) d |
	    \time 4/4
	    c^\pp_#'(columns( (dynamic "p"))  " marcato la melodia")
	    ( c' b c g f ees ) d c ( c' b c g f ees ) d |
	    c\cr ( c' b c f, ees d ) ees c ( c' b c f, ees d ) ees\rc |
	    c ( c' b c g-2 f ees-3 ) d ees-1 (ees'-4 d-5 ees-4 d-5 c bes ) a |
	    g ( g' fis g d c bes  ) a g ( g' fis g d c bes ) a |
	    g ( g' fis g ees d c ) bes a ( g' fis g d c bes ) a |
	    g ( d' cis d bes g f ) ees d ( bes'^4 a bes g^2 f^1 ees^3 ) d^2 |
	    c^1 ( g' fis g ees d c ) bes! a ( ees'^4 d ees d-3 c-1 bes^3 )a^2 |
	    g_"poco cresc." ( d' cis d bes g f ) ees^3 
	    d^2 ( g^5 fis g d^2 c!^1 bes ) a |
	    \clef bass
	    g ( d'  cis d bes g f! ) ees d ( g d c! bes ) a r8 |
	    \clef violin 
	    \voiceOne
	    <g'4 g'^>> s g'4.^> f16 ( ) ees16 |
	    \oneVoice
	    r16  aes, (c <f )aes> <f (aes> c aes )c r16 \clef bass
	    d, (f <c' )d> r d,(f<b)d> |
	    \voiceOne
	    \clef violin
	    <g4 g'^>> s g'4.^> f16 ( ) ees16 |
	    \oneVoice
	    r16  aes, (c <f )aes> <f (aes> c aes )c r16 \clef bass
	    d, (f <c' )d> r d, f( <b )d> |
	    \voiceOne
	    c4 \oneVoice
	    r16 \clef violin
	    ees ( <g c> ) ees r g (<c ees>) g r c (<ees g>) c |
	    r ees ( <g bes> ) ees <bes' (ees> )ees, <g (bes> )ees
	    <ees (g> )bes <bes (ees> )g r bes,( <g' bes> ) bes, |
	    r bes (<f' bes>) bes, r ees (<g c ees>) ees r g (<bes d g>) g 
	    \clef bass
	    \voiceOne c,8. ( d32 ) c |
	    g8. g16 \oneVoice r[<g bes> r <bes d>] r \clef violin
	    [<d g> r <g bes>] 
	    \voiceOne
	    c8. ( d32 ) c |
	    g8. g16 \oneVoice r[<g bes> r <bes d> r
	    <d g> r <g bes>] 
	    \voiceOne
	    c8. ( d32 ) c |
	    g8. g16 \oneVoice r[<g bes> r <bes d>] r
	    [<d g> r <g bes> r <bes d> r <d g>] |
	    r_"un poco cresc." [<bes d> r <d g>] 
	    r [<bes d> r <d g>] r [<bes d> r <d g>] r [<bes d> r <d g>] 
	    r <bes_\mp d> <c g'> <bes d>
	    \repeat unfold 3 {<c g'> <bes d> <c g'> <bes d>}
	    \repeat unfold 2 { 
		\times 4/6 {[[<c g'> <bes d> <c g'> <bes d> <c g'> <bes d>]}
	    }
	    <c16 g'> <bes32 d> <c g'> <bes8 d> ~ <bes d> r^\fermata |

	}
    }
    \context Voice = BI {
	\voiceTwo
	\relative c' {
	    <ees4 g> e4\rest e2\rest <f1 c'> |
	    <g4 c> r r2 | s1 | <g4 c,> r <ees\arpeggio g c> d\rest |
	    f1 | <g2. c,> r4 | d2\cr ( ees4 ) f\rc |
	    c'2 <aes c> | r4 <f2 (c'>  <g4) b> |
	    c2 <aes c> | r4 <f2 (c'>  <g4) b> |
	    <ees g> r r2 | r <ees4 bes'> r |
	    <d8\arpeggio f bes> e\rest <ees\arpeggio g> e\rest 
	    d\arpeggio e\rest <ees\arpeggio g> e\rest |
	    d2. f4~f d\rest r2
	    \repeat unfold 14 {s1} s1.
	    \slurBoth
	    r16 b (c )g' r b (c <ees )g> r16 b,! (c )ees g( <c )g'> r8 | s1
	    r16 b, (c )g' r b (c <ees )g> r16 b,! (c )ees g( <c )g'> r8 | s1 |
	    r16 ees,, g ees s4 s2 | s1 s2 s4 r16 c g'8 |
	    r16 d8 d16 s2 r16_\p c' g'8 | r16 d8 d16 s2 r16_\pp c' g'8 | 
	    r16 d8 d16 s2. | s1 s s
	}
    }
>
}

PILH = \notes {<
    \context Voice = strutsB {
	\property Voice.NoteHead \set #'transparent = ##t
	\property Voice.Stem \set #'transparent = ##t
	\property Voice.Beam \set #'transparent = ##t
	\property Voice.TextSpanner \set #'type = #'dashed-line
	\property Voice.TextSpanner \set #'edge-height = #'(0 . 2.0)
	\property Voice.TextSpanner \set #'edge-text = #'("8" . "")
	s2
	\repeat unfold 41 {s1}
	s2
	\property Staff.centralCPosition = #-13
	c''''1-\spanrequest \start "text"
	c''''1 c''''1 s8. s8
	\property Staff.centralCPosition = #-6
	c'''8-\spanrequest \stop "text" s16 |

    }

    \context Voice = CI {
	\voiceOne
	s1
	\relative c' {
	    c4.\arpeggio\cr ( d8 c4 ) d4\rc |
	    ees4\arpeggio s4 s2 | s1 | s1 | 
	    <f, bes> | g2. c4 | b2 ( c4 ) d | 
	    c2^#'("pu\\'u " (dynamic "f")) g'4.-> ( f16 ) ees | d1 
	    c2 g'4. ( f16 ) ees | d1 |
	    c4 c8 ( d f ees d ) c | ees2. ees4 | s1 s1 s1 |
	    \oneVoice
	    r2 \clef violin <f aes d>~<f1 aes d>~<f1 aes d>~<f2 aes d>~
	    <f8 aes d> r r4 | R1 
	    \time 3/2
	    R1.
	    \time 4/4 \clef bass
	    \voiceOne
	    c2\arpeggio ees4 c f1 | g4\arpeggio~g8~g32 f ees d c4 c\arpeggio |
	    <bes d,> <g2 bes,>~<g8 bes,> s8 |
	    c4^-\arpeggio c^- ees4.\arpeggio  (d16) c | bes1 |
	    g8 ( c b ) c g4 a 8 g16 a | bes2.\arpeggio ~bes8  s8 |
	    \oneVoice
	    r2 r4 r8 g,16 f | 
	    ees 8 r8 <g'4-> g'>
	    \voiceOne
	    g4.^> f16 ( ) ees |
	    \oneVoice
	    <d2 f d'> <aes4 ( aes,> <g ) g,> |
	    <ees8 ees'> r8 <g'4-> g'>
	    \voiceOne
	    g4.^> f16 ( ) ees |
	    \oneVoice
	    <d2 f d'> <aes4 ( aes,> <g ) g,> |
	    \voiceOne
	    c 
	    \oneVoice <c8 c'> <d d'> <f ( f'> <ees ) ees'> <d d'> <c c'> |
	    \voiceOne
	    <ees2.^\f ees'> <ees4 g ees'> | \oneVoice
	    <d-\decr f d'> <c ees g c> <g bes d g> ees8^\mp\rced ()ees' |
	    bes, ()bes' [ d16 r g r bes r d ] r ees,8 ()ees' |
	    bes, ()bes' \clef violin [d16 r g r bes r d] r ees,8 ()ees' |
	    bes, ()bes' [d16 r g r bes r d r g r bes] r  |
	    [g r bes] r [g r bes] r [g r bes] r [g r bes] r |
	    [ g8 ees16 g] \repeat unfold 3 { ees16 ( g ees ) g } |
	    \repeat unfold 2 { \times 4/6 {[ees16 (g ees g ees) g]}}
	    ees16-. g32 ees g8~g8 r8^\fermata
	}
    }
    \context Voice = DI {
	\voiceTwo \dynamicUp
	<c4^\p\arpeggio g c'> r4 r2 |
	<c1\arpeggio aes> |
	<c4\arpeggio g> r4 < ees\decr c'\arpeggio ees'> r |
	<g d'> r r8 g (a) bes\rced | 
	<ees4 g> r <c-\arpeggio g c'> r | d4. ( ) ees8 d8. ( ees32 d c8 ) d8 | 
	ees2. aes4 | g1 | <ees2 g> <d4\arpeggio aes c'> r4 |
	r4 <aes2 ( c'> <g4 ) b> |
	<ees2 g> <d4\arpeggio aes c'> r4 |
	r4 <aes2 ( c'> <g4 ) b> 
	<c\arpeggio g> r r2 | r2 <g,4\arpeggio ees bes> r |
	\oneVoice
	<bes,8\arpeggio f bes> r <c\arpeggio ees g c'> r
	<g\arpeggio b> r <c\arpeggio g c'> r |
	<g2. b> <f4 c'>~<f c'> r r2 |
	\repeat unfold 5 {s1} s1.
	\voiceTwo
	<c4 ees\arpeggio g> r r <ees g> | <aes1 c'> |
	<ees4\arpeggio c'> r4 r4 <c\arpeggio ees g> |
	g,2.~g,8 r |
	<ees4\arpeggio g> r4 <c\arpeggio g> r4 | g1 |
	<ees2 g> <c ees> | <g,2.\arpeggio d> ~ <g,8 d> r | s1
	s2  r8 <aes, c>~<aes, c> r8 | s1
	s2  r8 <aes, c>~<aes, c> r8 | s1
	r8 <c, ees, g,> s4 s2 | r4 <g,2\arpeggio bes, ees g>  r4 |
	\repeat unfold 7 {s1}
	
    }
> 
}
