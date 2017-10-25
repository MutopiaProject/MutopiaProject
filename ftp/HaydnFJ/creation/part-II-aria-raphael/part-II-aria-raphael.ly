\version "2.19.65"

\paper {
    page-top-space = #0.0
    %indent = 0.0
    %line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
   %page-count = 5

   system-system-spacing =
    #'(
       %(basic-distance . 0)
       %(minimum-distance . 0)
       %(padding . 5)
       %(stretchability . 20)
      )
}

%#(set-default-paper-size "a4")

#(set-global-staff-size 18)

\include "articulate.ly"

\header {
        title = "Die Schöpfung"
        subtitle = "Part II: 22. Aria (Raphael)"
        %piece = "Part II: 22. Aria (Raphael)"
        mutopiatitle = "Air (Raphael)"
	composer = "F.J.Haydn (1732 - 1809)"

        mutopiacomposer = "HaydnFJ"

        opus = "Hob. XXI:2"
        date = "1797 - 1798"
        mutopiainstrument = "Voice (Bass) and piano"
        style = "Classical"
        source = "Liepzig: C. F. Peters Plate 7619"
        % "http://hz.imslp.info/files/imglnks/usimg/7/71/IMSLP35013-PMLP40341-Haydn-SchoepfungVSpeters.pdf page 82ff"
        % publish date estimated at 1880
        maintainer = "Alexander Brock"
        maintainerEmail = "alexander@lunar-orbit.de"

        license = "Creative Commons Attribution-ShareAlike 4.0"
        footer = "Mutopia-2017/10/24-2199"
        copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2017 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
        tagline = ##f
}

melody = \relative c {
  \set Score.tempoHideNote = ##t
  \tempo 4 = 105
  s2.*10
  d4 fis a |
  b2 g4 e4~ e8.( fis16) g( a) b( cis) |
  d4 d, r |
  r2. |
  r2. |
   a'4 e cis |
    fis2 d8( b) |
     e2 gis,8 gis |
      a4 a r |
  r2.*5 |
   r4 r a' |
   a2 a4 |
   a2 g4 fis~\( fis8 c' b\) a |
    g8( fis) e4 r |
     r4 r fis |
      g2 e8( cis) |
       a'2 fis8( d) |
   b'4~ b8( g) e \noBeam d |
    a'4 a, r |
   r4 r a |
    d2 fis,4 |
     g2 g4 |
      a2 a4 |
  bes2 r4 |
   r4 r a |
  bes2 bes4 |
   b!2 b4 |
    c2 c4 |
     f,2 r4 |
 s2.*4 |
  r4 r8 a' a a |
  bes4. a8 bes fis! |
   g4  r8 b! b b |
    c4. b8 c gis |
  a4 r4 r |
   r4 r a |
 \set Score.tempoHideNote = ##t
 \tempo 4 = 63
d2\fermata  \tempo 4 = 90 a4 |
  \tempo 4 = 57 f4.\fermata \tempo 4 = 90 f8 e d |
  \tempo 4 = 67  a'2.\fermata |
 \set Score.tempoHideNote = ##t
 \tempo 4 = 105
   d,4 fis! a |
    b2 g4 |
     cis2 cis4 |
      d2 r4 |
       r2. |
        r4 r a |
  a2 e4 |
   fis2 d8( b) |
    e2 gis,4 |
   a2 r4 |
   r2. |
  r4 r8 a'8 \noBeam cis \noBeam a |
   d4. a8 \noBeam fis \noBeam d |
    a'4 r8 a \noBeam cis \noBeam a |
     d4. \tempo 4 = 100 a8 \noBeam \tempo 4 = 95 fis \noBeam \tempo 4 = 90 d |
    \tempo 4 = 85 a'2 a,4 |
   d4( fis) a |
    b4( g) d |
    \tempo 4 = 75 c'4.(\fermata \tempo 4 = 85 b16 c d8) \noBeam c |
  \tempo 4 = 75 b2\fermata \tempo 4 = 95 g4 |
   cis2 cis4 |
    d2 \tuplet 3/2 { b8( g e)} |
     d2 \acciaccatura fis8 e( d) |
      \tempo 4 = 105 d4 r r |
  r2. |
  r4 r a'4 |
   a2 g4 |
    g8( fis) fis4 r |
     a2 g4 |
     \appoggiatura g8 fis4 r8 a a a |
  \appoggiatura b8 a4 a r |
   a4. b16 a g fis e d |
    cis4. e16 fis a g fis e |
     fis4 r8 d fis a |
  d2 d4 |
   d4.( cis16 b a g fis e d2) \acciaccatura fis8 e( d) |
    d4 r r |
     r2. |
      r4 r8 d \noBeam e \noBeam fis |
   g8(\fermata a) b4\fermata g4 |
    cis2 cis4 |
     d2 \tuplet 3/2 { b8( g e)} |
      d2 \acciaccatura fis8 e8( d) |
       d2 r4  |
    s2.*6
}

rh = \relative c' {
  <d fis a d>4^\markup{\large Maestoso} ( <fis fis'>4 <a d fis a> )|
   <d, g b d>4( <g g'> <b d g b>) |
    <e, g cis e>4~ q8. <fis fis'>16 <g g'> <a a'> <b b'> <cis cis'> |
  <d fis d'>4  d,8 \noBeam <a' d fis a>16-. <a d fis a>16-. q8-. q-. |
      <a e' a>8-. r <b d gis>-. r <e gis b d>-. r |
       <e a cis>8 \noBeam a,16-. a-. a8-. a-. a-. a-.  |
       <a e' a>4( <e e'> <cis cis'>) |
   <fis a fis'>2 <d d'>8. <b b'>16 |
    <e a cis e>2 <b d gis>4 |
     <d gis b>8([ <cis a'>]) q \noBeam <e g>( <d fis> <cis e>) |
      <a' d fis a>2.^\markup{\translate #(cons -4 0) "Fl."} |
    <b d g b>4 g( b) |
     <e, g cis>~ q8. fis16-. << {  g-. a-. b-. cis-.} \\ { e,4} >> |
    <fis d'>4 r8 <a d fis a>16-. q-. q8-. q-. |
     <a e' a>8 r <b d gis>8 r8 <e gis b d> r |
    <e a cis>8 \noBeam  <a, a'>16 q q8 q q q |
     <a e' a>4 <a, e'>8 \noBeam a16 a a8 a |
      <a fis'>4. a16 a << { <b d>4 } \\ { a8 a} >> |
       <a cis>2 <gis d'>8( b) |
        <gis b>8([ a)] a <e' g!>[ (<d fis> <cis e>]) |
    <d fis a d>4( <fis fis'> <a d fis a>) |
     <d, g b d>4( <g g'> <b d g b>) |

     <e, g cis e>4~ q8. <fis fis'>16 <g g'> <a a'> <b b'> <cis cis'> |
      <d fis d'>4 d,8 \noBeam <d' fis a>16 q q8 q |
       <e a>8 r <d gis>16 a' b cis d e fis gis, |
        a8 \noBeam a,16 a a8 a a a |
    << {a8_. e( a g fis e  |
         fis8 a c b a g)  |
         fis2.
       <e g>4. fis8( g a) |
        fis8( cis d e) g16( fis e fis |
         g4.) g8 a16( g fis g |
          a4.) a8 b16( a g a |
            b2.) |
    e,8( gis a) \noBeam d32( cis b cis <d fis,>8) <gis,! d> |


       } \\ {s2.  dis2  e4 |
     <c e>2( <b dis>4) |
      b2~ b8 a |
       a4. cis8 d4~ |
        d8( b cis d e4~) |
         e8( cis d e fis4~) |
          fis8( dis e g e d |
     cis4.) e8

    } >>
   <b'( d,>4 <a) cis,>16( b <e, g!> a <d, fis> g <cis, e> fis |
  d8-.) <a d>8-.( q-. q-. q-. q-.) |
   <b d e>8 <d e> q q q q |
    <c d fis>8 <d fis> q q q q |
     <bes d g>8 <d g> q q q q |
      <c d fis>8 q q q q q |
   <bes d g>8 <g d' g> q q q q |
    <as d f>8 q q q q q |
     <a c f>8 q q q <g bes e> q |
   <a f'>8( c16 f a8\noBeam )   <c c'>8 q q |
    <c c'>8 <d d'>4 c'16( bes  a g c bes) |
     gis8( a) r8 <a, a'>-. q-. q-. |
      q8 <bes bes'>4 a'16( g f e a g |
       f8) f4 e16( f g f e d) |
        cis16( e gis a a,8) \noBeam a-. a-. a-. |
   bes4.( a8 bes  fis! |
    g4) g,8 \noBeam b'!-. b-. b-. |
     c4.( b8 c gis |
      a4) a,8  \noBeam
 \set Score.tempoHideNote = ##t
 \tempo 4 = 100
      <e' a cis!>8-. q-. q-. |
    <a d>8.( f'16 a8)  \noBeam <e, a cis>-.
 \set Score.tempoHideNote = ##t
 \tempo 4 = 95

    q-. q-. |
     <d a' d>4 r r\fermata |
    \clef bass
     <d, gis d'>2 r4\fermata  <e a cis>2.\fermata  |
     \clef treble
    <fis! a d>4^( fis'! a) |
     <g, b d>4( g' b) |
      <g, cis e^~>4 e'8. fis16 g a b cis |
       <fis, d'>4 d8 \noBeam <a' d fis a>16 q q8 q |
        <a e' a>8 r <b d gis> r <e gis b d> r |
   <e a cis>8 \noBeam <a, a'>16 q q8 q q q |
    q4 << {e^"Horn"( cis) |
           fis2( <b, d>4) |
            cis2 d8( b) |
          } \\ {
             a8 a16 a a8 a |
              a4 r8 a16 a a8 a |
               a2 gis4 }>>
    <a a'>8 a'16 a a8( <a cis> e' g! |
     <d fis>8) <fis a>16( <e g> <d fis>8) cis'16( a d a fis d) |
      <cis e a>8 \noBeam a16 a a8 \noBeam <a cis>( e' g |
       <d fis>8) <fis a>16( <e g> <d fis>8) cis'16( a d a fis d) |
    <cis e a>8 \noBeam a16 a a8 \noBeam <a cis>( e' g |
     <d fis>8) <fis a>16( <e g> <d fis>8) cis'16( a d a fis d)
  << { <cis e a>2\fermata r4  |
     } \\ {
    r8 a16 a a8 r\fermata r4 |} >> |
  \clef bass
   <d,, a' d>2. <d b' d>2. <a' c d>2 r4\fermata |
    <b d>2\fermata r4 |
    \clef treble
   << { g'2.  |
        fis4( a b) } \\
      { cis,!2( e4)  |
      d2.} >> |
    <a d fis>4 r <g cis e>( |
     <fis d'>4) r8 <a' fis' a>-. q-. q-. |
    << { \acciaccatura cis'8 b([ a)] } \\{ <e g>4} >>
     r8 e'16( d cis b a g) |
      <e g>8( <d fis>) r b'16( a g fis e d) |
       d8( cis) r e16( d cis b a g) |
        <e g>8( fis) r <fis' a>-. q-. q-. |
  \acciaccatura  cis'8 <b g>( a) r e'16( d cis b a g) |
   <e g>8( <d fis>) r b'16( a g fis e d) |
    d8( cis) r e16( d cis b a g) |
     <e g>8( <d fis>) r b'16( a g fis e d) |
      cis8 e a cis e g |
       <a, fis'>4 \tempo 4 = 105 <d fis a d> r |
        <fis, d'>2( <a c>4 |
         <fis ais>4 <g b>8) r <e g> r |
    <a, d fis>4  r <g cis e>( |
     <fis d'>8) \noBeam <d' d'>16 q q8 \noBeam q-. <e d'>-. <fis d'>-. |
      <g d'>8 a32( g fis g a8) \noBeam <d, d'>-. <e d'>-. <fis d'>-. |
   \tempo 4 = 95 <g d'>8 a32( g fis g a8) \noBeam \tempo 4 = 85 <d, d'>-. <e d'>-. <fis d'>-. |
        <g d'>4 \tempo 4 = 68 r\fermata \tempo 4 = 90 r |
   << { g2. |fis4( a b)} \\ { cis,2( e4) |d2.} >> |
   <a d fis>4 r <a cis e>( |
  \tempo 4 = 105  <fis d'>8) \noBeam <d' d'>16 q q8 \noBeam <fis' a> q q |
   << {\acciaccatura cis'8 b([ a)] } \\ {g4} >> r8  e'16( d cis b a g) |
    <e g>8( <d fis>) r <fis a> q q |
   << {\acciaccatura cis'8 b([ a)] } \\ {g4} >> r8  e'16( d cis b a g |
   fis8) \noBeam d'16 cis d cis b a g fis e d  |
   cis b a g  fis8 <fis a>8 <e g> <cis e> |
    d4 <a' d fis> r

    \bar "|."
}

lh = \relative c {
 <d d,>4^"Volles Orchester"  r8 d'16 d d8 d |
  <d,, d'>4 r8 d''16 d d8 d |
  <d,, d'>4 r8 d''16 d d8 d |
 <d,, d'>4 r8 <d' d'>16-. q-. q8-. q-. |
  <cis cis'>8-. r <b b'>-. r <e, e'>-. r |
   <a a'>4 r8 <a, a'>16 q q8 q |
   <cis cis'>4 r8 <cis' e a>16 q q8 q |
    <d, d'>4 r8 <d' fis>16 q q8 q |
     <e, e'>2 q4 |
      <a, a'>4 a'8 \noBeam <cis e>( <d fis> <e g!>) |
   <d fis>4 r8 d'16^"Tromp." d d8 d |
    <d,, d'>4 r8 d''16 d d8 d |
    <d,, d'>4 r8 d''16 d d8 d |
  <d,, d'>4 r8 <d' d'>16-. q-. q8-. q-. |
   <cis cis'>8 r <b b'> r <e, e'> r |
    <a a'>8 \noBeam a'16 a a8 a a a |
     <cis,, cis'>8 cis cis cis cis cis |
      <d d'>8 d d d d d |
       <e e'>8 e e e e e  |
  <a, a'>4  r8 a''~ a4 |
   <d,, d'>4 r8 <d d'>16 q q8 q |
    q4 r8 <d d'>16 q q8 q |
     q4 r8 <d d'>16 q q8 q |
      q4 r8 <d' d'>16 q q8 q |
       <cis cis'>8 r <b b'> r <e b' d> r |
  <a cis>8 \noBeam a16^"Streich-Orch." a a8 a a a |
   <c,, c'>8 q q q q q |
    <b b'>8 q q q <e e'> q |
     <a, a'>8 q q q <b b'> q |
      <e e'>4. \stemUp dis'8( e cis! \stemNeutral |
     d!8 e fis e d) d, |
      e16( dis e dis e8) e e e |
     fis16( eis fis eis fis8) fis fis fis |
      g16( fis g fis g8) g8 g gis |
       a8 <a a'> q q q q |
        q4 r r |
   <fis, fis'>8-. (q-.q-.q-.q-.q-.) |
    <g g'>4 r r |
     <a a'>4 r r |
      <bes bes'>2_\ff^"Kontrafag." q4(_\p |
   <a a'>4) r <a a'>( |
   <bes bes'>4) r <bes bes'>( |
    <b! b'!>4) r
    << { s4  |
         c'8 c c c c c}
       \\{ \stemNeutral <b,( b'>4 |
           \stemDown c2_\markup{\dynamic fz "Kontrafag."}) r4 } >> |
     f8( a16 c f8) \noBeam <f a> q q |
      <e g>8 q q <e c'> q q |
       <f c'>8 q <f a> q <e g> <d f> |
        <cis! e>8 q q q <cis a'> q |
  <d a'>8 q q <d f> <bes d> <bes g'> |
   <a a'>4 r8 <a a'>-. q-. q-. |
    <bes bes'>4.( <a a'>8 <bes bes'> <fis fis'> |
     <g g'>4) <g, g'>8 \noBeam <b'! b'!>-. q-. q-. |
   <c c'>4.( <b b'>8 <c c'> <gis gis'> |
    <a a'>4) <a, a'>8 \noBeam <g'! g'!>-. q-. q-. |
     <f f'>8. f''16 d8 \noBeam <g,, g'>-. q-. q-. |
   <f! f'!>4 r r\fermata |
   <bes, bes'>2 r4\fermata |
   <a a'>2.\fermata |
    <d d'>4 r8 d''16 d d8 d |
  <d,, d'>4 r8 d''16^"Tromp." d d8 d |
  <d,, d'>4 r8 d''16 d d8 d |
  <d,, d'>4 r8 d''16 d d8 d |
 <cis, cis'>8 r <b b'> r <e, e'> r |
  <a a'>8 \noBeam a'16 a a8 a a a |
  << { cis,4 r r |
       d r r |
       e r r |
     } \\ {cis,8 cis cis cis cis cis |
  d d d d d d |
  e e e e e e |
  } >> |
   <a a'>4 r8 a a' a, |
    d4 r8 <a' e'> <fis d'> <d a'> |
     <a a'>4 r8 a a' a, |
      d4 r8 <a' e'> <fis d'> <d a'> |
     <a a'>4 r8 a a' a, |
      d4 r8 <a' e'> <fis d'> <d a'> |
       <a a'>2\fermata r4 |
   <fis, fis'>2. |
    <g g'>2. |
     <fis fis'>2 r4\fermata |
   <g g'>2\fermata r4 |
   a'2 ais4 |
    b4( fis g) |
   a!4 r a |
   d,8( fis16 a d8) \noBeam <d d'>-. q-. q-. |
    <cis cis'>4  <cis e g a>4 <cis e a> |
     <d a'>4 <d d'>8 \noBeam <d' fis>_\markup{{"Streich-Orch."}} q q |
      <a e' g>4 a8( cis16 d e8 cis) |
  << {cis8[( d)]} \\ {d,4}>> d8 \noBeam \clef treble  b''16( a g fis e d) |
  \clef bass |
  << {d8([ cis])} \\ {a4} >>  a8( cis16 d e8 cis) |
   d,8( fis16 a d8) fis,16( g a b cis d) |
    <a e' g>4 a8( cis16 d e8 cis) |
     <d, cis'>8( fis16 a d8) \noBeam fis,16( g a b cis d) |
      <a, e' g>4  <a' cis>8 r <a cis> r |
   d8 a16 fis d4 r |
   << {d2.~ |d2} \\ {b2( fis4 | g2)} >> r4 |
   <a, a'>4 r <a a'>( |
   d)  r8 <fis fis'>-. <g g'>-. <a a'>-. |
    <b b'>4( \noBeam <c c'>8) \noBeam <fis, fis'>-. <g g'>-. <a a'>-. |
    <b b'>4( <c c'>8) \noBeam <fis, fis'>-. <g g'>-. <a a'>-. |
    <b b'>4 r\fermata r |
    a2( ais4) |
     b4( fis g) |
  a!4 r <a, a'>( |
  d8)( fis16 a d8) \noBeam <d a' d>8 q q |
   <cis a' cis>4 <cis e g a> <cis e a> |
    <d cis'>8( fis16 a d8) \noBeam <d, a' d> q q |
     <cis a' cis>4 <cis e g a> <cis e a> |
      <d fis a>4 r <fis a d> |
       <g b d>4 a <a, a'> |
        d4 <d, d'> r

}

songtext =  \lyricmode {
%\override LyricText.self-alignment-X = #LEFT
Nun4 scheint in vol2 -- lem4 Glan2 -- ze8 der Him4 -- mel
Nun4 prangt in ih2 -- rem4 Schmuk2 -- ke8 die Er4-- de.
Die4 Luft2 er4 -- füllt2 das leich8 -- " " te2 Ge -- fie4 -- der
die4 Was2 -- ser4 schwellt2 der4 Fi2 -- sche8 Ge -- wim4 -- el.
Den Bo -- den drückt der Tie -- re Last,
den Bo -- den drückt der Tie -- re Last.
Doch war noch al -- les nicht voll -- bracht,
doch war noch al -- les nicht voll -- bracht:
Dem Gan -- zen fehl -- te das Ge -- schöpf,
das Got -- tes Wer -- ke dank -- bar sehn,
des Her -- ren Gü -- te prei -- sen
soll.
Doch war noch al -- les nicht voll -- bracht:
Dem Gan -- zen fehl -- te das Ge -- schöpf,
das Got -- tes Wer -- ke dank -- bar sehn,
des Her -- ren Gü -- te prei -- sen soll,
das Got -- tes Wer -- ke
dank -- bar sehn, des Her -- ren Gü -- te
prei - " " " " - " " " " - - " " sen " " " " " " soll,
des Her -- ren Gü -- te prei -- sen soll,
des Her -- ren Gü -- te, des Her -- ren Gü -- te
prei -- sen soll.
}


% The score definition
\score {

<<

  \time 3/4

    \override Score.VerticalAxisGroup #'remove-first = ##t
  \new Staff <<
            \new Voice = "mel" { \clef bass \key d \major \melody}
            \new Lyrics = "one" \lyricsto mel \songtext
  >>
  \new PianoStaff <<
    \new Staff \with {
      \consists #Merge_rests_engraver
    }
    <<
      \new Voice { \key d \major \rh }
    >>
      \new Dynamics {
    s2. \f |
    s16 s4.. \fz s4 |
    s16 s4.. \fz s4 |
    s2. |
    s |
    s |
    s |
    s16 s4.. \fz s4 |
    s8 s4. \fz s4 |
    s4. s4.\p |
    s2.\p |
    s2. |
    s2. |
    s4 s2\f |
    s2. |
    s2. |
    s2. \p|
    s2.|
    s2.|
    s2.|
    s2.\f|
    s16 s4.. \fz s4 |
    s16 s4.. \fz s4 |
    s2.|
    s2.|
    s2.|
    s2.\p|
    s2.|
    s2.|
    s2.|
    s2.|
    s2.|
    s2.|
    s2.|
    s2.|
    s2.|
    s2.|
    s2.|
    s2.|
    s2.|
    s2.|
    s2.|
    s2.|
    s2.|
    s2.\f|
    s8 s2\fz s8|
    s2.|
    s8 s2\fz s8|
    s8 s2\fz s8|
    s4. s4.\p|
    s2.|
    s2.|
    s2.|
    s4. s4.\f|
    s2.|
    s2.|
    s2.\p|
    s2.|
    s2.\p|
    s2.|
    s2.|
    s4 s2\f|
    s2.|
    s2.\p|
    s2.|
    s2.|
    s2.\f|
    s2.|
    s4 s2\p|
    s2.|
    s2.|
    s2.|
    s2.|
    s2.|
    s2.|
    s2.|
    s2.|
    s2.|
    s2.\pp|
    s2.|
    s2.|
    s2.\f|
    s2.\fz|
    s4. s4.\p|
    s2.|
    s2.|
    s2.|
    s2.|
    s2.|
    s2.|
    s2.|
    s4 s2\f|
    s2.\p|
    s2.|
    s2.|
    s8 s2\f s8|
    s2.|
    s2.|
    s2.|
    s2.\pp|
    s2.|
    s2.|
    s8 s2\f s8|
    s2.\fz|
    s2.|
    s2.\fz|
  }
    \new Staff \with {
      \consists #Merge_rests_engraver
    }
    <<
      \new Voice { \clef bass \key d \major \lh }
    >>

  >>

>>

\layout {
  \context {
    \RemoveEmptyStaffContext
  }
}
}

\score {

<<

  \time 3/4

    \override Score.VerticalAxisGroup #'remove-first = ##t
  \new Staff <<
        \set Staff.midiInstrument = #"choir aahs"
            \new Voice = "mel" { \clef bass \key d \major \melody}
            \new Lyrics = "one" \lyricsto mel \songtext
  >>
  \new PianoStaff <<
    \new Staff
    <<
      \set Staff.midiInstrument = #"acoustic grand"
      \new Voice { \key d \major \rh }
    >>

    \new Staff
    <<
      \set Staff.midiInstrument = #"acoustic grand"
      \new Voice { \clef bass \key d \major \lh }
    >>

  >>

>>

\midi {
  \tempo 4 = 105
  \context {
    \Score
    midiMinimumVolume = #0.8
    midiMaximumVolume = #0.8
  }
}

}
