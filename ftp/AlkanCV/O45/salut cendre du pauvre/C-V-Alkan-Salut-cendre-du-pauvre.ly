\version "2.18.2"
\language "english"
\header {
    title = "Salut, cendre du pauvre!"
    subtitle = "Paraphrase"
    composer = "C. V. Alkan"
    date = "1856"
    mutopiacomposer = "AlkanCV"
    mutopiainstrument = "piano"
    maintainer = "Thomas Morgan"
    maintainerEmail = "thomas.j.h.morgan@gmail.com"
    source = "Simon Richault, 1856"
    style = "Romantic"
    license = "Creative Commons Attribution-ShareAlike 4.0"
    maintainer = "Anonymous"
    opus = "Op. 45"
}
\paper { page-count = #6 }\layout { \context { \Staff \RemoveEmptyStaves } }\layout { \context { \Score \consists "Span_arpeggio_engraver" } }\score { << 
\new PianoStaff <<
<< \new Staff = "treble" \with {
\consists "Span_arpeggio_engraver"
}{
\set Score.connectArpeggios = ##t
\clef bass
\key bf \major
\time 4/4
\tempo "Adagio sostenuto" 4 = 69<g, bf,>2\arpeggio <a, c>2\arpeggio |
<bf, df>2\arpeggio <a, c>4.\arpeggio \clef treble 
<<
{ f8-(\p^\markup{\italic{dolce cantabile}} |
f'2~^\< f'8 g'8\! ef'8 c'8-) |
bf2-( a4.-) c8-( |
c'2~^\< c'8 d'8\! bf8 g8-) |
f2.-(^\markup{\italic{dim.}} e4-) }
\\
{ \omit r8 |
r4 c'4 <bf d'>4 g4 |
f4( e4 f4 ds4) |
r4 e4 <f a>4 d4 |
c4( b,4 bf,2) }
>>
|
\clef bass <d, f,>2\arpeggio <e, g,>2\arpeggio |
<f, af,>2\arpeggio <e, g,>4.\arpeggio \clef treble 
<<
{ af8-(\p^\markup{\italic{dolce}} |
af'2~^\< af'8 bf'8\! gf'8 ef'8-) |
df'2-( c'4.-) e8-( |
e'4.^\< e'8 e'8 fs'8\! d'8 b8 |
a2~ a8 gs8_\markup{\italic{ten.}} cs'8 b8-) }
\\
{ \omit r8 |
r4 ef'4 <df' f'>4 bf4 |
af4\( g4 af4( gs4)\) |
r4 <e c'>4 <e cs'>4 fs4 |
e4 fs4 d2 }
>>
|

<<
{ \clef "bass" a2. cs'8 d'8 |
e'2. fs'8 gs'8 |
a'2 b'4. fs'8 |
a'2( gs'4 g'4) |
fs'2.( \clef "treble" b'8 d''8) |
d''4(^\> e'2)-(\!^\< a'8 cs''8)\! |
cs''4(^\> d'2)-(\! cs'8 e'8) |
cs'2( b4 c'4) |
cs'2.( es'8 fs'8) |
\clef "treble" gs'2.( as'8 bs'8) |
cs''2 es''4. ds''8 |
cs''2( bs'4 b'4) |
b'2.( e''8 g''8) |
g''4( g'2 c''8) e''8 |
e''4 e'2^\< a'8 c''8\! |
c'2 c'4. c'8 |
\clef "bass" c'4 f'4 ef'4 df'4 |
g4( a4 bf4 <bf d'>8 <a c'>8) |
bf2( a4) }
\\
{ \omit TupletNumber \tuplet 3/2 {<cs e>8^\markup{\italic{sempre sostenuto}} <cs e>8 <cs e>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<cs e>8 <cs e>8 <cs e>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<cs e>8 <cs e>8 <cs e>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e a>8 <e a>8 <e a>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<e b>8 <e b>8 <e b>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e gs b>8 <e gs b>8 <e gs b>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e gs b>8 <e gs b>8 <e gs b>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<b e'>8 <b e'>8 <b e'>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<a cs'>8 <a cs'>8 <a cs'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<a cs'>8 <a cs'>8 <a cs'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<b d' fs'>8 <b d' fs'>8 <b d' fs'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<b d'>8 <b d'>8 <b d'>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<cs' e'>8 <cs' e'>8 <cs' e'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<a cs' e'>8 <a cs' e'>8 <a cs' e'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<gs b e'>8 <gs b e'>8 <gs b e'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<g b e'>8 <g b e'>8 <g b e'>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<fs as cs'>8 <fs as cs'>8 <fs as cs'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<fs as cs'>8 <fs as cs'>8 <fs as cs'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<fs b d'>8 <fs b d'>8 <fs b d'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<d' fs'>8 <d' fs'>8 <d' fs'>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<d' e'>8 <d' e'>8 <d' e'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e gs b>8 <e gs b>8 <e gs b>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e a cs'>8 <e a cs'>8 <e a cs'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<cs' e'>8 <cs' e'>8 <cs' e'>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<d' a'>8 <d' a'>8 <d' a'>8} %{ end triplets %} \clef "bass" \omit TupletNumber \tuplet 3/2 {<e b>8 <e b>8 <e b>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e b>8 <e b>8 <e b>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e a>8 <e a>8 <e a>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<e a>8 <e a>8 <e a>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<fs a>8 <fs a>8 <fs a>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {gs8 gs8 gs8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<fs gs>8 <fs gs>8 <fs gs>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<es gs>8 <es gs>8 <es gs>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<es gs>8 <es gs>8 <es gs>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<es gs>8 <es gs>8 <es gs>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<es gs cs'>8 <es gs cs'>8 <es gs cs'>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<gs ds'>8 <gs ds'>8 <gs ds'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<gs bs ds'>8 <gs bs ds'>8 <gs bs ds'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<gs bs ds'>8 <gs bs ds'>8 <gs bs ds'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<bs ds' gs'>8 <bs ds' gs'>8 <bs ds' gs'>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<ds' as'>8 <ds' as'>8 <ds' as'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<ds' fss' as'>8 <ds' fss' as'>8 <ds' fss' as'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<fss' as' cs''>8 <fss' as' cs''>8 <fss' as' cs''>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<ds' as' cs''>8 <ds' as' cs''>8 <ds' as' cs''>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<ds' fss' as'>8 <ds' fss' as'>8 <ds' fss' as'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<ds' fss' as'>8 <ds' fss' as'>8 <ds' fss' as'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<ds' gs'>8 <ds' gs'>8 <ds' gs'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<ds' gs'>8 <ds' gs'>8 <ds' gs'>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<ds' fs'>8 <ds' fs'>8 <ds' fs'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<ds' a'>8 <ds' a'>8 <ds' a'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e' g'>8 <e' g'>8 <e' g'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<g' b'>8 <g' b'>8 <g' b'>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<g' b' d''>8 <g' b' d''>8 <g' b' d''>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<b f'>8 <b f'>8 <b f'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<c' e'>8 <c' e'>8 <c' e'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e' g'>8 <e' g'>8 <e' g'>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<e' gs'>8 <e' gs'>8 <e' gs'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<gs d'>8 <gs d'>8 <gs d'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<a c'>8 <a c'>8 <a c'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<c' e'>8 <c' e'>8 <c' e'>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<f a>8^\markup{\italic{dolce}} <f a>8 <f a>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<f a>8 <f a>8 <f a>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e g>8 <e g>8 <e g>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<g bf>8 <g bf>8 <g bf>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<f a>8 <f a>8 <f a>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<f c'>8 <f c'>8 <f c'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<f c'>8 <f c'>8 <f c'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<f bf>8 <f bf>8 <f bf>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {f8 f8 f8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<f g>8 <f g>8 <f g>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e g>8 <e g>8 <e g>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {e8 e8 e8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<e g>8 <e g>8 <e g>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e g>8 <e g>8 <e g>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {f8 f8 f8} %{ end triplets %} }
>>
 \override Rest.transparent = ##f r8^\markup{\italic{dolce}} f8-( |
f'2.-) r8 f8-( |
f'2.-) r8 f8-( |
f'4.-) f8-( f'4.-) 
<<
{ f8-( |
f'2~^\< f'8 g'8\! ef'8 c'8-) |
bf2~-( bf8 a8 g8 a8-) }
\\
{  \override Rest.transparent = ##t r8 |
r4 \omit TupletNumber \tuplet 3/2 {af8 af8 af8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {g8 g8 g8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {g8 g8 g8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {f8 f8 f8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {e8 e8 e8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {ef8 ef8 ef8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {c8 c8 c8} %{ end triplets %} }
>>
|
r2 r4 \tuplet 3/2 {<bf, df gf>8\p\< <df gf bf>8 <ff gf df'>8\!} %{ end triplets %} |

<<
{ <ff df'>4.-(\> <eff gf cf'>8-) <df gf bf>4\! }
\\
{ gf2 \omit r4 }
>>
\omit TupletNumber \tuplet 3/2 {<cs fs as>8\< <e fs cs'>8 <g as e'>8\!} %{ end triplets %} |

<<
{ <g e'>4.-(\> <fs d'>8-) <e as cs'>4\! }
\\
{ as2 \omit r4 }
>>
\omit TupletNumber \tuplet 3/2 {<e as cs'>8\< <g as e'>8 <as e' g'>8\!} %{ end triplets %} |
\clef "treble" \grace s8 <as e' g'>4-(\> <as d' fs'>8.-)\! <g as e'>16 <g as e'>4-( <fs as d'>8-) <e as cs'>8 |
<d fs b>8.-( cs'16 <cs fs as>4-) r4 \omit TupletNumber \tuplet 3/2 {\clef "bass" <b, d fs>8_\markup{\italic{cresc. poco a poco}} <d fs b>8 <fs b d'>8} %{ end triplets %} |

<<
{ <b d'>4.-( <e cs'>8-) <d fs b>4 }
\\
{ fs2 \omit r4 }
>>
\omit TupletNumber \tuplet 3/2 {<d fs>8 <d fs b>8 <fs b d'>8} %{ end triplets %} |

<<
{ <d' fs'>4.-( <g e'>8-) <fs b d'>4 }
\\
{ b2 \omit r4 }
>>
\omit TupletNumber \tuplet 3/2 {<fs b d'>8\< \clef "treble" <b d' fs'>8 <d' fs' b'>8\!} %{ end triplets %} |
<d' fs' b'>4-(\> <b d' g'>8.-)\! <b d' fs'>16 <b d' fs'>4-( <g b e'>8-) <fs b d'>8 |
<e as cs'>8.-( d'16 <d fs b>4-) r4 \omit TupletNumber \tuplet 3/2 {\clef "bass" <d es gs>8 <es gs b>8 <gs b d'>8} %{ end triplets %} |

<<
{ <gs d'>4.-( <as cs'>8-) <es gs b>4 }
\\
{ b2 \omit r4 }
>>
\omit TupletNumber \tuplet 3/2 {<es gs b>8 <gs b d'>8 <b d' es'>8} %{ end triplets %} |

<<
{ <b es'>4.-( <cs' e'>8-) <gs b d'>4 }
\\
{ d'2 \omit r4 }
>>
\omit TupletNumber \tuplet 3/2 {\clef "treble" <gs b d' es'>8\< <b d' es' gs'>8 <d' es' gs' b'>8\!} %{ end triplets %} |
<d' fs' a' d''>4-(\f\> <a d' fs' a'>8.-) <fs a d' fs'>16\! <fs a d' fs'>4 <e a e'>8 <d a d'>8 |
\clef "bass" \grace s8<ds a bs>8.-( <e cs'>16 <ds a bs>2-) \tuplet 3/2 {<ds a bs>8 <a bs ds'>8 <bs ds' a'>8} %{ end triplets %} |
\clef "treble" <ds' a' bs'>8.-( <e' cs''>16-) <ds' a' bs'>2 \tuplet 3/2 {<ds' a' bs'>8 <a' bs' ds''>8 <bs' ds'' a''>8} %{ end triplets %} |
<ds'' a'' bs''>8.-( <e'' cs'''>16-) 
<<
{ <ds'' bs''>4~ <ds'' bs''>8( <e'' cs'''>8) }
\\
{ a''2 }
>>
<ds'' a'' bs''>4~ |
<ds'' a'' bs''>8-( <e'' cs'''>8) <ds'' a'' bs''>8-( <e'' cs'''>8-) <ds'' a'' bs''>8-( <e'' cs'''>8-) <ds'' a'' bs''>8-( <e'' cs'''>8-) |
<ds'' a'' bs''>8( <d'' gs'' b''>8 <cs'' g'' as''>8 <c'' fs'' a''>8 <b' f'' gs''>8 <as' e'' g''>8 <a' ds'' fs''>8 <gs' d'' es''>8) |
<fs'' bs'' ds'''>8( <f'' b'' d'''>8 <e'' as'' cs'''>8 <ds'' a'' c'''>8 <d'' gs'' b''>8 <cs'' g'' as''>8 <c'' fs'' a''>8 <b' es'' gs''>8) |
<a'' bs'' ds''' fs'''>8_\markup{\dynamic{sf}} <fs'' a'' bs'' ds'''>8 <ds'' fs'' a'' bs''>8 <bs' ds'' fs'' a''>8 <a' bs' ds'' fs''>8 <fs' a' bs' ds''>8 <ds' fs' a' bs'>8 <bs ds' fs' a'>8 |
<as cs' e' g'>4-^ <gs b d' f'>4-^ <fs a c' ef'>4-^ <es gs b d'>4-^ |
\clef "bass" \grace s8 <ef fs a c'>2 <d es gs b>2 |
<as, cs fs>1 |
<bf, df gf>2 <bf, df gf>2 |
<bf, df f>1 |

<<
{ e1^\markup{\italic{ten.}} }
\\
{ df2-( c4 bf,4-) }
>>
|
\set Score.connectArpeggios = ##f \set Staff.connectArpeggios = ##t
\tempo "A tempo"r2. r8 \clef "treble" 
<<
{ f''8-(^\pp |
f'''2~^\< f'''8 g'''8\! ef'''8 c'''8-) |
bf''2-(\arpeggio a''4-) }
\\
{ \omit r8 |
r4 \omit r4 \omit r2 |
f'2.\arpeggio }
\\
{ \omit r8 |
\omit r4 \stemDown <c''' ef'''>4\ppp <bf'' d'''>4 <ef'' g''>4 |
<d'' f''>4\arpeggio <df'' e''>4 <c'' f''>4\stemNeutral  }
>>
r4 |
r4 r8 
<<
{ c''8-( c'''2~^\< |
c'''8 d'''8\! bf''8 g''8-) f''2-(\arpeggio |
e''4-) }
\\
{ \omit r8 r4 \omit r4 |
\omit r2 c'2\arpeggio |
\omit r4 }
\\
{ \omit r8 \omit r4 \stemDown \stemDown <g'' bf''>4 |
<f'' a''>4 <bf' d''>4 <a' c''>4\arpeggio <af' b'>4 |
<c' g' c''>4\arpeggio\stemNeutral  }
>>
r2 r8 
<<
{ a'8( |
a''2.) \omit r8 bf'8( |
bf''2.) \omit r8 b'8( |
b''2.) }
\\
{ \omit r8 |
r4 \omit r4 d''4. \omit r8 |
r4 \omit r4 ef''4. \omit r8 |
r4 \omit r4 e''4. }
\\
{ \omit r8 |
\omit r4 \stemDown \slurDown\stemDown <e'' g''>4(\pp fs''4 f''8) \omit r8 |
\omit r4 <f'' af''>4( g''4 gf''8) \omit r8 |
\omit r4 <fs'' a''>4( gs''4 g''8)\stemNeutral \slurNeutral }
>>

<<
{ <c' c''>8(\( |
<c'' c'''>2)-~\< <c'' c'''>8 <ef'' ef'''>8\! <d'' d'''>8 <bf' bf''>8\) |
<g' g''>8\(_\markup{\italic{dim.}} <ef' ef''>8 <c' c''>8 <d' d''>8 ef''4\arpeggio <ef'' g''>8\arpeggio\> <d'' f''>8\) |
<c'' ef''>4( <bf' d''>8)\! }
\\
{ \omit r8 |
r4 <gs'' bf''>4 a''4 \omit r4 |
\omit r4 g'4 <c' g'>4\arpeggio <f' a'>4\arpeggio |
f'4. }
\\
{ \omit r8 |
\omit r1 |
\omit r2 \stemDown c''8\stemNeutral  \stemDown bf'8\stemNeutral  \omit r4 |
\omit r4 \omit r8 }
>>
r8 r4 r8 f8-(^\markup{\italic{dolce}} |
f'2~^\< f'8 g'8\! ef'8 c'8-) |
ef'4( d'8) r8 r4 r8 f8(^\< |
f'4)\! r8 f8-(^\< f'8 g'8\! ef'8 c'8-) |
ef'4( d'8) r8 r4 r8 bf8( |
bf'2~^\< bf'8 c''8\! af'8 fs'8) |
g'8( af'8 f'8 d'8 ef'8 c'8 af8 fs8) |
g8( a8 bf8 <ef ef'>8) 
<<
{ <bf d'>4(_\markup{\italic{ten.}} <a c'>8. bf16) }
\\
{ f2 }
>>
\bar "||" %{ bar %}
\omit TupletNumber \tuplet 3/2 {<f bf d' f'>8^\markup{\italic{sostenuto sempre}} <f bf d' f'>8 <f bf d' f'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<f bf d' f'>8 <f bf d' f'>8 <f bf d' f'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<f bf d' f'>8 <f bf d' f'>8 <f bf d' f'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<f bf d' f'>8 <f bf d' f'>8 <f bf d' f'>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<bf c' f'>8 <bf c' f'>8 <bf c' f'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<bf c' f'>8 <bf c' f'>8 <bf c' f'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<a c' f'>8 <a c' f'>8 <a c' f'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<c' f'>8 <c' f'>8 <c' f'>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<g d' f'>8 <g d' f'>8 <g d' f'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<g d' f'>8 <g d' f'>8 <g d' f'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<g bf e'>8 <g bf e'>8 <g bf e'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<g bf e'>8 <g bf e'>8 <g bf e'>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<f c' f'>8 <f c' f'>8 <f c' f'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<f c' f'>8 <f c' f'>8 <f c' f'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<f c' f'>8 <f c' f'>8 <f c' f'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<f c' f'>8 <f c' f'>8 <f c' f'>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<f b d' f'>8 <f b d' f'>8 <f b d' f'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<f b d' f'>8 <f b d' f'>8 <f b d' f'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<f c' ef' f'>8 <f c' ef' f'>8 <f c' ef' f'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<f f'>8 <f f'>8 <f f'>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<f a c' f'>8 <f a c' f'>8 <f a c' f'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<a c' ef' f'>8 <a c' ef' f'>8 <a c' ef' f'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<bf d' f'>8 <bf d' f'>8 <bf d' f'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<f f'>8 <f f'>8 <f f'>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<bf d' f'>8 <bf d' f'>8 <bf d' f'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<f bf d' f'>8 <f bf d' f'>8 <f bf d' f'>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<f bf d' f'>8 <f bf d' f'>8 <f bf d' f'>8} %{ end triplets %} \tuplet 3/2 {<f a c' f'>8 <f a c' f'>8 <f a ef' f'>8} %{ end triplets %} |
\clef bass \set Score.connectArpeggios = ##t <g, bf,>2-(\arpeggio <a, c>2\arpeggio |
<bf, df>2\arpeggio <a, c>2-)\arpeggio |
<c ef>2-(\arpeggio <bf, df>2-)\arpeggio |
<ef gf>2-(\arpeggio <df f>2-)\arpeggio |
<f af>4-(\arpeggio <ef g>4-)\arpeggio <bf, d>4-(\arpeggio <bf, ef>4-)\arpeggio |
<g bf>4-(\arpeggio <f a>4-)\arpeggio <c e>4-(\arpeggio <c f>4-)\arpeggio |
<a c'>4-(\arpeggio <g bf>4-)\arpeggio <d fs>4-(\arpeggio <d g>4-)\arpeggio |
<b d'>4-(\arpeggio <a c'>4-)\arpeggio <ef gs>4-(\arpeggio <ef a>4-)\arpeggio |
<ef f c' ef'>4\arpeggio^\markup{\italic{sostenuto}} <d f bf d'>4\arpeggio <g a c' ef' g'>4\arpeggio <f bf d' f'>4\arpeggio |
\clef "treble" <a c' ef' f' a'>4\arpeggio <f bf d' f' bf'>4\arpeggio <ef' f' c'' ef''>4\arpeggio^\markup{\italic{sempre cresc.}} <d' f' bf' d''>4\arpeggio |
<g' a' c'' ef'' g''>4\arpeggio <f' bf' d'' f''>4\arpeggio <a' c'' ef'' f'' a''>4\arpeggio <f' bf' d'' f'' bf''>4\arpeggio |
<ef'' f'' c''' ef'''>4\arpeggio <d'' f'' bf'' d'''>4\arpeggio <ef'' a'' c''' ef'''>4\arpeggio <ef'' a'' c''' ef''' e'''>4\arpeggio |
<ef'' a'' c''' ef''' f'''>4\arpeggio^\markup{\italic{poco accel.}} <ef'' a'' c''' ef''' e'''>4\arpeggio <ef'' a'' c''' ef''' f'''>4\arpeggio <ef'' a'' c''' ef''' fs'''>4\arpeggio |
<ef'' a'' c''' ef''' f'''>4\arpeggio <ef'' a'' c''' ef''' fs'''>4\arpeggio <ef'' a'' c''' ef''' g'''>4\arpeggio <ef'' a'' c''' ef''' fs'''>4\arpeggio |
<ef'' a'' c''' ef''' g'''>4\arpeggio <ef'' a'' c''' ef''' gs'''>4\arpeggio a'''2~\startTrillSpan\sf |
a'''1~ |
\afterGrace a'''1_\markup{\italic{poco ritard}} { g'''16\stopTrillSpan a'''16 }  |
\tempo "A tempo" \set Score.connectArpeggios = ##f <bf'' d''' f''' bf'''>4\arpeggio\pp <f'' bf'' d''' f'''>4\arpeggio <d'' f'' bf'' d'''>4\arpeggio <bf' d'' f'' bf''>4\arpeggio |
<f' bf' d'' f''>4\arpeggio <f' bf' d''>4\arpeggio <f' bf'>4\arpeggio <f' bf' d''>4\arpeggio |
<f' bf' d'' f''>4\arpeggio <bf' d'' f'' bf''>4\arpeggio <d'' f'' bf'' d'''>4\arpeggio <f'' bf'' d''' f'''>4\arpeggio |

<<
{ \set Staff.connectArpeggios = ##f <bf'' d''' f''' bf'''>1\arpeggio |
<f'' bf'' d''' f'''>1 |
<d'' f'' bf'' d'''>1 |
\omit r1 }
\\
{ r4 r8 f8(^\< f'2)\! |
r4 r8 d'8(\< d''2)\! |
r4 r8 bf'8-(\< bf''2-~-)\! |
bf''1 }
>>
|
\clef bass \set Score.connectArpeggios = ##t <d f bf d'>2 <d f bf d'>2 |
<d f bf d'>1\arpeggio\fermata |
} >>
<< \new Dynamics {\key bf \major
\time 4/4
r1\mf |
r2 r4. r8 |
r4 r2._\markup{\dynamic{pp} \italic{e legatissimo}} |
r1 |
r1 |
r1 |
r1\mf |
r2 r4. r8 |
r4 r2.\pp |
r1 |
r1 |
r1 |
r1_\markup{\italic{poco cresc.}} |
r1 |
r2\< r2\> |
r1\! |
r1\< |
r1\! |
r4 r2._\markup{\italic{dim.}} |
r2.\> r4\p |
r1_\markup{\italic{cresc. poco a poco}} |
r1 |
r2\< r2\rfz |
r2.\>_\markup{\italic{dim.}} r4\p |
r2 \tuplet 3/2 {r8 r8 r8\<} %{ end triplets %} r4 |
r4\> r2.\! |
r4\> r2.\< |
r1\p |
r4 r2.\> |
r2.\< r4\> |
r2.\! r4\p |
r1 |
r2 r2_\markup{\italic{poco cresc.}} |
r1 |
r1\p |
\tuplet 3/2 {r8 r8 r8_\markup{\italic{smorz.}}} %{ end triplets %} r2. |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1_\markup{\italic{sempre cresc. e sempre} Ped.} |
r1 |
r1\f |
r2..\< r8\! |
r8\ff r8_\markup{\italic{sempre } Ped.} r2. |
r1_\markup{\italic{poco accel.}} |
r1_\markup{\dynamic{rfz} \italic{molto}} |
r1 |
r1_\markup{\italic{dim. poco a poco, ma sempre pedale}} |
r1 |
r1 |
r1_\markup{\italic{poco rall.} \dynamic{p}} |
r2..\> r8\! |
r2.\omit \sustainOn r4\sustainOff |
r1 |
r1 |
r1 |
r1 |
r2.. r8\p |
r1 |
r2.. r8_\markup{\italic{poco cresc.}} |
r2.. r8_\markup{\italic{poco rinf.}} |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r2.. r8_\markup{\italic{poco cresc.}} |
r1 |
r2 r8 r4._\markup{\italic{dim.}} |
r1 |
r1\pp |
r1 |
r1 |
r1 |
r1 |
r1 |
r1 |
r1\p\< |
r1\> |
r1\> |
r1\> |
r4\> r2.\! |
r4\> r2.\! |
r4\> r2.\! |
r4\> r2.\! |
r1 |
r1 |
r1 |
r2 r2\f |
r4 r2.^\markup{\italic{sempre cresc.}} |
r2 r2\< |
r2 r2\ff |
r1^\markup{\italic{dim. poco a poco}} |
r2..\> r8\! |
r1 |
r1 |
r1 |
r1 |
r1^\markup{\italic{smorz.}} |
r1 |
r1 |
r1\ppp |
r1 |
} >>
<< \new Staff = "bass" \with {
\consists "Span_arpeggio_engraver"
}{

\clef bass
\key bf \major
\time 4/4
<bf,, df, e,>2\arpeggio <f,, c, f,>2\arpeggio |
<bf,, e, g,>2\arpeggio <f,, c, f,>4.\arpeggio r8 |
r4 a,4 bf,4 <ef, ef>4 |

<<
{ d4( df4 c4.) r8 }
\\
{ f,2.( fs,4) }
>>
|
r4 g,4 a,4 <bf,, bf,>4 |

<<
{ a,4(^\markup{\italic{dim.}} af,4 g,2) }
\\
{ c,2. c,4 }
>>
|
<f,, af,, b,,>2\arpeggio <c,, g,, c,>2\arpeggio |
<f,, b,, d,>2\arpeggio <c,, g,, c,>4.\arpeggio r8 |
r4 
<<
{ af2 gf,8 gf8 |
f4( e4 ef4.) r8 |
r4 <gs, d>4 <a, cs>4 d,8 d8 |
cs4( d4 b,4 e,4) }
\\
{ c4 df4 gf,4 |
af,2. gs,4 |
\omit r2 \omit r4 d,4 |
e,2. e,4 }
>>
|
\omit TupletNumber \tuplet 3/2 {<a,, a,>8\sustainOn <a,, a,>8_\markup{\italic{sostenuto}} <a,, a,>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e, e>8 <e, e>8 <e, e>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<cs, cs>8 <cs, cs>8 <cs, cs>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<a,, a,>8 <a,, a,>8 <a,, a,>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<gs,, gs,>8 <gs,, gs,>8 <gs,, gs,>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<b,, b,>8 <b,, b,>8 <b,, b,>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<gs,, gs,>8 <gs,, gs,>8 <gs,, gs,>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e, e>8 <e, e>8 <e, e>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<fs,, fs,>8 <fs,, fs,>8 <fs,, fs,>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<a,, a,>8 <a,, a,>8 <a,, a,>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<d,, d,>8 <d,, d,>8 <d,, d,>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<fs,, fs,>8 <fs,, fs,>8 <fs,, fs,>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<e,, e,>8 <e,, e,>8 <e,, e,>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<ds, ds>8 <ds, ds>8 <ds, ds>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e, e>8 <e, e>8 <e, e>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e, d>8 <e, d>8 <e, d>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<e, cs>8 <e, cs>8 <e, cs>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e, e>8 <e, e>8 <e, e>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e, d>8 <e, d>8 <e, d>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e, b,>8 <e, b,>8 <e, b,>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<e, gs,>8 <e, gs,>8 <e, gs,>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e, d>8 <e, d>8 <e, d>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e, cs>8 <e, cs>8 <e, cs>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e, a,>8 <e, a,>8 <e, a,>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<e, fs,>8 <e, fs,>8 <e, fs,>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<gs,, e, gs,>8 <gs,, e, gs,>8 <gs,, e, gs,>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<a,, e, a,>8 <a,, e, a,>8 <a,, e, a,>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<cs, e, cs>8 <cs, e, cs>8 <cs, e, cs>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {e,8 e,8 e,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e, ds>8 <e, ds>8 <e, ds>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e, e>8 <e, e>8 <e, e>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<d, d>8 <d, d>8 <d, d>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<cs, gs, cs>8\sustainOn <cs, gs, cs>8 <cs, gs, cs>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<gs, gs>8 <gs, gs>8 <gs, gs>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<es, gs, es>8 <es, gs, es>8 <es, gs, es>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<cs, gs, cs>8 <cs, gs, cs>8 <cs, gs, cs>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<bs,, gs, bs,>8 <bs,, gs, bs,>8 <bs,, gs, bs,>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<ds, gs, ds>8 <ds, gs, ds>8 <ds, gs, ds>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<bs,, gs, bs,>8 <bs,, gs, bs,>8 <bs,, gs, bs,>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<gs,, gs,>8 <gs,, gs,>8 <gs,, gs,>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<fss,, ds, fss,>8 <fss,, ds, fss,>8 <fss,, ds, fss,>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<as,, ds, as,>8 <as,, ds, as,>8 <as,, ds, as,>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<ds,, ds,>8 <ds,, ds,>8 <ds,, ds,>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<fss,, ds, fss,>8 <fss,, ds, fss,>8 <fss,, ds, fss,>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<gs,, ds, gs,>8 <gs,, ds, gs,>8 <gs,, ds, gs,>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<ds, ds>8 <ds, ds>8 <ds, ds>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<gs, ds gs>8 <gs, ds gs>8 <gs, ds gs>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<gs b>8 <gs b>8 <gs b>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<a b>8 <a b>8 <a b>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<fs b>8 <fs b>8 <fs b>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<g b>8 <g b>8 <g b>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e b>8 <e b>8 <e b>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<f g b>8 <f g b>8 <f g b>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<ds g>8 <ds g>8 <ds g>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<e g>8 <e g>8 <e g>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<c g>8 <c g>8 <c g>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<d e>8 <d e>8 <d e>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<b, e>8 <b, e>8 <b, e>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<c e>8 <c e>8 <c e>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<a, e>8 <a, e>8 <a, e>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<f, c>8_\markup{\italic{sostenutissimo}} <f, c>8 <f, c>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<f, c>8 <f, c>8 <f, c>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<f, c>8 <f, c>8 <f, c>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<f, c>8 <f, c>8 <f, c>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<f, c>8 <f, c>8 <f, c>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<a,, a,>8 <a,, a,>8 <a,, a,>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<bf,, bf,>8 <bf,, bf,>8 <bf,, bf,>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<df, df>8 <df, df>8 <df, df>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<c, c>8 <c, c>8 <c, c>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<c, c>8 <c, c>8 <c, c>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<c, c>8 <c, c>8 <c, c>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<c, c>8 <c, c>8 <c, c>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<f, c>8 <f, c>8 <f, c>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<c, f, c>8 <c, f, c>8 <c, f, c>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<f, c>8 <f, c>8 <f, c>8} %{ end triplets %} 
<<
{ <c ef>4-( |
<bf, d>4 <gs, b,>4 <a, c>4-) <d f>4-( |
<c ef>4 <a, cs>4 <bf, d>4-) <ef g>4-( |
<c ef>4 <a, f>4 <bf, d>4 <g, ef>4 |
<a, c>4-) }
\\
{ \omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} }
>>
\omit TupletNumber \tuplet 3/2 {<d, bf,>8 <d, bf,>8 <d, bf,>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<ef, bf,>8 <ef, bf,>8 <ef, b,>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<ef, c>8 <ef, c>8 <ef, ef>8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {<f, d>8 <f, d>8 <f, d>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<f, cs>8 <f, cs>8 <f, cs>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<f, c>8 <f, c>8 <f, c>8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {<f, ef>8 <f, ef>8 <f, ef>8} %{ end triplets %} \bar "||" %{ bar %}
\grace {gf,,16(\sustainOn f,,16^\p} %{ end grace %} gf,,8)-! r8 \grace {gf,,16( f,,16} %{ end grace %} gf,,8)-! r8 \grace {gf,,16( f,,16} %{ end grace %} gf,,8)-! r8 \grace {gf,,16( f,,16} %{ end grace %} gf,,8)-! r8 |
\grace {gf,,16( f,,16} %{ end grace %} gf,,8)-! r8 \grace {gf,,16( f,,16} %{ end grace %} gf,,8)-! r8 \grace {gf,,16( f,,16} %{ end grace %} gf,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 |
\grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 |
\grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 |
\grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 |
\grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 |
\grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 |
\grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 |
\grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 |
\grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 |
\grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} fs,,8)-! r8 |
\grace {fs,,16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 |
\grace {fs,,16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 |
\grace {fs,,16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 |
\grace {fs,,16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 |
\grace {fs,,16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 |
\grace {<fs,, fs,>16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {<fs,, fs,>16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {<fs,, fs,>16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {<fs,, fs,>16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 |
\grace {<fs,, fs,>16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {<fs,, fs,>16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {<fs,, fs,>16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {<fs,, fs,>16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 |
\grace {<fs,, cs, fs,>16( es,,16} %{ end grace %} <fs,, cs, fs,>8)-!^\markup{\dynamic{sf}} r8 \grace {<fs,, cs, fs,>16( es,,16} %{ end grace %} <fs,, cs, fs,>8)-! r8 \grace {<fs,, cs, fs,>16( es,,16} %{ end grace %} <fs,, cs, fs,>8)-! r8 \grace {<fs,, cs, fs,>16( es,,16} %{ end grace %} <fs,, cs, fs,>8)-! r8 |
\grace {<fs,, fs,>16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {<fs,, fs,>16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {<fs,, fs,>16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {<fs,, fs,>16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 |
\grace {<fs,, fs,>16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {<fs,, fs,>16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {<fs,, fs,>16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {<fs,, fs,>16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 |
\grace {fs,,16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 \grace {fs,,16( es,,16} %{ end grace %} <fs,, fs,>8)-! r8 |
\grace {gf,,16( f,,16} %{ end grace %} <gf,, gf,>8)-! r8 \grace {gf,,16( f,,16} %{ end grace %} <gf,, gf,>8)-! r8 \grace {gf,,16( f,,16} %{ end grace %} <gf,, gf,>8)-! r8 \grace {gf,,16( f,,16} %{ end grace %} <gf,, gf,>8)-! r8 |
\grace {gf,,16( f,,16} %{ end grace %} <gf,, df,>8)-! r8 \grace {gf,,16( f,,16} %{ end grace %} <gf,, df,>8)-! r8 \grace {gf,,16( f,,16} %{ end grace %} <gf,, df,>8)-! r8 \grace {gf,,16( f,,16} %{ end grace %} <gf,, df,>8)-! r8 |
\grace {gf,,16( f,,16} %{ end grace %} <gf,, bf,,>8)-! r8 \grace {gf,,16( f,,16} %{ end grace %} <gf,, bf,,>8)-! r8 \grace {gf,,16( f,,16} %{ end grace %} gf,,8)-! r8 \grace {gf,,16( f,,16} %{ end grace %} gf,,8)-! r8\pageBreak

|
\set Score.connectArpeggios = ##f \set Staff.connectArpeggios = ##t
r2. r8 
<<
{ f8-(^\pp |
f'2~^\< f'8 g'8^\! ef'8 c'8-) |
bf2-(\arpeggio a4-) }
\\
{ \omit r8 |
r4 \omit r4 \omit r2 |
f,2.\arpeggio }
\\
{ \omit r8 |
\omit r4 \stemDown <a c' ef'>4\ppp <bf d'>4 <ef g>4 |
<d f>4\arpeggio <df e>4 <c f>4\stemNeutral  }
>>
r4 |
r4 r8 
<<
{ c8-( c'2~^\< |
c'8 d'8\! bf8 g8-) f2-(\arpeggio |
e4-) }
\\
{ \omit r8 r4 \omit r4 |
\omit r2 c,2\arpeggio |
\omit r4 }
\\
{ \omit r8 \omit r4 \stemDown \stemDown <e g bf>4 |
<f a>4 <bf, d>4 <a, c>4\arpeggio <af, b,>4 |
<g, c>4\stemNeutral  }
>>
r2 r8 
<<
{ a,8( |
a2.) \omit r8 bf,8( |
bf2.) \omit r8 b,8( |
b2.) }
\\
{ \omit r8 |
r4 <cs e>4(\pp <d fs>4 <f a>8) \omit r8 |
r4 <d f>4( <ef g>4 <gf bf>8) \omit r8 |
r4 <ds fs>4( <e gs>4 <g b>8) }
>>

<<
{ c8(\( |
c'2)-~ c'8 ef'8 d'8\arpeggio bf8 |
g8 ef8 c8 d8 ef4\arpeggio <ef g>8\arpeggio <d f>8\) }
\\
{ r8 |
r4 <e gs bf>4 <f a>4 <bf, f>4\arpeggio |
r4 <ef, g,>4 <c, g,>4\arpeggio <f, a,>4\arpeggio }
\\
{ \omit r8 |
\omit r1 |
\omit r2 \stemDown c8\stemNeutral  \stemDown bf,8\stemNeutral  \omit r4 }
>>
|

<<
{ \tuplet 3/2 {f,8 ^\p  f,8 f,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {f,8 f,8 f,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {fs,8 fs,8 fs,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {g,8 g,8 g,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {af,8 af,8 af,8} %{ end triplets %} |
\omit TupletNumber \tuplet 3/2 {af,8 af,8 af,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {af,8 af,8 af,8} %{ end triplets %} \omit TupletNumber \tuplet 3/2 {af,8 af,8 af,8} %{ end triplets %} af,8 }
\\
{ bf,,2\( b,,2 |
c,4 d,4 ef,4 a,,4\) |
bf,,4\( b,,4 c,4 d,4 |
ef,4 c,4 g,,4 a,,4\) |
bf,,4 bf,,4 bf,,4 bf,,4 |
b,,4\( c,4 cs,4 d,8\) }
>>
bf,8\(\< |
bf8 c'8\! af8 fs8 g8 af8 f8 d8\) |

<<
{ ef8\( c8 d8 g,8 f,4_\markup{\italic{ten.}} ef4\) }
\\
{ \omit r2 f,2 }
>>
|
bf,2.(_\markup{\italic{dolce cantabile}} d8 ef8 |
f2.\< g8 a8) |
bf2(\! d'4.\> c'8) |
bf2( a4\! af4) |
g2.(\< c'8 ef'8)\! |
ef'4(\> f2\< bf8 d'8)\! |
f8.(\> ef16 d2 ef8 c8)\! |
<bf,, df, e,>2(\arpeggio <f,, c, f,>2\arpeggio |
<bf,, e, g,>2\arpeggio <f,, c, f,>2)\arpeggio |
<a,, c, gf,>2(\arpeggio <bf,, df, f,>2)\arpeggio |
<c, ef, af,>2(\arpeggio <df, f, af,>2)\arpeggio |
<d, f, bf,>4(\arpeggio <ef, g, bf,>4)\arpeggio <af,, bf,, f,>4(\arpeggio^\markup{\italic{cresc. - - - - - - - - - - - - - - poco - - - - - - - - a - - - - - - poco}} <g,, bf,, ef,>4)\arpeggio |
<e, g, c>4(\arpeggio <f, a, c>4)\arpeggio <bf,, c, g,>4(\arpeggio <a,, c, f,>4)\arpeggio |
<fs, a, d>4(\arpeggio <g, bf, d>4)\arpeggio <c, d, a,>4(\arpeggio <bf,, d, g,>4)\arpeggio |
<gs, b, ef>4(\arpeggio <a, c ef>4)\arpeggio <d, ef, b,>4(\arpeggio <c, ef, a,>4)\arpeggio |
\set Staff.pedalSustainStyle = #'mixed <a,, c, ef, f, a,>4\arpeggio\sustainOn  <bf,, d, f, bf,>4\arpeggio\sustainOn\sustainOff  <c, ef, f, a, ef>4\arpeggio\sustainOn\sustainOff  <d, f, bf, d>4\arpeggio\sustainOn\sustainOff  |
<c, f, a, ef f>4\arpeggio\sustainOn\sustainOff  <bf,, d, f, bf, d>4\arpeggio\sustainOn\sustainOff  <a, c ef f a>4\arpeggio\sustainOn\sustainOff  <bf, d f bf>4\arpeggio\sustainOn\sustainOff  |
<c ef f a ef'>4\arpeggio\sustainOn\sustainOff  <d f bf d'>4\arpeggio\sustainOn\sustainOff  <c f a ef' f'>4\arpeggio\sustainOn\sustainOff  <bf, d f bf d'>4\arpeggio\sustainOn\sustainOff  |
<a c' ef' f' a'>4\arpeggio\sustainOn\sustainOff  <bf d' f' bf'>4\arpeggio\sustainOn\sustainOff  <f a c' ef' a'>4\arpeggio_\markup{Ped. \italic{sempre}}\sustainOff  <f a c' ef' a'>4\arpeggio |
<f a c' ef' a'>4\arpeggio <f a c' ef' a'>4\arpeggio <f a c' ef' a'>4\arpeggio <f a c' ef' a'>4\arpeggio |
<f, a, c ef a>4\arpeggio <f a c' ef' a'>4\arpeggio <f a c' ef' a'>4\arpeggio <f, a, c ef a>4\arpeggio |
<f, a, c ef a>4\arpeggio <f a c' ef' a'>4\arpeggio \clef "treble" <f' a' c'' ef'' a''>4\arpeggio^\sf <f a c' ef' a'>4\arpeggio |
\clef "bass" <f, a, c ef a>4\arpeggio <f a c' ef' a'>4\arpeggio <f, a, c ef a>4\arpeggio <f,, a,, c, ef, a,>4\arpeggio |
<f, a, c ef a>4\arpeggio_\markup{Ped. \italic{sempre}} <f, ef g>4\arpeggio \set Staff.pedalSustainStyle = #'text <f, d f>4\arpeggio\omit \sustainOn  <f, c ef>4\arpeggio\sustainOff \break
|
<bf,, d, f, bf,>4\arpeggio_\markup{Ped. \italic{sempre}} <d, f, bf, d>4\arpeggio <f, bf, d f>4\arpeggio <bf, d f bf>4\arpeggio |
<d f bf d'>4\arpeggio <f bf d'>4\arpeggio <bf d'>4\arpeggio <f bf d'>4\arpeggio |
<d f bf d'>4\arpeggio <bf, d f bf>4\arpeggio <f, bf, d f>4\arpeggio <d, f, bf, d>4\arpeggio |
<bf,, d, f, bf,>1\arpeggio\sustainOn |
<bf,, d, f, bf,>1 |
<bf,, d, f, bf,>1 |
\omit r1 |
<bf,, bf,>2 <bf,, bf,>2 |
<bf,, f, bf,>1\arpeggio\fermata\sustainOff  \bar ".." %{ bar %}
} >>
>>
>> \layout { \context { \Score \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8) } } \midi { } }
