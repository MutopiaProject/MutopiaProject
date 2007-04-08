topA = \relative e' {
\globalA
\tripletBeams
\tupletUp
\set Staff.midiInstrument = "harpsichord"
\clef treble

\partial 4
r16 e d cis
d16( h') e,( ais) h fis cis'( e,) d h' e, ais h fis cis' e,
d16 h' e, cis' d, h' cis, ais' h fis e fis d fis g h
eis,16( cis') cis fis, fis e dis e dis h' h e, e d cis d
cis16( ais' h d) cis( h ais h) cis h ais gis fis e d cis
%% Takt 5 ----------------------------------------------
d16 h' e, ais h fis cis' e, d h' e, ais h fis cis' e,
d16 h' e, cis' d, h' cis, ais' h fis e fis d4~
d16 h' h d, d h' h d, d cis cis h cis4~
cis16 a' a c, c a' a c, c h h ais h cis d8~
d16 cis h' ais h fis cis' h cis g e' d e8 ais,\prall
%% Takt 10 =============================================
h16 fis g fis e d cis h ais cis fis ais cis( h) h( ais)
h16 a32 g fis16 a dis,( fis) fis( dis) dis e e h h cis32 dis e fis g16~
g16( cis) cis( e) e( d) d( cis) cis( d) d( ais) ais( h) h( fis)
g16( c) c( h) h( d,) d( cis) \stemUp cis( \stemDown fis') fis( e) \stemNeutral e( ais,) ais( h)
h16 fis e d fis e d cis << \new Voice \relative h { \stemUp h16 fis' fis e e g g fis
%% Takt 15 ---------------------------------------------
fis16 ais h d \stemDown cis16( fis) fis eis r \stemUp d, d cis cis fis fis e
e8 }
                           \new Voice \relative d' { \stemDown s16 d d cis cis e e d
%% Takt 15 ---------------------------------------------
d8 s8 s4 s16 h h ais ais d d cis
cis8 } >>
r8 r4 r16 cis'32 h cis16 e d cis h ais
h16 a32 g fis16 a g fis e d g8 g g g
g32 fis e16 \appoggiatura e8 fis4 a,8 fis' fis fis fis
fis32 e dis16 \appoggiatura dis8 e4 e'8~ e16 cis ais( h) h cis32( d cis16) e,
%% Takt 20 =============================================
d16 cis32 h cis16 h' ais8.\trill h16 h a32 g fis16 e d h' cis, ais'
<h, d fis h>8 r <cis fis ais> r << \new Voice \relative d''{ \stemUp r16 h h ais h8 r
r8 h h ais r16 d d cis h8}
                                   \new Voice \relative d'{ \stemDown s16 d d cis d8 s
s8 g cis, fis s16 fis h ais s8 } >> r8
r8 <fis a dis> <g h e> <e gis h> << \new Voice \relative d'' { \stemUp   r16 cis cis h   a8 }
                                    \new Voice \relative d'  { \stemDown s16 e   a   gis a8 } >> r8
r8 <e g cis> <fis a d> <a, d fis a> << \new Voice \relative d'' { \stemUp r16 h h ais h8 r8
%% Takt 25 ---------------------------------------------
r8 e d cis r cis fis e
r8 fis e d e a r a, }
                                       \new Voice \relative d'  { \stemDown s16 d e fis g8 r8
%% Takt 25 ---------------------------------------------
s8 g fis ais s ais fis cis'
s8 d h h a16 \change Staff = "bass" \stemUp cis, d8~ d cis } >>
fis''32 e d16 \appoggiatura d8 e8~ e16 d32 e fis e d cis d cis h16 a8~ a16 h32 cis d16 e
fis32  e d16 \appoggiatura d16 e8~ e16 d32 e fis e d cis d8 d, \times 2/3 { \hideTripletNumber \hideBrackets r16 d e fis g a }
h16 d, dis a' \times 2/3 { g16 e fis gis a h } cis16 e, eis h' \times 2/3 { a16 fis gis ais h cis }
%% Takt 30 =============================================
d16 eis, fis cis' \times 2/3 { h16 d cis h a gis fis eis dis eis fis gis } cis,16 eis gis h
\times 2/3 { h16 a gis a h cis d fis e d cis h a gis fis gis a h cis e d cis h a
gis16 fis eis fis gis a h d cis h a gis fis eis dis eis fis gis cis, d cis h a gis }
a16 fis' h, eis fis cis gis' h, a fis' h, eis fis cis gis' h,
a16 fis' h, gis' a, fis' gis, eis' fis cis h cis a8 r
%% Takt 35 ---------------------------------------------
r16 cis'( h a) gis8 g fis16 ais, h8 r16 fis' gis h
eis,16 cis' cis fis, fis e dis e dis h' h e, e8 e'
e8\prall dis r d d\prall cis r cis,
cis'8 cis4 h32 cis d16 cis8 cis4 h32 cis d16
cis8 d cis h a gis16 a fis4~
%% Takt 40 =============================================
fis8 h~ h16 a gis fis gis8 gis gis g
g8 e'~ \times 2/3 { e16 d cis h a g } fis8 fis fis fis
fis8 d'~ \times 2/3 { d16 cis h a g fis e dis e fis [e dis] } e8 e'
dis8 d cis c h d, cis h'~
h16 a32 gis a16 h h8.\prall a32 h cis8 fis, eis16 gis d8~
%% Takt 45 ---------------------------------------------
d16 cis h'32a gis16 gis a d,8~ \times 2/3 { \showTripletNumber d16[ cis e } b8]~ b16 a g'32 fis e16
e16( fis) r8 r4 r8 h ais16 cis g8~
g16 fis e'32 d cis16 cis d g,8~ \times 2/3 { g16[ fis a } es8]~ es16 d c'32 h a16
a16( h) r8 r h, c dis( e) g
ais8 d cis e, d cis16 h d cis h ais
%% Takt 50 =============================================
h8 r r4 r r8 h'
a8( d) cis( fis) his,( cis) r4
r4 r8 his fis'( eis) r cis,
a'32( gis fis16) \appoggiatura fis16 gis8~ gis16 fis32 gis a gis fis eis fis e d16 cis8~ cis16 dis32 eis fis16 gis
a32 gis fis16 gis8~ gis16 fis32 gis a gis fis eis fis8 fis, r cis'
%% Takt 55 ---------------------------------------------
a'8 a a a a32 gis fis16 \appoggiatura fis8 gis4 h,8
g'!8 g g g g32 fis e16 \appoggiatura e8 fis4 a8~
a16 gis gis g g( fis) fis( eis) fis(_\markup { \tiny {\sharp}{e?} } d') d( cis) cis( eis) eis( fis)
fis,8 d'16( cis) h( a gis fis) fis e32 d cis16 h a fis' gis, eis'
<< \new Voice { \stemUp fis8 cis' fis cis g\rest fis a dis,
%% Takt 60/1 ===========================================
e8 h' e h g\rest e g cis,
d8 fis' e d d\rest << \new Voice \relative e''  { \stemUp \shiftOff e8 d cis }
                      \new Voice \relative ais' { \stemUp \shiftOn s8 s8 ais } >>
d8\rest d h g d'\rest c a fis }
   \new Voice { \stemDown \shiftOff s8 fis cis' fis, h,\rest h fis' h,
%% Takt 60/2 ===========================================
a8\rest e' h' e, a,8\rest a e' a,
g8\rest a' g fis e8\rest g fis e
e8\rest h' g e e8\rest a fis a, } >>
d'8 d4 c32 d e16 d8 d4 c32( d e16)
d8 e d c h\prall a16 h \times 2/3 { \showTripletNumber g16 h a \hideTripletNumber g fis e
%% Takt 65 ---------------------------------------------
<< \new Voice { fis16[ a g]       }
   \new Voice { \stemDown d16 s s } >>
                                    fis d e fis a g fis d e f a g f e d c h c d e f
e16 g f e c d e g f e c d e g f e d c h a h c d e
d16 f e d c h \clef bass a g fis g a h c e d c h a g fis e fis g a
h16 g a h cis dis e \clef treble c d e fis g a h a g fis e dis cis h a g fis }
g16 e' a, dis e h fis' a, g e' a, dis e h fis' a,
%% Takt 70 =============================================
g16 e' a, fis' g, e' fis, dis' e h' a h \times 2/3 { \showTripletNumber g16 e fis g a h }
c,8 c'~ \times 2/3 { \hideTripletNumber c16 a h c d e } fis,8 fis'~ \times 2/3 { fis16 d, e fis g a }
h,8 h'~ \times 2/3 { h16 g a h c d } e,8 e'~ \times 2/3 { e16 c, d e fis g
a,16 fis' g a h c c h cis dis e fis fis dis, e fis g a a g a h cis dis }
e8 r r h, g'32 fis e16 fis8~ fis16 e32 fis g fis e dis
%% Takt 75 ---------------------------------------------
e32 dis cis16 h8~ h16 cis32 dis e16 fis g32 fis e16 fis8~ fis16 e32 fis g fis e dis
e32 dis cis16 dis8 c' f, dis! e r4
r8 g fis h gis( a) r4
r8 c h e cis( d) ais( h)
d,2\trill cis4 r8 h8
%% Takt 80 =============================================
fis'8 fis4 e32 fis g16 fis8 fis4 e32 fis g16
fis8 g fis e d\trill cis16 d h16 fis' g h
eis,16 cis' cis fis, fis e dis e dis h' h e, e8 e'
e8\prall dis r d d\prall cis r c
h8 dis( e) e, ais cis fis,16 e d cis
%% Takt 85 ---------------------------------------------
d16 h' e, ais h fis cis' e, d h' e, ais h fis cis' e,
d16 h' e, cis' d, h' cis, ais' h4~ h16 a g fis
g8 g g g g e'~ \times 2/3 { \showTripletNumber e16 d cis h a g }
fis8 fis fis f f d'~ \times 2/3 { d16 c h a g f
e16 dis e fis e dis } e8 e' dis d cis c
%% Takt 90 =============================================
h8 d, cis a'~ a16 g32 fis g16 a a8. g32 a
h4 r8 h~ \times 2/3 { h16[ ais cis } g8~] g16 fis e'32( d cis16)
cis16( d) r8 r4 r8 g,~ \times 2/3 { g16[ fis a } es8~]
es16 d c'32 h a16 a( h) e,8~ \times 2/3 { e16[ dis fis } c8~] c16 h a'32 g fis16
fis16( g) r8 r4 r8 c,~ \times 2/3 { c16[ h d } as8~]
%% Takt 95 ---------------------------------------------
as16 g f'32 e d16 d( e) r8 r2
r4 r8 h c dis( e g)
ais8 d( cis) e, d cis16 h d cis h ais
h4 r8 eis h' ais r e
d8 g fis h eis,( fis) r4
%% Takt 100 ============================================
r4 r8 fis d'32 cis h16 cis8~ cis16 h32 cis d cis h ais
h32 ais gis16 fis8~ fis16 gis32 ais h16 cis d32 cis h16 cis8~ cis16 h32 cis d cis h ais
h8 h, r h' h ais r cis~
\times 2/3 { \showTripletNumber cis16 h cis d e fis \hideTripletNumber g a h a g fis e cis d e fis g a h cis h a g
fis16 a g fis e d cis h ais h cis d e g fis e d cis h ais gis ais h cis }
%% Takt 105 --------------------------------------------
d8 g, r g fis dis' r fis,~
\times 2/3 { fis16 g a h cis d } e8 e,~ \times 2/3 { e16 cis d e fis g } a,8 a'~
\times 2/3 { a16 fis g a h cis } d8[ d,~] \times 2/3 {d16 h cis d e fis } g,8 g'~
\times 2/3 { g16 e fis g a h cis, ais' h cis d e } ais,8 r r4
\times 2/3 { \showTripletNumber r16 h a g fis e \hideTripletNumber d fis e d cis h } g'8 g g g
%% Takt 110 ============================================
\times 2/3 { g16 fis e fis e d c h a gis a c } fis8 fis fis fis
fis32 e dis16 \appoggiatura dis8 e4 e'8~ e16 cis ais h h cis32( d cis16) e,
d16 cis32 h cis16 g' fis e d cis h8 e d g
eis8( fis) r4 r8 fis e a
fis8( g) r4 r8 h a d
%% Takt 115 --------------------------------------------
h8( c) ais( h) fis4 r8 fis
d'8 d d d d32 c h16 \appoggiatura h8 c4 e,8
c'8 c c c c32 h ais16 \appoggiatura ais8 h4 d,8~
d16 cis cis c c h h ais ais g' g fis fis( ais) ais( h)
h,8 g'16 fis e d cis h h4.
}

bottomA = \relative h {
\set Staff.midiInstrument = "harpsichord"
\globalA
\tripletBeams
\tupletUp
\clef bass

\partial 4
r4
h8 cis d ais h cis d ais
h8 e, fis fis, h4 r8 h'
h8 ais r a a gis r g
g8 fis e g fis gis ais h
%% Takt 5 ----------------------------------------------
h,8 cis d ais h cis d ais
h8 e fis fis, h4 r16 h' a h
e,8 e, r e a4 r16 a' g a
d,8 d, r d g4 r8 h
e8 r d r ais r r fis'
%% Takt 10 =============================================
h8 a g g, fis fis' ais fis
h8 h, h h e, e' g e
a8 a, a a d, d' cis d
e8 fis g e fis gis ais fis
h8 g e fis h, h' h ais
%% Takt 15 ---------------------------------------------
h8 h, a g fis 4 r
r16 h' h( ais) ais( h) h( ais) ais4 r8 fis
h8. cis16 h a g fis e8. dis16 e fis g e
a8. h16 a g fis e d8. cis16 d e fis d
g8 g, g g fis e' d fis
%% Takt 20 =============================================
g8 e fis fis, h h, d fis
h8 e fis e d e d cis
h e fis fis, h[ h'16 cis d8 h]
e8 e, r e, a[ a'16 h cis8 a]
d8 d, r d, g[ g'16 fis e8 d]
%% Takt 25 ---------------------------------------------
cis[ e] fis[ e] d e d cis
h8[ d] e[ g~] g fis16 g a4
<< \new Voice { \stemUp   d8 s8 s4 }
   \new Voice { \stemDown d,8 g a ais } >> h[ cis] d[ cis]
h8 g a a, d fis16 e fis8 d
g8 fis e e, a gis fis fis'
%% Takt 30 =============================================
h8 a gis fis gis cis, eis cis
fis8 fis, r h e e, r a
d8 d, r gis cis[ h] a[ gis]
fis8 gis a eis fis gis a eis
fis8[ h] cis[ cis,] fis4 r8 fis'
%% Takt 35 ---------------------------------------------
fis8\prall eis r e e\prall dis r d
cis8 fis ais fis h e, d'32[ cis h16 cis e]
ais,16 fis' fis h, h a gis a gis eis' eis h a gis fis eis
fis8 gis a eis fis gis a eis
fis8 h cis cis, fis gis a fis
%% Takt 40 =============================================
h16( a gis fis) gis8 h e,16( d cis h) cis8 e
a16( g fis e) fis8 a d,16( c h a) h8 d
g8 fis g16( fis e d) cis8[ c] h16*2/3[ ais h] cis[ h ais]
h16 fis fis eis eis( e'!) e( fis) g( h,) h( a) a( g) g( fis)
fis( fis') fis( e) e( d) d( cis) cis4 r8 eis
%% Takt 45 ---------------------------------------------
fis8[ eis] fis[ f] e[ g,] a[ cis]
d8 cis d g cis,[ e] fis[ ais]
h8[ ais] h[ b] a[ c,] d[ fis]
g8 fis g16( gis) gis a a( g) g( fis) g( fis) fis( e)
fis16( gis) gis( ais) ais( h) h( ais) h8 g e fis
%% Takt 50 =============================================
gis16( fis) fis( eis) eis( fis) fis( eis) fis8 d h cis
fis,16( fis') fis( e) e( d) d( cis) cis( h') h( a) a( gis) gis( fis)
fis16( fis') fis( e) e d d cis cis h  h a a gis gis fis
fis8 eis16 dis eis8 cis cis,8[ eis'16 dis eis8 cis]
cis,8[ eis'16 dis eis8 cis] a[ h] cis[ cis,]
%% Takt 55 ---------------------------------------------
fis8 fis'16 gis fis e d cis h8. a!16 h cis d h
e,8 e'16 fis e d cis h a8. g!16 a h c a
d8 d, d d cis gis'' a cis
d8 h cis cis, fis[ fis,] a[ cis]
fis8 fis e e dis dis h h
%% Takt 60 =============================================
e8 e d d cis cis a a
d8 d g g cis, cis fis fis
h,8 h e e a, a d d
<< \new Voice \relative g  { \stemDown \shiftOff g8 a h fis }
   \new Voice \relative g, { \stemDown \shiftOnnn g8 s s s   } >> g a h fis
g8 c d d, g, a h c
%% Takt 65 ---------------------------------------------
d8 d c c h h g g
c8 c h h a a f f
h8 h e e a, a d d
g,8 g c c fis, fis h h
e8 fis g dis e fis g dis
%% Takt 70 =============================================
e8 a, h h e,4 r8 e'
a8[ g] fis[ e] d c h a
g'8 fis e d c h a g
fis'8 e dis cis h a g fis
e h'16 cis dis8 h h, dis'16 cis dis8 h
%% Takt 75 ---------------------------------------------
h,8 dis'16 cis dis8 h e, e'16 dis e8 e,
h8 r16 h'' h( a) a( g) a( g) g( fis) g( fis) fis( e)
fis16( e) e( dis) e( d) d( cis) d( c) c( h) c( h) h( a)
h16( a) a( gis) a( g) g( fis) g( fis) fis( g) g fis fis eis
eis2 fis4 r8 h
%% Takt 80 =============================================
h'8 cis d ais h cis d ais
h8 e, fis fis, h4 r8 h'
h8\prall ais r a a gis r g
fis8 h, dis h e a16 g fis e fis a
dis,16 h' h e, e d cis d cis ais' ais e d cis h ais
%% Takt 85 ---------------------------------------------
h8 cis d ais h cis d ais
h8 e fis fis, h cis d h
e16( d cis h) cis8 e a16( g fis e) fis8 a
d,16( c h a) h8 d g16( f e d) e8 g
c,8 h c16 e a g fis8[ f] \times 2/3 { \showTripletNumber e16 dis e fis e dis }
%% Takt 90 =============================================
e16( h') h( ais) ais a a h c( e,) e( d) d c c h
h( h') h( a) a( g) g( fis) fis4 r8 ais
h8 ais h b a c, d fis
g8 fis g c fis, a h, dis
e8 dis e es d[ f] g,[ h]
%% Takt 95 ---------------------------------------------
c8 h c cis d16 c c h c( h) h( a)
h16( a) a( g) a( e') e( dis) e8 c a h
cis16( h') h( ais) ais( h) h( ais) h8 g e fis
h16 h, h( a) a( g) g( fis) fis( e') e( d) d( cis) cis( h)
h16( h') h( a) a( g) g( fis) fis e' e( d) d( cis) cis( h)
%% Takt 100 ============================================
h8[ ais16 gis ais8 fis] fis,[ ais'16 gis ais8 fis]
fis,[ ais'16 gis ais8 fis] d[ g16 fis e8 fis]
h,8 r e r cis r fis r
d8 r h r cis r cis' r
d8 r d, r d r cis r
%% Takt 105 --------------------------------------------
h8 h' c h a[ fis] h,[ h']
e8 d cis h a g fis e
d'8 cis h a g fis e d
cis' h ais gis fis e d cis
h4 r8 h e4 r8 e
%% Takt 110 ============================================
a,4 r8 a d4 r8 d
g,8 g g g fis e' d fis
g8[ e] fis[ fis,] g16 g' g fis fis e e fis
fis8 r16 fis' fis( e) e( d) e( d) d( cis) d( c) c( h)
c16( h) h( a) h( a) a( g) a( g) g( fis) g( fis) fis( e)
%% Takt 115 --------------------------------------------
fis16( e) e( d) e( d) d( cis) d( cis) cis( h) cis( h) h( ais)
h16 fis' h cis h a g fis e8. d!16 e fis g e
a,16 e' a h a g fis e d8. cis16 d e fis d
g8 g, g g fis e' d fis
g8 e fis fis, h4. \bar "|."
}

clavecinA = \context PianoStaff <<
%{
   \new Staff \with {
      \remove "Time_signature_engraver"
      \remove "System_start_engraver"
      fontSize = #-2
      \override StaffSymbol #'staff-space = #(magstep -2)
      firstClef = ##f
   }
   \relative c' {
      \stopStaff
      \skip 1*56
      \startStaff
      \clef treble
      s4 s2 eis16^"ossia" s16 s8 s4
      \stopStaff
   }
%}
   \context Staff = "treble" {
      \topA
   }
   \context Staff = "bass" {
      \bottomA
   }
>>
