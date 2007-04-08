\version "2.8.0"

\header {
  title = "Sonate Opus 10 No.1 - 3rd Movement"
  composer = "Ludwig van Beethoven"
  mutopiatitle = "Sonata No. 5 (3rd Movement: Prestissimo)"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Piano"
  mutopiaopus = "Op. 10, No. 1"
  date = "late 18th Century"
  source = "Breitkopf & Hartel (1862-65)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2006/June/11"
  version = "2.6.0"
 footer = "Mutopia-2006/06/12-779"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \context GrandStaff
 <<
 \context Staff = "up" {
 \clef treble
 \key c \minor
 \time 4/4
 \once \override TextScript #'padding = #2.0
 \partial 8*5 c'8\p^\markup { \large "Prestissimo" }^\markup { "FINALE." }( b c') f'\staccato f'\staccato
 ees'4 r8 c'8( b c') aes'\staccato aes'\staccato g'4 r8 c'8( b c') c''\staccato c''\staccato
 c''4^\markup { \center-align { \musicglyph #"scripts.turn" \musicglyph #"accidentals.0" } }( ees''8 d'' f'' ees'' d'' c'')
 b'4 r8 g( fis g) c'\staccato c'\staccato b4 r8 g( fis g) ees'\staccato ees'\staccato
 d'4 r8 g8 b\staccato d'\staccato f'!\staccato aes'\staccato
 b'\staccato d''\staccato f''\staccato aes''\staccato g''\staccato f''\staccato ees''\staccato d''\staccato
 c''4 r8 c''( b' c'') c'''\staccato c'''\staccato c'''4 r8 f'''( ees''' d''' c''' b'') d'''8( c''') r c''( b' c'') c'''\staccato c'''\staccato
 c'''4.^\markup { \center-align { \musicglyph #"scripts.turn" \musicglyph #"accidentals.0" } }( f'''8 ees''' d''' c''' b'')
 c'''16_\markup { \italic "cresc." }( d''' c''' b'' c''' ees''' d''' c''' b'' c''' b'' aes'' g'' f'' ees'' d'')
 c''16( d'' c'' b' c'' ees'' d'' c'' b' c'' b' aes' g' f' ees' d')
 c'16( d' c' b c' ees' d' c') b16\f g' d' b g\staccato g' ees' c'
 g16 g' d' b g\staccato g' ees' c' g g' d' b g\staccato g' ees' c'
 <g b d' g'>2^\fermata r8 bes!8\p\staccato[ c'\staccato d'\staccato]
 << { ees'8\staccato f'\staccato g'4\staccato } \\ { <g bes>2 } >> <bes d' f'>4\staccato <bes ees'>\staccato
 <aes bes d' aes'>2 \clef bass r8 << { bes8\staccato[ c'\staccato d'\staccato] ees'8\staccato f'\staccato g'4\staccato } \\
 { s4 s8 <g bes>2 } >> <f c' f'>4\staccato <f c' ees'>\staccato
 <d f bes>2 r8 \clef treble bes8\staccato[ c'\staccato d'\staccato]
 << { ees'8\staccato f'\staccato g'4\staccato } \\ { <g bes>2 } >> <bes d' f'>4\staccato <bes ees'>\staccato
 \grace { c'32[ ees' aes'] } c''2\fp ~ c''8 c''\staccato bes'\staccato aes'\staccato
 << { g'8^\fp( f') ees'\staccato d'\staccato c'4( bes) } \\ { a2\rest <f aes>2 } >>
 <ees g bes>2 r8 bes'\staccato[ aes'\staccato g'\staccato]
 << { g'8^\fp( f') ees'\staccato d'\staccato c'4( bes) } \\ { a2\rest <f aes>2 } >>
 <ees g bes>2 r8 <bes' bes''>8\staccato[ <aes' aes''>\staccato <g' g''>\staccato]
 <g' g''>8( <f' f''>) <ees' ees''>\staccato <d' d''>\staccato <c' c''>\staccato <bes bes'>\staccato <c' c''>\staccato <d' d''>\staccato
 ees'16 ees'' ees' ees'' ees' ees'' ees' ees'' ees' ees'' ees' ees'' ees' ees'' ees' ees''
 ees'16 ees'' ees' ees'' ees' ees'' ees' ees'' ees' ees'' ees' ees'' ees' ees'' ees' ees''
 <ees' ees''>4 r8 ees''( d'' ees'') <aes'' c'''>\staccato <aes'' c'''>\staccato
 <aes'' c'''>4\ff ~ c'''16( bes'' aes'' g'' f'' ees'' d'' c'' b' bes' a' aes')
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { g'8[ aes' bes'] aes'[ g' f'] ees'[ d' c'] bes[ aes g] }
 r16 f16([ aes c'] f'4\staccato) r16 f([ aes bes] d'4\staccato)
 d''16 d''' d'' d''' d'' d''' d'' d''' d'' d''' d'' d''' d'' d''' d'' d'''
 ees''16 ees''' ees'' ees''' ees'' ees''' ees'' ees''' ees'' ees''' ees'' ees''' e'' e''' e'' e'''
 r16 f''([ aes'' c'''] f'''4\staccato) r16 d''([ f'' aes''] d'''4\staccato)
 <ees'' g'' bes'' ees'''>4\staccato bes''8\ff\staccato bes''\staccato bes''4\staccato bes''8\staccato bes''\staccato
 bes''4\staccato <f aes d'>4\sf\staccato r <f aes d'>\p\staccato
 <g ees'>4\staccato <c' ees' f'>\staccato <bes ees' g'>\staccato <aes! d' f'>\staccato
 <g ees'>4\staccato bes''16\ff( c''' bes'' a'') bes''4\staccato bes''16( c''' bes'' a'')
 bes''4\staccato <f aes d'>4\sf r <ees! ges a ees'!>\ff ~ <ees! ges a ees'!>
 <c'! ees' f'>\p\staccato <bes ees' g'!>\staccato <aes! d' f'>\staccato
 <g ees'>4\staccato <d' aes'>8( <ees' g'>) r4 <aes' d''>8( <g' ees''>) r4 <d'' aes''>8( <ees'' g''>) r4 <aes'' d'''>8( <g'' ees'''>)
 r4 <g bes ees'>\staccato r2 r4 r8
 \bar ":|"
 \break

 \partial 8*5 r8 r2 r4 r8 ees'\p( d' ees') bes'\staccato bes'\staccato cis'( d') bes'\staccato bes'\staccato r2
 r4 r8 f'8\p( e' f') bes'\staccato bes'\staccato dis'( e') bes'\staccato bes'\staccato e'( f') des''\staccato des''\staccato
 fis'( g') des''\staccato des''\staccato c''( bes' a' bes')
 g'8( aes'!) f''!\staccato f''\staccato b'_\markup { \italic "cresc." }( c'') aes''\staccato aes''\staccato
 e''( f'') b''\staccato b''\staccato g''( aes'') d'''\staccato d'''\staccato cis'''\ff( d''') f'''\staccato f'''\staccato f'''2
 r8 aes'[ aes' aes'] b2 \clef bass r8 aes,[ aes, aes,] b,,\sf[ aes, aes, aes,]
 b,,4.^\fermata\sf \clef treble c'8\p( b c') f'\staccato f'\staccato
 ees'4 r8 c'8( b c') aes'\staccato aes'\staccato g'4 r8 c'8( b c') c''\staccato c''\staccato
 c''4^\markup { \center-align { \musicglyph #"scripts.turn" \musicglyph #"accidentals.0" } }( ees''8 d'' f'' ees'' d'' c'')
 b'4 r8 g( fis g) c'\staccato c'\staccato b4 r8 g( fis g) ees'\staccato ees'\staccato
 d'4 r8 g8 b\staccato d'\staccato f'!\staccato aes'\staccato
 b'\staccato d''\staccato f''\staccato aes''\staccato g''\staccato f''\staccato ees''\staccato d''\staccato
 c''4 r8 c''( b' c'') c'''\staccato c'''\staccato c'''4 r8 f'''( ees''' d''' c''' b'')
 d'''8( c''') r c''( \times 4/5 { b'16[ c'' cis'' d'' ees''] } ees''16[ f'' fis'' g'']) aes''16( a'' bes'' b'' c'''8 f''' ees''' d''' c''' b'')
 c'''16_\markup { \italic "cresc." }( d''' c''' b'' c''' ees''' d''' c''' b'' c''' b'' aes'' g'' f'' ees'' d'')
 c''16( d'' c'' b' c'' ees'' d'' c'' b' c'' b' aes' g' f' ees' d')
 c'16( d' c' b c' ees' d' c') b16\f g' d' b g\staccato g' ees' c'
 g16 g' d' b g\staccato g' ees' c' g g' d' b g\staccato g' ees' c'
 <g b d' g'>2^\fermata\ff r8 g'8\p\staccato[ a'\staccato b'\staccato]
 << { c''8\staccato[ d''\staccato] e''4\staccato d''\staccato c''\staccato f''2 } \\
 { <e' g'>2 <d' g'>4 <e' g'> <f' g' b'>2 } >> r8 g'8\staccato[ a'\staccato b'\staccato]
 << { c''8\staccato[ d''\staccato] e''4\staccato } \\ { <e' g'>2 } >> <d' a' d''>4\staccato <d' a' c''>\staccato
 <b d' g'>2 r8 g'8\staccato[ a'\staccato b'\staccato]
 << { c''8\staccato[ d''\staccato] e''4\staccato d''\staccato c''\staccato } \\ { <e' g'>2 <d' g'>4 <e' g'> } >>
 \grace { a'32[ c'' f''] } a''2\fp ~ a''8 a''\staccato g''\staccato f''\staccato
 << { e''8( d'') c''\staccato b'\staccato a'4( g') g'2 f''8\rest g''\staccato[ f''\staccato e''\staccato]
 e''8( d'') c''\staccato b'\staccato aes'!4( g') g'2 } \\
 { e'2\rest <d' f'> <c' e'> e'\rest e'\rest <d' f'> <c' ees'!> } >> r8 <g' g''>\staccato <f' f''>\staccato <ees' ees''>\staccato
 <ees' ees''>8( <d' d''>) <c' c''>\staccato <b b'>\staccato <aes! aes'!>\staccato <g g'>\staccato <a a'>\staccato <b b'>\staccato
 <c' c''>4 r8 c''( b'_\markup { \italic "cresc." } c'') <d'' f''>\staccato <d'' f''>\staccato
 <c'' ees''>4 r8 c''( b' c'') <f'' aes''>\staccato <f'' aes''>\staccato
 <ees'' g''>4 r8 c'''( b'' c''') <d''' f'''>\staccato\sf <d''' f'''>\staccato
 <d''' f'''>4\ff ~ f'''16( ees''' d''' c''' b'' c''' d''' c''' b'' aes'' g'' f'')
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { ees''8[ f'' g''] f''[ ees'' d''] c''[ bes'! aes'] g'[ f' ees'] } r16 d'( f' aes' d''4\staccato) r16 b( d' f' b'4\staccato)
 b'16\ff b'' b' b'' b' b'' b' b'' b' b'' b' b'' b' b'' b' b'' c'' c''' c'' c''' c'' c''' c'' c''' c'' c''' c'' c''' c'' c''' c'' c'''
 r16 f''( aes'' d''' f'''4\staccato) r16 d''( f'' b'' d'''4\staccato)
 <c'' ees'' g'' c'''>4\staccato g''8\ff\staccato g''\staccato g''4\staccato g''8\staccato g''\staccato
 g''4\staccato \clef bass <d f b>4\sf\staccato r <d f b>4\p\staccato
 <c ees c'>4\staccato <a c' d'>\staccato <g c' ees'>\staccato <f b d'>\staccato <ees g c'>\staccato
 \clef treble g''16\ff( aes'' g'' fis'') g''4\staccato g''16( aes'' g'' fis'')
 g''4\staccato \clef bass <d f b>\staccato\sf r <c ees fis c'>\ff ~ <c ees fis c'>
 <a c' d'>\p\staccato <g c' ees'>\staccato <f b d'>\staccato <ees g c'> \clef treble <b f'>8( <c' ees'>) r4 <f' b'>8( <ees' c''>)
 r4 <b' f''>8( <c'' ees''>) r4 <f'' b''>8( <ees'' c'''>)
 r4 <c' ges'>8_\markup { \italic "cresc." }( <des' f'>) r4 <f' des''>8( <ges' c''>) r4 <des'' f''>8( <c'' ges''>) r4 <f'' des'''>8( <ges'' c'''>)
 <ges'' ees'''>1\fp << { des'''4( c''' bes'' aes'') \grace { f''16[ ges'' aes''] } ges''2^\fermata } \\ { ees''2 c''2 ~ c''2\pp } >>
 r8 \clef bass << { aes8\staccato( bes\staccato c'\staccato) des'8\staccato( ees'\staccato) f'4\staccato } \\
 { s4 s8 <f aes>2_\markup { \italic "ri    --    tar    --" } } >>
 <aes ees'>4\staccato( <aes des'>\staccato) <ges aes c' ges'>2 ~ <ges aes c' ges'>8
 << { aes8\staccato( bes\staccato c'\staccato) des'8\staccato( ees'\staccato) f'4\staccato } \\
 { s4 s8 <f aes>2_\markup { \italic "dan   --    --    --" } } >>
 <ees bes ees'>4\staccato( <ees bes des'>\staccato) <c ees aes>2 r8
 << { aes8\staccato( bes\staccato c'\staccato) des'8\staccato( ees'\staccato) f'4\staccato } \\
 { s4 s8 <f aes>2_\markup { \italic "--    --   do " } } >>
 <aes ees'>4\staccato( <aes des'>\staccato)
 << { ges'4. ees'8 c'2^\fermata } \\ { <ges aes c'>2_\markup { "tenuto" } ~ <ges aes c'> } >>
 \new Voice { \cadenzaOn \override NoteHead #'font-size = #-3 s4 s8 s16
 << { s8 s16 fis'4.^\markup { "Adagio." } ees'8 c'2^\fermata } \\
 { \stemUp \set tieWaitForNote = ##t fis16[~ a~ c']~ \stemDown <fis a c'>2 ~ <fis a> } >>
 s4^\markup { "Tempo I." } \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { g16([ c' ees']) }
 \override NoteHead #'font-size = #0
 g'8\staccato[ ees'\staccato c'\staccato g\staccato] ees\staccato[ c\staccato b,\staccato d\staccato]
 \cadenzaOff \bar "|" }
 c8 r r4 r8 \clef treble c'8\staccato\p[ d'\staccato e'\staccato] f'\staccato[ g'\staccato aes'\staccato]
 c'''8( b'' c''') f'''\staccato f'''\staccato e'''4\staccato r4 r8 c'\staccato[ d'\staccato e'\staccato]
 f'\staccato[ g'\staccato aes'\staccato] c'''8( b'' c''') f'''\staccato f'''\staccato
 e'''4\staccato r8 c''8( b'_\markup { \italic "decresc." } c'') f''\staccato f''\staccato
 e''4\staccato r8 c'8( b c') f'\staccato f'\staccato e'4\staccato r8 \clef bass c,8 c,4 r8 c,8 c,4\p r8^\fermata
 \bar "|."
}

 \context Staff = "down" {
 \clef bass
 \key c \minor
 \time 4/4
 \partial 8*5 c8( b, c) f\staccato f\staccato ees4 r8 c( b, c) aes\staccato aes\staccato g4 r r2 <aes c' fis'>1
 <g d' g'>4 r8 g,( fis, g,) c\staccato c\staccato b,4 r8 g,( fis, g,) ees\staccato ees\staccato
 d4 r8 g, b,\staccato d\staccato f!\staccato aes\staccato
 \clef treble b8\staccato d'\staccato f'\staccato aes'\staccato g'\staccato f'\staccato ees'\staccato d'\staccato
 c'8 <ees' g'> <ees' g'> <ees' g'> c' <e' g' bes'!> <e' g' bes'> <e' g' bes'>
 c'8 <f' aes'> <f' aes'> <f' aes'> c' <f' aes' b'> <f' aes' b'> <f' aes' b'>
 c'8 <ees' g'> <ees' g'> <ees' g'> c' <e' g' bes'!> <e' g' bes'> <e' g' bes'>
 c'8 <f' aes'> <f' aes'> <f' aes'> c' <f' aes' b'> <f' aes' b'> <f' aes' b'>
 <c' ees' g' c''>4 r8 \clef bass fis'( g'4) r8 b8( c'4) r8 fis( g4) r8 b,( c4) r8 fis,( g,4) <c, c>4\sf\staccato
 <g,, g,>4\staccato <c, c>\sf\staccato <g,, g,>\staccato <c, c>\sf\staccato <g,, b,, d, g,>2^\fermata r2
 <ees, ees>2 <aes, aes>4\staccato <g, g>\staccato <f, c f>2 r <ees, ees>2 <aes,, aes,>4\staccato <a,, a,>\staccato
 <bes,, bes,>2 r <ees, ees>2 <aes, aes>4\staccato <g, g>\staccato <aes, c ees aes>4\arpeggio r4 r2
 << { bes,1^\fp ~ bes,1 bes,1^\fp ~ bes,1 } \\
 { c,2\rest c,,8\rest bes,,8\staccato[ c,\staccato d,\staccato] ees,\staccato[ f,\staccato] g,4 f, ees,
 c,2\rest c,,8\rest bes,,8\staccato[ c,\staccato d,\staccato] ees,\staccato[ f,\staccato] g,4 f, ees, } >>
 <aes, c f>4 r <bes, f aes> r
 <ees g>4 r8 ees( d ees) <c aes>\staccato <c aes>\staccato <bes, g>4 r8 ees( d ees) <aes c'>\staccato <aes c'>\staccato
 <g bes>8[ ees16 ees'] ees ees' ees ees' ees ees' ees ees' ees ees' ees ees' <d f aes bes d'>1
 <ees g bes ees'>4 r r2 <aes,, aes,>4\staccato r8 <aes,, aes,>\staccato <bes,, bes,>4\staccato r8 <bes,, bes,>\staccato
 \clef treble r8 aes'16( bes' c'' bes' aes' g')
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { f'8[ ees' d'] c'[ bes aes] \clef bass g8[ aes bes] aes[ g f] ees[ d c] bes,[ aes, g,] }
 <aes,, aes,>4\staccato r8 <aes,, aes,>\staccato <bes,, bes,>4\staccato r8 <bes,, bes,>\staccato
 <ees, g, bes, ees>4\staccato \clef treble <e' g'>8\ff\staccato <e' g'>\staccato
 <f' aes'>4\staccato <e' g'>8\staccato <e' g'>\staccato
 <f' aes'>4\staccato \clef bass <bes,, bes,>4\sf\staccato r <b,, b,>\p\staccato
 <c, c>4\staccato <a,, a,>\staccato <bes,,! bes,!>\staccato <bes,, bes,>\staccato
 <ees, ees>4\staccato \clef treble <e' g'>8\ff\staccato <e' g'>\staccato <f' aes'>4\staccato <e' g'>8\staccato <e' g'>\staccato
 <f' aes'>4 \clef bass <bes,, bes,>\sf r4 <ces, ees, ges, ces>4\ff ~ <ces, ees, ges, ces>
 <a,, a,>4\p\staccato <bes,, bes,>\staccato <bes,, bes,>\staccato
 ees,8( ees) r4 ees,8( ees) r4 ees,8( ees) r4 ees,8( ees) r4 ees,4 r r2 r4 r8
 \bar ":|"
 \break

 \partial 8*5 bes,8( a, bes,) <g bes>\staccato <g bes>\staccato <g bes>1\sf
 <aes bes>4 r8 bes,( a, bes,) <aes! bes>\staccato <aes bes>\staccato <aes bes>1\sf
 <g bes>4\staccato r <f bes des'>\staccato r <e g bes c'>\staccato r r2
 <f aes c'>4 r <ees! f aes c'> r <d f aes b>\staccato r <c d f aes>\staccato r
 <b, d f aes>4 r \clef treble r8 aes''[ aes'' aes''] b'2 \clef bass r8 aes[ aes aes]
 b,8[ aes aes aes] b,\sf[ aes aes aes] b,4.^\fermata\sf c8\p( b, c) f\staccato f\staccato
 ees4 r8 c( b, c) aes\staccato aes\staccato g4 r r2 <aes c' fis'>1
 <g d' g'>4 r8 g,( fis, g,) c\staccato c\staccato b,4 r8 g,( fis, g,) ees\staccato ees\staccato
 d4 r8 g, b,\staccato d\staccato f!\staccato aes\staccato
 \clef treble b8\staccato d'\staccato f'\staccato aes'\staccato g'\staccato f'\staccato ees'\staccato d'\staccato
 c'8 <ees' g'> <ees' g'> <ees' g'> c' <e' g' bes'!> <e' g' bes'> <e' g' bes'>
 c'8 <f' aes'> <f' aes'> <f' aes'> c' <f' aes' b'> <f' aes' b'> <f' aes' b'>
 c'8 <ees' g'> <ees' g'> <ees' g'> c' <e' g' bes'!> <e' g' bes'> <e' g' bes'>
 c'8 <f' aes'> <f' aes'> <f' aes'> c' <f' aes' b'> <f' aes' b'> <f' aes' b'>
 <c' ees' g' c''>4 r8 \clef bass fis'( g'4) r8 b8( c'4) r8 fis( g4) r8 b,( c4) r8 fis,( g,4) <c, c>4\sf\staccato
 <g,, g,>4\staccato <c, c>\sf\staccato <g,, g,>\staccato <c, c>\sf\staccato
 <g,, b,, d, g,>2^\fermata\ff r2 <c g c'>2 <f g b>4\staccato <e g c'>\staccato <d g d'>2 r
 <c g c'>2 <f a>4\staccato <fis a>\staccato <g, g>2 r <c g c'>2 <f g b>4\staccato <e g c'>\staccato <f a c' f'>4\arpeggio r4 r2
 << { g1^\fp ~ g1 g1^\fp ~ g1 } \\
 { b,2\rest g,8\rest g,\staccato[ a,\staccato b,\staccato] c\staccato d\staccato e4\staccato d c
 b,2\rest g,8\rest g,\staccato[ a,\staccato b,\staccato] c\staccato d\staccato ees!4\staccato d c } >>
 <f, aes,! d f>4 r <g, b, d f> r <c ees>8 g g g g g b, g c g g g g g b, g c g g g g g <b, d f g>\sf <b, d f g>
 <b, d f g>1\ff <c ees g>4 r r2 f,4\staccato r8 f\staccato g,4\staccato r8 g\staccato
 \clef treble r8 f'16( g' aes' g' f' ees') \clef bass
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { d'8[ c' b] aes[ g f] ees[ f g] f[ ees d] c[ b, aes,] g,[ f, ees,] }
 <f,, f,>4\staccato r8 <f,, f,>\staccato <g,, g,>4\staccato r8 <g,, g,>\staccato <c, ees, g, c>4\staccato
 \clef treble <cis' e'>8\ff\staccato <cis' e'>\staccato <d' f'>4\staccato <cis' e'>8\staccato <cis' e'>\staccato
 <d' f'>4\staccato \clef bass <g,, g,>\sf\staccato r <g,, g,>\p\staccato
 <aes,, aes,>4\staccato <fis,, fis,>\staccato <g,, g,>\staccato <g,, g,>\staccato <c, c>\staccato
 \clef treble <cis' e'>8\ff\staccato <cis' e'>\staccato <d' f'>4\staccato <cis' e'>8\staccato <cis' e'>\staccato
 <d' f'>4\staccato \clef bass <g,, g,>4\sf\staccato r <aes,, c, ees, aes,>\ff ~ <aes,, c, ees, aes,>
 <fis,, fis,>\p\staccato <g,, g,>\staccato <g,, g,>\staccato
 c,8( c) r4 c,8( c) r4 c,8( c) r4 c,8( c) r4 aes,,8( aes,) r4 aes,,8( aes,) r4 aes,,8( aes,) r4 aes,,8( aes,) r4
 <aes,, aes,>1\fp ~ <aes,, aes,> ~ <aes,, aes,>2\pp r2
 <des, des>2 <ges, c>4\staccato( <f, des>\staccato) <aes, ees>2 ~ <aes, ees>8 r8 r4
 <des, des>2 <ges,, ges,>4\staccato( <g,, g,>\staccato) <aes,, aes,>2 r2
 <des, des>2 <ges, c>4\staccato( <f, des>\staccato) <aes, c ees>1^\fermata
 \new Voice { \cadenzaOn \override NoteHead #'font-size = #-3
 \stemUp \slurUp \set tieWaitForNote = ##t a,,16[( c, ees, fis, a,~ c~ ees)]~ s8 s16
 \override NoteHead #'font-size = #0 <a, c ees>1^\fermata \bar "|"
 \override NoteHead #'font-size = #-3
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 4/6 { g,,16([ c, ees, g, c ees]) } s8 r2 r4
 \override NoteHead #'font-size = #0 <g,, g,>4 \cadenzaOff \bar "|" }
 c,8 c c c c <g bes!> <g bes> <g bes> c <f aes> <f aes> <f aes> c <f aes b> <f aes b> <f aes b>
 c <e g c'> <e g c'> <e g c'> c <g bes!> <g bes> <g bes> c <f aes> <f aes> <f aes> c <f aes b> <f aes b> <f aes b>
 c <e g c'> <e g c'> <e g c'> c <f aes b> <f aes b> <f aes b> c <e g c'> <e g c'> <e g c'> c <f aes b> <f aes b> <f aes b>
 c <e g c'> <e g c'> <e g c'> c <e g c'> <e g c'> <e g c'> <c e g>4\p r8^\fermata
 \bar "|."
}
>>

 \layout {
 \context {
   \Staff
   \override VerticalAxisGroup #'minimum-Y-extent = #'(-5.0 . 5.0)
   fontSize = #-1 }
 }

 \midi { \tempo 4 = 166 }

}
