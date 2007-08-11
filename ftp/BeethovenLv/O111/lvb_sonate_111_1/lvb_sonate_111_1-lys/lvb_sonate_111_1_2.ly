\version "2.10.3"

 pianotwo = {
 \set Staff.midiInstrument = "acoustic grand"
 \clef bass
 \key c \minor
 \time 4/4
 \partial 32 <ees ees'>32\f <fis, fis>8..[ <fis,, fis,>32] <fis, fis>4~ <fis, fis>8..[ <fis ees'>32] <fis ees'>4
 \cadenzaOn <g d'>8\p r8 <c g c'>8 r \override NoteHead #'font-size = #-2
 b,,64_\sustainDown[ d, g, b, d g b] s32 s64
 \override NoteHead #'font-size = #0 <b,,! b,!>8\f r8 r8 r16. <aes aes'>32\sustainUp \cadenzaOff \bar "|"
 <b,! b!>8..[ <b,,! b,>32] <b, b>4~ <b, b>8..[ \clef treble <b aes'>32] <b aes'>4
 \clef bass \cadenzaOn <bes! des'>8\p r8 <aes c'>8 r
 \override NoteHead #'font-size = #-2 e,64_\sustainDown[ g, c e g c'] s32 s32
 \override NoteHead #'font-size = #0 <e, e>8\f r8 r8 r16. <des des'!>32\sustainUp \cadenzaOff \bar "|"
 <e, e>8..[ <f, f>32\f] <f, f>4\sf~ <f, f>8..[ <f bes des'!>32] <f bes des'>4
 <ges bes des'>8..\p[ <g bes des'>32] <g bes des'>4~ <g bes des'>8..[ <aes c'>32] <aes c'>8..[ <a ees' ges'>32]
 <a ees' ges'>8..\pp[ <bes ees' ges'>32] <bes ees' ges'>4~ <bes ees' ges'>8..[ <ces' ees' ges'>32]
 <ces' ees' ges'>8..[<c' ees' ges'>32]
 <c' ees' ges'>8..[ <des' f'>32] <des' f'>4~ <des' f'>8..[ <d' f'>32] <d' f'>8..[ <d,! d!>32]
 <d, d>8..[ <ees, ees>32] <ees, ees>4~ <ees, ees>8..[ <ees, ees>32] <ees, ees>8..[ <e, e>32]
 \setTextCresc <e, e>8..\<[ <f, f>32] <f, f>8..[ <g, g>32]
 <g, g>8\!\f\staccato[ <aes, aes>\staccato <aes, aes>\staccato <aes,, aes,>\staccato]
 <g,, g,>8\sf\staccato g8\sfp[ g <g aes>\sfp] <f aes>[ <f g>\sfp <f g> <ees g>]
 << { g8[ g g g] g[ g g g]~ <g, g>[ g,\sfp g, <g, aes,!>\sfp] <f,! aes,>[ <f, g,>\sfp <f, g,> <ees, g,>]
 g,8[ g, g, g,] g,[ g, g, g,]~ g,[ g, g, g,] g,[ g, g, g,] } \\
 { ees4( d c) fis,8..( g,32) s1 ees,4( d, c,) fis,,8..( g,,32) g,,2 g,,2 } >>
 g,,32\pp[ aes,, g,, aes,, g,, aes,, g,, aes,,] g,,[ aes,, g,, aes,, g,, aes,, g,, aes,,]
 g,,[ aes,, g,, aes,, g,, aes,, g,, aes,,] g,,[ aes,, g,, aes,, g,, aes,, g,, aes,,] \break

 \setTextCresc g,,16\< aes,, g,, aes,, g,, aes,, g,, aes,, g,, aes,, g,, aes,, g,, aes,, g,, aes,,
 g,, aes,, g,, aes,, g,, aes,, g,, aes,, g,, aes,, g,, aes,, g,, aes,, g,, aes,,32 b,,\!
 \repeat volta 2 { c,4\f\staccato r4 r4 r8
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { g,,16\ff[ a,, b,,] }
 c,4\staccato ees,\staccato b,,4.\sf\staccato^\fermata \times 2/3 { g,,16[ a,, b,,] }
 c,4\staccato ees,\staccato b,,4.\sf\staccato aes,!8\staccato
 g,8\staccato[ f,\staccato ees,\staccato d,\staccato] ees,16 f, ees, d,
 c,8 aes,\staccato^\markup { \italic "poco ritenente" }( g,8\staccato f,\staccato ees,\staccato d,\staccato) ees,16 f, ees, d,
 \setTextCresc c,16\< aes, bes, aes, g, aes, g, f, ees, f, ees, d, ees, f, ees, d, c, g, f, ees,
 f,16 g, f, ees, d, aes, g, f, g, aes, g, f, e, bes, aes, g, aes, c g, c f, c fis, c b, a, g, d c\!\sf b, f! ees
 d16\sf aes! g f \clef treble d'\sf c' b f' ees'\sf d' aes' g' f'\sf d'' c'' b'
 f''16\sf\> ees'' d'' aes'' g'' f'' ees'' d'' c'' b' aes' g' f' ees' d' g'\!
 c'4\p \clef bass <c, c>4 r <g,, g,> r8 <g d'>8 <g c'> <g b>] r4 <c' ees'>8 <g f'>\staccato(
 <g ees'>8\staccato <g d'>\staccato <g c'>\staccato <g b>\staccato])
 r8 <c' ees'>8~ <c' ees'>8[ <g,, g,>] <g,, g,>8[ <g,, g,> <a,, a,> <b,, b,>] <c, c>[ <b,, b,> <c, c> <d, d>]
 <ees, ees>8[ <e, e> <f, f> <e, e>] <f, f>8 <aes c' f'>4^\markup { \italic "reinforz." } <aes c' f'>8
 << { c'4 ees'!2 ees'4 } \\ { aes4 aes( g) fis } >> <g ees'>4 <g b f'>4~ g16 f ees d c d ees c
 d16\sf c b, a, g, b, d f ees8[ <g,, g,>( <c, c> <b,, b,>] <c, c>8[ <f, f>) <ees, ees>\staccato <c, c>\staccato]
 r8 <c, c>([ <d, d> <c, c>] <d, d>[ <g, g>) <f, f>\staccato <ees, ees>\staccato]
 <d, d>\staccato[ <bes,,! bes,!>\staccato <c, c>\staccato <d, d>\staccato]
 <ees, ees>4\f\staccato <g, g>\staccato <d, d>8 d,\sf~ d,16 f, aes, c! bes,16 c bes, aes, g, aes, g, f, g, aes, g, f, e, g, bes, des
 c16 des c bes, aes, bes, aes, g, aes, bes, aes, ges, f, a, c ees des ees des c bes, c bes, a, bes, c bes, aes, g,! bes, des f
 ees16 f ees des c des c bes, aes,4 \clef treble aes'16 c'' bes' aes' \bar "||"
 \key f \minor bes'16 aes' g' f' ees' g' bes' des'' c''8[ <g g'>( <aes aes'> <g g'>]
 <aes aes'>[ <des' des''>) <c' c''>\staccato <a a'>\staccato] r8 <a a'>([ <bes bes'> <a a'>]
 <bes bes'>[ <ees' ees''>) <des' des''>\staccato <bes bes'>\staccato] r8 <bes bes'>([ <c' c''> <bes bes'>]
 <c' c''>[ <f' f''>) <ees' ees''>\staccato <c' c''>\staccato] r \clef bass <aes,, aes,>8[ <bes,, bes,> <c, c>]
 <des f>16\sustainDown aes <des f> aes <des f> aes <des f> aes <des f> aes <des f> aes <des f> aes <des f> aes\sustainUp
 <d f aes>\sustainDown ces' <d f aes> ces' <d f aes> ces' <d f aes> ces'
 <d f aes> ces' <d f aes> ces' <d f aes> ces' <d f aes> ces'\sustainUp
 <ees, ees>4\sustainDown r4 r4 r8. <ees c'! ees'>16\sustainUp
 <ees bes des'>4.\p r16 <ees aes c'> <ees aes c'>4 <ees g bes>8[ r16 <ees g bes>]
 <ees g bes>4 <ees aes c'> r2 <ees bes des'>4. r16 <ees aes c'>16 <ees g bes>4. r16 <e g bes>16
 <e g bes>4 <f aes> r4 r8. \clef treble <des' g' bes'>16 <des' g' bes'>4 <c' aes' c''>4 r4 r8 <d' f' aes' ces''>8\ff
 <d' f' aes' ces''>8 f''16( aes'') d''( f'') ces''( d'') aes'( ces'') f'( aes') \clef bass d'( f') ces'( d')
 aes( ces') f( aes) d\p_\markup { "    cresc." } ees f g aes bes c'! des'! ees' e' f' ees'
 <aes,, aes,>4\ff\staccato <c, c>\staccato <g,, g,>2\sf\staccato
 <ges,, ges,>4\staccato <aes,, aes,>\staccato <f,, f,>2\sf\staccato
 <fes,, fes,>4\staccato <aes,, aes,>\staccato <ees,, ees,>\sf\staccato <aes,, aes,>8. <c, c>16
 <ees, ees>4\staccato <ees,, ees,>\staccato r16 c'16 bes aes g aes bes aes
 \clef treble r16 g' f' ees' d' ees' f' ees' \clef bass r16 ees des! c b, c des c r16 f' ees' des' c' des' ees' des'
 r des, ees, fes, ees, des, c, des, d, ees, f,! ees, des, c, bes,, aes,, g,, aes,, bes,, c, des, c, des, b,,
 c,16 des, ees, des, c, b,, c, aes,, g,, aes,, bes,, c, des, c, des, b,, c, des, ees, des, c, b,, c, aes,, g,, aes,, bes,, c, des, ees, f, g,
 aes,16\sf bes, c b, c\sf des eeses des eeses\sf ees fes ees fes\sf f ges g
 aes\sf bes c' b c'\sf des' eeses' des' eeses'\sf ees' fes' ees' \clef treble fes'\sf f' ges' g' }
 \alternative {
 { aes'4\ff\staccato \clef bass <aes,, aes,>\staccato r4 r8 \clef bass \times 2/3 { g,,16[ a,, b,,] } }
 { \clef treble aes'4\staccato \clef bass <aes,, aes,>\staccato r2 }
 }
 r4 <g,, g,>4\p r2 r4 <fis,, fis,>4\sf\staccato r2 \bar "||"
 \key g \minor r4 r8 \times 2/3 { d,16\p([ e, fis,]) } <g,, g,>4\staccato <bes,,! bes,!>\staccato
 <fis,, fis,>2 <f,, f,>4\staccato <aes,, aes,>\staccato <e,, e,>2 <ees,, ees,>4\staccato <g,, g,>\staccato
 <d,, d,>4\staccato <g,, g,>8. <bes,, bes,>16 <d, d>4\staccato <c, c>
 << { <b,, b,>4 <g,, g,> g4\staccato c'\staccato fis4. ees'8 d'8[ c' bes! a]
 b4 e'4\rest e'2\rest s1 s4 } \\
 { R1 b,2\rest b,4\rest d4 g2( aes d \afterGrace b2) \startTrillSpan { a16[ \stopTrillSpan b] } c'4 } >> r16 bes!16 aes g aes4 f
 bes4 g c' c f2 \afterGrace e2 \startTrillSpan { d!16[ \stopTrillSpan e] }
 << { f4 s4 s2 } \\ { f,2 \afterGrace e,2_\startTrillSpan { d,!16[ \stopTrillSpan e,] } } >>
 f,8[ ees,! d,! c,] b,,[ bes,, a,,! aes,,]
 g,,8[ fis,,! fis,, <fis,, fis,>]~ <fis,, fis,>8 <fis,, fis,>4 <fis,, fis,>8 r16 g,,16[ a,,! b,,] r g,[ a,! b,] r g,, c, ees, fis, a, c ees \bar "||"
 \key c \minor r16 g,,16 c, ees, r g, c ees r g,, d, f,! g, b, d f r16 g,, d, f, r g, d f r g,, g, bes,! des e g bes
 r16 g,, g, bes, r g, g bes r g,, a,! c ees fis a! c' r16 g,, a, c r fis a c' r g,, b, d f aes f aes
 g16 aes g f ees f ees d ees f ees d c g, a, b, <c, c>4\ff\staccato <ees, ees>\staccato <b,, b,>4. <aes,! aes!>8
 <g, g>8[ <f, f> <ees, ees> <d, d>] ees,16 f, ees, d, <c, c>8 r8
 <g b>8\p[ <g b> <g c'> <g b>] r8 <c c'>8~ <c c'>8 r8 <g,, g,>8[ <g,, g,> <g,, a,> <g,, b,>] r8 <c, c>8~ <c, c>8 r16 <b,, b,>16
 r16 <b,, b,>[ r <b,, b,>] r <b,, b,>[ r <b,, b,>] r <c, c>[ r <d, d>] r <ees, ees>[ r <d, d>]
 r16 <ees, ees>[ r <e, e>] r <f, f>[ r <e, e>] r <f, f>[ r <g, g>] r <aes, aes>[ r <f aes>]
 r16 <f aes>\sustainDown[ r <f aes des'>] r <f aes des'>[ r <f aes des'>]
 r <f aes des'>[ r <f aes des'>] r <f aes des'>[ r <f aes>\sustainUp]
 r16 <f aes>[ r <e g>] r <e g>[ r <e g>] <e g>8 e,4 \times 2/3 { c,16([ d,! e,]) }
 <f,, f,>4\f\staccato <aes,, aes,>\staccato <e,, e,>4^\sf~ <e,, e,>16 g, bes, des
 c16 des c bes, aes, bes, aes, g, aes, bes, aes, g, f, aes, bes, c des ees des c bes, c bes, a, bes, c bes, aes, g, bes, des f
 ees!16 f ees des c des c bes, c des c bes, a, c ees ges f ges f ees des ees des c des ees des c bes, des bes, des
 c16 des ees des c des c bes, a,8 <f, f>8([ <bes, bes> <a, a>] <bes, bes>[ <ees ees'>) <des des'>\staccato <bes, bes>\staccato]
 r8 <bes, bes>([ <c c'> <bes, bes>] <c c'>[ <f f'>) <ees ees'>\staccato <c c'>\staccato] r8 <c c'>([ <des des'> <c c'>])
 \clef treble f'16 ges' f' ees' des' ees' f' des' aes' bes' aes' g' aes' c'' ees'' ges''
 f''16 ges'' f'' ees'' des'' ees'' des'' c'' des'' ees'' des'' c'' bes' d'' f'' aes''!
 ges'' aes'' ges'' f'' ees'' f'' ees'' d''! ees'' f'' ees'' des'' c'' e'' g'' f'' e'' f'' e'' g'' f'' g'' f'' e'' f'' g'' f'' ees'' d''! fis'' a'' c'''
 bes''16 c''' bes'' a'' g'' a'' g'' fis'' g'' a'' g'' fis'' g'' b'' d''' f'''! ees''' f''' ees''' d''' c''' d''' c''' b'' c''' d''' c''' b''
 c'''8 \clef bass g,16[ f,] <ees, g,>\sustainDown c <ees, g,> c <ees, g,> c <ees, g,> c
 <e, g, bes,!> c <e, g, bes,> c <e, g, bes,> c <e, g, bes,> c\sustainUp
 <f, aes,>16 c <f, aes,> c <f, aes,> c <f, aes,> c <fis, a, c> ees <fis, a, c> ees <fis, a, c> ees <fis, a, c> ees
 <g,, g,>4^\sf\sustainDown r4 r4 r8. <g e' g'>16\sustainUp <g d' f'>4.\p r16 <g c' e'>16 <g c' e'>4 <g b d'>8[ r16 <g b d'>16]
 <g b d'>4 <g c' e'>4 r2 <g, d f>4. r16 <g, c f>16 <g, b, f>4. r16 <g d'>16
 <gis d'>4 <a c'>4 r4 r8. <f g b>16 <f g b>4 <e g c'>4 r4 r8. \clef treble <f' b'>16 <f' b'>4( <e' bes'>2)
 <des' g' bes'>4~ <des' g' bes'>4 <des' g' bes'>2~ <des' g' bes'>8[ <des' f' aes'>]
 \clef bass <c c'>2.\p( <aes, aes>8. <f, f>16)
 <f, f>4( <e, e>8)[ r16 <des, des>] <des, des>4( <c, c>8)[ r16 <bes, bes>] <bes, bes>4 <aes, aes> r2
 <c g c'>4. r16 <c f c'>16 <c e c'>4. r16 <e g c'>16
 <f aes c'>8[ <f aes c'>] r <fis a ees'!> <g b d'>[ <g b d'>] r <g b f'!>
 <aes! c' ees'>[ <aes c' ees'>] r <a c' f'> <bes! d' f'>[ <bes d' f'>] r <b d' g'>]
 <c' ees' g'>[ <c' ees' g'>] r \clef treble <c' ees' g'> <d' f' aes' b'>[ <d' f' aes' b'>] r <d' f' aes' b'>
 <ees' g' c''>[ <ees' g' c''>] r <e' g' c''> <f' aes' c''>[ <f' aes' c''>] r <f' aes' d''>
 <fis' a' ees''!>8\ff a''16( c''') fis''( a'') ees''( fis'') c''( ees'') a'( c'') fis'( a') ees'( fis')
 \clef bass d'( f'!) b( d') aes!( b) f( aes) d( f) b,( d)
 << { aes!16( b) aes( b) g b c' d' } \\ { aes,!( bes,) aes,( bes,) g, b, c d } >> ees16 f g aes b c' d' ees' \clef treble f'16 fis' g'8
 \clef bass <c, c>4\ff\staccato <ees, ees>\staccato <b,, b,>2\sf <bes,,! bes,!>4\staccato <c, c>\staccato <a,, a,>2\sf
 <aes,,! aes,!>4\staccato <c, c>\staccato <g,, g,>^\sf\staccato <c, c>8. <ees, ees>16
 <g, g>4\staccato <g,, g,>\staccato r16 d'16 c' b c' d' ees' c' r16 a,16 g, fis, g, a, b, g, r f'! e' d' e' f' g' e'
 r16 g, f, e, f, g, a, f, r g f e f g aes! fis g16\sf ees! c g, ees, g, ees, c, b,, g, d, g, ees, g, f, g,
 ees,16 g, d, g, ees, g, c, g, b,, g, d, g, ees, g, f, g, ees, g, d, g, ees, g, c, g, b,, g, d, g, aes, g, a, b,
 c16\sf d ees d ees\sf e f e f\sf fis g fis g\sf a bes! b \clef treble c'\sf d' ees' d' ees'\sf e' f' e' f'\sf fis' g' fis' g'\sf a' bes'! b'
 c''4\ff \clef bass <c, c>4\sf r <c, c>\sf r <c, c>\sf\staccato r <c, c>\sf\staccato r <c, c> r <c, c> r <c, c> r <c, c>
 r8 c16^\p des c bes,! aes,! g, f, c des c bes, aes, g, f, e, c des c bes, g, e, c f, c des c bes, aes, g, f,
 c,16 d,! e, f, g, c, d, e, f, c des c bes, aes, g, f, e, c des c bes, g, e, c f, c des! c bes, aes, g, f,
 c,16 d,! e, f, g, c, d, e, f, c des c bes, aes, g, f, e, c des c bes, g, e, c f, aes, f, c, f, aes, f, c,
 f,16 aes, f, c, f, aes, f, c, f, aes, f, c, f, aes, f, c, g,\sustainDown c g, c, g, c g, c, g, e g, c, g, e g, c,
 <c,, c,>1^\pp\sustainUp \bar "|."
}