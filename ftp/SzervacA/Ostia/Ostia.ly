% Ostia -- Juhász Andrea - sorozat 3 - http://321.hu/Elig
\version "2.10.10"

\paper {
  scoreTitleMarkup = \markup \column {
   \fill-line { \large \bold
    \fromproperty #'header:piece }
   \fill-line { \large \bold
    \fromproperty #'header:ptitle }
    \fromproperty #'header:meter
}
  oddFooterMarkup = \markup {
    \column {
        \fill-line {
            \fromproperty #'header:title }
        \fill-line {
%         %% Copyright header field not on last page.
%         \on-the-fly #not-last-page
            \fromproperty #'header:copyright }
        \fill-line {
                                  %% Tagline header field only on last page.
                        \on-the-fly #last-page \fromproperty #'header:tagline
                    }
            }
                            }
% between-system-padding = #1
% ragged-bottom=##f
% ragged-last-bottom=##f
}

\header{
        title = " Ostia "
        subtitle = "  "
        poet = ""
        composer = " SZERVÁC Attila "
        meter = ""
        opus = ""
        arranger = ""
        instrument = "baritono, oboa (|flauto[dolce]), violino, violoncello"
        dedication = " JUHÁSZ Andrea Elig-nek"
        piece = ""
        head = ""
        copyright = \markup { SZERVÁC Attila - licenc: \with-url #"http://fsf.org/licenses/gpl.html" \with-color
#(x11-color 'blue) "GPLv3" - CC-BY-SA3 - Bármely része vagy egésze szabadon másolható }
        footer = "Bármely része vagy egésze szabadon másolható - GPL licenc alatt áll"
        tagline =  \markup { License: GPLv3 - CC-BY-SA3 - title: \fromproperty #'header:title - version: .1 - Home:
\with-url #"http://321.hu/" \with-color #(x11-color 'blue) http://321.hu/ }
        home = " http://321.hu "
	mutopiatitle = "Ostia"
        mutopiacomposer = "SzervacA"
        mutopiainstrument = ""
        mutopiacopyright = "Creative Commons Attribution-ShareAlike 3.0"
        mutopiasource = "Original composition"
        mutopiastyle = "Modern"
        maintainer = "SZERVÁC Attila"
        maintainerWeb = "http://321.hu"
        mutopiafooter = "Mutopia-2007/11/14-1160"
        moreInfo = "The composer has licensed this piece jointly under the GPLv3 and Creative Commons Attribution-ShareAlike 3.0 licenses, and it may be distributed under the terms of either."
}

q=\relative{bes'8 d4 a b4. (bes8)r as4. c4 des ces r c8 (a4) d8 e4 b cis 
(d) d r2. bes8 g4 c d2 f,4 c'8 d4 e r e8 (cis4) fis8 gis4 ais, cis (dis) 
dis}

l=\relative{\q \mark "Fine" \bar "|." r4. cis'8 a4 c | d1. fis,8 b cis 
d4. d8 e4 a, c (d) d r e8 f8 g4. fis16 e fis4. |
r e8 d4 a c c8 d4 a b (cis) cis r2 d8 cis b g4. bes as4-. c8 d es [des] |
bes4 r b r cis8 [dis] r4 e4 e8 fis4 b, d (e) e r2 e8 f4 c8 es4. bes4 ces |
des d8 a4 e'4. dis4 b8 d4. d cis c8 c4. as8 bes4 b4. gis cis a8 c4. |
c bes8 g4 b\breve... r4. b8 | d4 c8 c [b g] bes4 as8 des4. es8 [d cis] 
gis4. ais b4 g8 bes [c] des4. \breathe d8 [cis] a4 b8 g [as bes] c4 b8 | 
fis4. gis a4 bes b8 g4. as bes4 b cis8 gis4. a4 bes c8 as4 bes4. b4 a bes8 |
g4. as bes b4 cis d8 a4 c8 as4 bes4. ces des4 c b8
gis4. bis4 cisis ais cis8 | a4. b c4 d es8 bes4. b cis4 dis e8
b4. c4 d es des8 as4. ces \times 2/3 {bes8 a g} |
f1~ f8 [ges as] g r2 a4. b8 [c d] es [des c] bes [a b] c [d dis]
eis [fis e] dis [cis c] bes [a g] |
ges [g a] bes [c des] es [e d] cis [b bes] as [g a] bes [c des]
es [e d] cis [b bes] as ges1...~ |
ges1.. g4 a b8 c4 cis16 [c as8] bes b4 ais8 cis16 [c as8]
\times 2/3 {ces8. bes16 g8} b ais4 fis8 [gis16 a g8] d'4. |
c8 e4 fis f4. es4 e8 d2. d8 e e8. a,16 b8 fis2. a8 b cis4 cis dis cis a~
a r8 b4 cis dis8 cis4 d8 e c4 f8. g16 a2.\trill e1~ e8 fis16 d e4.
e8. d16 g,4 b8 | c4 (d8 e) d4 r2 r8 e cis4 e8 cis [e] fis4. f4 e8 a,4 b4 
a8 d4. cis2 b4 d c8 | es4 des8 bes4 d c8 es4 f2~ f4 e b4. cis8 d4 c4. 
as8 des2 r4 c a4. d8 | e4. cis4 dis4. b8 r4 e2~ e4 dis gis,8 cis4
d c4. g8 b4. cis4 c4. as4. des8 es4 d8 a4 c8 d2 cis4 gis4 b8 cis2
c4. g4. as8
\once \override TextScript #'script-priority = #-100
ges2~^\trill^\markup{\doubleflat} ges4\mark "D.C. al Fine" r2. \bar "||"}

k=\relative{e8 e r2 es8 es r2.. es8 es r2. e8 e r4. <<{b8 e8}{e b'}>> 
r2 e,4-. e8 r4. | f8 f r4. <<f1 a1~>> a <<cis4. e,4.~>> e4~ <<e2~ b'>> 
e,8 r r1 | g\breve..~ g1. | a4 a2 r16 \times 2/3 {g4 c bes} a2.~ a2
a4 a2  a4 a2 bes16 g2..~ | g2 g1 g8 g\breve~ g8 c f, g1~ | g2.
g\breve~ g2. fis1 f2~ | f e\breve... r2. | e8 e r4 e1. e8 e r4. e1.
e8 e r4 e4.~ | e8-^ r2 fis8 d r2. f\breve g1 g8 g r |
f1 a8 g\breve~ g4 g8 fis1.~ |
fis1~ fis4 f8 es4 f8 e2. b'8 a2 r8 g16 a bes4 as8 g f2 es4. \times 2/3 
{d8 c bes} | as1... bes8 bes\breve.~ | bes bes\breve~ | bes b8 c d4..
e4. fis f8 es4 d8 e2 fis8 g16 a8 b4~ b16 a8 fis16 a8 a r4. bes8 bes r2.
bes8 bes r2. c8 c,8 r4. <<{e8 e}{b'8 b}>> r2 fis4-. fis8 r4. |
g8 g r4. <<g1 b1~>> b4 bes16 <<g2... c2...>> r16 d2.~\trill d16 c a
b2.. b4~ | b r1. b8 b r4. b8 c c r4 c8 r c8 r4 <<c8 g8>> g r g g a r a r 
a r | r bes r4 c8 r c r4 c8 r c b4 c8 a4 d, d8 fis r4 e8 r e f4. des8 
es4 f8 e4 e e8 d r | r d fis r fis r fis e r c d2 e8 f g8 r e8 r4 e8 r e 
r e f r4 fis8 gis4 <<a8 d,8>> r b e r es8 f r | r f r4 f8 r4 e8 g4 r8 
gis r a2.. g8 f4 es8 des2. s1 }

j=\relative{\transpose b' b, \q r1 | r2. cis,8 a4 c d r1.. d4 d8 e4 a, c 
(d) d | r1. r8 c4 c8 d4 g, b (cis) cis r1.. | r cis8 ([dis] e4)
e8 fis4 b, d (e) e r1 r4. | r1.. r4. e2 r4. r\breve | r1. e4. cis e1..
s1*36 | c8 e4 b cis4 (c8) r bes4. d4 es des r d8 (b4) e8 fis4 cis dis 
(e) e r2. | c8 a4 d e2 r8 b4 d8 es4 f2 r8 f (d4) g16. a2.~ a32 [e8.]
fis16. (f g8) g8. (fis16 a,8) c (d4) | e (fis) fis r2 r2. s1*17 }

h=\relative{f,,\breve~ f2. a\breve (g8) r | g\breve b\breve. | 
a\breve..~ a1. | c\breve d\breve.~ | d1. a\breve..~ | a a1.~ |
a2 a\breve... r2. | a1... b8 fis1.. gis8 a4. g2.~ |
g4 d'8 e\breve... f2. e8 | d\breve.. r8 dis1~ dis4. | d\breve cis1 c bes |
<<g c,>> r8 f\breve....~ | f\breve..~ f1.~ | f bes4 c g\breve.~ |
g\breve~ g2. b\breve (a8) r | a1... d2... e16 f1\trill e16 d8 c2... |
c1 d\breve b4. c8 f,1.~ | f g\breve..~ | g\breve a~ a2 g~ | g a1. 
bes\breve~ bes2. }

vI=\context Voice=vI{\time 40/8 \partial 8 \l}
vII=\context Voice=vII{s8 \k}
vIII=\context Voice=vIII{\clef bass \j}
vIV=\context Voice=vIV{\clef bass s8 \h}
\score{
	<<
	\vI
	\vII
	\vIII
\new Lyrics \lyricsto "vIII" {Szi -- vem -- ben tőr,_ szám -- ban mur -- 
va, Úgy_ sze -- ret -- lek É_ -- des, szi -- vem -- ben fény, szám -- 
ban egy dal, Úgy_ sze -- ret -- lek É -- des Szi -- vem -- ben fény, Úgy 
sze -- ret -- lek É_ -- des, Úgy sze -- ret -- lek É_ -- des,
Úgy__ sze -- ret -- lek É_ -- des_*  fény an -- gyal -- fény Szi -- vem 
-- ben tőr,_ szám -- ban mur -- va, Úgy sze --ret -- lek É_ -- des Szi 
-- vem -- ben fény, szám -- ban egy dal, Úgy_ Sze -- ret -- lek Úgy__ 
úgy__ úgy_ É_ -- des }
	\vIV
	>>
\layout {
       \context { \RemoveEmptyStaffContext }
     }
\midi { \context { \Score
	tempoWholesPerMinute = #(ly:make-moment 250 8)}}
}
