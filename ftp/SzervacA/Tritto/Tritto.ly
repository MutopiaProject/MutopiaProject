% Tritto -- Juhász Andrea - sorozat 2 - http://321.hu/Elig
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
			    
oddHeaderMarkup = \markup
\fill-line {
  %% force the header to take some space, otherwise the
    %% page layout becomes a complete mess.
      " "
%        \on-the-fly #not-first-page \fromproperty #'header:instrument
	\on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-st
	}
	                                                                                  
evenHeaderMarkup = \markup
\fill-line {
	\on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-st
%	 \on-the-fly #not-first-page \fromproperty #'header:instrument
			    
% between-system-padding = #1
% ragged-bottom=##f
% ragged-last-bottom=##f
}
}

\header{
        title = " Tritto "
        subtitle = "  "
        poet = ""
        composer = " SZERVÁC Attila "
        meter = ""
        opus = ""
        arranger = ""
        instrument = "oboa/flauto[dolce], viola, violoncello, tamburo"
        dedication = " JUHÁSZ Andrea Elig-nek"
        piece = ""
        head = ""
        copyright = \markup { SZERVÁC Attila - licenc: \with-url #"http://fsf.org/licenses/gpl.html" \with-color
#(x11-color 'blue) "GPLv3" - CC-BY-SA3 - Bármely része vagy egésze szabadon másolható }
        footer = "Bármely része vagy egésze szabadon másolható - GPL licenc alatt áll"
        tagline =  \markup { License: GPLv3 - CC-BY-SA3 - title: \fromproperty #'header:title - version: .1 - Home:
\with-url #"http://321.hu/" \with-color #(x11-color 'blue) http://321.hu/ }
        home = " http://321.hu "
	mutopiatitle = "Tritto"
        mutopiacomposer = "SzervacA"
        mutopiainstrument = ""
        mutopiacopyright = "Creative Commons Attribution-ShareAlike 3.0"
        mutopiasource = "Original composition"
        mutopiastyle = "Modern"
        maintainer = "SZERVÁC Attila"
        maintainerWeb = "http://321.hu"
        moreInfo = "The composer has licensed this piece jointly under the GPLv3 and Creative Commons Attribution-ShareAlike 3.0 licenses, and it may be distributed under the terms of either."
	mutopiafooter = "Mutopia-2007/09/20-1036"
}

q=\relative{\partial 4*1 a' | cis2 r4 gis8 b cis d~ |
d cis e2 d2^^ | r8 d c bes c d \times 2/3 {es4 d8 g,4.~}| g8 a bes2.~ bes8 a |
b cis dis4. ais8 b a bes c | d4. cis8 b a as bes4 c8 |
cis4. b8 ais fis g ges as bes | c4 r4. b8 }

qw=\relative{\times 4/6 {gis'4 cis8 [c d e]} | 
\times 4/6 {f4 es8 as, c d} e r dis16 cis8. r4 | d8 c4 g4. as8 bes4 b8 |
cis4 r gis8 ais r4. b8 | c8 bes4 ges as a b8 | cis c4 as bes b cis8 |
d8 c4 g a bes8 \times 2/3 {b8 cis dis} | e4 gis,2. fis8 fis | a4. r2. g8 |
b2 c8 bes a4. b8 | b2. r2 | d2 cis4. fis,8 b ais | dis4 gis,4. a4 bes c8 |
d2. cis2 | R1*5/4 | r2. cis4. b8 | cis2. bis4 ais | gis b1 | a2 g c4 |
des2. ces4 bes | es d1 | cis2. gis4 ais | b1 r8 bes | d4 cis r8 fis, gis4 ais |
b8 g r4 as8 bes c4 r8 a | cis4 bis r8 gis ais4 b |
\times 2/3 {c4 as ces} bes a8 b r bes | des c r4 a8 cis gis4 r8 g |
b4 bes r8 ges as4 r8 a | b4. c8 \times 2/3 {bes4 d cis} b |
bes d cis gis4. ais8 | b4. c8 as4 \times 2/3 {bes a b} |
cis c \times 2/3 {g bes b} a8 as | des4 ces bes8 b a d4 c8 |
es des4. as8 bes c d\mark "Fine" \bar "||"
}

qe=\relative{a'4. b8 | c4 bes8 g4 b4. \times 2/3 {bes8 as ges} | f1~ f8 g |
a b cis4 c8 as4 bes8 ces des | es4 d2 a4. b8 | cis4 c2 as4 bes8 b |
cis8 d4 e8 f4. es8 bes4 \break | b g bes4. a8 fis4 | gis8 ais b4 g4. c8 bes as |
ges g2 a b8 | ais fis gis2. a8 as8 | ges2 ces8 bes2 b8 | a8 gis2 cis c8 |
bes as g4 d'2 cis8 b | a c4. des ces8 bes as | es'4. d8 c b a4 e'~ |
e d8 e f e4. g4~ | g fis4. cis8 dis4. e8 | f d f4. es8 bes c d e |
fis4. dis8 eis fisis \times 2/3 {gis4 g f} |
a8 gis4. \times 2/3 {g8 fis8. b,16} \times 8/9 {c16 des es e fis g f as g} |
bes1~ bes4~ | bes~ \times 2/3 {bes8 a8. d,16} es8 as, a r4. |
as8 g r b~ b\mark "D.C. al Fine" r4. \bar "||"
}

w=\relative{a4 cis << b2~ fis >> b4 d8 e << {c4~ c}{g4~ g}>> r8 d'
<<{es4. d8} bes4.>><<c4 as>> r2 <<c4. d4.>> d8 c g <<g4. a4.>> r8
r4 cis8 dis <<{e4~ e}{gis,4 gis}>> d'8 e8 fis e4 e8 <<{d4~ d8}{g,4~ g8}>> g4 g8
b cis <<{d2~ d4}{fis,2 fis4}>> c'8 d <<e2 a,2>> d8 }

we=\relative{c~ c b4 bes8
<<a2. b2.>> r4. <<{a8~ a}{b8~ b}>> r1 <<{a8~ a}{b8~ b}>> r1 <<{a8~ a}{d8~ d}>>
r1 <<{a8~ a}{d8~ d}>> r1 <<{a8~ a}{es'8~ es}>> r8 r2 r4. <<{b8~ b}{d8~ d}>> r1
cis8 <<cis2. d2.~>> d2~ d~ <<{d4~ d}{e4~ e}>> r r2. <<{d2~ d}{e2~ e}>> r4
<<{e2~ e}{fis2~ fis}>> r4 <<{e2~ e}{fis2~ fis}>> <<{e4~ e}{fis4~ fis}>> r
<<{e2.~ e2~ e~ e4~ e}{fis2.~ fis2~ fis~ fis4~ fis}>> r
<<{e2.~ e2~ e~ e4~ e}{fis2.~ fis2~ fis~ fis4~ fis}>> r
<<{es2.~ es2~ es~ es4~ es}{f2.~ f2~ f~ f4~ f}>> r r2.
<<{e2~ e~ e4~ e}{fis2~ fis~ fis4~ fis}>> r4 r1
<<{e4 e2.}{fis4 fis2.}>> r2 d <<{d4~ d4~ d8}{e4~ e4~ fis8}>> r8 <<cis2~ gis'>>
cis,8 dis <<{d2~ d}{e2~ e}>> g4 <<g4. f4.>>  r8 r4 e <<{fis~ fis}{b,~ b}>> e
<<{d2.~ d2~ d~ d8}{es2.~ es2~ es~ es8}>> r8 r2 <<{d2.~ d2~ }{e2.~ e2~ }>>
<<{d2.~ d4~ }{e2.~ e4~ }>> r r2 f4 <<{es2~ es}{g2~ g}>> r4 <<{es2~ es}{g2~ g}>>
r4 r2 r4 
}

wr=\relative{r8 <<{d2~ d~ d4~ d}{es2~ es~ es4~ es}>> c8 d
<<{d2.~ d2~ d}{es2.~ es2~ es}>> es8 f <<{f2~ f~ f4~ f}{g2~ g~ g4~ g}>> r4
<<{f2.~ f2 f2.~ f2~ f8}{g2.~ g2 g2.~ g2~ g8}>> r2 a8 <<{e2~ e2~ e4~ e}
{fis2~ fis2~ fis4~ fis}>> r <<{e2.~ e2~ e~ e4~ e}
{fis2.~ fis2~ fis~ fis4~ fis}>> r <<{e2.~ e2~ e~ e4~ e}                               
{fis2.~ fis2~ fis~ fis4~ fis}>> r <<{e2.~ e2~ e4}{fis2.~ fis2~ fis4}>>
<<{e4 f f2~ f~ f4~ f}{g4 g g2~ g~ g4~ g4}>> r8 g
<<{g2.~ g2~ g~ g4~ g}{a2.~ a2~ a~ a4~ a}>> r4 <<{g2. g8}{a2. a8}>> c,
<<fis4 gis,4>> <<c8 bes'8>> a4 <<{a4 g8}{c,4 bes8}>>
\times 4/5 <<{g'4 fis8 dis4~}{b4 s8 cis4~}>> cis8. <<cis16 dis16>>
<<\new Voice {\stemDown b4~ \times 2/3 {b16 r}}
  \new Voice {\stemUp ais'16 a8.~ \times 2/3 {a8 bes as}}>>
 des8 d4 c8 <<{c2~ c8}{es,2~ es8}>> c'8
<<{c2~ c8}{es,2 d8}>> r8 r2 r8 <<{f8~ f}{bes8 a}>> s1... }

qa=\drummode {hh2. hh2 | hh hh4 hh2 | hh4 \times 2/3 {hh hh hh} r2 |
hh1 hh4 | hh2 hh hh4 | hh2. hh4. hh8 | hh hh1 hh8 | hh8. hh16 r2.}
qs=\drummode {\times 2/3 {hh8 hh hh} | hh4 r1
| s1*5/4 s s s s s s s s s s s s s s s s s s s s s s | r8. hh hh8 r4. hh
hh1 hh4 | hh8 hh r2. hh8 hh | hh1 hh8 hh | hh hh4. hh2 hh8 hh |
hh4. hh8 hh hh4 hh hh8 | hh hh hh4. hh \times 2/3 {hh8 hh hh} |
hh hh4 hh hh hh hh8 | hh hh hh hh4. \times 4/7 {hh8 hh hh hh hh hh hh} |
hh2 r2. | }
qd=\drummode {r4 | r hh r r4. hh8 | hh hh hh hh2. hh8 | hh1 hh4 | hh2 hh hh4 |
hh4. hh2. hh8 | hh4 hh1 | hh8 hh hh1 | hh2. hh2 | hh4 hh2 hh4 hh |
hh4. hh8 hh2. | hh8 hh1 hh8 | hh1 hh4 | hh2. hh2 | hh4 hh2 hh |
hh2. r8 hh4 hh8 | hh hh2. hh4 hh8 | hh2 hh hh4 | hh2 hh hh8 hh |
\times 2/3 {hh8 hh hh} hh4 hh4. hh8 hh hh |
\times 2/3 {hh8 hh8. hh16} hh8 hh hh16 hh8.
\times 2/3 {hh8 hh8. hh16} \times 4/5 {hh16 hh hh hh hh} |
\times 2/3 {hh8 hh4} s4*18 }
vI=\context Voice=vI{\tempo 4=180 \time 5/4 \q \qw \transpose a b \q \qe
\relative{b'4 | cis1 \bar "|."} }
vII=\context Voice=vII{\clef alto s1*1/4 s1*1/4 \w \we \transpose a b \w \wr
 s2}
vIII=\context Voice=vIII{\clef bass s1*1/4 s1*3/4 \transpose a a, \w
 \transpose g g, \we \transpose a b, \w \transpose d d, \wr}
vIV={\new DrumStaff \with{
	drumStyleTable = #percussion-style
   	\override StaffSymbol #'line-count = #1 } s1*1/4 \qa \qs \qa \qd}
\score{
	<<
	\vI
	\vII
	\vIII
	\vIV
	>>
    \header {piece = " I "}
    \layout {}
      \midi {
           \context {
               \Score
               tempoWholesPerMinute = #(ly:make-moment 180 4)
	    	    }
	       }
}

q=\relative{\partial 4 a'4 | cis2.~ | cis2 d4 | e dis2 | r4. b | d2.~ |
d2 c4 | es des2 | r ces4 | ges2. | r2 as4 | bes2.~ | bes4 g2~ | g b4 |
a2.~ | a~ | r2 fis4 | cis'2.~ | cis2 c4 | as2. | r2 bes4 | b2.~ | b4 gis2~
gis cis4 | c2. | r2 as4 | bes2. | r2 ces4 | des2.~ | des2 c4 | a2 b4~ |
b cis dis | d2.~ | d\mark "Fine" | r2 \bar "|." bes4 | des2 as4~ | as~ c b |
a2. | r2 bes4 | b cis4 d | c2.~ | c4 as bes | b2.~ | b4 a g | f2.~ |
f4 ges8 as bes4 | g4. a8 b4 | ais2 gis4 | g4. as8 bes4 | c8 r2 b8 |
a r4 bes as8 | ges g r4 a8 b | cis c r4 as8. ges16 |
ces8 bes r4 \times 2/3 {b8 cis d~} | d cis r4 c8. bes16~ |
\times 2/3 {bes8 es des} r4 d8. c16 | f e8 b16 r4 dis16 d8 c16 |
g'8 fis r4 f16 es8 des16 | d cis fis8 r4 f8 es | c16 e8 dis16 r4 cis8 a |
d16 c es8 r4 \times 2/3 {des8 bes8. d16} |
cis16 e8. r4 \times 2/3 {dis8. b16 d8} |
\times 4/5 {c16 d g8 f16} r4 \times 4/5 {es16 r r g a} | bes4. r |
r2 r16 a gis8 | fis r2 e8 | dis4. r | r cis | c4\mark "D.C. al Fine" r2 |
r \bar "||"}

qw=\relative{<<{b2 b2.~ b~ b g~ g~ g}{d'2 e2. cis c~ c~ c~ c}>>
<<{as2.~ as~ as~ as~ as}{des2.~ des~ des~ des~ des}>>
<<{a~ b~ b~ b~ b~ b c~ c d~ d~ d~ d~ d~ d des~ des~ des d b~ b~ b~}
  {d~ d~ e~ e~ e~ e es f~ f e~ e~ e es~ es~ es~ es~ es e~ e~ e~ e}>> r r
<<{es2.~ es e~ e~ e d~ d g,~ g~ g8}{des'2.~ des d~ d des ges,~ ges f~ f~ f8}>>
ges des'2 <<{d2. cis2}{fis,2.~ fis2}>>
b4<<{f2.~ f~ f~ f~ f~ f~ f~ f g~ g a~ a bes2}
{c2. g~ g~ g~ g~ g~ g~ g a~ a b~ b c2}>> bes8 es
<<b4 e4>> \times 2/3 {fis4 e fis} <<{f4. g~ g}{g4. a~ a}>> r
r2 r8. <<{eis16 dis}{}>> r8. r4 r8. <<{cis16 b}{}>> r8. r2 r <<a4>>}

qe=\relative{a,2.~ a~ a~ a~ a~ bes~ bes~ bes~ bes c~ c~ c~ c~ c~ c d~ d~ d
des c~ c b~ b~ b c~ c bes~ bes~ bes g a~ a~ a r bes c~ c a~ a bes c~ c
d2 d,4 des2.~ des8 des' es2 e2.~ e~ e~ e~ e~ e~ e~ e~ e es~ es~ es~ es
e f4 g2 a2. bes2 c4 des4. r  }

vI=\context Voice=vI{\time 3/4 \tempo 4=80 \q }
vII=\context Voice=vII{\clef alto s4 | s4 \qw s4*5 }
vIII=\context Voice=vIII{\clef bass s4 | \qe s4*17 }
\score{
    <<
    \vI
    \vII
    \vIII
    >>
    \header { piece = " II "}
}

q=\relative{\partial 4 a'4 | cis r b | g r bes8 c | d4. r |
cis8^^ b r4 c8 bes | ces^^ des es2 | d8 c4. b8 cis | ais4. bis8 gis b |
a c4 des4. | bes2 d4 | b r8 dis cis4 | r d c | as ces8 des4. | bes4 r4. d8 |
e4. dis8 cis4 | d2 c4 | a4. cis8 dis4 | b2 d4 | des ces8 es4. | f2.~ |
f4. e8 c4 | cis8 gis4 ais8 b4~ | b c8 as bes4~ | bes ces des8 es | d2 cis8 b |
bes2 c8 cis | a4. b8 bes 4 | d r c | as r ces8 des | es4. r | d8 c r4 cis8 b |
c d e2 | es8 des4. c8 d | b4. cis8 a c | bes des4 eses4. | ces2 es4 |
c r8 e d4 | r dis cis | a c8 d4. | b4 r4. dis8 | eis4. disis8 cisis4 |
dis2 cis4 | ais4. cisis8 disis4 | bis2 dis4 | d c8 e4. | fis2.~ |
fis4. f8 des4 | d8 a4 b8 c4~ | c cis8 a b4~ | b c c8 e | es2 d8 c | b2 cis8 d |
bes2 c4~ | c \mark "Fine"  \bar "|." b2 | dis2.~ | dis8 r cis2 | a2. | r4 c d |
e2. | dis4 cis r | r d c | des2 es4 | f2. | e4 d2~ | d4 cis dis | bis2. |
cisis4 ais cis | b d2 | es2. | c2 e4 | cis2. | r4. eis8 dis4 | r2. | e~ |
e4 d2 | bes des4 | es2. | c2 r4 | r2 e4 | fis2. | f4 es2 | e2.~ | e4 d2 | b2. |
dis4 eis2 | cis2.~ | cis4 e2 | es des4 | f2. | g2.~ | g4. fis8 d4 | dis ais2 |
b2.~ | b2 r8 bes | d4 c8 as4 bes8 | b4 cis dis | e4. f8 es4 | d2.~ |
d8 r c bes a4 | cis8 dis4 b4 d8 | c e es4. des8 | as4 ces2~ | ces4 bes a |
f2.~ | f4 fis8 gis ais b | g4 a8 bes c4 | a8 b4 cis d8 | c des ces4. bes8 |
d4 cis8 b a c | des4. bes8 d4 | e dis8 cis b4 | d8 es4 c8 f8 e | a2.~ |
a4 gis8 fis f4 | es8 des4 ces bes8 | as2.~ | as | c2 r8 b | dis4 cis8 a4 b8 |
c4 d e | f4. fis8 e4 | dis2.~ | dis8 r8 cis b bes4 | d8 e4 c es8 |
d fis e4. d8 | a4 c2~ | c4 b bes | ges2.~ | ges4 g8 a b c | as4 bes8 ces des4 |
bes8 c4 d dis8 | cis d c4. b8 | dis4 d8 c bes des | d4. b8 dis4 |
eis e8 d c4 | es8 fes4 des8 ges8. f16 | bes2.~ | bes4~ bes16 a8. gis8 fis |
e dis4 cis8 b a | as2.~ | as2~ as8 ces | bes2. \mark "D.C. al Fine" |
r2 \bar "||" }

w=\relative{a4 cis r d g, r b8 cis d4 r2 es8 d r4 c8 b bes c d4 r2 cis4
c2 r4 bes2 r4 g4. r8 r4 a2~ a4 \times 2/3 {a bes2~} bes4 r4. c8 es d8~
d2~ d8 r b2~ b8 r b2~ b8 r b2~ b8 r c as4. \times 2/3 {r8 es' [des~]}
des8 [f] ges r r ges es d4.~ d4 b2~ b8 r b2~ b8 r bes2~ bes8 r bes2~
bes8 r bes2~ bes8 r s2.*2 bes4 d r es as, r c8 d es4 r2 e8 dis r4 cis8 c
ces des es4 r2 d4 des2 r4 ces2 r4 as4. r8 r4 bes2 a4 \times 2/3 {ais b2~}
b4 r4. cis8 e dis8~ dis2~ dis8 r bis2~ bis8 r bis2~ bis8 r bis2~ bis8 r
cis a4. \times 2/3 {r8 e' [d~]} d8 [fis] g r r g e dis4. es4 c2~ c8 r c2~
c8 r  b2~ b8 r b2~ b8 r b2~ b8 r s1*2}

we=\relative{b4 r2 | r2. | d4 c r4 | r2. | cis4 r2 | r4 a r4 | bes r2 | r c4 |
d r2 | r2. | cis4 r2 | r dis4~ | dis r2 | d4 r2 | r4 c r | r2 c4 | b r2 |
cis4 r2 | r b4 | cis r2 | r2. | d4 r2 | r2. | d4 r2 | r e4 | d r2 | r d4 |
c r2 | r cis4 | gis r2 | r ais4 | b r2 | r2 c4 | des r2 | r2 c4 | b s8*31 }

wr=\relative{bes8 d4 e8 d a4~ a8 b c as4.~ as8 bes c d r4 r8 cis8 a2 b4~ b8
r4. r4 r2 c4 bes8 as4. g8 f es2~ es8 e8~ e r2 e8 a4. gis8 fis4 f2~ f4~ f8 r4.
g4 f2~ f4~ f8 r4. r4 g2~ g8 a g2~ g4~ g8 r4. g8 b c d4.~ d8 d c2~ c8 s2*7
b8 dis4 f8 es bes4~ bes8 c cis a4.~ a8 b cis dis r4 r8 cisis ais2 c4~ c8 r4. r4
r2 cis4 b8 a4. gis8 fis e2~ e8 f~ f r2 f8 bes4. a8 g4 ges2 f4 g2~ g8 r
a2~ a8 s2.}

ws=\relative{bes8 | b2.~ b4 c16 bes8. f'8 ges | as2.~ | as4~ as16 r4.. |
<<g8 c,8>> s8*17 <<es8 g,8>> bes2 s8*11 }

wx=\relative{fis,,8 d'2 | des4 ges16 as r8 bes c | \grace d16 (des2.~) |
des4~ des16 cis8. b8 a | gis fis2~ fis8 | f2.~\fermata | s1*2 }

qa=\drummode{hh4. r | hh r4 hh8 | hh r2 hh8 | hh4 hh r | hh r hh |
hh4. hh8 hh hh | hh2 hh4 | hh hh r | hh s1*5/4 | hh4 s1 hh4 | hh r2 |
hh8 hh4 s1 hh8 |hh hh r4. hh8 | \times 2/3 {hh8 hh hh} r4 hh16 hh8. |
r4 \times 2/3 {r8 hh hh} hh8 hh16 hh | \times 2/3 {hh8 hh hh } s1*2 |
hh4 r4. hh8 | hh s1 hh4. | r4 hh s4*10 | hh2 s1 | hh2 s1 | hh4 r hh8 hh |
hh4 s1. hh4 s1 | s8 hh s2 | hh4 r2 | hh8 hh4 s1 hh8 |hh hh r4. hh8 |
\times 2/3 {hh8 hh hh} r4 hh16 hh8. | hh4 \times 2/3 {r8 hh hh} hh8 hh16 hh |
\times 2/3 {hh8 hh hh } s1*2 | hh4 r4. hh8 | hh s1 hh4. | r4 hh s4*9 hh4 |
s2 hh4 | s1 hh4 s4 | hh s4*9 hh4 s4 | s hh s2. hh4 | hh s4*5 | hh4 s1 hh4 |
s2. | hh4 s2 | hh4 s8*13 hh4. | s1. | hh4 s4*7 hh4 | hh s4. hh8 |
hh4 s8*9 hh8 | hh s4*5 hh8 | hh s1 hh4 s1. hh8 | hh s1 hh4 hh8 |
hh hh hh4. s8*25 | hh4 s8*9 hh8 | hh s2 hh8 | hh hh hh2 | hh8 s2 hh8 |
hh2 hh8 hh | hh4. hh | hh hh4 hh8 | hh hh4 hh8 hh hh | hh hh hh s8*9 |
hh8 s2 hh8 | hh s1 hh4 hh8 | hh s1 hh4 hh8 | hh hh2 hh8 |
hh4 hh8 hh s8*11 hh4 hh8 | hh s4. hh8 hh | hh hh4 s8 hh8 hh | hh s4. hh8 hh |
hh16 s8. s2 | hh4 s8*9 hh8 | hh s2 hh8 | hh hh hh2 | hh8 s2 hh8 |
hh2 hh8 hh | hh4. hh | hh hh4 hh8 | hh hh4 hh8 hh hh | hh hh hh s8*9 |
hh8 s2 hh8 | hh s1 hh4 hh8 | hh hh4 hh8 hh hh | hh8. hh16 hh8. hh4 hh16 |
hh16 hh8. \times 2/3 {r4 hh8 hh hh4} |
hh8. hh16 \times 2/3 { r4 hh4 hh8 hh } | hh8 hh16 hh hh4 s4*18 }

vI=\context Voice=vI{\tempo 4=180 \time 3/4 \q }
vII=\context Voice=vII{\clef alto s1*1/4 s1*1/4 \w \we \wr \ws}
vIII=\context Voice=vIII{\clef bass s1*1/4 s1*3/4 \transpose a d \w s4
\transpose b e \we s4 \transpose bes as, \wr \wx}
vIV={\new DrumStaff \with{
 drumStyleTable = #percussion-style
 \override StaffSymbol #'line-count = #1 } s1*1/4 \qa }
 \score{
    <<
    \vI
    \vII
    \vIII
    \vIV
    >>
    \header {piece = " III "}
}
