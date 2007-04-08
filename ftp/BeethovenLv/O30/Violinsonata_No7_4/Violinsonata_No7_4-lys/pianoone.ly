\version "2.10.3"

 pianoone = {
 \set Staff.instrumentName = \markup { \column { " " " " " " " " " " "PIANO" } }
 \set Staff.midiInstrument = "acoustic grand"
 \clef treble
 \key c \minor
 \time 4/4
 \partial 2 r2^\markup { "Allegro" }
 R1 <fis' c''>4\staccato_\markup { \italic "cresc." } <fis' c''>\staccato <fis' c''>\staccato
 << { \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { ees''8([ d'' c'']) } } \\ { fis'4 } >>
 <g' b' d'' g''>4\ff\staccato r r2 <d' f'>4\p\staccato r <c' ees'>\staccato r
 <aes d'>4\staccato r r2 <aes c'>4\staccato r <aes c'>\staccato r <g b>4\staccato r r2 R1
 <fis' c''>4\staccato_\markup { \italic "cresc." } <fis' c''>\staccato <fis' c''>\staccato <fis' c''>\staccato
 <b d' g'>4\ff\staccato r r2 \clef bass <d' f'!>4\p\staccato r <c' ees'>\staccato r <aes d'>\staccato r r2
 << { c'4 e'4\rest b!4 e'4\rest c'4 } \\ { g4( aes8 g) g4( aes8 g) <ees g>4 } >> r4 r
 \clef treble g'4 c''2_\markup { \italic "cresc." }( d''4 ees'') d''4.( c''8 d''4) g'4
 \acciaccatura g'16 ees''2\sf( d''4_\markup { \italic "decresc." } c'') b'8( c'' d'' b') g'4 r4
 g''1_\markup { \italic "cresc." } ~ \startTrillSpan g''1 ~
 g''2._\markup { \italic "decresc." }( \stopTrillSpan \grace { fis''32[ g''] } c'''8 fis'' g''4\p\staccato) r4 r2
 r2 <c' c''>4\staccato_\markup { \italic "cresc." } <c' c''>\staccato
 <c' ees' aes' c''>\staccato <c' ees' aes' c''>\staccato <c' ees' aes' c''>\staccato
 \times 2/3 { ees''8[ d'' c''] } <aes' bes' d'' aes''>4\ff\staccato r r2
 <d' aes'>4\p\staccato r <ees' g'>\staccato r <c' f'>\staccato r r2 <c' ees'>4\staccato r <c' ees'>\staccato r
 <bes d'>8\fp d''( ees'' d'' ees'' d'' c'' bes') r bes( a bes a bes c' d')
 r8 ees''_\markup { \italic "cresc." }( f'' ees'' f'' ees'' d'' c'') r c'( b c' b c' d' ees') r f''( g'' f'' g'' f'' ees'' d'')
 r8 g''( aes'' g'' aes'' g'' f'' ees'') r aes''\f( bes'' aes'' bes'' aes'' g'' f'' e'' f'' g'' aes'' g'' f'' ees'' d''
 cis'' d'' g''\sf f'' ees''!_\markup { \italic "decresc." } d'' c'' bes' a' bes' c'' aes' fis' g' aes' f' ees'4\p) r4 r2
 R1 r4 bes''\staccato_\markup { \italic "cresc." } bes''\staccato bes''\staccato
 bes''4\staccato bes''\staccato bes''\staccato bes''8^\trill( a''16 bes'') g''4 r r2 R1
 r4 bes''\staccato_\markup { \italic "cresc." } bes''\staccato bes''\staccato
 bes''4\staccato bes''\staccato bes''\staccato bes''8^\trill( a''16 bes'') g''4\p r r2
 r4 bes''\staccato g''\staccato e'''\staccato f'''1\sf r4 c''4\p\staccato a'\staccato <c'' c'''>\staccato
 <bes' bes''>\sf\staccato r4_\markup { \italic "cresc." } r <bes' bes''>\staccato
 <ees' ees''>4\sf\staccato <c'' c'''>\staccato r <c'' c'''>\staccato <f' f''>8 d'''8([ f'' d''']) r d'''( f'' d''')
 r8 ees'''_\markup { \italic "decresc." }( ees'' ees''') r c'''( c'' aes'') g''8\p bes'' g'' ees'' bes' g' ees' bes
 r8 bes'' f'' d'' bes' f' d' bes r8 bes\p r bes r bes r bes r bes r bes r bes r bes
 r8 bes r <bes' bes''>\sf r <bes' bes''> r <bes' bes''> r <bes' bes''> r <bes' bes''> r <bes' bes''>
 bes''8^\trill^\markup { \flat }([ a''16 bes'']) ges''4 r8 bes\p r bes r bes r bes r bes r bes r bes aes!8 des' r4 r2
 r4 des''4\staccato bes'\staccato ges''\sf\staccato fes''2. \afterGrace ees''4^\trill^\markup { \flat } { d''16[ ees''] }
 d''!8_\markup { \italic "cresc." }( d''' f''! d''') r d'''( f'' d''') r ees'''( ges'' ees''') r ees'''( ges'' ees''')
 r8 d'''\f bes'' f'' d'' bes' f' d' r ees''' bes'' g'' ees'' bes' g' ees' r c''' aes'' ees'' c'' aes' ees' c'
 r8 aes'' f'' d'' aes' f' d' aes g8\fp ees' <g bes> ees' <g bes> ees' <g bes> ees'
 <g bes> ees' <g bes> ees' <g bes> ees' <g bes> ees'
 \clef bass <f aes ces'>8\sf d' <f aes bes> d' <f aes bes> d' <f aes bes> d'
 <f aes bes>8 d' <f aes bes> d' <f aes bes> d' <f aes bes> d' <ees g bes ees'>8\staccato
 \clef treble bes'8([ c'' d''] ees'' d'' ees'' f'') g''2.\p( f''8 ees'')
 d''8\sf( ees'' f'' g'' aes'' bes'' c''' bes'' aes'' g'' f'' ees'' d'' c'' d'' bes' ees''4\pp) r4 r2 R1
 r2 fis''8( g'') fis''( g'') r2 fis''8( g'') fis''( g'') r2 fis''8_\markup { \italic "cresc." }( g'') fis''( g'')
 r2 fis''8( g'') fis''( g'') r2 fis''8( g'') fis''( g'') r2 fis''8( g'') fis''( g'') r2 fis''8( g'') fis''( g'') g'4 g' r2
 r2 fis''8\pp( g'') fis''( g'') g'4 g' fis'8( g') fis'( g') g4 g r2 R1
 <fis' c''>4\staccato <fis' c''>\staccato <fis' c''>\staccato
 << { \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { ees''8([ d'' c'']) } } \\ { fis'4 } >>
 <g' b' d'' g''>4\ff\staccato r r2 <d' f'!>4\p\staccato r <c' ees'>\staccato r <aes d'>\staccato r r2
 <a c'>4\staccato r <a c'>\staccato r <g b>\staccato r r2 R1
 <c' fis'>4\staccato_\markup { \italic "cresc." } <c' fis'>\staccato <c' fis'>\staccato <c' fis'>\staccato
 <b d' g'>4\ff\staccato r r2 \clef bass <d' f'!>4\p\staccato r <c' ees'>\staccato r <aes d'>\staccato r r2
 << { c'4 e'4\rest b!4 e'4\rest c'4 } \\ { g4( aes8 g) g4( aes8 g) <ees g>4 } >> r4 r2
 \clef treble <c' e' g'>1_\markup { \italic "dolce" } <d' f' g'> <c' e' g'>2\sf\> <c' fis'>\!
 <b g'>4\p r r g' c''2_\markup { \italic "cresc." }( d''4 ees'') d''4.( c''8 d''4) g'4
 \acciaccatura g'16 e''2\sf( d''4_\markup { \italic "decresc." } c'') b'8\p( c'' d'' b') g'4 r4
 r2 r4 a''4\staccato a''\staccato a''\staccato a''8( gis'' a'' f'') g''!2. g''4\staccato
 g''4\staccato g''\staccato g''8( fis'' g'' e'') g''4 r r2 R1 b4\p <g d' f'> <g d' f'> <g d' f'>
 <g c' e'>4 r r g''\staccato g''\staccato g''\staccato g''8( fis'' g'' e'') e''4( f''!) d''\staccato d''8( e'')
 f''4\staccato f''\staccato f''8( e'' f'' d'') dis''4( e'') c''\staccato c''\staccato
 c''2^\trill_\markup { \italic "cresc." }( \grace { b'16[ c''] } d''4 e''4) e''4( aes' d''2\sfp ~ d''4 c''8 b') a'4 b'\staccato
 c''8 e'_\markup { \italic "cresc." } f' g' a' b' c'' d''
 e''2\f^\trill( \grace { d''16[ e''] } f''4 g'') g''4( c'' f''2\sf ~ f''4 e''8 d'') c''4\staccato d''\staccato
 ees''!8\fp g' aes'! g' f' ees'! d' c' b c' b a b g a b c' g c' g bes! g c' ees' d' g fis' a' bes' d' a' c''
 bes'4 r fis''8( g'') fis''( g'') r2 cis''8( d'') cis''( d'') r2 g''8( aes''!) g''( aes'')
 r4 a''8_\markup { \italic "cresc." }( b'') b''([ c''']) <g' g''>4\staccato
 <c'' c'''>2\f <d'' d'''>4\staccato <ees'' ees'''>\staccato
 <d'' d'''>4.\staccato <c'' c'''>8\staccato <d'' d'''>4\staccato <g' g''>\staccato
 <ees'' ees'''>8 g'' aes'' g'' f'' ees'' d'' c'' b' c'' b' a' b' c'' d'' ees'' f'' ees'' d'' c'' b' f'' d'' aes''!
 g''8 c''' f'' b'' c''' g'' ees'' c'' <des'' des'''>2\sf <c'' c'''>4\staccato <bes'! bes''!>\staccato
 <aes' aes''>4\staccato <g' g''>\staccato <f' f''>2 ~ <f' f''>8 c'''8 aes'' f'' c'' aes' g' f' e'4\sf r r2
 r8 des'''8 bes'' g'' des'' bes' a' g' fis'4\sf r r2 r8 ees''' c''' a'' fis'' ees'' d'' c''
 r8 aes'' f''! d'' b' aes'! g' f' r g''8 ees'' c'' g' ees' d' c' r f'' d'' b' f' ees' d' c' b4 r r2
 r2 d'''4( ees'''8 f''') b''4\sf( c'''8 d''') f''4( g''8 aes'') d''4( ees''8 f'') b'4( c''8 d'') f'4( g'8 aes') d'4( ees'8 f')
 b4( c'8 d') b4( c'8 d') g1\sf ~ g2^\fermata r2
 R1 <fis' c''>4\staccato_\markup { \italic "cresc." } <fis' c''>\staccato <fis' c''>\staccato
 << { \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { ees''8([ d'' c'']) } } \\ { fis'4 } >>
 <g' b' d'' g''>4\ff\staccato r r2 <d' f'>4\p\staccato r <c' ees'>\staccato r
 <aes d'>4\staccato r r2 <aes c'>4\staccato r <aes c'>\staccato r <g b>4\staccato r r2
 r2 \clef bass <c ees ges>4\staccato_\markup { \italic "cresc." } <c ees ges>\staccato
 <ees ges c'>\staccato <ees ges c'>\staccato <ges c' ees'>\staccato <ges c' ees'>\staccato
 \clef treble <c' ees' ges'>4\ff\staccato r r2 <ges' ges''>4\p\staccato r <f' f''>\staccato r
 <ges' c'' ees''>4\staccato r r2 << { <bes' des''>4 e''\rest <a' c''> e''\rest } \\ { f'4( ges'8 f') f'4( ges'8 f') } >>
 bes'2_\markup { \italic "cresc." }( c''4 des'') c''4.( bes'8 c''4\staccato) f'\staccato
 \acciaccatura f'16 des''2\sf( c''4_\markup { \italic "decresc." } bes') a'8\p( bes' c'' a' f'4) f''4
 \afterGrace f''1^\trill^\markup { \flat } { ees''16[ f''] }
 ges''8 f'' ees'' des'' c'' bes' aes'! ges' f'4 r r2 g'!8 aes' bes' c'' d''! e'' f'' g''!
 aes''4_\markup { \italic "cresc." } r4 r2 g''8 a'' b'' c''' d''' ees''' f''' d''' ees'''4 r r2
 d'''8\sf( ees''' d''' ees''' f''' ees''' d''' c''') b''\fp\staccato b''( c''' b'' c''' b'' a'' g'') r8 g'( fis' g' fis' g' a' b')
 r8 c'''_\markup { \italic "cresc." }( d''' c''' d''' c''' b'' a'') r a'( gis' a' gis' a' b' c'') r d'''( ees''' d''' ees''' d''' c''' b'')
 r8 ees'''( f''' ees''' f''' ees''' d''' c''') r f'''\f( e''' f''' e''' f''' d''' c''')
 b''( c''' cis''' d''' c''' b'' aes'' g'' f'' g'' aes''\sf g'' f''_\markup { \italic "decresc." } ees''! d'' c''
 b' aes' g' f' ees' d' f' b c'4\p\staccato) r4 r2 R1
 r4 g''\staccato_\markup { \italic "cresc." } g''\staccato g''\staccato
 g''\staccato g''\staccato g''\staccato g''8^\trill( fis''16 g'') ees''4 r r2 R1
 r4 g''\staccato_\markup { \italic "cresc." } g''\staccato g''\staccato
 g''\staccato g''\staccato g''\staccato g''8^\trill( fis''16 g'') ees''4 r r2
 r4 aes''4\staccato f''\staccato des'''\staccato d'''!1\sf ees'''4\staccato bes''\staccato g''\staccato ees'''\staccato
 e'''2.\sf <g' g''>4\staccato_\markup { \italic "cresc." } <c' c''>4\sf\staccato <aes' aes''>\staccato r <a' a''>\staccato
 <d' d''>8 b''( d'' b'') r b''( d'' b'') r c'''_\markup { \italic "decresc." }( c'' c''') r aes''!( aes' f'')
 ees''8\p g'' ees'' c'' g' ees' c' g r8 g'' d'' b' g' d' b g r8 g\p r g r g r g r g r g r g r g
 g4 r8 <g' g''>\f r <g' g''> r <g' g''> r <g' g''> r <g' g''> r <g' g''> g''8^\trill([ fis''16 g''])
 ees''4 r8 g\p r g r g r g r g r g g8\sf[ c'] f[ bes!] r4 r2 r4 bes''4\staccato g''\staccato ees'''\sf\staccato
 des'''2. c'''4\trill^\markup { \flat } b''8_\markup { \italic "cresc." } b''( b' b'') r b''( b' b'')
 r8 c'''( c'' c''') r c'''( c'' c''') r8 b'' g'' d'' b' g' d' b r c''' g'' ees'' c'' g' ees' c' r aes'' f'' c'' aes' f' c' aes
 r8 g'' d'' b' g' d' b g c'8\fp g <c' ees'> g <c' ees'> g <c' ees'> g
 <c' ees'>8 g <c' ees'> g <c' ees'> g <c' ees'> g <b d' f'>\sf aes <b d' f'> g <b d' f'> g <b d' f'> g
 <b d' f'>8 g <b d' f'> g <b d' f'> g <b d' f'> g <g c' ees'>\staccato g'( a' b' c'' b' c'' d'') ees''2.\p( d''8 c'')
 b'8\sf( c'' d'' ees'' f'' g'' aes'' g'' f'' ees'' d'' c'' b' a' b' g' c''4\pp) r4 r2 R1
 r2 d'''8( ees''') d'''( ees''') r2 d'''8( ees''') d'''( ees''') r2 b''8( c''') b''( c''') r2 b''8( c''') b''( c''')
 r2 b''8( c''') b''( c''') r2 b''8( c''') b''( c''') r2 b''8( c''') b''( c''') r2 b''8( c''') b''( c''')
 r2 b''8( c''') b''( c''') c''4 c'' r2 r2 b''8\pp( c''') b''( c''') c''4 c'' b'8( c'') b'( c'') c'4 c' r2 R1
 <fis' c''>4\staccato_\markup { \italic "cresc." } <fis' c''>\staccato <fis' c''>\staccato
 << { \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { ees''8([ d'' c'']) } } \\ { fis'4 } >>
 <g' b' d'' g''>4\ff\staccato r r2 <d' f'!>4\p\staccato r <c' ees'>\staccato r <aes d'>\staccato r r2
 <a c'>4\staccato r <a c'>\staccato r <g b>4 r b8( c') b( c')
 aes4\staccato_\markup { \italic "cresc." } aes\staccato aes\staccato aes\staccato
 <aes c'>4\staccato <aes c'>\staccato <aes c' ees'>\staccato <aes c' ees'>\staccato
 <aes c' ees' ges'>4\ff\staccato r r2 <ees' ges'>4\p r <des' f'>_\markup { \italic "p con espressione" } r
 <bes ees'>4 r r2 <f aes des'>4 r <g c' ees'> r <aes des' f'> r r2
 <f' aes'>4 r <ees' ges'> r <ces' ees' f'> r r2 <ges bes ees'>4 r <bes d'! f'> r <bes ees' ges'> r r2
 <ges' bes'>4_\markup { \italic "cresc." } r <d'! f' aes'> r <e' g'!>4 r r2 <c' f'>4 r <c' g'> r
 <c' aes'>4_\markup { \italic "decresc." } r r2 <c' d' f'>4 r r2 <c' ees'! g'>4 r r2 <b d' g'>4 r r2 \bar "||"

 \break

 c'2\f^\markup { "Presto." }( b8 c' b c') \clef bass aes2( b8 c' b c') g2( b8 c' b c') f2( b8 c' b c')
 ees8 \clef treble c'' g' ees' r aes' f' d' r g' ees' c' r f' d' b
 << { <c' c''>2\sfp( b''8 c''' b'' c''') f''2( b''8 c''' b'' c''') ees''2( b''8 c''' b'' c''') aes''2( b''8 c''' b'' c''') } \\
 { c''1 f''1 ees''1 aes''1 } >> g''8_\markup { \italic "cresc." } c''' b'' c''' f'' c''' b'' c'''
 ees''8 c''' b'' c''' aes'' c''' b'' c''' g'' c''' b'' c''' f'' c''' b'' c''' ees'' c''' b'' c''' aes'' c''' b'' c'''
 g'' c''' f'' c''' ees'' c''' aes'' c''' g'' c''' f'' c''' ees'' c''' aes'' c''' g''\f c''' fis'' c''' g'' c''' fis'' c'''
 g'' c''' fis'' c''' g'' c''' fis'' c''' g''\ff c''' ees''' c''' g'' c''' ees'' g'' c''\sf ees'' g' c'' ees' g' c' ees'
 g4 a8[ b] c' d' ees' f' g' a' b' c'' d'' ees'' f'' g'' c''\fp ees' c' ees' g' ees' c' ees' g ees' c' ees' g ees' c' ees'
 g8 f' b f' g d' b d' g d' b d' g f' b f' g\fp ees' c' ees' g' ees' c' ees' g ees' c' ees' g ees' c' ees'
 g f' b f' g d' b d' g_\markup { \italic "cresc." } ees' c' ees' g ees' c' ees'
 r2 b'8( c'') b'( c'') aes'4\staccato aes'\staccato aes'\staccato aes'\staccato
 g'4\staccato f''8\p( e'' f''_\markup { \italic "cresc." } ees'' d'' c'' b' c'' d'' ees'' f'' g'' a'' b'' c'''4\f) r4 b''8( c''') b''( c''')
 aes''!4\staccato aes''\staccato aes''\staccato aes''\staccato
 g''8\p\staccato\< f'''( e''' f''' ees''' d''' c''' b''\!) c'''\>( d''' c''' b'' c''' d''' ees''' c'''\!)
 b''8\< f'''( e''' f''' ees''' d''' c''' b''\!) c'''\>( d''' ees''' d''' f''' ees''' d''' c'''\!)
 b''8_\markup { \italic "cresc." }( f''' d''' b'' c''' d''' ees''' c''') b''( f''' d''' b'' c''' d''' ees''' c''')
 b''4\staccato f'''2\ff f'''8\staccato ees'''\staccato d'''\staccato c'''\staccato b''\staccato aes''\staccato
 g''8\staccato f''\staccato ees''\staccato d''\staccato c''4\staccato r r2
 \clef bass <g c' ees'>4\f\staccato r r2 <ees g c'>4\f\staccato r r2 \bar "|."
}