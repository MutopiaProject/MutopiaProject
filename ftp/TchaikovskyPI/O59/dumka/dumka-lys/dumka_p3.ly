% $Id: dumka_p3.ly,v 1.6 2003/07/23 18:59:26 cve Exp $
#(set! point-and-click line-location)

PIIIRH = \notes {<
    \context Voice = AIII{
	\voiceOne
	\relative c''' {
	    d8 d~d c32( d c) g' d8 d~d c32 (d c) d | 
	    g,16. bes32() a16. bes32() g16. bes32() c16. bes32() g8 g~g 
	    \portamentoUp
	    bes16^. ()  c^. |
	    \portamentoOff

	}
	\relative c''' {
	    d8 d~d c32 (d c) g' d8 d~d c32 (d c) d | 
	    g,16. bes32 a16. bes32 g16. bes32 c16. bes32 g8 g~g 
	    \portamentoUp
	    bes16^. () c^. |
	}
	\relative c''' {
	    d8 d~d g,32 a g^.() a^. bes8 bes~bes e,32 fis e^. () fis^. |
	    g 8 cis,32 dis cis dis  e8 g,32 a g a bes4~bes8 bes16^.() c^. |
	}
	\relative c'' {
	    d8 d~d g,32 a g^.() a^. bes8 bes~bes e,32 fis e^. () fis^. |
	    g 8 cis,32 dis cis dis \clef bass e8 g,32 a g a bes4~bes8. c16 |
	    bes4~bes8. c16 bes8. c16  bes8. c16 |
	    bes1 ~ bes4 ~ bes2 ~ bes8
	}
	\portamentoOff
	\clef violin
	\property Voice.TextSpanner \set #'type = #'dashed-line
	\property Voice.TextSpanner \set #'edge-height = #'(0 . 2.0)
	\property Voice.TextSpanner \set #'edge-text = #'("8" . "")
	\cadenzaOn
	\small
	\oneVoice
	\translator Staff = down
	r16^\fermata
	\relative a,, {
	    a16^#'(lines ("cresc." "")) bes 
	    \times 2/3 {[d ees fis]}
	    \times 2/3 {[g a bes]}
	    \times 2/3 {[d ees fis]}
	    \times 2/3 {[g a bes]}
	    \times 4/6 {[g32 a bes d ees fis]}
	    \translator Staff = up
	    \times 4/6 {[g32\cr a bes d ees fis]}
	    \times 4/6 {[g32 a bes d ees fis]}
	    \property Staff.centralCPosition = #-13
	    \times 4/6 {[g32 \spanrequest \start "text" a bes d ees fis]}
	    \times 4/6 {[g\rc_\f (b, c f d )ees]}
	    \times 4/6 {[g (b, c f d )ees]}
	    \times 4/6 {[g (b, c f d )ees]}
	    \times 4/6 {[g (b, c f d )ees]}
	    g4^\fermata\decr~g16~g32 d_\pp\rced (f) ees
	    \times 4/6 {[a,! (c bes fis! aes!) g]}
	    \times 4/6 {[d (f! ees a,! c )bes\spanrequest \stop "text"]}
	    \property Staff.centralCPosition = #-6
	    \times 4/6 {[fis! (aes! g d f! )ees]}
	    \times 4/6 {[a,! (c bes fis! )aes g]}
	    \times 4/6 {[d_"cresc." (f ees a, c )bes]}
	    \times 4/6 {[d (f ees a, c )bes]}
	    \times 4/6 {[d (f ees a, c )bes]}
	    \times 4/6 {[d (f ees a, c )bes]}
	    \times 4/6 {[d16\cr~d32 ees fis g]}
	    \times 4/6 {[a bes d ees fis g]}
	    bes4_\f\rc~ \times 16/18 {
		bes32 ( g ees c bes g ees c
		\clef bass
		bes32 g ees c bes32 g ees c bes32 ) g}
	    r2\fermata
	    \clef violin
	    \translator Staff=down
	    \voiceOne
	    ees'8 g bes
	    [ees32 g bes ees 
	    \translator Staff=up
	    g bes ees g bes 
	    \property Staff.centralCPosition = #-13
	    ees\spanrequest \start "text"  g bes ees ]
	    g8\spanrequest \stop "text"
	    \property Staff.centralCPosition = #-6
	    r8^\fermata
	    \cadenzaOff
	}
	\normalsize
	| s2 s4 s8
	\clef bass <g16_. g,> <bes_. bes,> |
	
    }
%BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
    \context Voice = BIII{
	\voiceTwo
	<
	    \relative b'' {bes16 bes bes bes bes bes s s bes16 bes bes bes bes bes s s}
	    \repeat unfold 16 {g''}
	    \relative d'' { d16 d d d d d s s s2 }
	>
	\relative d'' { 
	    d16 d ees ees d d <c g'> <c g'> d d <d bes g> <d bes g>
	    <d bes g> <d bes g> ees <ees bes'>
	}
	<
	    \relative b'' {bes16 bes bes bes bes bes s s bes16 bes bes bes bes bes s s}
	    \repeat unfold 16 {g''}
	    \relative d'' { d16 d d d d d s s s2 }
	>
	\relative d'' { 
	    d16 d ees ees d d <c g'> <c g'> d d <d bes g> <d bes g>
	    <d bes g> <d bes g> ees ees
	}
	<
	    \relative d'' {
		d d d d d d c c bes bes bes bes bes bes a a |
		g g g g g g e e ees ees ees ees ees ees ees ees |
	    }
	    \relative b'' {
		bes bes bes bes bes bes s s g g g g g g s s |
		e e s s c c s s g g g g g g s bes |
	    }
	>
	<
	    \relative d' {
		d d d d d d c c bes bes bes bes bes bes a a |
		g g g g g g e e ees ees ees ees ees ees ees ees |
	    }
	    \relative b' {
		bes bes bes bes bes bes s s g g g g g g s s |
		e e s s c c s s g g g g g g g g |
	    }
	>
	\repeat unfold 32 {<ees16 g>}
	<ees16 g> <ees16 g>~<ees16 g>~<ees16 g>~<ees2 g>~<ees8 g>
    }
>}

PIIILH = \notes {
    \clef violin
    <
	\repeat unfold 26 {g'16}
	\relative bes' {
	    bes16 bes bes bes bes bes <c ees,> <c ees,>
	    <d bes> <d bes> <d bes> <d bes> <d bes> <d bes>
	    <c ees,> <c ees,> |
	    bes bes c c bes bes ees, ees bes' bes
	}
    >
    \property Voice.TextSpanner \set #'type = #'dashed-line
    \property Voice.TextSpanner \set #'edge-height = #'(0 . 2.0)
    \property Voice.TextSpanner \set #'edge-text = #'("8" . "")
    r8
    \property Staff.centralCPosition = #-13
    \property Voice.NoteHead \set #'transparent = ##t
    \grace {g'''1 \spanrequest \start "text"}
    \property Voice.NoteHead \set #'transparent = ##f
    <g'''8 d''''\spanrequest \stop "text"> 
    \property Staff.centralCPosition = #-6
    [<g'16 bes'> <g'16 bes'>]
    <
	\repeat unfold 26 {g'16}
	\relative bes' {
	    bes16 bes bes bes bes bes <c ees,> <c ees,>
	    <d bes> <d bes> <d bes> <d bes> <d bes> <d bes>
	    <c ees,> <c ees,> |
	    bes bes c c bes bes ees, ees bes' bes
	}
    >
    r8
    \property Voice.NoteHead \set #'transparent = ##t
    \grace {g'''1 \spanrequest \start "text"}
    \property Voice.NoteHead \set #'transparent = ##f
    \property Staff.centralCPosition = #-13
    <g'''8 d''''\spanrequest \stop "text"> 
    \property Staff.centralCPosition = #-6
    [<g'16 bes'> <g'16 bes'>] |

    \repeat unfold 4 {<ges'16 bes' e''>}
    <f' bes' f''> <f' bes' f''>
    <e' g'> <e' g'>
    \repeat unfold 4 {<ees' g' cis''>}
    <d' g' d''> <d' g' d''>
    <cis' e'> <cis' e'> |
    <c' e' ais'> <c' e' ais'>
    <b e' b'> <b e' b'>
    <bes c' e'> <bes c' e'> 
    <a c'> <a c'> 
    \clef bass
    <g8 bes>
    \times 4/7 \relative g,,{ [g32_\p ( bes ees g bes ees )g]}
    [bes8  <g16 bes><g bes>] |

    \repeat unfold 4 {<ges16 bes e'>}
    <f bes f'> <f bes f'>
    <e g> <e g>
    \repeat unfold 4 {<ees g cis'>}
    <d g d'> <d g d'>
    <cis e> <cis e> |
    <c e ais> <c e ais>
    <b, e b> <b, e b>
    <bes, c e> <bes, c e> 
    <a, c> <a, c> 
    <g,8 bes,>
    \property Voice.TextSpanner \set #'direction = #'-1

    \property Staff.centralCPosition = #13

    \times 4/6 \relative g,,,{ 
	[bes32\spanrequest \start "text" ees g 
	\spanrequest \stop "text" 
	\property Staff.centralCPosition = #6
	bes ees g]
    }
    [bes,16 r \clef violin <ees' g' bes'>] r \clef bass |
    r8
    \property Staff.centralCPosition = #13

    \times 4/6 \relative g,,,{ 
	[bes32\spanrequest \start "text" ees g 
	\spanrequest \stop "text" 
	\property Staff.centralCPosition = #6
	bes ees g]
    }
    [bes,16 r \clef violin <ees' g' bes'>] r
    r8
    <ees'16 g' bes'> r r8
    <ees'16 g' bes'> r |
    r8 <ees'8 g' bes'>~<ees'8 g' bes'> \clef bass
    \property Staff.centralCPosition = #13

    \times 4/6 \relative g,,,{ 
	[bes32\spanrequest \start "text" ees g 
	\spanrequest \stop "text" 
	\property Staff.centralCPosition = #6
	bes ees g]
    }
    bes,8. c16 bes,4~|bes,4~bes,2~bes,8 
    \small
    \cadenzaOn
    s8
    s1 \bar "" s \bar "" s \bar "" s4 s s s
    ees,,2\fermata
    \relative g,, {
	\voiceTwo
	g8 bes ees 
	[g32 bes ees g 
	\translator Staff=up
	bes ees g bes ees g bes ees g] bes8 
	\translator Staff=down
	r8^\fermata
    }
    \cadenzaOff
    \normalsize
    \oneVoice
    | s8 s s s s s s g,,16-. bes,,-. |
}