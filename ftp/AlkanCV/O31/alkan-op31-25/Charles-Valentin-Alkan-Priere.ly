\version "2.18.2"
\language "english"
\header {
    title = "Priere"
    subtitle = ""
    composer = "Charles-Valentin Alkan"
    date = "1847"
    mutopiacomposer = "AlkanCV"
    mutopiainstrument = "piano"
    maintainer = "Thomas Morgan"
    maintainerEmail = "thomas.j.h.morgan@gmail.com"
    source = "A.M. Schlesinger, 1847"
    style = "Romantic"
    license = "Creative Commons Attribution-ShareAlike 4.0"
    maintainer = "Anonymous"
    opus = "Op. 31, No. 25"
}
\paper { page-count = #1 }\score { << 
\new PianoStaff <<
<< \new Staff = "treble" \with {

}{

\clef bass
\key c \major
\time 6/4
\tempo "Lento" <c e c'>2._\markup{\dynamic{p} \italic{e molto sostenuto sempre}} <e g c'>2 <e g c'>4 |
<d g b>2. <b, d g>2. |
<a c' f'>2. <a c' f'>2 <a c' f'>4 |
<g c' e'>2. <e g c'>2. |
\clef "treble" <d' g'>2. <b d' g'>2 <b d' g'>4 |
<c' e' g'>2. <c' e' a'>2. |

<<
{ fs'2.~( fs'2 g'4) }
\\
{ c'2 b4 c'2 d'4 }
>>
|
<b d' g'>1. \bar "||" %{ bar %}
\clef "bass" <e g c'>2. <e g c'>2 <e g c'>4 |
<d g b>2. <d g>2. |
<a c' f'>2. <a c' f'>2 <a c' f'>4 |
<g c' e'>2. <e g c'>2. |
\clef "treble" <d' g'>2. <b d' g'>2 <b d' g'>4 |
<c' e' g'>2. <c' e' a'>2 <c' e'>4 |

<<
{ fs'2.~ fs'4 g'4 }
\\
{ c'2 b4 c'4 e'4 d'4 }
>>
|
<b d' g'>1.\bar ".|:-||" %{ bar %} \break
\repeat volta 2{\clef "bass" <g b d'>2._\markup{\italic{sempre }\dynamic{p}} <g b d'>2 <g b d'>4 |
<f a f'>2. <f a f'>2. |

<<
{ c'2 b4 c'2 d'4 }
\\
{ <f a>2. <f a>2 <f a>4 }
>>
|

<<
{ e'2. e'2. }
\\
{ <e gs>2. <e gs>2. }
>>
|
\clef "treble" <bf e' g'>2. <bf e' g'>2 <bf e' g'>4 |

<<
{ <a a' c''>1. }
\\
{ g'2.\> f'2 e'4\! }
>>
|

<<
{ g'2.\p d'4 e'4 <d' f'>4 }
\\
{ g2. g2 g4 }
>>
|
<g d' f'>2. <g c' e'>2. |

<<
{ <e' g'>2.\f <e' g'>2 <e' g'>4 }
\\
{ bf2 a4 bf4 d'4 c'4 }
>>
|
<a g' a' c''>2.~\> <a f'>2 <g e'>4\! |
<e c'>2.\p <f d'>2. |
<e c'>1.} |
<e g c'>2.\ppp <e g c'>2 <e g c'>4 |
\clef "bass" <d g b>2. <b, d g>2. |
<a c' f'>2. <a c' f'>2 <a c' f'>4 |
<g c' e'>2. <e g c'>2. |
\clef "treble" <d' g'>2. <b d' g'>2. |
<c' e' g'>2. <c' e' a'>2. |

<<
{ fs'2.~( fs'2 g'4) }
\\
{ c'2 b4 c'2 d'4 }
>>
|
<b d' g'>1. \bar "||" %{ bar %}
\clef "bass" <g b d'>2. <g b d'>2 <g b d'>4 |
<f a f'>2. <f a f'>2. |

<<
{ c'2 b4 c'2 d'4 }
\\
{ <f a>2. <f a>2 <f a>4 }
>>
|
<e gs e'>2. <e gs e'>2. |
\clef "treble" <bf e' g'>2.\p <bf e' g'>2 <bf e' g'>4 |

<<
{ <a c''>1. }
\\
{ g'2.\> f'2 e'4\! }
>>
|

<<
{ d'2.\pp d'4 e'4 <d' f'>4 }
\\
{ g2. g2 g4 }
>>
|
<g d' f'>2. <g c' e'>4 c'4 e'4 |

<<
{ <e' g'>2.\p\> <e' g'>2 <e' g'>4\! }
\\
{ bf2 a4 bf4 d'4 c'4 }
>>
|
<a g' c''>2.~ <a f' c''>2_\markup{\italic{rall.}} <g e'>4 |

<<
{ c'2.\ppp d'2 c'4 }
\\
{ e2. f2. }
>>
|
<e c'>1.\fermata \bar ".." %{ bar %}
} >>
<< \new Staff = "bass" \with {

}{

\clef bass
\key c \major
\time 6/4
c2. c2 c4 |
<g, b,>2. g,2. |
<f, f>2. <a, f>2 <c f>4 |
<c e>2. c2. |
<b, g>2. <g, g>2 <g, g>4 |
<c g>2. <a, a>2. |
<d a>1. |

<<
{ g1. }
\\
{ g,2. e,4 f,4 d,4 }
>>
|
<c, c>2. <e, c>2 <g, c>4 |
<g, b,>2. g,2. |

<<
{ f2. f2 f4 }
\\
{ f2. f,4 a,4 c4 }
>>
|
<c e>2. c2. |
<b, g>2. <g, g>2 <g, g>4 |
<c g>2. <a, a>2. |
<d a>1. |
<g, g>1. |
<g, d>2. <g, d>2 <g, d>4 |
<d, d>2. <d, d>2. |
<f, c>2. <f, c>2 <f, c>4 |
<e, b,>2. <e, b,>2. |
<c, c>2. <c, c>2 <c, c>4 |
<f, c>1._\markup{\italic{Ped. o Mani}} |
<g, b,>2. <g, b,>2 <g, b,>4 |
<c, c>1. |
<c, c>2. <c, c>2 <c, c>4 |
<f, c>2.~_\markup{\italic{Ped. o Mani}} <f, c>2 <g, c>4 |
<a, c>2. <g, b,>2. |
<c, c>1. |
c2. c2 c4 |
<g, b,>2. g,2. |
<f, f>2. <a, f>2 <c f>4 |
<c e>2. c2. |
<b, g>2. <g, g>2. |
<c g>2. <a, a>2. |
<d a>1. |
<g, g>1. |
<g, d>2. <g, d>2 <g, d>4 |
<d, d>2. <d, d>2. |
<f, c>2. <f, c>2 <f, c>4 |
<e, b,>2. <e, b,>2. |
<c, c>2. <c, c>2 <c, c>4 |
<f, c>1._\markup{\italic{Ped. o Mani}} |
<g, b,>2. <g, b,>2 <g, b,>4 |
<c, c>2. <c, c>4 r4 r4 |
<c, c>2. <c, c>2 <c, c>4 |
<f, c>2.~ <f, c>2 <g, c>4 |
<a, c>2. <g, b,>2. |
<c, c>1.\fermata |
} >>
>>
>> }