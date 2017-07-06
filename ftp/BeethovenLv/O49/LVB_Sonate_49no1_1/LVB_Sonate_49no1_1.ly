\version "2.10.33"

 \header {
  title = "Piano Sonate Opus 49 No. 1 (1st Movement: Andante)"
  subtitle = "fur das Pianoforte"
  composer = "Ludwig Van Beethoven"
  mutopiatitle = "Sonata No. 19 (1st Movement: Andante)"
  mutopiacomposer = "BeethovenLv"
  mutopiaopus = "Op. 49, No. 1"
  mutopiainstrument = "Piano"
  date = "1796-1798"
  source = "Breitkopf & Hartel (1862-1865)"
  style = "Classical"
  copyright = "Public Domain"
  license = "Public Domain"
  maintainer = "Stelios Samelis"

 footer = "Mutopia-2017/07/06-912"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \new GrandStaff
 <<
 \new Staff = "up" {
 \clef treble
 \key g \minor
 \time 2/4
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 98
 \override TextScript #'padding = #2.0
 \repeat volta 2 { \partial 8 d'8\p^\markup { \large "Andante." } bes'8([ g' fis' g']) <d' c''>2\fp
 bes'8([ g' fis' g']) <g' ees''>2\fp d''8[ fis''( g'') d'']( c'')[ gis''( a'') c'']( bes')[ g''! a' ees''] g'8.([ a'32 g'] fis'8) d'
 bes'8([ g' fis' g']) <d' c''>2\fp bes'8([ g' fis' g']) ees''4.\fp
 ees''8(~ ees''16 d''_\markup { \italic "cresc." } f'' e'' g'' f'' ees'' d'')
 \grace { c''16[ d'' ees''] } d''8( c'') \grace { b'16[ c'' d''] } c''8( bes') \grace { a'16[ bes' c''] } bes'16( a' g' f' e' f' g' f')
 ees''8_\markup { \italic "dolce" }[( a'\staccato) a'\staccato( a'\staccato)]
 bes'8.^\markup { \translate #(cons 5 1) { \musicglyph #"scripts.turn" } }( d''16 f''8) f''8
 ees'''8[( a'') a''\staccato( a''\staccato)]
 bes''8.^\markup { \translate #(cons 5 1) { \musicglyph #"scripts.turn" } }( d'''16 f'''8) f'8
 ees''8[( a') a'\staccato( a'\staccato)]
 bes'8.^\markup { \translate #(cons 5 1) { \musicglyph #"scripts.turn" } }( c''16 d''16[ bes' c'' d''])
 ees''8.^\markup { \translate #(cons 5 1) { \musicglyph #"scripts.turn" } }( f''16 g''16[ a'' bes'' g''])
 e''16( f'' g'' f'') f''( ees'' d'' c'') cis'' d'' ees'' d'' f'' ees'' d'' c''
 bes'8.^\markup { \translate #(cons 5 1) { \musicglyph #"scripts.turn" } }( c''16 d''16[ bes' c'' d''])
 ees''16( f'' g'' a''!) c'''( bes'' a'' g'') g''( f'' e'' f'' a'' g'' f'' ees'') ees''( d'' cis'' d'' f'' ees'' d'' c'')
 bes'4 r8 c''16( d'') ees''8[( a') a'\staccato( a'\staccato)]
 bes'4 r8 c''16( d'') ees''8[( a') a'\staccato( a'\staccato)] <a' c''>4( bes'8) }
 \break
 bes8^\trill\f f'8[( bes) bes bes^\trill] f'[( aes) aes aes^\trill] g8\sf([ bes ees' g']) << { f'8([ aes' d' bes]) } \\ { c'4\p aes } >>
 <g bes ees'>4 r16 g''( f'' ees''] d''8) r8 r16 aes''16( g'' f'' ees''8) r16 ees'''16( d''' ees''' d''' c''')
 b''16( c''' bes'' aes'' g'' f'' c''' bes'') aes''8( g'') r16 g''32([ f'' aes'' g'' f'' ees''])
 \acciaccatura f''16 ees''16( d'') d''8 r16 aes''32([ g'' bes'' aes'' g'' f''])
 \acciaccatura g''16 f''16( ees'') ees''8 r16 ees'''32([ d''' f''' ees''' d''' c''']) b''16( c''' bes'' aes'' g'' f'' aes'' d'')
 ees''4 r8 f''16\p( g'') aes''8[( d'') d''\staccato( d''\staccato)] ees''4 r8 d''16( ees'') f''8[( b') b'\staccato( b'\staccato)]
 c''4 r8 <a'! a''!>16 <bes'! bes''!> <c'' c'''>8\f[( <fis' fis''>) <fis' fis''>\staccato( <fis' fis''>\staccato)]
 <g' g''>4\>( <a' a''>4\!) <c'' c'''>8\p([ <bes' bes''> <a' a''> <g' g''>]) <fis' fis''>4 r16 d''16( cis'' d'')
 <bes' g''>8 r r16 d''( cis'' d'') a'8 r r16 d''( cis'' d'') <bes' g''>8 r r16 d''( cis'' d'') a'4( b' c''4.\sf bes'!8)
 a'8([ a'' b' b''] c'' c'''4\sf bes'!8) a'8([ a'' b' b''] c''[ c''' cis'' cis''']) bes'8\p([ g' fis' g']) <d' c''>2\fp
 bes'8([ g' fis' g']) <g' ees''>2\fp d''8[ fis''( g'') d'']( c'')[ gis''( a'') c'']( bes')[ g''! a' ees''] g'8.([ a'32 g'] fis'8) r8
 r16 d''( bes'' d'' <c'' a''> d'' <bes' g''> d'') fis''( d'' cis'' d'' e'' fis'' g'' a'') bes''( d'' <bes'' d'''> d'' <a'' c'''!> d'' <g'' bes''> d'')
 a''16( f'' e'' f'' g'' a'' bes'' c''') d'''\<( f'' <d''' f'''> f'' <c''' ees'''!> f'' <bes'' d'''> f'')
 <a'' c'''>16( d'' <g'' bes''> d'' <fis'' a''> c'' g'' bes'\!) r16 a'16\f( ees'' d'' c'' bes' a' g') fis'\p( g' a' gis' a' b' c'' b')
 c''8_\markup { \italic "dolce" }[( fis') fis'\staccato( fis'\staccato)]
 \once \override TextScript #'script-priority = #-100 g'8.^\turn^\markup { \sharp }( bes'!16) d''8 d''
 c'''8[( fis'') fis''\staccato( fis''\staccato)]
 \once \override TextScript #'script-priority = #-100 g''8.^\turn^\markup { \sharp }( bes''!16) d'''8 d'
 c''8[( fis') fis'\staccato( fis'\staccato)]
 \once \override TextScript #'script-priority = #-100 g'8.^\turn^\markup { \sharp }( a'16 b'16 g' a' b')
 \once \override TextScript #'script-priority = #-100 c''8.^\turn^\markup { \natural }( d''16 ees''16 f'' g'' ees'')
 d''8( ees''16 d'' f'' ees'' d'' c'') bes'8.^\markup { \translate #(cons 4 1) { \musicglyph #"scripts.turn" } }( bes'16 d'' c'' bes' a')
 g'8.^\turn( a'16 b'16 g' a' b') c''8.^\turn( d''16 ees''16 e'' f'' fis'')
 g''4\f~ g''8.^\turn( a''16) bes''4\sf cis'4^\sf d'8 d''4\p^\accent cis''16( d'' ees'' d'' c''! bes' a' bes' c'' fis')
 g'8 g''4_\accent cis''16( d'' ees'' d'' c''! bes' a' bes' c'' fis')
 \clef bass g'8\pp[ <g bes d'> <g bes d'> <g bes d'>] <a c' d'>[ <a c' d'> <a c' d'> <a c' d'>]
 <g bes g'>[ <g bes d'> <g bes d'> <g bes d'>] <a c' d'>[ <a c' d'> <a c' d'> <a c' d'>]
 <g bes g'>[ <g bes d'> <g bes d'> <g bes d'>] <a c' d'>[ <a c' d'> <a c' d'> <a c' d'>]
 <bes d'>8\pp([ g <b f'> g] <c' ees'>[ g <ees c'> fis]) <d b>([ g <f! d'> g] <ees c'>[ g <c fis> ees])
 <b, g>([ d <c fis> ees] <b, g>[ d <c fis> ees]) <b, g>([ d <b, g> d] <b, g>4) r8 \bar "||"
}

 \new Staff = "down" {
 \clef bass
 \key g \minor
 \time 2/4
 \repeat volta 2 { \partial 8 r8 r8 <bes d'>([ <a c'> <g bes>]) <fis a>([ <d fis> <e g> <fis a>])
 <g bes>([ <bes d'> <a c'> <g bes>]) c8[ ees g c'] bes4 r8 <bes d'> <fis d'>4 r8 <fis d'> <g d'>4 <c c'> <d bes>4( <d a>8) r8
 r8 <bes d'>8([ <a c'> <g bes>]) <fis a>([ <d fis> <e g> <fis a>]) <g bes>([ <bes d'> <a c'> <g bes>])
 << { c8[ ees g a] } \\ { c4. c8 } >> <d bes>4 r8 << { f8 g8[ c'] g[ c'] c'4 } \\ { d8 ees4 e f } >> r4
 a16 f' c' f' ees' f' c' f' d' f' bes f' d' f' bes f' a f' c' f' ees' f' c' f' d'16 f' bes f' d' f' bes f' a f' c' f' ees' f' c' f'
 d' f' bes f' aes f' bes f' g ees' bes ees' ees ees' bes ees' f d' bes d' f ees' a ees'
 <bes d'>4 r d'16 f' bes f' aes f' bes f' g ees' bes ees' ees ees' bes ees' d d' bes d' ees c' g c' f d' bes d' f ees' a ees'
 <bes d'>16( f' e' f' g' f' ees' d') c' f' ees' f' <f c'> f' ees' f' <bes d'>( f' e' f' g' f' ees' d')
 c'16 f' ees' f' <f c'> f' ees' f' <bes ees'>4( <bes d'>8) }
 \break
 bes,8_\trill f8[( bes,) bes, bes,_\trill] f8[( aes,) aes, aes,_\trill] g,8([ bes, ees g)] << { aes8( f) f( d) } \\ { aes,4 bes,4 } >>
 <ees, ees>8 \clef treble <ees' g'>8[ <ees' g'>] r r8 <f' aes'>[ <f' aes'>] r r8 <g' bes'>[ <g' bes'> <g' bes'>]
 <aes' c''>4 <bes' d''> r8 <ees' bes'>8[ <ees' g'>] r8 r8 <f' aes'>[ <f' aes'>] r r8 <g' bes'>[ <g' bes'> <g' bes'>]
 <aes' c''>4 <bes f' aes'> <ees' g'>16( bes' a'! bes' c'' bes' aes' g') f' bes' aes' bes' <bes f'> bes' aes' bes'
 ees'16( g' fis' g' aes' g' f' ees') d' g' f' g' <g d'> g' f' g'
 \clef bass c'16( d' ees' d' c' bes! a! g) fis d' a d' c' d' a d' bes d' g d' fis d' a d' g d' bes d' ees cis' g cis' d d' fis d' a d' fis d'
 d16 d' g d' bes d' g d' d d' fis d' a d' fis d' d d' g d' bes d' g d' d( d' fis d' d d' gis d' d d' gis d' a d' g d')
 d16( d' fis d' d d' gis d' d d' gis d' a d' g d') d d' fis d' d d' gis d' <d a d'>4\arpeggio r4
 r8 <bes d'>([ <a c'> <g bes>]) <fis a>([ <d fis> <e g> <fis a>])
 <g bes>([ <bes d'> <a c'> <g bes>]) c8[ ees g c'] bes4 r8 <bes d'> <fis d'>4 r8 <fis d'> <g d'>4 <c c'> <d bes>4( <d a>8) d'8
 \clef treble bes'8([ g' fis' g']) <d' c''>2\mf bes'8([ g' fis' g']) <f'! ees''!>2\mf <bes' d''>8 bes'8([ a' bes'])
 fis'8[( g') d'( ees')] \clef bass c'4. cis'8 d'8 r8 r4 fis16 d' a d' c' d' a d' bes! d' g d' bes d' g d'
 fis16 d' a d' c' d' a d' bes d' g d' bes d' g d' fis d' a d' c' d' a d' bes d' g d' f! d' g d' ees c' g c' c g ees g
 bes,16 g d g c a ees a d bes g bes d c' fis c' g d' bes d' f! d' g d' ees c' g c' c g ees g cis bes e bes g bes e bes
 cis16 bes e bes g bes cis bes d d' g d' bes d' g d' d d' a d' c' d' a d' d d' g d' bes d' g d' d d' a d' c' d' a d'
 g4 r8 d,8 c8^\sf[( fis,) fis,\staccato( fis,\staccato)] g,4 r8 d,8 c8^\sf[( fis,) fis,\staccato( fis,\staccato)]
 g,4 r8 d,8 c8^\sf[( fis,) fis,\staccato( fis,\staccato)] g,2\pp g,, g, g,, <g,, g,> <g,, g,> <g,, g,>4 <g,, g,> <g,, g,> r8 \bar "||"
}
>>

 \layout { }

 \midi { }

}
