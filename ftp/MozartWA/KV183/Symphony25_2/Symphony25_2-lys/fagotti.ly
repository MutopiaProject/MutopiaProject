\version "2.10.3"

 fagotti = {
 \set Staff.instrumentName = "Fagotti.      "
 \set Staff.midiInstrument = "bassoon"
 \clef bass
 \key ees \major
 \time 2/4
 \repeat volta 2 {
 \partial 8 r8 r8 <g bes>\fp([ <f aes> <ees g>]) r8 <aes c'>\fp([ <g bes> <f aes>])
 r8 <f aes>\fp([ <ees g> <d f>]) r8 <g bes>\fp([ <f aes> <ees g>]) r8 <aes c'>\fp([ <c' ees'> <bes d'>])
 r8 <g ees'>4\fp <aes ees'>8 r8 <g bes>\fp([ <ees g> <f aes>]) r8 <g bes>\fp([ <f aes> <ees g>])
 << { f4 } \\ { f4 } >> r4 << { f'2~ f'8 ees' des'( c'16 bes) bes8( a) s8 } \\ { f4 r4 f4 c4\rest b,8\rest f8([ ges]) } >>
 <g e'>8( <f f'>) r8 r <ges e'>( <f f'>) r8 r4 R2 bes2 c'4.( ees'8) d'!4 bes4 c'4.( ees'8)
 d'8[ d( ees)] r8 r8 e([ f]) r r fis([ g]) r r e([ f!]) r r a,([ bes,]) }
 \repeat volta 2 { r8 r8 e([ f]) r r f([ e]) r r des'([ b c']) r aes!( f4) r8 d([ ees!]) r r ees([ d]) r r ees([ g bes]) ees4 ees8 d
 c4 c8 f bes,4 r R2 r8 <d' f'>\p\<[ <d' f'> <d' f'>\!] <d' f'>2\< <d' f'>4\!\f r4
 R2 R2 r8 <g bes>\fp([ <f aes> <ees g>]) r8 <aes c'>\fp([ <g bes> <f aes>])
 r8 <f aes>\fp([ <ees g> <d f>]) r8 <g bes>\fp([ <f aes> <ees g>]) r8 <aes c'>\fp([ <c' ees'> <bes d'>])
 r8 <g ees'>4\fp <aes ees'>8 r8 <g bes>\fp([ <ees g> <f aes>]) r8 ees ees,4
 r8 e e,4 r8 f f,4 r8 fis fis,4 r8 g g,4 r8 c g,4 r8 aes aes,4 r8 g c4
 << { bes,8[ d'( c' bes)] bes,4 } \\ { bes,8[ f( ees d)] bes,4 } >> r4
 << { bes2~ bes8 d'8[ ees'( f'16 ees')] ees'8( d') f'8\rest } \\ { bes,4 b,4\rest bes, bes,\rest c8\rest bes[ a] } >>
 \set doubleSlurs = ##t <a ges'>8( <bes f'>4) r8 <ces ees'>8( <bes, d'>8) r8 r4 R2 ees'2\p
 \set doubleSlurs = ##f f'4.( d'8) ees'2 f'4.( d'8) ees'8[ g,( aes,)] r8 r a,([ bes,]) r r b,([ c]) r r a,([ bes,!]) r
 r8 d,8([ ees,]) } \bar "|."
}