\version "2.10.3"

 \header {
  title = "Piano Sonate Opus 31 No 2 (1st Movement)"
  composer = "Ludwig Van Beethoven"
  mutopiatitle = "Sonata No. 17 (1st Movement: Largo - Allegro)"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Piano"
  mutopiaopus = "Op. 31, No. 2"
  date = "1802"
  source = "Breitkopf & Hartel (1862-1865)"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2008/July/19"
  version = "2.10.3"
 footer = "Mutopia-2008/08/12-1509"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 \new GrandStaff
 <<
 \new Staff = "up" {
 \clef treble
 \key d \minor
 \time 4/4
 \override Score.MetronomeMark #'transparent = ##t
 \tempo 4 = 40
 \override TextScript #'padding = #2.0
 \repeat volta 2 { s2^\markup { \large "Largo." } cis'4\staccato e'\staccato a'2.^\fermata
 \tempo 4 = 224 a'8\p^\markup { \large "Allegro." }( g') g'8( f') f'( e') e'( d') a'( g')
 g'( f') f'( e') e'( d') d''_\markup { \italic "cresc." }( c''!) c''( bes') bes'( a') a'( g') g'( gis') \break
 \tempo 4 = 40 << { gis'4.^\markup { \translate #(cons 3 -1) { \musicglyph #"scripts.turn" } }^\markup { \large "Adagio." }(
 b'16 a') a'2^\fermata } \\ { f'2\sf\> e'2\p\! } >> s2^\markup { \large "Largo." } e'4\staccato g'\staccato c''2.^\fermata
 \tempo 4 = 224 c''8\p^\markup { \large "Allegro." }( bes') bes'_\markup { \italic "cresc." }( gis')
 gis'( a') a'( d'') d''( c'') c''8( a') a'( bes') bes'( ees'') ees''( d'') d''( cis'') cis''( bes'') bes''( e''!) e''( cis''')
 cis'''( f'') f''( d''') d'''( f'') f''( f''') \break
 f'''8\f( cis'''( cis'''( d''') d'''( gis'') gis''( a'') a''( e'') e''( f'') f''( cis'') cis''( d'')
 d''( gis') gis'( a') a'( e') e'( f') f'( cis') cis'( d') d'( bes) bes\sf( a) a( cis') cis'( d') d'( bes) bes\sf( a) \break
 a8( cis') cis'( d') d'( bes) bes\sf( a) a( bes b c' cis' d' ees' e' f' fis' g' gis' a' bes'! cis' a') s1 r2 r4 a'4\p \break
 gis'4( a' bes' a') a'2 a' s1 r2 r4 a'4\p \break
 gis'4( a' bes' a') a'2 a' \override TupletBracket #'transparent = ##t \override TupletNumber #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { a'8\f[ d' a] d'[ a d'] a[ d' a] d'[ a d'] }
 r2 d''4\sf\staccato r4 \break
 \times 2/3 { e'8[ b e'] b[ e' b] e'[ b e'] b[ e' b] } r2 e''4\sf\staccato r4
 \times 2/3 { f'8[ c' f'] c'[ f' c'] f'[ c' f'] c'[ f' c'] } r2 f''4\sf\staccato r4 \break
 \times 2/3 { gis'8[ d' gis'] d'[ gis' d'] gis'[ d' gis'] d'[ gis' d'] } r2 gis''4\sf\staccato r
 \times 2/3 { a'8[ e' a'] e'[ a' e'] a'[ e' a'] e'[ a' e'] }
 << { f''2\rest a''4^\sf\staccato a''4\rest } \\
 { \override TupletNumber #'transparent = ##t \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { a'8\ff[ c'' a'] c''[ a' c''] a'[ c'' a'] c''[ a' c''] } } >> \break
 << { f''2\rest a''4^\sf\staccato a''4\rest f''2\rest a''4^\sf\staccato a''4\rest } \\
 { \override TupletNumber #'transparent = ##t \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { a'8[ c'' a'] c''[ a' c''] a'[ c'' a'] c''[ a' c''] a'[ c'' a'] c''[ a' c''] a'[ c'' a'] c''[ a' c''] } } >>
 <gis' b' gis''>4\fp r4 r b''8( gis'') e''8( f'') f''( d'') r4 b''8( gis'') e''( f'') f''( d'') r4 b''8( gis'') \break
 e''8( f'') f''( d'') d''( c'') c''( b') b'( c'') a'4\staccato r4 c'''8( a'') dis''( e'') e''( c'') r4 c'''8( a'') dis''( e'') e''( c'') r4 c'''8( a'')
 dis''8( e'') e''( c'') c''( b') b'( a') \break
 a'8( gis') b'4\staccato r4 f'''8_\markup { \italic "cresc." }( d''') cis'''( d''') b''4\staccato r f'''8( d''')
 cis'''8( d''') b''4\staccato r f'''8( d''') b''\f( d''') gis''( b'') f''( gis'') d''( f'') b'( d'') gis'( b') f'( gis') d'( f') \break
 \clef bass b8( d') gis([ b] d[ b gis d] c4\staccato) <c e a>4\staccato
 << { bes!2(~ bes2 a4 gis a\staccato) } \\ { <d f>2\sf~ <d f>1 <c e>4 } >> \clef treble <c' e' a'>4\staccato
 << { bes'!2(~ bes'2 a'4 gis' a'\staccato) } \\ { <d' f'>2\sf~ <d' f'>1 <c' e'>4 } >> <a' a''>4\staccato
 <bes'! bes''!>2\sf~ <bes' bes''>4 <b' b''>\staccato <c'' c'''>2\sf~
 <c'' c'''>4 <cis'' cis'''>_\markup { \italic "decresc." }( <d'' d'''> <e'' e'''> <f'' f'''>)
 <f' f''>2\p( <e' e''>4 a'\staccato) r4 r <cis' e'>4\staccato <d' f'>\staccato <f' d''>2\sf <f' d''>4\staccato
 <e' cis''>4 r r <cis' e'>\staccato <d' f'>4\staccato <d'' f''>2\sf <d'' f''>4\staccato
 <cis'' e''>4\staccato r r <cis' e'>\staccato <d' f'>4\staccato <d'' f''>2\sf <d''' f'''>4\ff~ <d''' f'''> r4 r
 \set doubleSlurs = ##t <d'' f''>4\p( <c'' e''>\staccato) r4 r <c''' e'''>( <b'' d'''>\staccato) r4 r
 <b' d''>( <a' c''>\staccato) r4 r <a'' c'''>( <a'' b''>\staccato) r4 r <a' b'>( <gis' b'>\staccato) r4 r
 \set doubleSlurs = ##f <b' gis''>4( a''8 e'' c'' c''' b'' gis'' e'' d''' c'''8 a'' e'' e''' dis''' e''' dis''' e'''
 <e'' c''' e'''>2( <d'' b'' d'''> <c'' a'' c'''> <b' gis'' b''>) a''8 e'' c'' c''' b'' gis'' e'' d''' \break
 c'''8 a'' e'' e''' dis''' e''' dis''' e'''
 << { d'''4\rest <c''' e'''>2( <b'' d'''!>4~ <b'' d'''> \stemDown <c'' a'' c'''>2 <b' gis'' b''>4) } \\
 { e''2. d''!4~ d''4 s4 s2 } >> a''8 e'' c'' c''' b'' gis'' e'' d''' c''' a'' e'' e''' dis''' e''' dis''' e''' \break
 c'''8\< a'' e'' e''' dis''' e''' dis''' e'''\! c'''\> a'' e'' e''' dis''' e''' dis''' e'''\! a''4 r s2 s1 }
 \alternative { { s1 s1 s1 s1 } { s1 s1 s1 s1 } } \bar "||"
 \tempo 4 = 40
 \cadenzaOn s2^\markup { \large "Largo." } d'2\pp fis'4\staccato a'\staccato \cadenzaOff \bar "|" d''2.^\fermata r4
 \cadenzaOn s2 s8 fis'2\pp a'4\staccato dis''\staccato \cadenzaOff \bar "|" fis''2.^\fermata r4 \break
 \cadenzaOn s2 ais'2\pp cis''4\staccato fis''\staccato \cadenzaOff \bar "|" ais''1^\fermata
 \tempo 4 = 224 \clef bass \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { <fis a>8\ff^\markup { \large "Allegro." }[ cis' <fis a>] cis'[ <fis a> cis'] <fis a>[ cis' <fis a>] cis'[ <fis a> cis'] }
 \times 2/3 { <fis a>8[ cis' <fis a>] cis'[ <fis a> cis'] <fis a>[ cis' <fis a>] cis'\p[ <fis a> cis'] } \break
 \times 2/3 { <fis a>8[ cis' <fis a>] cis'[ <fis a> cis'] <fis a>[ cis' <fis a>] cis'[ <fis a> cis']
 <fis a>8[ cis' <fis a>] cis'[ <fis a> cis'] <fis a>[ cis' <fis a>] cis'[ <fis a> cis']
 <eis b>\f[ cis' <eis b>] cis'[ <eis b> cis'] <eis b>[ cis' <eis b>] cis'[ <eis b> cis']
 <eis b>[ cis' <eis b>] cis'[ <eis b> cis'] <eis b>[ cis' <eis b>] cis'\p[ <eis b> cis'] } \break
 \times 2/3 { <eis b>[ cis' <eis b>] cis'[ <eis b> cis'] <eis b>[ cis' <eis b>] cis'[ <eis b> cis']
 <eis b>[ cis' <eis b>] cis'[ <eis b> cis'] <eis b>[ cis' <eis b>] cis'[ <eis b> cis']
 fis\f[ <a cis'> fis] <a cis'>[ fis <a cis'>] fis[ <a cis'> fis] <a cis'>[ fis <a cis'>]
 fis[ <a cis'> fis] <a cis'>[ fis <a cis'>] fis[ <a cis'> fis] <a cis'>[ fis <a cis'>] } \break
 \times 2/3 { fis[ <b d'> fis] <b d'>[ fis <b d'>] fis[ <b d'> fis] <b d'>[ fis <b d'>]
 fis[ <b d'> fis] <b d'>[ fis <b d'>] fis[ <b d'> fis] <b d'>[ fis <b d'>]
 g[ <b d'> g] <b d'>[ g <b d'>] g[ <b d'> g] <b d'>[ g <b d'>]
 g[ <b d'> g] <b d'>[ g <b d'>] g[ <b d'> g] <b d'>[ g <b d'>] } \break
 \times 2/3 { g8[ <c'! e'> g] <c' e'>[ g <c' e'>] g[ <c' e'> g] <c' e'>[ g <c' e'>]
 g[ <c' e'> g] <c' e'>[ g <c' e'>] g[ <c' e'> g] <c' e'>[ g <c' e'>]
 a[ <cis' e'> a] <cis' e'>[ a <cis' e'>] a[ <cis' e'> a] <cis' e'>[ a <cis' e'>]
 a[ <cis' e'> a] <cis' e'>[ a <cis' e'>] a[ <cis' e'> a] <cis' e'>[ a <cis' e'>] } \break
 \times 2/3 { a8[ <d' f'!> a] <d' f'>[ a <d' f'>] a8[ <d' f'> a] <d' f'>[ a <d' f'>]
 a8[ <d' f'> a] <d' f'>[ a <d' f'>] a8[ <d' f'> a] <d' f'>[ a <d' f'>] }
 \clef treble r2 <gis' gis''>4\sf\staccato r r2 <d'' d'''>4\sf\staccato r \break
 <cis'' cis'''>8\ff\staccato a'8([ gis' a'] gis'[ a' gis' a']) gis'( a' <cis'' e''> a' <d'' f''>\sf a' <b' d''> a')
 <cis'' e''>( a' <cis'' e''> a') <d'' f''>\sf( a' <b' d''> a') <cis'' e''>( a' <cis'' e''> a') <d'' f''>\sf( a' <b' d''> a')
 <cis'' e''>( a' gis' a') gis'( a' gis' a') \break
 gis'8( a' <cis' e'> a') <d' f'>\sf( a' <b d'> a') <cis' e'>( a' <cis' e'> a') <d' f'>\sf( a' <b d'> a')
 <cis' e'>( a' <cis' e'> a') <d' f'>\sf( a' <b d'> a') <cis' e'>( a gis a gis a gis a)
 gis( a <cis' e'> a) <d' f'>\sf( a <b d'> a) \break
 <cis' e'>8( a <cis' e'> a) <d' f'>\sf( a <b d'> a) <cis' e'>8( a <cis' e'> a) <d' f'>\sf( a <b d'> a) <a cis' e'>1
 \clef bass <f a d'>1_\markup { \italic "dim." } <e a cis'> <d f bes!> \grace { cis16[ e] } a1\p~ a1
 bes2.\sf( a4_\markup { \italic "dim." } g4 f ees d cis g_\markup { \italic "rallent." } bes a g f ees d)
 \tempo 4 = 40
 <cis e! a>2\arpeggio^\markup { \large "Largo." } \clef treble cis'4\staccato e'\staccato
 a'2_\markup { \italic "con espressione e semplice" }~ a'8[ a' a' bes'] a'4 g'4~ g'8..[ g'32 e''8.. d''32]
 d''4 cis''2 e''4 e''4._\accent g'8 bes'4. a'8 g'4 f' r4^\fermata
 \tempo 4 = 224 a'8\p^\markup { \large "Allegro." }( g') g'( f') f'( e') e'( d') a'( g')
 g'( f') f'( e') e'( d') d''_\markup { \italic "cresc." }( c''!) c''( bes') bes'( a') a'( g') g'( gis')
 \tempo 4 = 40 << { gis'4.^\markup { \translate #(cons 3 -1) { \musicglyph #"scripts.turn" } }^\markup { \large "Adagio." }(
 b'16 a') a'2^\fermata } \\ { f'2\sf\> e'2\p\! } >> s2^\markup { \large "Largo." } e'4\pp\staccato g'\staccato
 c''1^\fermata des''2 des'4.._\markup { \italic "con espressione e semplice" } des'16 c'4 bes4~ bes8[ g' g' aes']
 bes'4. bes'8 des''4 c''8[ g'] aes'1^\fermata
 \tempo 4 = 224 <gis cis' gis'>4\pp\staccato^\markup { \large "Allegro." } r <gis cis' gis'>\staccato r4
 <gis cis' gis'>4\staccato r <gis cis' gis'>\staccato r
 \new Voice { \times 2/3 { \stemUp a'!8_\markup { \italic "cresc." }[ fis' cis'] }
 \change Staff = "down" \times 2/3 { a8[ fis cis] } \times 2/3 { a8[ fis cis] } \times 4/6 { a,16[ cis fis a cis' fis'] }
 \change Staff = "up" \times 2/3 { a'8[ fis' cis'] } \times 2/3 { a8[ cis' fis'] }
 \stemDown \times 2/3 { a'8[ cis'' fis''] } a''16\sf[ fis'' cis'' a'] } \break
 <a d' a'>4\staccato r <a d' a'>\staccato r <a d' a'>4\staccato r <a d' a'>\staccato r
 \new Voice { \times 2/3 { \stemUp bes'8[ g' d'] }
 \change Staff = "down" \times 2/3 { bes8[ g d] } \times 2/3 { bes8[ g d] } \times 4/6 { bes,16[ d g bes d' g'] }
 \change Staff = "up" \times 2/3 { bes'8[ g' d'] } \times 2/3 { bes8[ d' g'] }
 \stemDown \times 2/3 { bes'8[ d'' g''] } bes''16\sf[ g'' d'' bes'] }
 <g' bes' cis'' e''>4\ff\staccato r <g' bes' cis'' e''>\staccato r
 <g' bes' cis'' e''>\staccato r <g' bes' cis'' e''>\staccato r \break
 \override TupletBracket #'transparent = ##t \override TupletNumber #'transparent = ##t
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { f''8[ d'' b'] gis'[ f' d''] b'[ gis' f'] d'[ f' gis'] b'[ d'' f''] gis''[ b'' d'''] } f'''4\sf( d''' cis'''\fp) r4 r e'''8( cis''')
 a''( bes''!) bes''( g'') r4 e'''8( cis''') a''( bes'') bes''( g'') r4 e'''8( cis''') \break
 a''8( bes'') bes''( g'') g''( f'') f''( e'') e''( f'') d''4\staccato r f'''8( d''') gis''( a'') a''( f'') r4 f'''8( d''')
 gis''( a'') a''( f'') r4 f'''8( d''') gis''( a'') a''( f'') f''( e'') e''( d'') \break
 d''8( cis'') e''4\staccato r bes''8_\markup { \italic "cresc." }( g'') dis''( e'') cis''4\staccato r bes''8( g'')
 dis''8( e'') cis''4\staccato r bes''8( g'') e''8\f( g'') cis''( e'') bes'( cis'') g'( bes') e'( g') cis'( e') bes( cis') g( bes) \break
 \clef bass e8([ g]) cis([ e] g,( e cis g, f,4\staccato) <f a d'>4\staccato
 << { ees'2(~ ees'2 d'4 cis' \stemDown <f a d'>4\staccato) } \\ { <g bes>2\sf~ <g bes>1 s4 } >>
 \clef treble <f' a' d''>4\staccato << { ees''2(~ ees''2 d''4 cis'' <f' a' d''>4\staccato) } \\
 { <g' bes'>2\sf~ <g' bes'>1 s4 } >> <d'' d'''>4\staccato <ees'' d'''>2\sf~ <ees'' d'''>4 <e'' d'''>\staccato
 <f'' d'''>2\sf~ <f'' d'''>4 << { d'''2 } \\ { fis''4_\markup { \italic "dim." }( g''4) } >>
 \set doubleSlurs = ##t <a'' d'''>4( <bes'' d'''>) \set doubleSlurs = ##f <bes' bes''>2\p( <a' a''>4
 d''\f\staccato) r4 r <fis a>4\staccato <g bes>\staccato <bes g'>2\sf <bes g'>4\staccato
 <a fis'>4\staccato r r <fis a>\staccato <g bes>\staccato <g' bes'>2\sf <g' bes'>4\staccato
 <fis' a'>4\staccato r r <fis a>\staccato \break
 <g bes>4\staccato <g' bes'>2\sf <g'' bes''>4\ff~ <g'' bes''>4\staccato r4 r
 \set doubleSlurs = ##t <g' bes'>4\p( <f' a'>\staccato) r4 r <f'' a''>( <e'' g''>\staccato) r4 r
 <e' g'>( <d' f'>\staccato) r r <d'' f''>4_\markup { \italic "cresc." }( <d'' e''>\staccato) r4 r
 <e'' d'''>( <e'' cis'''>\staccato\f) r4 r \set doubleSlurs = ##f <e' cis''>4(
 d''8\p) a' f' f'' e'' cis'' a' g'' f'' d'' a' a'' gis'' a'' gis'' a'' <a' f'' a''>2( <g'! e'' g''!> <f' d'' f''> <e' cis'' e''>) \break
 d''8 a' f' f'' e'' cis'' a' g'' f'' d'' a' a'' gis'' a'' gis'' a''
 << { g''4\rest <f'' a''>2( <e'' g''!>4~ <e'' g''> <d'' f''>2 <e' cis'' e''>4) } \\ { a'2. g'4~ g'4 f'2 s4 } >>
 d''8 a' f' f'' e'' cis'' a' g'' \break
 f''8 d'' a' a'' gis'' a'' gis'' a'' f''\< d'' a' a'' gis'' a'' gis'' a''\! f''\> d'' a' a'' gis'' a'' gis'' a''\!
 d''4\p r4 \clef bass d'2_\markup { \italic "cresc." } d'2 d'2
 <f a d'>1\pp~ <f a d'>1~ <f a d'>1~ <f a d'>1~ <f a d'>1~ <f a d'>1~ <f a d'>1
 \clef treble <f' a' d'' f''>1 <d' f' a' d''>1~ <d' f' a' d''>1^\fermata \bar "|."
}

 \new Staff = "down" {
 \clef bass
 \key d \minor
 \time 4/4
 \repeat volta 2 {
 << { <cis e a>2\arpeggio^\pp s2 s2 s4 } \\ { <cis, e, a,>1\arpeggio\sustainDown~ <cis, e, a,>2.\sustainUp } >>
 <cis a>4\p\staccato <d a>4\staccato <e a>\staccato <f a>\staccato <cis a>\staccato
 <d a>\staccato <e a>\staccato <f a>\staccato <fis d'>\staccato
 <g d'>\staccato <a d'>\staccato <bes d'>\staccato <bes d'>\staccato
 <a d'>2\sf\> <a cis'>2\p\!
 << { <e g c'!>2\arpeggio^\pp s2 s2 s4 } \\ { <e, g, c!>1\arpeggio\sustainDown~ <e, g, c>2.\sustainUp } >>
 <e c'>4 <f c'>_\markup { \italic "cresc." } r4 r <fis d'> <g d'> r r <g bes ees'>\staccato
 r4 <g bes cis' e'!>\staccato r <g bes cis' e'>\staccato r <gis b d' f'>\staccato r <gis b d' f'>\staccato
 <a d' f'>4\staccato r r2 R1 R1 r2 r4 bes,8\sf( a,) a,( cis) cis( d) d( bes,) bes,\sf( a,)
 a,8( cis) cis( d) d( bes,) bes,\sf( a,) << { a,4 <d f>2.\sf } \\ { a,1 } >> <a, d f>4 <a, d f> <a, e g> <a, e g>
 << { \override TupletBracket #'transparent = ##t \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { d'8^\f[ a f] a[ f a] f[ a f] a[ f a] \override TupletNumber #'transparent = ##t f[ a f] a[ f a] f[ a f] a[ f a]
 f[ a f] a[ f a] f[ a f] a[ f a] f[ a f] a[ f a] f[ a f] a[ f a] a'^\f[ cis' g] cis'[ g cis'] g[ cis' g] cis'[ g cis']
 g[ cis' g] cis'[ g cis'] g[ cis' g] cis'[ g cis'] g[ cis' g] cis'[ g cis'] g[ cis' g] cis'[ g cis']
 g[ cis' g] cis'[ g cis'] g[ cis' g] cis'[ g cis'] } } \\
 { d,2 f,4\staccato a,\staccato d1~ d1~ d1 e,2 g,4\staccato cis\staccato e1\sf~ e1~ e1 } >>
 f,2\f a,4\staccato d\staccato
 << { \override TupletNumber #'transparent = ##t \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { a8[ d' a] d'[ a d'] a[ d' a] d'[ a d'] } } \\ { f1 } >>
 gis,2 b,4\staccato e\staccato
 << { \override TupletNumber #'transparent = ##t \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { b8[ e' b] e'[ b e'] b[ e' b] e'[ b e'] } } \\ { gis1 } >> a,2 c4\staccato f\staccato
 << { \override TupletNumber #'transparent = ##t \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { c'8[ f' c'] f'[ c' f'] c'[ f' c'] f'[ c' f'] } } \\ { a1 } >>
 b,2 d4\staccato gis\staccato
 << { \override TupletNumber #'transparent = ##t \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { d'8[ gis' d'] gis'[ d' gis'] d'[ gis' d'] gis'[ d' gis'] } } \\ { b1 } >> c2 a4\staccato c'\staccato <dis' fis'>1\ff
 <dis' fis'>1\sf <dis' fis'>1\sf e8\fp e' <b d'!> e' f'! e' <b d'> e' e8 e' <b d'> e' f' e' <b d'> e' e8 e' <b d'> e' f' e' <b d'> e'
 e8 e' <b d'> e' e e' <gis b> e' e8 e' <a c'> e' f' e' <a c'> e' e8 e' <a c'> e' f' e' <a c'> e' e8 e' <a c'> e' f' e' <a c'> e'
 e8 e' <a c'> e' e e' <a c'> e'
 e8 e' <b d'> e' f' e' <b d'> e' e8 e' <b d'> e' f' e' <b d'> e' e8 e' <b d'> e' f' e' <b d'> e' <e b d'>4\f\staccato r r2 R1
 r4 gis,8([ b,] d,[ b, gis, d,] c,4\staccato) <c, e, a,>4\staccato
 << { bes,!2(~ bes,2 a,4 gis, a,\staccato) } \\ { <d, f,>2\sf~ <d, f,>1 <c, e,>4 } >> <c e a>4\staccato
 << { bes!2(~ bes2 a4 gis a\staccato) } \\ { <d f>2\sf~ <d f>1 <c e>4 } >> \clef treble <c' e'>4\staccato
 <d' f'>2\sf~ <d' f'>4 <dis' fis'>4\staccato <e' a'>2\sf~ <e' a'>4 << { a'2.~ a'4 } \\ { e'4( f'! cis' d') } >>
 \clef bass << { <bes! d'>4( <a c'!> <gis b> a\staccato) } \\ { d4\p e2 a,4 } >>
 a,,4\staccato bes,,!2\sf(~ bes,,2 a,,4 gis,, a,,4\staccato) a,,4\staccato bes,,2\sf(~ bes,,2 a,,4 gis,, a,,4\staccato)
 a,,4\staccato bes,,2\sf(~ bes,,2 a,,4 gis,,) g,,!8\p fis,, g,, a,, b,, g,, a,, b,,
 c,8 b,, c, d, e, dis, e, dis, e, dis, e, fis, gis, e, fis, gis, a, gis, a, b, c a, b, c d8 cis d e f d e f
 e8 dis' e' dis' e' dis' e' e << { <c' e'>2( <b d'> <a c'> <gis b>) } \\ { e1~ e1 } >>
 a8 e c a b gis e b c' a e e' dis' e' dis' e' << { e'4\rest <c' e'>2( <b d'>4~ <b d'> <a c'>2 <gis b>4) } \\ { e2 e e e } >>
 a8 e c a b gis e b c' a e e' dis' e' dis' e' << { d'4\rest <c' e'>2( <b d'>4~ <b d'> <a c'>2 <gis b>4) } \\ { e2 e e e } >>
 << { a,4( a e <gis b> a c' e <gis b>) s4 } \\ { a,2( e2 a2 e2 <a, a>4) } >> r4
 << { a2^\p^\markup { \italic "    cresc." } a a } \\ { <a,, a,>2\p <a,, a,> <a,, a,> } >> }
 \alternative {
 { <a,, a, a>1^\sf\>~ <a,, a, a>1\! << { g2 f2^\markup { \italic "dim." }( e2 f4 d4) } \\
 { <g,, g,>2( <f,, f,> e,2 f,4 d,) } >> } { <a,, a, a>1^\sf~ <a,, a, a>1 <g,, g, g>1~ <g,, g, g>1 } } \bar "||"
 \cadenzaOn \override NoteHead #'font-size = #-2 fis,,16^\pp\sustainDown[ a,, d, fis, a, d fis a] s1
 \cadenzaOff \bar "|" r1^\fermata\sustainUp
 \cadenzaOn bis,,16^\pp\sustainDown[ dis, fis, a, bis, dis fis a bis dis'] s1
 \cadenzaOff \bar "|" r1^\fermata\sustainUp
 \cadenzaOn cis,16^\pp\sustainDown[ fis, ais, cis fis ais cis' fis'] s1
 \cadenzaOff \bar "|" r1^\fermata\sustainUp \override NoteHead #'font-size = #0
 fis,,2\ff a,,!4\staccato cis,\staccato fis,4\staccato r4 r4 \clef treble cis''4\p( bis' cis'' d''! cis'') cis''2 cis''
 \clef bass gis,,2\f b,,!4\staccato eis,\staccato gis,4\staccato r r \clef treble cis''4\p( bis' cis'' d'' cis'')
 cis''2 cis'' \clef bass a,,2\f cis,4\staccato fis,\staccato a,4\staccato r \clef treble fis''4\sf\staccato r
 \clef bass b,,2 d,4\staccato fis,\staccato b,\staccato r \clef treble fis''4\sf\staccato r
 \clef bass b,,2 d,4\staccato g,\staccato b,\staccato r \clef treble g''4\sf\staccato r
 \clef bass c,!2 e,4\staccato g,\staccato c4\staccato r \clef treble g''4\sf\staccato r
 \clef bass cis,2 e,4\staccato a,\staccato cis4\staccato r \clef treble a''4\sf\staccato r
 \clef bass d,2 f,4\staccato a,\staccato d4\staccato r \clef treble a''4\sf\staccato r
 \clef bass \override TupletBracket #'transparent = ##t \times 2/3 { b,8( d'8[ b]) }
 \override TupletNumber #'transparent = ##t \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { d'8[ b d'] b[ d' b] d'[ b d'] bes,! d'[ bes] d'[ bes d'] bes[ d' bes] d'[ bes d'] }
 a,8\ff\staccato a8([ gis a] gis[ a gis a]) gis( a <cis' e'> a <d' f'>\sf a <b d'> a)
 <cis' e'>( a <cis' e'> a) <d' f'>\sf( a <b d'> a) <cis' e'>( a <cis' e'> a) <d' f'>\sf( a <b d'> a)
 <cis' e'>( a gis a) gis( a gis a)
 gis8( a <cis e> a) <d f>\sf( a <b, d> a) <cis e>( a <cis e> a) <d f>\sf( a <b, d> a)
 <cis e>( a <cis e> a) <d f>\sf( a <b, d> a) <cis e>( a, gis, a, gis, a, gis, a,)
 gis,( a, <cis e> a,) <b, d>\sf( a, <d f> a,)
 <cis e>8( a, <cis e> a,) <b, d>\sf( a, <d f> a,) <cis e>( a, <cis e> a,) <b, d>\sf( a, <d f> a,) <a, cis e>1
 <a,, a,>1 <a,, a,> <a,, a,> <a,, a,>1\p~ <a,, a,> bes,2.\sf( a,4 g, f, ees, d, cis, g, bes, a, g, f, ees, d,)
 \tempo 4 = 40
 <cis, e,! a,>1\arpeggio\sustainDown R1\sustainUp R1 R1 R1 r2 r4^\fermata
 \tempo 4 = 224 <cis a>4\p\staccato <d a>\staccato <e a>\staccato <f a>\staccato <cis a>\staccato
 <d a>\staccato <e a>\staccato <f a>\staccato <fis d'>\staccato
 <g d'>\staccato <a d'>\staccato <bes d'>\staccato <bes d'>\staccato <a d'>2\sf\> <a cis'>2\p\!
 << { <e g c'!>2\arpeggio^\pp s2 s1 } \\ { <e, g, c!>1\arpeggio\sustainDown~ <e, g, c>1\sustainUp } >>
 R1 R1 R1 r1^\fermata <eis,, cis, eis,>4\pp\staccato r <eis,, cis, eis,>\staccato r
 <eis,, cis, eis,>4\staccato r <eis,, cis, eis,>\staccato r
 \new Voice { <fis,, cis, fis,>4\staccato g,4\rest g,2\rest } R1
 <fis, d fis>4\staccato r <fis, d fis>\staccato r <fis, d fis>4\staccato r <fis, d fis>\staccato r
 \new Voice { <g, d g>4\staccato g,4\rest g,2\rest } R1
 <g bes cis' e'>4\ff\staccato r <g bes cis' e'>\staccato r <g bes cis' e'>\staccato r <g bes cis' e'>\staccato r
 <gis b d' f'>4 r4 r2 R1 \clef treble a8\fp a' <e' g'> a' bes'! a' <e' g'> a' a8 a' <e' g'> a' bes' a' <e' g'> a'
 a8 a' <e' g'> a' bes' a' <e' g'> a'
 a8 a' <e' g'> a' a a' <cis' e'> a' a a' <d' f'> a' bes' a' <d' f'> a' a a' <d' f'> a' a a' <d' f'> a' a a' <d' f'> a' a a' <d' f'> a'
 a a' <d' f'> a' a a' <d' f'> a' a a' <e' g'> a' bes' a' <e' g'> a' a a' <e' g'> a' bes' a' <e' g'> a'
 a a' <e' g'> a' bes' a' <e' g'> a' <a e' g'>4\f r r2 R1

 \clef bass r4 cis,8([ e,] g,,( e, cis, g,,) f,,4\staccato <f, a, d>4\staccato
 << { ees2~ ees2 d4 cis <f, a, d>4\staccato } \\ { <g, bes,>2\sf~ <g, bes,>1 s4 } >>
 <f a d'>4\staccato << { ees'2(~ ees'2 d'4 cis' \stemDown <f a d'>4\staccato) } \\
 { <g bes>2\sf~ <g bes>1 s4 } >> \clef treble <f' a'>4\staccato <g' bes'>2\sf~ <g' bes'>4 <gis' b'>4\staccato
 <a' c''!>2\sf~ <a' c''>4 <a' c''>4( <bes'! d''> <fis' c''> <g' bes'>)
 \clef bass << { \stemDown <g ees' g'>4( \stemUp <d' f'> <cis' e'> \stemDown <d d'>4\staccato) } \\
 { s4 a2 s4 } >> d,4\staccato ees,2\sf(~ ees,2 d,4 cis, d,4\staccato) d,4\staccato
 ees,2\sf(~ ees,2 d,4 cis, d,4\staccato) d,4\staccato ees,2\sf~ ees,2( d,4 cis,)
 c,!8\p( b,, c, d, e,! c, d, e,) f, e, f, g, a, gis, a, gis, a,8 gis, a, b, cis a, b, cis d cis d e f d e f
 g8 fis g a bes! g a bes a gis a gis a gis a a,
 << { <f a>2( <e g!> <d f> <cis e>) } \\ { a,1~ a,1 } >> d8 a, f, d e cis a, e f d a, a gis a gis a
 << { b4\rest <f a>2( <e g!>4~ <e g> <d f>2 <cis e>4) } \\ { a,2 a, a, a, } >>
 d8 a, f, d e cis a, e f d a, a gis a gis a
 << { a4\rest <f a>2( <e g!>4~ <e g> <d f>2 <cis e>4) d,4( d a, <cis e> d f a, <cis e> <d, d>4) } \\
 { a,2 a, a, a, d,2( a, d2 a,) } >> r4 <d, d>2 <d, d> <d, d>
 d,8\sustainDown a,, f,, f, d, a,, a, f, d,8 a,, f,, f, d, a,, a, f, d,8 a,, f,, f, d, a,, a, f, d,8 a,, f,, f, d, a,, a, f,
 d,8 a,, f,, f, d, a,, a, f, d,8 a,, f,, f, d, a,, a, f,\sustainUp d,1
 <d, a, f>1\sustainDown <d, a, d>1~ <d, a, d>1^\fermata\sustainUp \bar "|."
}
>>

 \layout { }

 \midi { }

}
