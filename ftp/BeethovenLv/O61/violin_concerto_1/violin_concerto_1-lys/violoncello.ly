\version "2.10.3"

 violoncello = {
 \set Staff.instrumentName = "Violoncello."
 \set Staff.midiInstrument = "cello"
 \clef bass
 \key d \major
 \time 4/4
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 a,8\f r a, r a, r a, r R1 a,8\f r a, r a, r a, r a,4\p a, r b, r cis r d r4 g, r2
 r4 a,4 r2 d16\p d d d d d d d d8 r8 r4
 R1 a,16 a, a, a, a, a, a, a, a,8 r r4 R1 d16 d d d d d d d d8 r r4 R1 R1
 a4_\markup { \italic "dimin." }( fis d b,) a,1\pp~ a,1 bes,16\ff bes, bes, bes, bes, bes, bes, bes, bes,8 r bes, r
 bes,8 r r4 r2 f16 f f f f f f f f8 r f r fis!4 r r2 g16 g g g g g g g g8 r r4 cis!16 cis cis cis cis cis cis cis cis8 r r4
 d16 d d d d8 r8 bes,16 bes, bes, bes, bes,8 r a,4 r4 r2
 r4 e16\sf f g a f8 r8 d16\sf e f d a,8 r8 r4 r2 r4 e16\sf f g a f8 r8 d16\sf e f d a,8 r8 r4 r2
 R1 R1 R1 d4\p^\markup { \italic "pizz." } r4 r2 R1 a,4 r4 r2 R1 d4 r4 r2 R1 g,4 r a, r d4 r r2^\markup { "arco" }
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { a8_\markup { \italic "sempre p" }[ bes a] g[ a g] f[ g f] e[ f e] d[ cis d] e[ d e] f[ g f] d[ e d]
 e[ f e] d[ e d] cis[ b, cis] d[ cis d] cis[ d cis] a,[ cis e] a[ a a] a[ a a]
 a[ bes a] g[ a g] f[ g f] e[ f e] d[ e d] e[ f e] f[ g f] d[ e f] g[ a g] f[ g f] e[ f e] c[ d e]
 f[ c a,] f,[ a, c] f[ f f] f[ f f]
 ees[ f ees] d[ ees d] cis![ d cis] a,[ b,! cis] d[ f a] d'[ a f] d[ e! d] c[ d c]
 \setTextCresc bes,\<[ d g] bes[ bes bes] c[ e g] c'[ c' c'] f[ c a,] f,[ a, c] f[ f f] f[ f f] g,[ bes, e] g[ g g] a,\!\f[ cis! e] a\sf[ a a] }
 R1 fis,!4\pp\staccato( fis,\staccato fis,\staccato fis,\staccato) g,1 fis,4\staccato( fis,\staccato fis,\staccato fis,\staccato) g,1
 \setTextCresc fis,8\< fis fis fis fis fis fis fis fis fis fis fis fis fis fis fis g,\!\f g g g g g g g g,\f g g g g g g g
 fis,8\ff fis fis fis fis8 r8 r4 g,8 g g g g4 r4 a,4\f r a,\f r a,\f r a,\f r d4\ff r r2 R1
 a,2( cis4 e g gis a g8 e) d4 r4 r2 R1 a,2( cis4 e g gis a\sf g8 e) d4( fis a\sf g8 e) d4( fis a2\sf\>)~ a4\!\p g( e cis) a,1~
 a,1~ a,1 a,4\f r r2 a,4\f r r2 a,4\p r r2 R1 R1 R1 R1 R1 R1 a,1\p d4 r4 r2 R1 R1 R1
 R1 R1 R1 R1 R1 R1 a,8\sfz r a, r a, r a, r R1 a,8\sfz r a, r a, r a, r a,4\p a, r b, r cis r d r4 g, r2 r4 a, r2
 d16\p d d d d d d d d8 r8 r4 R1 a,16 a, a, a, a, a, a, a, a,8 r8 r4 R1
 d16\f d d d d d d d d8 r r4 R1 a,16 a, a, a, a, a, a, a, a,8 r r4 R1 d16\p d d d d d d d d8 r r4 R1
 c16 c c c c c c c c8 r r4 R1 f16 f f f f f f f f2~ f1~ f1~ f1 e4 r r2 r4 r8 e8 a4 r8 a8 e4 r r2
 r4 r8 e8 a[ a] r a e4\f r8 a, e4 r8 a, e4 r r2 R1 R1 R1 R1 a4\p^\markup { "pizz." } r r2 R1 e4 r r2 R1 a4 r r2 R1
 d4 r e r a, r r2 a,4 r a, r a, r r a gis a e a e4 r r2 a,4 r a, r a, r r a f r g! r c r r2
 d4 r e r a, a r g! \setTextCresc f4\< r g r c r r2 d4 r e\!\f r R1
 cis'!4\p\staccato( cis'\staccato cis'\staccato cis'\staccato) d'1
 cis'4\staccato( cis'\staccato cis'\staccato cis'\staccato) d'1
 \set crescendoText = \markup { \italic "poco cresc." }
 \set crescendoSpanner = #'dashed-line cis'4\< cis' r cis' r cis' r cis' d8[ d d d] d4 r r8 d8[ d d] d4 r cis4\!\f r r2
 d4\f r r2 e4\f r e r e r e r a,4\p r r2 R1 e,2( gis,4 b, d dis e d8 b,) a,4 r r2 R1 e,2( gis,4 b, d dis e d8 b,)

 a,4( cis fis e8 cis) b,4( fis a g!8 e) d4( fis a g8 e) d4 r d r e r e r a4_\markup { \italic "poco cresc." } r e r
 a4 r fis r b r a r d r a, r d4\f r r2 R1 dis4\f r r2 R1
 e4\p r4 r2 R1 R1 R1 R1 R1 R1 R1 f,1\pp R1 R1 g,8\pp r g, r g, r g, r c4 c r a, r d r f e4 r r2 R1 R1 R1 R1 R1
 R1 R1 R1 R1 e1_\markup { \italic "cresc." } f16\ff f f f f f f f f8 r f r f8 r r4 r2 c16 c c c c c c c c8 r c r cis!8 r r4 r2
 d16 d d d d d d d d8 r r4
 gis,16 gis, gis, gis, gis, gis, gis, gis, gis,8 r r4 a,16 a a a a8 r f,16 f f f f8 r e8 r r4 r2
 r4 b,16\sf c d e c8 r a,16\sf b, c a, e8 r r4 r2 r4 b,16\sf c d e c8 r a,16\sf b, c a, e8 r r4 r2 R1 R1 R1
 a,4\p^\markup { "pizz." } r4 r2 R1 e4 r r2 R1 a,4 r r2 R1 d4 r e r a,4 r r2
 a,2\ff^\markup { "arco." } a,2 a,1 gis,4( a, e, a,) e,1 a,2 a,2
 a,1 f,2 g,!2 c1 d2 e2 a,4_\markup { \italic "sempre ff" }( a2 g!4) f2 g2 c1 d2 e2 R1
 cis!4\staccato_\markup { \italic "sempre f" }( cis\staccato cis\staccato cis\staccato) d1
 cis4\staccato( cis\staccato cis\staccato cis\staccato) c8[ c c c] c[ c c c]
 c8[ c c c] c[ c c c] c8\sf[ c c c] c[ c c c] c\sf[ c c c] c[ c c c] c8[ c c c] c4 r f,8[ f f f] f4 r4 g,4 r g, r g, r g, r
 c4_\markup { \italic "sempre f" } r4 r2 R1 g,2( b,4 d f fis g f8 d) c4 r r2 R1 g,2( b,4 d f4 fis g\sf f8 d)
 c4( e g\sf f8 d) c4( e g2\sf\>)~ g4\!( f4 d b,) g,1~ g,1~ g,1 g,4\f r r2 g,4\f r r2 g,4\p r r2 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 g,1\p fis,8 r fis, r fis, r fis, r fis,1~ fis,1~ fis,1~ fis,4 r r2 b,1~ b,1~ b,1 b,8 r b, r b, r b, r e4 r r2
 e8 r e r e r e r a,4 r r2 a,8 r a, r a, r a, r d4 r r2
 d8 r d r d r d r g,4 r g,8[ g, g, g,] g,4 r g,8[ g, g, g,] c4 r c8[ c c c] c4 r c8[ c c c]
 r4 d8 d r4 d8 d r4 c8 c r4 c8 c bes,4 r g,8[ g, g, g,] g,4 r g,8[ g, g, g,] c4 r c8[ c c c] c4 r c8[ c c c]
 d4_\markup { \italic "cresc." } r r2 d4 r r2 d4\f r r2 R1 R1

 R1 g,1\pp bes,1 a,1 d, g, g f1_\markup { \italic "cresc." } bes,\pp ees g f bes, ees ees
 cis!_\markup { \italic "cresc." } a,\pp d1 f e! a, d2 r4 d d2 r4 d cis!2 r4 cis c2 r4 c
 b,!4\staccato( b,\staccato b,\staccato b,\staccato) bes,4 bes, bes, bes, a,1\pp~ a,~ a, ~ a,~ a,8 r r4 r2 R1
 r4 cis8^\markup { "pizz." } r cis r cis r r2 r4 a,8\f^\markup { "arco" } r8
 d8\ff r d r d r d r d1\sf~ d2. d4_\markup { "sempre ff" }( g fis e d) a,8 r a, r a, r a, r a,1~ a,2. a,4 a,4 a, a, a, d a, d r
 R1 a,8 r a, r a, r a, r R1 a,8 r a, r a, r a, r a,4_\markup { "sempre f" } a, r b, r cis r d g,4 r r2
 a,4 r r2 d16 d d d d d d d d8 r r4 R1 a,16 a, a, a, a, a, a, a, a,8 r r4 R1 d16\p d d d d d d d d8 r r4
 R1 a,16 a, a, a, a, a, a, a, a,8 r r4 R1 d16 d d d d d d d d8 r r4 R1 R1 r4 b4( g e) d1 d1 g,4 r r2 d'4\p( b g e) d1~ d1
 dis16 dis dis dis dis dis dis dis dis8 r r4 R1 e16 e e e e e e e e8 r r4 R1
 a,2~ a,8([ b, cis d] e[ fis g a] b[ cis') a,\staccato a,\staccato] bes,1~ bes,1 a,4 r r2
 r4 r8 a, d4 r8 d a,4 r r2 r4 r8 a, d d r d a,4\f r8 d a,4 r8 d a,4 r r2 R1
 R1 R1 R1 d4\p^\markup { "pizz." } r4 r2 R1 cis4 d a, d a,4 r r2 d4 r r2
 R1 g,4 r a, r d4 r r2 d4 r d r d r r2 cis4 d a, d a,4 r r2 d4 r d r d r r d bes, r c r f, r r f,
 g,4 r a, r d d' r c' \setTextCresc bes4\< r c' r f r r f g, r a,4\!\f r4
 R1 \clef tenor fis'4\p\staccato( fis'\staccato fis'\staccato fis'\staccato) g'1
 fis'4\staccato( fis'\staccato fis'\staccato fis'\staccato) g'1
 \set crescendoText = \markup { \italic "poco cresc." }
 \set crescendoSpanner = #'dashed-line
 fis'4\< fis' r fis' r fis' r fis' \clef bass g8[ g g g] g4 r r8 g[ g g] g4 r fis4\f r r2 g,4 r r2
 a,4 r a, r a, r a, r d4\p r r2 R1 a,2( cis4 e g gis a g8 e) d4 r r2 R1 a,2( cis4 e g gis a g8 e)
 d4( fis b a8 fis) e4( b d' c'8 a) g4( b d' c'8 a) g4 r g r a4 r a, r
 \set crescendoText = \markup { \italic "poco cresc." }
 \set crescendoSpanner = #'dashed-line
 d4\< r4 a, r d r b, r e r d r g r d\! r g4\f r r2 R1 gis,4 r r2 R1 a,4\p r r2 R1 R1
 R1 R1 R1 R1 R1 bes,1\pp R1 R1 c8\pp r c r c r c r f4 f r d r g r bes a4 r r2 R1 R1 R1 R1
 R1 R1 R1 R1 a,1_\markup { \italic "cresc." }
 bes,16\ff bes, bes, bes, bes, bes, bes, bes, bes,8 r bes, r bes,4 r r2 f16 f f f f f f f f8 r f r fis!4 r r2
 g16 g g g g g g g g8 r r4 cis!16 cis cis cis cis cis cis cis cis8 r r4 d16 d d d d8 r bes,16 bes, bes, bes, bes,8 r
 a,4 r4 r2 r4 e16\sf f g a f8 r8 d16\sf e f d a,8 r8 r4 r2 r4 e16\sf f g a f8 r8 d16\sf e f d
 a,8 r8 d16 e f d e8 r e16 f g e f8 r fis,!16\ff g, a, fis, g,8 r gis,16 a, b, gis, a,2^\trill^\fermata r2^\fermata
 d4\p^\markup { "pizz." } r4 r2 d4 r r2 cis4 d a, d a,4 r r2 d4 r r2 d4 r r2
 g,4 r a, r d4 r r2 g,4 r a, r d4 r r2 g,4_\markup { \italic "dimin." } r r2 a,4 r r2 R1 R1
 a,2( cis4 e g gis a g8 e) d4 r r2 R1 a,2( cis4 e g gis a g8 e) \setTextCresc d4\<( fis a g8 e) d4( fis a g8 e)
 d4( fis a\!\f g8 e) d4\ff r d r d4 r r2 \bar "|."
}