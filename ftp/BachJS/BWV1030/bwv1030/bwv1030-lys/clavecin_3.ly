topC = \relative fis' {
\globalC
\set Staff.midiInstrument = "harpsichord"
\clef treble

R1*8
fis2 a2
%% Takt 10 ==================================================
gis4 d' cis fis,
eis4 h' a fis
gis4 cis, r cis
d4 ais'( \stemUp h) \stemNeutral dis,
e4 his'( cis) eis,
%% Takt 15 --------------------------------------------------
fis4 h a gis
a8 gis fis gis a h cis d
e8 fis e d cis h a g
fis8 e d cis h ais h cis
d8 g fis e d cis h ais
%% Takt 20 ==================================================
h8 cis d e fis g fis g
e8 fis e fis d e d e
cis8 d cis d h cis h cis
ais8 h' ais g^\markup { \teeny \sharp } fis e d cis
h8 cis'^\markup { \teeny \natural } h a g fis e d
%% Takt 25 --------------------------------------------------
cis8 d' cis h a g fis e
d4 g fis ais
h4 d g,2~
g4 e' a,2~
a8 g fis g a h c a
%% Takt 30 ==================================================
h8 a g a h cis! d h
cis2 r4 a
d2. h4
eis4 gis cis,2~
cis8 h a h cis d cis d
%% Takt 35 --------------------------------------------------
h8 cis h cis a h a h
gis8 a gis a fis gis fis gis
eis8 fis eis d^\markup { \teeny \sharp }
cis h a gis
fis8 g' fis e d cis h a
gis8 a' gis fis eis dis cis h
%% Takt 40 ==================================================
a4 d cis eis
fis8 gis a2 a4~
a4 g!8 fis g2
r4 fis2 fis4~
fis4 e8 d e2
%% Takt 45 --------------------------------------------------
r4 d2 d4~
d4 c8 h c2
r4 g'8 a h cis d h
cis8 h a h cis dis e cis
dis8 cis h cis dis e fis dis
%% Takt 50 ==================================================
e8 dis e g fis e dis e
fis4 h,8 cis dis e fis4~
fis8 dis e4 r e~
e8 cis dis4 r c~
c4 dis, e g
%% Takt 55 --------------------------------------------------
a fis dis2\trill
e8 f' e d cis^\markup { \teeny \natural } h a g
fis1~
fis8 e dis e fis g a fis
g8 fis e fis g a h g
%% Takt 60 ==================================================
a8 g fis g a h c a
h4 d4 g,2~
g4 e' a,2~
a4 d8 e fis2~
fis4 e8 fis g2~
%% Takt 65 --------------------------------------------------
g4 fis8 e d cis h ais
h2 d2
cis4 g'( fis) h,
ais4 e'( d) h
cis4 fis, r fis
%% Takt 70 ==================================================
g4 dis'( e) gis,
a4 eis'( fis) ais,
h4 e d cis
d8 cis h cis d e fis g
a8 h a g fis e d c
%% Takt 75 --------------------------------------------------
h8 a g a h cis dis e
fis8 g fis e dis cis h a
g8 h cis d e fis e d
cis h ais h cis2~
cis8 fis, h cis d2~
%% Takt 80 ==================================================
d8 h cis d e2~
e8 cis d e fis2~
fis4 g8 fis e d cis h
fis'1 \fermata \bar "||" \break
%%...........................................................
\time 12/16
#(override-auto-beam-setting '(end * * * *) 3 16)
#(override-auto-beam-setting '(end * * * *) 6 16)
#(override-auto-beam-setting '(end * * * *) 9 16)
#(override-auto-beam-setting '(end * * * *) 12 16)

\repeat volta 2 {
\partial 16 r16
<fis, h d>8 r16 <fis cis' e>8 r16 <fis h d>8 r16 <h d fis>8 r16
%% Takt 85 --------------------------------------------------
<h cis e>8 r16 <ais e' g>8 r16 <ais e' fis>8 r16 <h d fis>8 r16
<h e g>8 r16 <h, fis' h>8 r16 <cis e ais>8 r16 <d fis h>8 r16
<e g h>8 r16 <e g h e>8 r16 <e ais cis>8 r16 r8 fis16
h16 d cis~ cis g fis~ fis e' d~ d a gis~
gis16 fis' e~ e h ais~ ais g' fis r ais, h
%% Takt 90 ==================================================
g'16 ais, h fis' ais, h e ais, h d ais h
cis16 e g e cis h ais cis fis e d cis
\appoggiatura cis8 d8. r8 h16 h e g dis e h
\appoggiatura h8 cis8. r8 a16 a d fis cis d a
h8 h,16 d8 g16 a8 a,16 d8 fis16
%% Takt 95 --------------------------------------------------
g8 h16 d,8 h'16 fis8 a16 d,8 a'16
h8 e,16 h'8 d16 cis h a e'8.~
e16 cis d fis, g e d8.~ d8 d16
d16 fis a c, h a h g h d h d
e16 gis h d, cis h cis a cis e cis e
%% Takt 100 =================================================
fis16 ais cis e, d cis d h d fis d fis
gis16 h d a gis fis eis gis h d, cis h
fis'16 a gis~ gis d cis~ cis h' a~ a e dis~
dis16 cis' h~ h fis eis~ eis d' cis r eis, fis
d'16 eis, fis cis' eis, fis h eis, fis a eis fis
%% Takt 105 -------------------------------------------------
gis16 h d h gis fis eis gis cis h a gis
a16 fis  cis eis gis h a gis fis fis'8 a,16
h16 a gis gis'8 h,16 cis h a h gis a
fis16 gis a a gis fis fis'8 h,16 fis'8  a,16
d8 h16 eis,8 fis16 \appoggiatura fis16 gis8.~[ gis8 cis,16]
%% Takt 110 =================================================
cis16 fis a eis fis cis d8. r8 h16
h16 e gis dis e h cis8. r8 cis'16
fis,16 eis fis d' cis h fis eis fis cis' h a
fis16 eis fis h a gis fis eis fis a gis fis
gis16 h d cis h a gis fis eis d! cis h
%% Takt 115 -------------------------------------------------
a8 cis'16 cis, fis eis << \new Voice { \override Staff.NoteCollision #'merge-differently-dotted = ##t
                                       \stemUp fis8. s8 }
                          \new Voice { \stemDown \tieUp \set tieWaitForNote = ##t
                                       fis16~[ cis~ ais~] \stemUp < fis ais cis fis>8 } >>
}

\pageBreak

\repeat volta 2 { fis'16
ais16 cis g~ g fis eis fis cis' fis,~ fis e dis
e16 cis' e,~ e d cis d e fis h, d fis
a8.~ a16 g fis g8.~ g16 fis e
fis8.~ fis16 e dis e8. r8 <g h e>16
%% Takt 120 =================================================
<< \new Voice \relative c'' { \stemUp   c8 r16 h8 r16 a8 r16 a8 r16
                                        g8 r16 e8 r16 dis8.~ dis8[ h16] }
   \new Voice \relative a'  { \stemDown a8 s16 g8[ fis16] e8 s16 h8 s16
                                        h8 s16 c8 s16 s4.               } >>
e16 g fis~ fis c h~ h a' g~ g d cis~
cis16 h' a~ a e dis~ dis c' h r dis, e
c'16 dis, e h' dis, e a4.~
%% Takt 125 -------------------------------------------------
a8 g16 g8\trill fis16 d' h g fis g d
e16 a g~ g a fis g c h~ h c a
h16 e d~ d e c d4.~\trill
d2.~
d2.~
%% Takt 130 =================================================
d8 c16 c8\trill h16 h8\trill a16 a8\trill g16
g8\trill fis16 fis8\trill e16 e8. r8 cis16
a'8.~a16 g fis g8.~ g16 fis e
fis8.~fis16 e dis e8.~ e16 d cis
ais'16 cis g~ g fis eis fis cis' fis,~ fis e dis
%% Takt 135 -------------------------------------------------
e16 cis' e,~ e d cis d fis h d8.~ \pageBreak
d16 g, h e,8.~ e16 cis e a8.~
a16 fis a d,8.~ d16 h d g8.~
g16 e g cis8.~ cis16 ais cis fis8 r16
r8. r8 h,,16 ais fis ais cis eis fis
%% Takt 140 =================================================
h,16 gis h d eis fis cis8 cis'16 ais8 e16
d8 d'16 h8 fis16 e8 e'16 cis8 ais16
h8 r16 ais8 r16 d8 r16 cis8\trill h16
ais16 g' fis~ fis h, ais~ ais e' dis~ dis a' fis
g8 g,16 h8 e16 fis8 fis,16 h8 d16
%% Takt 145 -------------------------------------------------
e8 g16 h,8 g'16 d8 fis16 h,8 d16
g,8 e'16 ais,8 h16 ais gis fis cis'8.~
cis16 ais h d, e cis << \new Voice { \stemUp \tieDown \set tieWaitForNote = ##t h16[ d~ fis~] <d fis h>8 }
                        \new Voice { \stemDown s16 d8 } >>
}
}

bottomC = \relative h {
\globalC
\set Staff.midiInstrument = "harpsichord"
\clef bass

r2 h
ais2 d
cis2 h~
h2 ais
%% Takt 5 ---------------------------------------------------
h2 cis~
cis2 d~
d4 e fis2
h,2 h,
fis'2 fis'~
%% Takt 10 ==================================================
fis4 eis fis d~
d4 eis, fis d
cis4 cis' a fis
h2 r4 gis
cis2 r4 a
%% Takt 15 --------------------------------------------------
d4 h cis cis,
fis,4 fis' e d
cis2 a
d4 g fis e
fis2 fis,
%% Takt 20 ==================================================
h2 d2
cis4 g' fis h,
ais4 e' d h
cis4 fis, r fis
g4 dis' e gis,
%% Takt 25 --------------------------------------------------
a4 eis' fis ais,
h4 e d cis
h2 r4 h'
cis2 r4 cis,
d2 r4 fis,
%% Takt 30 ==================================================
g2 r4 gis'
a8 gis fis gis a h cis a
h8 a gis a h cis d h
cis4 eis, fis gis
a4 fis fis'2~
%% Takt 35 --------------------------------------------------
fis4 eis fis d~
d4 eis, fis d
cis4 h a fis
h2 r4 gis
cis2 r4 a
%% Takt 40 ==================================================
d4 h cis2
fis,4 fis' e d
cis4 a2 h8 cis
d4 d' cis h
ais4 fis2 gis8 ais
%% Takt 45 --------------------------------------------------
h4 h, a g
fis4 d2 e8 fis
g8 fis e2 fis8 g
a8 g fis2 g8 a
h8 a g2 a8 h
%% Takt 50 ==================================================
c1
h2 r
e2 g2
fis4 c' h e,
dis4 a' g e
%% Takt 55 --------------------------------------------------
fis4 h, r h
c4 gis'( a) cis,
d4 ais'( h) dis,
e4 a g fis
e2 r4 e,
%% Takt 60 ==================================================
fis2 r4 fis'
g2 r4 h,
c2 r4 cis
d8 cis h cis d e fis d
e8 d cis d e fis g e
%% Takt 65 --------------------------------------------------
fis4 ais, h cis
d4 h h'2~
h4 ais h g~
g4 ais, h g
fis4 e' d h
%% Takt 70 ==================================================
e2 r4 cis
fis2 r4 d
g4 e fis fis,
h4 h' a g
fis4 d2 e8 fis
%% Takt 75 --------------------------------------------------
g,4 g' fis e
dis4 h2 cis8 dis
e,4 d' cis h
ais4 fis'8 gis ais h cis ais
h4 h, 2 cis8 d
%% Takt 80 ==================================================
e8 d cis2 d8 e
fis8 e d2 e8 fis
g1\trill
fis \fermata \bar "||" \break
%%...........................................................
\time 12/16
#(override-auto-beam-setting '(end * * * *) 3 16)
#(override-auto-beam-setting '(end * * * *) 6 16)
#(override-auto-beam-setting '(end * * * *) 9 16)
#(override-auto-beam-setting '(end * * * *) 12 16)

\repeat volta 2 {
\partial16 r16
h8 r16 ais8 r16 h8 r16 h,8 r16
%% Takt 85 --------------------------------------------------
cis8 r16 cis'8 r16 d8 r16 h8 r16
e,8 r16 d8 r16 g8 r16 fis8 r16
e8 r16 cis8 r16 fis8 r16 ais8 r16
h8 r16 fis8 r16 h,8 d16 fis8 h16
cis,8 e16 ais8 cis16 d,8 fis16 h8 d16
%% Takt 90 ==================================================
e,8 r16 d8 r16 g8 r16 fis8 r16
g8 r16 g,8 r16 fis8 r16 ais8 r16
h8 r16 d8 r16 e8 r16 g8 r16
a,8 r16 cis8 r16 d8 r16 fis8 r16
g8.~  g16 fis e fis8.~  fis16 e d
%% Takt 95 --------------------------------------------------
h'8.~  h16 a g a8.~  a16 g fis
g8 r16 e8 r16 a8 r16 cis8 r16
d8 fis,16 a8 a,16 d8.~ d16 a d
fis8 r16 d8 r16 g,8.~ g16 g' fis
gis8 r16 e8 r16 a,8.~ a16 a' gis
%% Takt 100 =================================================
ais8 r16 fis8 r16 h,8.~ h16 h' ais
h8.~ h8 h,16 h'8.~ h16 a gis
a8 r16 eis8 r16 fis8 r16 fis,8 r16
gis8 r16 cis8 r16 a8 r16 fis8 r16
h8 r16 a8 r16 d8 r16 cis8 r16
%% Takt 105 -------------------------------------------------
h8 r16 gis8 r16 cis8 r16 eis8 r16
fis8 r16 cis8 r16 fis,8 r16 r8 fis'16
gis8 h16 eis,8 gis16 a8 r16 fis8 r16
h8 r16 cis8 r16 d8 r16 cis8 r16
h8 r16 d8 r16 cis8 r16 eis,8 r16
%% Takt 110 =================================================
fis8 r16 a8 r16 h8 r16 d,8 r16
e8 r16 gis8 r16 a8 e16 cis'8.~
cis16 h a h a gis a8.~ a16 gis fis
d'8.~ d16 cis h cis8.~ cis16 h a
h8 r16 r8 his16 cis8 r16 r8 eis,16
%% Takt 115 -------------------------------------------------
fis8 a,16 cis8 cis,16 fis8.~ fis8 }

\repeat volta 2 {
r16
fis'16 ais cis fis,8 r16 fis16 ais h fis8 r16
fis16 ais cis fis,8 fis,16 h8 r16 r8.
h16 dis fis h,8 r16 h16 dis e h8 r16
h16 dis fis h,8 h'16 e,8 fis16 g8 e16
%% Takt 120 =================================================
a8 r16 h8 r16 c8 r16 dis,8 r16
e8 r16 c8 r16 << \new Voice { \stemDown h16[ dis fis] a[ g fis] }
                 \new Voice { \stemUp fis8 s16 s8.} >>
g8 r16 dis8 r16 e8 r16 e,8 r16
fis8 r16 fis'8 r16 g8 r16 gis8 r16
a8 r16 e8 r16 c8 r16 d8 r16
%% Takt 125 -------------------------------------------------
g8 r16 d8 r16 h8 g'16 a8 h16
c,8 r16 d8 r16 e8 r16 fis8 r16
g,8 r16 a8 r16 h16 d fis a g fis
e8 r16 fis8 r16 g8 r16 g,8 r16
a8 r16 a'8 r16 h8 r16 g8 r16
%% Takt 130 =================================================
c8 r16 g8 r16 a8 r16 e8 r16
fis8 r16 g8 r16 ais,8 cis16 ais8 fis16
h16 dis fis h,8 r16 h16 dis e h8 r16
h16 dis fis h8 h,16 e8 d16 cis8 e16
fis16 ais cis fis,8 r16 fis16 ais h fis8 r16
%% Takt 135 -------------------------------------------------
fis16 ais cis fis,8 fis,16 h8 a16 g8 fis16
e8 r16 g8 r16 a8 r16 cis8 r16
d,8 r16 fis8 r16 g8 r16 h8 r16
cis8 r16 e8 r16 fis8 fis,16 ais8 cis16
d8 fis,16 h8 d16 fis8.~ fis16 cis ais
%% Takt 140 =================================================
fis8.~ fis16 h d fis eis fis fis, ais cis
fis16 eis fis fis, h d fis eis fis fis, ais cis
fis16 eis fis fis, ais cis fis eis fis fis, ais cis
fis16 eis fis fis, h d fis e fis fis, h dis
e8.~ e16 d cis d8.~ d16 cis h
%% Takt 145 -------------------------------------------------
g'8.~ g16 fis e fis8.~ fis16 e d
e8 r16 cis8 r16 fis8 r16 ais,8 r16
h8 d16 fis8 fis,16 h fis d h8 \fermata
%%  8 r16
%%  8 16
%%  8.~  16
}
}
clavecinC = \context PianoStaff <<
   \context Staff = "treble" {
      \topC
   }
   \context Staff = "bass" {
      \bottomC
   }

>>
