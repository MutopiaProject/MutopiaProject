\version "2.19.32"
\header {
  title = "24 Studies for the Guitar"
  subtitle = "Study No. 23"
  composer = "Fernando Sor"
  mutopiatitle = "Op. 35, Study No. 23"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  opus = "Op. 35 No. 23"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  source = "N. Simrock"
  % From Boije 481-2, enscribed "Bonn Chez N. Simrock"
  date = "1828"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2015/12/23-2086"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2015 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
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

\layout {
  \context {
    \Voice
    \override StringNumber #'stencil = ##f
  }
  \context {
    \Staff
    \override Fingering #'staff-padding = #'()
    \override Fingering #'add-stem-support = ##t
    \mergeDifferentlyDottedOn
    \mergeDifferentlyHeadedOn
  }
  \context {
    \Dynamics
    \override DynamicTextSpanner #'style = #'none
  }
}

mbreak = { } % { \break }

global = {
  \time 2/4
  \key e \major
}

upperVoice = \relative c {
  \tempo "Andante."
  \repeat volta 2 {
    \tuplet 7/4 { e,32 <b'_2> <e_3> <gis_1> b e b } e,,16\noBeam r <e''-2 gis-1> r <gis b-1> r |
    \tuplet 7/4 { e,,32 b' e gis b e b } e,,16\noBeam r <e'' gis> r <gis b> r |
    \tuplet 6/4 { b,,32_2 dis_1 a'_3 b_0 fis' b,_0 } b,16\noBeam r <b'_3 gis'> r <a_2 fis'> r |
    \mbreak

    \tuplet 7/4 { e,32_1 b' e gis b  gis' dis } e,,16\noBeam r <gis' b> r q r |
    \tuplet 7/4 { e,32 b' e gis b e b } e,,16\noBeam r <e'' gis> r <gis b> r |
    \tuplet 7/4 { fis,,32_1 b_1 fis'_2 b_3 dis fis_4 dis_3} fis,,16\noBeam r <fis' b dis> r q r |
    \mbreak

    \tuplet 7/4 { fis,32_1 cis'_3 fis_4 ais_2 cis_1 fis_1 cis_1 } fis,,16\noBeam r <fis' cis' e> r <fis ais cis> r |
  }
  \alternative {
    { \tuplet 5/4 { b,32_1 fis'_2 b_3 dis_4 b_3 } b,16\noBeam r a_0 r fis_2 r | }
    { \tuplet 5/4 { b32 fis' b dis b } b,16\noBeam r b r a r | }
  }
  \mbreak

  \tuplet 7/4 { gis32_1 dis'_3 gis_4 bis_2 dis_1 gis_1 dis_1 } gis,,16\noBeam r <bis' dis gis> r q r |
  \tuplet 5/4 { cis,32_1 gis'_3 cis_4 e_2 cis } cis,16\noBeam r <cis' e gis> r q r |
  \tuplet 7/4 { fis,,32_1 cis'_2 fis_3 a cis_1 a'_4 cis,_1 } fis,,16\noBeam r <cis'' a'> r q r |
  \mbreak

  \tuplet 7/4 { gis,32 dis' gis bis dis gis dis } a,16\noBeam r <bis' gis'> r <bis dis fis> r |
  \tuplet 5/4 { cis,32 gis' cis e cis } cis,16\noBeam r <cis' e gis> r <cis e b'> r |
  \tuplet 5/4 { fis,32 cis' e ais e } fis,16\noBeam r \tuplet 5/4 { gis32 b dis b' dis, } gis,16\noBeam r |
  \mbreak

  \tuplet 5/4 { e32 gis cis b' cis, } e,16\noBeam r <fis cis' ais'> r <fis e' ais> r |
  <b dis b'>16 r \tuplet 7/4 { b,32 fis' b dis fis b fis } b,,16\noBeam r b'8 |
  \tuplet 7/4 { e,,32 b'_2 e_3 gis_1 b e b } e,,16\noBeam r <e'' gis-1> r <gis b-1> r |
  \mbreak

  \tuplet 7/4 { e,,32 b' e gis b e b } e,,16\noBeam r <e'' gis> r <gis b> r |
  \tuplet 6/4 { b,,32_2 dis_1 a'_3 b_0 fis' b,_0 } b,16\noBeam r <b'_3 gis'-4> r <a_3 fis'-4> r |
  \tuplet 7/4 { e,32 b' e gis b e b } e,,16\noBeam r <gis' b> r q r |
  \mbreak

  \tuplet 7/4 { e,32 b' e gis b e b } e,,16\noBeam r <b'' d gis> r <gis d' b'> r |
  \tuplet 6/4 { cis,32 a' cis e a e } a,,16\noBeam r <a'' cis> r <cis e> r |
  << { \voiceOne \tuplet 6/4 { b,,32 e gis b e b } b,8\noBeam <b' gis'>8 <a fis'> } \\
     { \voiceTwo b,8 b4 dis8 } >> |
  << { \voiceOne <gis e'>16 r \tuplet 6/4 { b,32 e gis b e b } e,,8\noBeam r } \\
     { \voiceTwo e'16[ r b8] s4 } >> |

  \bar "|."
}

lowerVoice = \relative c {
  \set fingeringOrientations = #'(down)
  \voiceTwo
}


\score {
  <<
    \new Staff = "Guitar"
    <<
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \global
      \clef "treble_8"
      \context Voice = "upperVoice" \upperVoice
    >>
%{
    \new TabStaff = "Guitar tabs"
    <<
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
    \tempo 4 = 100
  }
}
