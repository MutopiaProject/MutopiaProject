\version "2.8.0"

\header {
  title = "Sonate Opus 10 No.1 - 1st Movement"
  composer = "Ludwig van Beethoven"
  mutopiatitle = "Sonata No. 5 (1st Movement: Allegro molto e con brio)"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Piano"
  mutopiaopus = "Op. 10, No. 1"
  date = "late 18th Century"
  source = "Breitkopf & Hartel (1862-1865)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2006/June/11"
  version = "2.6.0"
 footer = "Mutopia-2006/06/12-778"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \context GrandStaff
 <<
 \context Staff = "up" {
 \clef treble
 \key c \minor
 \time 3/4
 \once \override TextScript #'padding = #3.0
 <ees' g' c''>4.^\markup { \large "Allegro molto e con brio" }\f
 r16 g'16([ ees''8. c''16] g''8.[ ees''16 c'''8. g''16] ees'''4\staccato) ees'''4\staccato r4 <g' c''>4\p <g' c''>2( <g' b'>4)
 <f' aes' b'>4.\f r16 b'16([ f''8. d''16] b''8.[ f''16 d'''8. b''16] f'''4\staccato) f'''4\staccato r4 <b' d''>4\p <b' d''>2( c''4)
 \grace { c''16[ ees''] } g''4.( f''8 ees''4 d''2 c''4)
 \grace { g'32 [c'' ees''] } g''4.( f''8 <ees'' c''>4 <d'' b'>2 c''4)
 \grace { g'32_\markup{ \italic rinf.} [c'' ees''] } <g' g''>4.( <f' f''>8)
 <ees' ees''>4( ~ <ees' ees''> <d' d''>\staccato)
 <c' c''>( ~ <c' c''> <b b'>\staccato) <aes aes'>( ~ <aes aes'> <g g'>\staccato) r4
 r4 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { b8\pp([ d' f'] aes'[ g' f'] } ees'4\staccato) r4 r
 r4 \times 2/3 { f8([ aes d'] f'[ ees' d'] } c'4\staccato) r4 r r4 \times 2/3 { g8\ff([ b d'] f'[ d' b]) }
 <ees g c'>4.\f r16 c'16([ g'8. ees'16] c''8.[ g'16 ees''8. c''16] <g' g''>4\staccato)
 <g' g''>4\staccato r8. b16([ g'8. d'16] b'8.[ g'16 d''8. b'16] <g' g''>4\staccato)
 <g' g''>4\staccato r8. ees'16([ g'8. ees'16] c''8.[ g'16 ees''8. c''16 g''8. ees''16])
 d''4\ff\staccato f'''\staccato r b'\ff\staccato d'''\staccato r c''4\ff\staccato c'''\staccato r R2. R2.
 r4 << { g'4( ees'') ees''2 ees''4 ~ ees''( f'' des'') ~ des''( b' c'') } \\ { g'2 aes'2. g'2. aes'2. } >>
 r4 << { e''4( c''') c'''2 c'''4 ~ c'''( des''' bes'') ~ bes''( g'' aes'') } \\ { e''2 f''2. e''2. c''2. } >>
 r4 << { c''4( aes'') aes''2 aes''4 ~ aes''( bes'' ges'') ~ ges''( e'' f'') ~ f''( ges'' ees''!) ~ ees''( ees'' d''!4) ~ d''( ees'' ges') f' } \\
 { c''2 des''2. c''2. aes'2. a'2. f'2. ges'2 ees'4 d' } >> r4 r
 r4 c''4 c'' c''( bes') r4 r4 aes' aes' aes'( g') r4
 r8 c''8([ b' c'' d'' c'']) r bes'!([ a' bes' c'' bes']) r aes'!([ g' aes' bes' aes'])
 g'2. ~ g'4.( bes'8 ees''4) ees''2.( d''4\staccato) r4 r
 bes'2. bes'4.^\markup { \center-align { \musicglyph #"scripts.turn" \musicglyph #"accidentals.0" } } f''8\staccato aes''!4\staccato
 aes''2.( g''4\staccato) r4 r
 g'8\staccato aes'\staccato bes'\staccato c''\staccato d''\staccato ees''\staccato f''\staccato g''\staccato
 aes''\staccato bes''\staccato c'''\staccato d'''\staccato ees'''2.\sf( d'''4\staccato) r4 r
 bes8\staccato c'\staccato d'\staccato ees'\staccato f'\staccato g'\staccato aes'\staccato bes'\staccato
 c''\staccato d''\staccato ees''\staccato f''\staccato
 g''2._\markup { \italic "cresc." } ees'''2 g4 aes2.\sf a2.\sf bes2.\f \afterGrace aes!2.\trill { g16[ aes] }
 g8 bes ees' bes ees' g' bes' g' bes' ees'' g'' bes'' ees'''4\f r4
 ees'4\sf ~ ees'2( g4 aes2) ees'4\sf( a2)
 ees'4\sf( bes8 ees' d' ees' b ees' c' ees' d' ees' a ees') bes8\ff( ees' des' ees' b ees' c' ees' d'! ees' a ees')
 bes4\staccato r8. ees'16([ bes'8. g'16] ees''4\sf\staccato) r8. ees'16([ a'8. fis'16]
 ees''4\sf\staccato) r8. ees'16([ bes'8. g'16] ees''4\sf\staccato) r8. c''16([ fis''8. ees''16])
 g''4.\ff( ees''8) ees''8([ bes']) bes'8( g') g'( ees') ees'( bes) \clef bass bes( g) g( ees) ees( bes,)
 r4 r <f aes bes d'>\sf( <g bes ees'>) r r
 \clef treble r4 << { bes'4 bes' c''( bes') } \\ { <d' f' aes'>4_\markup { \italic "dol." } <d' f' aes'> <ees' g'>2 } >> r4
 r4 << { d''4 d'' f''( ees'') } \\ { <f' aes'>4 <f' aes'> <g' bes'>2 } >> r4
 r4 << { bes'4 bes' c''( bes') } \\ { <d' f' aes'>4 <d' f' aes'> <ees' g'>2 } >> r4
 r4 \clef bass << { d'4 d' f'( ees') } \\ { <f aes>4\p <f aes> <g bes>2 } >> r4 r4 <f aes d'>4 <f aes d'>
 <aes d' f'>2.( <g bes ees'>4) r4 r
 \bar ":|"
 \break

 \clef treble <e' g' c''>4.\f r16 g'16([ e''8. c''16] g''8.[ e''16 c'''8. g''16] e'''4\staccato) e'''4\staccato r4 <c'' e''>4\p
 <c'' e''>2( <b' d''>4) <b' d''>4. r16
 b'16\f([ f''8. d''16] b''8.[ f''16 d'''8. b''16] f'''4\staccato) f'''4\staccato r4
 << { f''4 f''2( e''4) e''4.} \\ { d''4\p d''2 ~ des''4 des''4. } >> r16
 bes'16\f([ e''8. des''16] g''8.[ e''16 bes''8. g''16] des'''4\staccato)
 g'4\staccato bes''\staccato r e'\staccato g''\staccato r
 <f' f''>2.\p <c'' c'''>2 <c'' c'''>4 <c'' c'''>4( <b' b''> <des'' des'''> <c'' c'''> <bes'! bes''!> <g' g''>)
 <e' e''>2\<( <g' g''>4\! <c'' c'''>2\> <g' g''>4\!) <bes' bes''>2.( <aes' aes''>4) r4 <a' a''>4( <bes' bes''>2.)
 <f'' f'''>2\< <f'' f'''>4 <f'' f'''>\!( <e'' e'''>\> <ges'' ges'''> <f'' f'''> <ees''! ees'''!> <c'' c'''>\!)
 <a' a''>2( <c'' c'''>4 <f'' f'''>2 <c'' c'''>4) <ees'' ees'''>2.( <des'' des'''>4) r4 des''4
 c''2\<( ees''4^\markup { \center-align { \musicglyph #"scripts.turn" \musicglyph #"accidentals.0" } } aes''2\!\> ees''4\!)
 f''4( e'' ges'' f'' ees''! c'') aes''( g''! bes'' aes'' ges'' ees'') f''4( e'' ges'' f'' ees''! c'')
 des''2._\markup { \italic "cresc." } <bes'' des''>2 <bes'' des''>4 <c'' bes''>2.\sf ~ <c'' bes''>2 <g' bes'>4
 <f' aes'>2._\markup { \italic "cresc." } <f'' aes''>2 <f'' aes''>4 <f'' g''>2.\sf ~ <f'' g''>2 <d' f'>4( <c' ees'>) r4 r
 <c'' ees'' c'''>2\f <c'' ees'' c'''>4 <c'' aes'' c'''>2.\sf <f'' aes'' f'''>2 <f'' aes'' f'''>4 <f'' g'' d''' f'''>2.\ff ~ <f'' g'' d''' f'''>2
 <d'' f''>4\sf( <c'' ees''>2)
 << { <g' ees''>4\sf ~ <g' ees''>( <f' d''> <ees' a' c''> <d' g' b'>\staccato) } \\ { s4 aes'2 s4 s4 } >>
 r4 <b' d'' g''>4\p\staccato <aes'! c'' f''>\staccato r <g' bes'! ees''>\staccato <f' aes' d''>\staccato r <ees' g' c''>\staccato
 <d' f' b'>4\staccato r <c' ees' aes'>\staccato <b d' g'>4\staccato r
 \setTextDecresc <b' d'' g''>4\staccato\> <aes'! c'' f''>4\staccato r <g' bes'! ees''>\staccato
 <f' aes' d''>4\staccato r <ees' g' c''>\staccato <d' f' b'>4\staccato r <c' ees' aes'>\staccato <b d' g'>\staccato r 
 \clef bass <aes c' f'>\staccato <g c' ees'>\staccato r <f b d'>\staccato\!
 <ees g c'>4.\f r16 \clef treble g'16([ ees''8. c''16] g''8.[ ees''16 c'''8. g''16] ees'''4\staccato) ees'''4\staccato r4 <g' c''>4\p
 <g' c''>2( <g' b'>4)
 <f' aes' b'>4.\f r16 b'16([ f''8. d''16] b''8.[ f''16 d'''8. b''16] f'''4\staccato)
 f'''4\staccato r4 <b' d''>4\p <b' d''>2( c''4)
 \grace { c''16[ ees''] } g''4.( f''8 ees''4 d''2 c''4) \grace { g'32 [c'' ees''] } g''4.( f''8 <c'' ees''>4 <b' d''>2 c''4)
 \grace { g'32_\markup{ \bold \italic rinf.} [c'' ees''] }
 <g' g''>4.( <f' f''>8) <ees' ees''>4( ~ <ees' ees''> <d' d''>4\staccato)
 <c' c''>4( ~ <c' c''> <b b'>4\staccato) <aes aes'>4( ~ <aes aes'> <g g'>4\staccato) r4
 r4 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { b8\pp([ d' f'] aes'[ g' f']) } ees'4\staccato r4 r
 r4 \times 2/3 { f8([ aes d'] f'[ ees' d']) } c'4\staccato r4 r
 r4 \times 2/3 { g8\ff([ b d'] f'[ d' b]) } c'4\staccato r r R2.
 \break
 
 R2. r4 << { f'4( des'') des''2 des''4 ~ des''4( ees'' ces'') ~ ces''( a' bes') } \\ { f'2 ges'2. f'2. ges'2. } >>
 r4 << { f''4( des''') des'''2 des'''4 ~ des'''4( ees''' ces''') ~ ces'''( a'' bes'') } \\ { f''2 ges''2. f''2. ges''2. } >>
 r4 << { d''4( bes'') bes''2 bes''4 ~ bes''( ces''' aes'') ~ aes''( f'' ges'') ~ ges''( aes'' f'') ~ f''( f'' e'') ~ e''( f'' aes') g' }
 \\ { d''2 ees''2. d'' bes' b' c'' aes'2 f'4 e'4\p } >> r4 r
 r4 des'' des'' des''( c'') r4 r4 bes' bes' bes'( a') r4
 r8 d''8([ cis'' d'' e'' d'']) r8 c''!([ b' c'' d'' c'']) r8 bes'!([ a' bes' c'' bes'])
 a'2. ~ a'4.( c''8 f''4) f''2.( e''4\staccato) r4 r
 c''2. c''4.^\markup { \center-align { \musicglyph #"scripts.turn" \musicglyph #"accidentals.0" } }
 g''8\staccato bes''!4\staccato bes''2.( a''4\staccato) r4 r
 a'8\staccato bes'\staccato c''\staccato d''\staccato e''\staccato f''\staccato g''\staccato a''\staccato
 bes''\staccato c'''\staccato d'''\staccato e'''\staccato f'''2.\sf( e'''4\staccato) r4 r
 c'8\staccato d'\staccato e'\staccato f'\staccato g'\staccato a'\staccato bes'\staccato c''\staccato
 d''\staccato e''\staccato f''\staccato g''\staccato aes''!2.\sf( ~ aes''4 g'' f'')
 ees''!2.^\markup { \hspace #6.0 \musicglyph #"scripts.turn" }( g''4 f'' d'')
 <ees' ees''>2.\f ~ <ees' ees''>4.( <g' g''>8 <c'' c'''>4) <c'' c'''>2.( <b' b''>4\staccato) r4 r
 <g' g''>2. ~ <g' g''>4.( <d'' d'''>8 <f'' f'''>4) <f'' f'''>2.( <ees'' ees'''>4\staccato) r4 r
 ees'8( g' c'' g' c'' ees'' c'' ees'' g'' ees'' g'' c''') c'''2.( b''4\staccato) r4 r
 g8( b d' b d' g' d' g' b' g' b' d'') ees''4 r c'''\sf ~ c'''2 \clef bass e4
 f2.\sf fis2.\sf g2.\sf \afterGrace f!2.^\trill { e16[ f16] }
 ees8 g c' g c' ees' \clef treble g' ees' g' c'' ees'' g'' c'''4\f\staccato r4
 \clef bass c'4\sf( ~ c'2 e4 f2) c'4\sf( fis2) c'4\sf( g8_\markup { \italic "cresc." } c' b c' g c' aes c' b c' fis c')
 g8\ff( c' b c' e c' f c' aes c' fis c')
 g4\staccato \clef treble r8. g'16([ ees''8. c''16] fis''4\staccato\sf) r8. fis'16([ ees''8. c''16] g''4\staccato\sf)
 r8. g'16([ ees''8. c''16] a''4\staccato\sf) r8. a'16([ ees''8. c''16])
 g''4.\ff( ees''8) ees''([ c''])
 c''8[( g') g'( ees') ees'( c')] \clef bass c'8([ g) g( ees) ees( c)]
 r4 r <d f g b>4\sf( <ees g c'>) r r
 r4 \clef treble <b d' f' g'>4 <b d' f' g'> << { aes'4( g') } \\ { <c' ees'>2 } >> r4
 r4 <d' f' b'>4 <d' f' b'> << { d''4( c'') } \\ { <ees' g'>2 } >> r4
 r4 <b d' f' g'>4 <b d' f' g'> << { aes'4( g') } \\ { <c' ees'>2 } >> r4
 \clef bass r4 <d f b>4\p <d f b> << { d'4( c') } \\ { <ees g>2 } >> r4 r <d f b> <d f b> <ees g c'> r r
 \clef treble <g' b' d'' g''>4\ff r r <c' ees' g' c''> r r
 R2.^\markup { \musicglyph #"scripts.ufermata" }
 \bar "|."
}

 \context Staff = "down" {
 \clef bass
 \key c \minor
 \time 3/4
 <c ees g c'>4.\f r8 r4 R2. r4 r \clef treble <c' ees'>4\p <c' ees'>2( <d' f'>4)
 \clef bass <d f aes b d'>4.\f r8 r4 R2. r4 r \clef treble <d' f' aes'>4\p <d' f' aes'>2( <ees' g'>4)
 r4 r \clef bass <ees g c'>4( <f aes b>2 <ees g c'>4) r4 r \clef treble <ees' g'>4( <f' aes'>2 <ees' g'>4)
 \clef bass r4 r <ees g c'>4( <f aes b>2 <ees g>4 <d f>2 <c ees>4 <b, d>) r4 r
 r4 r <b, d f aes>4( <c ees g>4\staccato) r r r4 r <f, aes, d>4( <g, c ees>4\staccato) r r
 r4 r <g,, g,>\staccato <c, ees, g, c>4.\f r8 r4
 r4 r <c ees g>4\staccato <b, d g>4\staccato r4 r r4 r <b, d g>4\staccato <c ees g>4\staccato r4 r
 r4 r <ees g c'>4\staccato <f aes d'>\staccato\ff r r
 <g b d'>\staccato\ff r r <c ees g c'>\staccato\ff r r R2.
 ees'2.\fp( ~ <ees' des'>2. ~ <ees' c'>2. <bes des'>2. <aes ees'>2.)
 \clef treble << { c''2. ~ c'' bes' aes'} \\ { bes'\fp( aes' g' f') } >>
 << { aes'2. ~ aes'2. ges'2. f'2. } \\ { ges'2.\fp( f'2. ees'2. des'2. ) } >> \clef bass <ces' ees'!>2.( bes2. a2.)
 << { a4\rest f4( g! aes! e f g d ees! f c d ees f g aes e f g d ees! f c d) }
 \\ { bes,2.\p ~ bes,2. bes,2. ~ bes,2. bes,2. ~ bes,2. bes,2. ~ bes,2. } >>
 ees8 bes g bes f bes ees bes f bes g bes f bes g bes aes bes f bes g bes aes bes
 d8 bes f bes ees bes d bes ees bes f bes ees bes f bes g bes ees bes f bes g bes
 ees8 bes g bes ees bes ees bes g bes ees bes f bes aes bes f bes f bes aes bes f bes
 d8 bes f bes d bes d bes f bes d bes
 r8 ees[ d ees d ees] g, ees aes, ees bes, ees aes,8 ees bes, ees c ees
 a,8 ees bes, ees c ees bes, g ees g bes, g bes, f d f bes, f <ees, ees>4 r4 r R2.
 g,8 ees aes, ees bes, ees g, ees aes, ees bes, ees aes, ees bes, ees c ees a, ees bes, ees c ees
 bes,8( ees d ees b, ees c ees d ees a, ees) bes,!( ees des ees b, ees c ees d! ees a, ees)
 bes,4\staccato <bes, ees g>\staccato r4 r <c ees fis>4\staccato r
 r4 <bes, ees g>4\staccato r r <a, ees fis a>4\staccato r r <bes, ees g bes>4\staccato r R2. R2. <bes,, bes,>2.\ff
 << { s4 bes,2^\fp ~ bes,2. } \\ { ees,4( bes, a, aes,! g, f,) } >> ees,4( g, bes, bes,, f, bes,)
 << { s4 bes,2^\fp ~ bes,2. } \\ { ees,4( bes, a, aes,! g, f,) } >> ees,4( g, bes, bes,, f, bes,)
 ees,4( g, bes, bes,, f, bes,) ees,4( g, bes,) ees4 r r
 \bar ":|"
 \break

 <c e g c'>4.\f r8 r4 R2. \clef treble r4 r <e' g'>4\p <e' g'>2( <f' aes'>4) <f' aes'>4. r8 r4 R2.
 r4 r <f' aes'>4\p <f' aes'>2( <g' bes'!>4) <g' bes'>4. r8 r4 R2. R2. R2.
 \clef bass f8\p c' aes c' f c' f c' aes c' f c' g8 c' bes c' g c' e c' g c' e c' c c' e c' g c' e c' g c' bes c'
 f8 c' aes c' f c' f c' e f ees f des f c f des f bes, f c f des f c f ees f c f a, f c f a, f f, f a, f c f a, f c f ees f
 bes, f des f bes, f bes, f des f bes, f aes, ges ees ges aes, ges aes, ges c ges aes, ges <des f>4 r r
 \clef treble aes'4( ges' ees') f'4( e' ges' f' ees'! c')
 \clef bass des'4( c' ees' des' c' aes) bes4( des' aes g bes f e g d! c d e)
 f4( aes ees! d f c b, d a, g, a, b, c ees bes,! aes, c g, f, aes, ees, d, f, c, b,, d, a,, g,, a,, b,, c, d, ees,
 f,2 fis,4 g,\staccato) g4\staccato r
 r4 g\p r r g r r g r r g, r r g, r r g, r r g, r r4 <g,, g,> r r <g,, g,> r
 <c, ees, g, c>4.\f r8 r4 R2. r4 r \clef treble <c' ees'>4\p <c' ees'>2( <d' f'>4)
 \clef bass <d f aes b d'>4.\f r8 r4 R2.
 r4 r \clef treble <d' f' aes'>4\p <d' f' aes'>2( <ees' g'>4) r4 r \clef bass <ees g c'>4( <f aes b>2 <ees g c'>4)
 r4 r \clef treble <ees' g'>4( <f' aes'>2 <ees' g'>4)
 \clef bass r4 r <ees g c'>4( <f aes b>2 <ees g>4 <d f>2 <c ees>4 <b, d>) r4 r
 r4 r <b, d f aes>4( <c ees g>\staccato) r4 r r4 r <f, aes, d>4( <g, c ees>4\staccato) r4 r
 r4 r <g,, g,>4\ff\staccato <c, c>\staccato r4 r R2.
 \break
 
 des'2.\fp( ~ <ces' des'>2. ~ <bes des'>2. <aes ces'>2. <ges des'>2.)
 \clef treble <ces'' des''>2.\fp( ~ <bes' des''>2. <aes' ces''>2. <ges' des''>2.)
 <aes' bes'>2.\fp( ~ <ges' bes'>2. <f' aes'>2. <ees' ges'>2. <des' f'>2. <c' g'!>2. b2.)
 \clef bass << { c'4( g aes bes f g aes e f g d e f g a bes fis g a e f g d e) } \\ { c2.\p ~ c2. c2. ~ c2. c2. ~ c2. c2. ~ c2. } >>
 f8 c' a c' g c' f c' g c' a c' g c' a c' bes c' g c' a c' bes c' e c' g c' f c' e c' f c' g c' f c' g c' a c' f c' g c' a c'
 f8 c' a c' f c' f c' a c' f c' g c' bes c' g c' g c' bes c' g c' e c' g c' e c' e c' g c' e c' f c' g c' aes! c' f c' g c' aes c'
 g8 ees'! c' ees' g ees' g d' b d' g d'
 c8\f g ees g d g c g d g ees g d g ees g f g d g ees g f g b, g d g c g b, g c g d g c g d g ees g c g d g ees g
 c8 g ees g c g c g ees g c g d g f g d g d g f g d g b, g d g b, g b, g d g b, g
 r c_\markup { \italic "cresc." }[ b, c b, c]
 e,8( c f, c g, c f, c g, c aes, c fis, c g, c a, c) g, ees c ees g, ees g, d b, d g, d <c, c>4 r r R2.
 ees,8 c f, c g, c e, c f, c g, c f, c g, c aes, c fis, c g, c a, c
 g,( c b, c g, c aes, c b, c fis, c) g,( c b, c e, c f, c aes, c fis, c)
 g,4\staccato <g c' ees'>\staccato r r <aes c' ees'>\staccato r
 r <g c' ees'>\staccato r r <fis c' ees'>\staccato r r <g c' ees'>\staccato r R2. R2. <g,, g,>2.^\ff
 << { s4 g,2^\fp ~ g,2. s2. s2. } \\ { c,4( g, fis, f,! ees, d, \stemUp c, ees, g, g,, d, g,) } >>
 << { s4 g,2^\fp ~ g,2. s2. s2. } \\ { c,4( g, fis, f,! ees, d, \stemUp c, ees, g, g,, d, g,) } >>
 c,4( ees, g, g,, d, g, c,) r4 r <g,, b,, d, g,>4\ff r r <c, ees, g, c> r r
 R2.^\markup { \musicglyph #"scripts.ufermata" }
 \bar "|."
}
>>

 \layout {
 \context {
   \Staff
   \override VerticalAxisGroup #'minimum-Y-extent = #'(-5.0 . 5.0)
   fontSize = #-1 }
 }

 \midi { \tempo 4 = 164 }

}
