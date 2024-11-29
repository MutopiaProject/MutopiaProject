\version "2.18.2"
\language "english"
\header {
    title = "Laus Deo"
    subtitle = ""
    composer = "Charles-Valentin Alkan"
    date = "1861"
    mutopiacomposer = "AlkanCV"
    mutopiainstrument = "piano"
    maintainer = "Thomas Morgan"
    maintainerEmail = "thomas.j.h.morgan@gmail.com"
    source = "Simon Richault, 1861/Costallat & Cie., 1910"
    style = "Romantic"
    license = "Creative Commons Attribution-ShareAlike 4.0"
    maintainer = "Anonymous"
    opus = "Op. 63"
}
\score { << 
\new PianoStaff <<
<< \new Staff = "treble" \with {

}{

\clef treble
\key c \major
\time 4/4
\tempo "Assez lentement" %{ spacer %} s4 %{ spacer %} s8 <g' c''>8(->\f <af' d''>8->[ <c'' f''>8-> <bf' e''>8)->] <g' c''>8(->\mf |
<af' d''>8->[ <c'' f''>8-> <bf' e''>8)->] <g' c''>8(->\f <af' d''>8->[ <c'' f''>8-> <bf' e''>8)->] <g' c''>8(->\mf |
<af' d''>8->[ <c'' f''>8-> <bf' e''>8)->] <g' c''>8(->\f <af' d''>8->[ <c'' f''>8-> <bf' e''>8-> <g' c''>8)->] \bar "|." %{ bar %}
\break
\tempo "Même mouvement" \tuplet 5/4 {c'4(^\markup{\italic{Dolce}}_\markup{\dynamic{p} \italic{e sostenuto}} bf4 df'4 c'4 bf4} %{ end quintuplets %} |
\tuplet 5/4 {af4 g4 bf4 af4 g4} %{ end quintuplets %} |
\clef bass \tuplet 5/4 {f4 e4 g4 f4 e4} %{ end quintuplets %} |
\tuplet 5/4 {d4 c4 e4 d4 c4)} %{ end quintuplets %} |
\tuplet 5/4 {d4(\< c4 g4 e4 c4)} %{ end quintuplets %} |
\tuplet 5/4 {d4( c4 e4 d4 c4)\!} %{ end quintuplets %} |
\tuplet 5/4 {e4(\>_\markup{\italic{poco cal.}} f4 g4 a4 b4)\!} %{ end quintuplets %} \bar ".." %{ bar %}
\break
\tempo "Un peu plus lentement" \time 6/4 r2 r4 \clef treble \bar "||" c'2^\markup{\italic{dolce e legato}} d'4 |

<<
{ e'2 f'4 d'2 e'4 |
d'8 c'8 d'2 c'2.\fermata^\markup{\italic{calando}} }
\\
{ g2 a4 b2 c'4~ |
<a c'>4 b8 a8 b4 g2.\fermata }
\\
{ \omit r2 \omit r4 g2. |
f2._~ f4 e8 d8 e4\fermata }
>>
|

<<
{ \tempo "A tempo"e'2\<_\markup{\italic{sempre}} f'4 g'2 c''4\! |
a'2 b'4( a'2.) |
<d' g'>2.\fermata^\markup{\italic{calando}} }
\\
{ c'2. <b d'>2 <c' e'>4 |
d'4 c'4 <b d'>4 c'8 b8 <c' d'>2~ |
c'4\> b8 a8 b4\fermata\! }
\\
{ \omit r1 \omit r2 |
fs'2 g'4~ <e' g'>4 fs'8 e'8 fs'4 |
\omit r2 \omit r4 }
>>
\break
\repeat volta 2 { 
<<
{ \tempo "A tempo" d'2_\markup{\italic{sempre dolce}} e'4 |
<a f'>2 <g g'>4 <g e'>2 <f f'>4 |
e'8_\markup{\italic{poco cresc.}} d'8 e'2\tenuto <a d'>2.\fermata }
\\
{ d'2 cs'4 |
d'2.~ d'4 c'8 b8 c'4 |
<f bf>4 <bf d'>4 <a cs'>4^\markup{\italic{calando}} g8 e8 f2\fermata }
>>
|

<<
{ \tempo "A tempo" f'2_\markup{\italic{dim.}} e'4 d'2 e'4 |
c'2\tenuto d'4 <c' d'>8 c'8 d'2 }
\\
{ \omit r2 \omit r4 a2 b4 |
<a c'>4 <g b>4 <fs a c'>4 af4 <g b>8 <f a>8~ <f g b>4 }
>>
\bar "||" %{ bar %}
}
%{ start alternatives %} \alternative { 
{ 
<<
{ <g c'>2.\fermata^\markup{\italic{calando}} }
\\
{ f8 d8 e2\fermata }
>>
} %{ %{ switch alternative %} { 
<<
{ <g c'>2.~^\markup{\italic{calando}}\bar "||"  c'2.~ }
\\
{ f8 d8 e2 r2. }
>>
}
}
|
\time 4/4 \tempo "Al primo tempo" \tuplet 5/4 {c'4(_\markup{\italic{dolce e sostenuto}} bf4 df'4 c'4 bf4} %{ end quintuplets %} |
\tuplet 5/4 {af4 g4 bf4 af4 g4} %{ end quintuplets %} |
\clef bass \tuplet 5/4 {f4 e4 g4 f4 e4)} %{ end quintuplets %} |
\tuplet 5/4 {d4(\< c4 e4 d4 c4} %{ end quintuplets %} |
\tuplet 5/4 {d4 c4 g4 e4 c4} %{ end quintuplets %} |
\tuplet 5/4 {d4 c4 e4 d4 c4} %{ end quintuplets %} |
\tuplet 5/4 {e4\>_\markup{\italic{poco cal.}} f4 g4 a4 b4)\!} %{ end quintuplets %} |
c'2~_\markup{\italic{rall.}} c'4.\bar "|." \break
\clef treble <g' c''>8(->\f |
<af' d''>8->[ <c'' f''>8-> <bf' e''>8)->] <g' c''>8(->\mf <af' d''>8->[ <c'' f''>8-> <bf' e''>8)->] <g' c''>8(->\f |
<af' d''>8->[ <c'' f''>8-> <bf' e''>8)->] <g' c''>8(->\mf <af' d''>8->[ <c'' f''>8-> <bf' e''>8-> <g' c''>8)->] |
r8_\markup{\italic{dim. e rit.}} <bf' e''>8( <g' c''>4) r8. bf'16( g'4) |
r4\p g'4-. r2\fermata \bar ".." %{ bar %}
} >>
<< \new Staff = "bass" \with {

}{

\clef bass
\key c \major
\time 4/4
%{ spacer %} s4 %{ spacer %} s8 r8\sustainOn  r4 c,,4~-^ |
c,,4 r4 c,,2-^ |
r4 c,,2-^ r4\tweak self-alignment-X #-5 \sustainOff  |
\clef treble <c'' e''>1 |
<c'' d'' f''>2 <c'' e'' g''>2 |
<c'' f'' af''>2 <c'' g'' bf''>2 |

<<
{ <f'' af'' b''>2( <e'' g'' c'''>2) |
<f'' af'' b''>2( <e'' g'' c'''>2) |
<f'' af'' b''>2( <e'' g'' c'''>2) |
\omit r1 }
\\
{ c''1-- |
c''1-- |
c''1-- |
\set doubleSlurs = ##t <b' g''>2( <a' f''>2) }
>>
|
\time 6/4 r2 r4 \clef bass r2^\markup{\italic{sostenutissimo}}\sustainOn \unaCorda  r4 |

<<
{ r1 r2 |
r4^\markup{\italic{dolce e legato}} r4 g,8 f,8_\markup{\italic{dolce e legato}} g,2.\fermata }
\\
{ \omit r1 \omit r2 |
r2. c,8 b,,8 c,2\fermata }
>>
|

<<
{ r1 r2 |
r2 r4 r4 r4 d8 c8 |
d2.\fermata }
\\
{ \omit r2 \omit r2 \omit r2 |
\omit r2 \omit r2 \omit r2 |
g,8 fs,8 g,2\fermata }
>>
\repeat volta 2 { 
<<
{ \omit r2 \omit r4 |
\omit r2 \omit r2 \omit r2 |
\omit r4 g8 a8 g4 <a, d>2.\fermata }
\\
{ <g bf>4 <f a>4 <e g>4 |
<d f>4 <c e>4 <b, d>4 <c e>4 <b, d>4 <a, c>4 |
<bf, d>4 g,4 a,8 g,8 r4 d,8 cs,8 d,4\fermata }
>>
|

<<
{ \omit r2 \omit r2 \omit r2 |
a,2 \omit r4 f2 g,8 f,8 }
\\
{ r2. fs2 gs4 |
\omit r2 d8 e8 f8 e8 f4 \omit r4 }
>>
\bar "||" %{ bar %}
}
%{ start alternatives %} \alternative { 
{ 
<<
{ g,2.\fermata }
\\
{ r4 c,8 b,,8 c,4\fermata }
>>
} %{ %{ switch alternative %} { 
<<
{ g,2. r2. }
\\
{ r4 c,8 b,,8 c,4 r2.\tweak self-alignment-X #-5 \sustainOff \tweak self-alignment-X #-1 \treCorde  }
>>
\bar ".." %{ bar %}
}
}
\break
\time 4/4 \clef treble <c'' e''>1 |
<c'' d'' f''>2 <c'' e'' g''>2 |
<c'' f'' af''>2 <c'' g'' bf''>2 |

<<
{ <f'' af'' b''>2( <e'' g'' c'''>2) |
<f'' af'' b''>2( <e'' g'' c'''>2) |
<f'' af'' b''>2( <e'' g'' c'''>2) |
\omit r1 }
\\
{ c''1-- |
c''1-- |
c''1--\( |
<bf' g''>2^( <a' f''>2^)\) }
>>
|

<<
{ \tuplet 3/2 {f''4( e''8[ d''8] e''4)~)} %{ end triplets %} e''4. }
\\
{ <g' c''>2~ <g' c''>4. }
>>
r8\sustainOn |
\clef bass c,,2-^ r4 c,,4~-^ |
c,,4 r4 c,,2-^ |
r4 c,,4-^ r2 |
c,,4-. r4 r2\fermata\tweak self-alignment-X #-5 \sustainOff  |
} >>
>>
>> }