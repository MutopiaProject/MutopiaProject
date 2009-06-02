\header {
%  enteredby =  "Andrew C. Norman"
  maintainer =    "Andrew C. Norman"
  maintainerEmail = "an308@cam.ac.uk"
  copyright =  "Public Domain"
%  filename =   "mendelssohn-scherzo-eminor.ly"
  title =   "Scherzo in E minor"
  opus =    "Op. 16 No.2"
  composer =   "Felix Mendelssohn"
  style =   "Romantic"
  date = "1819"
  source =  "http://imslp.org/wiki/Image:Mendelssohn_-_Op.16_-_3_Caprices.pdf"
%  lastupdated = "2009/04/29"

  mutopiainstrument = "Piano"
  mutopiatitle =      "Scherzo in E minor"
  mutopiacomposer =   "Mendelssohn-BartholdyF"
  mutopiaopus =       "Op. 16, No. 2"

 footer = "Mutopia-2009/06/02-1653"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.10.33"

upper = \relative c' {
  \clef treble
  \key e \minor
  \time 4/4
	\partial 8  
	b''16^\markup {\bold "Presto"}\p b |
				%bar1:
	b4. b16 b b4. b16 b |
	b4 b b4.-> <b g>16 <b g> |
	<b g>4. <b g>16 <b g> <b g>4. <b g>16 <b g> |
	<b g>4 <b g> <b g>4.-> e,8-.\pp |
				%bar5:
	dis-. e-. fis-. dis-.\grace {fis16} e8-. dis-. e-. g-. |
	fis-. g-. a-. fis-. \grace {a16}  g8-. fis-. g-. b-. |
	\grace {b16} e8-. d-. c-. b-. c-. b-. a-. g-. |
	fis-. \grace {a16} g8-. fis-. \grace {a16} g8-. fis-. fis'-. b,-. r |
	r <b b,>-. <b b,>-. <b b,>-. <b b,>-. <b b,>-. <b b,>-. <b b,>-. |
				%bar10:
	<b b,>-. <b b,>-. <b b,>-. <b b,>-. <b b,>-. <b b,>-. <b b,>-. <b b,>-. |
	<b b,>-. <b b,>-. <b b,>-. <b b,>-. <b b,>-. e,-. c-. <e a>-. |
	<<
	  {
	    s2 s4 b'~-> |
	    b2. b4~-> |
	    b2 s2
	  }\\
	  {
	    b,8-. <e g>-. b-. <dis fis>-. e4-. r8 e-. |
	    dis-. e-. f-. dis-. e4-. r8 g-. |
	    fis-. g-. a-. fis-. g-. <e g>-. <g b>-. <e g>-. |
	  }
	>>
				%bar15:
  <cis' e>-.\pp <e, g>-. <cis' e>-. <e, g>-. <cis' e>-. <e, g>-. <cis' e>-. <e, g>-. |
  <g b>-. <fis a>-. <e g>-. <dis fis>-. e4-. r8 e16\f e |
  e4. e16 e e4. e16 e |
  e4 e e4.-> <e fis>16\f <e fis> |
  <e fis>4. <e fis>16 <e fis> <e fis>4. <e fis>16 <e fis> |
				%bar20:
  <e fis>4 <e fis> <e fis>4.-> <e fis>8 |
  <d b'>\pp fis \grace {a16} g8_\markup{\italic "staccato"} fis <d b'> fis \grace {a16} g8 fis |
  <e cis'> fis \grace {a16} <g e>8 fis \grace {a16} <e g>8 fis \grace {a16} <e g>8 fis |
  <d b'> fis \grace {a16} g8 fis <d b'> fis \grace {a16} g8 fis |
  <e cis'> fis \grace {a16} <e g>8 fis \grace {a16} <e g>8 fis \grace {a16} <e g>8 fis |
				%bar25:
  <d fis> d' d d d d d d |
  d d d d d d d d |
  d d d d d d d d |
  d-. d,-. e-. cis'-. b-. d,-. cis-. ais'-. |
  <d fis>-.\p <d fis>-. <cis e>-. <cis e>-. <b d>-. <b d>-. <a! cis!>-. <a cis>-. |
				%bar30:
  <g b>-. <g b>-. <fis a>-. <fis a>-. <e g>-. <e g>-. <d fis>-. <cis e>-. |
  <b d>-. <b d>-. <cis e>-. <d fis>-. <cis e>-. <cis e>-. <b d>-. <ais cis>-. |
  <d fis>-. <d fis>-. <cis e>-. <cis e>-. <b d>-. <b d>-. <a! cis>-. <a cis>-. |
  <g b> <g b> <fis a> <fis a> <e g> <e g> <d fis> <cis e>|
	<b d> <b d> <cis e> <d fis> <cis e> <cis e> <b d> <ais cis>|
				%bar35:
  b b r <eis, gis>\p r fis r <ais e'> |
  r <b d> r <eis gis> r fis r <ais e'!> |
  r <b d> r <eis gis> r fis r <e g> |
  r\pp <d fis b d>\arpeggio r <e g> r <d fis b d>\arpeggio r <e g> |
  r <d fis b d>\arpeggio r <e g> r <e g> r4 |
%bar40:
  R1 |
  r8 <d fis>-.\p <b' d>-. <d, fis>-. <b' d>-. <d, fis>-. <b' d>-. <d, fis>-.|
  <b' d>4 r4 r2 |
  r8 <d, f>-.\p <b' d>-. <d, f>-. <b' d>-. <d, f>-. <b' d>-. <d, f>-.|
  <b' d>4 r4 r8 <e, gis>-. <b' d>-. <e, gis>-. |
%bar45:
  <b' d>4 r4 r8 <e, gis>-.[ <b' d>-.] <c, e>16\ff <c e> |
  <c e>4. <c e>16 <c e> <c e>8 a <a c> <c e> | 
  <e a> <c e> <e a> <c e> <e a>4 r8 e'16\p( c |
  e c a e a c e c) e( c a e a c e c) |
  e( c a e e' c a e e' c a e a c e c) |
%bar50:
  e( c a e a c e c) e( c a e a c e c) |
  e( c a e e' c a e e' c a e a c e c) |
  e cis ais e ais cis e cis e cis ais e ais cis e cis |
  e cis ais e e' cis ais e e' cis ais e ais8 #(set-octavation 1) b'16 g |
  b g e b a'! fis dis c! g' e b g fis' dis c a #(set-octavation 0) |
%bar55:
  e' b g e c' g e c b' g e b ais' g e ais, |
  b' fis dis b a'! fis dis c g' e b g fis' dis c a |
  e' b g e cis' ais g e ais g e cis g' e cis ais |
  b8\ff <b b'> <dis dis'> <cisis cisis'> <dis dis'> <b b'> <fis' fis'> <eis eis'> |
  <fis fis'> <dis dis'> <a' a'> <gis gis'> <a a'> <fis fis'> <c'! c'!> <b b'> |
%bar60:
  <c c'> <b b'> <c c'> <b b'> <c c'> <b b'> <a a'> <g g'> |
  <fis fis'> <e e'> <dis dis'> <c c'> <b b'> <a a'> <g g'> <fis fis'> |
  e'4.\ff e16 e e4. e16 e |
  e4 e e4. e'8-.\pp |
  dis-.[ e-. fis-. dis-.] \grace {fis16} e8-.[ dis-. e-.] c,16\ff c |
%bar65:
  c4 c c4. c'8-.\pp |
  b-. c-. d-. b-. \grace {d16} c8-. b-. c-. e-. |
  d-. e-. f-. d-. \grace {f16} e8-. dis-. e-. <fis e c a>16\ff[ <fis e c a>]|
<fis e c a>4. <fis e c a>16 <fis e c a> <fis e c a>4. <fis e c a>16 <fis e c a>|
<fis e c a>4-._\markup{\italic "dim."}( <fis e c a>-. <fis e c a>-. <fis e c a>-. ) |
%bar70:
\grace {e16} e'8\p( c) b-. a-. g4( fis8) fis-. |
\grace {e16} e'8( c) b-. a-. g4( fis8) fis-. |
\grace {e16} e'8( cis) b-. ais-. cis( ais) fis-. g-. |
g( fis) dis-. e-. g( fis) dis-. e-. |
<g, e'>\p-. b-. \grace {d!16} c8-. b-. <g e'>-. b-. \grace {d16} c8-. b-. |
%bar75:
<a fis'>-. b-. \grace {d16} <c a>8-. b-. \grace {d16} <c a>8-. b-. \grace {d16} <c a>8-. b-.   |
<g e'> b \grace {d16} c8 b <g e'> b \grace {d16} c8 b |
<a fis'> b \grace {d16} <c a>8 b \grace {d16} <c a>8 b \grace {d16} <c a>8 b   |
<g e'>4 r8 <g b> <e' g>-. <d f>-. <c e>-. <b dis>-. |
<c e>4( g8) g-. <e' g>-. <d! f>-. <c e>-. <b dis>-. |
%bar80:
<c e>4( g8) g-. <e' g>-. <d! f>-. <c e>-. <b dis>-. |
<c e>-. g-. a-. fis'!-. e-. g,-. fis-. dis'-. |
<g b>-.\p <g b>-. <fis a>-. <fis a>-. <e g>-. <e g>-. <d! fis>-. <d fis>-. |
<c e>-. <c e>-. <b d>-. <b d>-. <a c>-. <a c>-. <g b>-. <fis a>-.|
<e g> <e g> < fis a> <g b> <fis a> <fis a> <e g> <dis fis> |
%bar85:
<g b> <g b> <fis a> <fis a>_\markup{\italic "dim."} <e g> <e g> <d! fis> <d fis> | \clef "bass" |
<c e>\pp <c e> <b d> <b d> <a c> <a c> <g b> <fis a> |
<e g> <e g> <fis a> <g b> <fis a> <fis a> <e g> <dis fis> |
e\p e r <d f> r <c e> r <fis c'> |
r <g b> r \clef "treble" <d' f> r <c e> r <fis c'>|
%bar90:
r <g b> r <d' f> r <c e> r <fis c'> |
<g b>\pp r <g e'> r <e fis> r <dis fis b> r|
e'\p e r <d f> r <c e> r <fis,! c'> |
r <g b> r <d f> r <c e> r <fis,! c'> |
r <g b> r <d f> r <c e> r <fis,! c'> |
%bar95:
<g b> r <g e'> r <e fis> r <fis b> r|
r4 r8 e'16\f e g4 b|
e4.-> b16 b e4 g |
b4.-> e,16 e g4 b |
\key e \major
#(set-octavation 1) \grace {b16([ e gis]} b16\pp)( a gis a b a gis fis e fis gis fis e b gis b) #(set-octavation 0)|
%bar100:
e (b gis b e b gis b e, fis gis fis e b gis b) |
e (b gis b e b gis b e, fis gis fis e b gis b) |
<<
  {
    s2 b''~-> |
    b8 s8 
  }\\
  {
    e,,8 b16 e gis b e gis r8 <b, fis'> <e gis> <fis b,> |
    <e gis b> b16 e 
  }
>>
#(set-octavation 1)
<<
  {
    s4 b''2~-> |
    b1~ |
    \hideNotes b8 s8 s4 s2 |
  }\\
  {
    gis,16 b e gis r8 <b, fis'> <e gis> <b fis'>|
    <e gis> <b fis'> <e gis> <b fis'> <e gis> <b fis'> <e gis> <b fis'> |
    \slurUp <e gis b>[( <b fis'>)  <e gis>( <b fis'>)] <e gis>( <b fis'>) <e gis>( <b fis'>) |
   }
  >>
%bar106:
  <e gis>4 r <b e b'>\pp r |
  <b e b'> #(set-octavation 0) r r2 |
<<
{
R1 \bar "|."
}
{
s4 s2 \fermata s4
}
>>
}

lower = \relative c {
  \clef bass
  \key e \minor
  \time 4/4
      \partial 8
      r8 |
%bar1:  
  R1 |
  R1 |
  R1 |
  r2 r4 r8 \clef "treble" <g'' b>-. |
%bar5:
  <fis b>-. <g b>-. <a b>-. <fis b>-. <g b>-. <fis b>-. <g b>-. <e b'>-. |
  <dis b'>-. <e b'>-. <fis b>-. <dis b'>-. <e b'>-. <dis b'>-. <e b'>-. r |
  r4 r8 b'-. e-. d-. c-. b-. |
  <ais e'>-. <ais e'>-. <ais e'>-. <ais e'>-. <b dis>4-. r8 \clef "bass" b,,,-.^\p |
  g-. b-. e-. fis-. g-. fis-. e-. fis-. |
%bar10:
  g-. b-. e-. fis-. g-. fis-. e-. fis-. |
  g-. b-. e-. fis-. \clef "treble" g-. e-. a-. fis-. |
  b-. ais-. b-. <a b,>-. <g e>4-. r8 <g b>-. |
  <fis b>-. <g b>-. <a b>-. <fis b>-. <g b>4-. r8 <e b'>-. |
  <dis b'>-. <e b'>-. <fis b>-. <dis b'>-. <e b'>-. <g b>-. <e g>-. <g b>-. |
%bar15:
  <ais, cis>-. <e' g>-. <ais, cis>-. <e' g>-. <ais, cis>-. <e' g>-. <ais, cis>-. <e' g>-. |
  b-. b-. b-. <b a'!>-. <e g>4-. r |
  r2 r4 r8 <a c>-.^\p |
  <b e,>-. <a c>-. <b d>-. <b e,>-. <a c>-. <gis b>-. <a c>-. r |
  r2 r4 r8 \clef "bass" fis,,-.^\p |
%bar20:
  ais-. cis-. fis-. ais-. cis-. fis,-. fis'-. fis,-. \clef "treble" |
b <fis' b> d <fis b> b,<fis' b> d <fis b> |
fis, ais' <fis b> ais <fis b> ais <fis b> ais |
b, <fis' b> d <fis b> b,<fis' b> d <fis b> |
fis, ais' <fis b> ais <fis b> ais <fis b> ais |
%bar25:
b4 r8 d,-. <b' d>-. <a! c>-. <g b>-. <fis ais>-. |
<g b>4( d8) d-. <b' d>-. <a! c>-. <g b>-. <fis ais>-. |
<g b>4( d8) d-. <b' d>-. <a! c>-. <g b>-. <fis ais>-. |
<g b> r <e g> r fis r \clef "bass" <fis, e'> r |
<b d>4 r4 r2 |
%bar30:
<b cis e,>4 r r b^\f |
  <<
    {
      fis'1->~|
      fis4 s4 s2|
    }\\
    {
      fis,4 r r2|
      <b d>4 r r2|
    }
  >>
<b, cis e,>4 r r b^\f |
  <<
    {
      fis'1->~|
      fis8 s8 s4 s2|
    }\\
    {
      fis,4 r r2 |
      <b d>8 r <b d> r <ais cis> r g' r|
    }
  >>
%bar36:
  fis r <b d> r <ais cis> r \clef "treble" g'! r |
  fis r <b d> r <ais cis> r <ais cis> r |
  b, r <ais' cis> r b, r <cis' ais> r |
  b, r <ais' cis> r <ais cis> r <cis ais> b16^\f[ b] |
%bar40:
  b4. b16 b b4. b16 b |
  b4 b b4.-> <a? b>16^\f <a b> |
  <a b>4. <a b>16 <a b> <a b>4. <a b>16 <a b> |
  <a b>4 <a b> <a b>4.-> <e gis b>16 <e gis b> |
  <e gis b>4^\markup {\italic piu} <e gis b>^\f <e gis b>4.-> <e gis b>16 <e gis b> |
%bar45:
  <e gis b>4 <e gis b> <e gis b>4.-> a16 a |
  a4. a16 a a8-. c,-. e-. a-. |
  c-. a-. c-. a-. c4 r \clef "bass" |
  <a,, a,>4^\markup {\italic "con fuoco"} <e' fis a c> <a, a,> <e' fis a c>|
  <a, a,>4 <e' fis a c> <e fis a c> r|
%bar50:
  <a, a,>4 <e' fis a c> <a, a,> <e' fis a c>|
  <a, a,>4 <e' fis a c> <e fis a c> r|
  <fis, fis,>4^\f <fis' cis ais'> <fis, fis,> <fis' cis ais'>  |
  <fis, fis,>4 <fis' cis ais'> <fis cis ais'> r8 <b, b,>16^\ff <b b,> |
  <b b,>4. <b b,>16 <b b,> <b b,>4. <b b,>16 <b b,> |
%bar55:
  <b b,>4 <b b,> <b b,>4.-> <b b,>16 <b b,> |
  <b b,>4. <b b,>16 <b b,> <b b,>4. <b b,>16 <b b,> |
  <b b,>4 <b b,> <b b,>2-> |
  r8 <b b,> <dis dis,> <cisis cisis,> <dis dis,> <b b,> <fis' fis,> <eis eis,> |
  <fis fis,> <dis dis,> <a' a,> <gis gis,> <a a,> <fis fis,> <c'! c,!> <b b,> |
%bar60:
  <c c,> <b b,> <c c,> <b b,> <c c,> <b b,> <a a,> <g g,> |
  <fis, fis'> <e e'> <dis dis'> <c c'> <b b'> <a a'> <g g'> <fis fis'> |
  <e'' e,>4. <e e,>16 <e e,> <e e,>4. <e e,>16 <e e,> |
  <e e,>4 <e e,> <e e,>4. \clef "treble" <g' b>8-. |
  <fis b>-. <g b>-. <a b>-. <fis b>-. <g b>-.[ <fis b>-. <g b>-.] \clef "bass" <c,, c,>16 <c c,> |
%bar65:
  <c c,>4 <c c,> <c c,>4. \clef "treble" <e' g>8-. |
  <d g>-. <e g>-. <f g>-. <d g>-. <e g>-. <d g>-. <e g>-. <c g'>-. |
  <b g'>-. <c g'>-. <d g>-. <b g'>-. <c g'>-. <b g'>-. <c g'>-. r |
  R1 |
  R1 \clef "bass" |
%bar70
  a,4 r <fis' a c e>8 <fis a c e> <fis a c e> r |
  a,4 r <fis' a c e>8 <fis a c e> <fis a c e> r |
  fis,4 r <fis' ais cis e>8 <fis ais cis e> <fis ais cis e> r |
  <fis ais cis e>8 <fis ais cis e> <fis ais cis e> r <fis ais cis e>8 <fis ais cis e> <fis ais cis e> r |
  b,-. <b' e>-. g-. <b e>-. b,-. <b' e>-. g-. <b e>-. |
%bar75:
  b,-. dis'-. <b e>-. dis-. <b e>-. dis-. <b e>-. dis-. |
  e, <b' e> g <b e> e, <b' e> g <b e> |
  b, dis' <b e> dis <b e> dis <b e> dis |
  g, g g g g g g g |
  <<
    {
      g g g g g g g g |
      g g g g g g g g |
    }\\
    {
      c,4 r g r|
      c r g r|
    }
  >>
%bar81:
  <c g'>8 r <a' c> r b r <a b> r |
  <g b>4 r r2 |
  <a, c e fis>4 r r e'^\f |
  <<
    {
      b'1~-> |
      b4 s4 s2 |
    }\\
    {
      b,4 r r2 |
      <e g>4 r r2 |
    }
  >>
%bar86:
  <<
    {
      <e, fis>1 |
      b'1 |
    }\\
    {
      a,4 r r2 |
      b4 r r2 |
    }
  >>
  e8 r gis r a r dis r |
  e r gis r a r dis r \clef "treble" |
%bar90:
  e r gis r a r dis r |
  e r <c e> r a r b r |
  e r gis r a r dis, r |
  e r gis, r a r dis, r |
  e r \clef "bass" gis, r a r dis, r |
%bar95:
  e r <c e> r a r <b dis> r |
  <e e,>4 r r2 |
  R1 |
  R1 \bar "||" 
  \key e \major
  \grace {s16 s s} <e e,>4 r8. \clef "treble" <dis'' b gis b,>16 <dis b gis b,>2-> \clef "bass" |
%bar100:
  <e,, e,>4 r8. \clef "treble" < b'' b,>16 <b b,>2-> \clef "bass" |
  <e,, e,>4 r8. <b' b,>16 <b b,>2-> |
  e,,4 r r2 |
  r2 r4 \clef "treble" b'''8 r |
  <e, e'>8 r <b b'> r <e, e'> r <gis gis'> r \clef "bass" |
%bar105:
  <b, b'>8 r <e e'> r <gis, gis'> r <b b'> r |
  <e e,>4 r \clef "treble" <e'' gis> r |
  <e gis> r \clef "bass" <e,,, e,> r |
  <e e,>4 r r2 \fermata \bar "|."
}


\score {
   \context GrandStaff <<
    \context Staff = "one" <<
      \upper
    >>
    \context Staff = "two" \with { \consists "Page_turn_engraver" } <<
      \lower
    >>
  >>
\layout { }
  \midi { }
}

\paper{
  %#(define page-breaking ly:page-turn-breaking)
}
