fluteC = \relative h' {
   \globalC
   \set Staff.midiInstrument = "flute"

h2 d2
cis4 g'( fis) h,
ais4 e'( d) h
cis4 fis, r fis
%% Takt  5 --------------------------------------------------
g4 dis'( e) gis,
a4 eis'( fis) ais,
h4
\once \override TextScript #'extra-offset = #'( -2.1 . -2.3 )
e^\markup { \musicglyph #"custodes.mensural.u0" } d cis
d8 cis h cis d e fis gis
a8 h a h cis d cis d
%% Takt 10 ==================================================
h8 cis h cis a h a h
gis8 a gis a fis gis fis gis
eis8 fis eis dis cis h a gis
fis8 g' fis e d cis h a
gis8 a' gis fis e d cis h
%% Takt 15 --------------------------------------------------
a4 d cis eis
fis4 a2 a4~
a4 g8 fis g4 cis~
cis4 h2 h4~
h4 ais8 gis ais4 e'~
%% Takt 20 ==================================================
e4 d8 cis h2~
h4 ais r g~
g4 ais, h d
e4 cis ais2
h1
%% Takt 25 --------------------------------------------------
cis1~
cis8 h ais h cis d e cis
d8 cis h cis d e fis d
e8 d cis d e fis g e
fis4 a d,2~
%% Takt 30 ==================================================
d4 h' e,2~
e4 a8 h cis2~
cis4 h8 cis d2~
d4 cis8 h a gis fis eis
fis2 a2
%% Takt 35 --------------------------------------------------
gis4 d'( cis) fis,
eis4 h'( a) fis
gis4 cis, r cis
d4 ais'( h) dis,
e4 his'( cis) eis,
%% Takt 40 ==================================================
fis4 h a gis
a8 gis fis gis a h cis d
e8 fis e d cis h a g
fis8 e d e fis gis ais h
cis8 d cis h ais gis fis e
%% Takt 45 --------------------------------------------------
d8 cis h cis d e fis g
a8 h a g fis e d c
h4 e8 fis g2~
g8 e fis g a2~
a8 fis g a h2~
%% Takt 50 ==================================================
h4 c8 h a g fis e
dis8 e dis cis h a g fis
g8 h cis dis e fis g e
a8 h a h g a g a
fis8 g fis g e fis e fis
%% Takt 55 --------------------------------------------------
dis8 e'dis cis h a g fis
e1~
e8 g fis e dis cis h a
g4 c h dis
e4 g c,2~
%% Takt 60 ==================================================
c4 a' d,2~
d8 c h c d e f d
e8 d c d e fis g e
fis2 r4 d
g2. e4
%% Takt 65 --------------------------------------------------
ais4 cis fis,2~
fis8 e d e fis g fis g
e8 fis e fis d e d e
cis8 d cis d h cis h cis
ais8 h' ais gis fis e d cis
%% Takt 70 ==================================================
h8 c' h a g fis e d
cis8 d' cis h a g fis e
d4 g fis ais
h8 cis d2 d4~
d4 c8 h c2
%% Takt 75 --------------------------------------------------
r4 h2 h4~
h4 a8 g a2
r4 g2 g4~
g4 fis8 e cis'4 e,
d8 cis d e fis gis a fis
%% Takt 80 ==================================================
gis8 fis e fis gis ais h gis
ais8 gis fis gis ais h cis ais
h8 ais h d cis h ais h
ais1 \fermata \bar "||" \break
%%...........................................................
\time 12/16
#(override-auto-beam-setting '(end * * * *) 3 16)
#(override-auto-beam-setting '(end * * * *) 6 16)
#(override-auto-beam-setting '(end * * * *) 9 16)
#(override-auto-beam-setting '(end * * * *) 12 16)

\repeat volta 2 {
\partial16 fis,16
h16 d cis~ cis g fis~ fis e' d~ d a gis~
%% Takt 85 --------------------------------------------------
gis16 fis' e~ e h ais~ ais g' fis r ais, h
g'16 ais, h fis' ais, h e ais, h d ais h
cis16 e g e cis h ais cis fis e d cis
d16 h fis ais cis e d cis h h'8 d,16
e16 d cis cis'8 e,16 fis e d d'8 fis,16
%% Takt 90 ==================================================
e16 fis g fis e d cis8 e'16 h,8 d'16
e,8 cis'16 ais8 h16 \appoggiatura h8 cis8.~ cis8 fis,16
fis16 h d ais h fis \appoggiatura fis8 g8. r8 e16
e16 a cis gis a e \appoggiatura e8 fis8. r8 d16
d16 cis d h' a g d cis d a' g fis
%% Takt 95 --------------------------------------------------
d16 cis d g fis e d cis d fis e d
e g h a g fis e d cis h a g
fis8 a'16 a,d cis d a d fis d fis
a16 fis d a'8.~ a16 d, g h8.~
h16 gis e h'8.~ h16 e, a cis8.~
%% Takt 100 =================================================
cis16 ais fis cis'8.~ cis16 fis, h d8.~
d16 h gis fis eis fis cis'8 gis16 \appoggiatura fis8 eis8 r16
r8. r8 h16 a( gis fis) d'( cis h)
h16 a gis gis' a h cis eis, fis fis,8 r16
R1*12/16
%% Takt 105 -------------------------------------------------
r4. r8. r8 cis'16
fis16 a gis~ gis d cis~ cis h' a~ a e dis~
dis16 cis' h~ h fis eis~ eis d'cis r eis, fis
d'16 eis, fis cis' eis, fis h eis, fis a eis fis
gis16 h d h gis fis eis gis cis h a gis
%% Takt 110 =================================================
\appoggiatura gis8 a8. r8 fis16 fis h d ais h fis
gis8. r8 e16 e a cis gis a eis
d'8 d,16 fis8 h16 cis8 cis,16 fis8 a16
h8 d16 fis,8 d'16 a8 cis16 fis,8 cis'16
d,8 h'16 eis,8 fis16 eis dis cis gis'8.~
%% Takt 115 -------------------------------------------------
gis16 eis fis a, h gis fis8.~ fis8
}
\repeat volta 2 {
cis''16
e,8.~e16 d cis d8.~ d16 cis h
cis8.~cis16 h ais h8. r8 h'16
dis16 fis c~ c h ais h fis' h,~ h a gis
a16 fis' a,~ a g fis g a h e, g h,
%% Takt 120 =================================================
c16 f e~ e f dis e a g~ g a fis
g16 c h~ h c ais h4.~
h2.~
h2.~
h8 a16 a8\trill gis16 e'16 c a g a fis
%% Takt 125 -------------------------------------------------
h16 cis, d a' cis, d g8. r8.
r2.
r4. r8. r8 d16
g16 h a~ a e d~ d c' h~ h f e~
e16 d' c~ c g fis~ fis e' d r fis, g
%% Takt 130 =================================================
e'16 fis, g d' fis, g c dis, e h' dis, e
ais dis, e h' dis, e cis' dis, e g fis e
dis16 fis c~ c h ais h fis' h,~ h a gis
a16 fis' a,~ a g fis g h e g fis e
e'8.~ e16 d cis d8.~ d16 cis h
%% Takt 135 -------------------------------------------------
cis8.~ cis16 h ais h8.~ h16 h, a'
g16 h e, d cis h cis a cis e fis g
fis16 a d, c h a h g h d e fis
e16 g cis, h ais gis ais fis ais cis eis fis
h,16 gis h d eis fis cis8 cis'16 ais8 e16
%% Takt 140 =================================================
d8 d'16 h8 fis16 e8 e'16 cis8 ais16
fis8 h16 d,8 fis16 ais,8. r8 fis'16
eis16 d' cis~ cis fis, eis~ eis h' ais~ ais e d
cis8 r16 d8 r16 cis8 r16 a'16 c, h~
h16 ais h g' fis e h ais h fis' e d
%% Takt 145 -------------------------------------------------
h16 ais h e d cis h ais h d cis h
cis16 e g fis e d cis h ais g' fis e
d8 fis'16 fis, h ais h8.~ h8 \fermata
}
}


