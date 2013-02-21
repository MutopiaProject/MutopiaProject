\version "2.16.0"

upper = \relative f' {
    \key des \major
    \time 2/4
    \clef violin
    \noTupletBracket

    | \times 4/6 { r16 \slurDown des( f ges g as } f'8-> des) \slurNeutral
    | << { r8 des4(^\markup { \italic "dim." } f8) } \\
	 { <f, as>4 <f as> } >>
    | << { r8 des'4( f8) } \\ { <f, as>4 <f as> } >>
    | r8 des4( f8)
    | r des4( f8)
    | des4.\arpeggio r8
    | \times 4/6 { r16 \slurDown as( f' des as' f } des'8-> as8)
    | \slurNeutral \noTupletNum \times 4/6 { r16 as,( f' des as' f } des'8-> as8)
    | \repeat unfold 2 { \times 4/6 { r16 as,( ges' es as ges } es'8-> as,) }
    | \repeat unfold 2 { \times 4/6 { r16 as,( f' des as' f } des'8-> as8) }
    | \times 4/6 { r16 c,( as' es c' as } es'8-> g,)
    | \times 4/6 { r16 as,( es' c as' es } c'8-> as)
    | \times 4/6 { r16 c,( es ges! g as } bes8-> as)
    | \times 4/6 { r16 des,( f ges! g as } f'8-> des)
    | \times 4/6 { r16 c,( es ges! g as } bes8-> as)
    | \times 4/6 { r16 des,( f ges! g as } f'8-> des)
    | \times 4/6 { r16 des,( ges! bes ces c } es8-> des)
    | \times 4/6 { r16 des,( f ges g as } es'8-> des)
    | \times 4/6 { r16 es,( ges! g as c } ges'8-> es)
    | \times 4/6 { r16 des,( f ges! g as } f'8-> des)
    | \times 4/6 { r16 des,( ges! bes ces c } es8-> des)
    | \times 4/6 { r16 des,( f ges g as } es'8-> des)
    | \times 4/6 { r16 es,( ges! g as c } ges'8-> es)
    | \times 4/6 { r16 des,( f ges g as } f'8-> des)
    | << { r8 des4( f8) } \\ { <f, as>4 <f as> } >>
    | << { r8 des'4( f8) } \\ { <f, as>4 <f as> } >>
    | << { r8 des4( f8) } \\ { <f, as>4 <f as> } >>
    | << { r8 des'4( f8) } \\ { <f, as>4 <f as> } >>
    | \repeat unfold 2 { \times 4/6 { r16 as( f' des as' f } des'8-> as) }
    | \repeat unfold 2 { \times 4/6 { r16 as,( ges' es as ges } es'8-> as,) }
    | \repeat unfold 2 { \times 4/6 { r16 as,( f' des as' f } des'8-> as) }
    | \times 4/6 { r16 c,( as' es c' as } es'8-> g,)
    | \times 4/6 { r16 as,( es' c as' es } c'8-> as)
    | \times 4/6 { r16 c,( es ges! g as } bes8-> as)
    | \times 4/6 { r16 des,( f ges g as } f'8-> des)
    | \times 4/6 { r16 c,( es ges! g as } bes8-> as)
    | \times 4/6 { r16 des,( f ges g as } f'8-> des)
    | \times 4/6 { r16 des,( ges! bes ces c } es8-> d)
    | \times 4/6 { r16 des,( f ges g as } es'8-> d)
    | \times 4/6 { r16 es,( ges g as c } ges'8-> es)
    | \times 4/6 { r16 des,( f ges g as } f'8-> des)
    | \times 4/6 { r16 des,( ges! bes ces c } es8-> des)
    | \times 4/6 { r16 des,( f ges g as } es'8-> des)
    | \times 4/6 { r16 es,( ges g as c } ges'8-> es)
    | \times 4/6 { r16 des,( f ges g as } f'8-> des)
    | << { r8 des4( f8) } \\ { <f, as>4 <f as> } >>
    | << { r8 des'4( f8) } \\ { <f, as>4 <f as> } >>
    | r8 des4( f8)
    | r des4( f8)
    | \times 4/6 { r16 c( f es ges! f) } \times 4/6 { r c( f es ges f) }
    | \repeat unfold 2 { \times 4/6 { r bes,( f' des ges f) } }
    | \repeat unfold 2 { \times 4/6 { r c( f es ges f) } }
    | \repeat unfold 2 { \times 4/6 { r bes,( f' des ges f) } }
    | \repeat unfold 6 { \times 4/6 { bes,[ es des] bes[ fes' des] } }
    | r16 <bes des es>(-. <bes des es>-. <bes des es>)-. <bes des es>-. r r8
    | r16 <as c es>(-. <as c es>-. <as c es>)-. <as c es>-. r r8
    | r16 <as des>-[-. <as des>-]-. r r <as c>-[-. <as c>-]-. r
    | \change Staff = down \voiceOne r16 <f as bes>-[ <f as bes>-] r
    r <es g bes>-[ <es g bes>-] r \change Staff = up \oneVoice
    | es'16 es es es es es e e
    | f[ f] des[ des] c[ c] es![ es]
    | \times 4/6 { r16 des( f ges g as } f'8-> des)
    | \times 4/6 { r16 des,( ges! bes ces c } es8-> des)
    | \times 4/6 { r16 des,( f ges g as } es'8-> des)
    | \times 4/6 { r16 es,( ges! g as c } ges'!8-> es)
    | \times 4/6 { r16 des,( f ges! g as } f'8-> des)
    | \times 4/6 { r16 des,( ges! bes ces c } es8-> des)
    | \times 4/6 { r16 des,( f ges g as } es'8-> des)
    | \times 4/6 { r16 es,( ges! g as c } ges'8-> es)
    | \times 4/6 { r16 des,( f ges! g as } f'8-> des)
    | << { r8 des4( f8) } \\ { <f, as>4 <f as> } >>
    | << { r8 des'4( f8) } \\ { <f, as>4 <f as> } >>
    | r8 des4( f8)
    | r des4( f8)
    | des2\arpeggio-\fermata

    \bar "|."
}

lower = \relative des {
    \key des \major
    \time 2/4
    \clef bass
    \noTupletBracket

    \repeat unfold 2 { des8 <f as des> }
    | \times 4/6 { r16 des( f ges! g as } des8-> as) \noTupletNum
    | \times 4/6 { r16 des,( f ges! g as } des8-> as)
    | << { \repeat unfold 4 { <f as>4 } } \\
	 { \noTupletNum \noTupletBracket
	   \repeat unfold 2 { \times 4/6 { r16 des,( f ges! g as } des8-> as) } } >>
    | << { \crossStaff <f' as>4. } \\ { <des, as' des>4.\arpeggio } >> r8
    | \repeat unfold 2 { des' <f as> des <f as des> }
    | \repeat unfold 4 { as, <ges' as c> }
    | \repeat unfold 2 { des <f as> des <f as des> }
    | es, <es' as c> es, <es' bes' des>
    | as, <es' as> as, <es' as c>
    | \repeat unfold 2 { as, <ges' as c> }
    | \repeat unfold 2 { des <f as des> }
    | \repeat unfold 2 { as, <ges' as c> }
    | \repeat unfold 2 { des <f as des> }
    | \repeat unfold 2 { ges, <ges' bes des> }
    | \repeat unfold 2 { des <f as des> }
    | \repeat unfold 2 { as, <ges' as c> }
    | \repeat unfold 2 { des <f as des> }
    | \repeat unfold 2 { ges, <ges' bes des> }
    | \repeat unfold 2 { des <f as des> }
    | \repeat unfold 2 { as, <ges' as c> }
    | \repeat unfold 2 { des <f as des> }
    | \repeat unfold 2 {
	\times 4/6 { r16 des( f ges g as } des8-> as)
    }
    | \repeat unfold 2 {
	\times 4/6 { r16 des,,( f ges g as } des8-> as)
    }
    | des-. <f as>-. des-. <f as des>-.
    | des <f as> des <f as des>
    | \repeat unfold 4 { as, <ges' as c> }
    | \repeat unfold 2 { des <f as> des <f as des> }
    | es, <es' as c> es, <es' bes' des>
    | as, <es' as> as, <es' as c>
    | \repeat unfold 2 { as, <ges' as c> }
    | \repeat unfold 2 { des <f as des> }
    | \repeat unfold 2 { as, <ges' as c> }
    | \repeat unfold 2 { des <f as des> }
    | \repeat unfold 2 { ges, <ges' bes des> }
    | \repeat unfold 2 { des <f as des> }
    | \repeat unfold 2 { as, <ges' as c> }
    | \repeat unfold 2 { des <f as des> }
    | \repeat unfold 2 { ges, <ges' bes des> }
    | \repeat unfold 2 { des <f as des> }
    | \repeat unfold 2 { as, <ges' as c> }
    | \repeat unfold 2 { des <f as des> }
    | \repeat unfold 2 {
	\times 4/6 { r16 des( f ges g as } des8-> as)
    }
    | \repeat unfold 2 {
	<< { <f as>4 <f as> } \\
	   { \noTupletNum \noTupletBracket
	     \times 4/6 { r16 des,( f ges g as } des8-> as) } >>
    }
    | \repeat unfold 2 { a <c es f> }
    | \repeat unfold 2 { bes <des f> }
    | \repeat unfold 2 { a <c es f> }
    | \repeat unfold 2 { bes <des f> }
    | <g, des' es>-.-[ <as! des fes>-. <g des' es>-. <as des fes>-.-]
    | <g des' es>-.-[ <as des fes>-. <g des' es>-. <as des fes>-.-]
    | <g des' es>-.-[ <as des fes>-. <g des' es>-. <as des fes>-.-]
    | r16 <g es'>-.-( <g es'>-. <g es'>-.-) <g es'>-. r r8
    | r16 <ges! es'>-.-( <ges es'>-. <ges es'>-.-) <ges es'>-. r r8
    | <f f'>8 r16 f'[-. es8]-. r16 es-.
    | \voiceTwo d8 r16 d[ des8]-. r16 des % The first d is NOT staccato
    | << { \autoBeamOff \crossStaff { \repeat unfold 6 { <es as es'>16 } 
	   <ges! as> <ges as> } \autoBeamOn } \\ 
	 { c,16 c c c c c c c } >>
    | << { \autoBeamOff \crossStaff { <f as> <f as> <f as> <f as>
	   <es as> <es as> <ges as> <ges as>
	   } \autoBeamOn } \\
	 { des des f, f as as as, as } >>
    | des'8 <f as des> des <f as des>
    | \repeat unfold 2 { ges, <ges' bes des> }
    | \repeat unfold 2 { des <f as des> }
    | \repeat unfold 2 { as, <ges' as c> }
    | \repeat unfold 2 { des <f as des> }
    | \repeat unfold 2 { ges, <ges' bes des> }
    | \repeat unfold 2 { des <f as des> }
    | \repeat unfold 2 { as, <ges' as c> }
    | \repeat unfold 2 { des <f as des> }
    | \repeat unfold 2 {
	\times 4/6 { r16 des( f ges g as } des8-> as)
    }
    | \repeat unfold 2 {
	<< { <f as>4 <f as> } \\
	   { \noTupletNum \noTupletBracket
	     \times 4/6 { r16 des,( f ges g as } des8-> as) } >>
    }
    | << { \crossStaff <f' as>2\arpeggio } \\
	 { <des, as' des>-\arpeggio-\fermata } >>

    \bar "|."
}

dynamics = {
    s4-\p s4
    | s2*2
    | s4-\pp s4
    | s2*2
    | s4-\p s4
    | s2*19
    | s4-\p s4
    | s2
    | s4-\pp s4
    | s2
    | s4-\p s4
    | s2*19
    | s4-\p s4
    | s2
    | s4-\pp s4
    | s2*3
    | s4-\crescText s4
    | s2
    | s8-\p s8 s8-\crescText s8
    | s2*2
    | s16 s-\p s8 s4
    | s2*3
    | s16-\< s8. s s16-\!
    | s2
    | s4-\p s4
    | s2*8
    | s4 s4-\markup { \italic "dim." }
    | s2*2
    | s4-\pp s
    | s2
}
