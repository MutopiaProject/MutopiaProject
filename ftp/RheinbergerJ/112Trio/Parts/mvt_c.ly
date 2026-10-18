mvt_c_canvas = { % {{{
  \key f \major \time 3/4 \tempo "Tempo di minuetto (moderato)" 4 = 126 \partial 4 \repeat volta 2 { s4 |
  \barNumberCheck #1   s2.*7 |
  \barNumberCheck #8   s2 }
                       \repeat volta 2 { s4 |
  \barNumberCheck #9     s2.*30 |
  \barNumberCheck #39    s2
                       }
                       \section \sectionLabel \markup { \smallCaps "Trio." }
                       \key des \major
                       \repeat volta 2 {
                         s4 |
  \barNumberCheck #40    s2.*7 |
  \barNumberCheck #47    s2
                       }
                       \repeat volta 2 {
                         s4 |
  \barNumberCheck #48    s2.*13 |
  \barNumberCheck #61    s2
                       }
                       s4 |
  \barNumberCheck #62  s2.*4 \section \key f \major
  \barNumberCheck #66  s2.*38 |
  \barNumberCheck #104 s2 \fine
} % }}}

mvt_c_tempi = \new Voice \relative c' { % {{{
  \time 3/4
  \partial 4 s4 |
  \barNumberCheck #1 s2.*38 |
  \barNumberCheck #39 s2 \section s4 |
  \barNumberCheck #40 s2.*26 \section |
  \barNumberCheck #66 s2.*38 |
  \barNumberCheck #104 s2 \fine
} % }}}

mvt_c_violin = \new Voice \relative c' { % {{{
  \key f \major \time 3/4 \clef treble \partial 4 r4 |
  \barNumberCheck #1   r r bes'--\p |
  \barNumberCheck #2   a->( g8 f e f) |
  \barNumberCheck #3   g4( c,) c'-. |
  \barNumberCheck #4   c2-> c4( |
  \barNumberCheck #5   d2->) c4(-\markup{\italic "cresc."} |
  \barNumberCheck #6   d2->) c4 |
  \barNumberCheck #7   c8(\f b) b4 f'-> |
  \barNumberCheck #8   e2 ees4--\f |
  \barNumberCheck #9   d4->( c8 bes a bes) |
  \barNumberCheck #10  g4( d) d' |
  \barNumberCheck #11  f8(\ff g)-. g4-- f-- |
  \barNumberCheck #12  f2-> r4 |
  \barNumberCheck #13  r4 r f8(\f a,) |
  \barNumberCheck #14  bes( c d) r r4 |
  \barNumberCheck #15  r r d'8( fis,) |
  \barNumberCheck #16  g( a bes) r r4 |
  \barNumberCheck #17  r r bes ~ |
  \barNumberCheck #18  bes e,8( g) bes( d) |
  \barNumberCheck #19  bes4-. r r |
  \barNumberCheck #20  r2. |
  \barNumberCheck #21  r4 r <g,, e' c'>8->\p-\markup{"pizz."} r |
  \barNumberCheck #22  c8 r r4 <g e' c'>8-> r |
  \barNumberCheck #23  c r r4 <g e' c'>8-> r |
  \barNumberCheck #24  c r r4 r |
  \barNumberCheck #25  r r bes''--\f-\markup{"arco"} |
  \barNumberCheck #26  a->( g8 f e f) |
  \barNumberCheck #27  g4( c,) c' |
  \barNumberCheck #28  c2 r4 |
  \barNumberCheck #29  R2.*2 |
  \barNumberCheck #31  r2 c4--\ff |
  \barNumberCheck #32  d2->( c4) |
  \barNumberCheck #33  bes2->( a4) |
  \barNumberCheck #34  a8( g) f4-- e |
  \barNumberCheck #35  f-. r r |
  \barNumberCheck #36  r r e->(\pp |
  \barNumberCheck #37  f) r r |
  \barNumberCheck #38  r8 c,-.\pp f-. c-. f-. c-. |
  \barNumberCheck #39  f2 \key des \major \section r4 |
  \barNumberCheck #40  r r f'8(\p ees) |
  \barNumberCheck #41  des4 aes c-. |
  \barNumberCheck #42  des8(\< aes')\! aes4--\> ges--\! |
  \barNumberCheck #43  f2 r4 |
  \barNumberCheck #44  r8 f(\f ges e f4) |
  \barNumberCheck #45  r8 f(\p ges e f4) |
  \barNumberCheck #46  bes(\f aes8 g f e) |
  \barNumberCheck #47  f2 ges,8(\pp f) |
  \barNumberCheck #48  ees4( bes d) |
  \barNumberCheck #49  ees r8 ges(\> f ees)\! |
  \barNumberCheck #50  des4( aes c) |
  \barNumberCheck #51  des r r |
  \barNumberCheck #52  r ces'8->(\p aes bes4) |
  \barNumberCheck #53  r ces8->( aes bes4) |
  \barNumberCheck #54  r aes-.\pp aes-. |
  \barNumberCheck #55  r8 aes(\< des f aes bes)\! |
  \barNumberCheck #56  ces(\sf ees ces aes bes4) |
  \barNumberCheck #57  aes8(\sf ces aes f ges4) |
  \barNumberCheck #58  ees4->( des8 c bes a) |
  \barNumberCheck #59  bes2 r4 |
  \barNumberCheck #60  aes,4-.(\pp aes-. aes-.) |
  \barNumberCheck #61  aes2 f''8(\pp ees |
  \barNumberCheck #62  des4 aes) r |
  \barNumberCheck #63  r r bes8( aes |
  \barNumberCheck #64  ges4 des) f-> |
  \barNumberCheck #65  e2-> r4 \key f \major \section |
  \barNumberCheck #66  r r bes'--\p |
  \barNumberCheck #67  a->( g8 f e f) |
  \barNumberCheck #68  g4( c,) c'-. |
  \barNumberCheck #69  c2-> c4( |
  \barNumberCheck #70  d2->) c4(-\markup{\italic "cresc."} |
  \barNumberCheck #71  d2->) c4\f |
  \barNumberCheck #72  c8( b) b4 f'-> |
  \barNumberCheck #73  e2( ees4--)\f |
  \barNumberCheck #74  d4->( c8 bes a bes) |
  \barNumberCheck #75  g4( d) d' |
  \barNumberCheck #76  f8(\ff g)-. g4-- f-- |
  \barNumberCheck #77  f2-> r4 |
  \barNumberCheck #78  r4 r f8(\f a,) |
  \barNumberCheck #79  bes( c d) r r4 |
  \barNumberCheck #80  r r d'8( fis,) |
  \barNumberCheck #81  g( a bes) r r4 |
  \barNumberCheck #82  r r bes\p ~ |
  \barNumberCheck #83  bes e,8( g) bes( d) |
  \barNumberCheck #84  bes4-. r r |
  \barNumberCheck #85  r2. |
  \barNumberCheck #86  r4 r <g,, e' c'>8->\p-\markup{"pizz."} r |
  \barNumberCheck #87  c8 r r4 <g e' c'>8-> r |
  \barNumberCheck #88  c r r4 <g e' c'>8-> r |
  \barNumberCheck #89  c r r4 r |
  \barNumberCheck #90  r r bes''--\f-\markup{"arco"} |
  \barNumberCheck #91  a->( g8 f e f) |
  \barNumberCheck #92  g4( c,) c'-. |
  \barNumberCheck #93  c2-- r4 |
  \barNumberCheck #94  R2.*2 |
  \barNumberCheck #96  r2 c4--\ff |
  \barNumberCheck #97  d2->( c4) |
  \barNumberCheck #98  bes2->( a4) |
  \barNumberCheck #99  a8( g) f4-- e-- |
  \barNumberCheck #100 f-. r r |
  \barNumberCheck #101 r r e->(\pp |
  \barNumberCheck #102 f) r r |
  \barNumberCheck #103 r8 c,-.\pp f-. c-. f-. c-. |
  \barNumberCheck #104 f4. r8\fermata \fine
} % }}}

mvt_c_cello = \new Voice \relative c' { % {{{
  \key f \major \time 3/4 \clef bass \partial 4 a4--\p |
  \barNumberCheck #1   g->( f8 e d e) |
  \barNumberCheck #2   f4( c) c'-. |
  \barNumberCheck #3   c2 r4 |
  \barNumberCheck #4   r f2-> ~ |
  \barNumberCheck #5   f8 r-\markup{\italic "cresc."} f2-> ~ |
  \barNumberCheck #6   f8 r f2-> ~ |
  \barNumberCheck #7   f8 r f4(\f b,) |
  \barNumberCheck #8   c( bes a) ~ |
  \barNumberCheck #9   a r c--\f |
  \barNumberCheck #10  bes->( a8 g fis g) |
  \barNumberCheck #11  ees'4--\ff ees-- ees-- |
  \barNumberCheck #12  d2-> r4 |
  \barNumberCheck #13  r f8(\f a,) bes( c) |
  \barNumberCheck #14  \clef treble d( f bes) r r4 |
  \barNumberCheck #15  \clef bass d,8( fis,) g( a) bes( d) |
  \barNumberCheck #16  g4 r r |
  \barNumberCheck #17  R2.*2 |
  \barNumberCheck #19  r4 r bes,->\p ~ |
  \barNumberCheck #20  bes e,8( g) bes( d) |
  \barNumberCheck #21  bes4-. r <c, e c'>8\p-\markup{"pizz."} r |
  \barNumberCheck #22  c, r r4 <c' e c'>8 r |
  \barNumberCheck #23  c, r r4 <c' e c'>8 r |
  \barNumberCheck #24  c, r r4 a''4--\f-\markup{"arco"} |
  \barNumberCheck #25  g->( f8 e d e) |
  \barNumberCheck #26  f4( c) c'-. |
  \barNumberCheck #27  c2-- r4 |
  \barNumberCheck #28  r r c\f |
  \barNumberCheck #29  d2->( c4) |
  \barNumberCheck #30  bes2->( a4) |
  \barNumberCheck #31  r r <g e'>--\ff |
  \barNumberCheck #32  <a f'>2.-> |
  \barNumberCheck #33  <d, f'>-> |
  \barNumberCheck #34  d'4( g, bes) |
  \barNumberCheck #35  a-. r e'->( |
  \barNumberCheck #36  f) r r |
  \barNumberCheck #37  r r e,->(\p |
  \barNumberCheck #38  f) <f a>\pp <f a> |
  \barNumberCheck #39  <f a>2 \key des \major \section r4 |
  \barNumberCheck #40  r r \clef tenor aes'8(\p ges) |
  \barNumberCheck #41  f4( des) f8( ees) |
  \barNumberCheck #42  des4(\< f)\> bes,-.\! |
  \barNumberCheck #43  a2 r4 |
  \barNumberCheck #44  r8 des(\f ees ges f4) |
  \barNumberCheck #45  r8 des(\p ees ges f4) \clef bass |
  \barNumberCheck #46  des( c8 bes aes g) |
  \barNumberCheck #47  aes2 ges8(\pp f) |
  \barNumberCheck #48  ees4( bes d) |
  \barNumberCheck #49  ees r8 ges(\> f ees)\! |
  \barNumberCheck #50  des4( aes c) |
  \barNumberCheck #51  des r r |
  \barNumberCheck #52  r \clef tenor ees'(\p des) |
  \barNumberCheck #53  r ees( des) |
  \barNumberCheck #54  c(\pp ges' ges) |
  \barNumberCheck #55  f(\< des aes)\! |
  \barNumberCheck #56  r aes'-.\f \footnote #'(-1 . 1) "Note unclear in Kistner 1879 edition" NoteHead ges-. |
  \barNumberCheck #57  r f-. ees-. |
  \barNumberCheck #58  ees->( des8 c bes a) |
  \barNumberCheck #59  bes2 ges'4->\p ~ |
  \barNumberCheck #60  ges( f8 ees des c) |
  \barNumberCheck #61  des2 f8(\pp ees |
  \barNumberCheck #62  des4 aes) r |
  \barNumberCheck #63  r r \clef bass bes8( aes |
  \barNumberCheck #64  ges4 des) f-> |
  \barNumberCheck #65  e2-> a4-- \key f \major \section  |
  \barNumberCheck #66  g->( f8 e d e) |
  \barNumberCheck #67  f4( c) c' |
  \barNumberCheck #68  c2-- r4 |
  \barNumberCheck #69  r \clef tenor f2-> ~ |
  \barNumberCheck #70  f8 r-\markup{\italic "cresc."} f2-> ~ |
  \barNumberCheck #71  f8 r f2-> ~ |
  \barNumberCheck #72  f8 r f4(\f b,) |
  \barNumberCheck #73  c( bes a\f) ~ |
  \barNumberCheck #74  a r c-- |
  \barNumberCheck #75  bes->( a8 g fis g) |
  \barNumberCheck #76  ees'4--\ff ees-- ees-- |
  \barNumberCheck #77  d2-> r4 |
  \barNumberCheck #78  r f8(\f a,) bes( c) |
  \barNumberCheck #79  d( f bes) r r4 |
  \barNumberCheck #80  d,8( fis,) g( a) bes( d) |
  \barNumberCheck #81  g4 r r |
  \barNumberCheck #82  R2.*2 \clef bass |
  \barNumberCheck #84  r4 r bes,->\p ~ |
  \barNumberCheck #85  bes e,8( g) bes( d) |
  \barNumberCheck #86  bes4-. r <c, e c'>8\p->-\markup{"pizz."} r |
  \barNumberCheck #87  c, r r4 <c' e c'>8-> r |
  \barNumberCheck #88  c, r r4 <c' e c'>8-> r |
  \barNumberCheck #89  c, r r4 a''4->\f-\markup{"arco"} |
  \barNumberCheck #90  g->( f8 e d e) |
  \barNumberCheck #91  f4( c) c'-. |
  \barNumberCheck #92  c2-- r4 |
  \barNumberCheck #93  r r c\f |
  \barNumberCheck #94  d2->( c4) |
  \barNumberCheck #95  bes2->( a4) |
  \barNumberCheck #96  r r <g e'>\ff |
  \barNumberCheck #97  <a f'>2.-> |
  \barNumberCheck #98  <d, f'>-> |
  \barNumberCheck #99  d'4( g, bes) |
  \barNumberCheck #100 a-. r e'->( |
  \barNumberCheck #101 f) r r |
  \barNumberCheck #102 r r e,->(\p |
  \barNumberCheck #103 f) <f a>\pp <f a> |
  \barNumberCheck #104 <f a>4. r8\fermata \fine
} % }}}

mvt_c_piano_rh_a = \new Voice \relative c { % {{{
  \set fingeringOrientations = #'(up left down)
  \key f \major \time 3/4 \clef bass \partial 4 <f a>8\p( <c c'> |
  \barNumberCheck #1 <e bes'>-\markup{\italic "tranquillo"} <c c'> <e bes'> <c c'> <e bes'> <c c'>) |
  \barNumberCheck #2 <f a>( <c c'> <f a> <c c'> <f a> <c c'>) |
  \barNumberCheck #3 <f bes>( <c c'> <f bes> <c c'> <e bes'> <c c'>) |
  \barNumberCheck #4 <f a>( <c c'> <f a> <c c'> <f a> <c c'>) |
  \barNumberCheck #5 <a' d>(-\markup{\italic "cresc."} <f f'> <a d> <f f'> <a c> <f f'>) |
  \barNumberCheck #6 <a d>( <f f'> <a d> <f f'> <a c> <f f'>) \clef treble |
  \barNumberCheck #7 <d' f>(\f <g, g'> <d' f> <g, g'> <d' f> <g, g'>) |
  \barNumberCheck #8 <c e>([ <g g'> <c e> <g g'>] <c ees>\mf <g g'>) |
  \barNumberCheck #9 <c d>( <fis, fis'> <c' d> <fis, fis'> <c' d> <fis, fis'>) |
  \barNumberCheck #10 <bes d>( <g g'> <bes d> <g g'> <bes d> <g g'>) |
  \barNumberCheck #11 <ees' f>(\ff <c c'> <ees f> <bes bes'> <ees f> <a, a'>) |
  \barNumberCheck #12 <d f>( <bes bes'> <d f> <bes bes'>) r4 \clef bass |
  \barNumberCheck #13 f8(\f a,) bes( c) d( f) |
  \barNumberCheck #14 bes4 r r \clef treble |
  \barNumberCheck #15 r d'8( fis,) g( a) |
  \barNumberCheck #16 bes( d g) r\> bes,4-> ~ |
  \barNumberCheck #17 bes\p \voiceOne e,8( g) bes( d) \oneVoice |
  \barNumberCheck #18 \acciaccatura { c8 } <e, bes'>4-. r <d f bes>-> ~ |
  \barNumberCheck #19 \voiceOne bes' e,8( g) bes( d) |
  \barNumberCheck #20 \acciaccatura { c8 } <e, bes'>4-. r <d f bes>-> ~ |
  \barNumberCheck #21 <c e bes'>16\pp \voiceOne d'[( bes g]) s bes([ g e)] s g([ e c)] |
  \barNumberCheck #22 s d'([ bes g)] s bes([ g e)] s g([ e c)] |
  \barNumberCheck #23 s d'([ bes g)] s bes([ g e)] s g([ e c)] |
  \barNumberCheck #24 r c'(\< bes a g f e d\!) \oneVoice r\f c a' c |
  \barNumberCheck #25 r c->( bes c,) r4 r16 c( bes' c) |
  \barNumberCheck #26 r c->( a c,) r4 r16 c( a' c) |
  \barNumberCheck #27 r c->( bes c,) r4 r16 c( bes' c) |
  \barNumberCheck #28 r c->( a c,) r4 r16 f( a c) |
  \barNumberCheck #29 \voiceOne d2->( c4) |
  \barNumberCheck #30 bes2->( a4) |
  \barNumberCheck #31 a8( g) f4 e |
  \barNumberCheck #32 r16 a,( d f a d, f a c a f c) |
  \barNumberCheck #33 r f( bes d f bes, d f a f d a) |
  \barNumberCheck #34 r bes( d g f, bes c f e, bes' c e |
  \barNumberCheck #35 f)\< f,\( a c f a c f\! e\> c bes g\! |
  \barNumberCheck #36 a\p d c a f a f d c d bes g\) |
  \barNumberCheck #37 r a'( f d c d c a g a g e) |
  \barNumberCheck #38 f8-.\pp c-. <a f'>-. c-. <a f'>-. c-. |
  \barNumberCheck #39 <a f'>4 r \key des \major \section f'8(\pp ees) |
  \barNumberCheck #40 des4( aes c) |
  \barNumberCheck #41 des( f aes) ~ |
  \barNumberCheck #42 aes\< <des, f aes>-.\>( <bes ees ges>-.)\! |
  \barNumberCheck #43 <a ees' f>8(\< des')\! des4-.( c-.) |
  \barNumberCheck #44 r4\f \once \override Arpeggio.padding = 2 \once \set PianoStaff.connectArpeggios = ##t <ges a ees'>-.\arpeggio <f bes des>-. |
  \barNumberCheck #45 r4\p \once \override Arpeggio.padding = 2 \once \set PianoStaff.connectArpeggios = ##t <ges a ees'>-.\arpeggio <f bes des>-. |
  \barNumberCheck #46 \voiceOne <bes des>( <aes c>8 <g bes> <f aes> <e g>) |
  \barNumberCheck #47 \oneVoice <c f aes>2 r4\pp |
  \barNumberCheck #48 r r <bes' ges'>8( <aes f'>) |
  \barNumberCheck #49 <ges ees'>4( \after 8 \> <ges bes>)-. \after 8 \! <ges aes c>4 |
  \barNumberCheck #50 <f aes des>4 r8 <bes ges'>(\> <aes f'> <ges aes ees'>)\! |
  \barNumberCheck #51 <f des'>4-.( <des f aes>-.\< \after 8 -\! <des f bes>-.) |
  \barNumberCheck #52 \voiceOne ces'8( ees ces aes bes4) |
  \barNumberCheck #53 ces8( ees ces aes bes4) |
  \barNumberCheck #54 bes8( aes) \oneVoice <c, ges' aes>4-. <c ges' aes>4-. |
  \barNumberCheck #55 <des f aes>2\< aes'8\!( bes) |
  \barNumberCheck #56 <des, aes' ces>2(\f <des ges bes>4) |
  \barNumberCheck #57 <bes f' aes>2( <bes ees ges>4) |
  \barNumberCheck #58 <ges' ges'>8( <f f'>) 4 4-.-> ~ |
  \barNumberCheck #59 4( <ees ees'>8-\markup{\italic "dim."} <des des'> <c c'> <bes bes'>) |
  \barNumberCheck #60 bes'(\pp aes) aes4-.( <aes, ges' aes>-.) |
  \barNumberCheck #61 <aes f' aes>2 r4 |
  \barNumberCheck #62 r r des'8(\pp c |
  \barNumberCheck #63 bes4 f) r |
  \barNumberCheck #64 r r f^> |
  \barNumberCheck #65 e2-> \clef bass <f, a>8\p( <c c'> \key f \major \section
  \barNumberCheck #66 <e bes'>-\markup{\italic "tranquillo"} <c c'> <e bes'> <c c'> <e bes'> <c c'>) |
  \barNumberCheck #67 <f a>( <c c'> <f a> <c c'> <f a> <c c'>) |
  \barNumberCheck #68 <f bes>( <c c'> <f bes> <c c'> <e bes'> <c c'>) |
  \barNumberCheck #69 <f a>( <c c'> <f a> <c c'> <f a> <c c'>) |
  \barNumberCheck #70 <a' d>(-\markup{\italic "cresc."} <f f'> <a d> <f f'> <a c> <f f'>) |
  \barNumberCheck #71 <a d>( <f f'> <a d> <f f'> <a c> <f f'>) \clef treble |
  \barNumberCheck #72 <d' f>(\f <g, g'> <d' f> <g, g'> <d' f> <g, g'>) |
  \barNumberCheck #73 <c e>([ <g g'> <c e> <g g'>] <c ees> <g g'>) |
  \barNumberCheck #74 <c d>( <fis, fis'> <c' d> <fis, fis'> <c' d> <fis, fis'>) |
  \barNumberCheck #75 <bes d>( <g g'> <bes d> <g g'> <bes d> <g g'>) |
  \barNumberCheck #76 <ees' f>(\ff <c c'> <ees f> <bes bes'> <ees f> <a, a'>) |
  \barNumberCheck #77 <d f>( <bes bes'> <d f> <bes bes'>) r4 \clef bass |
  \barNumberCheck #78 f8(\f a,) bes( c) d( f) |
  \barNumberCheck #79 bes4 r r \clef treble |
  \barNumberCheck #80 r d'8( fis,) g( a) |
  \barNumberCheck #81 bes( d g) r\> bes,4-> ~ |
  \barNumberCheck #82 bes\p \voiceOne e,8( g) bes( d) \oneVoice |
  \barNumberCheck #83 \acciaccatura { c8 } <e, bes'>4-. r <d f bes>-> ~ |
  \barNumberCheck #84 \voiceOne bes' e,8( g) bes( d) |
  \barNumberCheck #85 \acciaccatura { c8 } <e, bes'>4-. r <d f bes>-> ~ |
  \barNumberCheck #86 <c e bes'>16\pp \voiceOne d'[( bes g]) s bes([ g e)] s g([ e c)] |
  \barNumberCheck #87 s d'([ bes g)] s bes([ g e)] s g([ e c)] |
  \barNumberCheck #88 s d'([ bes g)] s bes([ g e)] s g([ e c)] |
  \barNumberCheck #89 r c'(\< bes a g f e d\!) \oneVoice r\f c a' c |
  \barNumberCheck #90 r c->( bes c,) r4 r16 c( bes' c) |
  \barNumberCheck #91 r c->( a c,) r4 r16 c( a' c) |
  \barNumberCheck #92 r c->( bes c,) r4 r16 c( bes' c) |
  \barNumberCheck #93 r c->( a c,) r4 r16 f( a c) |
  \barNumberCheck #94 \voiceOne d2->( c4) |
  \barNumberCheck #95 bes2->( a4) |
  \barNumberCheck #96 a8( g) f4 e |
  \barNumberCheck #97 r16 a,( d f a d, f a c a f c) |
  \barNumberCheck #98 r f( bes d f bes, d f a f d a) |
  \barNumberCheck #99 r bes( d g f, bes c f e, bes' c e |
  \barNumberCheck #100 f)\< f,\( a c f a c f\! e\> c bes g\! |
  \barNumberCheck #101 a\p d c a f a f d c d bes g\) |
  \barNumberCheck #102 r a'( f d c d c a g a g e) |
  \barNumberCheck #103 f8-.\pp c-. <a f'>-. c-. <a f'>-. c-. |
  \barNumberCheck #104 <a f'>4 r4 \fine
} % }}}

mvt_c_piano_rh_b = \new Voice \relative c' { % {{{
  \set fingeringOrientations = #'(up left down)
  \partial 4 s4 |
  \barNumberCheck #1 s2.*16 |
  \barNumberCheck #17 s2 \voiceTwo <d f>4 |
  \barNumberCheck #18 s2. |
  \barNumberCheck #19 <c e>4 r <d f> |
  \barNumberCheck #20 \oneVoice s2.  |
  \barNumberCheck #21 s4 \voiceTwo g16-. s s s e-. s s s |
  \barNumberCheck #22 c-. s s s g'-. s s s e-. s s s |
  \barNumberCheck #23 c-. s s s g'-. s s s e-. s s s |
  \barNumberCheck #24 c-. \oneVoice s s s s2 |
  \barNumberCheck #25 s2.*4 |
  \barNumberCheck #29 \voiceTwo r8 <f a> r <f a> r <f a> |
  \barNumberCheck #30 r <d f>[ r <d f> r <d f>] |
  \barNumberCheck #31 r <bes d>[ r <a c> r <g c>] |
  \barNumberCheck #32 \oneVoice s2.*7 |
  \barNumberCheck #39 s2 \section s4 |
  \barNumberCheck #40 s2.*6 |
  \barNumberCheck #46 \voiceTwo e'4\f e c |
  \barNumberCheck #47 \oneVoice s2.*5 |
  \barNumberCheck #52 \voiceTwo <ees ges>4\> <ees ges>\! <des ges> |
  \barNumberCheck #53 <ees ges>\> <ees ges>\! <des ges> |
  \barNumberCheck #54 <c ges'>4-.\pp \oneVoice s s |
  \barNumberCheck #55 s2.*11 \key f \major \section |
  \barNumberCheck #66 s2.*16 |
  \barNumberCheck #82 s2 \voiceTwo <d f>4 |
  \barNumberCheck #83 s2. |
  \barNumberCheck #84 <c e>4 r <d f> |
  \barNumberCheck #85 \oneVoice s2. |
  \barNumberCheck #86 s4 \voiceTwo g16-. s s s e-. s s s |
  \barNumberCheck #87 c-. s s s g'-. s s s e-. s s s |
  \barNumberCheck #88 c-. s s s g'-. s s s e-. s s s |
  \barNumberCheck #89 c-. \oneVoice s s s s2 |
  \barNumberCheck #90 s2.*4 |
  \barNumberCheck #94 \voiceTwo r8 <f a> r <f a> r <f a> |
  \barNumberCheck #95 r <d f>[ r <d f> r <d f>] |
  \barNumberCheck #96 r <bes d>[ r <a c> r <g c>] |
  \barNumberCheck #97 \oneVoice s2.*6 |
  \barNumberCheck #103 s2.
  \barNumberCheck #104 s2 \fine
} % }}}

mvt_c_piano_lh_a = \new Voice \relative c { % {{{
  \set fingeringOrientations = #'(up left down)
  \key f \major \time 3/4 \clef bass \partial 4 r4 |
  \barNumberCheck #1 c,2 r4 |
  \barNumberCheck #2 c2 r4 |
  \barNumberCheck #3 c2 r4 |
  \barNumberCheck #4 f,2 r4 |
  \barNumberCheck #5 f'2( a4) |
  \barNumberCheck #6 f2( a4) |
  \barNumberCheck #7 <g, g'>2 r4 |
  \barNumberCheck #8 <c c'>2 c4 |
  \barNumberCheck #9 d2 r4 |
  \barNumberCheck #10 d2 <bes bes'>4( |
  \barNumberCheck #11 <a a'>) <f f'>-. <f' f'>-. |
  \barNumberCheck #12 <bes, bes'>2 f'8(\f a,) |
  \barNumberCheck #13 bes( c) d( f bes) r |
  \barNumberCheck #14 r4 r8 cis( d fis,) |
  \barNumberCheck #15 g( a) bes( d g) r |
  \barNumberCheck #16 r4 r8 <f? a>( <e g> <d f>) |
  \barNumberCheck #17 <c e>( g' c) r g,4 |
  \barNumberCheck #18 c8( g' c) r g,4 |
  \barNumberCheck #19 c8( g' c) r g,4 |
  \barNumberCheck #20 c8( g' c) r g,4( |
  \barNumberCheck #21 c,8)\sustainOn r s2 |
  \barNumberCheck #22 s2. |
  \barNumberCheck #23 s2 \after 8. \sustainOff s4 |
  \barNumberCheck #24 s8 r8 r4 <c' f a> |
  \barNumberCheck #25 <c e g>\sustainOn c,-. \after 8 \sustainOff <c' g'> |
  \barNumberCheck #26 <c f a>\sustainOn c,-. \after 8 \sustainOff <c' f a> |
  \barNumberCheck #27 <c f bes>\sustainOn c,-. \after 8 \sustainOff <c' e g> |
  \barNumberCheck #28 <c f a>\sustainOn c,-. \after 8 \sustainOff <f' a>8 r |
  \barNumberCheck #29 r4 f,( a) |
  \barNumberCheck #30 r d,( f) |
  \barNumberCheck #31 bes, c c' |
  \barNumberCheck #32 f,(\sustainOn f' a,)\sustainOff |
  \barNumberCheck #33 d,(\sustainOn d' f,)\sustainOff |
  \barNumberCheck #34 <bes, bes'> <c c'> <c' g'>( |
  \barNumberCheck #35 f,8)\sustainOn r <f' a>4( c\sustainOff |
  \barNumberCheck #36 f,8) r <f' a>4( c |
  \barNumberCheck #37 f,8) r <f' a>4( c |
  \barNumberCheck #38 f,8) r c4-.( a-.) |
  \barNumberCheck #39 f( f'8) r \key des \major \section <f-5 f'>8( <ees-2 ees'>) |
  \barNumberCheck #40 <des-4 des'>4( <aes aes'> <c c'>) |
  \barNumberCheck #41 <des des'>( <f f'>) <aes aes'>8( <ges ges'>) |
  \barNumberCheck #42 <f f'>4 <des des'> <ees ees'> |
  \barNumberCheck #43 <f f'>8(\sustainOn <des' des'>) <des des'>4-.( <c c'>-.)\sustainOff |
  \barNumberCheck #44 bes4-^ \once \override Arpeggio.padding = 2 <f' c'>4-.\arpeggio <bes des>-. |
  \barNumberCheck #45 bes,4-. \once \override Arpeggio.padding = 2 <f' c'>4-.\arpeggio <bes des>-. |
  \barNumberCheck #46 <c,, c'> c' <c, c'> |
  \barNumberCheck #47 <f f'>-. <f, f'>-. <ges' ges'>8( <f f'>) |
  \barNumberCheck #48 <ees ees'>4( <bes bes'> <d d'>) |
  \barNumberCheck #49 <ees ees'>4 r8 <ges ges'>( <f f'> <ees ees'>) |
  \barNumberCheck #50 <des des'>4( <aes aes'> <c c'>) |
  \barNumberCheck #51 <des des'> r8 <ces ces'>( <bes bes'> <aes aes'>) |
  \barNumberCheck #52 <ges ges'>4\sustainOn <ees'' ges ces> <des ges bes>\sustainOff |
  \barNumberCheck #53 <ges,, ges'>4\sustainOn <ees'' ges ces> <des ges bes>\sustainOff |
  \barNumberCheck #54 <aes, aes'>4\sustainOn <aes' ees'> <aes, aes'>\sustainOff |
  \barNumberCheck #55 <des des'>2 <aes' aes'>8( <ges ges'>) |
  \barNumberCheck #56 <f f'>4\sustainOn <des' aes'> <ges, ges'>\sustainOff |
  \barNumberCheck #57 <d d'>\sustainOn <bes' f'> <ees, ees'>\sustainOff |
  \barNumberCheck #58 <f f'>\sustainOn <f' a ees'> <f, f'>\sustainOff |
  \barNumberCheck #59 <f' bes des> <f,, f'> <ges ges'> |
  \barNumberCheck #60 <aes aes'>\sustainOn <aes' ges'> <aes, aes'>\sustainOff |
  \barNumberCheck #61 <des des'>-. <des, des'>-. r |
  \barNumberCheck #62 r r des'''8( c |
  \barNumberCheck #63 bes4 f) r |
  \barNumberCheck #64 r r \voiceOne \crossStaff { <f bes> } |
  \barNumberCheck #65 \crossStaff { <e bes'>2 } \oneVoice r4 \key f \major \section |
  \barNumberCheck #66 c,2 r4 |
  \barNumberCheck #67 c2 r4 |
  \barNumberCheck #68 c2 r4 |
  \barNumberCheck #69 f,2 r4 |
  \barNumberCheck #70 f'2( a4) |
  \barNumberCheck #71 f2( a4) |
  \barNumberCheck #72 <g, g'>2 r4 |
  \barNumberCheck #73 <c c'>2 c4 |
  \barNumberCheck #74 d2 r4 |
  \barNumberCheck #75 d2 <bes bes'>4( |
  \barNumberCheck #76 <a a'>) <f f'>-. <f' f'>-. |
  \barNumberCheck #77 <bes, bes'>2 f'8(\f a,) |
  \barNumberCheck #78 bes( c) d( f bes) r |
  \barNumberCheck #79 r4 r8 cis( d fis,) |
  \barNumberCheck #80 g( a) bes( d g) r |
  \barNumberCheck #81 r4 r8 <f a>( <e g> <d f>) |
  \barNumberCheck #82 <c e>( g' c) r g,4 |
  \barNumberCheck #83 c8( g' c) r g,4 |
  \barNumberCheck #84 c8( g' c) r g,4 |
  \barNumberCheck #85 c8( g' c) r g,4( |
  \barNumberCheck #86 c,8)\sustainOn r s2 |
  \barNumberCheck #87 s2. |
  \barNumberCheck #88 s2 \after 8. \sustainOff s4 |
  \barNumberCheck #89 s8 r8 r4 <c' f a> |
  \barNumberCheck #90 <c e g>\sustainOn c,-. \after 8 \sustainOff <c' g'> |
  \barNumberCheck #91 <c f a>\sustainOn c,-. \after 8 \sustainOff <c' f a> |
  \barNumberCheck #92 <c f bes>\sustainOn c,-. \after 8 \sustainOff <c' e g> |
  \barNumberCheck #93 <c f a>\sustainOn c,-. \after 8 \sustainOff <f' a>8 r |
  \barNumberCheck #94 r4 f,( a) |
  \barNumberCheck #95 r d,( f) |
  \barNumberCheck #96 bes, c c' |
  \barNumberCheck #97 f,(\sustainOn f' a,)\sustainOff |
  \barNumberCheck #98 d,(\sustainOn d' f,)\sustainOff |
  \barNumberCheck #99 <bes, bes'> <c c'> <c' g'>( |
  \barNumberCheck #100 f,8)\sustainOn r <f' a>4( c\sustainOff |
  \barNumberCheck #101 f,8) r <f' a>4( c |
  \barNumberCheck #102 f,8) r <f' a>4( c |
  \barNumberCheck #103 f,8) r c4-.( a-.) |
  \barNumberCheck #104 f( f'8) r \fine
} % }}}

mvt_c_piano_lh_b = \new Voice \relative c { % {{{
  \set fingeringOrientations = #'(up left down)
  \partial 4 s4 |
  \barNumberCheck #1 s2.*63 |
  \barNumberCheck #64 s4 s \voiceTwo <des, des'> |
  \barNumberCheck #65 <c c'>2-> \oneVoice s4  \key f \major \section|
  \barNumberCheck #66 s2.*38
  \barNumberCheck #104 s2 \fine
} % }}}

mvt_c = << % {{{
  \tag #'violin
  \new Staff \with {
    \magnifyStaff #5/7
    instrumentName = "Violin"
    shortInstrumentName = "V."
    midiInstrument = "violin"
  } <<
    \mvt_c_canvas
    \tag #'violin_tempi \mvt_c_tempi
    \mvt_c_violin
  >>

  \tag #'cello
  \new Staff \with {
    \magnifyStaff #5/7
    instrumentName = "Cello"
    shortInstrumentName = "C."
    midiInstrument = "cello"
  } <<
    \mvt_c_canvas
    \tag #'cello_tempi \mvt_c_tempi
    \mvt_c_cello
  >>

  \tag #'piano
  \new PianoStaff \with {
    instrumentName = "Piano"
    shortInstrumentName = "P."
    midiInstrument = "acoustic grand"
  } <<
    \new Staff = "mvt_c_piano_rh" \with {
      #(scale-props 'magnifyStaff 5/7 #t '((BarLine thick-thickness) (BarLine hair-thickness) (BarLine kern)))
    } <<
      \mvt_c_canvas
      \tag #'piano_tempi \mvt_c_tempi
      \new Voice = "mvt_c_piano_rh_a" { \voiceOne \mvt_c_piano_rh_a }
      \new Voice = "mvt_c_piano_rh_b" { \voiceTwo \mvt_c_piano_rh_b }
    >>
    \new Staff = "mvt_c_piano_lh" \with {
      #(scale-props 'magnifyStaff 5/7 #t '((BarLine thick-thickness) (BarLine hair-thickness) (BarLine kern)))
    } <<
      \mvt_c_canvas
      \new Voice = "mvt_c_piano_lh_a" { \voiceOne \mvt_c_piano_lh_a }
      \new Voice = "mvt_c_piano_lh_b" { \voiceTwo \mvt_c_piano_lh_b }
    >>
  >>
>> % }}}
