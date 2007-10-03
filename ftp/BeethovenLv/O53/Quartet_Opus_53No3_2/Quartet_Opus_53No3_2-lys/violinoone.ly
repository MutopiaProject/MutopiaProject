\version "2.10.3"

 violinoone = {
 \set Staff.instrumentName =  "Violino I.   "
 \set Staff.midiInstrument = "violin"
 \clef treble
 \key a \minor
 \time 6/8
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 68
 \once \override TextScript #'padding = #1.5
 \repeat volta 2 { r8^\markup { \large "Andante con moto quasi Allegretto." } r8 e'8\p( a'[ b' c'']) b'( a' gis' f' e' d')
 c'8( b a) e'4.~ e'4.~ e'8( fis' gis') }
 \alternative { { a'4 r8 r4 r8 R2. } { a'4 r8 r4 r8 R2. } } \bar "||"
 \repeat volta 2 { r8 r c'8\p( g' a' bes') bes'( a') a' << { a'4.~ a'4 } \\ { e'8( f' g')~ g'8([ f']) } >> a'8 d''8\fp([ e'' f''])
 e''8( d'' cis'' bes' a' g') f'( e' d') gis'4.( a'4) a'8 a'8\sfp( b' c'' b' gis' e') gis'4.( a'4) a'8 a'8\sfp([ b' c'']
 b'[ gis' e']) a'8\sfp( b' c'' b' gis' e') d''_\markup { \italic "cresc." }( e'' f'') e''4\p( a'8 c''4 b'8)
 b'4_\markup { \italic "cresc." }( c''8 d''[ e'' f'']) e''8\f[( c'') a'] c''4\>( b'8\!) }
 \alternative { { a'4\p r8 r4 r8 } { a'4\p( c''8 b'[ c'') a'\staccato] } }
 a'4( c''8) b'16[( c'') d''( c'') b'( a')] a'4( c''8) b'16[( c'') b'( c'') a'8]
 a'4( c''8) b'16[( c'') d''( c'') b'( a')] a'4( b'16 a') a'4( b'16 a') a'4 r8 r4 r8 R2.
 r4 r8 r4 des''8\sfp~ des''4( c''8) r8 r8 des''8\sfp~ des''4( c''8) r8 r des''8\sf~ des''8( c'' bes'')~ bes''( g'' c''')
 aes''8 r r r4 aes''8\sfp~ aes''4( g''8) r8 r aes''8\sfp~ aes''4( g''8) r8 r aes''8~
 aes''8_\markup { \italic "cresc." }( g'' f'''~ f''' d''' g''' f''' ees''' d''' c''' ees''' c''')
 b''8\p r b'8\sfp( c''4.)~ c''8([ b']) g''8\sf~ g''8([ fis'' a''])( g''4) b'8\sf( c''4. c''8)([ b']) g''8\sf~ g''8([ fis'' a''])
 g''8 g'8_\markup { \italic "dimin." } r8 r g' r r8 g'8 r r a'16\staccato[ b'\staccato c''\staccato d''\staccato]
 \grace { c''16[ d''] } e''8\staccato_\markup { \italic "dol." }[ d''\staccato c''\staccato] b'( c'') a'\staccato
 g'4.~ g'8[ a'16\staccato b'\staccato c''\staccato d''\staccato]
 \grace { c''16[ d''] } e''8\staccato[ d''\staccato c''\staccato] b'( c'') a'\staccato g'4.~ g'4 r8
 R2. r8 d''16\staccato[ e''\staccato f''\staccato g''\staccato] e''4 r8 R2.
 r8 g''16\staccato_\markup { \italic "cresc." }[ a''\staccato b''\staccato c'''\staccato]
 d'''16\staccato[ e'''\staccato f'''\staccato g'''\staccato a'''\staccato b'''\staccato] c''''4\p( g'''8 aes'''[ f''' g'''])
 e'''4( c'''8 aes''8[ f'' g'']) e''4( c''8 aes'[ f' g']) e'4 c'8\sfp( <b d'>4.) <c' e'>4 c'8\sfp( <b d'>4.)
 <c' e'>4 c'8\sfp( <b d'>4.) <c' e'>4_\markup { \italic "dim." }( <b d'>8 <c' e'>4 <b d'>8)
 <c' e'>4( <b d'>8 <c' e'>4 <b d'>8) <c' e'>4\pp r8 c'4 r8 c'4 r8 r4 r8
 R2. R2. R2. R2. R2. r4 r8 r r ces''8\sfp~ ces''4( bes'8) r8 r ces''8\sfp~ ces''4( bes'8) r8 r ces''8\sfp~
 ces''8( bes' aes'')~ aes''( f'' bes'')( ges''8) r8 bes'8~ bes'8( ees'' ges'' aes'' f'') bes'~ bes'( d'' f'' ges'' ees'') bes'~
 bes'4.~ bes'2.~ bes'4 bes'8_\markup { \italic "cresc." }~ bes'8( ees'' ges'') a'!( c'' f'' f' c'' ees'')
 des''8\p r f''~ f''8( bes'' des''' ees''' c''') f''(~ f'' a'' c''' des''' bes'') f''~ f''4.~ f''2.~
 f''4 f''8_\markup { \italic "cresc." }~ f''8( bes'' des''') e''!( g'' c''') c''( g'' bes'')
 aes''4\f aes'8\sf~ aes'4.\>~ aes'4.~ aes'4( g'8\!) g'8\f r8 <c'' ees''>8\sf~ <c'' ees''>4.~
 <c'' ees''>4.~ <c'' ees''>4 <c'' d''>8 <bes' d''>8\p r8 d''8(~ d'' g'' bes'' c''' a'') d''~ d''( fis'' a'' bes'' g'') d''~ d''4.~
 d''2.~ d''8\f r g''8\sf~ g''( ees'' d'') cis''4\p( e''!8) e''4( g''8) f''4\f r8 r4
 << { f''8~ f''4.~ f''8[ e'' e''] } \\ { d''8\sfp~ d''4.~ d''4 gis'8 } >> e''4( a''8~ a''4 dis''8)
 e''2._\markup { \italic "cresc." }~ e''8\p a''( gis'' a''4 dis''8) e''2._\markup { \italic "cresc." }~ e''8\p a''( gis'' a''4 dis''8)
 e''4.\<(~ e''4\!\> dis''8\!) e''4.\<(~ e''4\!\> dis''8\!)
 e''8_\markup { \italic "dim." } r e' r r e' r8 r e' r fis'16\staccato_\markup { \italic "dol." }[ gis'\staccato a'\staccato b'!\staccato]
 \grace { a'16[ b'] } cis''8\staccato b'\staccato a'\staccato gis'( a') fis'\staccato
 e'4.~ e'16[ e''\staccato fis''\staccato gis''\staccato a''\staccato b''\staccato]
 \grace { a''16[ b''] } cis'''8\staccato b''\staccato a''\staccato gis''( a'') fis''\staccato e''4.~ e''4 r8 R2.
 r8 b'16\staccato[ cis''\staccato d''\staccato e''\staccato] cis''8 r8 r R2.
 r8 e''16\staccato_\markup { \italic "cresc." }[ fis''\staccato gis''\staccato a''\staccato]
 b''16\staccato[ cis'''\staccato d'''\staccato e'''\staccato fis'''\staccato gis'''\staccato] a'''4\p( e'''8 f'''![ d''' e'''])
 cis'''4( a''8 f''![ d'' e'']) cis''4_\markup { \italic "cresc." }( a'8 f'![ d' e'])
 e'4_\markup { \italic "dim." }( f'8 e'4 f'8) e'4( f'8 e'4 f'8) f'4\pp r8 r f'8 f' f'4 r8 r f'8_\markup { \italic "cresc." } f'8
 bes'8\f\staccato[ bes'16\staccato c''!\staccato d''\staccato ees''\staccato]
 f''!8\staccato[ d''16\staccato ees''\staccato f''\staccato g''\staccato]
 aes''8\staccato_\markup { \italic "dim." }[ f''!16\staccato g''\staccato aes''\staccato bes''\staccato]
 c'''16\staccato[ bes''\staccato c'''\staccato d'''\staccato ees'''\staccato f'''!\staccato]
 \grace { ees'''16[ f'''] } g'''8\p\staccato f'''\staccato ees'''\staccato d'''( ees''') c'''\staccato
 bes''4.~ bes''8[ c'''16\staccato d'''\staccato ees'''\staccato f'''\staccato]
 \grace { ees'''16[ f'''] } g'''8\staccato f'''\staccato ees'''\staccato d'''( ees''') c'''\staccato
 bes''4._\markup { \italic "cresc." }~ bes''16([ aes'' g'' aes'' f'' g'']) ees''16\p([ d'' ees'' f'' g'' aes'']) f''([ g'' aes'' bes'' g'' aes''])
 bes''16([ c''' d''' ees''' f''' g''']) aes'''([ g''' aes''' f''' g''' aes'''])
 bes'''4.\sfp~ bes'''16([ aes''' g''' f''' aes''' g''']) f'''([ ees''' d''' c''' bes'' aes'']) g''([ bes'' aes'' g'' f'' g''])
 ees''4.\fp( g'')~ g''4._\markup { \italic "dim." }( ees'''4.)~ ees'''4.( g'''4.)~ g'''2.~
 g'''4._\markup { \italic "sempre dim." }( f'''4.)~ f'''4. f''4.~ f''4. e''!4.\pp~ e''2.~ e''4 r8 r4 r8 R2.
 e''2.\fp~ e''2.~ e''4. d''8( c'' b' c'' b' a')
 << { \override Staff.NoteCollision #'merge-differently-dotted = ##t e''4. } \\ { e''4( d''8) } >> <c'' e''>4 r8 r4 r8 R2.
 r8 r e''8( a'' b'' c''') b''( a'' gis'' f'' e'' d'') c''( b' a') e''4.~ e''4.~ e''8( fis'' gis'' a''4) r8 r4 r8
 r4 r8 r4 b'8\p( c''4.)~ c''4 c''8 e''8( f'') f'' r8 r a'( cis''[ d'']) a''8~ a''4.\fp~ a''2.~ a''8 cis''( d'')
 d'8( e' f' e' d' c') \set doubleSlurs = ##t <fis' dis''>4.\sfp( <gis' e''>4.) \set doubleSlurs = ##f d'!8( e' f'! e' d' c')
 \set doubleSlurs = ##t <fis' dis''>4.\sfp( <gis' e''>4.) <fis' dis''>4.\sfp( <gis' e''>4.) gis'4._\markup { \italic "cresc." }
 \set doubleSlurs = ##f a'8\p a''4~ a''8[ a''( gis'')] gis''4_\markup { \italic "cresc." } r8 r4 gis'8( a'8\f) a''4\>~ a''8[ a''( gis''\!)]
 a''4\p r8 r4 r8 r8 r c''8( g''![ a'' bes'']) bes''( a'') a''\staccato a''4.~ a''4 a''8 d'''8\fp( e''' f''') e'''8( d''' cis''' bes'' a'' g'')
 f''8( e'' d'') gis''4.( a''4) a''8~ a''8\fp([ b''! c'''] b'' gis'' e'') gis''4.( a''4)~ a''8~ a''8\fp b''( c''' b'' gis'' e'')
 a''8\fp( b'' c''' b'' gis'' e'') d'''_\markup { \italic "cresc." }( e''' f''') e'''4\p( a''8 c'''4 b''8)
 b''4_\markup { \italic "cresc." }( c'''8 d''' e''' f''')
 e'''8\f\>( c''') a''\staccato c'''4( b''8\! a''4\p) c''8( b' c'') a'\staccato a'4( c''8) b'16[( c'') d''( c'') b'( a')]
 a'4( c''8) b'16[( c'') b'( c'') a'8] a'4( c''8) b'16[( c'') d''( c'') b'( a')] a'4( b'16 a') a'4( b'16 a') a'8 r8 r r4 des''8\sf~
 des''4( c''8) r8 r des''8\f~ des''4( c''8) r8 r cis''8~ cis''4\f( d''!8 e''8\> f'') d''\!\staccato
 c''!4.\p( b'4) bes'8~ bes'4_\markup { \italic "cresc." } bes''8( g''[ bes'' f''\sf] e'' g'' bes'') ges''( bes'' f''\sf e'' g''! bes'')
 g''8( bes'' f''\f e'' bes'' a'' gis''\> a'' e''\! g''!\p)( f'') d''\staccato c''4( b'8) a'4( c''8 b' c'') a'\staccato
 a'4( c''8) b'16[( c'') d''( c'') b'( a')] a'4( c''8) b'16[( c'') b'( c'') a'8] a'4( c''8) b'16[( c'') d''( c'') b'( a')]
 a'4_\markup { \italic "dim." }( b'16 a') a'4( b'16 a') a'4( b'16 a') a'4( b'16 a')
 a'2.\pp~ a'2.~ a'2._\markup { \italic "cresc." }~ a'4. a'4.~ a'4. a'4._\markup { \italic "dim." }~ a'4.
 a'4.\pp~ a'4 r8 a4^\markup { "pizz." } r8 a4 r8 r4 r8 \bar "|."
}