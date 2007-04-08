\version "2.10.3"

 pianoone = {
 \set Staff.midiInstrument = "acoustic grand"
 \clef treble
 \key a \major
 \time 3/4
 R2. R2.^\markup { \bold "Adagio sostenuto." } R2. R2.
 <a' cis'' e'' a''>4\fp( <f' a' d'' f''> <d' a' d''>)
 << { b'4 <gis' e''>4.( gis'8) } \\ { <d' a'>4 ~ d'8[ b( e' d')] } >>
 a'4\staccato_\markup { \italic "cresc." }( <d' d''>4\staccato <d' d''>\staccato)
 <d' fis'! a' d''>4\p ~ <d' g' d''>8 r r4 r4 <g' e''>4\staccato_\markup { \italic "cresc." }( <a' e''>4\staccato)
 << { e''4( dis''8) } \\ { a'4. } >> r8 r4 r4 <b d'! gis'!>4\p
 <b c' gis'>4_\markup { \italic "cresc." } ~ <a c' gis'>( <a c' a'>) <a c' d'>4\sf
 <g b d'>4\p r8 r16 e'([ fis']) r r ees'( d'8\staccato) r16 g'16([ g'']) r r e'!([ fis']) r r
 ees'( d'8\staccato) r16 g'([ g'']) r r e'!([ f']) r r <e' g'>( <d' f'>8) r16 a'([ a'']) r r
 <e' g'>16([ <d' f'>]) <e' g'>([ <d' f'>]) <e' g'>( <d' f'>8) r16 a'([ a'']) r r
 <bes' cis''>_\markup { \italic "cresc." }([ <a' d''>]) <bes' cis''>([ <a' d''>])
 <bes' cis''>_\markup { \italic "decr." }( <a' d''>16) a'16([ a'']) a'\pp( a''4^\fermata)
 \bar "||" \break

 \key a \minor
 \time 4/4
 \repeat volta 2 {
 \partial 4 r4 <a d' f'>2.\sf^\markup { \bold "Presto." } <a d'>4 <gis b e'>4 r r2 <c' e' g'>4 r r2
 <gis b e'>4 r r2 <c' e' g'>4_\markup { \italic "cresc." } r r2 <c' e' g'>4 r <c' e' g'> r
 <b d' g'>4_\markup { \italic "rallent." } r r2 <g b d' g'>4\sf r r2
 <g c' e'>2.\sf^\fermata e''4\p( <f' f''>2.\sf) <d' a'>4\staccato
 <e' gis'>4\staccato e'\staccato e'\staccato gis'\staccato a'\staccato e'\staccato e'\staccato a'\staccato
 b'\staccato e'\staccato e'\staccato b'\staccato
 c''\staccato_\markup { \italic "cresc." } a'\staccato a'\staccato c''\staccato
 c''\staccato a'\staccato a'\staccato c''\staccato d''1_\markup { \italic "rallent." } <g' b' d'' g''>1\sf
 \new Voice { \override NoteHead #'font-size = #-2 s4 s16
 \cadenzaOn \stemDown e'16[ g' c'' e'' g'' c''' e''' c''' g'' e'' c'' g' e'' c'' g' e'
 \change Staff="three" \stemUp c' g \change Staff="two" \stemDown e'
 \change Staff="three" \stemUp c' g e g c' \change Staff="two" \stemDown e' g' c'' e'' g'' c''']
 e'''4^\fermata r4 \cadenzaOff \bar "|" }
 c'8\p ees' f' ees' f'_\markup { \italic "cresc." } ees' f' ees' bes d' f' d' f' d' f' d'
 bes8 ees' ges' ees' ges' ees' ges' ees' bes\f e'! g'! e' g' e' g' e' d'\f f' gis' f' gis' f' gis' f'
 a8 e' a' e' a d' a' d' c' e' a' e' c' e' c' e' b e' d' e' b e' d' e' c'4\p r r2 R1
 a'8 a'' gis'' a'' a' a'' b' a'' c'' a'' b' a'' c'' a'' a' a'' e''4 r r2 R1
 e''8 e''' dis''' e''' e'' e''' f''! f'''! e'' e''' d''! d'''! c'' c''' b' b'' a' a'' gis'' a'' a' a'' b' a'' c'' a'' d'' a'' c'' a'' b' a''
 a'4 r r2 R1 e''8 e''' dis''' e''' e'' e''' fis'' e''' gis'' e''' a'' e''' b'' e''' gis'' e''' e''4 r r2 R1
 a8\f c' e' c' e'\sf c' a c' a c' f' c' f'\sf c' a c' b d' f' g' b' d'' f'' d'' f'' d'' b' g' f' g' f' d'
 c'8 e' g' e' g'\sf e' c' e' cis' e' a' e' a'\sf e' cis' e' d' f' a' f' dis' fis' b' dis'' fis'' a'' fis'' dis'' b' a' g' fis'
 e'8 g' b' g' b'\sf g' e' g' fis' a' dis'' a' dis''\sf a' fis' a' g' b' e'' b' a'\sf c'' e'' c''
 a'8\sf c'' e'' a' ais'\sf cis'' e'' ais' b' dis'' fis'' g'' a''!\ff fis'' dis'' fis'' a'' fis'' dis'' fis'' a'' fis'' dis'' fis''
 a'' fis'' dis'' fis'' a'' fis'' dis'' a' g'' e'' b' e'' g'' e'' cis'' g' fis'4 r4 a'8\ff fis' dis' fis'
 a'8 fis' dis' fis' a' fis' dis' fis' a' fis' dis' fis' a' fis' dis' a g' e' b e' g' e' cis' g fis4 r r2 R1 R1 R1 R1 R1
 r2 b''8\sf fis'' e'' dis'' b''\sf fis'' e'' dis'' b''\sf fis'' e'' dis'' b''4\f r r2 R1_\markup { \italic "decresc." }
 <b e'>1_\markup { \italic "p dolce" } <a e'> <b e'> << { e'1 } \\ { cis'2( b4 a) } >>
 <b e'>1 <a e'> <b e'> << { e'1 } \\ { cis'2( b4 a) } >>
 <b e'>1 <a e'>2 <b e'> <cis' e'>1_\markup { \italic "cresc." } <cis' e'> <b e'> <ais e'>
 <b dis'>4\p r4 <b' b''>2\sf( ~ <b' b''>\> <a' a''>\!) <g'! g''!>1\p( <a' a''> <g' g''> <fis' fis''>)
 <g' g''>1^\markup { \translate #(cons 4 1) { \musicglyph #"scripts.turn" } }( <b' b''>2 <a' a''> <g' g''>1 <fis' fis''>)
 <g' g''>1^\markup { "Adagio" }_\markup { \italic "cresc." }
 <a' c'' d'' fis'' a''>2.^\fermata\arpeggio r4^\markup { "a tempo" } R1
 r2 r4 d''8\f d''' c''' a'' fis'' d'' c'' a' fis' c' b4 r4 r2 R1 r2 r4 b'8\f b'' a'' fis'' dis'' b' a' fis' dis' a
 g8 b e' g' b' e'' g'' b'' a'' fis'' dis'' b' a' fis' dis' a g b e' g' b' e'' g'' b'' a'' fis'' dis'' b' a' fis' dis' a
 g8 g' a a' b\sf b' g g' a a' b b' c'\sf c'' a a' b b' c' c'' d'\sf d'' b b' c' c'' dis' dis'' e' e'' fis' fis''
 <g' g''>4 r <e'' e'''>2\sf ~ <e'' e'''>4 r <e'' e'''>2\sf ~ <e'' e'''>4 r <e'' e'''>2\sf ~ <e'' e'''>2
 <e'' e'''>4\sf\staccato <e'' e'''>4\staccato r2 <e'' e'''>4\sf\staccato <e'' e'''>\staccato
 <e'' e'''>4\sf\staccato <e'' e'''>\staccato <e'' e'''>\staccato <e'' e'''>\staccato
 f''8\sf f''' d'' d''' b' b'' d'' d''' f''\sf f''' d'' d''' c'' c''' b' b'' c''\sf c''' a' a'' g'! g''! fis' fis'' a'\sf a'' fis' fis'' e' e'' dis' dis''
 e'8\sf e'' c' c'' b b' ais ais' b\sf b' ais ais' b b' dis' dis''( <e' e''>2\sf) ~ <e' e''>4. <dis' dis''>8(
 <e' e''>2\sf) ~ <e' e''>4. <dis' dis''>8( <e' e''>2\sf) ~ <e' e''>4. <fis' fis''>8(
 <g' g''>4) r8 <ais' ais''>8( <b' b''>4\staccato) r8 <dis'' dis'''>8( <e'' e'''>1\sf)
 <d''! d'''!>4( <cis'' cis'''>) <b' b''>\staccato <cis'' cis'''>\staccato <d'' d'''>2 <a'! a''!>
 \acciaccatura b'16 b''1 \startTrillSpan <c'' c'''>1\sf \stopTrillSpan
 <b' b''>4( <a' a''>) <gis' gis''>\staccato <a' a''>\staccato
 <b' b''>2\staccato <e' e''>\staccato <fis' fis''>\staccato <b b'>\staccato <e' e''>8
 \clef bass b8[ e' b] g\sf b e' b g b e' b g\sf b e' b g b e' b g b e' b g b e' b g b e' b g b e' b g b e' b
 a8 b e' b a b e' b f! a d' a f a d' a f g d' g f g d' g e\sf g c' g e g c' e' fis c' e' c' fis c' e' c' fis b dis' b g b e' b
 a8 b e' b fis b dis' b \clef treble g8\sf b e' g' b e' g' b'
 a8_\markup { \italic "cresc." } e' a' e' a e' a' e' b e' g' e' b e' g' e' b e' fis' e' b dis' fis' dis'
 b8\ff b' b' b'' b' b'' b' b'' b' b'' a' a'' g' g'' a' a'' b' b'' b' b'' e' e'' e' e'' fis' fis'' fis' fis'' b b' b b'
 e' e'' dis'' e'' e' e'' fis' e'' g' e'' fis' e'' g' e'' e' e'' <b dis' fis' b'>4\staccato r r2 <b' dis'' fis'' b''>4\staccato r r2
 e'8 e'' dis'' e'' e' e'' fis' e'' g' e'' fis' e'' g' e'' e' e'' <b dis' fis' b'>4\staccato r r2 <b' dis'' fis'' b''>4\staccato r r2
 <e' g' b' e''>4\sf\staccato r r2 <b' dis'' fis'' b''>4\sf\staccato r r2
 <e' g' b' e''>4\sf\staccato r r2 <b' dis'' fis'' b''>4\sf\staccato r r2 <e' g' b' e''>4\sf\staccato r r2
 <b' dis'' fis'' b''>4\sf\staccato r <b' dis'' fis'' b''>\sf\staccato r <e'' b'' d'''! e'''>1\sf ~ <e'' b'' d''' e'''>1^\fermata }
 \alternative { { <a c' e'>1\p ~ <a c' e'>2.^\fermata }
 { <a c' e'>4\p ~ \bar "" <a c' e'>2 ~ \partial 4 <a c' e'>4 ~ <a c' e'>2 ~ <a c' e'>4.^\fermata e''8\p( } }
 <f' f''>2) ~ <f' f''>4. e''8( <f' f''>2) ~ <f' f''>4. e''8( <f'f''>2) ~ <f' f''>4. gis''8( a''4) r8 b''8( c'''4) r8
 e'''8( f'''1 ees'''4_\markup { \italic "cresc." } d'''4 c''' d''' ees'''2 a''2)
 <d'' d'''>4\f( <c'' c'''>) <bes' bes''>\staccato <a' a''>\staccato <g' g''>8 \clef bass bes8\p[ d' bes] d' bes d' bes
 g bes d' bes d' bes d' bes g bes d' bes d' bes d' bes g bes d' bes g bes d' bes g bes d' bes
 \setTextCresc d\< bes d' bes d c' d' c' d c' d' c' d bes d' bes d bes d' bes aes bes d' bes aes d' bes aes\! g4\f
 \clef treble r8 d''8( <ees' ees''>2\sf) ~ <ees' ees''>4. d''8( <ees' ees''>2\sf) ~ <ees' ees''>4.
 d''8( <ees' ees''>4.\sf) fis''8( <g' g''>4\staccato) r8 a''!8( <bes' bes''>4\staccato) r8 d'''8( <ees'' ees'''>4) r r2
 r2 <e''! e'''!> <f'' f'''>1 <ees'' ees'''>4( <d'' d'''>) <c'' c'''>\staccato <d'' d'''>\staccato
 <ees'' ees'''>2\staccato <c'' c'''>\staccato <f'' f'''> <c'' c'''> <des'' des'''>1
 <c'' c'''>4( <bes' bes''>) <aes' aes''>\staccato <bes' bes''>\staccato <c'' c'''>2\staccato <aes' aes''>\staccato
 <des'' des'''>2\staccato <aes' aes''>\staccato <bes' bes''>\staccato <c'' c'''>\staccato
 <aes' aes''>2\staccato <f'' f'''>\staccato <e'' e'''>4 aes'8 f' g' e' f' d' e' c' aes' f' g' e' f' d'
 e'8 c' aes' f' g' e' f' d' e' c' des' bes c' aes bes g aes4 ees'8 g' f' aes' g' bes' aes' c'' e' g' f' aes' g' bes'
 aes'8 c'' e' g' f' aes' g' bes' aes' c'' a' c'' bes' des'' c'' ees''
 des''8 f'' ees''' ges'' des''' f'' c''' ees'' bes'' des'' ees''' ges'' des''' f'' c''' ees''
 bes'' des'' ees''' ges'' des''' f'' c''' ees'' bes'' des'' aes'' c'' g''! bes' f'' aes'
 ees''8 g'! d'! f' ees' g' f' aes' g' bes' d' f' ees' g' f' aes' g' bes' d' f' ees' g' f' aes'
 g' bes' g' bes' aes' c'' bes' des'' c'' ees'' c' ees' des' f' ees' g' f' aes' f' aes' g' bes' aes' c''
 bes'8 des'' bes d'! c' e'! d' f' e' g' e' g' f' aes' g' bes' aes' c'' r8 f'( f''4) r r4 r8 f''8( f'''4) r r4 r8 ees'8( ees''4) r4
 r4 r8 ees''8( ees'''4) r r4 bes''8 des'' aes'' c'' g'' bes' f'' aes' ees'' g' des'' f' c'' ees'
 bes' des' aes'' c'' g'' bes' f'' aes' e''! g' des'' e'! c'' f' bes' g' aes'4 f'''8\ff aes'' des''' f'' c''' ees''
 bes'' des'' aes'' c'' ges'' bes' f'' aes' ees'' ges' des'' f' c'' ees' bes' des' aes' c' ges' bes
 \clef bass f' aes ees' ges <f des'>4 <f aes des' f'>\p <f aes des' f'> <f aes des' f'>
 r4 <f aes des' f'> <f aes des' f'> <f aes des' f'> r <f aes des' f'> <f aes des' f'> <f aes des' f'>
 r4 <f aes des' f'> r <f aes des' f'> r <f aes des' f'> <f aes des' f'> <f aes des' f'>
 r4 <f bes f'> <f bes f'> <f bes f'> r <f aes c' f'> \clef treble << { c''2( ~ c''4 bes' aes' bes') } \\ { s2 g'1 } >>
 <aes' c''>2( f') <e' g'>( c') << { f'1( ~ f'4 e' d' e') } \\ { f'2 aes bes1 } >>
 aes8\sf f' bes f' c' f' aes f' e'\sf c'' f' c'' g' c'' e' c'' aes'\sf f'' bes' f'' c'' f'' aes' f'' e''\sf c''' f'' c''' g'' c''' e'' c'''
 aes''4 r d'''\staccato ees'''\staccato f''' r b''!\staccato c'''\staccato d''' r g''\staccato g''\staccato
 g''\staccato g''\staccato g''\staccato g''\staccato
 \clef bass ees8\sf c' f c' g c' ees c' \clef treble b!8 g' c' g' d' g' b g' ees'\sf c'' f' c'' g' c'' ees' c''
 b'!8\sf g'' c'' g'' d'' g'' b' g'' ees''4\p r c'''\staccato d'''\staccato ees'''\staccato r a''\staccato bes''\staccato
 c'''4\staccato r fis''\staccato a''\staccato d''\staccato d'''\staccato d'''\staccato d'''\staccato
 bes8\sf g' c' g' d' g' bes g' fis'\sf d'' g' d'' a' d'' fis' d'' bes'\sf g'' c'' g'' d'' g'' bes' g'' cis'' g'' bes' cis'' a' cis'' g' cis''
 \clef bass f\sf d' g d' a d' f d' \clef treble cis'\sf a' d' a' e' a' cis' a' f'\sf d'' g' d'' a' d'' f' d'' gis' d'' f' gis' e' gis' d' gis'
 a8\ff a' b b' c' c'' a a' e' e'' fis' fis'' gis' gis'' e' e'' a' a'' b' b'' c'' c''' a' a'' e''\ff e''' d'' d''' c'' c''' b' b''
 a' a'' g'! g''! f'! f''! e' e'' d' d'' c' c'' b b' a a'
 r8 \clef bass e8\p( gis b e' b gis e) r e( a c' f' c' a e) r e( gis b e' b gis e) r e( a c' f' c' a e)
 r e gis b \clef treble e'_\markup { \italic "cresc." } gis' b' e'' \clef bass r8 fis a c' \clef treble fis' a' c'' fis''
 r8 gis b d' gis' b' d'' gis'' r a c' e' a' c'' e'' a'' d'''8\ff f''' d''' c''' b'' d''' b'' a'' gis'' b'' f'' e'' d'' f'' d'' c''
 b'8 d'' b' a' gis'\p^\markup { \italic "ritard.   --   --   --   --" } f'' d'' c'' b'_\markup { \italic "decresc." } d'' b' a' gis' d'' b' a'
 gis'1\pp ~ gis'2.^\fermata <gis' gis''>4^\markup { "a tempo" }( <a' a''>2_\markup { \italic "cresc." })
 <a a'>2 ~ <a a'>2( <gis gis'>2) <g! g'!>2 <g' g''!>2 ~ <g' g''>( <f' f''>2) <cis' cis''>4\f r r2 R1
 r2\sustainDown <a cis' e' g'>2\p^\markup { "ritard   --   --   --   --" } <a cis' e' g'>_\markup { \italic "decresc." } <a cis' e' g'>
 <a cis' e' g'>1\pp ~ <a cis' e' g'>2.^\fermata a'4\sustainUp^\markup { "a tempo" }(
 <bes d' g' bes'>1\sustainDown) ~ <bes d' g' bes'>2.^\fermata a'4\sustainUp( <bes d' bes'>2.)
 <g d'>4( <a cis'>) a\staccato a\staccato cis'( d'\staccato) a\staccato a\staccato d'( e'\staccato) a\staccato a\staccato
 e'4( f'\staccato) d'\staccato_\markup { \italic "cresc." } d'\staccato f'\staccato f'\staccato d'\staccato d'\staccato f'\staccato
 g'1\p^\markup { "rallent   ---   ---   ---   ---" } <c' e' g' c''>1 <a c' f' a'>1 ~ <a c' f' a'>2.^\fermata
 a'4\pp^\markup { "a tempo" }( bes'2.) a'4( bes'2.) a'4( bes'2.) a'4( bes'2.) <g' bes'>4( <f' a'>2._\markup { \italic "cresc." })
 <c' g' bes'>4( <c' f' a'>2.) <c' g' bes'>4( <c' f' a'>2.) <c' g' bes'>4\sf( <c' f' a'>) <c' g' bes'>4\sf( <c' f' a'>) <a cis' g' a'>4
 <a d' f' a'>2.\sf <a d'>4( <gis b e'>) r4 r2 <a c' e'>4 r r2 <gis b e'>4 r r2 <a c' e'>4_\markup { \italic "cresc." } r4 r2
 <a c' e'>4 r <a c' e'> r <b d' g'>4^\markup { "rallent  ---  ---  ---" } r r2 <g b d' g'>4\sf r r2 <g c' e'>1\sf ~ <g c' e'>1^\fermata
 <d' g' b' d''>1\f^\markup { "a tempo" } <g' b' d'' g''>1\sf <e' g' c'' e''>4 r r2 r2 <e' a' cis'' e''>2 <f' a' d'' f''>1 <d'' a'' d'''>1\sf
 <d'' gis'' b''>4 r r2 r2 <gis' d'' gis''>2\sf( <a' c'' a''>4) r4 <c' c''>2\sf ~ <c' c''>4 <c' c''>( <d' d''> <dis' dis''>)
 <e' e''>4( <c' c''>) <a a'>\staccato <a a'>\staccato <d' d''>4( <b b'>) <gis gis'>\staccato <gis gis'>\staccato <a a'>4\p r r2 R1
 a'8 a'' gis'' a'' a' a'' b' a'' c'' a'' b' a'' c'' a'' a' a'' e''4 r r2 R1 e''8 e''' dis''' e''' e'' e''' f'' f''' e'' e''' d''! d'''! c'' c''' b' b''
 a'8 a'' gis'' a'' a' a'' b' a'' c'' a'' d'' a'' c'' a'' b' a'' a'4 r r2 R1 e''8 e''' dis''' e''' e'' e''' fis'' e''' gis'' e''' a'' e''' b'' e''' gis'' e'''
 e''4 r r2 R1 a8\f c' e' c' e'\sf c' a c' a c' f' c' f'\sf c' a c' b d' f' g' b' d'' f'' d'' f'' d'' b' g' f' g' f' d'
 c' e' g' e' g'\sf e' c' e' cis' e' a' e' a'\sf e' cis' e' d' f' a' f' dis'\sf fis' b' fis' e' g' b' g' e'\sf g' c'' g'
 f' a' c'' a' fis'\sf\staccato a' d'' a' g'\sf\staccato b' d'' b' gis'\sf\staccato b' e'' b' a'\sf\staccato c'' e'' c'' b'\sf\staccato d'' gis'' d''
 c''\sf\staccato e'' a'' e'' dis''\sf\staccato fis'' a'' fis'' e'' gis'' b'' c''' d'''!\ff b'' gis'' b''
 d''' b'' gis'' b'' d''' b'' gis'' b'' d''' b'' gis'' b'' d''' b'' gis'' d'' c''' a'' e'' a'' c''' a'' fis'' c''
 b'4 r d''8\ff b' gis' b' d'' b' gis' b' d'' b' gis' b' d'' b' gis' b' d'' b' gis' d' c'' a' e' a' c'' a' fis' c' b4 r r2 R1 R1 R1 R1 R1
 r2 e'''8\sf gis'' fis'' e'' e'''\sf gis'' fis'' e'' e'''\sf gis'' fis'' e'' e'''4\f r_\markup { \italic "decresc." } r2 R1
 \clef bass <e a cis'>1_\markup { \italic "p dolce" } <d a d'> <e a cis'> << { <a b>1 } \\ { fis2( e4 d) } >>
 <e a cis'>1 <d a d'> <e a cis'> << { <a b>1 } \\ { fis2( e4 d) } >> <e a cis'>1 <d a d'>2( <e a cis'>)
 <fis a b>1_\markup { \italic "cresc." } <fis a b>1 <fis a b>1 <dis a b>1 <e gis b>4\p r
 \clef treble <e'' e'''>2\sf\>( ~ <e'' e'''>2 <d'' d'''>\!) <c''! c'''!>1\p( <d'' d'''> <c'' c'''> <b' b''>)
 <c'' c'''>1^\markup { \translate #(cons 6 1) { \musicglyph #"scripts.turn" } }( <e'' e'''>2 <d'' d'''> <c'' c'''>1 <b' b''>)
 <c'' c'''>1_\markup { \italic "cresc." }^\markup { "Adagio" } <d'' f'' g'' b'' d'''>2.\p^\fermata\arpeggio r4
 R1^\markup { "Tempo primo." } r2 r4 c'''8\f e''' f''' d''' b'' g'' f'' d'' b' f' e'4 r r2 R1 r2 r4 a''8\f c''' d''' b'' gis'' e'' d'' b' gis' d'
 c'8 e' a' c'' e'' a'' c''' e''' d''' b'' gis'' e'' d'' b' gis' d' c' e' a' c'' e'' a'' c''' e''' d''' b'' gis'' e'' d'' b' gis' d'
 c' c'' d' d'' e'\sf e'' c' c'' d' d'' e' e'' f'\sf f'' d' d'' e' e'' f' f'' g'\sf g'' e' e'' f' f'' gis' gis'' a' a'' b' b''
 <c'' c'''>4 r a''2\sf ~ a''2 a''2\sf ~ a''2 a''2\sf ~ a''2 a''4\sf\staccato a''4\staccato r2 a''4\sf\staccato a''4\staccato
 a''4\sf\staccato a''4\staccato a''4\staccato a''4\staccato bes'8\sf bes'' g' g'' e' e'' g' g'' bes'\sf bes'' g' g'' f' f'' e' e''
 f'8\sf f'' d' d'' c'! c'' b! b'! d'\sf d'' b b' a a' gis gis' \clef bass a\sf a' f f' e e' dis dis' e\sf e' dis dis' e[ e']
 \clef treble gis8 gis'( <a a'>2\sf) ~ <a a'>4. <gis gis'>8 (<a a'>2\sf) ~ <a a'>4. <gis gis'>8(<a a'>2\sf) ~ <a a'>4.
 <b b'>8( <c' c''>4\staccato) r8 <dis' dis''>8( <e' e''>4\staccato) r8 <gis' gis''>8( <a' a''>1\sf)
 <g'! g''!>4( <fis' fis''>) <e' e''>\staccato <fis' fis''>\staccato <g' g''>2\staccato <d' d''>\staccato
 \acciaccatura e'!16 e''1 \startTrillSpan <f' f''>1\sf \stopTrillSpan
 <e' e''>4( <d' d''>) <c' c''>\staccato <d' d''>\staccato <e' e''>2\staccato <a a'>2\staccato <b b'>2\staccato <e e'>\staccato
 a8 c' e' c' e' c' e' c' e' c' e' c' e' c' e' c' a c' e' c' e' c' e' c' a c' e' c' a c' e' c' c' e' a' e' c' e' a' e' c' d' a' d' c' d' a' d'
 bes d' g' d' bes d' g' d' bes c' g' c' bes c' g' c' a c' f' c' a c' f' c' a b! f' b a b f' b gis b e' b a c' e' c' a d' e' d' gis b e' b
 a\sf c' e' a' a c' e' a' a_\markup { \italic "cresc." } a' b a' a a' b a' a a' c' a' a a' c' a' gis gis' d' gis' gis e' b e'
 e'\ff e'' e'' e''' e'' e''' e'' e''' e'' e''' d'' d''' c'' c''' d'' d''' e'' e''' e'' e''' a' a'' a' a'' b' b'' b' b'' e' e'' e' e''
 a' a'' gis'' a'' a' a'' b' a'' c'' a'' b' a'' c'' a'' a' a'' <e' gis' b' e''>4\staccato r r2
 <e'' gis'' b'' e'''>4\staccato r r2 a'8 a'' gis'' a'' a' a'' b' a'' c'' a'' b' a'' c'' a'' a' a''
 <e' gis' b' e''>4\staccato r r2 <e'' gis'' b'' e'''>4\staccato r r2 <a' c'' e'' a''>4\sf\staccato r r2
 <e'' gis'' b'' e'''>4\sf\staccato r r2 <a' c'' e'' a''>4\sf\staccato r r2
 <e'' gis'' b'' e'''>4\sf\staccato r r2 <a' c'' e'' a''>4\sf\staccato r r2
 <e'' g''! bes'' c''' e'''>4\sf\staccato r r2 <f'' a'' c''' f'''>4\sf\staccato r r2 <cis'' e'' g'' a'' c'''>4\sf\staccato r r2
 <d'' f'' a'' d'''>4\sf\staccato r r2 <a' c''! ees'' f'' a''>4\sf r <f'' a'' c''' ees''' f'''>\sf r
 <f'' a'' c''' ees''' f'''>4\sf r <f'' a'' c''' ees''' f'''>4\sf r <f'' a'' c''' ees''' f'''>4\sf r <f'' a'' c''' ees''' f'''>4\sf r
 <bes' d'' f'' bes''>4\sf r r2 \clef bass a8\p bes ees' bes g bes ees' bes a bes d' bes f bes d' bes a bes cis' bes e! bes cis' bes
 a bes d' bes f bes d' bes a bes ees' bes g bes ees' bes a\pp bes d' bes f bes d' bes a bes ees' bes g bes ees' bes
 a bes d' bes f bes d' bes f bes d' bes f bes d' bes gis a d' a f a d' a f a d' a f a d' a
 e!_\markup { \italic "cresc." } gis d' gis f a d' a e gis d' gis f a d' a e gis d' gis f a d' a e fis gis a b c' d' e'
 f'2.\ff a4 gis4\staccato e\staccato e\staccato gis\staccato a\sf\staccato e\staccato e\staccato a\staccato
 b4\sf\staccato e\staccato e\staccato b\staccato
 c'4\sf\staccato e\staccato cis'\sf\staccato e\staccato d'\sf\staccato e\staccato dis'\sf\staccato e\staccato
 e' e f\sf f' fis' fis \clef treble g\sf g' gis' gis a\sf a' bes\sf bes' b\sf b' c' c'' cis' cis'' d' d'' dis' dis'' e' e'' f' f'' d'! d''! e' e''
 << { e''2( d''4 c'') d''2( c''4 b') } \\ { <e' b'>1\sf <d' gis'>1\sf } >> <c' c''>2\sf( <b b'>4 <a a'>)
 <b b'>2\sf( <a a'>4 <gis gis'>) <a a'>2\sf( <gis gis'>4 <a a'>) <b b'>4\staccato r <gis gis'>\staccato r <e'' e'''>1\sf
 <e'' e'''>1\sf <e'' e'''>2\sf( <d'' d'''>4 <c'' c'''>) <d'' d'''>2\sf( <c'' c'''>4 <b' b''>)
 <c'' c'''>2( <b' b''>4 <c'' c'''>) <d'' d'''>4\staccato r <b' b''>\staccato r <a' a''>4\p r <c'' c'''> r <e'' e'''> r <c'' c'''> r
 <a' a''>4\sustainDown r r2 R1 <a' a''>2( <c'' c'''> <e'' e'''> <c'' c'''> <a' a''>4_\markup { \italic "decresc." }) r4 r2 R1
 r2 <c'' c'''>2( <e'' e'''> <c'' c'''> <a' a''> <c'' c'''> <e'' e'''> <c'' c'''>) <a' a''>8\pp a8([ c' a] c' a c' a)
 c'8 a c' a c' a c' a c' a c' a c' a c' a c' a c' a c'\sustainUp a c' a
 \clef bass <f a c'>1\sustainDown^\markup { "Adagio." } ~ <f a c'>1\sustainUp
 <d f bes d'>1\sustainDown ~ <d f bes d'>2. \clef treble cis''4( <d' f' a' d''>1\sustainDown) <a d' a'>1\sustainUp
 <c'! e' a' c''!>1\sustainDown ~ <c' e' a' c''>2.^\fermata r4\sustainUp^\markup { "a Tempo." }
 <b e' gis' b'>4\f\staccato r r2 <e'' gis'' b'' e'''>4\staccato r r2 <e'' g'' c''' e'''>8\staccato b8[ c' d'] e' fis' gis' e'
 a'8 g'! f'! e' d' c' b a
 <b e' gis' b'>4\staccato r r2 <e'' gis'' b'' e'''>4\staccato r r2 <e'' g'' c''' e'''>8\staccato b8[ c' d'] e' fis' gis' e'
 a'8 g'! f'! e' d' c' b a <b e' gis' b'>4\staccato r r2 <e'' gis'' b'' e'''>4\staccato r r2
 <c'' e'' a'' c'''>8\f a''8[ g''! f''] e'' f'' e'' d'' c''\sf f'' e'' d'' c'' d'' c'' b' a'\sf f' e' d' c' d' c' b
 a8\ff f' e' d' c' d' c' b a4 r r2 <gis' b' d'' e'' gis''>4\staccato r r2 <a' c'' e'' a''>4\staccato r r2^\fermata \bar "|."
 }