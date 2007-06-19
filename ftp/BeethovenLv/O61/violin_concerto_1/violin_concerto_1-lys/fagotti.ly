\version "2.10.3"

 fagotti = {
 \set Staff.instrumentName = "Fagotti."
 \set Staff.midiInstrument = "bassoon"
 \clef bass
 \key d \major
 \time 4/4
 R1 << { d'1\p_\markup { \italic "    dolce" }~ d'2. } \\ { d'1~ d'2. } >> <d d'>4( <g b> <fis a> <e g> <d fis>)
 << { a4 } \\ { a4 } >> r4 r2
 << { a1~ a1\sf\>~ a4\p a a } \\ { a1_\markup { \italic "cresc." }~ a1~ a4 a a } >> <a cis'>4 <a cis'>2( <a d'>4) r4 R1
 R1 R1 R1 R1 R1 R1 R1 << { d2_\markup { \italic "dolce" }~d8( e fis g a b cis' d' e' fis') d\staccato[ d\staccato] } \\
 { R1 R1 } >> <cis e>2_\markup { \italic "dolce" }~ <cis e>8( <d fis> <e g> <fis a> <g b> <a cis'>
 \clef tenor <b d'> <cis' e'> <d' fis'> <e' g'>) \clef bass <cis e>8\staccato[ <cis e>\staccato]
 \setTextCresc <d fis>2\<~ <d fis>8( <e g> <fis a> <g b> \clef tenor <a cis'> <b d'> <cis' e'> <d' fis'>
 <e' g'> <fis' a'>) <fis' a'>\staccato <fis' a'>\!\staccato <fis' a'>1\f~ <fis' a'>4
 << { fis'4( d' b) } \\ { fis'4_\markup { \italic "dimin." }( d' b) } >>
 \clef bass a2\pp( <d fis> <cis e> <e g>) <d f>2\ff <d f>8 r <d f> r <d f>8 r r4 r2
 <f a>2 <f a>8 r <f a> r <fis! a>4 r r2 <g bes>2 <g bes>8 r r4 <cis! e>2 <cis e>8 r r4 <d f>4. r8 <bes, bes>4. r8
 <a, a>4 r4 r2 r4 << { a4( f8) } \\ { a4\sf( f8) } >> r8 << { d4( a,8) } \\ { d4\sf( a,8) } >> r8 r4 r2
 r4 << { a4( f8) } \\ { a4\sf( f8) } >> r8 << { d4( a,8) } \\ { d4\sf( a,8) } >> r8 r4 r2
 R1 R1 R1 <d fis!>4\p( <e g> <fis a> <g b>8 <e cis'>) << { d'2( a) } \\ { fis2 fis } >>
 <e g>4( <d fis> <cis e> <d fis>8 <b, d>) << { e2( a,) } \\ { cis2( a,) } >>
 <d fis>4( <e g> <fis a> <g b>8 <e cis'>) << { d'2( a) } \\ { fis2 fis } >>
 << { b4( g e a) d4 } \\ { g4( e cis) cis d4 } >> r4 r2 R1 R1 R1 R1 R1 R1 R1 R1
 R1 <d f>2.\p( <e g>8 <f a>) << { bes4( a g c') } \\ { g4_\markup { \italic "cresc." }( f e) e } >> <f a>1
 \set doubleSlurs = ##t <e g>4( <d f> <cis! e> <a, a>)~ <a, a>4 r4 r2 \set doubleSlurs = ##f
 R1 R1 R1 R1 << { r2 fis2_\markup { \italic "cresc." }( a c') } \\ { R1 R1 } >> <g b>1\f <g a>1\f
 <fis a>2\ff <fis a>4 r <g b>2 <g b>4 r <fis a>4\f r <d fis>\f r <e g>\f r <cis e>\f r <d fis>1\ff~ <d fis>1
 <a, e>4 r4 r2 R1 d2( fis4 a b cis' d' e'8 d') cis'4 r r2
 r2 r4 << { g4( fis) fis( a g8 e) } \\ { e4( d)( fis a\sf g8 e) } >> d4( fis a2\sf\>)~ a4\!\p( g e cis)
 << { a,1~ a,1~ a,1 a,4 } \\ { a,1~ a,1~ a,1 a,4\f } >> r4 r2 << { a,4 } \\ { a,4\f } >> r4 r2 << { a,4 } \\ { a,4\p } >> r4 r2 R1
 R1 R1 R1 R1 R1 R1 R1 << { d'1~ d'2. d'4 } \\ { d'1\p~ d'2. d'4 } >> <g b>4( <fis a> <e g> <d fis>)
 << { a4 } \\ { a4 } >> r4 r2 << { a1_\markup { \italic "cresc." }~ a2. a4 a4 a a a } \\
 { a1~ a2.\sf\> a4\!\p a4 a a a } >> <a cis'>2( <a d'>4) r4 R1 R1 R1 R1 R1 R1 R1 R1
 << { d2_\markup { \italic "dolce" }~ d8( e fis g \clef tenor a b cis' d' e'[ fis']) d\staccato d\staccato } \\ { R1 R1 } >>
 \clef tenor <cis e>2_\markup { \italic "dolce" }~ <cis e>8( <d fis> <e g> <fis a> <g b> <a cis'> <b d'> <cis' e'>
 <d' fis'> <e' g'>) <cis e>\staccato <cis e>\staccato
 \clef bass << { d2 d8 } \\ { d2\f d8 } >> r8 r4 R1 <cis e>2 <cis e>8 r r4 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 \clef tenor <a cis'>4\p_\markup { \italic "    dolce" }( <b d'> <cis' e'> <d' fis'>8 <b d'>)
 <cis' e'>2 <cis' e'> <b d'>4( <a cis'> <gis b> <a cis'>8 <fis a>) << { b2( e2) } \\ { gis2( e2) } >>
 << { cis'1~ cis'1 b1 a4 } \\ { a1~ a1~ a2 gis a4 } >> r4 r2 \clef bass R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 <a e'>1\p~ <a e'>1 <e e'>1~ <e e'>1 <a e'>4 r r2 R1 R1 R1

 R1 R1 R1 \clef tenor r4 <d' fis'>4\p r <d' fis'> r <a cis'> r <b d'> R1 \clef bass R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 r2 r4 <a c'>8\p r8
 <a cis'!>8_\markup { \italic "cresc." } r <a cis'> r <a cis'> r <a cis'> r <cis' e'>1\fp
 <e b>8_\markup { \italic "cresc." } r <e b> r <e b> r <e b> r <e b>1\fp~ <e b>1~ <e b>1~
 <e b>1~ <e b>1_\markup { \italic "cresc." }~ <e b>1~ <e b>1~ <e b>1 <f a>2\ff <f a>8 r <f a> r
 <f a>8 r r4 r2 <e g>2 <e g>8 r <e g> r <e g>8 r r4 r2 <d f>2 <d f>8 r r4
 <gis b>2 << { b8 } \\ { b8 } >> r8 << { e'8 } \\ { e'8 } >> r8 <a c'>4~ <a c'>8 r <f c'>4~ <f c'>8 r
 << { e8 } \\ { e8 } >> r8 << { e4( a8) } \\ { e4\sf( a8) } >> r8 << { a4( e8) } \\ { a4\sf( e8) } >> r8
 << { e'4( c'8) } \\ { e'4\sf( c'8) } >> r8 << { a4( e8) } \\ { a4\sf( e8) } >> r8
 << { e4( a8) } \\ { e4\sf( a8) } >> r8 << { a4( e8) } \\ { a4\sf( e8) } >> r8
 << { e'4( c'8) } \\ { e'4\sf( c'8) } >> r8 << { a4( e8) } \\ { a4\sf( e8) } >> r8 r4 r2 R1 R1 R1
 R1 R1 <b d'>4\p_\markup { \italic "    dolce" }( <a cis'> <gis b> <a cis'>8 <fis a>) << { b2( e) } \\ { gis2( e) } >>
 \clef tenor <a cis'>4( <b d'> <cis' e'> <d' fis'>8 <b d'>) <cis' e'>2 <cis' e'>
 << { fis'4( d' b e') a } \\ { d'4( b gis gis a) } >> r4 r2 \clef bass << { e'4( d' c' b) a } \\ { e'4\ff( d' c' b) a } >>
 <e e'>8 r <e e'> r <e e'> r <e e'>1 <e e'>8 r <e e'> r <e e'> r <e e'> r <e e'>1
 <e e'>8 r <e e'> r <e e'> r <e e'> r R1 <c c'>1
 << { d2 e2 a,4( a2 g!4) f2 g c1 d2 e4 e'~ e'2.( d'8 b) } \\
 { d2 e2 a,4_\markup { \italic "sempre ff" }( a2 g4) f2 g c1 d2 e4 e4~ e1_\markup { \italic "sempre f" } } >>
 <e ais>4\staccato( <e ais>4\staccato <e ais>4\staccato <e ais>4\staccato) << { b2~ b8([ e' d' b]) } \\ { e1 } >>
 <e bes>4\staccato( <g bes>\staccato <g bes>\staccato <g bes>\staccato) <g bes>1~ <g bes>1
 <f a>1\sf <d' f'>1\sf <c' e'>2 <c' e'>4 r <f c'>2 <f c'>4 r \clef tenor <e' g'>4 r <c' e'> r <d' f'> r <b d'> r
 << { c'4 } \\ { c'4 } >> r4 r2 R1
 \clef bass << { d'1~ d'1 c2( e4 g a b c' d'8 c') b1~ b1 } \\
 { g,2_\markup { \italic "sempre ff" }( b,4 d f fis g f8 d) c2( e4 g a b c' d'8 c') g,2( b,4 d) g1 } >>
 \clef tenor <c' e'>4 r <b d'> r <c' e'> r <b d'> r R1 \clef bass R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 << { b2\p( c'2) a2( c'4 b) } \\ { R1 a2.( g4) } >>
 <fis a>4( <e g> <dis fis> <e g>) <fis a>4 r4 r2 <g b>4( <fis a> <e g> <fis a>) <g b>4 r r2
 <c' e'>4( <b d'> <a c'> <b d'>) <c' e'>4 r r2 <fis a>4( <e g> <d fis> <e g>) <fis a>4 r r2
 <bes d'>8([ <a c'> <g bes> <a c'>]) <bes d'>4 r <bes d'>8([ <a c'> <g bes> <a c'>]) <bes d'>4 r
 <c' ees'>8([ <bes d'> <a c'> <bes d'>]) <c' e'>4 r <c' ees'>8([ <bes d'> <a c'> <bes d'>]) <c' e'>4 r
 <g bes>8 <g bes> r4 <g bes>8 <g bes> r4 <fis a>8 <fis a> r4 <fis a>8 <fis a> r4
 <bes d'>8([ <a c'> <g bes> <a c'>]) <bes d'>4 r <bes d'>8([ <a c'> <g bes> <a c'>]) <bes d'>4 r
 \clef tenor <c' ees'>8([ <bes d'> <a c'> <bes d'>]) <c' e'>4 r <c' ees'>8([ <bes d'> <a c'> <bes d'>]) <c' e'>4 r
 \clef bass <g bes>4_\markup { \italic "cresc." } r4 r2 <g bes>4 r r2 <g bes>4\f r r2 R1 R1

 R1 R1 R1 R1 R1 R1 R1 R1 <bes, bes>4\pp\staccato( <bes, bes>\staccato <bes, bes>\staccato <bes, bes>\staccato)
 <bes, bes>1 <bes, bes>4\staccato( <bes, bes>\staccato <bes, bes>\staccato <bes, bes>\staccato)
 <bes, bes>1 <bes, bes>4\staccato( <bes, bes>\staccato <bes, bes>\staccato <bes, bes>\staccato)
 <bes, bes>1 <bes, bes>4\staccato( <bes, bes>\staccato <bes, bes>\staccato <bes, bes>\staccato)
 <a, a>1_\markup { \italic "cresc." } R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 <d d'>8\ff r <d d'> r <d d'> r <d d'> r \set doubleSlurs = ##t <fis a>2( <g b>) \set doubleSlurs = ##f <e g>2.\sf
 <d fis>4( <g b> <fis a> <e g> <d fis>) <cis e>4 r r2 \set doubleSlurs = ##t <e g>2( <d fis>)
 \set doubleSlurs = ##f <g b>2.\sf << { a4( g fis e a8 e) } \\ { fis4( e d cis) cis } >>
 \set doubleSlurs = ##f <e g>2( <d fis>4) r4
 R1 <e g>1 <dis dis'>8 r <dis dis'> r <dis dis'> r <dis dis'> r <cis cis'>2 <g b>2~ <g b>( <fis a> <e g> <d fis>) <g b>1
 << { a2~ a8[ a( g e)] d2 d8 } \\ { a,1 d2 d8 } >> r8 r4 R1 <cis e>2 <cis e>8 r r4 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 << { b,2\p~ b,8([ cis dis e] fis[ g a b] cis'[ dis') b,\staccato b,\staccato]
 e2~ e8([ fis g a] b[ cis' dis' e'] fis'[ g') e\staccato e\staccato] } \\ { R1 R1 R1 R1 } >> R1 R1 R1
 R1 r4 r8 << { a8 d'4 } \\ { a8\p d'4 } >> r8 << { d'8 a4 } \\ { d'8 a4 } >> r4 r2
 r4 r8 << { a8 d'[ d'] } \\ { a8 d'[ d'] } >> r8 << { d'8 a4 } \\ { d'8 a4 } >> r4 r2 R1 R1 R1
 R1 R1 R1 <d fis>4\p_\markup { \italic "    dolce" }( <e g> <fis a> <g b>8 <e cis'>) << { d'2( a) } \\ { fis2 fis } >>
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 <bes, bes>2\ff <bes, bes>8 r <bes, bes> r <bes, bes>4 r4 r2 <f a>2 <f a>8 r <f a> r <fis! a>4 r4 r2
 <g bes>2 <g bes>8 r8 r4 <cis! e>2 <cis e>8 r8 r4 <d f>4. r8 <bes, bes>4. r8 <a, a>4 r r2
 r4 << { a4( f8) } \\ { a4\sf( f8) } >> r8 << { d4( a,8) } \\ { d4\sf( a,8) } >> r8 r4 r2
 r4 << { a4( f8) } \\ { a4\sf( f8) } >> r8 << { d4( a,8) } \\ { d4\sf( a,8) } >> r8
 << { d16 e f d e8 } \\ { d16 e f d e8 } >> r8 << { e16 f g e f8 } \\ { e16 f g e f8 } >> r8
 << { fis,!16 g, a, fis, g,8 } \\ { fis,!16 g, a, fis, g,8 } >> r8
 << { gis,16 a, b, gis, a,2^\fermata } \\ { gis,16 a, b, gis, a,2 } >> r2^\fermata R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 << { d2\pp( fis4 a b cis' d' e'8 d') cis'4 b4\rest b2\rest } \\ { R1 R1 R1 } >> R1
 << { d2( fis4 a b cis' d' e'8 d') cis'4 b4\rest b2\rest } \\ { R1 R1 R1 } >> R1
 R1 R1 r2 <a, a>4\f r <d d'>4\ff r <d d'> r << { d4 } \\ { d4 } >> r4 r2 \bar "|."
}