\version "2.18.2"

\header {
  title = "16 Studies for the Guitar"
  composer = "Mauro Giuliani"
  opus = "Op. 59 No. 12"
  style = "Romantic"
  source = "A Messionnier, Boulevard Montmartre No 23."
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 142
  date = "1822"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  mutopiatitle = "16 Studies for the Guitar: No. 12"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/07/06-2030"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
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

mbreak = { \break }
global = {
  \time 6/8 \key c \major
}
aUpMotif = {
  c4 c8 \grace {d16} c8 b c |
  cis4. d8 g f |
  d4 d8 d cis d |
  dis4. e8 c! c |
  f8 c c e c c |
  a'8 c, c g' c, c |
}
bUpMotif = {
  f8 g, g' e g, f' |
  <d g,>8 q q q g e\f |
}
aLowerMotif = {
  c8 e g c, e g |
  b,8 d g b,4 r8 |
  b8 d g b, d g |
  c,8 e g c,4 r8 |
  a'4. g |
  f4. e |
}
bLowerMotif = {
  d4 b8 c4 d8 |
  b8 b b b4 r8 |
}

upperVoice = \relative c'' {
  \voiceOne
  \partial 4 { g8 e\p } |
  \aUpMotif
  \bUpMotif
  \aUpMotif

  f8 a, d \grace { c16 } b8 a b |
  c4.\p e8 d c |
  <b g>4. f'8 e d |
  c4. \grace { d16\f } c8 b c |
  d8 e f g, a b\p |
  <c e,>4. e16 g, d' g, c g |
  <b g>4. f'16 g, e' g, d' g, |

  c4. g'16 g, f' g, e' g, |
  r8 <d' a> q r <b g> q |
  c4. g'4 e8 |
  c4. e4 c8 |
  g4. c,8 e g |
  c8 e g, c e, g |
  c,4. <e' c g> |
  <c g e>2.

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \partial 4 { r4 } |
  \aLowerMotif
  \bLowerMotif
  \aLowerMotif

  f,4. f |
  c'8 g' g <g c,> <g d> <g e> |
  f8 g g <g b,> <g c,> <g d> |
  <g c,>8 g g <g e,>4. |
  <a f,>4. <f g,> |
  c8 g' g c, d e |
  f8 g g b, c d |

  e8 g g c, d e |
  f,4. f |
  \repeat unfold 5 { c'8 e g } r8 r4 |
  R2. |
  c,4. c |
  c2.
}


\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
    } <<
      \global
      \clef "treble_8"
      \tempo "Allegretto."

      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
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
    >>
%}
  >>
  \layout {}
  \midi {
    \tempo 4 = 96
  }
}
