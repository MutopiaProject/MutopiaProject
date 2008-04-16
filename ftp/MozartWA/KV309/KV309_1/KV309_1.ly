\version "2.10.3"

 \header {
  title = "Piano Sonata in C Major - KV 309 (1st Part)"
  composer = "Wolfgang Amadeus Mozart"
  mutopiatitle = "Piano Sonata in C Major - KV 309 (1st Part)"
  mutopiacomposer = "MozartWA"
  mutopiainstrument = "Piano"
  mutopiaopus = "KV 309"
  date = "1777"
  source = "Breitkopf & Hartel (1877-83)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2007/April/06"
  version = "2.10.3"
 footer = "Mutopia-2008/04/16-1379"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \new PianoStaff
 <<
 \new Staff = "up" {
 \clef treble
 \key c \major
 \time 4/4
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 146
 \cadenzaOn \override NoteHead #'font-size = #-2 c'32[ e' g']
 \override NoteHead #'font-size = #0 c''2\f^\markup { \large "Allegro con spirito." } g' \cadenzaOff \bar "|"
 e''4.( f''16 d'' c''4) r4 g''4\p g'' r a'' g''16([ f''8.]) f''4 r g'' f''16([ e''8.]) e''4 r g''8([ e''])
 cis''8( d'' f'' e'' cis'' d'' f'' e'' cis'' d'' f'' a'' g'' e'' f'' d'')
 \cadenzaOn \override NoteHead #'font-size = #-2 c'32[ e' g']
 \override NoteHead #'font-size = #0 c''2\f g' \cadenzaOff \bar "|" e''4.( f''16 d'' c''4) r4
 g''4\p g'' r a'' g''16([ f''8.]) f''4 r8 fis''([ a'' g'']) f''!16([ e''8.]) e''4 r8 e''8[ g'' e'']
 cis''4.\sf( d''16 e'' d''4) r8 f'' e''4.\sf( f''16 g'' f''4) r4
 <c'' c'''>8\f <c'' c'''> <c'' c'''>2 b''8\p( a'') <c'' g''>8\f <c'' g''> <c'' g''>2 f''8\p( e'')~
 e''16( d'' f'' e'' g'' f'' e'' d'' c''4) \afterGrace b'4^\trill { a'16[ b'] }
 <c'' c'''>8\f <c'' c'''> <c'' c'''>4. d'''16\p( c''' b''8\staccato) a''\staccato
 <c'' g''>8\f <c'' g''> <c'' g''>4. a''16\p( g'' f''8\staccato) e''8~
 e''16( d'' a'' gis'' b'' a'' g'' f'' e''4) \afterGrace d''4^\trill { c''16[ d''] }
 c''4\fp r8 \acciaccatura d''32 c''16( b') \setTextCresc c''8\<\staccato dis''\staccato e''\staccato fis''\staccato
 g''\staccato b''\staccato c'''\staccato dis'''\staccato e'''4\! r4 <d''! g'' d'''!>4\fp\arpeggio r8 \acciaccatura c''32 b'16( a')
 \setTextCresc b'8\<\staccato cis''\staccato d''\staccato fis''\staccato g''\staccato ais''\staccato b''\staccato cis'''\staccato d'''4\! r4
 <c''! fis'' c'''!>4\fp\arpeggio r8 \acciaccatura b'32 a'16( gis')
 \setTextCresc a'8\<\staccato b'\staccato c''\staccato eis''\staccato fis''\staccato gis''\staccato a''\staccato b''\staccato c'''4\! r4
 c'''16\f( b'' a'' g'') g''( fis'' e'' d'') \grace { d''32[ fis'' a''] } c'''2\sf c'''16( b'' a'' g'') g''( fis'' e'' d'') \grace { d''32[ fis'' a''] } c'''2\sf
 b''16\f( a'' c''' b'' d'''8) fis''\staccato g''16( fis'' a'' g'' b''8) dis''\staccato
 e''16( dis'' fis'' e'' g''8) b'\staccato c''16( b' d'' c'' e''8) gis'\staccato a'8.[ b'16 c''8. b'16] a'8.[ g'!16 fis'8. e'16]
 d'8( fis'16 a' d''8\staccato) d''\staccato d''4 r4 R1 R1 b''8\p\staccato c'''\staccato d'''\staccato b''\staccato g''2
 a''8\staccato b''\staccato c'''\staccato a''\staccato fis''2 g''16( fis''8) r16 e''16( d''8) r16 b'16( c''8) r16 r4
 c''16( b'8) r16 a'16( g'8) r16 b'16( a'8) r16 r4
 b''8\staccato c'''\staccato d'''\staccato b''\staccato g''2 a''8\staccato b''\staccato c'''\staccato a''\staccato fis''2
 g''16( fis''8) r16 e''16( d''8) r16 b'16( c''8) r16 r4 c''16( b'8) r16 a'16( g'8) r16 e''16( d''8) r16 r4
 <d'' d'''>2\f c'''8\staccato( b''\staccato a''\staccato g''\staccato) <e'' e'''>2 d'''8\staccato( c'''\staccato b''\staccato a''\staccato)
 b''16\p( c''' d''' b'' g''8\staccato) r8 a''16( b'' c''' a'' fis''8\staccato) r8
 <d'' d'''>2\f c'''16( d''' c''' b'' a'' b'' a'' g'') <e'' e'''>2 d'''16( e''' d''' c''' b'' c''' b'' a'' b''8 g'') c'''4\sf b''8( g'') e'''4\sf
 d'''8( g'') c'''4\sf b''8( g'') e'''4\sf <f''! f'''!>2\f <f'' f'''>4 <f'' f'''>
 <e'' e'''>8([ d'''\staccato]) c'''^\prall([ b''\staccato]) a''^\prall([ g''\staccato]) fis''^\prall([ e''\staccato])
 d''8( e''16 fis'' g'' a'' b'' c''' d''' c''' b'' c''' d''' b'' a'' g'') \afterGrace a''1 \startTrillSpan { g''16[ \stopTrillSpan a''] }
 g''4 r8 b'8\p( d'' c'') r a'( c'' b') r g'( b' a') r fis'( a' g') b'16\f( c'' d'' b' c'' d'' e'' c'' a'' b'' c''' a''
 b'' c''' d''' b'') g'( a' b' g' a' b' c'' a' fis'' g'' a'' fis'' g''4) <d'' g'' b''>4\arpeggio <b' d'' g''>4\arpeggio r4 \bar "|."

 \cadenzaOn \override NoteHead #'font-size = #-2 g32[ bes d']
 \override NoteHead #'font-size = #0 g'2\f d' \cadenzaOff \bar "|" bes'4.( c''16 a' g'4) r4 d''4.\p( ees''16 c'' bes'4) r4
 bes''4.\pp( c'''16 a'' g''4) r4 r4 g''4\p( d''' e'''!) d'''2( cis'''4) r4 r8 r16 g''16 g''8.^\trill([ fis''32 g''] d'''4 e''') d'''2( cis'''4) r4
 \clef bass \cadenzaOn \override NoteHead #'font-size = #-2 d32[ f a]
 \override NoteHead #'font-size = #0 d'2\f a \cadenzaOff \bar "|" \clef treble f'4.( g'16 e' d'4) r4
 r8 r16 d''16 d''8.^\trill([ cis''32 d''] a''4 b''!) a''2( gis''4) r4 r8 a''8([ d''' cis'''] e'''[ d''' c''' b'']) a''2( \grace { b''32[ a''] } gis''4) r4
 <c'' c'''>2\f <a' a''> dis'''4.( e'''16 dis''' e'''4) r4 <bes' bes''>2 <g' g''>2 cis'''4.( d'''16 cis''' d'''4) r4
 b''!4.( c'''!16 b'' c'''4) r4 gis''4.( a''16 gis'' a''4) r4 r8 a''8\staccato[ c'''\staccato fis''\staccato]
 a''8\staccato[ dis''\staccato fis''\staccato c''\staccato] dis''\staccato[ a'\staccato c''\staccato fis'\staccato]
 a'\staccato[ dis'\staccato fis'\staccato a\staccato]
 \new Voice { \change Staff = "down" \stemUp c'8\staccato[ fis\staccato a\staccato dis\staccato] e4 } <b' d''! e'' gis''>4
 <c'' e'' a''>4 r8 c''8\p( e'' d'') r b'( d'' c'') r a'( c'' b') r gis'( b' a') c''16\f( d'' e'' c'' d'' e'' f'' d'' b' c'' d'' b'
 c'' d'' e'' c'' a' b' c'' a' b' c'' d'' b' gis' a' b' gis')
 \cadenzaOn \override NoteHead #'font-size = #-2 a32[ c' e']
 \override NoteHead #'font-size = #0 a'2 e' \cadenzaOff \bar "|" c''4.( d''16 b' a'4) r4
 e''4.\p( f''16 d'' c''4) r4 c'''4.\pp( d'''16 b'' a''4) r4
 \cadenzaOn \override NoteHead #'font-size = #-2 b32\f[ d' g'] \override NoteHead #'font-size = #0 b'2 g' \cadenzaOff \bar "|"
 d''4.( e''16 c'' b'4) r4 f''!4.\p( g''16 e'' d''4) r4 d'''4.\pp( e'''16 c''' b''4) r
 \cadenzaOn \override NoteHead #'font-size = #-2 c'32\f[ e' g'] \override NoteHead #'font-size = #0 c''2 g' \cadenzaOff \bar "|"
 e''4.( f''16 d'' c''4) r4 g''4\p g'' r a'' g''16([ f''8.]) f''4 r g'' f''16([ e''8.]) e''4 r g''8([ e''])
 cis''8( d'' f'' e'' cis'' d'' f'' e'' cis'' d'' f'' a'' g'' e'' f'' d'')
 \cadenzaOn \override NoteHead #'font-size = #-2 c'32\f[ ees' g'] \override NoteHead #'font-size = #0 c''2 g' \cadenzaOff \bar "|"
 ees''4.( f''16 d'' c''4) r4 fis''16\p( g''8.) g''4 r8 c''8( c''' aes'' g'' fis'' f''4) r8 f''8( aes'' g'' f'' e''!) des'''2\fp( e''4)
 g''4( f'') r8 f''( c''' aes'' g'' fis'') ees'''2\fp( fis''4) a''!8\pp( g'' fis'' g'' fis'' g'' fis'' g'' fis'')
 <g' g''>([ <fis' fis''> <g' g''>] <gis' gis''> <a' a''> <bes' bes''> <b' b''>) <c'' c'''>8\f <c'' c'''> <c'' c'''>2 b''8\p( a'')
 <c'' g''>8\f <c'' g''> <c'' g''>2 f''8\p( e''~ e''16 d'' f'' e'' g'' f'' e'' d'' c''4) \afterGrace b'4^\trill { a'16[ b'] }
 <c'' c'''>8\f <c'' c'''> <c'' c'''>4. d'''16\p( c''') b''8\staccato a''\staccato
 <c'' g''>8\f <c'' g''> <c'' g''>4. a''16\p( g'') f''8\staccato e''(~ e''16 d'' a'' gis'' b'' a'' g'' f'' e''4) \afterGrace d''4^\trill { c''16[ d''] }

 c''4\fp r8 \appoggiatura d''32 c''16( b') \setTextCresc c''8\staccato\< dis''\staccato e''\staccato fis''\staccato
 g''8\staccato b''\staccato c'''\staccato dis'''\staccato e'''4\! r4
 <d''! g'' d'''!>4\fp\arpeggio r8 \appoggiatura c''32 b'16( a') \setTextCresc b'8\staccato\< cis''\staccato d''\staccato fis''\staccato
 g''8\staccato ais''\staccato b''\staccato cis'''\staccato d'''4\! r4
 <c''! fis'' c'''!>4\fp\arpeggio r8 \appoggiatura b'32 a'16( gis') \setTextCresc a'8\staccato\< b'\staccato c''\staccato eis''\staccato
 fis''8\staccato gis''\staccato a''\staccato b''\staccato c'''4\! r4
 b''16\f( a'' c''' b'' d'''8) fis''\staccato g''16( fis'' a'' g'' b''8) dis''\staccato e''16( dis'' fis'' e'' g''8) b'\staccato
 c''16( b' d'' c'' e''8) a'\staccato b'16( a' c'' b' d''8) fis'\staccato g'16( fis' a' g' b'8) d'\staccato
 e'8.[ d'16 c'8. b16] c'8.[ a16 g8. fis16] g8( b16 d' g'8\staccato) g'\staccato g'4 r4
 fis''8\p( g'' fis'' g'' fis'' g'' fis'' g'' f''!_\markup { \italic "cresc." } g'' e'' g'' f'' g'' d'' g''
 c''8 g'' c'' g'' e'' g'' e'' g'' f'' g'' f'' g'' d'' g'' d'' g'' e'' g'' c'' g'' b' g'' d'' g'' c'' g'' c'' a'' b' d'' fis'' g'')
 e''8\staccato f''!\staccato g''\staccato e''\staccato c''2 d''8\staccato e''\staccato f''\staccato d''\staccato b''2
 c'''16( b''8.) a''16( g''8.) e''16( f''8.) r4 f''16( e''8.) d''16( c''8.) a''16( g''8.) r4
 <g' g''>2\f f''8\staccato( e''\staccato d''\staccato c''\staccato) <a' a''>2 g''8\staccato( f''\staccato e''\staccato d''\staccato)
 e''16\p( f'' g'' e'' c''8\staccato) r8 d''16( e'' f'' d'' b'8\staccato) r8 <g' g''>2\f f''16( g'' f'' e'' d'' e'' d'' c'')
 <c'' c'''>2 b''16( c''' b'' a'' g'' a'' g'' f'' e''8 c'') f''4\sf e''8( c'') a''4\sf g''8( c'') f''4\sf e''8( c'') a''4\sf
 <bes' bes''>2\f <bes' bes''>4 <bes' bes''> <a' a''>8( g''\staccato) f''^\prall( e''\staccato) d''^\prall( c''\staccato) b'!^\prall( a'\staccato)
 g'8( a'16 b' c'' d'' e'' f'' fis'' g'' a'' g'' f'' e'' d'' c'') \afterGrace d''1 \startTrillSpan { c''16[ \stopTrillSpan d''] }
 c''4 r8 e''8\p( g'' f'') r d''( f'' e'') r c''( e'' d'') r b'( d'' c'') e''16\f( f'' g'' e'' f'' g'' a'' f'' d'' e'' f'' d''
 e''16 f'' g'' e'' c'' d'' e'' c'' d'' e'' f'' d'' b' c'' d'' b')
 \cadenzaOn \override NoteHead #'font-size = #-2 c'32[ e' g'] \override NoteHead #'font-size = #0 c''2 g' \cadenzaOff \bar "|"
 e''4.( f''16 d'' c''4) d''16( f'' g'' b'' c'' e'' g'' c''' d'' f'' g'' b'' c'' e'' g'' c''' d'' f'' g'' b'') <e'' c'''>4 <e' g' c''> <e' g' c''> r \bar "|."
}

 \new Staff = "down" {
 \clef bass
 \key c \major
 \time 4/4
 \cadenzaOn s32 s32 s32 <c, c>2\f <g,, g,> \cadenzaOff \bar "|" e4.( f16 d c4) r4 \clef treble
 e'8\p( g' e' g' cis' g' cis' g' d' g' d' g' b g' b g' c'! g' c' g' e' g' e' g') <f' a'>1 \clef bass
 r4 <f a d'> <g c' e'> <g b d'>
 \cadenzaOn s32 s32 s32 <c, c>2\f <g,, g,> \cadenzaOff \bar "|" e4.( f16 d c4) r4 \clef treble
 e'8\p( g' e' g' cis' g' cis' g' d' g' d' g' b g' b g' c'! g' c' g' e' g' e' g')
 \set doubleSlurs = ##t <g' bes'>2\sf( <f' a'>4) r4 <g' bes'>2\sf( <a' c''>4) r4 \set doubleSlurs = ##f \clef bass
 a8( c' a c' f c' f c' e c' e c' c c' c c' f a f d') g( e') g( d') a8( c' a c' f c' f c' e c' e c' c c' c c' f c' f d') g( c') g( b)
 <c' e'>8[ <c' e'> <c' e'> <c' e'>] <c' e'>[ <c' e'> <c' e'> <c' e'>] <c' e'>[ <c' e'> <c' e'> <c' e'>] <c' e'>[ <c' e'> <c' e'> <c' e'>]
 <b d'>[ <b d'> <b d'> <b d'>] <b d'>[ <b d'> <b d'> <b d'>] <b d'>[ <b d'> <b d'> <b d'>] <b d'>[ <b d'> <b d'> <b d'>]
 <fis a d'>[ <fis a d'> <fis a d'> <fis a d'>] <fis a d'>[ <fis a d'> <fis a d'> <fis a d'>]
 <fis a d'>[ <fis a d'> <fis a d'> <fis a d'>] <fis a d'>[ <fis a d'> <fis a d'> <fis a d'>]
 g8\f d' a d' fis d' d d' g d' a d' fis d' d d' <g d'>4\f r <b d'> r <c' g'> r <e' g'> r a8.[ b16 c'8. b16] a8.[ g!16 fis8. e16]
 d8( fis16 a d'8\staccato) d'\staccato d'4 r4 cis'8_\markup { \italic "legato" } d' cis' d' cis' d' cis' d'
 c'!8_\markup { \italic "decresc." } d' b d' c' d' a d' g\p d' g d' b d' b d' c' d' c' d' a d' a d' b d' g d' a d' fis d'
 g8( d' e cis' d d') c'\staccato a\staccato g8( d' g d' b d' b d' c' d' c' d' a d' a d' b d' g d' a d' fis d' g d' e cis' d d' c! c'!)
 b,16\f( g fis g a g fis g b,4) r4 c16( g fis g a g fis g c4) r4 d8\p( g b g d a c' a)
 b,16\f( g fis g a g fis g b,4) r4 c16( g fis g a g fis g c4) r4 \clef treble d'8( g' e' g' d' g' c' g') b8( g' e' g' d' g' c' g')
 <b d' gis'>8[ <b d' gis'> <b d' gis'> <b d' gis'>] <b d' gis'>[ <b d' gis'> <b d' gis'> <b d' gis'>] <c' e' a'>4 r4 r2
 \clef bass d16( b g! b d b g b d b g b d b g b d c' fis c' d c' fis c' d c' fis c' d c' fis c')
 <g b>4 \clef treble g'4\p\staccato a'\staccato fis'\staccato g'\staccato e'\staccato c'\staccato d'\staccato
 b4\staccato \clef bass <g, g>\f\staccato <a, a>\staccato <fis, fis>\staccato <g, g>\staccato <e, e>\staccato <c, c>\staccato
 <d, d>\staccato g,4 <g, g> <g, g> r4 \bar "|."

 \cadenzaOn s32 s32 s32 <g,, g,>2\f d, \cadenzaOff \bar "|" bes,4.( c16 a, g,4) r4 \clef treble bes'4.\p( c''16 a' g'4) r4
 d''4.\pp( ees''16 c'' bes'4) r4 <bes d'>8\p[ g' <bes d'> g'] <bes d'>[ g' <bes d'> g']
 <a e'!>[ g' <a e'> g'] <a e'>[ g' <a e'> g'] <bes d'>[ g' <bes d'> g'] <bes d'>[ g' <bes d'> g']
 <a e'>[ g' <a e'> g'] <a e'>[ g' <a e'> g']
 \clef bass \cadenzaOn s32 s32 s32 d,2\f a, \cadenzaOff \bar "|" f4.( g16 e d4) r4
 << { a8\p([ d' a d'] a[ d' a d'] b![ d' b d'] b[ d' b d'] a[ d' a d'] a[ d' a d'] b[ d' b d'] b[ d' b d']) } \\ { f4 f f f e e e e f f f f e e e e } >>
 a16_\markup { \italic "legato" } e' c' e' a e' c' e' a f' c' f' a f' c' f' a fis' c' fis' a fis' c' fis' gis e' b e' gis e' b e'
 g!16 d' bes d' g d' bes d' g ees' bes ees' g ees' bes ees' g e'! bes e' g e' bes e' fis d' a d' fis d' a d'
 f! d' aes d' f d' aes d' e c' g c' e c' g c' d b f b d b f b c a! e a c a e a <dis, dis>4 r4 r2
 r8 a\staccato[ c'\staccato fis\staccato] a\staccato[ dis\staccato fis\staccato a,\staccato]
 \new Voice { \stemDown c8\staccato[ fis,\staccato a,\staccato dis,\staccato] e,4 } <e, e>4
 <a, a>4 \clef treble a'4\p\staccato b'\staccato gis'\staccato a'\staccato f'!\staccato d'\staccato e'\staccato
 c'4\staccato \clef bass <a, a>4\f <b, b> <gis, gis> <a, a> <f, f> <d, d> <e, e>
 \cadenzaOn s32 s32 s32 <a,, a,>2 e, \cadenzaOff \bar "|" c4.( d16 b, a,4) r4
 \clef treble c''4.\p( d''16 b' a'4) r4 e''4.\pp( f''16 d'' c''4) r4
 \clef bass \cadenzaOn s32 s32 s32 <b,, b,>2 <g,, g,>2 \cadenzaOff \bar "|" d4.( e16 c b,4) r \clef treble d''4.\p( e''16 c'' b'4) r
 f''4.( g''16 e'' d''4) r4 \clef bass \cadenzaOn s32 s32 s32 <c, c>2 <g,, g,> \cadenzaOff \bar "|" e4.( f16 d c4) r4
 \clef treble e'8( g' e' g' cis' g' cis' g' d' g' d' g' b g' b g' c'! g' c' g' e' g' e' g') <f' a'>1 \clef bass r4 <f a d'> <g c' e'> <g b d'>
 \cadenzaOn s32 s32 s32 <c, c>2 <g,, g,> \cadenzaOff \bar "|" ees4.( f16 d c4) r
 \clef treble ees'8\p( g' ees' g' c' g' c' g' d' g' d' g' b g' b g') <bes des'>( g' <bes des'> g' <bes des'> g' <bes des'> g'
 <aes c'> e'! <aes c'> f' <aes c'> f' <aes c'> f') <c' ees'>( aes' <c' ees'> aes' <c' ees'> aes' <c' ees'> aes') <b! d'>4 r4 r2 R1
 \clef bass a!8( c' a c' f c' f c' e! c' e c' c c' c c' f a f d') g( e') g( d') a( c' a c' f c' f c' e c' e c' c c' c c' f c' f d') g( c') g( b)
 <c' e'>8\fp <c' e'> <c' e'> <c' e'> <c' e'> <c' e'> <c' e'> <c' e'> <c' e'>8 <c' e'> <c' e'> <c' e'> <c' e'> <c' e'> <c' e'> <c' e'>
 <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <b d'>
 <fis a d'> <fis a d'> <fis a d'> <fis a d'> <fis a d'> <fis a d'> <fis a d'> <fis a d'>
 <fis a d'> <fis a d'> <fis a d'> <fis a d'> <fis a d'> <fis a d'> <fis a d'> <fis a d'> <g d'>2\f <g b>2 <g c'> <g fis'>
 <g g'>4 r8 fis8\staccato g16( fis a g b8) d\staccato e8.[ d16 c8. b,16] c8.[ a,16 g,8. fis,16] g,8( b,16 d g8\staccato) g\staccato g4 r4
 R1 R1 \clef treble e'8\staccato f'\staccato g'\staccato e'\staccato c'2 d'8\staccato e'\staccato f'\staccato d'\staccato b2
 d'16( c'8) r16 f'16( e'8) r16 cis'16( d'8) r16 r4 f'16( e'8) r16 g'16( fis'8) r16 a'16( g'8) r16 r4
 \clef bass c8( g c g e g e g f g f g d g d g e g c g d g b, g c g a, fis g, g f,! f!)
 e,16\f( c b, c d c b, c e,4) r4 f,16( c b, c d c b, c f,4) r4 g,8\p( c e c g, d f d) e16( c' b c' d' c' b c' e4) r4 a16( f' e' f' g' f' e' f' a4) r4
 g8( c' a c' g c' f c' e c' a c' g c' f c') <e g cis'>8 <e g cis'> <e g cis'> <e g cis'> <e g cis'> <e g cis'> <e g cis'> <e g cis'>
 <f a d'>4 r4 r2 g16( e' c'! e' g e' c' e' g e' c' e' g e' c' e' g f' b f' g f' b f' g f' b f' g f' b f')
 <c' e'>4 \clef treble c''4\p\staccato d''\staccato b'\staccato c''\staccato a'\staccato f'\staccato g'\staccato
 e'4\staccato \clef bass <cis cis'>4\f <d d'> <b, b> <c! c'!> <a, a> <f, f> <g, g>
 \cadenzaOn s32 s32 s32 <c, c>2 g, \cadenzaOff \bar "|" e4.( f16 d c4) <g, g>
 <c c'>4 <g, g> <c c'> <g, g> <c c'> <c, c> <c, c> r4 \bar "|."
}
>>

 \layout { }

 \midi { }

}
