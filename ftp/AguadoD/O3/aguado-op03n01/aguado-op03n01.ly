\version "2.18.2"

\header {
  title = "8 Petites Pièces"
  composer = "D. Aguado"
  opus = "Op. 3 No. 1"
  style = "Romantic"
  source = "Mainz: B. Schott Söhne, plate 2674"
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 003 - http://urn.kb.se/resolve?urn=urn:nbn:se:statensmusikverk-4032
  date = "1830"
  mutopiacomposer = "AguadoD"
  mutopiainstrument = "Guitar"
  mutopiatitle = "8 Petites Pièces for Guitar, No. 1"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/02/12-2041"
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

mbreak = { } % { \break }
global = {
  \time 3/8
}

upperVoice = \relative c' {
  \voiceOne
  \key c \major
  \repeat volta 2 {
    c8 \acciaccatura d8 c16.[ b32 c16. d32 ]
    e8. d16 c8
    c8 \slashedGrace d8 c16.[ b32 c16. d32 ]
    g8. f16 d8
    d8. e16[ fis g ] |
    d8.( fis16[ ) e d ] |
    d16[( c ) ] \acciaccatura d8 c16 b c a  |
    g4 s8 |
  }
  \repeat volta 2 {
    g'16[( f ) ] \slashedGrace g8 f16 e f d |
    e8.[ d16 ] c8 |
    g8. g16[ a b ] |
    \slashedGrace d8 c16 b c d e f|
    g8. g16 f[ e ] |
    g( f ) e f g a~ |
    a c,( b ) c e16. d32 |	% d16 --> d32
    <c e,>4 r8^\markup {Fine.} |
  }
  \key f \major
  \repeat volta 2 {
    b16 c b c b c |
    c8.[ d16 ] c8 |
    \oneVoice b16( c ) d( c ) b16. c32 \voiceOne |
    a'4 f8 |
    \oneVoice c16( d ) e( f ) g a \voiceOne |
    \repeat unfold 2 { bes4 a16[ g ] }
    f4 c8 |
    \barNumberCheck #25
    \oneVoice b16( c) b( c) b( c) \voiceOne |
    c8. d16 c8 |
    \oneVoice b16( c) d( c) b16. c32 \voiceOne |
    a'4 f8 |
    c16( d) e( f) g a |
    a4 g16[ e ] |
    g4 f16[ d ] |
    <c e,>4 r8 |
  }
  \barNumberCheck #33
  \repeat volta 2 {
    \oneVoice bes'16( a) c( bes) g e \voiceOne |
    c8.[ des16 ] c8 |
    \oneVoice b16\( c cis d-. dis e\) \voiceOne |
    f4 c8 |
    \oneVoice f16( e) g( f) a c, \voiceOne |
    << { b4. } \\ { \voiceFour\stemUp f8\rest aes16([ g ) aes g ] } >> |
    << { b4. } \\ { \voiceFour\stemUp f8\rest aes16([ g ) aes g ] } >> |
    <c e,>4 r8 |
    b16( c) b( c) b( c) |
    c8. d16 c8 |
    b16( c) d( c) b16. c32 |
    a'4 f8 |
    c16( d) e( f) g a |
    \repeat unfold 2 { bes4 a16 g | }
    <f a,>4 r8
  }
}

lowerVoice = \relative c' {
  \voiceTwo
  \repeat unfold 3 { c,8 e g }
  \repeat unfold 2 { b,8 d g }
  \mbreak
  \barNumberCheck #6
  c,8 e g |
  fis, a d |
  g,4 s8 |

  b8 d g |
  c, e g |
  f, b d |
  \mbreak
  \barNumberCheck #12
  e,4. |
  cis'8 e a |
  d,4 f8 |
  g4 <f g,>8 |
  c4 r8 |

  % \key f \major
  r4 r8 |
  \mbreak
  \barNumberCheck #18
  f,4. |
  s4. |
  f4. |
  s4. |
  c'4. |
  c4. |                       % orig. says c4
  f,4. |
  \mbreak
  \barNumberCheck #25
  s4. |
  f4. |
  s4. |
  f4. |
  s4. |
  c'4. |
  \mbreak
  \barNumberCheck #31
  b4. |
  c4 r8 |
  s4. |                         % start of 3rd volta
  c4. |
  s4. |
  f,4. |
  s4. |
  d'4. |
  d4. |
  c4 r8 |
  s4. |
  f,4. |
  s4. |
  f4. |
  s4. |
  c'4. |
  c4. |
  f4 r8 |
}

middleVoice = \relative c, {
  \voiceThree
  \stemDown
  \repeat unfold 8 { s4. }
  \repeat unfold 8 { s4. }

  % \key f \major
  s4. |
  \barNumberCheck #18
  \repeat unfold 2 {
    e'8\rest <a f>8 q |
    s4. |
  }
  \repeat unfold 2 { b8\rest <bes g> q } |
  b8\rest <g e>8 q |
  \barNumberCheck #25
  s4. |
  e8\rest <a f> q |
  s4. |
  e8\rest <a f> q |
  s4. |
  a8\rest <g e> q |
  \barNumberCheck #31
  a8\rest <g f> q |
  s4. |
  s4. |                         % start of 3rd volta
  g8\rest <bes e,> q |
  s4. |
  g8\rest <a f> q |
  \barNumberCheck #37
  s4. |
  \repeat unfold 2 { s8 f8 f | }
  s4. |
  s4. |
  e8\rest <a f> q |
  \barNumberCheck #43
  s4. |
  b8\rest <a f> q |
  s4. |
  \repeat unfold 2 { b8\rest <bes g> q | }
  s4._\markup{"D. C."}
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
    \tempo 4 = 90
  }
}
