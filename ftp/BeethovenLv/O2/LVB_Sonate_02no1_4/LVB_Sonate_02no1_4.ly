\version "2.10.3"

 \header {
  title = "Piano Sonate Opus 2 No 1 (4th Movement)"
  composer = "Ludwig Van Beethoven"
  mutopiatitle = "Sonata No. 1 (4th Movement: Prestissimo)"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Piano"
  mutopiaopus = "Op. 2, No. 1"
  date = "1794/95"
  source = "Breitkopf & Hartel (1862-1865)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2008/February/08"
  version = "2.10.3"
 footer = "Mutopia-2008/02/13-1277"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \new GrandStaff
 <<
 \new Staff = "up" {
 \clef treble
 \key f \minor
 \time 4/4
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 180
 \override TextScript #'padding = #2.0
 \override TupletNumber #'transparent = ##t
 \override TupletBracket #'transparent = ##t
 r2^\markup { \bold "Prestissimo." }
 \repeat volta 2 { <f' aes' c'' f''>4\p\staccato <e' g' bes' des'' e''>\staccato
 <f' aes' c'' f''>\staccato r <c'' f'' aes'' c'''>\f\staccato <c'' g'' bes'' c'''>\staccato <c'' f'' aes'' c'''>\staccato r
 <f' aes' c'' f''>4\p\staccato <e' g' bes' des'' e''>\staccato
 <f' aes' c'' f''>\staccato r <c'' f'' aes'' c'''>\f\staccato <c'' g'' bes'' c'''>\staccato
 <c'' f'' aes'' c'''>4\staccato r ees''!4\p\staccato( ees''\staccato) ees''( aes'') ees''\staccato( ees''\staccato)
 ees''( aes'') ees''( e'' f'' g'' aes'' b'' c''') r c''4\p\staccato( c''\staccato( c''( f'') c''\staccato( c''\staccato)
 c''4^\trill( f'') c''\staccato( c''\staccato) \acciaccatura c''8 aes''4.\sf( g''8 f''[ ees'' d'' c''])
 b'4 r <g' b' d'' g''>\p\staccato <fis' a' c'' ees'' fis''>\staccato
 <g' b' d'' g''>\staccato r <b' d'' g'' b''>\ff\staccato <b' d'' g'' b''>\staccato
 <b' d'' g'' b''>4\staccato r <g' b' d'' g''>\p\staccato <fis' a' c'' ees'' fis''>\staccato
 <g' b' d'' g''>4\staccato r <d'' g'' b'' d'''>\ff\staccato <d'' g'' b'' d'''>\staccato
 <d'' g'' b'' d'''>\staccato r <f'' b'' d''' f'''>\ff\staccato <f'' b'' d''' f'''>\staccato
 <f'' b'' d''' f'''>\staccato r <f'' b'' d''' f'''>\staccato <f'' b'' d''' f'''>\staccato
 <f'' b'' d''' f'''>\sf\staccato r <f'' b'' d''' f'''>\sf\staccato r
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { f'''8\ff[ ees''' d'''] c'''[ b'' aes''] g''[ f'' ees''] d'' c'' b'] aes'[ g' f'] ees'[ d' c'] } b4 r4
 \times 2/3 { r8 ees'[ c'] aes'[ ees' c'] g'[ ees' c'] fis'[ ees' c'] g'[ ees' c'] aes'[ ees' c'] g'[ ees' c'] fis'[ ees' c'] }
 g'4 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { ees''8[ c'' aes'] ees''[ c'' g'] ees''[ c'' fis'] ees''[ c'' g'] ees''[ c'' aes'] ees''[ c'' g'] ees''[ c'' fis'] }
 ees''4 \times 2/3 { aes''8[ ees'' c''] aes''[ des''! c''] g''[ des'' bes'] g''[ c'' bes'] f''[ c'' aes'] f''[ d'' g'] ees''![ c'' g']
 d''[ b' f'] c''[ g' ees'] b'[ aes' d'] c''[ a' ees'] g'[ ees' c'] g'[ ees' c'] g'[ d' b] g'[ d' b]
 c'[ ees' g'] c''[ aes' ees'] c''[ aes' des'!] bes'[ g' des'] bes'[ g' c'] aes'[ f' c'] g'[ f' d'] g'[ ees'! c']
 f'[ b g] ees'[ c' g] } \clef bass \times 2/3 { d'8[ aes f] c'[ a ees] c'[ g ees] c'[ g ees] b[ g d] b[ g d] }
 c'4 r4 \clef treble <ees' ees''>4\p <ees' ees''> <d' d''>( <c' c''> <bes bes'> <aes aes'>) <g g'>2 <c'' c'''>4 <c'' c'''>
 <bes' bes''>4( <aes' aes''> <g' g''> <f' f''>) <ees' ees''>2 <g' g''>4 <g' g''>
 <f' f''>4( <ees'! ees''!> <d' d''> <c' c''>) <g g'>2 <g g'>4\staccato( <g g'>\staccato)
 <g g'>2 <g g'>4\staccato( <g g'>\staccato) c'4 r4 <ees' ees''>4 <ees' ees''>
 <d' d''>( <c' c''> <bes bes'> <aes aes'>) <g g'>2 <c'' c'''>4 <c'' c'''>
 <bes' bes''>4( <aes' aes''> <g' g''> <f' f''>) <ees' ees''>2 <g' g''>4 <g' g''>
 <f' f''>4( <ees'! ees''!> <d' d''> <c' c''>) <g g'>2 <g g'>4\staccato( <g g'>\staccato)
 <g g'>2 <g g'>4\staccato( <g g'>\staccato) c'4 r4 <c'' ees'' g'' c'''>4\ff\staccato <b' d'' f'' aes'' b''>\staccato
 <c'' ees'' g'' c'''>\staccato r <g' c'' ees'' g''>\staccato <g' b' d'' g''>\staccato
 <g' c'' ees'' g''>\staccato r <c'' ees'' g'' c'''>\staccato <b' d'' f'' aes'' b''>\staccato
 <c'' ees'' g'' c'''>\staccato r <g' c'' ees'' g''>\staccato <g' b' d'' g''>\staccato
 <g' c'' ees'' g''>\staccato r <g' c'' ees'' g''>\staccato <g' b' d'' g''>\staccato
 <g' c'' ees'' g''>\staccato r <g' c'' ees''>\staccato r }
 \alternative { { <ees' g' c''>4\staccato r <e' g' bes'>\staccato r <f' aes'>\staccato r s2 }
 { <ees' g' c''>4\staccato r r2 <des'! ees' g' des''!>4\ff\staccato r <des' ees' g' bes'>\staccato r
 <des' ees' g'>\staccato r r2 } }
 \repeat volta 2 { ees'1^\markup { \italic "sempre piano e dolce" }( aes'2 c'') ees''2. ees''4( d'' ees'' f'' ees'')
 ees''4( des''!) r des''\staccato des''4( c'') r c''\staccato c''8([ bes' des'' c''] ees''[ des'' c'' bes']
 aes'2^\markup { \translate #(cons 5 -1) { \musicglyph #"scripts.turn" } }( c''4 bes') bes'2.( c''4 aes') r4 r2
 ees''2. ees''4\staccato g''( aes'') b''( c''') d'''( ees''') r4 ees'''4( d''' ees''' f''' ees''')
 ees'''4( des'''!) r des'''\staccato des'''( c''') r c'''\staccato c'''8([ bes'' des''' c'''] ees'''[ des''' c''' bes'']
 aes''!2^\markup { \translate #(cons 5 -1) { \musicglyph #"scripts.turn" } }( c'''4 bes'')
 << { bes''2.( c'''4) } \\ { des''1 } >> <c'' aes''>4 r r ees''\staccato ees''( f'' g'' aes'' bes'' g'' ees'' des'')
 ees''2.( des''4^\trill) c''4 r4 r ees'' ees''8([ f'' ees'' d''] ees''[ f'' g'' aes''] a''[ bes'' c''' bes''] aes''![ g'' f'' ees''])
 ees''2( des''!^\trill) c''4 r4 r2 <ees' ees''>1( <aes' aes''>2\< <c'' c'''>)
 <ees'' ees'''>4\!\sf( <des'' des'''>) r <des'' des'''>\staccato <des'' des'''>\sf( <c'' c'''>) r <c'' c'''>\staccato
 <c'' c'''>4( <bes' bes''> <f'' f'''> <ees'' ees'''>) <ees'' ees'''>( <des'' des'''> <c'' c'''> <bes' bes''>)
 <bes' bes''>2.( <c'' c'''>4 <aes' aes''>) r4 r ees''4 ees''4( f'' g'' aes'' bes'' g'' ees'' des'') ees''2.( des''4^\trill)
 c''4 r4 r ees'' ees''8([ f'' ees'' d''] ees''[ f'' g'' aes''] bes''[ b'' c''' des'''] d'''[ ees''' f''' ees'''])
 ees'''2( des'''!2^\trill) c'''4 r4 r2 <ees' ees''>1( <aes' aes''>2\< <c'' c'''>)
 <ees'' ees'''>4\!\sf( <des'' des'''>) r <des'' des'''>\staccato <des'' des'''>\sf( <c'' c'''>) r <c'' c'''>\staccato
 <c'' c'''>4( <bes' bes''> <f'' f'''> <ees'' ees'''>) <ees'' ees'''>( <des'' des'''> <c'' c'''> <bes' bes''>)
 <aes' aes''>4 r <c' c''>\pp\staccato <b b'>\staccato <c' c''>4\staccato r <c' c''>\staccato <b b'>\staccato
 c''1^\markup { \translate #(cons 10 -1) { \musicglyph #"scripts.turn" } } c'''2.\sf c''4
 bes'!4 r <bes bes'>4\pp\staccato <a a'>\staccato <bes bes'>\staccato r <bes bes'>\staccato <a a'>\staccato
 bes'1^\markup { \translate #(cons 10 -1) { \musicglyph #"scripts.turn" } } bes''2.\sf bes'4
 aes'!4 r <aes aes'>\pp\staccato <g g'>\staccato <aes aes'>\staccato r <aes aes'>\staccato <g g'>\staccato
 aes'1^\markup { \translate #(cons 10 -1) { \musicglyph #"scripts.turn" } }
 aes''2.\sf( aes'4) aes''2.\sf( aes'4) aes''2.\sf( aes'4) aes''2.\sf( aes'4) a''2.\sf( a'4)
 << { bes''2.\ff } \\ { b'4\rest bes'2 } >> <aes'! aes''!>4 g''4( g' f'' f')
 e''4 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { c'8\p[ e' g'] c''[ g' e'] b'[ aes' f']
 c''[ g' e'] c'[ g' e'] r8 g'[ e'] r aes'[ f'] } r4 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { c'8[ e' g'] c''[ g' e'] b'[ aes' f'] c''[ g' e'] c'[ g' e'] r g'[ e'] r aes'[ f'] r g'[ e'] c''[ g' e'] }
 << { des''4^\accent( c'' des'') } \\
 { \override TupletNumber #'transparent = ##t \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { des''8[ g' e'] c''[ g' e'] des''[ g' e'] } } >>
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { r8 g'8[ e'] }
 << { des''4^\accent( c'' des'') } \\
 { \override TupletNumber #'transparent = ##t \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { des''8[ g' e'] c''[ g' e'] des''[ g' e'] } } >>
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { r8 g'8[ e'] }
 << { des''4^\accent( c'' des'' c'' des'' c'') } \\
 { \override TupletNumber #'transparent = ##t \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { des''8[ g' e'] c''[ g' e'] des''[ g' e'_\markup { \italic "decresc." }] c''[ g' e'] des''[ g' e'] c''[ g' e'] } } >>
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { des''8([ g' e'] c''[ g' e'] des''[ g' e'] c''[ g' e']) des''\>([ g' e'] c''[ g' e'] des''[ g' e'] c''[ g' e']
 des''[ g' e'] c''[ g' e'] des''[ g' e'] c''[ g' e'\!]) } f'4\f r <f' aes' c'' f''>4\staccato <e' g' bes' des'' e''>\staccato
 <f' aes' c'' f''>\staccato r <c'' f'' aes'' c'''>\staccato <c'' g'' bes'' c'''>\staccato
 <c'' f'' aes'' c'''>\staccato r <f' aes' c'' f''>\staccato <e' g' bes' des'' e''>\staccato
 <f' aes' c'' f''>4\staccato r <c'' f'' aes'' c'''>\staccato <c'' g'' bes'' c'''>\staccato
 <c'' f'' aes'' c'''>\staccato r ees''!\p\staccato( ees''\staccato) ees''( aes'') ees''\staccato( ees''\staccato)
 ees''4( aes'') ees''( e'' f'' g'' aes'' b'') c'''4\staccato r c''4\staccato( c''\staccato)
 c''( f'') r8 des'''8([ c''' bes'']) bes''8([ aes'' g'' f'']) c''4\staccato( c''\staccato) c''4^\trill( f'') r8 des'''8([ c''' bes''])
 bes''8([ aes'' g'' f'']) r8 des'''\fp( c''' bes'') bes''([ aes'' g'' f''] ees''![ des'' c'' b'])
 c''4 r <c' e' g' c''>4\p\staccato <b d' f' aes' b'>\staccato
 <c' e' g' c''>4\staccato r <e' g' c'' e''>\f\staccato <e' g' c'' e''>\staccato
 <e' g' c'' e''>\staccato r <c' e' g' c''>\p\staccato <b d' f' aes' b'>\staccato
 <c' e' g' c''>4\staccato r <g' c'' e'' g''>\f\staccato <g' c'' e'' g''>\staccato
 <g' c'' e'' g''>\staccato r <bes' e'' g'' bes''>\f\staccato <bes' e'' g'' bes''>\staccato
 <bes' e'' g'' bes''>\staccato r <bes' e'' g'' bes''>\ff\staccato <bes' e'' g'' bes''>\staccato
 <bes' e'' g'' bes''>4\staccato r <bes' e'' g'' bes''>\staccato r
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { bes''8\sf[ aes'' g''] f''[ e'' des''] c''[ bes' aes'] g'[ f' e'] des'[ c' bes] } s4 s2
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { r8 f'[ aes'] des'[ f' aes'] c'[ f' aes'] b[ f' aes'] c'[ f' aes'] des'[ f' aes'] c'[ f' aes'] b[ f' aes']
 c'[ f' aes'] des''[ aes' f'] c''[ aes' f'] b'[ aes' f'] c''[ aes' f'] des''[ aes' f'] c''[ aes' f'] b'[ aes' f']
 c''[ aes' f'] f''[ aes' f'] f''[ bes' aes'] ees''[ bes' ges'] ees''[ c'' f'] des''[ bes' f'] des''[ bes' e'] c''[ aes' f']
 bes'[ g'! c'] aes'[ f' c'] g'[ des' bes] f'[ d' aes] f'[ c' aes] f'[ c' aes] e'[ c' g] e'[ c' g]
 f'[ aes' c''] f''[ c'' aes'] f''[ bes' aes'] ees''[ bes' ges'] ees''[ c'' f'] des''![ bes' f'] des''[ bes' e'] c''[ aes' f']
 bes'[ g' c'] aes'[ f' c'] g'[ des' bes] f'[ d' aes] f'[ c' aes] f'[ c' aes] e'[ c' g] e'[ c' g] }
 <aes f'>4 r4 <aes' aes''>4\p <aes' aes''> <g' g''>( <f' f''> <ees' ees''> <des' des''>)
 <c' c''>2 <f' f''>4 <f' f''> <ees' ees''>( <des' des''> <c' c''> <bes bes'>)
 aes'!2 <c'' c'''>4 <c'' c'''> <bes' bes''>( <aes'! aes''!> <g' g''> <f' f''>) <c' c''>2 <c' c''>4\staccato( <c' c''>\staccato)
 <c' c''>2 <c' c''>4\staccato( <c' c''>\staccato) f'4 r4
 <aes' aes''>4\p <aes' aes''> <g' g''>( <f' f''> <ees' ees''> <des' des''>)
 <c' c''>2 <f' f''>4 <f' f''> <ees' ees''>( <des' des''> <c' c''> <bes bes'>)
 aes'!2 <c'' c'''>4 <c'' c'''> <bes' bes''>( <aes'! aes''!> <g' g''> <f' f''>) <c' c''>2 <c' c''>4\staccato( <c' c''>\staccato)
 <c' c''>2 <c' c''>4\staccato( <c' c''>\staccato)
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { f'8\f[ aes' c''] f''[ aes'' c'''] f'''[ c''' aes''] e'''[ des''' bes''] f'''[ c''' aes''] f''[ c'' aes'] f'[ aes' c''] e'[ g' c'']
 f'[ aes' c''] f''[ aes'' c'''] f'''[ c''' aes''] e'''[ des''' bes''] f'''[ c''' aes''] f''[ c'' aes'] f'[ aes' c''] e'[ g' c'']
 f'[ aes' c''] f''[ aes'' c'''] f'''\ff[ c''' aes''] e'''[ des''' bes''] f'''[ c''' aes''] f''[ aes'' c'''] f'''[ c''' aes''] e'''[ des''' bes'']
 f'''[ c''' aes''] f''[ c'' aes'] f'[ c' aes] } r4 s4 s4 r2^\fermata  }
}

 \new Staff = "down" {
 \clef bass
 \key f \minor
 \time 4/4
 \override TupletNumber #'transparent = ##t
 \override TupletBracket #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { f8\p([ aes c']) f([ aes c']) }
 \repeat volta 2 { \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { f8[ aes c'] f[ bes des'] f[ c' aes] f[ c aes,] f,[ aes, c] e,[ g, c] f,[ aes, c] f[ aes c'] f[ aes c'] f[ bes des']
 f8[ c' aes] f[ c aes,] f,[ aes, c] e,[ g, c] f,[ aes, c] f[ aes c'] }
 << { des'4( bes) c'2 des'4( bes c'2) des'4( bes) } \\ { g2 aes2 g2 aes g } >> <aes c'>4( <e g> <f aes> <des f>)
 <c e>4\staccato c'\staccato \clef treble << { bes'4( g') aes'2 bes'4( g') aes'2 } \\ { e'2 f' e' f' } >>
 \clef bass << { bes4( g) } \\ { e2 } >> <f aes>4 <f aes>2\sf <fis a>4 
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { g8[ b d'] g[ b d'] g[ b d'] g[ c' ees']
 g[ d' b] g[ d b,] g,[ b, d] g,[ b, d] g,[ b, d] g[ b d'] g[ b d'] g[ c' ees'] g[ d' b] g[ d b,] g,[ b, d] g,[ b, d]
 g,[ b, d] g[ d b,] g,[ b, d] g,[ b, d] g,[ b, d] g[ d b,] g,[ b, d] g,[ b, d] g,[ b, d] g[ d b,] g,[ b, d] g[ d b,] } g,4 r4 r2
 r2 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { r8 aes[ g] f[ ees d] }
 c4 aes4( g fis g aes g fis) \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { g8[ c' ees'] aes[ c' ees'] g[ c' ees'] fis[ c' ees'] g[ c' ees'] aes[ c' ees'] g[ c' ees'] fis[ c' ees']
 g[ c' ees'] } aes8( aes' f![ f'! g g'] e[ e' f f'] b,[ b c c']) d,8([ d ees, ees] f,[ f fis, fis])
 g,8[ g g, g] g,[ g g, g] c4 aes8([ c'] f[ aes g bes]) e([ g f aes] b,[ d c ees]) d,4( ees, f, fis,)
 g,,8[ g, g,, g,] g,,[ g, g,, g,] \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { c,8([ g, c]) c,[ g, c] c,[ g, c] c,[ g, c] d,[ f, bes,!] d,[ f, bes,] d,[ f, bes,] d,[ f, bes,]
 ees,[ g, bes,] ees,[ g, bes,] e,[ g, c] e,[ g, c] f,[ aes, c] f,[ aes, c] f,[ aes, d] f,[ aes, d]
 g,[ bes, ees] g,[ bes, ees] g,[ bes, e] g,[ bes, e] aes,[ c f] aes,[ c f] aes,[ c fis] aes,[ c fis]
 g,[ c ees] g,[ c ees] g,[ c ees] g,[ c ees] g,[ b, d] g,[ b, d] g,[ b, d] g,[ b, d]
 c,[ g, c] c,[ g, c] c,[ g, c] c,[ g, c] d,[ f, bes,] d,[ f, bes,] d,[ f, bes,] d,[ f, bes,]
 ees,[ g, bes,] ees,[ g, bes,] e,[ g, c] e,[ g, c] f,[ aes, c] f,[ aes, c] f,[ aes, d] f,[ aes, d]
 g,[ bes, ees] g,[ bes, ees] g,[ bes, e] g,[ bes, e] aes,[ c f] aes,[ c f] aes,[ c fis] aes,[ c fis]
 g,[ c ees] g,[ c ees] g,[ c ees] g,[ c ees] g,[ b, d] g,[ b, d] g,[ b, d] g,[ b, d]
 c[ ees g] c'[ ees' g'] c'[ ees' g'] c'[ f' aes'] c'[ g' ees'] c'[ g ees] c[ ees g] g,[ d g]
 c[ ees g] c'[ ees' g'] c'[ ees' g'] c'[ f' aes'] c'[ g' ees'] c'[ g ees] c[ ees g] g,[ d g]
 c[ ees g] c'[ g ees] c[ ees g] g,[ d g] c[ ees g] c'[ g ees] c[ ees g] c'[ g ees] } }
 \alternative { { \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { c8[ ees g] c'[ g ees] c[ e g] c'[ g e] f\p[ aes c'] f[ aes c'] } s2 }
 { c4\staccato r4 r2 <bes, des! ees g>4\ff\staccato r <bes, des ees g>\staccato r
 <bes, des ees g>\staccato r4 r2 } }
 \repeat volta 2 {
 r4 <aes c'> <aes c'> <aes c'> r <aes c' ees'> <aes c' ees'> <aes c' ees'>
 r <g bes ees'> <g bes ees'> <g bes ees'> r <g bes ees'> <g bes ees'> <g bes ees'>
 r <f aes des'!> <f aes des'> <f aes des'> r <ees aes c'> <ees aes c'> <ees aes c'>
 r4 <des f bes> <des f bes> <des f bes> r <ees c'> <ees des'> <ees des'> r <aes des'> <aes des'> <aes des'>
 r4 aes c' ees' r4 \clef treble <aes' c''> <aes' c''> <aes' c''> r <aes' c'' ees''> <aes' c'' ees''> <aes' c'' ees''>
 r <g' bes'! ees''> <g' bes' ees''> <g' bes' ees''> r <g' bes' ees''> <g' bes' ees''> <g' bes' ees''>
 r <f' aes' des''> <f' aes' des''> <f' aes' des''> r <ees' a' c''> <ees' a' c''> <ees' a' c''>
 r <des' f' bes'> <des' f' bes'> <des' f' bes'> r <ees' c''> <ees' des''> <ees' des''> r4 g' aes' g' aes' ees' c' aes
 r4 \clef bass <g bes ees'> <g bes ees'> <g bes ees'> r <bes des' ees'> <bes des' ees'> <bes des' ees'>
 r <aes c' ees'> <aes c' ees'> <aes c' ees'> r \clef treble <c' ees' aes'> <c' ees' aes'> <c' ees' aes'>
 r <bes ees' g'> <bes ees' g'> <bes ees' g'> r <des'! ees' bes'> <des' ees' bes'> <des' ees' bes'>
 r4 \clef bass <ees g>( <f aes> <g bes> <aes c'> <bes des'> <c' ees'> <bes des'>)
 r4 <aes c'> <aes c'> <aes c'> r <ges aes ees'> <ges aes ees'> <ges aes ees'>
 r <f aes des'> <f aes des'> <f aes des'> r <ees ges a> <ees ges a> <ees ges a>
 r <des f bes> <des f bes> <des f bes> r <ees g! des'> <ees g des'> <ees g des'>
 r <aes des'> <aes des'> <aes des'> r <aes c'> <c' ees'> <aes c'>
 r4 <g bes ees'> <g bes ees'> <g bes ees'> r <bes des' ees'> <bes des' ees'> <bes des' ees'>
 r <aes c' ees'> <aes c' ees'> <aes c' ees'> r \clef treble <c' ees' aes'> <c' ees' aes'> <c' ees' aes'>
 r <bes ees' g'> <bes ees' g'> <bes ees' g'> r <des'! ees' bes'!> <des' ees' bes'> <des' ees' bes'>
 r \clef bass <ees g>( <f aes> <g bes> <aes c'> <bes des'> <c' ees'> <bes des'>)
 r4 <aes c'> <aes c'> <aes c'> r <ges aes ees'> <ges aes ees'> <ges aes ees'>
 r <f aes des'> <f aes des'> <f aes des'> r <ees ges a> <ees ges a> <ees ges a>
 r <des f bes> <des f bes> <des f bes> r <ees g! des'> <ees g des'> <ees g des'>
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { aes,8[ c ees] aes,[ c ees] aes,[ c ees] aes,[ c ees] aes,[ c ees] aes,[ c ees] aes,[ c ees] aes,[ c ees] }
 aes,4 <aes c' ees'> <aes c' ees'> <aes c' ees'> <aes c' ees'> <aes c' ees'> <aes c' ees'> <aes c' ees'>
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { g,8[ c e] g,[ c e] g,[ c e] g,[ c e] g,[ c e] g,[ c e] g,[ c e] g,[ c e] } g,4 <g bes e'> <g bes e'> <g bes e'>
 <g bes e'>4 <g bes e'> <g bes e'> <g bes e'> \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { f,8[ c f] f,[ c f] f,[ c f] f,[ c f] f,[ c f] f,[ c f] f,[ c f] f,[ c f] } f,4 <f aes> <f aes> <f aes>
 << { <f aes>4 <f aes> <f aes> <f aes> <ges aes> <ges aes> <ges aes> <ges aes>
 <ges aes> <ges aes> <ges aes> <ges aes> <f aes> <f aes> <f aes> <f aes> <ees f> <ees f> <ees f> <ees f>
 b4\rest <des f> <des f> <des f> a4\rest <des g> a\rest <d g> } \\
 { des1\sf c1\sf ees1\sf des1\sf c1\sf bes,1\ff bes,2 b,2 } >>
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { c8[ e g] } r4 c'4\staccato c'\staccato
 c'4\staccato r c\staccato b,\staccato \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { c8[ e g] }
 r4 c'4\staccato c'\staccato c'4\staccato r c\staccato b,\staccato
 << { c'2\rest bes!4^\accent( a bes) b4\rest bes^\accent( a bes) b4\rest bes^\accent( a) bes1 g1 e1 bes1 } \\
 { c1~ c4 c2.\sf~ c4 c2.\sf c1~ c1~ c1~ c1 } >>
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { f8[ aes c'] f[ aes c'] f[ aes c'] f[ bes des']
 f[ c' aes] f[ c aes,] f,[ aes, c] e,[ g, c] f,[ aes, c] f[ aes c'] f[ aes c'] f[ bes des']
 f[ c' aes] f[ c aes,] f,[ aes, c] e,[ g, c] f,[ aes, c] f[ aes c'] }
 << { des'4( bes) c'2 des'4( bes) c'2 des'4( bes) } \\ { g2\p aes g aes g } >> <aes c'>4( <e g> <f aes> <des f>)
 <c e>4\staccato c'\staccato \clef treble << { bes'!4( g') aes'2 } \\ { e'2 f'2 } >> \clef bass c'4\staccato( c'\staccato)
 c'4( f') \clef treble << { bes'4( g') aes'2 } \\ { e'2 f'2 } >> \clef bass c'4\staccato( c'\staccato)
 c'4^\trill( f') <e g>4\fp <e g> <f aes> r <des f> r
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { c8[ e g] c[ e g] c[ e g] c[ f aes] c[ g e] c[ g, e,] c,[ e, g,] c,[ e, g,] c,[ e, g,] c[ e g] c[ e g] c[ f aes]
 c[ g e] c[ g, e,] c,[ e, g,] c,[ e, g,] c,[ e, g,] c[ g, e,] c,[ e, g,] c,[ e, g,]
 c,[ e, g,] c[ g, e,] c,[ e, g,] c,[ e, g,] c,[ e, g,] c[ g, e,] c,[ e, g,] c[ g, e,] }
 c,4 r4 r2 << { s4 \override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { aes8[ g f] } e4 c'4\rest } \\
 { r2 \override TupletNumber #'transparent = ##t \override TupletBracket #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { g,8\rest des[ c] bes,[ aes, g,] } } >>
 f,4( des c b, c des c b,) c4 <des des'>( <c c'> <b, b>) <c c'>( <des des'> <c c'> <b, b>)
 <c c'>4( des' d' ees') a( bes g! aes) e( f bes, b,) c,8[ c c, c] c,[ c c, c]
 f,4 f8([ f'] d[ d' ees ees']) a,([ a bes, bes] g,![ g! a, a] e,[ e f, f]) bes,,([ bes, b,, b,])
 c,8([ c c, c] c,[ c c, c]) \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { f,8[ aes, c] f,[ aes, c] f,[ aes, des] f,[ aes, des] g,[ bes, des] g,[ bes, des] g,[ bes, ees] g,[ bes, ees]
 aes,[ c ees] aes,[ c ees] a,[ c f] a,[ c f] bes,[ des f] bes,[ des f] bes,[ des g] bes,[ des g]
 c[ ees aes!] c[ ees aes] c[ ees a] c[ ees a] des[ f bes] des[ f bes] d[ f b] d[ f b] c[ f aes] c[ f aes] c[ f aes] c[ f aes]
 c[ e g] c[ e g] c[ e g] c[ e g]
 f,[ aes, c] f,[ aes, c] f,[ aes, des] f,[ aes, des] g,[ bes, des] g,[ bes, des] g,[ bes, ees] g,[ bes, ees]
 aes,[ c ees] aes,[ c ees] a,[ c f] a,[ c f] bes,[ des f] bes,[ des f] bes,[ des g] bes,[ des g]
 c[ ees aes!] c[ ees aes] c[ ees a] c[ ees a] des[ f bes] des[ f bes] d[ f b] d[ f b] c[ f aes] c[ f aes] c[ f aes] c[ f aes]
 c[ e g] c[ e g] c[ e g] c[ e g] }
 <f, f>4\f r \clef treble <f' aes' c''>\staccato <f' bes' des''>\staccato
 <f' aes' c''>\staccato r \clef bass <f aes c'>\staccato <c g c'>\staccato
 <f aes c'>\staccato r \clef treble <f' aes' c''>\staccato <f' bes' des''>\staccato
 <f' aes' c''>\staccato r \clef bass <f aes c'>\staccato <c g c'>\staccato
 <f aes c'>\staccato r <f aes c'>\ff\staccato <f bes des'>\staccato
 <f aes c'>\staccato r <f aes c'>\staccato <f bes des'>\staccato <f aes c'>\staccato r4 r
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { f8[ c aes,] } f,4 r4 r2^\fermata  }
}
>>

 \layout { }

 \midi { }

}
