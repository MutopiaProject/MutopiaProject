\version "2.18.2"

\header {
  title = "16 Studies for the Guitar"
  composer = "Mauro Giuliani"
  opus = "Op. 59 No. 9"
  style = "Romantic"
  source = "A Messionnier, Boulevard Montmartre No 23."
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 142
  date = "1822"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  mutopiatitle = "16 Studies for the Guitar: No. 9"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/06/22-2018"
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

mbreak = { } % { \break }
global = {
  \time 6/8 \key a \major
}

upperVoice = \relative c' {
  \voiceOne
  \partial 4 { cis8 d\p } |
  e8 cis a a d fis |
  dis8( e) cis a b cis |
  d8 b e cis a e' |
  ais,8 b gis e fis gis |
  \grace b16 a8 gis a \grace cis16 b8 ais b |
  cis8 a b cis d e |
  \mbreak

  eis8( fis) e d cis b |
  r8 a cis <b gis> cis\mf d |
  e8 cis a' fis d a' |
  dis,8 e cis a b cis |
  d8 b e cis a e' |
  ais,8 b gis e fis gis |
  \grace b16 a8 gis a b a b |
  \mbreak

  \grace d16 cis8 b cis d b fis' |
  r8 a,8 cis e d b |
  a4. r8 cis\p a |
  d8 b gis r gis' e |
  a8( e) cis r cis e |
  d8 b e cis a e' |
  ais,8 b gis e cis' ais |
  \mbreak

  d8 b gis r e' gis |
  a8( e) cis b d fis |
  r8 a, cis e d b |
  a8 cis e e e e |
  r8\p e e r e e |
  r e e \grace gis16 fis8 e e |
  r8 e e r e e |
  \mbreak

  r e e \grace gis16 fis8 e e |
  \repeat unfold 3 { r8 e e r e e | }
  r8 r4\f a,8 cis e |
  a4. <e b gis> |
  <cis a>2.

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \partial 4 { r4 } |
  a4 r8 d4 r8 |
  a4 r8 a4 r8 |
  e4 r8 a4 r8 |
  e4 r8 e4 r8 |
  a4. b |
  a4. r8 r4 |

  d2. |
  e4. e,4 r8 |
  a4 r8 d4 r8 |
  a4 r8 a4 r8 |
  e4 r8 a4 r8 |
  e4 r8 e4 r8 |
  a4. b4. |

  a4. d |
  e4. e, |
  a8 e' cis a4 r8 |
  e4 r8 e4 r8 |
  a4 r8 a4 r8 |
  e4 r8 a4 r8 |
  e4 r8 e4 r8 |

  e4 r8 e4 r8 |
  a4 r8 d4 r8 |
  e4. e, |
  a4. r8 r4 |
  <cis' a>4. <b e,> |
  <a cis,>4. r8 r4 |
  <cis a>4. <b e,> |

  <a cis,>4. r8 r4 |
  <cis a>4. <b e,> |
  <a cis,>4. <b e,> |
  <cis a>4. <b e,> |
  <a cis,>4. a,8 cis e |
  a4. e, |
  <e' a,>2.
}


\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
    } <<
      \global
      \clef "treble_8"
      \tempo "Andantino."

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
    \tempo 4 = 94
  }
}
