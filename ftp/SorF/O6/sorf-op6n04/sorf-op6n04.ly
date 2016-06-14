\version "2.19.35"

\header {
  title = "12 Etudes"
  composer = "F. Sor"
  opus = "Op. 6 No. 4"
  style = "Romantic"
  source = "N. Simrock, Berlin. Plate 9106"
  date = "c.1889"
  mutopiacomposer = "SorF"
  mutopiainstrument = "Guitar"
  mutopiatitle = "12 Etudes, No. 4"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2016/06/14-2123"
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

mbreak = {} % { \break }
global = {
  \time 3/4
  \key g \major
}

upperVoice = \fixed c {
  \voiceOne
  \set fingeringOrientations = #'(up)
  \override Fingering.add-stem-support = ##t

  \repeat volta 2 {
    \repeat unfold 2 { <b d' g'>4 r <b d' b'>8 r | }
    \repeat unfold 2 { <c' e' a'>4 r <c' e' c''>8 r }
    <c' fis'>4 r <c' a'>8 r |
    \mbreak

    <c' fis'>4 r <c' a'>8 r |
    <b g'>4 r <c' a'>8 r |
    <d' b'>4 r <c' a'>8 r |
    <b g'>4 r <b d' b'>8 r |
    <b d' g'>4 r <b d' b'>8 r |
    \mbreak

    <cis' e' a'>4 r q |
    <a d' a'>4 r <fis' d''>8 r |
    <g' b'>4 r <g' d''>8 r |
    <e' g' cis''>4 r <g' e''>8 r |
    <fis' d''>4 r <a' fis''>8 r |
    <fis' d''>4 b\rest b\rest |
  }
  \mbreak

  \repeat volta 2 {
    <fis' a'>2 <fis' ais'>4 |
    <g' b'>2 <gis' b'>4 |
    <a' c''>2 q4 |
    <fis' a'>2. |
    <g' b'>2 q4 |
    <b' d''>2 <a' c''>4 |
    \mbreak

    <fis' a'>2 q4 |
    <fis' a'>2. |
    <fis' a'>2 <fis' ais'>4 |
    <g' b'>2 <gis' b'>4 |
    <a' c''>2 q4 |
    <fis' a'>2 r4 |
    \mbreak

    <g' bes'>2 q4 |
    <e' g'>2 q4 |
    <d' fis'>4 d'' cis'' |
    c''!4 a' b' |
    <b d' g'>4 r q8 r |
    <b d' b'>4 r q8 r |
    \mbreak

    <c' e' a'>4 r q8 r |
    <c' e' c''>4 r <c' e'>8 r |
    <d' f' b'>4 r q8 r |
    <b f' d''>4 r q8 r |
    <e' c''>4 r <e' g' e''>4 |
    <e' c''>4 r r |
    \mbreak

    \repeat unfold 2 { <bes g' cis''>2 q4 | }
    <g b d''>2.~ |
    d''4 b' g' |
    <a c' fis'>2 q4 |
    \acciaccatura{g'8} fis'4 e' fis' |
    <g b g'>2 q4 |
    q2 r4 |
  }

  \bar "|."
}

lowerVoice = \fixed c {
  \voiceTwo
  \set fingeringOrientations = #'(down)
  \override Fingering.add-stem-support = ##t

  \repeat unfold 11 { g8 g16 g g8 r g r | }
  fis8 fis16 fis fis8 r d r |
  g8 g16 g g8 r g r |
  a8 a16 a a8 r a, r |
  d8 d16 d d8 r d r |
  d4 s s |

  \repeat unfold 6 { d8 d'16 d' d'4 d' | }

  \repeat unfold 6 { d8 d'16 d' d'4 d' | }

  d8 d'16 d' d'4 d' |
  d8 cis'16 cis' cis'4 cis' |
  d2. |
  R2. |
  \repeat unfold 2 { g8 g16 g g8 r g r | }

  \repeat unfold 4 { g8 g16 g g8 r g r | }
  << {\voiceTwo c8 g16 g g4 <c g>} \\ {\voiceThree c2 s4 } >> |
  << {\voiceTwo g8 g16 g g4 g4} \\ {\voiceThree c4 s s} >> |

  \repeat unfold 2 {
    << {\voiceThree\stemDown ees2 s4} \\ {\voiceTwo g8 g16 g g4 <ees g> } >> |
  }
  << {\voiceTwo  d8 d16 d d4 d | <d g b>2. } \\
     {\tieUp\hideNotes \once\override NoteColumn.force-hshift=#.1 <g b>2.~ <g b>2. } >>
  d8 d16 d d4 d |
  <d a c'>2. |
  << {\voiceTwo g,8 d16 d d4 d~ | <g, d>2 s4 } \\ 
     {\voiceThree g,2. | s2. } >> |
}

\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 4"
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
%      \override StringNumber #'stencil = ##f
    } <<
      \global
      \clef "treble_8"
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
    \tempo 4 = 74
  }
}
