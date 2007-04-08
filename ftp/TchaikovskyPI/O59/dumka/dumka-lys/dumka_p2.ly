% $Id: dumka_p2.ly,v 1.3 2003/07/17 21:37:39 cve Exp $

#(set! point-and-click line-location)
PIIRH = \notes {<

   \context Voice = AII {
       \property PianoStaff.connectArpeggios = ##f
       \stemUp \tieUp
       \relative g'' {
	   g4^>~g8 \grace{[f16 (g]} )f16 ees^. d () ees c^. d^. bes8^. c^. |
	   g'4^>~g8 \grace{[f16 (g]} )f16 ees^. d () ees c^. d^. bes8^. c^. |
	   \stemBoth \tieBoth
	   <g_\mf bes^> g'> <g_"pesante" bes^> g'> 
	   <aes^> bes aes'> <g^> bes g'>
	   <f^> bes f'> <g^> bes g'> <ees^> bes' ees> <f^> bes f'> |
	   <g_\f^> bes g'> <bes^> ees bes'>~<bes ees bes'>
	   <c^> ees c'>~<c ees c'> <bes^> ees bes'> <f bes f'>
	   a32 bes d f |
	   \stemUp \tieUp \dynamicUp
	   g4\decr~g8\rced \grace{[f16 (g]} )f16^\mp ees^. d () 
	   ees c^. d^. bes8^. c^. |
	   g'4\decr~g8\rced \grace{[f16 (g]} )f16^\mp ees^. d () 
	   ees c^. d^. bes8^. c^. |
	   \stemBoth \tieBoth
	   <g_"pesante" bes^> ees g> <g bes^> g'> 
	   <aes?^> bes aes'> <g^> bes g'>
	   <f^> bes f'> <g^> bes g'> <ees^> g ees'> <f^> g f'> |
       }
       <
	   \relative d' {d8 d ees d c d bes c 
			 d bes~bes c d bes~bes c d bes d ees}
	   \relative g' {g8 g g g g g g g g g~g g g g~g g g g g}
	   \relative d'' {d8 d ees d c d c c 
			  d bes~bes c d bes~bes c d bes d ees}
       >
       \relative g { [g8^> ( \times 4/5 { bes32 d g bes d }] )g8-. r} |
       \stemUp \tieUp
       \relative g' {
	   g4^>~g8 \grace{[f16 (g]} )f16 ees^. d () ees c^. d^. bes8^. c^. |
	   g'4^>~g8 \grace{[f16 (g]} )f16 ees^. d () ees c^. d^. bes8^. c^. |
       }
       \stemBoth \tieBoth
       \relative g {
	   <g4.-> bes ees g> <f8 c'> <g4.-> bes ees g> <f8 c'> |
	   <g8->_\p bes ees g> <f c'> <g8-> bes ees g> <f c'>
	   <g8-> bes ees g> <f c'> <g8-> bes ees g> <f c'> |
       }
       % l'istesso tempo
       \stemUp \slurUp 
       \property Voice.Slur \override #'attachment-offset = 
       #'((0 . 0.5) -0.5 . 1.0)
       \relative g' {
	   [g16^> f32 (ees) d16^. ees^.] bes8-. <c-> f,>
       }
       \relative g' {
	   [g16^> f32 (ees) d16^. ees^.] bes8-. <c-> f,>
       }
       \property Voice.Slur \revert #'attachment-offset
       \stemBoth \dynamicDown
       <
	   \relative g' {
	       <g16 ees bes g->> g~g g~g\cr g~g g~g g~g 
	       g~g g\rc~g8_\f
	   }
	   \relative g' {
	       s8. f16~f ees~ees d~d c~c <d bes>~<d bes> s <bes'8^> d g>
	   }
       >
       \stemUp \slurUp 
       \property Voice.Slur \override #'attachment-offset = 
       #'((0 . 0.5) -0.5 . 1.0)
       \relative g' {
	   [g16^> f32 (ees) d16^. ees^.] bes8-. <c-> f,>
       }
       \relative g' {
	   [g16^> f32 (ees) d16^. ees^.] bes8-. <c-> f,>
       }
       \property Voice.Slur \revert #'attachment-offset
       <
	   \relative g' {
	       <g16 ees bes g->> g~g g~g\cr g~g g~g g~g
	       g~g g\rc () bes_\f
	   }
	   \relative g' {
	       s8. f16~f ees~ees d~d c~c <d bes>~<d bes> s <d' g> 
	       <bes bes'>
	   }
       >
       \stemBoth \slurBoth
       <
	   \relative c''' {
	       | [c8--^"giocoso"_\mp c--] [c16-- bes32 (aes) g16-. f-.] 
	       [bes8-- bes--] [bes () ees16-. d-.] |
	       | [c8-- c--] [c16-- bes32 (aes) g16-. f-.] 
	       [bes8-- bes--] bes [g,16_\mf bes] |
	   }
	   \relative c'' {
	       c8 c c16 s s8 
	       bes8 bes bes ees16 d |
	       c8 c c16 s s8 
	       bes8 bes bes ees,16 g |
	   }
       >
       \stemUp
       \relative c'' {
	   c8^- c^- c16^- bes32 () aes g16^. f^. bes8^- bes^- bes16 r r8 |
	   c8^- c^- c16^- bes32 () aes g16^. f^. bes8^- bes^- bes16 r r8 |
       }
       \oneVoice
       \property Voice.TextSpanner \set #'type = #'dashed-line
       \property Voice.TextSpanner \set #'edge-height = #'(0 . 2.0)
       \property Voice.TextSpanner \set #'edge-text = #'("8" . "")
       \relative b' { r16^#'(lines("brilliante" "")) \grace{b16} <c f,>}
       \relative b'' { r16 \grace{b16} <c f,>}
       \property Staff.centralCPosition = #-13

       \relative b''' { r16 \grace{b16-\spanrequest \start "text"} 
			<c-\spanrequest \stop "text" f,>}
       \property Staff.centralCPosition = #-6
       r8
       \relative b' { r16 \grace{d16} <bes ees>}
       \relative b'' { r16 \grace{d16} <bes ees>}
       \property Staff.centralCPosition = #-13
       \relative b''' { r16 \grace{d16-\spanrequest \start "text"} 
			<bes-\spanrequest \stop "text" ees>}
       \property Staff.centralCPosition = #-6
       r8 |
       \relative b' { r16 \grace{b16} <c f,>}
       \relative b'' { r16 \grace{b16} <c f,>}
       \property Staff.centralCPosition = #-13

       \relative b''' { r16 \grace{b16-\spanrequest \start "text"} 
			<c-\spanrequest \stop "text" f,>}
       \property Staff.centralCPosition = #-6
       r8
       \relative b' { r16 \grace{d16} <bes ees>}
       \relative b'' { r16 \grace{d16} <bes ees>}
       \property Staff.centralCPosition = #-13
       \relative b''' { 
	   r16 \grace{d16-\spanrequest \start "text"} 
	   <bes ees>
       }
       \relative d''' { 
	   d32( ees g )bes | c->( aes g )f-\spanrequest \stop "text"
	   \property Staff.centralCPosition = #-6 
	   c-> (aes g) f c->( aes g )f r
       }
       \relative e''' {
	   e (f) g bes^> (g f) ees bes^> (g f )ees bes^> (g f) ees r
       }
       \relative g''' { g32 (aes) bes | c-> (aes g) f
			c-> (aes g) f c-> (aes g) f r}
       \relative e''' {
	   e (f) g bes^> (g f) ees bes^> (g f) ees bes^> (g f )ees r16
	   <g_\p bes,> |
       }
       <
	   \relative f' {
	       fis_.\cr g_. fis_. g_. fis_. g_. e_. f_. 
	       f_. g_. f_. g_. f_. g_. d_. ees_. |
	       fis_. g_. fis_. g_. fis_. g_. e_. f_. 
	       f_. g_. f_. g_. f_. g_. d_. ees_.\rc |
	   }
	   \relative c'' { 
	       s16 c s c s c s bes s bes s bes s bes s g |
	       s16 c s c s c s bes s bes s bes s bes s g |
	   }
	   \relative c' { 
	       s16 c s c s c s bes s bes s bes s bes s g |
	       s16 c s c s c s bes s bes s bes s bes s g |
	   }			   
       >
       <
	   \relative c'' {
	       r16 c8 c'16~c16. aes32 g16 f 
	       r bes,8 bes'16~bes16. g32 f16 ees 
	       r16 c8 c'16~c16. aes32 g16 f 
	       r bes,8 bes'16~bes16. g32 f16 ees 
	   }
	   \relative c' {
	       r16 c8 c'16~c16. aes32 g16 f 
	       r bes,8 bes'16~bes16. g32 f16 ees 
	       r16 c8 c'16~c16. aes32 g16 f 
	       r bes,8 bes'16~bes16. g32 f16 ees 
	   }
       >
       \relative d' {
	   r16 d32 (e \times 4/5 { [f g aes bes c] }
	   \times 4/6 {[d e f g aes bes ]} )c8^.
       }
       \relative c' {
	   r16 c32 (d \times 4/5 { [ees f g aes bes] }
	   \times 4/6 { [c d ees f g aes ]} ) bes8^. |
       }
       \relative d' {
	   r16 d32 (e \times 4/5 { [f g aes bes c] }
	   \times 4/6 {[d e f g aes bes ]} )c8^.
       }
       \relative c' {
	   r16 c32 (d \times 4/5 { [ees f g aes bes] }
	   \times 4/6 { [c d ees f g )aes] }  [bes16^.( <bes^.) c>]|
       }

   } 
% BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
   \context Voice = BII {
       \stemDown \tieDown
       \relative g' {
	   % g'' here to have arpeggio split between staves
	   <g4\arpeggio bes ees g>~<g8 bes ees> r8 r4 r8 f |
	   <g4\arpeggio bes ees g>~<g8 bes ees> r8 r4 r8 f |
	   s1 s1 
	   <g8 bes ees g> r8 r4 r8 [<fis a> g] <c,_\f f>|
	   <g'8 bes ees g> r8 r4 r8 [<fis a> g] <c,_\f f>|
	   s1 s s s
       }
       \relative g {
	   <g4 bes ees >~<g8 bes ees> r8 r4 r8 f |
	   <g4 bes ees >~<g8 bes ees> r8 r4 r8 f |
	   s1 s1
	   <g16 bes ees> r r8 s4 <g16 bes> r r8 s4 s1
	   <g16 bes ees> r r8 s4 <g16 bes> r r8 s4 |
       }
       s1 s s
       \relative a' {
	   \slurDown
	   aes16( <f) c> aes16 (<g) c,> aes  r r8 
	   g16( <ees) bes> g (<f) bes,> 
	   
	   \property Voice.Slur \override #'attachment-offset = 
	   #'((0 . 0) 0 . 3.0)
	   g32 (fis g bes )ees16_. d_. |
	   \property Voice.Slur \revert #'attachment-offset
	   aes16( <f) c> aes16 (<g) c,> aes  r r8 
	   g16( <ees) bes> g (<f) bes,> 
	   [g32 (f ees d )ees8]  |
       }
   }
>}

PIILH = \notes {<
%CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
    \context Voice = CII {
	\clef bass
	<ees4^\mf\arpeggio bes ees'> ~ <ees8 bes ees'> r r4 r8 <aes ees'> |
	<ees4\arpeggio bes ees'> ~ <ees8 bes ees'> r r4 r8 <aes ees'> |
	<ees_> bes ees'> <ees_> bes ees'> <f_> bes f'> <ees_> bes ees'>
	<d_> bes d'> <ees_> bes ees'> <c_> bes c'> <d_> bes d'> |
	<ees_> bes ees'> <g_> ees' g'>~<g ees' g'> 
	<aes_> ees' aes'>~<aes ees' aes'> <g_> ees' g'> <d_> bes d'> r8^\f
	\relative a, {
	    r16^\mp a-. bes-. ees-. [g-. bes-.] 
	    \clef violin [ees-. g-.] bes8-. ees,-. r8 \clef bass s8 |
	}
	\relative a, {
	    r16^\mp a-. bes-. ees-. [g-. bes-.] 
	    \clef violin [ees-. g-.] bes8-. ees,-. r8 \clef bass s8 |
	}
	<ees,_> bes, ees> <ees_> bes ees'> <f_> bes f'> <ees_> bes ees'>
	<d_> bes d'> <ees_> bes ees'> <c_> g c'> <d_> g d'> |
	\dynamicUp
	<
	    \relative c { bes8^"accentuato"\cr bes c bes a bes g a bes g~g a bes g~g a 
		      bes\rc g bes c }
	    \relative g { g g g g g g d d d d~d d d d~d d d d g g }
	    \relative c' { bes8 bes c bes a bes g a bes g~g a bes g~g a 
		      bes g bes c }
	>
	\relative b, { [<bes8_>^\ff (g> \times 4/5 { d32 g bes d g }] )bes8-. r} |
	<ees,4^\mf bes, ees> ~ <ees,8 bes, ees> r r4 r8 <aes, ees> |
	<ees,4 bes, ees> ~ <ees,8 bes, ees> r r4 r8 <aes, ees> |
	\relative e, {
	    <ees4.-> bes' ees> <aes8 ees'> <ees4.-> bes' ees> <aes8 ees'> |
	    <ees-> bes' ees> <aes ees'> <ees-> bes' ees> <aes ees'>
	    <ees-> bes' ees> <aes ees'> <ees-> bes' ees> <aes ees'>
	}
	%l'istesso tempo
	<ees,16 bes, ees_>> r^\p bes-. g-. fis-. g-. aes8-.
	<ees,16 bes, ees_>> r^\p bes-. g-. fis-. g-. aes8-.
	\stemUp \tieUp
	r16 bes8^"cresc." b16~b c'8 bes16~bes aes8  g16~g8 d' |
	\stemBoth \tieBoth
	<ees,16 bes, ees_>> r bes-. g-. fis-. g-. aes8-.
	<ees,16 bes, ees_>> r bes-. g-. fis-. g-. aes8-.
	\stemUp \tieUp
	r16 bes8^"cresc." b16~b c'8 bes16~bes aes8  g16~g8 d' |
	\stemBoth
	r16 <aes, bes, (d> ) aes <aes bes (d'>  aes'  <aes) bes d'> r8
	r16 <g,  bes, (ees> ) g <g bes (ees'> g' <g) bes ees'> r8
	r16 <aes, bes, (d> ) aes <aes bes (d'>  aes'  <aes) bes d'> r8
	r16 <g,  bes, (ees> ) g <g bes (ees'> g' <g) bes ees'> r8
	\stemUp \slurUp
	r16 d8 (e16) f r r8 r16 c8 (d16) ees r r8 |
	r16 d8 (e16) f r r8 r16 c8 (d16) ees r 
	\stemBoth g-. bes-. \stemUp|
	\relative c' { 
	    [c8^> c^>] [c bes32 (aes g )f ]
	    [bes8^> bes^>] [bes^> ees16^. d^.] |
	    [c8^> c^>] [c bes32 (aes g )f ]
	    [bes8^> bes^>] [bes^> ees16^. d^.] |
	}
	\stemBoth
	\relative d {
	    <d16^. aes> ees^. e^. f^. g^. aes^. c^.^> r 
	    <d,^. g,> ees^. fis^. g^. a^. bes^. ees^.^> r
	    <d,16^. aes> ees^. e^. f^. g^. aes^. c^.^> r 
	    <d,^. g,> ees^. fis^. g^. a^. bes^. ees^.^> r
	}
	\stemUp
	\relative e {
	    ees^. e^. ees^. e^. ees^. e^. cis^. d^.
	    d^. ees^. d^. ees^. d^. ees^. b^. c^. |
	    ees^. e^. ees^. e^. ees^. e^. cis^. d^.
	    d^. ees^. d^. ees^. d^. ees^. b^. c^. |
	}
	\oneVoice
	<
	    \notes { aes,,8^\ff aes, aes4 g,,8 g, g4 aes,,8 aes, aes4 g,,8 g, g8 [ees16^> g^>]}
	    \notes { aes,8 aes aes'4 g,8 g g'4 aes,8 aes aes'4 g,8 g g'8}
	    \notes { d,8 d d'4 ees,8 ees ees'4 d,8 d d'4 ees,8 ees ees'8 g16 bes}
	>
	<aes8^\fff c'> <aes, c f^\sf>~<aes, c f> <d16-> f><f-> aes>
	<g8-> bes> <g,^\sf bes, ees8>~<g, bes, ees> <ees16 g><g bes> |
	<aes8 c'> <aes, c f^\sf>~<aes, c f> <d16-> f><f-> aes>
	<g8-> bes> <g,^\sf bes, ees8>~<g, bes, ees> 
	\clef violin <g'16-. bes' (ees''><g'16-. ) bes' ees''> |

    }
%DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
    \context Voice = DII {
	s1 s1 s1 s1 
	\stemDown 
	<ees,8 bes, ees> r8 s2 s8 <aes,! ees aes!> |
	<ees,8 bes, ees> r8 s2 s8 <aes,! ees aes!> |
	s1 s s s s s s s s
	\tieDown \slurDown \slurSS
	<ees16 bes, ees,> bes () ees b () d c' () c bes (<d )bes,> 
	aes (<d )aes,> g (<d8 )g,> <g_> bes> s1
	<ees16 bes, ees,> bes () ees b () d c' () c bes (<d )bes,> 
	aes (<d )aes,> g (<d8 )g,> <g_> bes> |
	s1 s
	\relative a, { aes4 ~ aes16 s8. g4~g16 s8. 
		       aes4 ~ aes16 s8. g4~g16 s8. }
	r16 <ees aes,> r <ees aes,> r <ees aes,> r8 
	r16 <ees g,> r <ees g,> r <ees g,> r8 |
	r16 <ees aes,> r <ees aes,> r <ees aes,> r8 
	r16 <ees g,> r <ees g,> r <ees g,> r8 |
	s1 s
	\relative a, {
	    aes?16 r aes r aes r aes r g r g r g r g r |
	    aes?16 r aes r aes r aes r g r g r g r g r |
	}
    }
    

>}
