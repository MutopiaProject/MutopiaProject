\version "2.6.0"

#(set-default-paper-size "a4" 'landscape)

\header {
 title = "Lobt Gott, ihr Christen, allzugleich"
 mutopiatitle = "Lobt Gott, ihr Christen, allzugleich"
 mutopiacomposer = "Anonymous"
 mutopiainstrument = "Organ"
 date = "18th C."
 source = "audio transcription"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Kilian A. Foth"
 lastupdated = "2005/May/10"
 moreInfo = "Falsely ascribed to J. S. Bach"
 
 footer = "Mutopia-2005/08/07-579"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}



% Sopran
S = \relative c'' {
  \partial 8 g8|
  d'b d32c b c d8g d|
d b c d f d|
e c e d a'c,|
b a b b g'16fis g b,|
c8a b c fis16 e fis8|
g16fis e fis e d cis b cis d b cis|
d4.(d16)e d b c a|
b8e,e'(e16)fis e cis d b|
gis8 d'4(d16) f e d c b|
c4.(c16)e d c b a|
fis'8g a(a16)d,e fis g8(|
g16)fis e fis g e fis4.\trill|
g8b16g a fis g4.(|
g16)a g fis g e fis g a g a fis|
g4.(g16)e fis g a fis|
d f e d c b a8 e'a(|
a16)g fis e d c b e d c b a|
g a b g c a d8 g d|
d16 c b g c a d e f e f d|
e4. r|
r8d16 fis e g fis g a fis g e|
fis e d fis e g fis8b16a b fis|
g8 e r r4.|
r8cis16e d fis e8 a16 g a e|
fis8 d r r4.|
r8 b c d4.\trill(|
d16)b c e a8(a)gis b(|
b)e,a(a)g16fis g8(|
g)cis,fis(fis)e16d e8(|
e16)cis d e fis g a4.(|
a8)g4\trill(g16)e fis d a'd,|
\times 2/3 {b'16[a g]} fis8 e16\trill d d4 d,8|
a'fis a32g fis g a8d a|
a fis g a c a|
b g b a e'g,|
fis d r r16 d'e fis g a|
b4.(b16)fis e d cis b|
cis b cis d e fis g fis g b a g|
fis e fis a g fis e d e g fis e|
d c d fis e d c b c e d c|
b d c b a g e'4.(|
e16)e d c b a fis'4.(|
fis16) fis e d c b g'4.(|
g16) g fis e d c a'4.(|
a16) g fis e d c b8g'16fis g8(|
g16)a g8\trill fis16g g[d b g] d8|
g16 a b d c e d e f e f d|
e4. r8 cis8a'(|
a8)d,16fis e g fis g a g a fis|
g8 e r r4 b'8(|
b16)gis a gis a e f e f a f e|
dis4. d16c d f e d|
c8c d e a e|
e c d e a16g a e|
f8 d f e b' d,|
c16b c e d f e8 a gis|
a4.(a16) c b a gis fis|
gis4b8a16c b a gis b|
a8 a cis,d16cis d fis e g|
fis8 d r r4fis8(|
fis)b dis,e16dis e g fis a|
g8e r r4.|
r4. r16 d fis g a d,|
b'g e g e d cis4 e8(|
e16)g fis e d cis d e d c b a|
b8 g'16fis g b,b8[a] \times 2/3 {a16 b c}|
c8\trill[b]\times 2/3{d16 e f} f8 \times 2/3{e16[d c]} \times 2/3{b[a g]}|
fis'8 g r16 c, b8c a|
g b16g c a d b e c f d|
e d e c'e,c d c d b'd,b|
c16b c a'c,a b4g8|
d'b d32c b c d8g d|
d b d32c b c d16e f e f d|
e8 c e fis a c,|
b16 g a fis g8r g'16fis g b,|
a8fis16a g b a8d a|
a fis16a g b a8 d c|
b16 a b cis d cis d e fis d e fis|
g4.(g16)a g fis e d|
cis4.(cis16)d e g fis e|
d cis d fis e g fis8 b16 a b fis|
g a g fis g8(g16)e a g fis e|
fis e fis d e fis g4.(|
g16)a g fis g e fis4.|
g8b,16d c e d8g d|
d b16d c e d e f d f d|
e8c e fis a c,|
c(b4) r4\bar"|."

}

% Alt
A = \relative c' {
\partial 8 r8|
R2.*2|

r4.r4d8|
g fis g g b g|
a fis g a c a|
b g b a e'g,|
fis16g fis e fis d e8a,a'(|
a16)b a fis g e fis8b,b'(|
b16)c b a gis fis e8b'e(|
e16)d c b a gis a4.(|
a16)e'd c b a b a g a b cis|
d8c16b c8(c16)b a b c a|
b g d' b c a b c b a b g|
a4.(a16)b c e d c|
b a b d cis e a,8 a d,|
g4.(g16)b a g fis e|
fis4.\trill g16c b a g fis|
g8g16d a'd,b'8d b|
b16a g b a c b c d c d b|
c8e,16c f d g8c16b c g|
a4.(a8)d cis|
d fis,r r4.|
r8g16b a c b8e16d e b|
cis8a r r4.|
r8fis16a g b a8 d16c d a|
b8 g a b4.\trill(|
b8)a16gis a c b c d f e d|
c b c e d c b a b d c b|
a g a cis b a g fis g b a g|
fis8d r r16a' d c d a|
b fis'e d e cis d4.(
d16)e d8cis16d d4fis8|
fis d fis32e d e fis4.(|
fis8)d e fis a d,|
d b e16d cis b cis d b cis|
d cis d e fis g a4.(|
a8)g16fis e dis e8b e(|
e16) fis e d cis d e4.(|
e8)a,d(d)c16b c8(|
c)fis,b(b)a16g a8(|
a)d,g(g16)b a g fis e|
c'4.(c16)e d c b a|
d4.(d16)fis e d c b|
e4.(e16)g fis e d cis|
fis e d c b a g8c d|
\times 2/3{e16[d c]}b8\trill a16g g4r8|
R2.|
r8c16e d fis e fis g fis g e|
fis4. r8dis,b'(|
b8)g16b a c b c d c d b|
c8c16b c8(c4.)(|
c16) a g fis b8(b)gis e|
e a4(a16)b c d c b|
c8 a r r4a8|
a d16 c b a gis fis gis a fis gis|
a4.(a16)b c e d f|
e8d16c b a b4.(|
b16)f' e d e b c e d c b d|
c8cis e a,4a8|
a fis' a, b16 a b d cis e|
d8 dis fis b,8 g b|
b e b cis16 b cis e d fis|
e8a16 g a e fis8 a,d(|
d)b e(e16)b a g a e|
fis b a g fis e fis8 a d(|
d)b16 a b g g8fis \times 2/3{fis16[g a]}|
a8\trill [g]  \times 2/3{b16[c d]}d8 \times 2/3{c16[b a]}\times 2/3{g[fis e]}|
d4r16g g8a fis|
g g16 b a c b g c a d b|
c b c e c a b a b d b g|
a g a c a fis g4r8|
b g16 d a'd,b'a b g c a|
b8 g16 d a'd,b'c d c d b|
c d e d c b a g fis g a fis|
g b c a b8r b16a b g|
fis8d16fis e g fis g fis d e fis|
fis8d16fis e g fis g fis d e fis|
g4.fis16 g a fis g a|
d,8d'16c d b e,8 fis g(|
g16)a g fis e d e8a16b cis8|
fis,b4a8fis fis'(|
fis)e16d e8 a,4.(|
a8)d c b16 c b a b g|
a4.(a16)e'd c d a|
b8g16b a c b a b c b a|
b8g16b a c b c d c d b|
c d e d c b a g fis g a fis|
fis8(g4)r4
}

% Baß
B = \relative c' {
r8|
g4.fis|
g b,|
c fis,|
g g'|
fis d|
g a|
d,a|
e b'|
e gis,|
a8a'e c a c|
d e fis g fis e|
d4.d,|
g r4g8|
d'd,d'd4d8|e4.d4c8|
b4.c4.|
d4b8 e c d|
g,4.g|
g'g8g,g'|
c,c d e a e|
fis4 cis8d fis a|
d,4cis8dis b dis|
e4fis8g e g|
a a,b cis a cis|
d4e8 fis d fis|
g4.r8e gis|
a a,c e4gis8|
a4fis8g4e8|
fis4d8b4cis8|
d4e8fis d fis|
g e a b4fis8|
g a a,d4.|
d,d'|
d,d'4fis8|
g4.a|
b8 a g fis e d|
g4.gis|
a8 a e cis a cis|
d4b8g4a8|
b4g8e4fis8|
g a b c d e|
a,b c d e fis|
b,c d e fis g|
c,d e fis g a|
d,e fis g e b|
c d d,g4r8|
r8g a b g b|
c a b cis a cis|
d b cis dis b dis|
e e fis gis e gis|
a a,a'a a,a'|
a a,a'gis e gis|
a a,b c a r|
r a b c a c|
d4.(d8)c b|
a a b c a c|
c a c d dis b|
e4gis8a d,e|
a,a'g fis4cis8|
d4fis8g4ais,8|
b4a8g4dis'8|
e4g8a4b8|
cis a cis d4fis,8|
g4gis8a a,cis|
d g, a d,d16e fis8|
g4g8d'4d8|
g,4g'8c,4cis8|
d e r16e d8c d|
g g,d'g,4.|
g g|
g g|
R2.|
R|
R|
r4.g|
d'd|
d d|
e d4c8|
b4.r|
r a|
b4cis8d4.|
d cis|
d2.(|
d)|
g,(|
g)(|
g)(|
g4.)r4
}

\score { << 
  \time 6/8
  \new PianoStaff <<
    \new Staff { \key g\major \S }
    \new Staff { \key g\major \A }
  >>
  \new Staff { \key g\major \clef bass \B }
>> 

\layout { }
\midi { \tempo 8 = 136 }

}
