\version "2.18.2"

\header {
  title = "16 Studies for the Guitar"
  composer = "Mauro Giuliani"
  opus = "Op. 59 No. 13"
  style = "Romantic"
  source = "A Messionnier, Boulevard Montmartre No 23."
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 142
  date = "1822"
  mutopiacomposer = "GiulianiM"
  mutopiainstrument = "Guitar"
  mutopiatitle = "16 Studies for the Guitar: No. 13"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/07/06-2031"
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
  \time 2/4 \key e \minor
}

mainDynamics = {
  \partial 16 { s16\mf }
  s2*8 | s16 s16\< s16*5 s16\! | s16\< s16*4 s16\! s16*2 |
  s2 | s16 s16\< s16*5 s16\! | s16 s16\< s16*5 s16\! |
  s16\> s16*2 s16\! s16*4 | s2*3 | s4 s16 s16\f s8 | s2
}

upperVoice = \relative c' {
  \voiceOne
  \partial 16 { b16 } |
  e8 e e e |
  e4 r8. b16 |
  fis'8 fis fis fis |
  fis4 r8. b,16 |
  g'4 fis |
  e4 r8. b16 |

  r16 b b' b, r b g' b, |
  fis'4 r8 fis |
  f8 f f f |
  e4 r16 a, c e |
  r16 g, b e r b fis' b, |
  g'4 r8 g |

  fis8 fis fis fis |
  g4 r16 a, c fis |
  r16 g, b e r e, b' dis |
  r16 e g e b e g, b |
  r16 e, g e b e g, b |
  e,4 <e'' b g e> |
  q2

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  \partial 16 { r16 } |
  \repeat unfold 2 { e16 b' g b } |
  e,16 b' g b e, b' g r |
  \repeat unfold 2 { dis16 b' a b } |
  dis,16 b' a b dis, b' a r |
  e16 b' g b dis, b' a b |
  e,16 b' g b e, b' g r |

  fis4 e |
  \repeat unfold 2 { dis16 b' a b } |
  \repeat unfold 2 { d,16 b' gis b } |
  c,16 c' a c c,4 |
  b4 dis |
  \repeat unfold 2 { e16 b' g b } |

  \repeat unfold 2 { dis,16 b' a b } |
  e,16 b' g b a,4 |
  b4 b |
  e,4 b''8 g |
  e,4 b'8 g |
  e4 e' |
  <b g>2
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
    \new Dynamics { \mainDynamics }
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
    \tempo 4 = 88
  }
}
