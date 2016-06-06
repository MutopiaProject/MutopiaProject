\version "2.19.35"

\header {
  title = "12 Etudes"
  composer = "F. Sor"
  opus = "Op. 6 No. 2"
  style = "Romantic"
  source = "N. Simrock, Berlin. Plate 9106"
  date = "c.1889"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  mutopiatitle = "12 Etudes, No. 2"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/06/06-2120"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #12
%  system-count = #8
}

mbreak = { \break }
global = {
  \time 4/4
  \key a \major
}

upperVoice = \fixed c' {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  \repeat volta 2 {
    \partial 2 { a4 gis4 } |
    a4 e fis e |
    dis4 e d cis |
    b,4 fis b, e |

    \mbreak
    d4 cis a gis |
    a4 e fis e |
    dis4 e fis gis |
    a4 fis e dis |
    fis4 e
  }
  \mbreak
  \repeat volta 2 {
    e gis |
    b4 gis a cis |
    cis4 b, e gis |
    b4 gis a cis |
    cis4 b, cis d |

    \mbreak
    e4 a gis g |
    eis4 fis b a |
    gis4 a b gis |
    gis4 a
  }

  \bar "|."
}

lowerVoice = \fixed c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \override Fingering.add-stem-support = ##t

  \partial 2 { a'8 <a cis'> gis' <b d'> } |
  a'8 <a cis'> e' <gis b> fis' <a cis'> e' <gis b> |
  dis'8 <fis a> e' <gis b> d' <fis a> cis' <e a> |
  b8 <d a> fis' <d a> b<e gis> e' <e gis> |

  d'8 <e b> cis' <a, a> a' <a cis'> gis' <b d'> |
  a'8 <a cis'> e' <gis b> fis' <a cis'> e' <gis b> |
  dis'8 <fis a> e' <gis b> fis' <a cis'> gis' <eis cis'> |
  a'8 <fis cis'> fis' <a, cis'> e' <b, gis> dis' <b, fis> |
  fis'8 <e a> e' <e, gis>

  e'8 <gis b> gis' <b d'> |
  b'8 <gis d'> gis' <b d'> a' <a cis'> cis' <a, a> |
  cis'8 <e a> b <e, gis> e' <gis b> gis' <b d'> |
  b'8 <gis d'> gis' <b d'> a' <a cis'> cis' <a, a> |
  cis'8 <e a> b <e, gis> cis' <a, a> d' <b, a> |

  e'8 <cis a> a' <a, cis'> gis' <b, d'> g' <cis e'> |
  eis'8 <d a> fis' <d a> b' <d fis'> a' <d f'> |
  gis'8 <d e'> a' <cis e'> b' <d fis'> gis' <e d'> |
  gis' <a d'> a' <a, cis'>
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 2"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
%      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"
      \tempo "Andante Allegro."
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
    \context { \TabStaff \remove "Staff_performer" }
    \tempo 4 = 90
  }
}
