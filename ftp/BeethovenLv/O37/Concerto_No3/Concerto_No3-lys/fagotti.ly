\version "2.19.46"

 fagotti = {
 \set Staff.instrumentName = "Faggotti"
 \set Staff.midiInstrument = "bassoon"
 \clef bass
 \key c \minor
 \time 4/4
 R1 R1 R1 R1 <g b>2\p <g d'> <g f'>4.\sf <g ees'>8\staccato <g d'>4\staccato <g c'>\staccato
 << { g'4\staccato g'8\rest fis'\staccato g'4\staccato g'8\rest fis'\staccato g'4\staccato } \\
 { g4 r g r g } >> r4 r2
 <c c'>1\p ~ <c c'>4 <aes c'>2\sf <aes c'>4 <f f'>1 ~ <f f'>4 <des' f'>2\sf <des' f'>4 <d'! f'>2 r2
 r4 <g g'>2\sf <f f'>4 <ees ees'>4\staccato <f f'>\ff\staccato <g g'>\staccato <g, g>\staccato
 <c c'>4 r r2 R1 R1 <b d'>4\p r <b d'> r <c' ees'> r r2
 R1 R1 <bes, bes>4\p r <bes, bes> r <ees ees'>\f r r2
 R1 <g bes>1\sf ~ <g bes>4 <g bes> <g bes> <g bes> <aes c'> r r2
 << { R1 f'2 ~ f'8( ees') ees'( d') d'8( c') c'( bes) bes( b c' aes)
 g4\ff r r2 \stemUp a'4\rest ees' ees' ees' ees'1 ~ ees'4
 ges'( f' ees' d'!) bes,( c d) } \\
 { ees8 ees ees ees ees ees ees ees d\sf d d d d d d d d d d d d d d d
 \stemDown \tieUp des'1 ~ des'4 des' des' des' c'1( ces'1) bes4 bes,\sf c d } >>
 ees4\staccato ees\sf( f ges) f\staccato f\sf( bes aes) aes\staccato
 ges\sf( f ees) d\staccato bes,\sf( c d)
 ees4\staccato ees\sf( f ges) f\staccato f\sf( bes aes) aes\staccato ges\sf( f ees)
 r4 <d' f'>( <ees' ges'>2\sf) <d' f'>4
 << { bes,4\staccato ces\staccato ces\staccato bes,\staccato } \\
 { bes,4\f\staccato ces\staccato ces\staccato bes,\staccato } >>
 <ees' ges'>4\sf( <d' f'>) <ces' ees'>\staccato <bes d'>\staccato
 <ees' ges'>4\sf( <d' f'>) <ces' ees'>\staccato <bes d'>\staccato r4
 \slurUp <bes d'>2\p( <c'! ees'> <d' f'>) <ees' g'>4 r r2 R1
 r4 <d' f'>\staccato( <d' f'>\staccato <d' fis'>\staccato) <d' fis'>2( <ees' g'>4) r R1
 r2 r4 << { g'4( f'!) f'( ees' f') ees'2( d'4) } \\ { c'4 ~ c'4 bes2 c'4 bes2. } >> r4
 R1 << { ees'2\pp d'8( ees' f' d')
 c'4\staccato( d'\staccato ees'\staccato fis'\staccato) g'2.( f'4) }
 \\ { R1 R1 r4 f'!4\<( e' d'\!) } >>
 <c' e'>2\p <b f'> <c' e'>2. <g c'>4 <b d'>\staccato( <b d'>\staccato <b d'>\staccato <b dis'>\staccato)
 <b dis'>2\staccato( <c' e'>4)
 << { f'8\rest c' f'2( e'4) r8 c'8 } \\ { bes!4 a2\sf( g4) r4 } >> <f c'>2\sf( <e c'>4) r8 <d' f'>
 <c' e'>4\staccato <c' e'>4\staccato <c' e'>8( <b d'> <a c'> <b d'>)
 << { d'4.( dis'8 e'4) } \\ { b2( c'4) } >> r4
 aes!4\p\staccato aes,!\staccato g,\staccato g\staccato
 f\staccato f'\staccato ees!\staccato ees'!\staccato
 <a c'>2( <b d'>_\markup { \large \italic "cresc."})
 << { c'4\staccato f\staccato g\staccato g,\staccato } \\ { c'4\f f g g, } >>
 <c c'>2\fp <e e'> <g g'>4. <f f'>8 <e e'>4\staccato <des des'>\staccato
 <c c'>4\staccato <bes, bes>\staccato <aes,! aes!>\staccato <g, g>\staccato <f, f> r r2 R1 R1
 <g b>2\f <b d'> <d' f'>4.\sf <c' ees'>8\staccato <b d'>4\staccato <aes! c'>\staccato
 <g b>4\staccato <f aes>\staccato <ees g>\staccato <d f>\staccato
 <c ees>4\ff <aes c'> r <f f'> r <g g'> r <g, g> <c c'>
 << { ees'4\staccato^\p( ees'\staccato^\markup { \italic "con espress." } ees'\staccato)
 ees'2 d'4.( c'8) f'4 c'4\rest c'2\rest R1 e'4\rest ees'4\staccato^\p( ees'\staccato ees'\staccato)
 ees'2 d'4.( c'8) } \\
 { c4\rest c2\rest R1 c2\rest f4\p c4\rest g4 c4\rest g,4 c4\rest c4 c4\rest c2\rest R1 } >>
 <aes aes'>2_\markup { \large \italic "cresc." } <g g'>4.( <f f'>8) <f f'>4\p r r2
 <b d'>2 <c' ees'>4.( <d' f'>8) <f' d'>1_\markup { \italic "cresc." } <des' e'>1
 << { c'1 ~ c'2 b2 } \\ { c'8 a8\staccato c'4\staccato r8 aes\staccato c'4\staccato
 r8_\p g8\staccato c'4\staccato r8 g,8\staccato g4\staccato } >>
 <c c'>4 r4 r2 <d' f'>1\sf <c' ees'>4 r <aes c'>\pp r <f d'> r << { g4 } \\ { g4 } >> r4
 r4 <c' ees'>_\markup { \italic "cresc." } <c' ees'> <c' ees'> <ees' g'>2\f <b d'>
 <c c'>2\ff <ees ees'> <g g'>4.\sf <f f'>8 <ees ees'>4 <d d'>
 <c c'>4 r8 <g, g> <c c'>4 r8 <g, g> <c c'>4 r8 <b d'>\staccato <c' ees'>4\staccato r8 <d b>\staccato
 <ees c'>4\staccato r8 <g, g>\staccato <c c'>4\staccato r8 <g, g>\staccato <c c'>4\staccato r r2
 <c, c>4\ff r <c, c> r
 <c, c>2^\fermata r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 <ees g>1\ff ~ <ees g>4 <ees g> <ees g> <ees g> <ees g> r r2 R1
 <c' ees'>1\ff ~ <c' ees'>4 <c' ees'> <c' ees'> <c' ees'> <ces' ees'> r r2 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 r4 <d' f'>4\p\staccato( <d' f'>\staccato <d' fis'>\staccato) <d' fis'>2( <ees' g'>4) r R1
 r2 r4 r8 << { c'8 bes4 bes, bes, bes, ees bes, ees } \\ { aes8 bes4_\f bes, bes, bes, ees bes, ees } >> r4 R1 R1
 R1 R1 R1 R1<< { d'4\rest_\p g'\staccato( g'\staccato g'\staccato)
 g'2\< f'4.\!\>( ees'8\!) aes4 c'4\rest r2 } \\ { R1 R1 R1 } >> R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 << { r2 c'4\rest c'8\rest f'8\staccato\p ees'4\staccato c'4\rest c'4\rest c'8\rest f'8\staccato
 ees'4\staccato c'8\rest d'8\staccato c'4\staccato c'8\rest bes8\staccato
 aes4\staccato a8\rest g8\staccato f4\staccato a8\rest g8\staccato f4\staccato a4\rest r2 } \\ { R1 R1 R1 R1 R1 } >>
 r4 <aes d'>\staccato\pp( <aes d'>\staccato <aes d'>\staccato)
 << { ees'1 g'2 ees'2 } \\ { g1 ~ g1 } >> <aes c'>1 ~ <aes c'> <a ees'>1 ~ <a ees'>1( <bes ees'>4) r4 r2 R1
 R1 R1 R1 R1 R1 R1 R1 R1
 << { ees8 ees ees ees ees2:8 ees8 ees ees ees ees ees ees ees
 ees4 g'4 e'\rest ees' d'\rest f' d'\rest bes g'1 f' ees' d' } \\
 { ees8\f ees ees ees ees2:8 ees8 ees ees ees ees ees ees ees
 ees4 c4\rest c2\rest R1 e2\rest ees'2 ~ ees' d' ~ d' c' ~ c' bes } >> <c' ees'>2 <cis' e'> <d d'> <ees! ees'!>
 <d d'>4\staccato << { d'4\rest d'2\rest s1 s1 s1 } \\
 { d4\sf( e fis) g\staccato g\sf( a bes) a\staccato a\sf( d' c') c'( bes\sf a g) } >>
 << { fis4\staccato d( e fis) g\staccato g( a bes) a\staccato a( d' c') c'( bes a g)
 d'4 d'2( cis'4) d'4 d\staccato ees!\staccato ees\staccato
 d\staccato cis'( d') ees\staccato d\staccato cis'( d') ees\staccato d } \\
 { fis4 d2.\sf ~ d4 d2.\sf ~ d4 d2.\sf ~ d4 d\sf d d d d'2\sf cis'4 d' d ees ees d cis'\sf d' ees d cis'\sf d' ees d } >>
 r4 r2 << { d4 } \\ { d4 } >> r4 r2 << { d4 } \\ { d4 } >> r4 r2 R1 R1
 << { ees'4\staccato\p d'8\rest c'\staccato ees'4\staccato d'8\rest c'\staccato } \\ { R1 } >>
 << { <c' ees'>1 ~ <c' d'>1 ~ <bes d'>4 } \\ { s4\< s4 s4 s8 s8\! s8\> s8 s4 s4 s4\! s4 } >> r4 r2 R1 R1
 R1 R1 R1 R1 R1 R1 R1
 << { g2\p( bes) des'4. c'8\staccato bes4\staccato aes\staccato g4 g'( e'! des' c' bes aes g)
 f4 r r2 f4\p r8 c8 f4 r8 c8 g4 r r2 g4 r8 c g4 r8 c aes4 r r2 a4 r8 f a4 r8 f bes4 bes r bes r c' r c
 f2\p( aes c' f') ges'4 c'4\rest a2\rest c'4\rest ees'2 ees'4 des' c'4\rest a2\rest c'4\rest des'2 des'4
 ees'4 c'4\rest a2\rest c'4\rest ees'2 ees'4 c'4\rest des'2 des'4 c'4\rest d'!2 d'4 c'4\rest c'2 c'4
 c'4\rest f'4 c'4\rest fis'4 g'4 b( c' d') } \\
 { R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 c4\rest g4\p( a b) } >>
 <c' e'>2_\markup { \italic "cresc." }( <c' ees'>2) <b d'>4 <g b>\p( <a c'> <b d'>)
 <c' e'>2_\markup { \italic "cresc." }( <c' ees'>2) <b d'>4 r r2 R1
 << { b2\rest f'2\<( e'\!\> f'4\!) c'4\rest b2\rest f'2\<( e'\!\> f'4\!) c'4\rest b2\rest f'2\<( e'\!\> f'4\!) c'4\rest} \\
 { R1 R1 R1 R1 R1 R1 } >>
 << { b2\rest f'2( e' f') ~ f'2 ees'! ~ ees' d' ~ d' c' ~ c' b } \\ { R1 R1 R1_\markup { \italic "decresc." } R1 R1 R1 } >>
 <c c'>2\ff <ees ees'> <g g'>4.\sf <f f'>8\staccato <ees ees'>4\staccato <d d'>\staccato
 <c c'>4\staccato r8 <g, g>\staccato <c c'>4\staccato r8 <g, g>\staccato <c c'>4\staccato r r2
 <g b>2\ff <g d'> <g f'>4.\sf <g ees'>8\staccato <g d'>4\staccato <g c'>\staccato
 <g b>4\staccato r8 <fis c'>\p\staccato <g b>4\staccato r8 <fis c'>\staccato <g b>4\staccato r r2 R1 R1
 << { f'4\p\staccato e'8\rest ges'\staccato f'4\staccato e'8\rest ges'\staccato f'4\staccato e'4\rest c'2\rest } \\
 { R1 R1 } >> R1 R1 R1 R1 R1
 R1 R1 R1 R1 r4 <g b>\p( <a c'> <b d'>) <c' ees'>\staccato <c' ees'>( <d' f'> <ees' g'>)
 <f' aes'>4\staccato <f' aes'>( <ees' g'> <d' f'>) <ees' g'>\staccato <ees' g'>( <d' f'> <c' ees'>)
 <b d'>4 r8 <b d'>8\pp <c' ees'>4 r8 <c' ees'> <b d'>4 r8 <b d'> <c' ees'>4 r8 <c' ees'> <b d'>4 r r2
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 <c' e'>2\p <b f'> <c' e'>2. <g c'>4 <b d'>\staccato( <b d'>\staccato <b d'>\staccato <b dis'>\staccato)
 <b dis'>2( <c' e'>4) << { f'8\rest c'8 } \\ { bes4 } >>
 <a f'>2\sf( <g e'>4) r8 c'8 <f c'>2\sf( <e c'>4) r8 <d' f'>8
 <c' e'>4\f\staccato <c' e'>\staccato <c' e'>8( <b d'> <a c'> <b d'>) << { d'4.( dis'8 e'4) } \\ { b2( c'4) } >> r4
 R1 R1 R1 R1 R1 R1 r4 <e' g'>\p\staccato( <e' g'>\staccato <e' g'>\staccato)
 <e' g'>2\< <d' g'>4.\!\>( <c' g'>8\!) <f f'>4\p r r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 << { d'4\rest d'\pp\staccato( d'\staccato d'\staccato)
 e'1 ~ e'4 e'4\staccato( e'\staccato e'\staccato) f'1 ~ f'4 f'4\staccato( f'\staccato f'\staccato)
 fis'1 ~ fis'4 fis'4\staccato( fis'\staccato fis'\staccato) g'4 c'4\rest c'2\rest } \\ { R1 R1 R1 R1 R1 R1 R1 R1 } >>
 R1 R1 R1 R1 R1 R1 R1 R1 R1
 <c c'>2\fp <e e'> <g g'>4. <f f'>8\staccato <e e'>4\staccato <d d'>\staccato
 <c c'>4\staccato <bes, bes>\staccato <aes, aes>\staccato <g, g>\staccato <f, f>4 r4 r2 R1 R1
 <g b>2\f <b d'> <d' f'>4.\sf <c' ees'>8\staccato <b d'>4\staccato <aes! c'>\staccato
 <g b>4\staccato <f aes>\staccato <ees g>\staccato <d f>\staccato
 <c ees>4\ff <c' ees'>2 <c' ees'>4 ~ <c' ees'> <c' ees'>2 <c' ees'>4 ~ <c' ees'>
 <c' ees'>2 <c' ees'>4 ~ <c' ees'> <c' ees'>2 <c' ees'>4 ~ <c' ees'>2\sf^\fermata r2^\fermata
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 <c c'>2\ff <aes, aes> <f, f> <g, g> << { c4 } \\ { c4 } >> r4 <c c'>\staccato r
 r2 <c' ees'>4\staccato r r2 <c c'>4 r <g g'> r <ees ees'> r
 <c c'>4 r r r8 r16 <c, c>16\ff <c, c>4 r r r8 r16 <c, c> <c, c>1^\fermata \bar "|."
}