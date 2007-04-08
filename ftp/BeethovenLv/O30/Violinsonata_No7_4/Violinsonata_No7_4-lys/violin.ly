\version "2.10.3"

 violin = {
 \set Staff.instrumentName = "VIOLIN"
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key c \minor
 \time 4/4
 \once \override Score.MetronomeMark #'transparent = ##t
 \tempo 2 = 124
 \partial 2 r2^\markup { "Allegro." }^\markup { \large "FINALE." }
 R1 c'4\p\staccato c'\staccato_\markup { \italic "cresc." } c'\staccato c'\staccato <b d'>4\ff r r2
 R1 R1 R1 R1 R1 c''4\p\staccato c''\staccato_\markup { \italic "cresc." } c''\staccato
 \new Voice { \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { ees''8([ d'' c'']) } }
 <g d' b' g''>4\ff\staccato r r2
 f''!4\p\staccato r ees''\staccato r d''\staccato r r2 c''4\staccato r b'\staccato r c''\staccato r r2 R1 R1 R1
 r2 r4 g'4\p c''2_\markup { \italic "cresc." }( d''4 ees'') d''4.( c''8 d''4) g'4
 \acciaccatura g'16 ees''2\sf( d''4_\markup { \italic "decresc." } c'' b'4\p\staccato) r4 b8( c') b( c')
 aes4\staccato_\markup { \italic "cresc." } aes\staccato aes\staccato aes\staccato
 aes4\staccato aes\staccato aes\staccato \times 2/3 { c'8[ b c'] } <d' d''>4\ff\staccato r r2
 aes''4\p\staccato r g''\staccato r f''\staccato r r2 ees''4\staccato r ees''\staccato r d''8\fp bes( a bes a bes c' d')
 r8 d''( ees'' d'' ees'' d'' c'' bes') r c'^\markup { \italic "cresc." }( b c' b c' d' ees')
 r8 ees''( f'' ees'' f'' ees'' d'' c'') r d'( cis' d' cis' d' ees' f') r ees'( d' ees' d' ees' f' g')
 r8 f'\f( e' f' e' f' g' aes') aes4 r r2 r4 bes''8\sf( aes'' g''_\markup { \italic "decresc." } f'' ees'' d''
 cis'' d'' ees'' c'' a' bes' c'' aes' g'4\p\staccato) bes'\staccato g'\staccato bes'\staccato
 g'4\staccato bes'\staccato g'\staccato ees''\staccato d''\staccato aes'2_\markup { \italic "cresc." }
 f'4 ~ f' d'2 aes4 g bes'\p\staccato g'\staccato bes'\staccato
 g'4\staccato bes'\staccato g'\staccato ees''\staccato d''\staccato aes''2_\markup { \italic "cresc." } f''4 ~
 f''4 d''2 aes'4 g'\p\staccato bes'\staccato g'\staccato ees''\staccato e''1\sf
 f''4\staccato c''\staccato aes'\staccato f''\staccato fis''1\sf
 g''4\staccato_\markup { \italic "cresc." } des''\staccato bes'\staccato g''\sf\staccato
 aes''\staccato ees''\staccato c''\staccato a''\sf\staccato
 bes''1\f( ~ bes''2_\markup { \italic "decresc." } aes''!4. f''8) ees''4\p <bes g'>4 r2
 r4 <bes aes'> r2 <bes ges'>4\p\staccato bes'\staccato ges'\staccato bes'\staccato
 ges'\staccato bes'\staccato ges'\staccato ees''\staccato
 d''4\staccato aes'2\f f'4 ~ f' f'\staccato d'\staccato f'\staccato
 ges'\staccato bes'\p\staccato ges'\staccato bes'\staccato
 ges'\staccato bes'\staccato ges'\staccato ees''\sf\staccato
 des''2. \afterGrace ces''4^\trill^\markup { \flat } { bes'16[ ces''] } bes'4 r r ges'\sf\staccato
 fes'2. \afterGrace ees'4^\trill^\markup { \flat } { d'16[ ees'] } d'!4_\markup { \italic "cresc." } d''!4 r d''
 r4 ees'' r ees'' d''4\f r bes''2\sf( ~ bes''4 c'''8[ d''']) ees'''4 ees''' ees'''4\sf( f'') f''\staccato f''\staccato
 f''4\sf( g''8 aes'') bes''4\staccato bes''\staccato ees''4 r r2 g''2.\p( ees''4)
 d''4\sf( f'' aes''2 ~ aes''4 f'' d'' bes') ees''8\staccato bes( c' d' ees' d' ees' f')
 g'2.\p( f'8 ees') d'8\sf( ees' f' g' aes' bes' c'' bes' aes' g' f' ees' d' c' d' bes)
 ees'8\pp( g' fis' g' fis' g' fis' g' f'! g' f' g' ees' g' ees' g')
 d'2( g' ~ g') g' ~ g' g'^\markup { \italic "cresc." } ~ g' g' ~ g' g' ~ g' <g g'> ~ <g g'>1^\pp r2 fis'8( g') fis'( g') g4 g r2
 r2 fis''8\pp( g'') fis''( g'') g'4 g' r2 R1 c'4\p\staccato c'\staccato_\markup { \italic "cresc." } c'\staccato c'\staccato
 <b d'>4\ff r r2 R1 R1 R1 R1 R1 c''4\p\staccato c''\staccato_\markup { \italic "cresc." } c''\staccato
 \new Voice { \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { ees''8([ d'' c'']) } }
 <g d' b' g''>4\ff\staccato r r2 f''!4\p\staccato r ees''\staccato r d''\staccato r r2
 c''4\staccato r b'\staccato r c''\staccato r r g'\p c''2_\markup { \italic "dolce" }( d''4 e'')
 d''4.( c''8 d''4\staccato) g'4\staccato \acciaccatura g'16 e''2\sf( d''4_\markup { \italic "decresc." } c'')
 b'8\p( c'' d'' b') g'4 g'' g''1_\markup { \italic "cresc." } ~ \startTrillSpan g''1 ~
 g''2._\markup { \italic "decresc." }( \stopTrillSpan \grace { fis''32[ g''] } c'''8 fis'') g''4\p r r g''\staccato
 g''4\staccato g''\staccato g''8( fis'' g'' e'') e''4( f''!) d''\staccato d''8( e'')
 f''4\staccato f''\staccato f''8( e'' f'' d'') dis''4( e'') c''\staccato c''\staccato
 c''2^\trill_\markup { \italic "cresc." }( \grace { b'16[ c''] } d''!4 e'') e''4( a' d''2\sfp
 ~ d''4 c''8 b') a'4\staccato b'\staccato c''4 r r2 r2 r4 a''4\staccato
 a''4\staccato a''\staccato a''8( gis'' a'' f'') g''!2. g''4\staccato g''\staccato g''\staccato g''8( fis'' g'' e'')
 g''4 r r2 R1 b4 f' f' f' e'8_\markup { \italic "cresc." } c'' d'' e'' f'' g'' a'' b''
 c'''2\f( \grace { b''16[ c'''] } d'''4 e''') e'''4( a'' d'''2\sf ~ d'''4 c'''8 b'') a''4\staccato b''\staccato c'''4\fp r r2 R1 R1
 r2 r4 d'4\p g'2 a'4\staccato bes'\staccato a'4. g'8\staccato a'4\staccato d'\staccato
 bes'4\staccato g'\staccato b'2\sf ~ b'4 g'\staccato_\markup { \italic "cresc." } c''\staccato d''\staccato
 ees''8\f g'' aes''! g'' f'' ees'' d'' c'' b' c'' b' aes' g' f' ees' d' c' g' aes' g' f' ees' d' c' b c' b a b c' d' ees'
 f'4 r a8( b) a( b) r2 b8( c') b( c') bes'! aes' g' f' e' bes' g' e'' c'' f'' e'' bes'' aes'' f'' c'' aes' f'4 r r2
 bes''2 c'''4\staccato des'''\staccato e''1\sf
 #(set-octavation 1)
 c'''2 d'''!4\staccato ees'''!\staccato fis''2\sf( d''' ~ d'''2 ees'''4\staccato f'''!4\staccato
 ees'''2 f'''4\staccato g'''\staccato f'''2\sf g'''4\staccato aes'''\staccato d'''4( ees'''8 f''') aes''4( bes''8 c''')
 #(set-octavation 0)
 f''4( g''8 aes'') d''4( ees''8 f'') <d' b'>1 ~ <d' b'>2 b''4( c'''8 d''') f''4( g''8 aes'') d''4( ees''8 f'') b'4( c''8 d'') b'4( c''8 d'')
 g'1\sf ~ g'2_\fermata r2 R1 c'4\p\staccato c'\staccato_\markup { \italic "cresc." } c'\staccato c'\staccato
 <b d'>4\ff\staccato r4 r2 R1 R1 R1 R1 R1 c''4\p\staccato c''\staccato c''\staccato
 \new Voice { \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { ees''8([ d'' c'']) } }
 <ees' c'' ges''>4\ff\staccato r r2
 ees'''4\p\staccato r des'''\staccato r c'''\staccato r r2 bes''4\staccato r a''\staccato r bes''\staccato r r2 R1
 R1 r2 r4 f'4\p bes'2( c''4 des'') ees''1 f''2( g''!4 aes'') bes''1 aes''2_\markup { \italic "cresc." }( g''4 ees''!) d''!1
 ees''2( c''4 bes'!) a'1\sf d'8\fp\staccato g'( fis' g' fis' g' a' b') r b''( c''' b'' c''' b'' a'' g'')
 r8 a'^\markup { \italic "cresc." }( gis' a' gis' a' b' c'') r c'''( d''' c''' d''' c''' b'' a'') r b'( a' b' a' b' c'' d'')
 r8 c''( b' c'' b' c'' d'' ees'') r d''\f( cis'' d'' cis'' d'' f'' ees'' d''4) r4 r2
 r4 f'''8\sf( ees''' d'''_\markup { \italic "decresc." } c''' b'' aes'' g'' f'' ees'' d'' c'' b' d'' f' ees'4\p)
 g'4\staccato ees'\staccato g'\staccato ees'\staccato g'\staccato ees'\staccato c''\staccato
 b'4\staccato f'2_\markup { \italic "cresc." } d'4 ~ d' b2 f'4( ees'\staccato) g'4\p\staccato ees'\staccato g'\staccato
 ees'4\staccato g'\staccato ees'\staccato c''\staccato b'4\staccato f''2_\markup { \italic "cresc." }
 d''4 ~ d''4 b'2 f'4\staccato ees'4\p\staccato g'\staccato ees'\staccato c''\staccato
 des''1\sf aes'4\staccato aes'\staccato g'\staccato d''!\staccato ees''1\sf
 bes'4\staccato_\markup { \italic "cresc." } bes'\staccato g'\staccato e''\staccato
 f''\staccato c''\staccato a'\staccato fis''\sf\staccato g''1\f( ~ g''2_\markup { \italic "decresc." } f''!4. d''8)
 c''4\p <g ees'> r2 r4 <g f'> r2 <g ees'>4\p\staccato g'\staccato ees'\staccato g'\staccato
 ees'4\staccato g'\staccato ees'\staccato c''\staccato b'\staccato f''2\sf d''4 ~ d''4 b'2 f'4\staccato
 ees'4\staccato g'\p\staccato ees'\staccato g'\staccato ees'\staccato g'\staccato ees'\staccato c''\sf
 bes'!2. aes'8^\trill( g'16 aes') g'4 r r ees''\sf
 des''2. c''4\trill^\markup { \flat } b'4_\markup { \italic "cresc." } d''! r d'' r ees'' r ees''
 d''4\f r g''2\sf( ~ g''4 a''8 b'') c'''4 c''' c'''4\sf( d'') d''\staccato d''\staccato d''4( ees''8 f'') g''4\staccato g''\staccato
 c''4 r r2 ees''2.\p( c''4) b'4\sf( d'' f''2 ~ f''4 d'' b' g') c''8\staccato g( a b c' b c' d') ees'2.\p( d'8 c')
 b8\sf( c' d' ees' f' g' aes' g' f' ees' d' c' b a b g) c'\pp( ees' d' ees' d' ees' d' ees' des' ees' des' ees' c' ees' c' ees')
 bes!2( ees' ~ ees') ees'2( e'1 f' g'2 c'2 ~ c') c'2 ~ c'^\markup { \italic "cresc." } c' ~ c' c'' ~ c''1\pp
 r2 b'8( c'') b'( c'') c'4 c' r2 r2 b''8( c''') b''( c''') c''4 c'' r2 R1
 c'4\p\staccato c'\staccato_\markup { \italic "cresc." } c'\staccato c'\staccato <b d'>4\ff\staccato r r2 R1
 R1 R1 R1 r2 c''4\p\staccato c''\staccato_\markup { \italic "cresc." }
 c''4\staccato c''\staccato c''\staccato \times 2/3 { ees''8([ des'' c'']) } <ees' c'' ges''>4\ff\staccato r r2 R1
 r4 bes''2\p bes''4_\markup { \italic "espressivo" } R1 r4 f''2 f''4 R1 r4 ces'''2 ces'''4 R1 r4 ges''2 ges''4 R1
 r4 c'''!2_\markup { \italic "cresc." } c'''4 R1 r4 c'''2_\markup { \italic "decresc." } c'''4 r4 c'''2 c'''4
 r4 g''2 g''4 r4 g''2 g''4 \bar "||"

 \break

 \tempo 2 = 146
 \override Score.MetronomeMark #'transparent = ##t
 c''1\f^\markup { "Presto." }( f''1 ees''1 aes''1 g''8\staccato) c''' g'' ees'' aes'' aes'' f'' d'' g'' g'' ees'' c'' f'' f'' d'' b'
 c''4\fp c''2 c''4 ~ c'' c''2 c''4 ~ c'' c''2 c''4 ~ c'' c''2 c''4 ~ c'' c''2_\markup { \italic "cresc." } c''4 ~ c'' c''2 c''4 ~
 c'' c''2 c''4 ~ c'' c''2 c''4 ~ c''4 c''\staccato c''\staccato c''\staccato c''\staccato c''\staccato c''\staccato c''\staccato
 c''4\f <ees' ees''> <ees' ees''> <ees' ees''> <ees' ees''> <ees' ees''> <ees' ees''> <ees' ees''>
 <ees' ees''>4\ff g''\staccato c'''\staccato ees'''\staccato g'''1\sf( ~ g'''2 f'''8 ees''' d''' c''')
 \afterGrace g''1 \startTrillSpan { fis''16[ \stopTrillSpan g''] }
 g''2.\sfp ees''4\staccato c''\staccato d''\staccato ees''\staccato c''\staccato d''\staccato g'\staccato g''2\sf\staccato
 g''2\sf\staccato g''\sf\staccato g''2.\sfp\staccato ees''4\staccato
 c''4\staccato d''\staccato ees''\staccato c''\staccato d''2\staccato g'\staccato
 c''4 r b8^\markup { \italic "cresc." }( c') b( c') aes4\f aes aes aes aes aes aes aes
 b4 f'8\p( e' f'^\markup { \italic "cresc." } ees' d' c' b c' d' ees' f' g' a' b') b'8\f( c'') b'( c'') aes'!4 aes'
 aes'4 aes' aes' aes' b'8\p\staccato\< f''( e'' f'' ees'' d'' c'' b'\!) c''\>( d'' c'' b' c'' d'' ees'' c''\!)
 b'8\<( f'' e'' f'' ees'' d'' c'' b'\!) c''\>( d'' ees'' d'' f'' ees'' d'' c''\!)
 b'8_\markup { \italic "cresc." }( f'' d'' b' c'' d'' ees'' d'') b'( f'' d'' b' c'' d'' ees'' d'')
 b'4 aes''8\ff( g'') f''\staccato ees''\staccato d''\staccato c''\staccato
 b'8\staccato aes'\staccato g'\staccato f'\staccato ees'\staccato d'\staccato c'\staccato b\staccato
 c'4\staccato r r2 <c' g' ees''>4\f\staccato r r2 <g ees' c''>4\f\staccato r r2 \bar "|."
}