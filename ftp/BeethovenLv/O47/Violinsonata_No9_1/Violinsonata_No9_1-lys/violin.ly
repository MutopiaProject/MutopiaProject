\version "2.10.3"

 violin = {
 \set Staff.instrumentName = "VIOLIN  "
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key a \major
 \time 3/4
 \once \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 32
 \override TextScript #'padding = #1.5
 <a e' cis'' a''>4\f^\markup { \bold "Adagio sostenuto." }( <d'' fis''>\p <b' d''>) <gis' b'>4( <e' e''>4. <d' gis'>8)
 <cis' a'>4 <b fis' d''> <b gis' d''> << { d''4( cis''8) } \\ { <a e'>4. } >> r8 r4 R2. R2. R2.
 r4 f''4_\markup { \italic "cresc." } <g! d' b' f''>4 << { f''4( e''8) } \\ { <c' g' c''>4. } >> r8 r4
 r4 a''4_\markup { \italic "cresc." } <b fis'! dis'' a''> <e' b' a''>4( gis''2) ~ gis''4( a''4. c''8\sf)
 b'4\p r8 r16 cis''!([ d'']) r16 r c''( b'8) r r r16 cis''!([ d'']) r r c''( bes'8) r r r16 cis''!([
 d'']) r r e''( f''8) r r r16 e''([ f'']) e''([ f'']) e''( f''8) r r r16 e''_\markup { \italic "cresc." }([ f'']) e''([ f''])
 e''_\markup { \italic "decr." }( f''2\pp^\fermata)
 \bar "||" \break

 \key a \minor
 \time 4/4
 \repeat volta 2 {
 \once \override Score.MetronomeMark #'transparent = ##t
 \tempo 2 = 142
 \partial 4 e''4( f''2.\sf^\markup { \bold "Presto." }) a'4 gis'4\staccato e'\staccato e'\staccato gis'\staccato
 a'4\staccato e'\staccato e'\staccato a'\staccato b'\staccato e'\staccato e'\staccato b'\staccato
 c''4\staccato_\markup { \italic "cresc." } a'\staccato a'\staccato c''\staccato
 c''\staccato a'\staccato a'\staccato c''\staccato d''1_\markup { \italic "rallent." } <g d' b' g''>1\sf
 << { e''2. r4 } \\ { \stemUp <c' g' c''>4\sf\> s2 s4\! } >>
 R1 R1 r2 r4 a'4\p\staccato gis'\staccato e'\staccato e'\staccato gis'\staccato
 a'\staccato_\markup { \italic "cresc." } e'\staccato e'\staccato a'\staccato
 a'\staccato e'\staccato e'\staccato a'\staccato b'4_\markup { \italic "rallent." } r r2 <g d' b'>4\sf r r2
 \new Voice { <g e' c''>4\ff
 \cadenzaOn s2 s16 r4 s1 s8 r4^\fermata e''4\p \cadenzaOff \bar "|" }
 f''2.( e''4_\markup { \italic "cresc." } f''2. f''4 ges''1 g''!1\sf) gis''1\sf a''4\sf( e'') c''\staccato d''\staccato
 e''4( c'') a'\staccato a'\staccato d''( b') gis'\staccato gis'\staccato
 a8\p a' gis' a' a a' b a' c' a' d' a' c' a' b a' a4 r r2 R1
 e'8 e'' dis'' e'' e' e'' fis' e'' gis' e'' a' e'' b' e'' gis' e'' e'4 e'2 e'4 ~ e'4 e'2 e'4
 c'8( a c' a c' a c' a) c'( a c' a c' a c' a) a' a'' gis'' a'' a' a'' b' a'' c'' a'' b' a'' c'' a'' a' a''
 e'8 gis( b gis b gis b gis) b( gis b gis b gis b gis) e' e'' dis'' e'' e' e'' f'! f''! e' e'' d'! d''! c' c'' b b'
 a4\f r <a' c'' e''>\sf r r2 <a' c'' f''>4\sf\staccato r4 <g' d'' f''>4\staccato r <g' f'' d'''>\staccato r
 r2 r4 b'4( c''4) r <e' e'' g''>\sf\staccato r r2 <g'' a''>4\sf\staccato r <f'' a''>\staccato r <dis' b' a''>\staccato r
 r2 r4 dis''4( e'') r <e'' e'''>\sf\staccato r r2 <e'' e'''>4\sf\staccato r <e'' e'''>4\sf\staccato r <e'' e'''>\sf\staccato r
 r2 g''4 g'' fis'' r dis'''2\sf ~ dis'''1 ~ dis'''4 r4 \afterGrace dis'''2( \startTrillSpan { cis'''16[ \stopTrillSpan dis''']) }
 e'''4 r \afterGrace e'''2( \startTrillSpan { dis'''16[ \stopTrillSpan e''']) } dis'''4 r dis''2\sf ~ dis''1 ~ dis''4 r
 \afterGrace dis''2( \startTrillSpan { cis''16[ \stopTrillSpan dis'']) } e''4 r
 \afterGrace e''2( \startTrillSpan { dis''16[ \stopTrillSpan e'']) }
 dis''8\staccato fis' e' dis' e''\sf\staccato g'! fis' e' dis''\staccato fis' e' dis' e''\sf\staccato g' fis' e'
 dis''\staccato fis' e' dis' e''\sf\staccato g' fis' e' dis''\staccato fis' e' dis' e''\sf\staccato g' fis' e'
 dis''\staccato fis' e' dis' b'\sf\staccato fis' e' dis' b'\sf\staccato fis' e' dis' b'\sf\staccato fis' e' dis'
 b'\sf\staccato fis' e' dis' b'\sf\staccato fis' e' dis' b'\sf\staccato fis' e' dis' b'\sf\staccato fis' e' dis'
 b'1\f( a'1_\markup { \italic "decresc." }) gis'1_\markup { \italic "p dolce" }( a' gis' fis')
 gis'1^\markup { \translate #(cons 4 1) { \musicglyph #"scripts.turn" } }( b'2 a' gis'1 fis'1)
 gis'1( b'4 a' gis'2) fis'1_\markup { \italic "cresc." } fis'1 fis'1 fis'1 fis'4\p r r2 R1
 e''1 ~ e'' ~ e''2 e''2( e'''4\staccato) r e'''\staccato r e'''2( e'') ~ e''1 ~ e''2 e''2( e'''4\staccato) r e'''\staccato r
 e'''1^\markup { "Adagio" }_\markup { \italic "cresc." }( d'''2.\p^\fermata) d'4\p^\markup { "a tempo" }( d''2. a'4)
 b'4 r r b'8\f b' fis'8 fis' g' g' a' a' fis' fis' b'4 r r b'4\p( b''2. fis''4) g''4 r r g'8\f g' dis' dis' e' e' fis' fis' dis' dis'
 g'4 r r g''8 g'' dis'' dis'' e'' e'' fis'' fis'' dis'' dis'' g'' g'' a'' a'' b'' b'' g'' g'' dis'' dis'' e'' e'' fis'' fis'' dis'' dis''
 g''4 r e'''2\sf ~ e'''4 r e'''2\sf ~ e'''4 r e'''2\sf ~ e'''4 c'''4\staccato b''\staccato a''\staccato
 g''8 g'' a'' a'' b''\sf b'' g'' g'' a'' a'' b'' b'' c'''\sf c''' a'' a'' b'' b'' c''' c''' d'''\sf d''' e''' e'''
 f'''!8\sf f''' d''' d''' b'' b'' d''' d''' f'''\sf f''' d''' d''' b'' b'' d''' d''' f'''\sf f''' d''' d''' c''' c''' b'' b''
 R1 r2 e'''8 e''' e''' e''' a'''\sf a''' a''' a''' g'''! g''' fis''' fis''' a'''\sf a''' fis''' fis''' e''' e''' dis''' dis'''
 e'''8\sf e''' c''' c''' b'' b'' ais'' ais'' b''\sf b'' ais'' ais'' b'' b'' b'' b'' e''4 r r2
 R1 R1 R1 R1 r2 <a e' a' g''>4\f^\markup { "pizz." } r4 r2 <d' a' f''!>4 r r2 <g d' b' f''>4 r
 <c' e' c'' e''>4 r r2 r2 <e' a' a''>4 r r2 <e' b' b''>4 r
 r2 <dis' b' b''>4 r8 dis''8^\markup { "arco" }( e''2\sf ~ e''4.) dis''8( e''2\sf ~ e''4.) dis''8( e''2\sf ~ e''4.)
 fis''8( g''4\staccato) r8 ais''8( b''4\staccato) r8 dis'''8( e'''1\sf)
 d'''!4( cis''') b''\staccato cis'''\staccato d'''2\staccato a''\staccato b''1 \startTrillSpan c'''1\sf \stopTrillSpan
 b''4( a'') gis''\staccato a''\staccato b''2\staccato e''\staccato fis''\staccato b'\staccato
 b''1\sf( ~ b''4_\markup { \italic "cresc." } a'') g''!\staccato a''\staccato
 b''2\staccato e''\staccato fis''\staccato b'\staccato
 b''8\ff e''' e''' e''' e''' e''' e''' e''' e''' e''' e''' e''' e''' e''' e''' e''' e''' e''' g''' g''' e''' e''' g''' g'''
 dis''' dis''' fis''' fis''' dis''' dis''' dis''' dis''' e'''4 r r2 <e' b' e''>4\staccato r r2
 a'8 a'' gis'' a'' fis'' a'' e'' a'' dis'' a'' c'' dis'' b' dis'' a' dis'' g'4\staccato r r2 <e' b' e''>4\staccato r r2
 a'8 a'' gis'' a'' fis'' a'' e'' a'' dis'' a'' c'' dis'' b' dis'' a' dis''
 g'8\sf( e'') e'\staccato fis'\staccato a'\staccato g'\staccato fis'\staccato e'\staccato
 dis'\sf( fis') b\staccato dis'\staccato fis'\staccato b'\staccato a'\staccato fis'\staccato
 g'\sf( e'') e'\staccato fis'\staccato a'\staccato g'\staccato fis'\staccato e'\staccato
 dis'\sf( fis') b\staccato dis'\staccato fis'\staccato b'\staccato a'\staccato fis'\staccato
 g'\sf( e'') e'\staccato g'\staccato b\sf g' e'' g' b\sf fis' dis'' fis' b\sf fis' dis'' fis' <b e' d''!>1\ff ~ d''1^\fermata }
 \alternative { { c''1\p ~ c''2.^\fermata } { c''4\p ~ \bar "" c''2 ~ \partial 4 c''4 ~ c''2 ~ c''4.^\fermata r8 } }
 R1 R1 R1 R1 R1 R1 R1 r2 r4 r8 fis''8\p( g''2 ~ g''4.) fis''8( g''2 ~ g''4.) fis''8( g''2 ~ g''4.)
 a''8( bes''4) r8 cis'''8( d'''4) r8 fis'''8( \setTextCresc g'''1\<) ~ g'''4( fis''' e''' fis''') g'''2( d''')
 ees'''4( d''' c''' d'''\!) ees'''8\f bes' g'' bes' g'' bes' g'' bes' ees'( bes' g'' bes') g''( bes' g'' bes')
 ees'8( bes' g'' bes') ees'( bes' g'' bes') ees'( bes' g'' bes') ees'( bes' g'' bes')
 ees'( bes') g''\staccato bes'\staccato g''\staccato bes'\staccato g''\staccato bes'\staccato
 e'!( a') g''\staccato a'\staccato g''\staccato a'\staccato g''\staccato a'\staccato
 d'( a') g''\staccato a'\staccato d'( a') f''\staccato a'\staccato
 g( g') f''\staccato g'\staccato g( g') f''\staccato g'\staccato
 c'( g') f''\staccato g'\staccato c'( g') ees''\staccato g'\staccato
 c'( f') ees''\staccato f'\staccato ees''( f') ees''\staccato f'\staccato
 bes( f') ees''\staccato f'\staccato bes( f') des''\staccato f'\staccato
 bes( ees') des''\staccato ees'\staccato bes( ees') des''\staccato ees'\staccato
 aes( ees') des''\staccato ees'\staccato aes( ees') c''\staccato ees'\staccato
 aes( aes') c''\staccato aes'\staccato c''\staccato aes'\staccato c''\staccato aes'\staccato
 des'( aes') bes'\staccato g'\staccato c'( g') bes'\staccato g'\staccato c'8 g' aes' f' aes' f' des' aes
 g4 r8 b!8( c'2 ~ c'4.) b'!8( c''2 ~ c''4.) b''!8( c'''4) r4 R1 r4 r8 ees'8( f'2 ~ f'4.) e''8( f''2 ~ f''4.) e'''8( f'''4\staccato) r4
 R1 r4 a!8( c' bes des' c' ees') des'( f' a c' bes des' c' ees') des'( f' a c' bes des' c' ees')
 des'8( f' d' f' ees' g'! f' aes') g'( bes') r8 d'8( ees'2 ~ ees'4.) d''8( ees''2 ~ ees''4.) d'''8( ees'''4\staccato) r4 R1
 r4 r8 g8( aes4) r4 r4 r8 e''!8( f''4) r r4 r8 a''!8( bes''4) r r4 r8 e''8( e'''4) r
 f'''4 des'''8( bes'' c''' aes'' bes'' g'') aes''( f'' ges'' ees'' f'' des'' ees'' c'')
 des''( bes' c''' aes'') bes''( g''! aes'' f'') g''( ees'' f'' des'' ees'' c'' des'' bes') c''( aes') r4 r2
 r4 r8 c'''8( des'''2 ~ des'''2 bes''4) r4 r4 r8 b''!8( c'''2 ~ c'''4 aes''4) r2
 r2 r4 f'4\ff ges' r r2 aes'4 r r r8 c''8\p( des''2 ~ des''4.) c''8( des''2 ~ des''4.) c''8( des''2 ~ des''4.)
 e''!8( f''4\staccato) r8 g''8( aes''4\staccato) r8 c'''8( des'''1) c'''4( bes'' aes'' bes'') c'''2( f'' g'' c'') f''4 r r2 R1
 r2 f''2( ~ f''4 e'' d'' e'') f''4\sf r r f'\staccato c'4\sf\staccato r r c'\staccato f'4\sf r r f'' c''4\sf r r c''
 f''8\p aes'' g'' aes'' f'' aes'' ees'' aes'' d'' f'' ees'' f'' d'' f'' c'' f'' b'! d'' c'' d'' b' d'' aes' b' g' b' f' b' ees' c'' d' d''
 ees''4\sf r r c''\staccato g'\sf\staccato r r g' c''\sf r r c'''\staccato g''\sf\staccato r r g''
 ees''8\p ees'' d'' ees'' c'' ees'' bes' ees'' a'! c'' bes' c'' a' c'' g' c'' fis' a' g' a' fis' a' ees' fis'
 d'8 fis' c' fis' bes g' a a' bes'4\sf r r g' d'\sf r r d''\staccato
 g''\sf\staccato r g'''2\sf ~ g'''4 e'''\staccato f'''!\staccato g'''\staccato
 a'''4\sf\staccato r r d''\staccato a'\sf\staccato r r a''\staccato
 d'''\staccato r d'''2\sf ~ d'''4 b''!\staccato c'''!\staccato d'''\staccato e'''4\staccato r r a''\ff
 e''8 e'' fis'' fis'' gis'' gis'' e'' e'' a'' a'' b'' b'' c''' c''' a'' a'' e'''\ff e''' e''' e''' fis''' fis''' gis''' gis'''
 a'''8 a''' g'''! g''' f'''! f''' e''' e''' d''' d''' c''' c''' b'' b'' a'' a'' e'''4 r e''2\p( f''! dis''' e''' e'')
 f''( dis''' e'''_\markup { \italic "cresc." } e'') ~ e''( dis'' d''! d') ~ d'( c')
 <b gis'>1\ff ~ <b gis'> ~ <b gis'>4 r r2^\markup { \italic "ritard.   --   --   --   --" } R1 R1
 r2 r4^\fermata r4^\markup { "a tempo" } r8 a8_\markup { \italic "cresc." } cis' e' a' cis'' e'' a'' r8 b d' gis' b' d'' gis'' b''
 r8 cis' e' g'! cis'' e'' g''! cis''' r d' f' a' d'' f'' a'' d''' e'''8\f g''' e''' d''' cis''' e''' bes'' a'' g'' bes'' g'' f'' e'' g'' e'' d''
 cis''8 e'' bes' a' g' ces'''\p^\markup { \italic "ritard   --   --   --   --" }( g'' f'')
 e''_\markup { \italic "decresc." }( g'' e'' d'' cis'' g'' e'' d'') cis''1\pp ~ cis''2.^\fermata r4^\markup { "a tempo" }
 R1 r2 r4^\fermata r4 R1 R1 r2 r4 d'4\p( cis'\staccato) a\staccato a\staccato cis'( d'\staccato)
 a4\staccato_\markup { \italic "cresc." } a\staccato d'\staccato d'\staccato a\staccato a\staccato d'\staccato
 e'4\p^\markup { \italic "rallent.   --   --   --   --" } r4 r2 <g e'>4\p r4 r2 <a f'>4\p r r2
 r2 r4^\fermata r4^\markup { "a tempo" } R1 r2 r4 d''4\pp( ees''2.) d''4( ees''2.) e''4( f''2._\markup { \italic "cresc." })
 e''4( f''2.) e''4( f''2.) e''4\sf( f'') e''\sf( f'') e''4( f''2.\sf)
 a'4\staccato gis'\staccato e'\staccato e'\staccato gis'\staccato a'\staccato e'\staccato e'\staccato a'\staccato
 b'4\staccato e'\staccato e'\staccato b'\staccato c''\staccato_\markup { \italic "cresc." } a'\staccato a'\staccato c''\staccato
 c''4\staccato a'\staccato a'\staccato c''\staccato d''1^\markup { "rallent   ---   ---" }
 << { g''1 e''1 ~ e''1^\fermata } \\ { <g d' b'>4\sf s4 s2 <c' g' c''>4\sf s4\> s2 s1\! } >>
 R1^\markup { "a tempo" } R1 e''1\f << { a''1 } \\ { <a e' cis''>4\sf s4 s2 } >> <d' a' f''>4 r r2 R1
 b''1 <e'' e'''>1\sf c'''4\staccato r a'''2\sf ~ a'''2 a'''2( ~ a'''4 e'''4) c'''\staccato c'''\staccato e'''4( d''') b''\staccato b''\staccato
 a''8 a'\p gis' a' a a' b a' c' a' d' a' c' a' b a' a4 r r2 R1 e'8 e'' dis'' e'' e' e'' fis' e'' gis' e'' a' e'' b' e'' gis' e''
 e'4 e'2 e'4 ~ e'4 e'2 e'4 a'8( a c' a c' a c' a) c'( a c' a c' a c' a) a' a'' gis'' a'' a' a'' b' a'' c'' a'' b' a'' c'' a'' a' a''
 e'8 gis( b gis b gis b gis) b( gis b gis b gis b gis) e' e'' dis'' e'' e' e'' f'! f'' e' e'' d'! d''! c' c'' b b'
 a4\f r <a' c'' e''>\sf\staccato r r2 <a' c'' f''>4\sf\staccato r <g' d'' f''>\staccato r <g' f'' d'''>\staccato r
 r2 r4 b'4( c'') r <e' c'' g''>\sf\staccato r r2 <e' a' g''>4\sf\staccato r <d' a' f''>\staccato r <dis' b' a''>\sf\staccato r
 <e' b' g''>4\staccato r <e' c'' bes''>\sf\staccato r <f' c'' a''>\staccato r <fis' d'' c'''>\sf\staccato r
 <g' d'' b''>4\staccato r <e'' e'''>\staccato <e'' e'''>\staccato
 <e'' e'''>4\staccato <e'' e'''>\staccato <e'' e'''>\staccato <e'' e'''>\staccato <e'' e'''>\staccato( d'''8 c''') b''4\staccato a''
 gis''4 r gis'''2\sf ~ gis'''1 ~ gis'''4 r \afterGrace gis'''2 \startTrillSpan { fis'''16[ \stopTrillSpan gis'''] }
 a'''4 r \afterGrace a'''2 \startTrillSpan { gis'''16[ \stopTrillSpan a'''] } gis'''4 r gis''2\sf ~ gis''1 ~ gis''4
 r4 \afterGrace gis''2\sf \startTrillSpan { fis''16[ \stopTrillSpan gis''] } a''4 r \afterGrace a''2 \startTrillSpan { gis''16[ \stopTrillSpan a''] }
 gis''8 gis' fis' e' dis''\sf a' gis' fis' e'' gis' fis' e' dis''\sf a' gis' fis' e'' gis' fis' e' dis''\sf a' gis' fis'
 e''8 gis' fis' e' dis''\sf a' gis' fis' e'' gis' fis' e' e''\sf gis' fis' e' e''\sf gis' fis' e' e''\sf gis' fis' e' e''\sf gis' fis' e' e''\sf gis' fis' e'
 e''\sf gis' fis' e' e''\sf gis' fis' e' e''1\f( d''1)
 cis''1_\markup { \italic "p dolce" }( d'' cis'' b')
 cis''^\markup { \translate #(cons 4 1) { \musicglyph #"scripts.turn" } }( e''2 d'' cis''1 b') cis''1( e''4 d'' cis''2)
 b'1_\markup { \italic "cresc." } b'1 b'1 b'1 b'4\p r r2 R1 a'1\p ~ a'1 ~ a'2 a'2( a''4\staccato) r4 a''\staccato r
 a''2( a') ~ a'1 ~ a'2 a'2( a''4\staccato) r a''\staccato r a''1_\markup { \italic "cresc." }^\markup { "Adagio" }( g''!2.\p^\fermata)
 g'4\p( g''2.^\markup { "Tempo primo." } d''4) e''4 r r e'8\f e' b b c' c' d' d' b b e'4 r r e'4\p( e''2. b'4)
 c''4 r r c'8\f c' gis gis a a b b gis gis c'4 r r c''8 c'' gis' gis' a' a' b' b' gis' gis' c'' c'' d'' d'' e'' e'' c'' c'' gis' gis' a' a' b' b' gis' gis'
 c''4 r a''2\sf ~ a''2 a''2\sf ~ a''2 a''2\sf ~ a''4\staccato f'''4 e''' d''' c'''8 c''' d''' d''' e'''\sf e''' c''' c'''
 d'''8 d''' e''' e''' f'''\sf f''' d''' d''' e''' e''' f''' f''' g'''\sf g''' a''' a''' bes'''\sf bes''' g''' g''' e''' e''' g''' g'''
 bes'''\sf bes''' g''' g''' e''' e''' g''' g''' bes'''\sf bes''' g''' g''' f''' f''' e''' e''' R1 r2 e'''8 e''' e''' e'''
 f'''8\sf f''' d''' d''' c''' c''' b''! b'' d'''\sf d''' b'' b'' a'' a'' gis'' gis'' a''\f a'' f'' f'' e'' e'' dis'' dis'' e''\f e'' dis'' dis'' e'' e'' e'' e''
 a'4 r r2 R1 R1 R1 r2 <a' e'' c'''>4\f^\markup { "pizz." } r r2 <d' d'' c'''>4 r r2 <g' d'' bes''>4 r r2 <e' c'' bes''>4 r
 <f' c'' a''>4 r r2 r2 <f' c'' a''>4 r r2 <e' c'' a''>4 r r2 <e' b'! gis''>4 r8 gis''8^\markup { "arco" }( a''2\sf ~ a''4.) gis''8( a''2\sf ~ a''4.)
 gis''8( a''2\sf ~ a''4.) b''8( c'''4\staccato) r8 dis'''8( e'''4\staccato) r8 gis'''8( a'''1\sf) g'''!4( fis''') e'''\staccato fis'''\staccato
 g'''2\staccato d'''\staccato e'''1 \startTrillSpan f'''1\sf \stopTrillSpan e'''4( d''') c'''\staccato d'''\staccato
 e'''2\staccato a''\staccato b''\staccato e''\staccato
 e'''1\sf( ~ e'''4_\markup { \italic "cresc." } d''') c'''\staccato d'''\staccato e'''2\staccato a''\staccato b''\staccato e''\staccato
 e'''8\ff a''' a''' a''' a''' a''' a''' a''' a''' a''' a''' a''' a''' a''' a''' a''' a''' a''' c'''' c'''' a''' a''' c'''' c'''' gis''' gis''' b''' b''' gis''' gis''' gis''' gis'''
 a'''4 r r2 <e' c'' a''>4 r r2 <e' b' gis''>8 b'' ais'' b'' gis'' b'' f''! gis''
 e''8 gis'' d'' gis'' c'' gis'' b' gis'' a'4 r r2 <e' c'' a''>4 r r2 <e' b' gis''>8 b'' ais'' b'' gis'' b'' f''! gis'' e'' gis'' d'' gis'' c'' gis'' b' gis''
 a'8\sf( a'') a'\staccato b'\staccato c''\staccato b'\staccato c''\staccato a'\staccato
 gis'\sf( b') e'\staccato gis'\staccato b'\staccato e''\staccato d''\staccato b'\staccato
 a'8\sf( a'') a'\staccato b'\staccato c''\staccato b'\staccato c''\staccato a'\staccato
 gis'\sf( b') e'\staccato gis'\staccato b'\staccato e''\staccato d''\staccato b'\staccato
 a'8\sf( a'') a'\staccato b'\staccato c''\staccato b'\staccato c''\staccato a'\staccato
 bes'\sf( g'!) e'\staccato c'\staccato bes\staccato g\staccato c'\staccato bes\staccato
 a\sf( a') f'\staccato g'\staccato a'\staccato g'\staccato a'\staccato f'\staccato
 g'\sf( e') cis'\staccato a\staccato g'\staccato e'\staccato a'\staccato g'\staccato
 f'\sf( f'') d''\staccato e''\staccato f''\staccato e''\staccato f''\staccato d''\staccato
 ees''\sf( c''!) a'\staccato f'\staccato ees'\sf\staccato f'\staccato ees'\staccato c'\staccato
 a\sf\staccato f'\staccato ees'\staccato c'\staccato a\sf\staccato f'\staccato ees'\staccato c'\staccato
 a\sf\staccato f'\staccato ees'\staccato c'\staccato a\sf\staccato c'\staccato ees'\staccato a'\staccato
 bes'1\fp ~ bes'1 ~ bes'1 ~ bes'1 ~ bes'2_\markup { \italic "decresc." } bes''2 ~ bes''1 ~ bes''1\pp ~ bes''1 ~
 bes''2( d'''2) ~ d'''1 ~ d'''2( d''2) ~ d''1 ~ d''2_\markup { \italic "cresc." }( d'''2) ~ d'''2( d''2) ~ d''2 d''2 ~ d''4 gis'8 a' b' c'' d'' e''
 f''2.\ff a'4 gis'\staccato e'\staccato e'\staccato gis'\staccato a'\sf\staccato e'\staccato e'\staccato a'\staccato
 b'\sf\staccato e'\staccato e'\staccato b'\staccato c''\sf\staccato e'\staccato cis''\sf\staccato e'\staccato
 d''\sf\staccato e'\staccato dis''\sf\staccato e'\staccato
 e''4 e' f'\sf f'' fis'' fis' g'\sf g'' gis'' gis' a'\sf a'' bes'\sf bes'' b'\sf b'' c'' c''' cis'' cis''' d'' d''' dis'' dis'''
 e'' e''' f'' f''' d''! d'''! e'' e''' e'''1\sf e'''1\sf e'''2\sf( d'''4 c''') d'''2\sf( c'''4 b'') c'''2( b''4 c''') d'''4\staccato r b'' r
 << { e''2( d''4 c'') d''2( c''4 b') c''2( b'4 a') b'2( a'4 gis') } \\ { e'1\sf e'1\sf e'1\sf e'1\sf } >> a'2. a'4 b'4 r gis'\staccato r
 a'8\fp a( c' a c' a c' a) c'( a c' a c' a c' a) c'( a c' a c' a c' a) c'( a c' a c' a c' a) c'( a c' a c' a c' a) c'( a c' a c' a c' a)
 c'_\markup { \italic "decresc." }( a c' a c' a c' a) c'( a c' a c' a c' a) c'( a c' a c' a c' a) c'( a c' a c' a c' a) c'( a c' a c' a c' a) c'( a c' a c' a c' a)
 c'4\pp c''( e'' c'') a'4 r r2 R1 r2 r4 e''4^\markup { "Adagio" }( f''1 c''1) d''1\pp ~ d''2.^\fermata r4 R1 R1 R1
 r2 r4^\fermata a'4\f^\markup { "a Tempo." }( gis'8) fis'\staccato e'\staccato fis'\staccato gis'\staccato a'\staccato b'\staccato c''\staccato
 d''8 c'' b' f''! e'' d'' c'' b' c''4 r r2 r2 r4 a'4(
 gis'8) fis'\staccato e'\staccato fis'\staccato gis'\staccato a'\staccato b'\staccato c''\staccato d'' c'' b' f''! e'' d'' c'' b' c''4 r r2
 r2 r4 a'4( gis'8) fis'\staccato e'\staccato fis'\staccato gis'\staccato a'\staccato b'\staccato c''\staccato d'' c'' b' f''! e'' d'' c'' b'
 c''8\sf a' g'! f' e' f' e' d' c'\sf f' e' d' c' d' c' b a4 r r2 <e' c'' a''>4\ff r <e' c'' a''> r <e' c'' a''> r r2
 <e' b' e''>4\staccato r r2 <a e' a'>4\staccato r r2^\fermata \bar "|."
 }