\version "2.6.0"

 pianoone = {
 \set Staff.instrument = \markup { \column { " " " " " " " " " " " " "PIANOFORTE" } }
 \set Staff.midiInstrument = "acoustic grand"
 \clef treble
 \key a \minor
 \time 3/4
 \once \override TextScript #'padding = #1.5
 \partial 4 e'4\p^\markup { \bold "Allegro molto." } ~ e' r a'\sf ~ a' r b' ~ b' \acciaccatura c''8 b'8 a' b'4
 c''4 r d'' ~ d'' r e'' ~ e'' r d''\staccato \acciaccatura d''8 c''4\staccato b'\staccato a'\staccato b'\staccato a'\staccato r
 <a c' e'>4\p r r <a c' e' a'> r r <b e' gis' b'> <b e' gis' b'> <b e' gis' b'>
 <c' e' a' c''> r r <d' g'! b' d''> r r <e' g' c'' e''> r r r <d' gis'>\staccato <c' a'>\staccato
 <d' gis'>4\staccato <c' a'>\staccato f''4\f ~ f'' r g'! ~ g' r r r <f' b'>\p\staccato <e' c''>\staccato
 <f' b'>4\staccato <e' c''>\staccato d''4\f ~ d'' r e' ~ e' r r r <d' gis'>\p\staccato <c' a'>\staccato
 <d' gis'>\staccato <c' a'>\staccato f''4\f ~ f'' r g'! ~ g' r e'' ~ e'' r g'' ~ g'' r b'' ~ b'' r  b'' ~ b'' r <dis' dis''>\p\staccato
 <e' e''>\staccato <fis' fis''>\staccato <g' g''>\staccato <fis' fis''>\staccato <e' e''>\staccato <fis' fis''>\staccato
 <g' g''>\staccato <fis' fis''>\staccato <g' g''>\staccato <a' a''>\staccato <g' g''>\staccato <fis' fis''>\staccato
 <e' e''>\staccato <fis' fis''>\staccato <g' g''>\staccato <fis' fis''>\staccato <e' e''>\staccato <fis' fis''>\staccato
 <g' g''>\staccato <fis' fis''>\staccato <g' g''>\staccato <gis' gis''>\staccato <fis' fis''>\staccato <gis' gis''>\staccato
 <a' a''> <b' b''> <c'' c'''> <b' b''> <a' a''> <b' b''>
 \setTextCresc <c'' c'''>\< <b' b''> <c'' c'''> <d'' d'''> <c'' c'''> <b' b''> <a' a''> <b' b''> <c'' c'''>
 <b' b''> <a' a''> <b' b''> <c'' c'''> <b' b''> <c'' c'''> <cis'' cis'''> <bis' bis''> <cis'' cis'''>
 <d'' d'''> <cis'' cis'''> <d'' d'''> <fis'' fis'''> <eis'' eis'''> <fis'' fis'''> <g'' g'''> <fis'' fis'''> <g'' g'''>
 <b' b''> <a' a''> <b' b''> <c''! c'''!>\!\f g''\staccato e''\staccato a''( f'') d''\staccato g''( e'') c''\staccato R2.
 g''4( d'') b'\staccato r r g'4\p ~ g' r c'' ~ c'' r d'' ~ d'' \acciaccatura e''8 d''8 c'' d''4 e'' r b
 b4 \acciaccatura c'8 b8 a b4 c' r b' b' \acciaccatura c''8 b' a' b'4 c''4 r gis gis gis gis a r b'
 b' \acciaccatura c''8 b' a' b'4 c'' \acciaccatura d''8 c''8 b' c''4 dis'' \acciaccatura e''8 dis''8 cisis'' dis''4
 e'' \acciaccatura f''8 e''8 dis'' e''4 b'4 \acciaccatura c''8 b'8 a' b'4 c''4 \acciaccatura d''8 c''8 b' c''4
 dis'' \acciaccatura e''8 dis''8 cisis'' dis''4 e''4 \acciaccatura f''8 e''8 dis'' e''4 e''4 \acciaccatura f''8 e''8 dis'' e''4
 e''4 \acciaccatura f''8 e''8 dis'' e''4 e''4 \acciaccatura f''8 e''8 dis'' e''4 e'' r
 \setTextCresc e''4\< ~ e'' r e'' ~ e'' r e'' ~ e'' r e''\!\f ~ e'' r a'' ~ a'' r b'' ~ b'' \acciaccatura c'''8 b''8 a'' b''4
 c''' r d''' ~ d''' r e''' ~ e''' r d''' ~ d''' \acciaccatura e'''8 d'''8 c''' d'''4 e'''
 r b'' ~ b'' r c''' ~ c''' r b'' ~ b'' \acciaccatura c'''8 b''8 a'' b''4 a'' r
 \set doubleSlurs = ##t <b' b''>4( <c'' c'''>) r <b' b''>( <a' a''>) r <b' b''>( <c'' c'''>) r <b' b''>( <a' a''>) r
 <b' b''>( <a' a''>) r <b' b''>( <a' a''>) r <b' b''>( <a' a''>) r <b' b''>( \setTextDim <a' a''>\>) \set doubleSlurs = ##f
 r b''( a'') r b'( a') r \clef bass b( a) r b,( a,\!\p) r r R2. R2. R2. R2. \bar "||"

 \clef bass \key a \major R2. R2. R2. R2. <cis e>2.( <b, d>2. <d fis>2 <cis e>4 <a, cis>) r r
 \clef treble \set doubleSlurs = ##t <e' cis''>4\staccato_\markup { \italic "sempre p" } <e' cis''>( <d' b'>)
 <d' b'>\staccato <d' b'>( <e' cis''>) <fis' d''>\staccato <fis' d''>( <e' cis''>) <e' cis''>\staccato <cis' cis''>( <d' d''>)
 <e' e''>\staccato <e' e''>( <d' d''>) <d' d''>\staccato
 <d' d''>( <e' e''>) <fis' fis''>\staccato <fis' fis''>( <e' e''>) <cis' cis''>4 r r
 R2. R2. R2. R2. \clef bass \set doubleSlurs = ##f <cis e>2.( <b, d>2. <d fis>2 <cis e>4 <a, cis>) r r
 \clef treble \set doubleSlurs = ##t <e' cis''>4\staccato_\markup { \italic "sempre p" } <e' cis''>( <d' b'>)
 <d' b'>\staccato <d' b'>( <e' cis''>) <fis' d''>\staccato <fis' d''>( <e' cis''>) <e' cis''>\staccato <cis' cis''>( <d' d''>)
 <e' e''>\staccato <e' e''>( <d' d''>)
 <d' d''>\staccato <d' d''>( <e' e''>) <fis' fis''>\staccato <fis' fis''>( <e' e''>) <cis' cis''>4 r r R2. R2. R2. R2.
 \set doubleSlurs = ##f
 <e'' gis''>2._\markup { \italic "cresc." }( <dis'' fis''>2. <fis'' a''>2 <e'' gis''>4) <e'' gis''>2.
 <e'' gis'' e'''>4\f <e'' gis'' e'''> <e'' gis'' e'''> <dis'' fis'' dis'''> <dis'' fis'' dis'''> <dis'' fis'' dis'''>
 <fis'' a'' fis'''> <fis'' a'' fis'''> <fis'' a'' fis'''> R2. <e'' gis'' e'''>4\p <e'' gis'' e'''> <e'' gis'' e'''> R2. R2. R2. R2.
 e''8\p([ fis'' e'' fis'' e'' fis''] d''[ e'' d'' e'' d'' e''] cis''4) r r
 \setTextCresc <e' cis''>2.\<( <d' b'>2. <fis' d''>2 <e' cis''>4)
 <e' cis''>2. <cis'' e''>2.( <b' d''>2. <d'' fis''>2 <cis'' e''>4 <a' cis''>2.)
 <e' cis''>4\staccato \set doubleSlurs = ##t <e' cis''>( <d' b'>) <d' b'>\staccato <d' b'>( <e' cis''>)
 <fis' d''>4\staccato <fis' d''>( <e' cis''>) <e' cis''>\!\f\staccato <e' cis''>( <b' d''>) <cis'' e''>\staccato <cis'' e''>( <b' d''>)
 <b' d''>\staccato <b' d''>( <cis'' e''>) <d'' fis''>\staccato <d'' fis''>( <cis'' e''>)
 <a' cis''>\staccato <d'' fis''>( <cis'' e''>) <a' cis''>\sf\staccato <d'' fis''>( <cis'' e''>)
 <a' cis''>\sf\staccato <d'' fis''>( <cis'' e''>) <a' cis''>\sf\staccato <d'' fis''>( <cis'' e''>) <a' cis''> r r\set doubleSlurs = ##f
 \setTextDim <e' a' cis''>4\> r r <e' a' cis''> r r <e' a' cis''> r r <e' a' cis''>\!\p r r R2._\markup { \italic "piu p" } R2. R2.
 r4_\pp r e' ~ e' r r r r e' ~ e' r r r r e' ~ e' r e' ~ e' r e' ~ e' r e'4 ~

 \key a \minor
 e' r a'\sf ~ a' r b' ~ b' \acciaccatura c''8 b'8 a' b'4
 c''4 r d'' ~ d'' r e'' ~ e'' r d''\staccato \acciaccatura d''8 c''4\staccato b'\staccato a'\staccato b'\staccato a'\staccato r
 <a c' e'>4\p r r <a c' e' a'> r r <b e' gis' b'> <b e' gis' b'> <b e' gis' b'>
 <c' e' a' c''> r r <d' g'! b' d''> r r <e' g' c'' e''> r r r <d' gis'>\staccato <c' a'>\staccato
 <d' gis'>4\staccato <c' a'>\staccato f''4\f ~ f'' r g'! ~ g' r r r <f' b'>\p\staccato <e' c''>\staccato
 <f' b'>4\staccato <e' c''>\staccato d''4\f ~ d'' r e' ~ e' r r r <d' gis'>\p\staccato <c' a'>\staccato
 <d' gis'>\staccato <c' a'>\staccato f''4\f ~ f'' r g'! ~ g' r e'' ~ e'' r g'' ~ g'' r b'' ~ b'' r  b'' ~ b'' r <dis' dis''>\p\staccato
 <e' e''>\staccato <fis' fis''>\staccato <g' g''>\staccato <fis' fis''>\staccato <e' e''>\staccato <fis' fis''>\staccato
 <g' g''>\staccato <fis' fis''>\staccato <g' g''>\staccato <a' a''>\staccato <g' g''>\staccato <fis' fis''>\staccato
 <e' e''>\staccato <fis' fis''>\staccato <g' g''>\staccato <fis' fis''>\staccato <e' e''>\staccato <fis' fis''>\staccato
 <g' g''>\staccato <fis' fis''>\staccato <g' g''>\staccato <gis' gis''>\staccato <fis' fis''>\staccato <gis' gis''>\staccato
 <a' a''> <b' b''> <c'' c'''> <b' b''> <a' a''> <b' b''>
 \setTextCresc <c'' c'''>\< <b' b''> <c'' c'''> <d'' d'''> <c'' c'''> <b' b''> <a' a''> <b' b''> <c'' c'''>
 <b' b''> <a' a''> <b' b''> <c'' c'''> <b' b''> <c'' c'''> <cis'' cis'''> <bis' bis''> <cis'' cis'''>
 <d'' d'''> <cis'' cis'''> <d'' d'''> <fis'' fis'''> <eis'' eis'''> <fis'' fis'''> <g'' g'''> <fis'' fis'''> <g'' g'''>
 <b' b''> <a' a''> <b' b''> <c''! c'''!>\!\f g''\staccato e''\staccato a''( f'') d''\staccato g''( e'') c''\staccato R2.
 g''4( d'') b'\staccato r r g'4\p ~ g' r c'' ~ c'' r d'' ~ d'' \acciaccatura e''8 d''8 c'' d''4 e'' r b
 b4 \acciaccatura c'8 b8 a b4 c' r b' b' \acciaccatura c''8 b' a' b'4 c''4 r gis gis gis gis a r b'
 b' \acciaccatura c''8 b' a' b'4 c'' \acciaccatura d''8 c''8 b' c''4 dis'' \acciaccatura e''8 dis''8 cisis'' dis''4
 e'' \acciaccatura f''8 e''8 dis'' e''4 b'4 \acciaccatura c''8 b'8 a' b'4 c''4 \acciaccatura d''8 c''8 b' c''4
 dis'' \acciaccatura e''8 dis''8 cisis'' dis''4 e''4 \acciaccatura f''8 e''8 dis'' e''4 e''4 \acciaccatura f''8 e''8 dis'' e''4
 e''4 \acciaccatura f''8 e''8 dis'' e''4 e''4 \acciaccatura f''8 e''8 dis'' e''4 e'' r
 \setTextCresc e''4\< ~ e'' r e'' ~ e'' r e'' ~ e'' r e''\!\f ~ e'' r a'' ~ a'' r b'' ~ b'' \acciaccatura c'''8 b''8 a'' b''4
 c''' r d''' ~ d''' r e''' ~ e''' r d''' ~ d''' \acciaccatura e'''8 d'''8 c''' d'''4 e'''
 r b'' ~ b'' r c''' ~ c''' r b'' ~ b'' \acciaccatura c'''8 b''8 a'' b''4 a'' r
 \set doubleSlurs = ##t <b' b''>4( <c'' c'''>) r <b' b''>( <a' a''>) r <b' b''>( <c'' c'''>) r <b' b''>( <a' a''>) r
 <b' b''>( <a' a''>) r <b' b''>( <a' a''>) r <b' b''>( <a' a''>) r <b' b''>( \setTextDim <a' a''>\>) \set doubleSlurs = ##f
 r b''( a'') r b'( a') r \clef bass b( a) r b,( a,\!\p) r r R2. R2. R2. R2. \bar "||"

 \clef bass \key a \major R2. R2. R2. R2. <cis e>2.( <b, d>2. <d fis>2 <cis e>4 <a, cis>) r r
 \clef treble \set doubleSlurs = ##t <e' cis''>4\staccato_\markup { \italic "sempre p" } <e' cis''>( <d' b'>)
 <d' b'>\staccato <d' b'>( <e' cis''>) <fis' d''>\staccato <fis' d''>( <e' cis''>) <e' cis''>\staccato <cis' cis''>( <d' d''>)
 <e' e''>\staccato <e' e''>( <d' d''>) <d' d''>\staccato
 <d' d''>( <e' e''>) <fis' fis''>\staccato <fis' fis''>( <e' e''>) <cis' cis''>4 r r
 R2. R2. R2. R2. \clef bass \set doubleSlurs = ##f <cis e>2.( <b, d>2. <d fis>2 <cis e>4 <a, cis>) r r
 \clef treble \set doubleSlurs = ##t <e' cis''>4\staccato_\markup { \italic "sempre p" } <e' cis''>( <d' b'>)
 <d' b'>\staccato <d' b'>( <e' cis''>) <fis' d''>\staccato <fis' d''>( <e' cis''>) <e' cis''>\staccato <cis' cis''>( <d' d''>)
 <e' e''>\staccato <e' e''>( <d' d''>)
 <d' d''>\staccato <d' d''>( <e' e''>) <fis' fis''>\staccato <fis' fis''>( <e' e''>) <cis' cis''>4 r r R2. R2. R2. R2.
 \set doubleSlurs = ##f
 <e'' gis''>2._\markup { \italic "cresc." }( <dis'' fis''>2. <fis'' a''>2 <e'' gis''>4) <e'' gis''>2.
 <e'' gis'' e'''>4\f <e'' gis'' e'''> <e'' gis'' e'''> <dis'' fis'' dis'''> <dis'' fis'' dis'''> <dis'' fis'' dis'''>
 <fis'' a'' fis'''> <fis'' a'' fis'''> <fis'' a'' fis'''> R2. <e'' gis'' e'''>4\p <e'' gis'' e'''> <e'' gis'' e'''> R2. R2. R2. R2.
 e''8\p([ fis'' e'' fis'' e'' fis''] d''[ e'' d'' e'' d'' e''] cis''4) r r
 \setTextCresc <e' cis''>2.\<( <d' b'>2. <fis' d''>2 <e' cis''>4)
 <e' cis''>2. <cis'' e''>2.( <b' d''>2. <d'' fis''>2 <cis'' e''>4 <a' cis''>2.)
 <e' cis''>4\staccato \set doubleSlurs = ##t <e' cis''>( <d' b'>) <d' b'>\staccato <d' b'>( <e' cis''>)
 <fis' d''>4\staccato <fis' d''>( <e' cis''>) <e' cis''>\!\f\staccato <e' cis''>( <b' d''>) <cis'' e''>\staccato <cis'' e''>( <b' d''>)
 <b' d''>\staccato <b' d''>( <cis'' e''>) <d'' fis''>\staccato <d'' fis''>( <cis'' e''>)
 <a' cis''>\staccato <d'' fis''>( <cis'' e''>) <a' cis''>\sf\staccato <d'' fis''>( <cis'' e''>)
 <a' cis''>\sf\staccato <d'' fis''>( <cis'' e''>) <a' cis''>\sf\staccato <d'' fis''>( <cis'' e''>) <a' cis''> r r \set doubleSlurs = ##f
 \setTextDim <e' a' cis''>4\> r r <e' a' cis''> r r <e' a' cis''> r r <e' a' cis''>\!\p r r R2._\markup { \italic "piu p" } R2. R2.
 r4_\pp r e' ~ e' r r r r e' ~ e' r r r r e' ~ e' r e' ~ e' r e' ~ e' r e'4

 \key a \minor
 e' r a'\sf ~ a' r b' ~ b' \acciaccatura c''8 b'8 a' b'4
 c''4 r d'' ~ d'' r e'' ~ e'' r d''\staccato \acciaccatura d''8 c''4\staccato b'\staccato a'\staccato b'\staccato a'\staccato r
 <a c' e'>4\p r r <a c' e' a'> r r <b e' gis' b'> <b e' gis' b'> <b e' gis' b'>
 <c' e' a' c''> r r <d' g'! b' d''> r r <e' g' c'' e''> r r r <d' gis'>\staccato <c' a'>\staccato
 <d' gis'>4\staccato <c' a'>\staccato f''4\f ~ f'' r g'! ~ g' r r r <f' b'>\p\staccato <e' c''>\staccato
 <f' b'>4\staccato <e' c''>\staccato d''4\f ~ d'' r e' ~ e' r r r <d' gis'>\p\staccato <c' a'>\staccato
 <d' gis'>\staccato <c' a'>\staccato f''4\f ~ f'' r g'! ~ g' r e'' ~ e'' r g'' ~ g'' r b'' ~ b'' r  b'' ~ b'' r <dis' dis''>\p\staccato
 <e' e''>\staccato <fis' fis''>\staccato <g' g''>\staccato <fis' fis''>\staccato <e' e''>\staccato <fis' fis''>\staccato
 <g' g''>\staccato <fis' fis''>\staccato <g' g''>\staccato <a' a''>\staccato <g' g''>\staccato <fis' fis''>\staccato
 <e' e''>\staccato <fis' fis''>\staccato <g' g''>\staccato <fis' fis''>\staccato <e' e''>\staccato <fis' fis''>\staccato
 <g' g''>\staccato <fis' fis''>\staccato <g' g''>\staccato <gis' gis''>\staccato <fis' fis''>\staccato <gis' gis''>\staccato
 <a' a''> <b' b''> <c'' c'''> <b' b''> <a' a''> <b' b''>
 \setTextCresc <c'' c'''>\< <b' b''> <c'' c'''> <d'' d'''> <c'' c'''> <b' b''> <a' a''> <b' b''> <c'' c'''>
 <b' b''> <a' a''> <b' b''> <c'' c'''> <b' b''> <c'' c'''> <cis'' cis'''> <bis' bis''> <cis'' cis'''>
 <d'' d'''> <cis'' cis'''> <d'' d'''> <fis'' fis'''> <eis'' eis'''> <fis'' fis'''> <g'' g'''> <fis'' fis'''> <g'' g'''>
 <b' b''> <a' a''> <b' b''> <c''! c'''!>\!\f g''\staccato e''\staccato a''( f'') d''\staccato g''( e'') c''\staccato R2.
 g''4( d'') b'\staccato r r g'4\p ~ g' r c'' ~ c'' r d'' ~ d'' \acciaccatura e''8 d''8 c'' d''4 e'' r b
 b4 \acciaccatura c'8 b8 a b4 c' r b' b' \acciaccatura c''8 b' a' b'4 c''4 r gis gis gis gis a r b'
 b' \acciaccatura c''8 b' a' b'4 c'' \acciaccatura d''8 c''8 b' c''4 dis'' \acciaccatura e''8 dis''8 cisis'' dis''4
 e'' \acciaccatura f''8 e''8 dis'' e''4 b'4 \acciaccatura c''8 b'8 a' b'4 c''4 \acciaccatura d''8 c''8 b' c''4
 dis'' \acciaccatura e''8 dis''8 cisis'' dis''4 e''4 \acciaccatura f''8 e''8 dis'' e''4 e''4 \acciaccatura f''8 e''8 dis'' e''4
 e''4 \acciaccatura f''8 e''8 dis'' e''4 e''4 \acciaccatura f''8 e''8 dis'' e''4 e'' r
 \setTextCresc e''4\< ~ e'' r e'' ~ e'' r e'' ~ e'' r e''\!\f ~ e'' r a'' ~ a'' r b'' ~ b'' \acciaccatura c'''8 b''8 a'' b''4
 c''' r d''' ~ d''' r e''' ~ e''' r d''' ~ d''' \acciaccatura e'''8 d'''8 c''' d'''4 e'''
 r b'' ~ b'' r c''' ~ c''' r b'' ~ b'' \acciaccatura c'''8 b''8 a'' b''4 a'' r
 \set doubleSlurs = ##t <b' b''>4( <c'' c'''>) r <b' b''>( <a' a''>) r <b' b''>( <c'' c'''>) r <b' b''>( <a' a''>) r
 <b' b''>( <a' a''>) r <b' b''>( <a' a''>) r <b' b''>( <a' a''>) r <b' b''>( \setTextDim <a' a''>\>) \set doubleSlurs = ##f
 r b''( a'') r b'( a') r \clef bass b( a) r b,( a,) r \clef treble e'4\!\pp ~ e'4 r r r r e' ~ e' r r
 r4 r e' ~ e' r e' ~ e' r e' ~ e' r e' ~ e' r a' ~ a' r b' ~ b' r c'' ~ c'' r b' ~ b' r a' ~ a' r g' ~ g' r f' ~ f' r e' ~ e' r r
 r4 r e' ~ e' r r r r e' ~ e' r e' ~ e' r e'( a) r \bar "|."
}