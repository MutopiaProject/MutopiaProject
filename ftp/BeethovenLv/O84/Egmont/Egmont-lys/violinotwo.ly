\version "2.18.2"

\include "defs.ily"

 violinotwo =  {
 \set Staff.instrumentName = "Violino II"
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key f \minor
 \time 3/2
 \moreAccidentalPadding
 f'1.\fermata_\forteSforzato
 aes2\staccato_\txtMarcato aes2\staccato r4 r8 aes
 g2\staccato aes\staccato r4 r8 c' b2\staccato c'\staccato r4 r8 g\p g4 r4 r2 r2
 R1. R1.
 << { r4 aes4\p_( g b2.) } \\
 { \spaceSpannerF s4 s4. s8\< s2\> s8 s8\! } >> f'1.\ff
 aes2\staccato aes2\staccato r4 r8 aes8 g2\staccato aes2\staccato r2 R1. R1. r2 r2 aes2\p
 aes16\pp des' des' des' des' des' des' des' des'2:16 des'2:16
 des'16 des' des' des' des' des' des' des' des'2:16 des'2:16
 ees'2:16 ees'2:16 ees'2:16
 ees'16 ees'16 ees'16 ees'16 ees'16 ees'16 ees'16 ees'16  ees'2:16 ees'2:16
 ees'2:16 ees'2:16 ees'2:16 ees'2:16 ees'2:16 ees'2:16
 <c' g'>2:16 <c' g'>2:16 <c' g'>2:16
 <c' g'>4 r4 r2 r4 r8 <c' g'>8 <c' g'>4 r4 r2 r4 r8 <c' g'>8 <c' g'>4 r4 r2 r2 \bar "||"

 \time 3/4 R2. R2. R2. r4 r4 aes'8\sfp aes'8-\hideP
 aes'8 aes' aes' aes' aes' aes' aes' aes' aes' aes' aes' aes'
 aes'[ aes' aes' aes'] b'[ b'] c''8[ c'' c'' c''] <g' bes'!>\sfp[ <g' bes'>]
 <g' bes'>2.:8 <g' bes'>2.:8<g' bes'>2.:8 bes'8 bes' aes' aes' \hairpinPastBarline f'4_~\< f'2._~\> 
 f'4\! r4 r4 R2.
 r4 r4 \hairpinPastBarline f'4\< ~ f'2.\> ~
 f'4\! r8
 aes'8\staccato[ aes'\staccato g'\staccato] g'4 r8 bes'[ bes' aes']
 aes'4 r8 f''8[ f'' e''] e''4 r8 g''8[ g'' f''] f''4 r8 aes''8[ aes'' g'']
 g''4 r8 bes'[\cresc c'' des''] des''4 r8 g'[ aes' bes'] bes'4 r8 e'[ f' g']
 g'4 r8 g'[ aes' bes'] bes'4 r8 bes'[ c'' des''] des''4 r8 g'[ aes' bes']
 bes'4 r8 e'[ f' g'] g'4 r8 g'[ aes' bes'] bes'4 r8 bes'[ c'' des'']
 des''4 r8 bes'[ c'' des''] des''4 r8 bes'[ c'' des''] des''4 r4
 c''4\ff( des'' c'') aes'\staccato f'\staccato des'\staccato c'\staccato aes2 aes4( g) r4
 c''4\ff( des'' c'') bes'\staccato g'\staccato e'\staccato des'\staccato c'2( g8 bes)
 aes4 r8 f'\staccato[ g'\staccato aes'\staccato] bes'4 r8 g'[ aes' bes']
 c''4 r8 aes'[ bes' c''] des''4 des'' e'' f''4 r8 f'[ g' aes']
 bes'4 r8 g'[ aes' bes'] c''4 r8 aes'[ bes' c''] des''4 des'' d''
 ees''2\sf( des''!8 bes') ees''2\sf( c''8 aes') d''!2\sf( aes'8 f') g'2\sf( g'8 ees')
 bes'2\sf( g'8 des'!) aes'2\sf( ees'8 c') f'2\sf( d'8 aes) g4 r r
 c'4\ff\staccato c'4\staccato r8 c' des'4 des' r R2. R2.
 c'4\ff c' r8 c' des'4 des' r R2. R2. c'4\ff c'4 r8 c' des'4 des' r
 R2. R2. R2. R2. R2. R2.
 \tupletSpan 4
 \tuplet 3/2 { bes'!8\f[ bes' bes'] bes'[ bes' bes'] bes'[ bes' bes']
 <ees' ees''>8\ff[ <ees' ees''> <ees' ees''>]  <ees' ees''>[ <ees' ees''> <ees' ees''>]
 <ees' ees''>[ <ees' ees''> <ees' ees''>]
 ees''8[ ees'' ees''] c''[ c'' c''] aes'[ aes' aes']
 aes'8[ aes' aes'] f'[ f' f'] f'\sf[ f' f']
 f'8[ f' f'] des'[ des' des'] des'\sf[ des' des']
 des'8[ des' des'] bes[ bes bes] g[ g g] }
 aes4\f r r R2. r4 r8 aes[ bes c'] des' ees' f' g' aes' bes' c''4 r8 c'[ des' ees']
 f'8 g' aes' bes' c'' des''
 <des'' bes''>2.:8\sf <des'' bes''>2.:8\sf <c'' aes''>2.:8\sf
 <des'' bes''>2.:8\sf <c'' aes''>2.:8\sf <des'' bes''>2.:8\sf
 \stemUp <c'' aes''>8\fp[ c'] c'[ c' c' c'] c'2.:8 c'2.:8 c'2.:8 bes2.:8 bes2.:8 des'2.:8
 des'8 des' des' des' <bes g'>4\f\staccato
 <c' aes'>8\staccato\noBeam c'\p c'[ c' c' c'] c'2.:8 c'2.:8 c'2.:8
 <c' ees'>2.:8 <c' ees'>2.:8 <c' ees'>2.:8
 <c' ees'>8 <c' ees'> <c' ees'> <c' ees'> <c' a'>4\f\staccato
 bes'8\staccato des'\p des'[ des' des' des'] des'2.:8 des'2.:8 des'2.:8
 <c' ees'>2.:8 <c' ees'>2.:8 <c' ees'>2.:8 <c' ees'>8[ <c' ees'> <c' ees'> <c' ees'>]
 <c' a'>4\f\staccato bes'8\staccato des'\p des'[ des' des' des'] des'2.:8 des'2.:8
 des'8[ des' des' des'] d'[ d'] d'2.:8 d'8[ d' d' d']
 c'\p\<[ c'] c'4 r8 c'[ c' d'] ees'4 r8 ees'[ ees' f'\!] g'4\> r8 g'8[ g' aes'\!]
 b4 r8 b8[ b c'] d'4 r r R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. r4 r aes'8\sfp aes'
 aes'8 aes' aes' aes' aes' aes' aes' aes' aes' aes' aes' aes'
 aes'[ aes' aes' aes'] \stemDown b'[ b'] c''8[ c'' c'' c''] \stemUp <g' bes'>[ <g' bes'>]
 <g' bes'>8 <g' bes'> <g' bes'> <g' bes'> <g' bes'> <g' bes'>
 <g' bes'>8 <g' bes'> <g' bes'> <g' bes'> <g' bes'> <g' bes'>
 <g' bes'>8 <g' bes'> <g' bes'> <g' bes'> <g' bes'> <g' bes'>
 bes'8[ bes' aes' aes']
 \spaceSpannerE
 \hairpinPastBarline f'4\< ~ f'2.\!\> ~ f'4\! r \hairpinPastBarline f'4\< ~ f'4.\!\>
 f'8\staccato[ f'\staccato g'\staccato\!] aes'4( f') \hairpinPastBarline f'4\< ~ f'2.\!\> ~ f'4\! r8
 aes'8\staccato[ aes'\staccato g'\staccato] g'4 r8 bes'8[ bes' aes'] aes'4 r8
 \stemDown f''8[ f'' e''] e''4 r8 g''[ g'' f''] f''4 r8 aes''[ aes'' g'']
 g''4 r8 \stemDown bes'[\cresc c'' des''] des''4 r8 \stemUp g'[ aes' bes']
 \stemDown bes'4 r8 \stemUp e'[ f' g'] g'4 r8 g'[ aes' bes']
 \stemDown bes'4 r8 bes'[ c'' des''] des''4 r8 \stemUp g'[ aes' bes']
 \stemDown bes'4 r8 \stemUp e'[ f' g'] g'4 r8 g'[ aes' bes']
 \stemDown bes'4 r8 bes'[ c'' des''] des''4 r8 bes'[ c'' des''] des''4 r8 bes'[ c'' des'']
 des''4 r c''4\ff( des'' c'') \stemUp aes'\staccato f'\staccato des'\staccato c'\staccato
 aes2 aes4( g) r4 \stemDown c''4\ff( des'' c'') bes'\staccato
 \stemUp g'\staccato e'\staccato des'\staccato c'4( g bes) aes r
 aes'4\f( bes'2\sf) bes'4 aes' r f'4 ~ f'4. f'8\staccato[ f'\staccato g'\staccato]
 aes'4( f') aes'4( bes'2\sf) bes'4 aes'4 r r
 des'4 r8 des'8\staccato[ ees'\staccato f'\staccato] ges'4 r8 ees'[ f' ges']
 aes'4 r8 f'[ ges' aes'] \stemDown bes'4 ges'' ees'' f'' r8 \stemUp des'8[ ees' f']
 ges'4 r8 ees'[ f' ges'] aes'4 r8 f'[ ges' aes'] g'4 g' aes'
 \stemDown bes'8[ <des'' bes''>8] <des'' bes''>8[ <des'' bes''>8 <des'' bes''>8 <des'' bes''>8]
 <des'' bes''>8 <des'' bes''>8 <des'' bes''>8 <des'' bes''>8 <des'' bes''>8 <des'' bes''>8
 c''2\sf( c''8 aes') des''2\sf( \stemUp aes'8 f') bes'2\sf( g'8 des')
 \stemDown c''2\sf( \stemUp aes'8 ees') ees'2\sf( c'8 aes) des'2\sf( aes8 f')
 bes2\sf( g8 ees') aes4 r r
 des'4\ff\staccato des'4\staccato r8 des' des'4 des'4 r R2. R2.
 des'4\ff des'4 r8 des' des'4 des'4 r R2. R2.
 f'4\ff f' r8 f' ges'4 ges' r R2. R2. R2. R2. R2. R2.
 \tupletSpan 4
 \stemDown \tuplet 3/2 { bes'8\f[ bes' bes'] bes'[ bes' bes'] bes'[ bes' bes']
 c''8\ff[ c'' c''] c''[ c'' c''] c''[ c'' c'']
 des''8[ des'' des''] des''[ des'' des''] des''\sf[ des'' des'']
 des''8[ des'' des''] bes'[ bes' bes'] bes'\sf[ bes' bes']
 \stemUp bes'8[ bes' bes'] ges'[ ges' ges'] ges'\sf[ ges' ges']
 ges'8[ ges' ges'] ees'[ ees' ees'] c'\sf[ c' c'] }
 des'4\f r8 des'8[ ees' f'] \stemDown ges' aes' bes' c'' des'' ees''
 f''4 r8 \stemUp f'[ ges' aes'] \stemDown bes' c'' des'' ees'' f'' ges''
 aes''4 r8 \stemUp f'[ ges' aes'] \stemDown bes' c'' des'' ees'' f'' ges''
 aes''2\sf c''4\staccato aes''2\sf c''4\staccato aes''2\sf des''4\staccato
 aes''2\sf c''4\staccato aes''2\sf des''4\staccato aes''2\sf c''4\staccato
 \stemUp <aes f' des''>4 r r R2. R2. R2.
 f'4\p\staccato f'4\staccato r4 f'4\staccato f'4\staccato r4 f'4 f' r f' f' r R2. R2. R2. R2.
 des'4\p\staccato des'\staccato r des' des' r c' c' r c' c' r
 c'4\ff c' r8 c' c'4 c' r8 c' c'4 c' r \stemDown c''2\f( \stemUp g'8) r8^\fermata
 R2. R2. R2. R2. R2. R2. R2. R2.^\fermataMarkup \bar "||"

 \key f \major \time 4/4
 \stemUp g'16\pp g' g' g' g' g' g' g' g'2:16 g'2:16 g'2:16
 <f' b'>2:16 <f' b'>2:16 <f' b'>2:16 <f' b'>2:16
 bes'!16_\txtCresc bes' bes' bes' g' g' g' g' bes' bes' bes' bes' g' g' g' g'
 \stemDown c''16 c'' c'' c'' \stemUp a' a' a' a' \stemDown c'' c'' c'' c'' \stemUp a' a' a' a'
 \stemDown e''16( dis'' e'' f'') e''8 g'' f''16( e'' f'' g'') a''8 f''
 g''16 g'' fis'' fis'' g'' g'' a'' a'' bes'' bes'' c''' c''' d''' d''' e''' e'''
 f'''16\ff f''' f''' f''' f''' f''' f''' f''' f''' f''' e''' e''' c''' c''' e''' e'''
 f'''16\sf f''' f''' f''' f''' f''' f''' f''' f''' f''' e''' e''' c''' c''' e''' e'''
 f'''16\sf f''' e''' e''' c''' c''' e''' e''' f'''\sf f''' e''' e''' c''' c''' e''' e'''
 f'''16\sf f''' e''' e''' c''' c''' e''' e''' f'''\sf f''' e''' e''' c''' c''' e''' e'''
 f'''8 g''16[ g''] f'' f'' e'' e'' f'' f'' e'' e'' d'' d'' cis'' cis''
 d''16 d'' c''! c'' \stemUp bes' bes' a' a' bes' bes' g' g' \stemDown c'' c'' c'' c''
 f''16\sf f''' f''' f''' f''' f''' f''' f''' f''' f''' e''' e''' c''' c''' e''' e'''
 f'''16\sf f''' f''' f''' f''' f''' f''' f''' f''' f''' e''' e''' c''' c''' e''' e'''
 f'''16\sf f''' e''' e''' c''' c''' e''' e''' f'''\sf f''' e''' e''' c''' c''' e''' e'''
 f'''16\sf f''' e''' e''' c''' c''' e''' e''' f'''\sf f''' e''' e''' c''' c''' e''' e'''
 f'''8 g''16[ g''] f'' f'' e'' e'' f'' f'' e'' e'' d'' d'' cis'' cis''
 d''16 d'' c''! c'' \stemUp bes' bes' a' a' bes' bes' g' g' \stemDown c'' c'' c'' c'' f''4 r r2 R1
 R1 R1
 r8 a'16( bes') c''8\staccato c''\staccato c''\staccato
 \tupletSpan 4 \tuplet 3/2 { a'16 bes' c'' }
 d''8\staccato[ c''\staccato]
 bes'8\staccato[ g'16( a']) bes'8\staccato bes'\staccato bes'\staccato
 \tuplet 3/2 { g'16 a' bes' } c''8\staccato[ bes'\staccato]-\hideMF
 \stemUp a'16\cresc a' bes' bes' \stemDown c'' c'' cis'' cis'' d'' d'' c'' c'' \stemUp bes' bes' a' a'
 bes'16 bes' a' a' g' g' a' a' \stemDown bes' bes' c'' c'' d'' d'' e'' e''
 \tupletSpan 4
 \tuplet 3/2 { f''8\ff[ f'' f''] ees''[ ees'' ees''] d''[ d'' d''] fis''[ fis'' fis'']
 \hideTupletNumber g''8\sf[ g'' g''] des''[ des'' des''] c''[ c'' c''] e''![ e'' e'']
 f''!8[ f'' f''] f''[ f'' f''] g''[ g'' g''] g''[ g'' g'']
 a''8[ a'' a''] a''[ a'' a''] bes''[ bes'' bes''] bes''[ bes'' bes'']
 b''8[ b'' b''] c'''[ c''' c'''] c'''[ c''' c'''] c'''[ c''' c''']
 c'''8[ c''' c'''] c'''[ c''' c'''] c'''[ c''' c'''] c'''[ c''' c''']
 bes''!8[ bes'' bes''] g''[ g'' g''] e''[ e'' e''] c''[ c'' c'']
 \stemUp bes'8[ bes' bes'] g'[ g' g'] e'[ e' e'] c'[ c' c']
 \stemDown f'[ f'' f''] f''[ f'' f''] g'[ g'' g''] g''[ g'' g'']
 a'[ a'' a''] a''[ a'' a''] bes'[ bes'' bes''] bes''[ bes'' bes'']
 b''[ b'' b''] c'''[ c''' c'''] c'''[ c''' c'''] c'''[ c''' c''']
 c'''[ c''' c'''] c'''[ c''' c'''] c'''[ c''' c'''] c'''[ c''' c''']
 bes''[ bes'' bes''] g''[ g'' g''] e''[ e'' e''] c''[ c'' c'']
 bes'[ bes' bes'] \stemUp g'[ g' g'] e'[ e' e'] c'[ c' c']
 \stemDown f''[ a'' a''] a''[ a'' a''] a''\sf[ a'' a''] a''[ a'' a'']
 a''[ a'' a''] a''[ a'' a''] a''[ a'' a''] a''[ a'' a'']
 a''\sf[ f''' f'''] <a'' f'''>[ <a'' f'''> <a'' f'''>]
 <a'' f'''>\sf[ <a'' f'''> <a'' f'''>] <a'' f'''>[ <a'' f'''> <a'' f'''>]
 }
 \tupletSpan \default \hideTupletBracket
 \tuplet 3/2 {
 <a'' f'''>2.:8 <a'' f'''>:
 <a'' f'''>2.:8 <a'' f'''>:
 <g'' e'''>2.:8\sf <g'' e'''>:
 <a'' f'''>2.:8 <a'' f'''>:
 <g'' e'''>2.:8\sf <g'' e'''>:
 <a'' f'''>2.:8 <a'' f'''>:
 <g'' e'''>2.:8\sf <g'' e'''>:
 <g'' e'''>2.:8\sf <g'' e'''>:
 <g'' e'''>2.:8\sf <g'' e'''>: }
 \tupletSpan 4
 <a'' f'''>8\ff f''16[ f''] g'' g'' a'' a'' bes'' bes'' a'' a'' bes'' bes'' c''' c'''
 d''' d''' c''' c''' d''' d''' e''' e''' f''' f''' e''' e''' f''' f''' g''' g'''
 a'''4 r r2 <f' c'' a''>4 r r2 <f' c'' a''>4 r r2
 <f' a' f''>4 r <f' a' f''>4 r <f' a' f''>4 r r2 \bar "|."
}