\version "2.18.2"

%----To Do:
%   (1) re-work voice assignment and instantiation to avoid MIDI channel overflow warnings, and possibly
%       also address the (de)crescendo warning

\header {
    title = "Ave Maria"
    composer = "Peter Benoit (1834-1901)"
    mutopiacomposer = "BenoitP"
    date = "1858"
    style = "Motet"
    opus = "Opus 1"
    style = "Romantic"
    source = "Manuscript"
    license = "Creative Commons Attribution 3.0"
    maintainer = "Kris Van Bruwaene"
    maintainerEmail = "krvbr@yahoo.co.uk"

 mutopiainstrument = "Voice (SATB)"
 mutopiastyle = "Romantic"
 footer = "Mutopia-2014/08/05-1834"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by/3.0/" "Creative Commons Attribution 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

#(set-global-staff-size 17)
%#(set-default-paper-size "letter")

%--------  definitions
crpoco =
#(make-music 'CrescendoEvent
'span-direction START
'span-type 'text
'span-text "poco a poco crescendo")

hidePP = \tweak #'stencil ##f \pp

global = {
  \tempo "Poco Largo" 2 = 60 
  \time 4/2
  \key g \major
}

sop_sol = \relative c'' {
R\breve*18-\hidePP
r1 r2 a4.\sf a8     | % 19
b2( a g2.) fis4     | % 20
a1(\sf e2 a4.) a8   | % 21
b2 a g2. fis4       | % 22
a1\sf( e2) a4. a8   | % 23
b2( a g2.)\< fis4   | % 24
d'\breve\!\ff ~     | % 25
d2 r r1             | % 26
r\breve             | % 27
r1 r2 a\mf          | % 28
b( a g2.) fis4      | % 29
a1\ff e2 a4. a8     | % 30
b2( a) g2.( fis4)   | % 31
a1\sf e2 r          | % 32
r2 a1\fff a2->      | % 33
r2 d1-> d2->        | % 34
r\breve             | % 35
d\breve\p           | % 36
d2\> d4.( e8) d1 ~  | % 37
d4\! r r2 r1        | % 38
R\breve*2           | % 39-40
g,1\sf g\sf         | % 41
bes1\pp a2 g        | % 42
f1\crpoco e \noBreak | % 43
c'1 b2( a) \noBreak | % 44
g2. g4 fis1\!       | % 45
d'1\mf cis2 b       | % 46
a1 gis              | % 47
e'1\sf cis2 r       | % 48
e1\sf a,2 r         | % 49
r1 r2 d4.\mf d8     | % 50
e2( d) c2. b4       | % 51
d1\sf a2 \breathe d4. d8 | % 52
e2( d) c2.( b4)     | % 53
d1\sf a2 \breathe d4. d8 | % 54
e2 d c2. b4         | % 55
g'\breve\fff ~      | % 56
g2 r r1             | % 57
g,1(\mf a)          | % 58
c2 c4. c8 c2( b)    | % 59
a2 r r1             | % 60
r1 r2 d4.\pp d8     | % 61
e2( d) c2. b4       | % 62
d1\sf a2 r          | % 63
r2 d1\ff d2         | % 64
r2 g1\sf g2         | % 65
r\breve             | % 66
g,1\sf g\sf         | % 67
a1( c)              | % 68
b2 e1(\sf dis2      | % 69
d2 c1 b2            | % 70
a\breve)            | % 71
g4 r r2 r1          | % 72
R\breve*2           | % 73-74
\tempo "Largo"
g\breve\pp ~        | % 75
g\breve	            | % 76
g2 r2 r1            | % 77
\bar"|."
}

alt_sol = \relative c' { 
R\breve*19
cis2\p d e d        | % 20
cis1 ~ cis2 r       | % 21
cis d e d           | % 22
cis1\sf ~ cis2 r    | % 23
g' fis\< cis2. d4   | % 24
d\breve\ff ~        | % 25
d2 r r1             | % 26
r\breve             | % 27
r1 r2 a\mf          | % 28
cis( d e) d         | % 29
d1\ff cis2 a4. a8   | % 30
cis2( d) e( d)      | % 31
d1\sf cis2 r        | % 32
r2 a'1\fff a2       | % 33
r2 d,1-> d2->       | % 34
r\breve             | % 35
r1 d4.(\p e8) d2 ~  | % 36
d\breve\> ~         | % 37
d4\! r r2 r1        | % 38
R\breve*2           | % 39-40
g1\sf g\sf          | % 41
d1\pp cis2 cis      | % 42
d1 b                | % 43
e1 dis              | % 44
e2. e4 cis1         | % 45
fis1\mf eis2 eis    | % 46
fis1 dis            | % 47
e1\sf e2 r          | % 48
g1\sf g2 r          | % 49
r\breve             | % 50
fis2( g) a g        | % 51
fis1\sf fis2 r      | % 52
fis2( g) a( g)      | % 53
fis1\sf fis2 r      | % 54
c'2 b fis2. g4      | % 55
g\breve\fff ~       | % 56
g2 r r1             | % 57
d2\mf( g1 fis2)     | % 58
e2 es4. es8 d1      | % 59
d2 r r1             | % 60
r\breve             | % 61
fis2(\pp g) a g     | % 62
g1\sf fis2 r        | % 63
r2 d'1\ff d2        | % 64
r2 g,1\sf g2        | % 65
r\breve             | % 66
g1\sf g\sf          | % 67
g2( fis e fis)      | % 68
g2 e1\sf( fis2      | % 69
gis a fis g         | % 70
g2 fis e fis)       | % 71
g4 r r2 r1          | % 72
R\breve*2           | % 73-74
b,\breve\pp ~       | % 75
b\breve             | % 76
b2 r r1             | % 77
}

ten_sol = \relative c' {
\clef "G_8"
R\breve*18
r2 a4.\sf b8 a1 ~   | % 19
a\breve ~           | % 20
a2 a4.( b8) a1 ~    | % 21
a\breve ~           | % 22
a2 a4.( b8) a1 ~    | % 23
a1 a2 a             | % 24
b\breve\ff ~        | % 25
b2 r r1             | % 26
R\breve*2           | % 27-28
r1 r2  d4.\mf d8    | % 29
e1\ff e2 r          | % 30
r1 r2 d4. d8        | % 31
e1\sf e2 r          | % 32
r2 a,1\fff a2       | % 33
r2 d1-> d2->        | % 34
r\breve             | % 35
r1 d2\p cis         | % 36
c\> b a( c)         | % 37
b4\! r r2 r1        | % 38
R\breve*3           | % 39-41
g2(\pp f) e e       | % 42
f2( g) gis1         | % 43
a2( g) fis1         | % 44
g2 a ais1           | % 45
b2(\mf a) gis gis   | % 46
a2( b) bis1         | % 47
cis1\sf cis2 r      | % 48
a1\sf a2 r          | % 49
r2 d4.(\mf e8) d1 ~ | % 50
d\breve ~           | % 51
d2 \breathe d4.( e8) d1 ~ | % 52
d\breve ~           | % 53
d2 d4.( e8) d1 ~    | % 54
d1 d2 d             | % 55
e\breve\fff ~       | % 56
e2 r r1             | % 57
b1(\mf a)           | % 58
a2 a4. a8 a2( g)    | % 59
fis2 r r1           | % 60
r\breve             | % 61
r1 r2 g4. g8        | % 62
a1\sf a2 r          | % 63
r2 d1\ff d2         | % 64
r2 g,1\sf g2        | % 65
R\breve*9           | % 66-74
d\breve ~           | % 75
d\breve             | % 76
d2 r2 r1            | % 77
}

bas_sol = \relative c' {
\clef F
R\breve*19
g2\p fis cis d      | % 20
a1\sf ~ a2 r        | % 21
g' fis cis d        | % 22
a1\sf ~ a2 r        | % 23
cis d e2.\< fis4    | % 24
g\breve\ff ~        | % 25
g2 r r1             | % 26
r\breve             | % 27
r1 r2 a4.(\mf gis8) | % 28
g2( fis cis) d      | % 29
a1\ff a2 a'4. gis8  | % 30
g2( fis) cis( d)    | % 31
a1\sf a2 r          | % 32
r2 a'1\fff a2       | % 33
r2 d,1-> d2->       | % 34
r\breve             | % 35
d1.\p e2            | % 36
fis\> g g( fis)     | % 37
g4\! r r2 r1        | % 38
R\breve*3           | % 39-41
g,1\pp a2 a         | % 42
d1 e                | % 43
a,1 b               | % 44
e2. e4 fis1         | % 45
b,1\mf cis2 cis     | % 46
fis1 gis            | % 47
cis,\sf cis2 r      | % 48
cis1\sf cis2 r      | % 49
r\breve             | % 50
c'2( b) fis g       | % 51
d1\sf d2 \breathe d'4.( cis8 | % 52
c2 b) fis( g)       | % 53
d1\sf d2 r          | % 54
fis2 g a2. b4       | % 55
c\breve\fff ~       | % 56
c2 r r1             | % 57
b,\breve\mf         | % 58
fis2 e4. e8 d2( e)  | % 59
b'2 r r1            | % 60
r1 r2 d'4.\pp cis8  | % 61
c2( b) fis g        | % 62
d1\sf d2 r          | % 63
r2 d'1\ff d2        | % 64
r2 g,1\sf g2        | % 65
R\breve*9           | % 66-74
g,\breve ~          | % 75
g\breve             | % 76
g2 r r1             | % 77
}

sop_tut = \relative c'' {
R\breve*4
g1\mf g2 g          | % 5
a1( c)              | % 6
b2 e1\sf dis2       | % 7
d!\> ( c1 b2 )      | % 8
a\breve\!           | % 9
g2 r2 r1            | % 10
R\breve*3           | % 11-13
g1\mf g2 g          | % 14
a1( c)              | % 15
b2 e1\sf d2         | % 16
cis(\< d b g)\!     | % 17
fis1\f( e)          | % 18
d2 r r1             | % 19
R\breve*5           | % 20-24
r2 d'4.\ff d8 b2 d  | % 25
g d b g             | % 26
fis1 e\>            | % 27
g2\! g4.\pp g8 g2 fis | % 28
e2 r r1             | % 29
R\breve*2           | % 30-31
r1 e2(\f a4.) a8    | % 32
b2( a) g( fis)      | % 33
e'2-> d-> b-> g->   | % 34
fis-> a1-> cis,2->  | % 35
d r r1              | % 36
R\breve*11          | % 37-47
r1 gis\sf           | % 48
a2 r a1\sf          | % 49
a2 r r1             | % 50
r\breve             | % 51
r2 a\ppp fis r      | % 52
r\breve             | % 53
r2 a\pp fis r       | % 54
r\breve             | % 55
r2 g4.\fff g8 e2 g  | % 56
c2 e( c a)          | % 57
g4 r r2 r1          | % 58
r1 r2 d'\f          | % 59
e2( d) c2.( b4)     | % 60
d1 a2 r             | % 61
r\breve             | % 62
r1 a2(\mf d4.)\< d8 | % 63
e2(\!\ff d) c( b)   | % 64
a'2( g) e( c)       | % 65
b2( d1 fis,2)       | % 66
g4 r r2 r1          | % 67
R\breve*8           | % 68-75
g\breve\pp          | % 76
g2 r r1             | % 77
}

alt_tut = \relative c'' {
R\breve*4
g1\mf g2 g          | % 5
g2( fis e fis)      | % 6
g e1\sf fis2        | % 7
gis( a fis g)       | % 8
g( fis e fis)       | % 9
g2 r r1             | % 10
R\breve*3           | % 11-13
g1\mf g2 g          | % 14
g( fis e  fis)      | % 15
g e\sf( g) gis      | % 16
a( fis g e)         | % 17
e( d1 cis2)         | % 18
d2 r r1             | % 19
R\breve*5           | % 20-24
r2 g4.\ff g8 g2 g   | % 25
g b g e             | % 26
e2( d1) cis2        | % 27
e2 e4.\pp e8 e2 d   | % 28
cis2 r r1           | % 29
R\breve*2           | % 30-31
r1 cis2(\f a4.) a8  | % 32
cis2( d) e( fis)    | % 33
fis2-> g-> g-> e->  | % 34
d-> d-> d(-> a)->   | % 35
a r r1              | % 36
R\breve*6           | % 37-42
r1 e'2\ff e4. f8    | % 43
e2 e4 r r1          | % 44
r1 fis2\ff fis4. g8 | % 45
fis2 fis4 r r1      | % 46
r1 gis2\ff gis4. a8 | % 47
gis2 gis4 r e1\sf   | % 48
e2 r e1             | % 49
d2 r r1             | % 50
r\breve             | % 51
r2 a\ppp a r        | % 52
r\breve             | % 53
r2 a\pp a r         | % 54
r\breve             | % 55
r2 e'4.\fff e8 c2 e | % 56
g2 c( g e)          | % 57
d4 r r2 r1          | % 58
r\breve             | % 59
fis2( g a g)        | % 60
g1 fis2 r           | % 61
r\breve*2           | % 62-63
fis2\ff g a b       | % 64
b2( c) c( a)        | % 65
g1( g2 d)           | % 66
d4 r r2 r1          | % 67
R\breve*8           | % 68-75
b\breve\pp          | % 76
b2 r r1             | % 77
}

tensplit = \relative c' {
s\breve             | % 1
\voiceOne
r1 d(-\hidePP\<     | % 2
e2)\! e4 e\> d2( c) | % 3
b\breve\! |         | % 4
\oneVoice
s\breve*5           | % 5-9
\voiceOne 
r\breve             | % 10
r1 d(               | % 11
e2) e4 e d2( c)     | % 12
b\breve             | % 13
\oneVoice
s\breve*25          | % 14-38
\voiceOne 
r1 d(               | % 39
e2) e d( c)         | % 40 
b\breve\pp(         | % 41
bes2) \oneVoice s2 s1 | % 42
s\breve*30          | % 43-74 
\voiceOne 
r1 d(               | % 73
e1 d2 c)            | % 74
b \oneVoice s2 s1   | % 75
}

ten_tut = \relative c' {
\clef "G_8"
b1\pp b2 b          | % 1
\voiceTwo 
c1 ~ c2 b           | % 2
a a4 a a1           | % 3
g\breve             | % 4
\oneVoice
R\breve*5           | % 5-9
\voiceTwo
b1\pp b2 b          | % 10
c1\< ~ c2 b         | % 11
b\!\> bes4 bes a1\! | % 12
g\breve             | % 13
\oneVoice
R\breve*4           | % 14-17
a1\f( g)            | % 18
fis2 r r1           | % 19
R\breve*5           | % 20-24
r2 b4.\ff b8 b2 b   | % 25
b r r b4. b8        | % 26
a1 a                | % 27
b2 b4.\pp bes8 a1 ~ | % 28
a\breve ~           | % 29
a2 a4.( b8) a1 ~    | % 30
a\breve ~           | % 31
a2\f a4. b8 a1 ~    | % 32
a1 cis2( d)         | % 33
a2-> b-> b-> b->    | % 34
a-> fis-> <g e>1->  | % 35
fis2 r r1           | % 36
r\breve             | % 37
b1\pp b2 b          | % 38
\voiceTwo c1 c2( b) | % 39
a2 a a1             | % 40
g\breve ~           | % 41
g2 \oneVoice r2 r1  | % 42
R\breve*5           | % 43-47
r1 gis\sf           | % 48
g2 r g1\sf          | % 49
fis2 r r1           | % 50
r\breve             | % 51
r2 fis\ppp a r      | % 52
r\breve             | % 53
r2 fis a r          | % 54
r\breve             | % 55
r2 c4.\fff c8 g2 c  | % 56
e2 g( e c)          | % 57
b4 r r2 r1          | % 58
r1 r2 d\f           | % 59
d\breve ~           | % 60
d2 d4.( e8) d1\dim ~ | % 61
d\breve\ppp ~       | % 62
d2 d4.( e8) d1\mf\< ~ | % 63
d1\ff\! fis2 g      | % 64
d2( e) e1           | % 65
d2( b <a c>1)       | % 66
b4 r r2 r1          | % 67
R\breve*4           | % 68-71
b1 b                | % 72
\voiceTwo 
c1 ~ c2( b          | % 73
b bes a1)           | % 74
g2 r2 r1            | % 75
d\breve\pp          | % 76
d2 \oneVoice r r1   | % 77 
}

bassplit = \relative c {
\clef F
\voiceOne 
d1\pp dis2 dis      | % 1
e( eis fis)\< g     | % 2
g\!\> g4 g\! fis1   | % 3
d\breve             | % 4
\oneVoice
s\breve*4           | % 5-8
\voiceOne
r\breve             | % 9
d1 dis2 dis         | % 10
e( eis fis) g       | % 11
g g4 g g2( fis)     | % 12
d\breve             | % 13
\oneVoice
s\breve*25          | % 14-38
\voiceOne 
e2( eis fis) g      | % 39
g\< g\! fis1\>      | % 40
d\breve\!\pp ~      | % 41
d2 \oneVoice s2 s1  | % 42
s\breve*29          | % 43-71
\voiceOne 
d1 dis              | % 72
e2( eis fis g       | % 73
g1 ~ g2 fis)          | % 74
d2 \oneVoice s2 s1  | % 75
s\breve*2           | % 76-77
}

bas_tut = \relative c' {
\clef F
\voiceTwo 
g,1 g2 g            | % 1
g1( a2) b           | % 2
c c4 c d1           | % 3
g,\breve            | % 4
\oneVoice
R\breve*4           | % 5-8
\voiceTwo
r2 d'1\pp d2        | % 9
g,1 g2 g            | % 10
g( gis a) b         | % 11
c cis4 cis d1       | % 12
g,\breve            | % 13
\oneVoice
R\breve*4           | % 14-17
r1 a\f d2 r r1      | % 18-19
R\breve*5           | % 20-24
r2 g,4. g8 g2 g     | % 25
g r r g4. g8        | % 26
a1 a'               | % 27
e2 e4.\pp d8 cis2 d | % 28
a r r1              | % 29
R\breve*2           | % 30-31
r1 a2(\ff a'4.) gis8 | % 32
g2( fis) e( d)      | % 33
c2-> b-> g-> g->    | % 34
a-> a1-> a2->       | % 35
d2 r r1             | % 36
d1 d                | % 37
<d g,>1\pp <dis g,>2 <dis g,>2 | % 38
\voiceTwo 
e,1( fis2) g        | % 39
a2 a b1             | % 40
e,\breve ~          | % 41
e2 \oneVoice r2 r1  | % 42
R\breve*5           | % 43-47
r1 cis'\sf          | % 48
cis2 r cis1         | % 49
c2 r r1             | % 50
r\breve             | % 51
r2 d\ppp d r        | % 52
r\breve             | % 53
r2 d d r            | % 54
r\breve             | % 55
r2 <c c'>4.\fff <c c'>8 <c c'>2 <c c'>2 | % 56
<c c'>2 c1.         | % 57
d4 r r2 r1          | % 58
r1 r2 d'4.( cis8)   | % 59
c2( b) fis( g)      | % 60
<a d,>1 <a d,>2 r   | % 61
r\breve             | % 62
r1 r2 d4.\mf\< cis8 | % 63
c2(\!\ff b) a( g)   | % 64
f2( e) c1           | % 65
d\breve             | % 66
<g g,>4 r r2 r1     | % 67
R\breve*3           | % 68-70
r2 d1\pp d2         | % 71
\voiceTwo 
g,1 g               | % 72
g2( gis a b         | % 73
c cis d1)           | % 74
g,2 \oneVoice r2 r1 | % 75
g\breve\pp          | % 76
g2 r r1             | % 77
}

ave = \lyricmode {
A -- ve Ma -- ri -- a gra -- ti -- a ple -- na
}

dominus = \lyricmode {
Do -- mi -- nus te -- cum
}

benedicta = \lyricmode {
Be -- ne -- dic -- ta tu __
}

mul = \lyricmode {
mu -- li -- e -- ri -- bus
}

benedictus = \lyricmode { 
Be -- ne  -- dic -- tus fruc -- tus  ven -- tris tu -- i Je -- sus
}

orapro = \lyricmode {
O -- ra pro no -- bis
}

sancta = \lyricmode {
San -- cta Ma -- ri -- a
}

mater = \lyricmode {
ma -- ter De -- i __
}

pecca = \lyricmode {
pec -- ca -- to -- ri -- bus nunc et in ho -- ra
}

mortis = \lyricmode {
mor -- tis nos -- trae
} 

sopsollyrics = \lyricmode {
\benedicta
in
\mul
\benedicta
Et
\benedictus
Je -- sus Je -- sus Je -- sus __
O -- ra
\orapro
\pecca
\mortis
Sanc -- ta
\sancta
ma -- ter
\mater
Sanc -- ta
\sancta
ma -- ter
\mater
Sanc -- ta
\sancta
Sanc -- ta
ma -- ter
A -- men A -- men A -- men A -- men
}

altsollyrics = \lyricmode {
\benedicta
\benedicta
\benedicta
Et
\benedictus
Je -- sus Je -- sus __
O -- ra
\orapro
\pecca
\mortis
\sancta
\mater
\sancta
ma -- ter
\mater
\sancta
Sanc -- ta
ma -- ter
A -- men A -- men A -- men A -- men
}

tensollyrics = \lyricmode {
\benedicta
\benedicta
Be -- ne -- dic -- tus tu -- i 
Je -- sus Je -- sus Je -- sus __
fruc -- tus ven -- tris tu -- i
\orapro
\pecca
\mortis
Sanc -- ta
\mater
Ma -- ri -- a
ma -- ter
\mater
Sanc -- ta
ma -- ter
Sanc -- ta
ma -- ter
A -- men.
}

bassollyrics = \lyricmode {
\benedicta
\benedicta
\benedicta
Et
\benedictus
Je -- sus
fruc -- tus ven -- tris tu -- i
\orapro
\pecca
\mortis
\sancta
\mater
\sancta
ma -- ter
\mater
Sanc -- ta
\sancta
Sanc -- ta
ma -- ter
A -- men.
}

soptuttekst = \lyricmode {
\ave
\dominus
\dominus
\benedicta
in
\mul
\mul
\benedictus
\mortis
Sanc -- ta
Ma -- ter
\sancta
ma -- ter
\sancta
\mater
\mater
A -- men.
}

alttuttekst = \lyricmode {
\ave
\dominus
\dominus
\benedicta
in
\mul
\mul
\benedictus
\sancta
\orapro
\orapro
\mortis
Sanc -- ta
Ma -- ter
\sancta
ma -- ter
Ma -- ri -- a
\mater
\mater
A -- men.
}

tensplittekst = \lyricmode {
gra -- ti -- a ple -- na
\dominus
\mater
}

tentuttekst = \lyricmode {
\ave
\dominus
\dominus
te -- cum
\benedicta
\mul
\mul
\benedictus
\sancta
\mater
\mortis
Sanc -- ta
Ma -- ter
\sancta
ma -- ter
Sanc -- ta
ma -- ter
De -- i
De -- i
\mater
A -- men
A -- men
A -- men.
}

bastuttekst = \lyricmode {
\ave
A -- ve
\dominus
\dominus
te -- cum
\benedicta
\mul
\mul
\benedictus
San -- cta
\sancta
\mater
\mortis
Sanc -- ta
Ma -- ter
\sancta
ma -- ter
\sancta
\mater
\mater
A -- men
A -- men
A -- men
A -- men.
}

\score {
        <<
		\new ChoirStaff {
			<<
			\new Staff = sopStaff { 
			    \set Staff.instrumentName = "Sop. solo" 
			    \set Staff.midiInstrument = "lead 6 (voice)"
			    \new Voice = sopSolVoice { 
				\global 
				\autoBeamOff \dynamicUp
				\sop_sol
			    } 
			}
            \new Lyrics = "sopsollyrics" \lyricsto sopSolVoice \sopsollyrics
			
			\new Staff = altStaff { 
			    \set Staff.instrumentName = "Alt solo"
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = altSolVoice { 
				\global
				\autoBeamOff \dynamicUp
				\alt_sol
			    } 
			}
			\new Lyrics = "altsollyrics" \lyricsto altSolVoice \altsollyrics
		
			\new Staff = tenorStaff { 
			    \set Staff.instrumentName = "Ten. solo"
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = tenSolVoice { 
				\global 
        			\autoBeamOff \dynamicUp
				\ten_sol
			    } 
			}
			\new Lyrics = "tensollyrics" \lyricsto tenSolVoice \tensollyrics
		
			\new Staff = bassStaff { 
			    \set Staff.instrumentName = "Bas solo"
			    \set Staff.midiInstrument = "voice oohs"
			    \new Voice = basSolVoice { 
				\global 
        			\autoBeamOff \dynamicUp
				\bas_sol
			    } 
			}
			\new Lyrics = "bassollyrics" \lyricsto basSolVoice \bassollyrics
			>>
        }
		\new ChoirStaff {
			<<
			\new Staff = sopStaff { 
			    \set Staff.instrumentName = "Sop." 
			    \set Staff.midiInstrument = "voice oohs"
				<<
				\new Voice = sopVoice { \global \dynamicUp \sop_tut } 
				>>
			}
			\new Lyrics = sopranos { s1 }
			
			\new Staff = altStaff { 
			    \set Staff.instrumentName = "Alt"
			    \set Staff.midiInstrument = "voice oohs"
				<<
			    \new Voice = altVoice { \global \dynamicUp \alt_tut } 
				>>
			}
			\new Lyrics = altos { s1 }

			\new Lyrics = tenorsSplit { s1 }
			\new Staff = tenStaff { 
			    \set Staff.instrumentName = "Tenor"
			    \set Staff.midiInstrument = "voice oohs"
				<<
				\new Voice = tenSplitpart { \global \tensplit } 
			    \new Voice = tenVoice { \global \dynamicUp \ten_tut } 
				>>
			}
			\new Lyrics = tenors { s1 }
			
			\new Lyrics = bassSplit { s1 }
			\new Staff = basStaff { 
			    \set Staff.instrumentName = "Bas"
			    \set Staff.midiInstrument = "voice oohs"
				<<
				\new Voice = basSplitpart { \global \bassplit } 
			    \new Voice = basVoice { \global \dynamicUp \bas_tut } 
				>>
			}
			\new Lyrics = basses { s1 }

			\context Lyrics = sopranos \lyricsto sopVoice \soptuttekst
			\context Lyrics = altos \lyricsto altVoice \alttuttekst
			\context Lyrics = tenorsSplit \lyricsto tenSplitpart { \tensplittekst }
			\context Lyrics = tenors \lyricsto tenVoice \tentuttekst
			\context Lyrics = bassSplit \lyricsto basSplitpart { \ave }
			\context Lyrics = basses \lyricsto basVoice \bastuttekst
			>>
		}
  >>    
  \layout {
    \context {
%      \RemoveEmptyStaffContext
%      \override RemoveEmptyVerticalGroup.remove-first = ##f
    }
  }
  \midi {
  }
}
