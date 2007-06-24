\version "2.10.3"

 \header {
  title = "Sonate Opus 10 No.2 - 1st Movement"
  subtitle = "for the Pianoforte"
  composer = "Ludwig Van Beethoven"
  mutopiatitle = "Sonata No. 6 (1st Movement: Allegro)"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Piano"
  mutopiaopus = "Op. 10, No. 2"
  date = "1796-1798"
  source = "Breitkopf & Hartel (1862-1865)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2007/June/19"
  version = "2.10.3"
 footer = "Mutopia-2007/06/24-992"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \new GrandStaff
 <<
 \new Staff = "up" {
 \clef treble
 \key f \major
 \time 2/4
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 96
 \repeat volta 2 {
 \partial 8 <a c' f' a'>8\p\staccato^\markup { \large "Allegro." } <c' f' a' c''>4\staccato r8
 \override TupletBracket #'transparent = ##t
 \override TupletNumber #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { c''16([ b' d'']) } c''4 r8 <c' f' a'>8\staccato
 <c' g' bes'>4\staccato r8 \times 2/3 { bes'16([ a' c'']) } bes'4 r8 bes'8( a'16\< c'' f''4 e''8 f''8 a''4 g''8\!\>~
 g''8 a''4 bes''16 c'''\!) c'''8( bes'') r4 bes''8^\trill( \grace { a''16[ bes''] } d'''4 c'''16 bes'')
 \grace { a''32[ bes'' c'''] } bes''8( a''~ a''16.[ g''32 bes''16. g''32]) g''8( f''8~ f''16.[ e''32 g''16. e''32])
 f''4 r8 <a c' f' a'>8\p\staccato <c' f' a' c''>4\staccato r8 \times 2/3 { c''16([ b' d'']) } c''4\staccato r8
 <a c' dis' a'>8\staccato <c' dis' a' c''>4\sf\staccato r8 \times 2/3 { c''16([ b' d''!]) }
 c''4\staccato r8 << { \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { c''16([ b' a'] } e''8\staccato) \times 2/3 { c''16([ b' a'] } e''8\staccato)
 \times 2/3 { c''16([ b' a'] } e''4\staccato) } \\ { dis'8\f( e'\staccato) dis'( e'\staccato) dis'( e'4\staccato) } >>
 r8 <g! g'!>8\p <e e'>4\<( <g c' e' g'> <c' e' g' c''>4.) <e' e''>8( <g' g''>8 <c'' c'''>4\!\sf\> <e'' e'''>16 <d'' d'''>)
 \set doubleSlurs = ##t <c'' c'''>4( <b' b''>8\!) r8
 \set doubleSlurs = ##f <b d' f' b'>4\<( <d' f' b' d''> <f' b' d'' f''>4.) <b' b''>8( <d'' d'''>8 <f'' f'''>4\!\sf\>
 <e'' e'''>8) \set doubleSlurs = ##t <d'' d'''>4( <c'' c'''>8\!) \set doubleSlurs = ##f r8 <e' g' c'' e''>4\ff <g' c'' e'' g''> <c'' c'''>4.
 <cis'' cis'''>8~ <cis'' cis'''>8( <d'' d'''>4 <c'' c'''>8) <c'' c'''>8( <b' b''>)
 r8 << { fis''8\staccato g''4 } \\ { c''8\p c''8( b') } >> r8 c'''8\sf\staccato c'''16( b'' a'' g'')
 r8 << { fis''8\staccato g''4 } \\ { c''8\sf c''16( b' a' g') } >> r8 c'''8\sf\staccato c'''16( b'' a'' g'') r8 c'''8\sf\staccato
 c'''16( b'' a'' g'') r8 c'''8\sf\staccato c'''16( b'' a'' g'' fis'' g'' a'' g'' fis'' g'' a'' g'' fis'' g'' gis'' a'')
 a''8\<[( f''!\!) d''\staccato e''^\turn] a''8\<[( f''!\!) d''\staccato e''^\turn] <a' d'' f''>8\staccato r <g' b' d''>\staccato r
 <e' g' c'' e''>4\staccato r8 r32 g''( ees'' g' r aes'' f'' g' r f'' d'' g' r d'' b' g' r ees'' c'' g')
 r32 aes''( f'' g' r f'' d'' g' r d'' b' g' r ees'' c'' g') <aes' d'' f''>8\f\staccato r <f' b' d''>\staccato r
 <ees' aes' c''>8\staccato r8 r4 <ees' a'! c''>8\pp\staccato r8 r4
 r16 <d' b'> r <f' d''>_\markup { \italic "cresc." } r <e' c''> r <c'' e''> r <b' f''> r <f'' b''> r <e'' c'''> r <c''' e'''>
 r16 <b'' f'''> r <d'' b''> r <e'' c'''> r <g'' e'''> r <f'' f'''> r <d'' b''> r <e'' c'''> r <g'' e'''>
 r8 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { d'''16([ cis''' e''']) } d'''8\staccato \times 2/3 { a''16([ gis'' b'']) }
 a''8\staccato \times 2/3 { f''16([ e'' g''!]) } f''8\staccato \times 2/3 { d''16([ cis'' e'']) } d''8\staccato d''4\sf( e''16 f'')
 g''4\sf(~ \times 2/3 { g''16[ a'' g''] f''[ e'' d'']) } c''8 r8 g''8\p\staccato g''\staccato
 e''8\staccato r8 <c'' c'''>\staccato <c'' c'''>\staccato <a' a''>8\staccato r8 \clef bass fis,8\f\staccato fis,\staccato
 \acciaccatura fis,8 \afterGrace g,2 \startTrillSpan { fis,16[ \stopTrillSpan g,] } c,4
 \clef treble g'32\p( g''16.\staccato) g'32.( g''16.\staccato) e'32.( e''16\staccato) r8 c''32( c'''16.\staccato) c''32( c'''16.\staccato)
 a'32( a''16.\staccato) r8 \clef bass fis,8\f\staccato fis,\staccato
 \acciaccatura fis,8 \afterGrace g,2\ff \startTrillSpan { fis,16[ \stopTrillSpan g,] }
 c,4 \clef treble fis''8\staccato_\markup { \italic "cresc." } fis''\staccato
 \acciaccatura f''8 \afterGrace g''2\ff \startTrillSpan { fis''16[ \stopTrillSpan g''] } <c'' c'''>8\ff r <g' g''> r }
 \alternative { { <c' c''>4 r8 s8 } { <c' c''>4 r4 } }

 \repeat volta 2 {
 <a' a''>8\p\staccato r <e' e''>\staccato r <a a'>8\staccato r8 r4
 \times 2/3 { r16 d''16([ e''] f''[ e'' d'']) r a''([ b''] cis'''[ b'' a'']) } r16 d'''16( cis''' d''' e''' d''' f''' d''')
 \times 2/3 { r16 cis'''16([ d'''] e'''[ d''' cis''']) r cis'''([ d'''] e'''[ d''' cis''']) }
 r16 \once \override TextScript #'script-priority = #-100
 cis'''16^\turn^\markup { \natural }( e''' d''' cis''' bes''! a'' g'')
 <d'' f'' a'' d'''>8\f r <a' cis'' e'' a''> r <d' f' a' d''> r r4 <a' cis'' e'' a''>8 r <e' gis' b' e''> r <cis' e' a'>8 r r4
 \times 2/3 { r16 f'\fp[ f''] r gis'[ gis''] r a'[ a''] r d'[ d''] r d'[ d''] r cis'[ cis''] r cis'[ cis''] r e'[ e'']
 r e'[ e''] r d'[ d''] r d'[ d''] r f'[ f''] r f'[ f''] r e'[ e''] r e'[ e''] r g'[ g'']
 r g'_\markup { \italic "cresc." }[ g''] r f'[ f''] r g'[ g''] r fis'[ fis''] r a'[ a''] r g'[ g''] r bes'[ bes''] r a'[ a'']
 r c''\fp[ c'''] r bes'[ bes''] r d''[ d'''] r g'[ g''] r g'[ g''] r e'[ e''] r fis'[ fis''] r a'[ a'']
 r a'[ a''] r fis'[ fis''] r g'[ g''] r bes'[ bes''] r bes'[ bes''] r gis'[ gis''] r a'[ a''] r c''[ c''']
 r c''_\markup { \italic "cresc." }[ c'''] r bes'[ bes''] r c''[ c'''] r b'[ b''] r d''[ d'''] r c''[ c'''] r ees''[ ees'''] r d''[ d''']
 r f''\ff[ f'''] r ees''[ ees'''] r f''[ f'''] r e''[ e'''] r f''[ f'''] r c''[ c'''] r f''[ f'''] r ees''[ ees''']
 r ees''\fp[ ees'''] r d''[ d'''] r f''[ f'''] r bes'[ bes''] r bes'[ bes''] r gis'[ gis''] r a'[ a''] r c''[ c''']
 r c''[ c'''] r a'_\markup { \italic "cresc." }[ a''] r bes'[ bes''] r d''[ d'''] r d''[ d'''] r b'[ b''] r c''[ c'''] r ees''[ ees'''] }
 \times 2/3 { r16 d'''\p([ ees'''] f'''[ ees''' d''']) r d'''([ ees'''] f'''[ ees''' d''']) r d'''([ ees'''] f'''[ ees''' d''']) } e'''16( f''' d''' bes'')
 \times 2/3 { r16 a''([ bes''] c'''[ bes'' a'']) r a''([ bes''] c'''[ bes'' a'']) r a''([ bes''] c'''[ bes'' a'']) } ees'''16( c''' a'' ees'')
 <bes' des'' f'' bes''>8_\markup { \italic "cresc." } r8 <f' bes' des'' f''> r <des' f' bes' des''>8 r8 r4
 <ees' f' a' ees''>8\f r <ees' f' a' c''> r <c' ees' f' a'>8 r r4
 \times 2/3 { r16 bes'16\p([ c''] des''[ c'' bes']) r bes'([ c''] des''[ c'' bes']) r bes'([ c''] des''[ c'' bes']) } bes''16( f'' des''' f'')
 \times 2/3 { r16 e''!([ f''] g''[ f'' e'']) r e''([ f''] g''[ f'' e'']) r e''([ f''] g''[ f'' e'']) } bes''16( g'' e'' bes')
 \times 2/3 { r16 aes'_\markup { \italic "cresc." }([ bes'] c''[ bes' aes']) r aes'([ bes'] c''[ bes' aes'])
 r aes'([ bes'] c''[ bes' aes']) } f''16( aes' aes'' aes')
 \times 2/3 { r16 f''\f([ g''] aes''[ g'' f'']) r f''([ g''] aes''[ g'' f'']) r f''([ g''] aes''[ g'' f'']) } aes''16( f'' f''' f'')
 \times 2/3 { r f''\ff([ g''] aes''[ g'' f'']) } d'''16( f'' d''' f'') \times 2/3 { r f''\sf([ g''] aes''[ g'' f'']) } d'''16( f'' d''' f'')
 \times 2/3 { r f''\ff([ g''] a''![ g'' f'']) } d'''16_\markup { \italic "decresc." }( f'' d''' f'' d''' f'' d''' f'' d''' f'' d''' f'')
 r16 e''16\p( d''' e'' d''' e'' d''' e'') r e''\pp( cis''' e'' cis''' e'' cis''' e'') r4 r8^\fermata \bar "||"
 \key d \major <d' fis'>8\p\staccato <d' fis' a'>4\staccato r8 \times 2/3 { a''16( gis'' b'') } a''4\staccato r8 <d' fis'>\staccato
 <e' g'>4\staccato r8 \times 2/3 { a''16( gis'' b'') } a''4\staccato r8 g'!8( fis'16. a'32 d''4 cis''8 d''8 fis''4 e''8~ e''8 fis''4 g''16 a'')
 a''8( g'') r4 g''8^\trill( \grace { fis''16[ g''] } b''4 a''16 g'') \grace { fis''32[ g'' a''] } g''8( fis''~ fis''16.[ e''32 g''16. e''32])
 e''8( d''8~ d''16.[ cis''32 e''16. cis''32]) d''4 r4
 r4 r8 <fis' a'>8\pp\staccato <g' bes'>4\staccato r8 \times 2/3 { bes''16( a'' c''') } bes''4 r8 <g' bes'>8\staccato
 <e' bes'>4\staccato r8 \times 2/3 { bes''16\pp( a'' c''') } bes''4 r8 \times 2/3 { bes''16( a'' c''') }
 bes''8\staccato \times 2/3 { bes''16( a'' c''') } bes''8\staccato \times 2/3 { bes''16( a'' c''') } bes''4 r8 \bar "||"
 \key f \major bes'8\p( a'16.\< c''32 f''4 e''8 f''8 a''4 g''8\!\>~ g''8 a''4 bes''16 c'''\!) c'''8( bes'') r4
 bes''8^\trill( \grace { a''16[ bes''] } d'''4 c'''16 bes'') \grace { a''32[ bes'' c'''] } bes''8( a''~ a''16.[ g''32 bes''16. g''32])
 g''8( f''8~ f''16.[ e''32 g''16. e''32]) f''4 r8 <f f'>8( <a c' f' a'>4\< <c' f' a' c''> <f' a' c'' f''>4.) <a' c'' f'' a''>8
 <c'' f'' a'' c'''>8 <f'' a'' c''' f'''>4\!\sf\> <f'' a'' c''' f'''>8 \set doubleSlurs = ##t <f'' bes'' c''' f'''>4( <e'' bes'' c''' e'''>8\!) r8
 \set doubleSlurs = ##f <e g bes e'>4\<( <g bes e' g'> <bes e' g' bes'>4.) <e' e''>8( <g' g''>8 <bes' bes''>4\!\sf\> <a' a''>8)
 \set doubleSlurs = ##t <g' g''>4( <f' f''>8\!) r8 \set doubleSlurs = ##f f'16\p( aes' c' e' f' aes' c' e')
 f'16( aes' c' e' f' aes' c' e' f' aes' c' e' f' g' aes' f') g'( bes' ees' fis' g' bes' ees' fis' g' bes' ees' fis' g' bes' ees' fis')
 g'16( bes' ees' fis' g' bes' ees' fis' g' bes' ees' fis' g' bes' ees' g') aes'( c'' ees' g' a' c'' f' a' bes' f'' f' a' b' f' f'' b')
 c''4\f r8 f'''8\p\staccato f'''8( e''') r8 << { b''8\staccato c'''4 } \\ { f''8 f''8( e'') } >> r8 f'''8\sf\staccato f'''16( e''' d''' c''') r8
 << { b''8\staccato c'''4 } \\ { f''8\sf f''16( e'' d'' c'') } >> r8 << { b''8\staccato c'''4 } \\ { f''8\sf f''16( e'' d'' c'') } >> r8
 << { b''8\staccato c'''4 s4 s2 } \\ { f''8\sf f''16( e'' d'' c'' b' c'' d'' c'' b' c'' d'' c'' b' c'' cis'' d'') } >>
 d''8\>[( bes'!\!) g'\staccato a'\staccato^\turn] d''8\>[( bes'\!) g'\staccato a'\staccato^\turn]
 <d' g' bes'>8\staccato r <c' e' g'>\staccato r <c' f' a'>4\staccato r8 r32 c'''32( aes'' c'' r des'''\ff bes'' c'' r bes'' g'' c''
 r32 g'' e'' c'' r aes'' f'' c'') r32 des'''( bes'' c'' r bes'' g'' c'' r32 g'' e'' c'' r aes'' f'' c'')
 <des'' g'' bes''>8\f\staccato r <bes' e'' g''>\staccato r <aes' des'' f''>\staccato r8 r4 <aes d'! f'>8\pp\staccato r8 r4
 r16 <g e'>16 r <bes g'> r <a! f'>_\markup { \italic "cresc." } r <f' a'> r <e' bes'> r <bes' e''> r <a' f''> r <f'' a''>
 r16 <e'' bes''> r <e'' g'' c'''> r <f'' a'' c'''> r <a'' c''' f'''> r <g'' c''' e'''> r <e'' g'' c'''> r <f'' a'' c'''> r <a'' c''' f'''>
 r8 \times 2/3 { d'''16\f([ cis''' e''')] } d'''8\staccato \times 2/3 { bes''16([ a'' c'''!]) }
 bes''8\staccato \times 2/3 { g''16([ fis'' a'']) } g''8\staccato \times 2/3 { d''16([ cis'' e'']) }
 d''8\staccato g'4\sf( a'16 bes') c''4\sf~ \times 2/3 { c''16([ d'' c''] bes'[ a' g']) } f'8 << { g''4( a''16 b'') } \\ { f''4.\ff } >>
 c'''4(~ c'''32 d''' c''' b'' \times 2/3 { c'''16[ d''' e''']) } f'''8 r8 <c'' c'''>8\p\staccato <c'' c'''>\staccato
 <a' a''>8\staccato r8 <f'' f'''>\staccato <f'' f'''>\staccato <d'' d'''>8\staccato r8 \clef bass b,8\staccato b,\staccato
 \acciaccatura b,8 \afterGrace c2 \startTrillSpan { b,16[ \stopTrillSpan c] } f,4 \clef treble c''32\p( c'''16.) c''32( c'''16.)
 a'32( a''16.\staccato) r8 f''32( f'''16.\staccato) f''32( f'''16.\staccato) d''32( d'''16.\staccato) r8 \clef bass b,8\f\staccato b,\staccato
 \acciaccatura b,8 \afterGrace c2 \startTrillSpan { b,16[ \stopTrillSpan c] } f,4 \clef treble b''8\staccato b''\staccato
 \acciaccatura b''8 \afterGrace c'''2 \startTrillSpan { b''16[ \stopTrillSpan c'''] }
 <f'' f'''>4 b'8\staccato_\markup { \italic "cresc." } b'\staccato
 \acciaccatura b'8\ff \afterGrace c''2 \startTrillSpan { b'16[ \stopTrillSpan c''] } <f' f''>8\ff r <c' c''> r }
 \alternative { { <f f'>4 r4 } { <f f'>4 r8^\fermata } } \bar "|."
}

 \new Staff = "down" {
 \clef bass
 \key f \major
 \time 2/4
 \repeat volta 2 {
 \partial 8 <f, c f>8\p\staccato <f, c f>4\staccato r4 r4 r8 <f, c f>8\staccato <e, c e>4\staccato r4 R2
 \clef treble <f a c'>4( <g bes c'> <a c' f'> <bes d' f' g'> <c' f' a'> <ees' f' a' c''> <d' f' bes'>) r4
 <d' f' bes'>4( <e'! g' c''> <f' a' c''> <bes d' g'>) <c' f' a'>4 <c' g' bes'> <f' a'> r8 \clef bass <f, c f>8\p\staccato
 <f, c f>4\staccato r4 r4 r8 <f, c dis>8\staccato <f, c dis>4\sf\staccato r4 r4 r8
 \override TupletBracket #'transparent = ##t
 \override TupletNumber #'transparent = ##t
 << { \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { a16([ b c'] } gis8\staccato) \times 2/3 { a16([ b c'] } gis8\staccato)
 \times 2/3 { a16([ b c'] } gis4\staccato) } \\ { f8\f( e\staccato) f( e\staccato) f( e4\staccato) } >> r8 g,!16\p( b,
 c16 e g, b, c e g, b, c e g, b, c e g, b, c e g, b, c e g, c d f g, cis d f g, cis d f g, cis d f g, cis
 d f g, cis d f g, cis d f g, cis d f g, d e g c! dis e g e d) c16( c' e' d' c' e' c' b a c' a g fis a fis e d e fis g a d e fis)
 << { \override TupletBracket #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 8)
 \times 2/3 { g16([ b d' b d' b]) a([ c' d' c' d' c']) g([ b d' b d' b]) fis([ a d' a d' a])
 g16([ b d' b d' b]) a([ c' d' c' d' c']) g([ b d' b d' b]) fis([ a d' a d' a]) g([ b d' b d' b]) fis([ a d' a d' a])
 g([ b d' b d' b]) fis([ a d' a d' a]) } } \\ { g4 a g fis g a g fis g fis g fis } >> <g b d'>8 r8 r4 R2
 \clef treble << { g'4 g'8\staccato g'8\staccato g'4 g'8\staccato g'8\staccato } \\
 { f'!8[( d') b\staccato c'\staccato] f'!8[( d') b\staccato c'\staccato] } >>
 \clef bass <f f'>8\staccato r <g b d'>\staccato r <c e g c'>4\staccato r8 \clef treble <ees' g'>8(
 <f' aes'>\sf[ <d' f'>) <b d'>\staccato <c' ees'>\staccato] <f' aes'>\sf[( <d' f'>) <b d'>\staccato <c' ees'>\staccato]
 \clef bass <f aes d'>8\f\staccato r <g b d'>\staccato r <aes c'>8\staccato r8 r4 <fis a! c'>8\pp\staccato r8 r4
 <f! g>8\staccato[ <b, g>\staccato <c g>\staccato <g, g>\staccato] <d g>\staccato[ <g, g>\staccato <c g>\staccato <g, g>\staccato]
 <d g>\staccato[ <f g>\staccato <e g>\staccato <c g>\staccato] <d g>\staccato[ <f g>\staccato <e g>\staccato <c g>\staccato]
 <f, a, d>8 r <f a d'> r R2 r8 d'4\sf( e'16 f') g'4\f <g b d' f'>4 \clef treble
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { c'16([ e' g']) c'([ e' g']) c'([ e' g']) c'([ e' g'])
 c'[ e' g'] c'[ e' g'] c'[ e' g'] c'[ e' g'] } \clef bass \times 2/3 { <f a>[ c' d'] <f a>[ c' d'] <fis a>[ c' d'] <fis a>[ c' d']
 g[ c' e'] g[ c' e'] g[ b d'] g[ b d'] } c32 e g c' c e g c' c e g c' c e g c'
 c32 e g c' c e g c' \times 2/3 { e16[ g c'] e[ g c'] } f32 a c' d' f a c' d' fis a c' d' fis a c' d'
 \times 2/3 { g16[ c' e'] g[ c' e'] g[ b d'] g[ b d'] } c32 e g c' c e g c' \times 2/3 { c16[ ees g] c[ ees g] }
 g,32 c d g g, c d g g, b, d g g, b, d g c8\ff r <g, g> r }
 \alternative { { <c, c>4 r8 s8 } { <c, c>4 r4 } }

 \repeat volta 2 {
 <a, a>8\p\staccato r <e, e>\staccato r <a,, a,>8\staccato r8 r4 d'8\staccato r a\staccato r d\staccato r r4
 a8\staccato r e\staccato r a,8\staccato r r4
 \times 2/3 { r16 d,([ e,] f,[ e, d,] r a,([ b,] cis[ b, a,]) r d([ e] f[ e d]) } a16( f e d)
 \times 2/3 { r16 a,([ b,] cis[ b, a,]) r e([ fis] gis[ fis e]) } r16 gis( a bes! a g f! e)
 d,8\staccato <d f a>[ <d f a> <d f a>] e\staccato <e g a>[ <e g a> <e g a>] f\staccato <f a>[ <f a> <f a>]
 cis,8\staccato <cis a>[ <cis a> <cis a>] d8\staccato d'\staccato c!\staccato c'!\staccato bes,\staccato bes\staccato
 fis,8\staccato fis\staccato g,8\staccato <g bes d'>[ <g bes d'> <g bes d'>] a,\staccato <a c' d'>[ <a c' d'> <a c' d'>]
 bes,8\staccato <bes d'>[ <bes d'> <bes d'>] fis\staccato <c' d'>[ <c' d'> <c' d'>] g\staccato g'\staccato
 f!\staccato f'!\staccato ees\staccato ees'\staccato b,\staccato b\staccato
 c\staccato c'\staccato bes,\staccato bes\staccato a,\staccato a\staccato f,\staccato f\staccato bes,\staccato
 <bes d' f'>[ <bes d' f'> <bes d' f'>] c\staccato <c' ees' f'>[ <c' ees' f'> <c' ees' f'>]
 d8\staccato <d' f'>[ <d' f'> <d' f'>] a\staccato <c' ees' f'>[ <c' ees' f'> <c' ees' f'>] \clef treble bes'8\p r f' r bes r r4
 \clef bass f'8 r c' r f8 r r4 \times 2/3 { r16 bes,([ c] des[ c bes,]) r bes,([ c] des[ c bes,]) r bes,([ c] des[ c bes,]) } f16( des c bes,)
 \times 2/3 { r16 f,([ g,] a,[ g, f,]) r a,([ bes,] c[ bes, a,]) r c16([ des] ees[ des c]) } f16( ees des c) bes8 r f r bes,8 r r4
 c8 r g, r c,8 r r4 f8 r c r f,8 r r4 des8 r aes, r des,8 r c, r b,, r r4 bes,,!4 r4 a,,!4 r4 R2
 <a,, a,>4 r <a,, a,> r r4 r8^\fermata \bar "||"
 \key d \major <d a>8\p\staccato <d a>4\staccato r r4 r8 <d a>8\staccato <cis a>4\staccato r
 R2 <d fis a>4( <e g a cis'> <fis a d'> <g b d'> \clef treble <a c' d' fis'> <c' d' fis' a'> <b d' g'>) r4
 <b d' g'>4( <cis'! e' a'> <d' fis' a'>) \clef bass <g b e'>4( <a d' fis'>) <a e' g'> <d' fis'>4 r4
 r4 r8 <d d'>8\pp\staccato <g d'>4\staccato r4 r4 r8 <g d'>8\staccato <c! c'!>4\staccato r4 R2 R2 r4 r8 \bar "||"
 \key f \major r8 \clef treble <f a c'>4( <g bes c'> <a c' f'> <bes d' f' g'> <c' f' a'> <ees' f' a' c''> <d' f' bes'>) r4
 <d' f' bes'>4( <e'! g' c''> <f' a' c''> <bes d' g'> <c' f' a'> <c' g' bes'>8) r8 \clef bass f,16( a, c, e, f, a, c, e, f, a, c, e, f, a, c, e,
 f,16 a, c, e, f, a, c, e, f, a, c, e, f, a, c, f, g, bes, c, fis, g, bes, c, fis, g, bes, c, fis, g, bes, c, fis, g, bes, c, fis, g, bes, c, g,
 g, bes, c, fis, g, bes, c, g, a, c f, gis, a, c f, aes,) << { b4\rest f4~ <f aes>4. } \\ { c2~ c4. } >>
 <f aes>8 <f aes>8[ <f aes> <f aes> <f aes>] <ees g bes>4 r4
 << { d'4\rest g4~ <g bes>4. } \\ { ees2~ ees4. } >> <bes des'>8 <bes des'>8[ <bes des'> <bes des'> <bes des'>]
 <aes c'>4\<( ees' d'!\!\> des'\!)
 << { \override TupletBracket #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 8) \times 2/3 { c16([ e g e g e]) b,([ d g d g d]) c[ e g e g e] d[ f g f g f]
 c[ e g e g e] b,[ d g d g d] c[ e g e g e] d[ f g f g f] c[ e g e g e] d[ f g f g f] c[ e g e g e] d[ f g f g f] } } \\
 { c4 b,4 c d c b, c d c d c d } >> <c e g>4 r4 r2
 << { c'4 c'8\staccato c'8\staccato c'4 c'8\staccato c'8\staccato } \\
 { bes8[( g) e\staccato f\staccato] bes8[( g) e\staccato f\staccato] } >> <bes, bes>8\staccato r <c e g>8\staccato r
 <f, c f>4\staccato r8 \clef treble <aes' c''>8( <bes'! des''>\sf[ <g' bes'>) <e' g'>\staccato <f' aes'>\staccato]
 <bes' des''>8\sf[( <g' bes'>) <e' g'>\staccato <f' aes'>\staccato] <bes des' g'>8\f\staccato r <c' e' g'>\staccato r
 <des' f'>8\staccato r8 r4 \clef bass <b,, b,>8\pp\staccato r8 r4
 <bes, c>8\staccato[ <e, c>\staccato <f, c>\staccato <c, c>\staccato] <g, c>\staccato[ <c, c>\staccato <f, c>\staccato <c, c>\staccato]
 <g, c>8\staccato[ <bes, c>\staccato <a, c>\staccato <f, c>\staccato] <g, c>\staccato[ <bes, c>\staccato <a, c>\staccato <f, c>\staccato]
 <bes, d g>8 r <bes d' g'> r R2 r8 g4\sf( a16 bes) c'4\f <c e g bes>4 <f a>8 \clef treble << { g'4( a'16 b') } \\ { <d' f'>4. } >>
 <c' f' a' c''>4 <c' g' bes'!>4 \clef bass \times 2/3 { f16[ a c'] f[ a c'] f[ a c'] f[ a c']
 f[ a c'] f[ a c'] a[ c' f'] a[ c' f'] <bes d'>[ f' g'] <bes d'>[ f' g'] <b d'>[ f' g'] <b d'>[ f' g'] }
 \clef treble \times 2/3 { c'16[ f' a'] c'[ f' a'] c'[ e' g'] c'[ e' g'] } \clef bass f32 a c' f' f a c' f' f a c' f' f a c' f'
 f32 a c' f' f a c' f' \times 2/3 { a16[ c' f'] a[ c' f'] } bes32 d' f' g' bes d' f' g' b d' f' g' b d' f' g'
 \clef treble \times 2/3 { c'16[ f' a'] c'[ f' a'] c'[ e' g'] c'[ e' g'] } \clef bass f32 a c' f' f a c' f' \times 2/3 { f16[ aes c'] f[ aes c'] }
 c32 f g c' c f g c' c e g c' c e g c' f, a, c f f, a, c f \times 2/3 { f,16[ aes, c] f,[ aes, c] } c,32 f, g, c c, f, g, c c, e, g, c c, e, g, c
 f,8\ff r <c, c> r }
 \alternative { { <f,, f,>4 r4 } { <f,, f,>4 r8^\fermata } } \bar "|."
}
>>

 \layout { }

 \midi { }

}
