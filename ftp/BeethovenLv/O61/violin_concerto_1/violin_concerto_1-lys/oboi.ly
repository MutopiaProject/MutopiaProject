\version "2.10.3"

 oboi = {
 \set Staff.instrumentName = "Oboi."
 \set Staff.midiInstrument = "oboe"
 \clef treble
 \key d \major
 \time 4/4
 R1 << { a''2( b'' a''4 g''2) } \\ { d''1\p_\markup { \italic "    dolce" }( cis''2.) } >>
 <d'' fis''>4( <b' e''> <a' d''> <g' cis''> <fis' d''>) <cis'' e''>4 r4 r2
 <e'' g''>2_\markup { \italic "cresc." }( <d'' fis''> <g'' b''>2.\sf\>) <fis'' a''>4( <e'' g''>\!\p <d'' fis''> <cis'' e''>)
 << { a''8 e'' } \\ { cis''4 } >> \set doubleSlurs = ##t <e'' g''>2( <d'' fis''>4) r4 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 \set doubleSlurs = ##f
 \setTextCresc <d' fis'>2\<~ <d' fis'>8( <e' g'> <fis' a'> <g' b'> <a' cis''> <b' d''> <cis'' e''> <d'' fis''>
 <e'' g''> <fis'' a''>) <fis'' a''>\staccato <fis'' a''>\!\staccato <fis'' a''>1\f~ <fis'' a''>4 r r2
 R1 R1 <d'' f''>2\ff <d'' bes''>8 r <bes' d''> r <d'' f''>8 r8 r4 r2 <c'' ees''>2 <c'' ees''>8 r <c'' ees''> r
 <c'' d''>4 r r2 <bes' d''>2 <bes' d''>8 r8 r4 <a' e''>2 <e' e''>8 r <a' a''> r
 <f'' a''>4. r8 <d'' gis''>4. r8 <cis'' a''>4 r4 r2
 r4 << { a''4( f''8) } \\ { a''4\sf( f''8) } >> r8 << { d''4( a'8) } \\ { d''4\sf( a'8) } >> r8 r4 r2
 r4 << { a''4( f''8) } \\ { a''4\sf( f''8) } >> r8 << { d''4( a'8) } \\ { d''4\sf( a'8) } >> r8 r4 r2
 R1 R1 R1 <d'' fis''!>4\p( <e'' g''> <fis'' a''> <g'' b''>8 <e'' cis'''>) << { d'''2( a'') } \\ { fis''2 fis'' } >>
 <e'' g''>4( <d'' fis''> <cis'' e''> <d'' fis''>8 <b' d''>) << { e''2( a') } \\ { cis''2( a') } >>
 <d'' fis''>4( <e'' g''> <fis'' a''> <g'' b''>8 <e'' cis'''>) << { d'''2( a'') } \\ { fis''2 fis'' } >>
 << { b''4( g'' e'' a'') d''4 } \\ { g''4( e'' cis'') cis'' d''4 } >> r4 r2 R1 R1 R1 R1 R1 R1 R1 R1
 R1 <d'' f''>2.\p( <e'' g''>8 <f'' a''>) << { bes''4( a'' g'' c''') } \\ { g''4_\markup { \italic "cresc." }( f'' e'') e'' } >> <f'' a''>1
 \set doubleSlurs = ##t <e'' g''>4( <d'' f''> <cis''! e''> <a' a''>)~ <a' a''>4 r4 r2 \set doubleSlurs = ##f
 R1 R1 R1 R1 R1 R1 <e'' b''>1\f <e'' cis'''!>1\f
 <a'' d'''>2\ff <a'' d'''>4 r <g'' b''>2 <g'' b''>4 r <fis'' a''>4\f r <d'' fis''>\f r <e'' g''>\f r <cis'' e''>\f r
 <d'' fis''>1\ff~ <d'' fis''>1 <cis'' e''>1~ <cis'' e''> <d'' fis''>4 r r2 R1 <cis'' e''>1~ <cis'' e''>
 <d'' fis''>4 r <cis'' e''> r <d'' fis''> r <cis'' e''> r R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 \set doubleSlurs = ##t <fis'' a''>2\p( <g'' b''>) <cis'' g''>2.( <d'' fis''>4)
 \set doubleSlurs = ##f << { e''4( d'' cis'' d'') e''4 f''4\rest f''2\rest } \\ { R1 R1 } >>
 \set doubleSlurs = ##t <e'' g''>2_\markup { \italic "cresc." }( <d'' fis''>2) <g'' b''>2.\sf\>( <fis'' a''>4\!\p)
 \set doubleSlurs = ##f <e'' g''>4( <d'' fis''> <cis'' e''>) <cis'' e''> \set doubleSlurs = ##t <e'' g''>2( <d'' fis''>4) r4
 \set doubleSlurs = ##f R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 <a' fis''>2\f <a' fis''>8 r r4 R1 <e'' cis'''>2 <e'' cis'''>8 r r4 R1 R1 R1 R1 R1 R1 R1 R1 R1
 << { f''4\rest f''8\rest e''8\p e''4 f''8\rest e''8 e''4 f''4\rest f''2\rest
 f''4\rest f''8\rest e'' e''8[ e''] f''8\rest e''8 e''4 f''4\rest f''2\rest } \\ { R1 R1 R1 R1 } >> R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 << { f''4\rest c''2\p( d''8 e'') \setTextCresc f''4\<( e'' d'' g'') e''1 d''4( c'' b'\!\f e''\sf)~ e''1\>~ e''1\!\p~ e''1~ e''1~ e''1~
 e''4 f''4\rest f''2\rest } \\ { R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 } >> R1 R1 R1 R1 R1 R1 R1
 <cis'' a''>1\p^\markup { "TUTTI." }~ <cis'' a''>1 <b' gis''>1~ <b' gis''>1
 <cis'' a''>4^\markup { "SOLO." } r r2 R1 R1 R1

 R1 R1 R1 << { f''4\rest fis''4^\p f''\rest fis'' f''\rest cis'' f''\rest d'' } \\ { R1 R1 } >> R1 R1 R1
 r4 << { fis''4( a'' g''8 e'') } \\ { d''4_\markup { \italic "cresc." } cis'' cis'' } >> <d'' fis''>4\f r4 r2 R1
 <fis'' a''>4\f r4 r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 << { gis''1_\markup { \italic "cresc." } } \\ { R1 } >> <a' a''>2\ff <f'' a''>8 r <f'' a''> r
 <f'' a''>8 r r4 r2 <bes' bes''>2 <bes' e''>8 r <bes' g''> r << { a'8 } \\ { a'8 } >> r8 r4 r2 <a' f''>2 <a' f''>8 r r4
 <b'! e''>2 << { b'8 } \\ { b'8 } >> r8 << { e''8 } \\ { e''8 } >> r8 <c'' e''>4~ <c'' e''>8 r <a' dis''>4~ <a' dis''>8 r
 <e' e''>8 r r4 r2 r4 << { e''4( c''8) } \\ { e''4\sf( c''8) } >> r8 <a' a''>4\sf( <e' e''>8) r8 r4 r2
 r4 << { e''4( c''8) } \\ { e''4\sf( c''8) } >> r8 <a' a''>4\sf( <e' e''>8) r8 r4 r2 R1 R1 R1
 <a' cis''>4\p_\markup { \italic "    dolce" }( <b' d''> <cis'' e''> <d'' fis''>8 <b' gis''>) << { a''2( e'') } \\ { cis''2 cis'' } >>
 R1 R1 <a' cis''>4( <b' d''> <cis'' e''> <d'' fis''>8 <b' gis''>)
 << { a''2( e'') fis''4( d'' b' e'') a'4 } \\ { cis''2 cis'' d''4( b' gis' gis') a' } >> r4 r2
 c''4\ff( d'' e'' fis''8 gis'') a''2( e'') d''4( c'' b' c''8 a') b'2( e') c''4( d'' e'' fis''8 gis'')
 a''2( e''2) f''4( e'' d'' g''!) e''1 d''4( c'' b' e'') c''2._\markup { \italic "sempre ff" }( d''8 e'') f''4( e'' d'' g'')
 e''1 d''4( c'' b' e'')~ e''1_\markup { \italic "sempre f" }
 e''4\staccato( e''\staccato e''\staccato e''\staccato) << { e''1~ e''4 } \\ { e''1~ e''4 } >>
 <g' bes'>4\staccato( <g' bes'>\staccato <g' bes'>\staccato) <g' bes'>2 <bes' e''>2 <e'' g''>2 <g'' bes''>
 <f'' a''>1\sf <d'' b''!>1\sf <e'' c'''>2 <e'' c'''>4 r <f'' a''>2 <f'' a''>4 r <e'' g''>4 r <c'' e''> r <d'' f''> r <b' d''> r
 << { c''4 } \\ { c''4 } >> r4 r2 R1 <b' d''>1_\markup { \italic "sempre ff" }~ <b' d''>1
 << { c''2( e'4 g' a' b' c'' d''8 c'') } \\ { c''2( e'4 g' a' b' c'' d''8 c'') } >> <b' d''>1~ <b' d''>1
 <c'' e''>4 r <b' d''> r <c'' e''> r <b' d''> r R1 R1 R1 R1 <f' b'>4\f r r2
 <f' b'>4\f r r2 <f' b'>4\p r r2 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1

 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
 R1 R1 R1 R1 r4 <cis'' g''>8_\markup { \italic "cresc." } r <cis'' g''> r <cis'' g''>\f r
 <d'' fis''>8\ff r << { d''8 } \\ { d''8 } >> r8 << { d''8 } \\ { d''8 } >> r8 << { d''8 } \\ { d''8 } >> r8
 \set doubleSlurs = ##t <fis'' a''>2( <g'' b''>) \set doubleSlurs = ##f <e'' g''>2.\sf
 << { fis''4( e'' d'' cis'' d'') e'' } \\ { d''4( e'' d'' cis'' d'') e'' } >> r4 r2 \set doubleSlurs = ##t <e'' g''>2( <d'' fis''>)
 \set doubleSlurs = ##f <g'' b''>2.\sf << { a''4( g'' fis'' e'' a''8 e'') } \\ { fis''4( e'' d'' cis'') cis'' } >>
 \set doubleSlurs = ##t <e'' g''>2( <d'' fis''>4) r4 \set doubleSlurs = ##f
 R1 <e'' g''>1 R1 <g'' b''>1\sf~ <g'' b''>2_\markup { "sempre f" }( <fis'' a''> <e'' g''> <d'' fis''>) <b' e''>1
 <g' cis''>1 <fis' d''>2 <fis' d''>8 r r4 R1 <cis'' e''>2 <cis'' e''>8 r r4 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 << { b'4\rest b''4\p( g'' e'') d'' f''4\rest e''2\rest } \\ { R1 R1 } >> R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 r4 r8 <cis'' e''>8\p <d'' f''>4 r8 <d'' f''> <cis'' e''>4 r r2
 r4 r8 <cis'' e''> <d'' f''>8 <d'' f''> r8 <d'' f''> <cis'' e''>4 r r2 R1 R1 R1
 R1 R1 R1 R1 R1 <e'' g''>4\p_\markup { \italic "    dolce" }( <d'' fis''> <cis'' e''> <d'' fis''>8 <b' d''>)
 << { e''2( a'2) fis''1~ fis'' e'' d''4 } \\ { cis''2( a'2) d''1~ d''~ d''2 cis'' d''4 } >> r4 r2 R1 R1 R1 R1 R1 R1 R1 R1
 R1 << { r4 d''2\p( e''8 f'') \setTextCresc g''4\<( f'' e'' e'') f''1 e''4( d'' cis''!\!\f a'\sf)~ a'1\>~ a'1\!\p~
 a'1~ a'~ a'~ a'4 r4 r2 } \\ { R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 } >> R1 R1 R1 R1 R1
 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 r4 <g'' b''>4\p r <g'' b''>
 r4 <d'' fis''> r <e'' g''> <d'' fis''>4 r r2 R1 R1
 << { r4 \setTextCresc g''4\< fis'' fis'' g''\!\f r4 r2 } \\ { R1 R1 } >> R1 << { f''4\f r4 r2 } \\ { R1 } >>
 R1 R1 R1 r8 <d'' fis''!>\pp[ <d'' fis''> <d'' fis''>] <d'' fis''>4 r4
 r8 <d'' fis''>[ <d'' fis''> <d'' fis''>] <d'' fis''>4 r4 R1 R1 R1 R1 R1 R1 R1 R1 R1 r2 r4 <d'' f''>8\p r8
 <d'' fis''!>8 r <d'' fis''>_\markup { \italic "cresc." } r <d'' fis''> r <d'' fis''> r <fis'' a''>1\sfp
 <cis'' e''>8 r <cis'' e''>_\markup { \italic "cresc." } r <cis'' e''> r <cis'' e''> r
 <cis'' g''>1\sfp~ <cis'' g''>1~ <cis'' g''>1~  <cis'' g''>1_\markup { \italic "cresc." }~ <cis'' g''>1~ <cis'' g''>1~
 <cis'' g''>1 << { d''2 } \\ { d''2\ff } >> <d'' f''>8 r <f'' bes''> r <bes'' d'''>4 r r2
 <c'' ees''>2 <c'' ees''>8 r <c'' ees''> r <c'' d''>4 r4 r2 <bes' d''>2 <bes' d''>8 r r4 <a' e''>2 <e' e''>8 r <a' a''> r
 <f'' a''>4. r8 <d'' gis''>4. r8 <cis'' a''>4 r4 r2
 r4 << { a''4( f''8) } \\ { a''4\sf( f''8) } >> r8 << { d''4( a'8) } \\ { d''4\sf( a'8) } >> r8 r4 r2
 r4 << { a''4( f''8) } \\ { a''4\sf( f''8) } >> r8 << { d''4( a'8) } \\ { d''4\sf( a'8) } >> r8 r4 r2
 r4 <fis''! d'''>4\ff <fis'' d'''> <fis'' d'''> <fis'' d'''>2^\fermata r2^\fermata R1 R1 R1 R1 R1 R1
 R1 r4 <d'' fis''>4\p\staccato( <d'' fis''>\staccato <d'' fis''>\staccato) << { e''1 } \\ { d''2 cis'' } >>
 <d'' fis''>4 r r2 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 r2 <e'' cis'''>4\f r
 <fis'' d'''>4\ff r <d'' d'''> r << { d''4 } \\ { d''4 } >> r4 r2 \bar "|."
}