\version "2.19.82"
\paper {
    markup-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 8)
       (padding . 1)
       (stretchability . 10)) % default 60
    system-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 8)
       (padding . 1)
       (stretchability . 3)) % default 60
}


\header {
    title = "Tallis' Ordinal"
    composer = "Thomas Tallis (1510-1585)"
    %opus = "Opus 0"
    %piece = "Left-aligned header"
    date = "1567"
    style = "Hymn"
    meter = "8.6.8.6 (common meter)"
    source = "https://hymnary.org/media/fetch/139505"

    mutopiatitle = "Tallis' Ordinal"
    %mutopiaopus = "Op.0"
    mutopiacomposer = "TallisT"
    %--A list of instruments can be found at http://www.mutopiaproject.org/browse.html#byInstrument
    %--Multiple instruments are separated by a comma
    mutopiainstrument = "Organ"
    maintainer = "Thomas Hugel"
    maintainerEmail = "thomas.hugel -a|t- yandex.com"
    maintainerWeb = "https://thomas-hugel.gitlab.io/"
    license = "Creative Commons Attribution-ShareAlike 4.0"
    year = "2018"
    footer = "Mutopia-2018/12/07-2237"
    copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2018 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
    tagline = ##f
}

global = {
  \key d \major
  \time 4/4
}

upperStaff = \relative c' {
  \partial 4 d4 |
  fis g a a |
  b b a \breathe a |
  d cis b b |
  a2. \breathe d,4 | \octaveCheck d'
  fis g a a |
  b b a \breathe d, |
  g fis e e |
  d2. \bar "|." \barNumberCheck #8
}

figs = \figuremode {
  <_>4 |
  <_> <6> <_> <_> |
  <_> <_> <_> <_> |
  <_> <_> <4> <_+> |
  <_>2. <_>4 |
  <_> <6> <_> <_> |
  <_> <_> <_> <_> |
  <_> <_> <4> <3> |
  <_>2. \barNumberCheck #8
}

lowerStaff = \relative c {
  \partial 4 d4 |
  d b a d |
  g g, d' \breathe d |
  d a e' e |
  a,2. \breathe d4 | \octaveCheck d
  d b a d |
  g g, d' \breathe b |
  g d' a a |
  d2. \bar "|." \barNumberCheck #8
}

%---------------------------------------------------------------------
%--Paper-size setting must be commented out or deleted upon submission.
%--LilyPond engraves to paper size A4 by default.
%--Uncomment the setting below to validate your typesetting
%--in "letter" sizing.
%--Mutopia publishes both A4 and letter-sized versions.
%---------------------------------------------------------------------
% #(set-default-paper-size "letter")

%--Default staff size is 20
#(set-global-staff-size 20)

\paper {
    top-margin = 8\mm                              %-minimum: 8 mm
    top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
    top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.padding = #2               %-min #1.5 -pads music from copyright block
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}



%-------Typeset music and generate midi


\layout {
  \context {
    \PianoStaff \override VerticalAxisGroup.staff-staff-spacing = % .basic-distance = #50
      #'((basic-distance . 2)
         (minimum-distance . 2)
         (padding . 1)
         (stretchability . 5)) % default 60
  }
  \context {
    \FiguredBass \override VerticalAxisGroup.staff-affinity = #CENTER
  }

}

\score {
    \context PianoStaff  <<
        \set PianoStaff.midiInstrument = "church organ"
        \new Staff { \clef treble \global \upperStaff }
        \new FiguredBass { \figs }
        \new Staff { \clef bass \global \lowerStaff }
    >>
    \layout{}
    \midi  { \tempo 4 = 42 }
}
