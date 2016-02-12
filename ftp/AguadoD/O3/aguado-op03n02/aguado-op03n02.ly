\version "2.18.2"

\header {
  title = "8 Petites Pièces"
  composer = "D. Aguado"
  opus = "Op. 3 No. 2"
  style = "Romantic"
  source = "Mainz: B. Schott Söhne, plate 2674"
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 003 - http://urn.kb.se/resolve?urn=urn:nbn:se:statensmusikverk-4032
  date = "1830"
  mutopiacomposer = "AguadoD"
  mutopiainstrument = "Guitar"
  mutopiatitle = "8 Petites Pièces for Guitar, No. 2"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/02/12-2042"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #10
}

mbreak = {} % { \break }
global = {
  \time 3/8
  \key c \major
}

upperVoice = \relative c' {
  \voiceOne
  \repeat volta 2 {
    e16.[ c32]  a8 <f' d> |
    e16.[ c32]  a8 a' |
    gis16.[ e32] d8 b' |
    a16. e32  c8[ \grace {a'16[ b]} c8] |
    <c a>8 <b g> <a f> |
    g8.[ c16] e, a |
    g8.[ f16] d b |
    \mbreak
    <c e,>4 r8 |
  }
  \repeat volta 2 {
    c16.[ e32] a8 g |
    <g b,>4. |
    a,16.[ c32] f8 e |
    <e gis,>4. |
    a,16.[ b32] c8 cis |
    d16.[ b32] gis8\noBeam e |
    \acciaccatura { a16[ gis] } a16.[ b32] c8 cis |
    d16.[ b32] gis4 |
    \mbreak
    <f' gis,>16.[ e32] f8 f |
    \autoBeamOff
    <e a,>8 a8. c,16 |
    r8 f8. e16 |
    <a, c,>4 s8 |
    \autoBeamOn
  }
  \key a \major % fis \minor
  \repeat volta 2 {
    d16( cis) b([ cis]) d16. cis32 |
    a4. |
    <fis' d>16 <e cis> <dis bis>16[ <e cis>16] <fis dis>16. <e cis>32 |
    <cis a>16.[ e32] a8 cis |
    \mbreak
    b16.[ gis32] e8 d' |          % source has gis16
    cis8\noBeam \tuplet 3/2 { cis16[_( b) a] } \tuplet 3/2 { gis16[ fis e] } |
    dis8 <b' dis,> q |
    <e, gis,>4 s8 |
  }
  \repeat volta 2 {
    \tuplet 3/2 { d'16 b gis} e8[ d] |
    \tuplet 3/2 { cis16 e a } cis8[ cis] |
    \tuplet 3/2 { b16( gis) eis } cis8[ b] |
    \tuplet 3/2 { a16 cis fis } a8[ gis16 fis] |
    \mbreak
    d16.[ \slashedGrace gis8 fis32] e8 <d b> |
    cis16 e a16[ cis] b a |
    <b d,>8 <d fis,> <gis, d b> |
    <a cis,>4 s8 |
    }
  \key c \major
  \repeat volta 2 {
    e16. c32 a8[ <fis' d>8] |
    e16. c32 a8[ a'] |
    gis16. e32 d8[ b'] |
    a16. e32 c8[ \grace { a'16[ b] } c8] |
    \mbreak
    \barNumberCheck #41
    <c a>8 <b g> <a f> |
    g8. c16 e,[ a] |
    <g f,>8. f16 d[ b] |
    <c e,>4 r8 |
    \repeat volta 2 {
      c16. e32 a8[ g] |
      <g g,>4. |
      a,16. c32 f8 e |
      <e gis,>4. |
      \mbreak
      \barNumberCheck #49
      a,16. b32 c8[ cis] |
      d16. b32 gis8\noBeam e |
      \acciaccatura {a16[ gis]} a16. b32 c8[ cis] |
      d16. b32  gis4 |
      <f' gis,>16. e32 f8[ f] |
      \autoBeamOff
      <e a,>8 a8. c,16 |
      r8 f8. e16 |
      <a, c,>4 s8
    }
  }
}

lowerVoice = \relative c {
  \voiceTwo
  a4. |
  a4. |
  e4. |
  a4. |
  r4 r8 |
  e''4 c8 |
  b,4. |
  \barNumberCheck #8
  c4 r8 |
  r4 r8 |
  r16 g' f[( e)] b g |
  a4 r8 |
  r16 e'( d[) b] gis e |
  f4. |                         % source has f4 & no rest
  e4. |
  f'4. |
  e4. |                         % source has e4 & no rest
  \barNumberCheck #17
  d4. |
  c4 a8 |
  d4 e,8 |
  a4 s8 |
  r4 r8 |
  r16 e' cis e a,8\noBeam |
  r4 r8 |
  a4. |
  \barNumberCheck #25
  d4. |
  a'4. |
  << { \voiceTwo b,4. } \\ { \voiceThree\stemDown g'8\rest a a } >>|
  e4 s8 |
  r4 r8 |
  a4. |
  r4 cis,8 |
  fis4 r8 |
  <b gis>4 e,8 |
  a4 r8 |
  d,4 e8 |
  a,4 s8 |
  a4. |
  a4. |
  e4. |
  a4. |
  \barNumberCheck #41
  r4 r8 |
  e''4 cis8 |
  g,4. |
  c4 r8 |
  r4 r8 |
  r16 g'\noBeam f( d) b[ g] |
  a4. |
  r16 e'(\noBeam d) b gis[ e] |
  f4. |
  e4. |
  f'4. |
  e4. |
  d4. |
  c4 a8 |
  << {\voiceTwo d4 <gis e,>8 } \\ {\voiceThree b4\noBeam gis8 } >> |
  a,4 s8

}

middleVoice = \relative c, {
  \voiceThree
}


\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"
      \tempo "Valse."

      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
      \context Voice = "middleVoice" \middleVoice
    >>
%{
    % tabs are not completely developed
    \new TabStaff = "Guitar tabs" \with {
      restrainOpenStrings = ##t
    } <<
      \clef "moderntab"
      \global
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
      \context TabVoice = "middleVoice" \middleVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \tempo 4 = 84
  }
}
