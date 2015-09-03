\version "2.18.2"

\include "defs.ily"

 violinoone =  {
 \set Staff.instrumentName = "Violino I"
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key f \minor
 \time 3/2
 \moreAccidentalPadding
 f'1.\fermata-\forteSforzato-\hideF
 aes2\staccato_\txtMarcato aes2\staccato r4 r8 aes
 bes2\staccato c'\staccato r4 r8
 c' d'2\staccato ees'\staccato r4 r8 b8\p c'4 r4 r2 r2
 R1. r2 r4 c'4\p( b aes')
 << { g'4_( f'2_~ f'2 e'4) } \\
 { \spaceSpannerE s4 s4 s4\< s4\! s4\> s8 s8\! } >> f'1.\ff
 aes2\staccato aes2\staccato r4 r8 aes8 bes2\staccato c'\staccato r2 R1. R1.
 r2 r2 c'2\p des'4\pp aes''4( bes''8 aes'' ges'' f'') f''4 r4
 r4 aes''4( bes''8 aes'' ges'' f'') f''4 r4 r4 ees''4( f''8 ees'' des'' c'') c''4 r4
 r4 ees''4( f''8 ees'' des'' c'') c''4 r4 r4 des''4( ees''8 des'' c'' bes') bes'4 r4
 r4 bes'4( c''8 bes' aes' g') g'4 r4 r4 g'4( aes'8 g' f' e') e'4 r4
 R1. R1. r4 bes'4\pp( c'' bes' aes' g') \bar "||"

 \time 3/4
 r8 \stemUp bes'([\cresc c'' bes' aes' g'] c'' bes' aes' g' c'' bes')
 aes'( g' c'' bes' aes' g') c''( bes' aes' g') \stemDown c''4\sfp ~
 c''2.-\hideP ~ c''2. ~ c''4 c''4( f''4) ~ f''4( e'') c''4\sfp ~
 c''2. ~ c''2. ~ c''4 c''4( e'' g'' f'')
 \hairpinPastBarline f''4\<( ees''!2\!\> des''4\! c''4) r4 r4 R2. r4 r4 \hairpinPastBarline f''4\<( ees''2\!\> des''4\! c''4) r8
 f''8\staccato[ f''\staccato e''\staccato]
 e''4 r8 g''8[ g'' f''] f''4 r8 aes''[ aes'' g''] g''4 r8 bes''[ bes'' aes'']
 aes''4 r8 c'''8[ c''' bes'']
 bes''4 r8 bes''8[\cresc c''' des'''] des'''4 r8 g''[ aes'' bes'']
 bes''4 r8 e''8[ f'' g''] g''4 r8 g''8[ aes'' bes''] bes''4 r8 bes''8[ c''' des''']
 des'''4 r8 g''[ aes'' bes''] bes''4 r8 e''[ f'' g'']
 g''4 r8 g''8[ aes'' bes''] bes''4 r8 bes''[ c''' des''']
 des'''4 r8 bes''[ c''' des'''] des'''4 r8 bes''[ c''' des'''] des'''4 r
 c'''4\ff( des''' c''') aes''\staccato f''\staccato des''\staccato c''\staccato
 \stemDown aes'2( f'4) e'4 r4
 \stemNeutral c'''4\ff( des''' c''') bes''\staccato g''\staccato e''\staccato des''\staccato
 c''2( \stemUp bes'8 g') f'4 r8 \stemDown f''\staccato[ g''\staccato aes''\staccato] bes''4 r8
 g''[ aes'' bes''] c'''4 r8 aes''[ bes'' c'''] des'''4 des''' e''' f'''4 r8 f''[ g'' aes'']
 bes''4 r8 g''[ aes'' bes''] c'''4 r8 aes''[ bes'' c'''] des'''4 des''' d'''
 ees'''2\sf( bes''8 g'') c'''2\sf( aes''8 ees'') aes''2\sf( f''8 d'') ees''2\sf( bes'8 g')
 des''!2\sf( bes'8 g') c''2\sf( aes'8 ees') \stemUp aes'2\sf( f'8 d'8) ees'4 r r
 ees'4\ff\staccato ees'4\staccato r8 ees' f'4 f' r R2. R2.
 ees'4\ff ees'4 r8 ees' f'4 f' r R2. R2. ees'4\ff ees'4 r8 ees' fes'4 fes' r
 R2. R2. R2. R2. R2. R2.
 \tupletSpan 4
 \stemDown \tuplet 3/2 { bes''!8\f[ bes'' bes''] bes''[ bes'' bes''] bes''[ bes'' bes'']
 ees'''8\ff[ ees''' ees'''] ees'''[ ees''' ees'''] ees'''[ ees''' ees''']
 ees'''8[ ees''' ees'''] c'''[ c''' c'''] aes''[ aes'' aes'']
 aes''8[ aes'' aes''] f''[ f'' f''] f''\sf[ f'' f'']
 f''8[ f'' f''] des''[ des'' des''] des''\sf[ des'' des'']
 des''8[ des'' des''] bes'[ bes' bes'] \stemUp g'[ g' g'] }
 aes'4\f r8 aes8[ bes c'] des' ees' f' g' aes' bes' \stemDown c''4 r8
 aes'8[ bes' c''] des'' ees'' f'' g'' aes'' bes'' c'''4 r8
 c''8[ des'' ees''] f'' g'' aes'' bes'' c''' des'''
 ees'''2\sf g''4\staccato ees'''2\sf g''4\staccato ees'''2\sf aes''4\staccato
 ees'''2\sf g''4\staccato ees'''2\sf aes''4\staccato ees'''2\sf g''4\staccato
 \stemUp <ees' c'' aes''>8\fp[ ees'] ees'[ ees' ees' ees'] ees'2.:8 ees'2.:8 ees'2.:8
 <des' ees'>2.:8 <des' ees'>2.:8 <bes ees'>2.:8
 <bes ees'>8 <bes ees'> <bes ees'> <bes ees'> <ees' bes' g''>4\f\staccato
 <ees' c'' aes''>8\noBeam ees'\p ees'[ ees' ees' ees'] ees'2.:8 ees'2.:8 ees'2.:8
 f'2.:8 f'2.:8 f'2.:8 f'8 f' f' f' \stemDown <f' c'' a''>4\f\staccato
 <f' des'' bes''>8\staccato \stemUp f'8\p[ f' f' f' f']
 f'2.:8 f'2.:8 f'2.:8 f'2.:8 f'2.:8 f'2.:8 f'8[ f' f' f'] \stemDown <f' c'' a''>4\f\staccato
 <f' des'' bes''>8\staccato \stemUp f'8\p[ f' f' f' f'] f'2.:8 f'2.:8 f'2.:8 f'2.:8
 f'8[ f' f' f'] r4 R2. R2. R2. R2.
 \stemDown b'4 r8 b'8[\< b' c''] d''4 r8 d''8[ ees'' f''] f''4 r8 d''8[ ees'' f''\!]
 f''8 \stemUp f'8\pp([ g' f' ees' d']) r8 f'([ g' f' ees' d']) r f'([ g' f' ees' d'])
 g'8([ f' ees' d'] g'4)
 r8 bes'\pp([ c'' bes' aes' g']) r8 bes'([ c'' bes' aes' g']) r bes'([\cresc c'' bes' aes' g'])
 c''8( bes' aes' g' c'' bes') aes'( g' c'' bes' aes' g') c''( bes' aes' g')
 \stemDown c''4\sfp ~ c''2. ~ c''2. ~ c''4 c''( f'') ~ f''( e'')
 c''\sfp ~ c''2. ~ c''2. ~ c''4 c''4( e'' g'' f'') \hairpinPastBarline f''\<( ees''!2\!\> des''4\! c'') r f''4\< ~ f''4.
 f''8\staccato\!\>[ f''\staccato g''\staccato\!] aes''4( f'') \hairpinPastBarline f''\<( ees''2\!\> des''4\! c'')
 r8 f''8\staccato[ f''\staccato e''\staccato] e''4 r8 g''8[ g'' f'']
 f''4 r8 aes''[ aes'' g''] g''4 r8 bes''8[ bes'' aes''] aes''4 r8 c'''8[ c''' bes'']
 bes''4 r8 bes''[\cresc c''' des'''] des'''4 r8 g''[ aes'' bes'']
 bes''4 r8 e''8[ f'' g''] g''4 r8 g''[ aes'' bes'']
 bes''4 r8 bes''[ c''' des'''] des'''4 r8 g''[ aes'' bes'']
 bes''4 r8 e''8[ f'' g''] g''4 r8 g''[ aes'' bes'']
 bes''4 r8 bes''[ c''' des'''] des'''4 r8 bes''[ c''' des''']
 des'''4 r8 bes''[ c''' des'''] des'''4 r c'''\ff( des''' c''') aes''\staccato
 f''4\staccato des''\staccato c''\staccato \stemUp aes'2( f'4) e'4 r
 \stemDown c'''4\ff( des''' c''') bes''4\staccato g''\staccato e''\staccato des''\staccato
 c''2( \stemUp bes'8 g') f'4 r \stemDown f''4\f( ees''2\sf des''4) c''4 r
 \stemUp f'4 ~ f'4. f'8\staccato[ f'\staccato g'\staccato] aes'4( f')
 \stemDown f''4( ees''2\sf des''4) c''4 r r des''4 r8
 des''8\staccato[ ees''\staccato f''\staccato]
 ges''4 r8 ees''[ f'' ges''] aes''4 r8 f''[ ges'' aes''] bes''4 bes'' c'''
 des'''4 r8 des''8[ ees'' f''] ges''4 r8 ees''[ f'' ges'']
 aes''4 r8 f''[ ges'' aes''] bes''4 bes'' c''' des'''8
 \stemUp ees'8[ g'! aes' bes' c''] \stemDown des''8 c'' des'' ees'' f'' g''
 aes''2\sf( ees''8 c'') f''2\sf( des''8 aes') des''2\sf( \stemUp bes'8 g') aes'2\sf( ees'8 c')
 ges'2\sf( ees'8 c') f'2\sf( des'8 aes) des'2\sf( bes8 g) aes4 r r
 aes'4\ff\staccato aes'4\staccato r8 aes' bes'4 bes' r R2. R2.
 aes'4\ff aes' r8 aes' bes'4 bes' r R2. R2.
 aes'4\ff aes' r8 aes' \stemDown beses'4 beses' r R2. R2. R2. R2. R2. R2.
 \tupletSpan 4
 \stemDown \tuplet 3/2 { bes''!8\f[ bes'' bes''] bes''[ bes'' bes''] bes''[ bes'' bes'']
 c'''8\ff[ c''' c'''] c'''[ c''' c'''] c'''[ c''' c''']
 des'''8[ des''' des'''] des'''[ des''' des'''] des'''\sf[ des''' des''']
 des'''8[ des''' des'''] bes''[ bes'' bes''] bes''\sf[ bes'' bes'']
 bes''8[ bes'' bes''] ges''[ ges'' ges''] ges''\sf[ ges'' ges'']
 ges''8[ ges'' ges''] ees''[ ees'' ees''] c''\sf[ c'' c''] }
 des''4\f r8 \stemUp des'8[ ees' f'] \stemDown ges' aes' bes' c'' des'' ees''
 f''4 r8 \stemUp f'[ ges' aes'] \stemDown bes' c'' des'' ees'' f'' ges''
 aes''4 r8 \stemUp f'[ ges' aes'] \stemDown bes' c'' des'' ees'' f'' ges''
 aes''2\sf c''4\staccato aes''2\sf c''4\staccato aes''2\sf des''4\staccato
 aes''2\sf c''4\staccato aes''2\sf des''4\staccato aes''2\sf c''4\staccato
 \stemUp <aes f' des''>4 r r R2. R2. R2.
 \stemDown aes''2\p( f''4) aes''2( f''4) a''2( f''4) c'''2( f''4) R2. R2. R2. R2.
 f''2\p( des''4) bes''2( f''4) bes''2( e''4) bes''2( g''4)
 \stemUp c'4\ff c' r8 c' c'4 c' r8 c' c'4 c' r \stemDown c'''2\f( g''8) r8^\fermata
 R2. R2. R2. R2. R2. R2. R2. R2.^\fermataMarkup \bar "||"

 \key f \major \time 4/4
 \stemDown c''4\pp ~ c''16( b' c'' d'' e''8) r8 r4 c''4 ~ c''16( b' c'' d'' e''8) r8 r4
 d''4 ~ d''16( cis'' d'' e'' f''8) r8 r4 d''4 ~ d''16( cis'' d'' e'' f''8) r8 r4
 e''16_\txtCresc( d'' e'' f'' g''8) r8 e''16( d'' e'' f'' g''8) r8
 f''16( e'' f'' g'' a''8) r8  f''16( e'' f'' g'' a''8) r8
 g''16( fis'' g'' a'' bes''8) r a''16( g'' a'' bes'' c'''8) r
 bes''16 bes'' a'' a'' bes'' bes'' c''' c''' d''' d''' e''' e''' f'''! f''' g''' g'''
 a'''16\ff a''' a''' a''' a''' a''' a''' a''' a''' a''' g''' g''' f''' f''' g''' g'''
 a'''16\sf a''' a''' a''' a''' a''' a''' a''' a''' a''' g''' g''' f''' f''' g''' g'''
 a'''16\sf a''' g''' g''' f''' f''' g''' g''' a'''16\sf a''' g''' g''' f''' f''' g''' g'''
 a'''16\sf a''' g''' g''' f''' f''' g''' g''' a'''16\sf a''' g''' g''' f''' f''' g''' g'''
 a'''16 a''' g''' g''' f''' f''' e''' e''' f''' f''' e''' e''' d''' d''' cis''' cis'''
 d'''16 d''' c'''! c''' bes'' bes'' a'' a'' bes'' bes'' g'' g'' c''' c''' c''' c'''
 a''16\sf a''' a''' a''' a''' a''' a''' a''' a''' a''' g''' g''' f''' f''' g''' g'''
 a'''16\sf a''' a''' a''' a''' a''' a''' a''' a''' a''' g''' g''' f''' f''' g''' g'''
 a'''16\sf a''' g''' g''' f''' f''' g''' g''' a'''16\sf a''' g''' g''' f''' f''' g''' g'''
 a'''16\sf a''' g''' g''' f''' f''' g''' g''' a'''16\sf a''' g''' g''' f''' f''' g''' g'''
 a'''16 a''' g''' g''' f''' f''' e''' e''' f''' f''' e''' e''' d''' d''' cis''' cis'''
 d'''16 d''' c'''! c''' bes'' bes'' a'' a'' bes'' bes'' g'' g'' c''' c''' c''' c'''
 f''4 r r2 R1

 r8 a''16( bes'') c'''8\staccato c'''\staccato c'''\staccato
 \tupletSpan 4 \tuplet 3/2 { a''16 bes'' c''' }
 d'''8\staccato c'''\staccato
 bes''8\staccato g''16( a'') bes''8\staccato bes''\staccato bes''\staccato
 \tuplet 3/2 { g''16 a'' bes'' } c'''8\staccato bes''\staccato
 a''8\staccato a''16( bes'') c'''8\staccato c'''\staccato c'''\staccato
 \tupletSpan 4 \tuplet 3/2 { a''16 bes'' c''' }
 d'''8\staccato[ c'''\staccato]
 bes''8\staccato[ g''16( a'']) bes''8\staccato bes''\staccato bes''\staccato
 \tuplet 3/2 { g''16 a'' bes'' } c'''8\staccato bes''\staccato
 a''16-\hideF\cresc a'' bes'' bes'' c''' c''' cis''' cis''' d''' d''' c''' c''' bes'' bes'' a'' a''
 bes''16 bes'' a'' a'' g'' g'' a'' a'' bes'' bes'' c''' c''' d''' d''' e''' e'''
 \tupletSpan 4 \hideTupletNumber
 \tuplet 3/2 { f'''8\ff[ f''' f'''] ees'''[ ees''' ees'''] d'''[ d''' d'''] fis'''[ fis''' fis''']
 g'''8\sf[ g''' g'''] des'''[ des''' des'''] c'''[ c''' c'''] e'''![ e''' e''']
 f'''!8[ f''' f'''] f'''[ f''' f'''] g'''[ g''' g'''] g'''[ g''' g''']
 a'''8[ a''' a'''] a'''[ a''' a'''] bes'''[ bes''' bes'''] bes'''[ bes''' bes''']
 b'''8[ b''' b'''] c''''[ c'''' c''''] c''''[ c'''' c''''] c''''[ c'''' c'''']
 c''''8[ c'''' c''''] c''''[ c'''' c''''] c''''[ c'''' c''''] c''''[ c'''' c'''']
 bes'''!8[ bes''' bes'''] g'''[ g''' g'''] e'''[ e''' e'''] c'''[ c''' c''']
 bes''8[ bes'' bes''] g''[ g'' g''] e''[ e'' e''] c''[ c'' c'']
 f''8[ f''' f'''] f'''[ f''' f'''] g'''[ g''' g'''] g'''[ g''' g''']
 a'''[ a''' a'''] a'''[ a''' a'''] bes'''[ bes''' bes'''] bes'''[ bes''' bes''']
 b'''[ b''' b'''] c''''[ c'''' c''''] c''''[ c'''' c''''] c''''[ c'''' c'''']
 c''''[ c'''' c''''] c''''[ c'''' c''''] c''''[ c'''' c''''] c''''[ c'''' c'''']
 bes'''[ bes''' bes'''] g'''[ g''' g'''] e'''[ e''' e'''] c'''[ c''' c''']
 bes''[ bes'' bes''] g''[ g'' g''] e''[ e'' e''] c''[ c'' c'']
 f''[ f''' f'''] f'''[ f''' f'''] f'''\sf[ f''' f'''] f'''[ f''' f''']
 f'''[ f''' f'''] f'''[ f''' f'''] f'''[ f''' f'''] f'''[ f''' f''']
 a'''\sf[ a''' a'''] a'''[ a''' a'''] a'''\sf[ a''' a'''] a'''[ a''' a''']
 }
 \tupletSpan \default \hideTupletBracket
 \tuplet 3/2 {
 a'''2.:8 a''': 
 a'''2.:8 a''': 
 g'''2.:8\sf g''':
 a'''2.:8 a''':
 g'''2.:8\sf g''':
 a'''2.:8 a''':
 g'''2.:8\sf g''':
 g'''2.:8\sf g''':
 g'''2.:8\sf g''': } \tupletSpan 4
 f'''16\ff f''' f'' f'' g'' g'' a'' a'' bes'' bes'' a'' a'' bes'' bes'' c''' c'''
 d'''16 d''' c''' c''' d''' d''' e''' e''' f''' f''' e''' e''' f''' f''' g''' g'''
 a'''4 r r2 <f' c'' a''>4 r r2 <f' c'' a''>4 r r2
 <f' a' f''>4 r <f' a' f''>4 r <f' a' f''>4 r r2 \bar "|."
}