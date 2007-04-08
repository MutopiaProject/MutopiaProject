\version "2.6.0"

 pianoone = {
 \set Staff.instrument = \markup { \column { " " " " " " " " " " " " "PIANOFORTE" } }
 \set Staff.midiInstrument = "acoustic grand"
 \clef treble
 \key a \major
 \time 2/2
 R1 \repeat volta 2 { R1^\markup { \bold "Allegro, ma non tanto." } R1 R1 R1 r2 r4
 gis'4\p( a'_\markup { \italic "dolce" } gis' a' cis'') e''2. gis''4( a'' gis'' a'' cis''')
 e'''2._\markup { \italic "cresc." }( d'''8. cis'''16) b''4^\trill( d'''8. cis'''16 b''4^\trill d'''8. cis'''16) b''2^\fermata\f
 \new Voice { \stemDown 
 \override NoteHead #'font-size = #-2
 \cadenzaOn ais''8[ b''] cis'''16[ dis''' e''' dis''' cis''' b'' a''! gis'' fis'' e'' dis'' cis'' b' a' gis' fis' e' dis'
 \change Staff="three" \stemUp cis' b a gis fis e dis cis b, a, gis, fis,] 
 \override NoteHead #'font-size = #0 e,4^\fermata \cadenzaOff  \bar "|" }
 <a a'>2\p( <e' e''> <fis' fis''>2. <cis' cis''>4 <e' e''> <d' d''> <cis' cis''> <d' d''>8 <b b'>) <a a'>2( <gis gis'>4)
 \new Voice { \slurUp e'4( a' fis' cis' dis') }
 \new Voice { \stemUp \change Staff="three" e16[ \change Staff="two"
 e'16 \change Staff="three" e16 \change Staff="two" e'16]
 \change Staff="three" e16[ \change Staff="two" e'16 \change Staff="three" e16 \change Staff="two" e'16]
 \change Staff="three" e16[ \change Staff="two" e'16 \change Staff="three" e16 \change Staff="two" e'16]
 \change Staff="three" e16[ \change Staff="two" e'16 \change Staff="three" e16 \change Staff="two" e'16]
 \change Staff="three" e16[ \change Staff="two" e'16 \change Staff="three" e16 \change Staff="two" e'16]
 \change Staff="three" e16[ \change Staff="two" e'16 \change Staff="three" e16 \change Staff="two" e'16]
 \change Staff="three" e16[ \change Staff="two" e'16 \change Staff="three" e16 \change Staff="two" e'16]
 \change Staff="three" e16[ \change Staff="two" e'16 \change Staff="three" e16 \change Staff="two" e'16]
 \change Staff="three" e16[ \change Staff="two" e'16 e' e''] } e'16[ e'' e' e''] e'[ e'' e' e''] e'[ e'' e' e'']
 e'16[ e'' e' e''] e'[ e'' e' e''] e'[ e'' e' e''] e'[ e'' e' e'']
 e''16_\markup { \italic "cresc." }[ e''' e'' e'''] e''[ e''' e'' e'''] e''[ e''' e'' e'''] e''16[ e''' e'' e''']
 e''[ e''' e'' e'''] e''[ e''' e'' e'''] e''[ e''' e'' e'''] e''[ e''' e'' e''']
 <e'' e'''>4\f r4^\fermata r2^\fermata \new Voice { \cadenzaOn s2 s2 \cadenzaOff }
 a'2\f( e''4) \grace { d''16[ e''] } f''4\sf( e'' \grace { b'16[ c''] } d''4 c''4 \grace { gis'16[ a'] } b'4)
 \clef bass \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { a8\f[ c' e'] a[ c' e'] a[ c' e'] a\sf[ d' f']
 a[ c' e'] gis\sf[ b e'] a_\markup { \italic "dim."}[ c' e'] g[ b e'] fis\p[ b dis'] fis[ b dis'] g[ b e'] g[ b e']
 \clef treble b[ dis' fis'] b[ dis' fis'] b[ e' g'] b[ e' g'] dis'\f[ fis' a'] c''[ b' a'] g'[ b' e''] g''[ fis'' e'']
 dis''[ fis'' a''] c'''[ b'' a''] g''[ b'' e'''] g'''[ fis''' e'''] dis'''[ fis''' b''] c'''[ b'' a''] g''[ b'' e''] g''[ fis'' e'']
 dis''[ fis'' b'] c''[ b' a'] g'[ b' e'] g'[ fis' e'] b([ c' b] ais[ b ais] b[ c' b] ais[ b ais]) } b4\p r r2 R1 R1
 b''2\p( gis'' e''4 b' gis' b') <fis' a'>2. r4
 R1 a''2( fis''2 ~ fis''4) fis'( dis' fis') <b fis'>2 ~ <b e'>8 e'8( fis' gis') a'( e' a' fisis') gis'( e' fis' gis')
 a'8( e' a' fisis') gis'( e' fis' gis') a'( e' gis' e' fis' b e' b) dis'( b dis' b <cis' e'> ais <cis' e'> ais) <b dis'>4 r r2
 \new Voice { \change Staff="three" \stemUp \slurUp e8( fis gis a \change Staff="two" b cis' dis' e'
 fis' gis' a' b' \stemDown cis'' dis'' e'' fis'' gis'' a'' ais'' b'' ais'' b'' gis'' e'') } \grace { dis''16[ e'' fis''] } e''2( dis''4) r
 \new Voice { \slurUp b8( cis' <dis dis'> <e e'> <fis fis'> <gis gis'> <a a'> <b b'>
 <cis' cis''> <dis' dis''> <e' e''> <fis' fis''> <gis' gis''> <a' a''> <b' b''> <cis'' cis'''>
 <dis'' dis'''> <e'' e'''> <fis'' fis'''> <gis'' gis'''> <a'' a'''> fis''' dis''' b'') } a''2( gis''8\staccato) b''8( e''' dis''')
 cis'''2( b''8\staccato) b''8( e''' dis''') cis'''2( b''8\staccato) b''8( e''' dis''') cis'''8( a'' cis''' b'' a'') r8 r4
 r8 dis''( fis'' e''! dis'') r8 r4 r8 gis'8( b' a' gis' e' a' fis') r4 <gis b e'> r <a b dis'>
 <gis b e'>4\f e'2 \afterGrace fis'4^\trill { e'16[ fis'] } gis'4\sf( e'2 \afterGrace fis'4^\trill) { e'16[ fis'] }
 gis'4\sf( e'8. dis'16 cis'4\sf a'8. gis'16) fisis'4\sf( dis''8. cis''16 bis'4\sf cis'')
 b'!4\sf( ais' cis''8 b') a'8\staccato[ gis'\staccato] b'4\sf( a'2 fis'4)
 e'8\f[ e''16 dis''] e''[ b' gis' b'] gis'[ b' e'' b'] a'[ b' dis'' b'] gis'[ b' e'' dis''] e''[ b' gis' b'] gis'[ b' e'' b'] a'[ b' dis'' b']
 gis'[ b' e'' b'] gis'[ b' e'' b'] a'[ cis'' e'' cis''] cis''[ e'' a'' e'']
 cis''[ dis'' ais'' dis''] ais'[ dis'' fisis'' dis''] gis'[ dis'' gis'' dis''] gis'[ cis'' eis'' cis'']
 gis'[ cis'' eis'' cis''] fis'[ cis'' fis'' cis''] fis'[ b' dis'' b'] gis'[ b' e'' b']
 a'[ c'' e'' c''] c''[ e'' a'' e''] c''[ fis'' a'' fis''] fis''[ a'' c''' a'']
 c'''\ff[ a'' fis'' a''] c'''[ a'' fis'' a''] c'''[ a'' fis'' a''] c'''[ a'' fis'' a'']
 c'''[ a'' fis'' a''] b''_\markup { \italic "dim." }[ a'' fis'' a''] b''[ a'' fis'' a''] b''[ a'' fis'' a'']
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { b''8\pp([ a'' gis''] fis''[ e'' dis''] cis''[ b' a'] } gis'16 fis' e' dis') cis'4( b2.)
 \times 2/3 { e'''8([ d''' cis'''] b''[ a'' gis''] fis''[ e'' d''] } cis''16 b' a' gis') fis'4( e'2.) <cis'' e'' a'' cis'''>4\f r r2
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { ais8[ b cis'] } dis'16 e' fis' gis' ais' b' cis'' dis'' \new Voice { \stemDown e''8\staccato[ \stemUp ais\staccato] }
 r16 b\ff[ cis' dis'] e'[ fis' gis' a'] \times 2/3 { b'8[ cis'' dis''] } e''16 fis'' gis'' a''!
 b''8\staccato e''\staccato gis''\staccato b''\staccato
 #(set-octavation 1)  \set Staff.ottavation = "8" e'''\staccato gis'''\staccato b'''\staccato #(set-octavation 0) e'
 \afterGrace fis'1\sf \startTrillSpan { eis'16[ \stopTrillSpan  fis'] } \afterGrace cis''1\sf\> \startTrillSpan { bis'16[ \stopTrillSpan cis''\!] }
 << { dis''4( cis'' b'! a') } \\ { <fis' a'>2_\markup { \italic "p dolce" } <dis' fis'>2 } >> <e' gis'>1
 \grace { fis'16[ a'] } dis''4\>( cis''\!) \grace { dis'16[ fis'] } b'4\>( a'\!) <e' gis'>1 <fis a b dis'>1 }
 \alternative { { <gis b e'>4( d'! cis' b) a r r2 } { <gis b e'>4( d'! cis' d') } }
 cis'2_\markup { \italic "cresc." }( gis') a'( eis'') fis''( gis'' a'' <a'' fis'''>2) <gis'' eis'''>2.\f <a'' fis'''>4\sf
 <gis'' eis'''>4 <a'' fis'''>\sf <gis'' eis'''> <a'' fis'''>\sf <gis'' eis'''> r r2 R1 r2 r4 a''8._\markup { \italic "espressivo" }( g''16)
 \once \override Script #'script-priority = #-100 fis''4^\trill^\markup { \natural }( \grace { eis''16[ fis''] } a''8. g''16
 \once \override Script #'script-priority = #-100 fis''4^\trill^\markup { \natural } \grace { eis''16[ fis''] } a''8. g''16)
 fis''2 <g' g''> <fis' fis''> <eis' eis''> <fis' fis''>2. cis'''4( b'' a'' gis''^\trill a''8 fis'') fis''4( eis''2.) R1
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { fis''8\<([ gis'' fis''] eis''[ fis'' gis''] a''[ b'' a''] gis''[ a'' b''])
 cis'''([ d''' cis'''] b''[ a'' gis''\!] b''\>[ a'' gis''] b''[ a'' fis''\!]) } e''4( dis''2.) R1
 <g' b' e'' g''>4\ff r r2 R1 fis'16[ fis'' fis' fis''] fis'[ fis'' fis' fis''] fis'[ fis'' fis' fis''] c''([ c''' c'' c''']
 b'[ b'' b' b''] a'[ a'' a' a''] g'[ g'' g' g''] a'[ a'' fis' fis'']) g'[ g'' g' g''] g'[ g'' g' g''] g'[ g'' g' g''] c''([ c''' c'' c''']
 b'[ b'' b' b''] a'[ a'' a' a''] g'[ g'' g' g''] a'[ a'' fis' fis'']) b'[ b'' b' b''] b'[ b'' b' b''] b'[ b'' b' b''] e''[ e''' e'' e''']
 d''[ d''' d'' d'''] cis''![ cis'''! cis'' cis'''] b'[ b'' b' b''] cis''[ cis''' ais' ais'']
 <d'' d'''>[ e'' d'' cis''] d''[ b' cis'' b'] r16 fis''[ eis'' dis''] eis''[ cis'' d'' cis'']
 r16 gis''[ fis'' eis''] fis''[ cis'' d'' cis''] r a''[ gis'' fis''] gis''[ cis'' d'' cis'']
 r16 b''[ a'' gis''] a''[ fis'' gis'' fis''] r cis'''[ bis'' ais''] bis''[ gis'' a'' gis'']
 r16 dis'''[ cis''' bis''] cis'''[ gis'' a'' gis''] r e'''[ dis''' cis'''] dis'''[ gis'' a'' gis''] e'''4 r r2 R1
 fis'''2.( a'''4 gis''' fis''' e''' fis'''8 dis''' fis'''4 e'''2.)
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { cis'''8\pp[ dis''' cis'''] bis''[ cis''' dis'''] }
 e'''16[ fis''' e''' dis'''] \times 2/3 { e'''8[ fis''' gis'''] d'''![ e''' d'''] cis'''[ d''' e'''] } fis'''16[ g''' fis''' e''']
 \times 2/3 { d'''8[ e''' fis'''] } r4  \times 2/3 { e'''8[ fisis''' gis'''] } r4  \times 2/3 { dis'''8[ fisis''' gis''']
 cis''[ dis'' cis''] bis'_\markup { \italic "cresc." }[ cis'' dis''] e''[ fis'' e''] dis''[ e'' fis'']
 gis''[ a'' gis''] g''[ gis'' a''] ais''[ b''! bis''] } cis'''16[ bis'' cis''' gis'']
 \acciaccatura b''16 a''8\staccato\f[ gis''\staccato] \acciaccatura b''16 a''8\staccato[ gis''\staccato]
 \acciaccatura b''16 a''8\staccato[ gis''\staccato] \acciaccatura b''16 a''8\staccato[ gis''\staccato]
 <a' cis'' fis'' a''>4\f\staccato r r2
 \acciaccatura b'16 a'8\staccato_\markup { \italic "dim." }[ gis'\staccato] \acciaccatura b'16 a'8\staccato[ gis'\staccato]
 \acciaccatura b'16 a'8\staccato[ gis'\staccato] \acciaccatura b'16 a'8\staccato[ gis'\staccato] a'4\pp r r2 R1
 <fis' fis''>2( <cis'' cis'''> <eis'' eis'''> <fis'' fis'''>) R1 R1 <d' d''>2\pp( <a' a''> <cis'' cis'''> <d'' d'''>)
 <e'' e'''>1 <fis'' fis'''> <cis'' cis'''>
 e'''16_\markup { \italic "cresc." }[ dis''' e''' dis'''] e'''[ dis''' e''' dis'''] e'''[ d''' e''' d'''] e'''[ d''' e''' d''']
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { cis'''8\fp[ e''' d'''] cis'''[ b'' a''] gis''[ fis'' e''] d''[ cis'' b']
 a'[ gis' a'] ais'[ b' c''] cis''[ d'' dis''] e''[ cis'' b'] ais'[ g'' fis''] b'[ g'' fis''] cis''[ g'' fis''] eis''[ fis'' d'''!]
 dis''[ c''' b''] c'''[ dis'' fis''] e''![ b'' gis''] d''\p[ gis'' d''] cis''![ b'' a''] gis''[ b'' a''] gis''[ b'' a''] gis''[ b'' a'']
 gis''[ b'' gis''] e''[ gis'' e''] dis''[ e'' dis''] d''[ e'' d''] cis''[ e'' cis''] d''[ e'' d''] cis''[ e'' cis''] a'[ e'' a']
 gis'[ b' gis'] e'[ gis' e'] dis'[ e' dis'] d'[ e' d'] cis'[ e' cis'] d'[ e' d'] cis'[ e' cis'] a[ cis' e']
 \setTextCresc gis\<[ b e'] cis'[ e' a'] gis'[ b' e''] cis''[ e'' a''] gis''[ b'' e'''] a''[ cis''' e'''] gis''[ b'' e'''] a''[ cis''' e'''\!] }
 \new Voice { <e'' gis'' b'' e'''>4\f \cadenzaOn s4 r4^\fermata s2 s8 r2^\fermata s4 \cadenzaOff \bar "|" }
 a'2\f( e''4) \grace { d''16[ e''] } f''4\sf( e'' \grace { b'16[ c''] } d''4\sf c'' \grace { gis'16[ a'] } b'4\sf)
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { a8\f[ c' e'] a[ c' e'] a[ c' e'] a\sf[ d' f']
 a[ c' e'] gis\sf[ b e'] a_\markup { \italic "dim." }[ c' e'] e[ a e'] gis[ b d'] f'[ e' d'] c'[ e' a'] c''_\markup { \italic "cresc." }[ b' a']
 gis'[ b' d''] f''[ e'' d''] c''[ e'' a''] c'''[ b'' a''] gis''\f[ b'' d''] f''[ e'' d''] c''[ e'' a'] c''[ b' a'] gis'[ b' d'] f'[ e' d'] c'[ e' a] c'[ b a]
 \clef bass e([ f e] dis[ e dis] e[ f e] dis[ e dis] } e4\p) r4 r2 R1 R1 \clef treble e'''2\p( cis''' a''4 e'' cis'' e'') <b' d''>2. r4 R1
 d'''2( b''2 ~ b''4) b'4( gis' b') <e' b'>2 <e' a'>8 a'8([ b' cis'']) d''8( a' d'' bis' cis'' a' b' cis'') d''( a' d'' bis' cis'' a' b' cis'')
 d''8( a' cis'' a' b' e' a' e') gis'( e' gis' e' <fis' a'> dis' <fis' a'> dis') <e' gis'>4 r r2
 a8( b cis' d' e' fis' gis' a' b' cis'' d'' e'' fis'' gis'' a'' b'' cis''' d''' dis''' e''' dis''' e''' cis''' a'') \grace { gis''16[ a'' b''] } a''2( gis''4) r4
 <e e'>8( <fis fis'> <gis gis'> <a a'> <b b'> <cis' cis''> <d' d''> <e' e''> <fis' fis''> <gis' gis''> <a' a''> <b' b''>
 <cis'' cis'''> <d'' d'''> <e'' e'''> <fis'' fis'''> <gis'' gis'''> <a'' a'''> b'' cis''' d''' b'' gis'' e'')
 \grace { cis''16([ d'' e''] } d''2 cis''8\staccato) e''8( a'' gis'')
 fis''2( e''8\staccato) e''8^\trill( a'' gis'') fis''2( e''8\staccato) e''8^\trill( a'' gis'' fis'' d'' fis'' e'' d'') r8 r4 r8 gis'( b' a' gis') r8 r4
 r8 cis''( e'' d'' cis'' a' d'' b') r4 <cis' e' a'> r <d' e' gis'> <cis' e' a'>4\f a'2( \afterGrace b'4^\trill)( {a'16[ b']) }
 cis''4\sf a'2( \afterGrace b'4^\trill)( {a'16[ b']) }
 cis''4\sf( a'8. gis'16 fis'4\sf d''8. cis''16) bis'4\sf( <gis' gis''>8. <fis' fis''>16 <eis' eis''>4\sf <fis' fis''>)
 <e'! e''!>4\sf( <dis' dis''> <fis' fis''>8 <e' e''>) <d' d''>\staccato <cis' cis''>\staccato <fis' fis''>4\sf( <d' d''>2 <b b'>4)
 a'8\f[ a''16 gis''] a''[ e'' cis'' e''] cis''[ e'' a'' e''] d''[ e'' gis'' e''] cis''[ e'' a'' gis''] a''[ e'' cis'' e''] cis''[ e'' a'' e''] d''[ e'' gis'' e'']
 cis''[ e'' a'' e''] cis''[ e'' a'' e''] d''[ fis'' a'' fis''] d''[ fis'' a'' fis'']
 dis''[ fis'' gis'' fis''] dis''[ gis'' bis'' gis''] cis''[ gis'' b''! gis''] cis''[ fis'' ais'' fis'']
 c''[ fis'' a''! fis''] b'[ fis'' a'' fis''] b'[ e'' gis'' e''] cis''[ e'' a'' e''] d''[ f'' a'' f''] f''[ a'' d''' a''] f''[ b'' d''' b''] b''[ d''' f''' d''']
 f'''16\ff[ d''' b'' d'''] f'''[ d''' b'' d'''] f'''[ d''' b'' d'''] f'''[ d''' b'' d'''] f'''[ d''' b'' d''']
 e'''_\markup { \italic "dim." }[ d''' b'' d'''] e'''[ d''' b'' d'''] e'''[ d''' b'' d''']
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { e'''8\pp([ d''' cis'''] b''[ a'' gis''] fis''![ e'' d''] } cis''16 b' a' gis')
 fis'4( e'2.) \times 2/3 { b''8([ a'' g''] fis''[ e'' d''] } cis''16[ b' a' g'] fis'[ e' d' cis']) b4( a2.) <fis' a' d'' fis''>4\f r4 r2
 \times 2/3 { dis'8[ e' fis'] } gis'16 a' b' cis'' dis'' e'' fis'' gis'' \new Voice { \stemDown a''8\staccato[ \stemUp dis'8\staccato] }
 r16\ff e'16[ fis' gis'] a'[ b' cis'' d''] \times 2/3 { e''8[ fis'' gis''] } a''16[ b'' cis''' d''']
 e'''8 cis''\staccato[ e''\staccato a''\staccato]cis'''\staccato[ e'''\staccato a'''\staccato] a'
 \afterGrace b'1\sf \startTrillSpan { ais'16[ \stopTrillSpan b'] } \afterGrace fis''1\sf\> \startTrillSpan { eis''16[ \stopTrillSpan fis''\!] }
 << { gis''4( fis'' e''! d'') } \\ { <b' d''>2_\markup { "p dolce" } <gis' b'> } >> <a' cis''>1
 \grace { b'16[ d''] } gis''4\>( fis''\!) \grace { gis'16[ b'] } e''4\>( d''\!) <a' cis''>1 <b d' e' gis'>1
 <cis' e' a'>4_\markup { \italic "dim." }( g' fis' e') d'2\pp( a' b'2. fis'4 a' g' fis' g'8 e') d'2( cis'4) g'4^\trill
 b'4( a' g' a'8 fis') e'2( dis'4) d''!4^\trill( f'' e'' d'' e''8 b') d''2( cis''4) g''4^\trill bes''4( a'' gis''! a''8 d'')
 b''!4( a'' gis'' a''8 c'') b''4( a'' gis'' a''8 f'') b''4( a'' gis'' a''8 e'')
 \setTextCresc \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { b''8\<([ a'' gis'']) } a''8\staccato d''\staccato \times 2/3 { b''8([ a'' gis'']) } a''8\staccato d''\staccato
 \times 2/3 { b''8([ a'' gis'']) } a''8\staccato c''\staccato \times 2/3 { b''8([ a'' gis'']) } a''8\staccato c''\staccato
 \times 2/3 { b''8([ a'' gis'']) } a''8\staccato f''\staccato \times 2/3 { b''8([ a'' gis'']) } a''8\staccato f''\staccato
 \times 2/3 { b''8([ a'' gis'']) } a''8\staccato e''\staccato \times 2/3 { b''8([ a'' gis'']) } a''8\staccato e''\staccato
 \times 2/3 { a''8([ gis'' fis'']) } gis''8\staccato e''\staccato \times 2/3 { b''8([ a'' gis'']) } a''8\staccato e''\staccato
 \times 2/3 { c'''8([ b'' ais'']) } b''8\staccato e''\staccato \times 2/3 { d'''8([ cis'''! bis'']) } cis'''8\staccato a''\staccato
 \times 2/3 { e'''8([ d''' cis''']) } d'''8\staccato a''\staccato \times 2/3 { e'''8([ dis''' cisis''']) } dis'''8\staccato a''\staccato
 \times 2/3 { e'''8\!\ff[ d'''! cis'''] b''[ a'' gis''] fis''[ e'' d''] } \times 4/5 { cis''16[ b' a' gis' fis'] } e'4 r <gis' b' d'' e'' gis''> r
 <a' a''>2_\markup { \italic "sempre ff" } <e'' e'''> <fis'' fis'''>2. <cis'' cis'''>4( <e'' e'''> <d'' d'''> <cis'' cis'''> <d'' d'''>8 <b' b''>)
 <a' a''>2( <gis' gis''>4) <e' e''>4( <a' a''> <fis' fis''> <cis' cis''> <dis' dis''>) <e' e''>2. r4 <b d'! e'>1\p
 <a cis' e'>2. gis'4\staccato\pp( a'\staccato fis'\staccato cis'\staccato dis'\staccato) e'1
 e'16\p[ e'' fis' e''] gis'[ e'' a' e''] b'[ e'' cis'' e''] d''[ e'' dis'' e'']
 cis''[ cis''' d''! cis'''] e''[ cis''' fis'' cis'''] gis''[ cis''' a'' cis'''] b''[ cis''' bis'' cis''']
 e''[ e''' fis'' e'''] gis''[ e''' a'' e'''] b''![ e''' cis''' e'''] d'''[ e''' dis''' e''']
 <a'' cis'''>[ e''' fis''' e'''] <a'' cis'''>[ e''' fis''' e'''] <b'' d'''!>[ e''' fis''' e'''] <b'' d'''>[ e''' fis''' e''']
 <a'' cis'''>[ e''' fis''' e'''] <a'' cis'''>[ e''' fis''' e'''] <b'' d'''>[ e''' fis''' e'''] <b'' d'''>[ e''' fis''' e''']
 \set tupletSpannerDuration = #(ly:make-moment 1 4)
 \times 2/3 { <a'' cis'''>8_\markup { \italic "dim." }[ fis''' e'''] <b'' d'''>[ fis''' e'''] <a'' cis'''>[ fis''' e'''] <b'' d'''>[ fis''' e''']
 <a'' cis'''>8[ fis''' e'''] <b'' d'''>[ fis''' e'''] <a'' cis'''>[ fis''' e'''] <b'' d'''>[ fis''' e''']
 <a'' cis'''>\pp[ fis''' e'''] } d'''16[ cis''' b'' a''] \times 2/3 { gis''8[ fis'' e''] d''[ cis'' b'] }
 a'16[ b' a' gis'] a'[ b' cis'' d''] e''[ fis'' g'' gis''] a''[ gis'' a'' gis''] a''[ b'' a'' gis''] a''[ b'' cis''' d'''] dis'''[ e''' dis''' e'''] dis'''[ e''' fis''' e''']
 \afterGrace d'''!1_\markup { \italic "sempre pp" } \startTrillSpan { cis'''16[ \stopTrillSpan e''' d'''] } cis'''4 r r2
 \afterGrace d''1 \startTrillSpan { cis''16[ \stopTrillSpan e'' d''] } cis''4 r r2
 gis'2\f \startTrillSpan \acciaccatura fis'8 gis'16[ \stopTrillSpan a' b' cis''] d''[ e'' fis'' gis'']
 \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 { a''8[ b'' cis'''] d'''[ e''' fis'''] } e'''8 r <b'' d''' gis'''> r
 <a'' cis''' a'''>4 r <b d' e' gis'> r <a cis' e' a'> r r2 \bar "|."
}