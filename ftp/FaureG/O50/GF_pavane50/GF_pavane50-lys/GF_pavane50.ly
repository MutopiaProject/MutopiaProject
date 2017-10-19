\version "2.18.2"

\include "bbarred.ly"

\header{
  title = "Pavane"
  opus = "Op. 50"
  composer = "Gabriel Fauré"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  source = "Paris: J. Hamelle, 1901. Plate J. 4727 H."
  maintainer = "Gabriel Hondet"
  style = "Romantic"
  date = "1887"
  mutopiatitle = "Pavane"
  mutopiacomposer = "FaureG"
  mutopiaopus = "Op. 50"
  mutopiainstrument = "flute, guitar"
  footer = "Mutopia-2017/10/19-2196"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2017 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}

flute = {
         r1|
         fis'4~  fis'8. gis'16 a'4~  a'8. b'16|
         a'8 gis' a' fis' gis'4~  gis'8. a'16|
         gis'8 fis' gis' e' fis'4. eis'8|
%5
         cis'1|
         cis''4~  cis''8. d''16 e''4~  e''8. fis''16|
         e''8 d'' e'' cis'' d''4~  d''8. e''16|
         d''8 cis'' d'' b' cis''4. bis'8|
         cis''2. r4\bar "||"
%10
         fis'~  fis'8. gis'16 a'4~  a'8. b'16|
         a'8 gis' a' fis' gis'4~  gis'8. a'16|
         gis'8 fis' gis' e' fis'4. eis'8|
         cis'1|
         a'4~  a'8. b'16 cis''4~  cis''8. d''16|
%15
         cis''8 b' cis'' a' b'4~ b'8. cis''16|
         a'8 gis' a' fis' fis'4 eis'|
         fis'2. r4\bar "||"
         cis''~  cis''8. dis''16 eis''4 \tuplet 3/2 { dis''8 eis'' fis'' }|
         gis'' fis'' a'' gis'' eis''4. dis''8|
%20
         cis''4~  cis''8. dis''16 e''4 \tuplet 3/2 { dis''8 e'' fis'' }|
         gis'' fis'' a'' gis'' e''4. dis''8|
         cis''4 \tuplet 3/2 { bis'8 cis'' dis'' } e''4. dis''8|
         cis''4 \tuplet 3/2 { bis'8 cis'' dis'' } e''4. dis''8|
         gis''2. \tuplet 3/2 { fis''8 gis'' fis'' }|
%25
         eis''1-\trill~ |
         eis''1|
         fis''4~  fis''8. gis''16 a''4~  a''8. b''16|
         a''8 gis'' a'' fis'' gis''4~  gis''8. a''16|
         gis''8 fis'' gis'' e'' fis''4~  fis''8. eis''16|
%30
         cis''1|
         cis'''4~  cis'''8. d'''16 e'''4~  e'''8. fis'''16|
         e'''8 d''' e''' cis''' d'''4~  d'''8. e'''16|
         d'''8 cis''' d''' b'' cis'''4. bis''8|
         cis'''2. r4|
%35
         fis''~  fis''8. gis''16 a''4~  a''8. b''16|
         a''8 gis'' a'' fis'' gis''4~  gis''8. a''16|
         gis''8 fis'' gis'' e'' fis''4~  fis''8. eis''16|
         cis''1|
         a''4~  a''8. b''16 cis'''4~  cis'''8. d'''16|
%40
         cis'''8 b'' cis''' a'' b''4~  b''8. cis'''16|
         a''8 gis'' a'' fis'' fis''4 eis''|
         fis''2. r4\bar "|."
       }


guitar = {
         \bbarre #"II" {fis8-4 a-1 cis'-1 a fis a cis' a} |
         fis a cis' a d cis' fis' cis'|
         e b e' b cis b e' b|
         d a-2 d'-4 a b, a d' a|
%5
         \bbarre #"I" {cis-4 gis-1 eis'-1 gis b,-2 gis eis' gis} |
         a, fis'-3 cis'-2 fis' fis,-1 cis'-3 a-2 cis'|
         b,-1 fis'-3 a-2 fis' e, b g b|
         a, e' g e' d fis'-2 gis-1 fis'|
         cis-4 gis-1 cis'-2 d'-3 b-0 cis' a-1 gis-1|
%10
         \bbarre #"II" {fis a cis' a d cis' fis' cis'} |
         e b e' b cis b e' b|
         d a d' a b, a d' a|
         \bbarre #"I" {cis gis eis' gis b, gis eis' gis} |
         a, cis' a cis' g,-3 e' a-2 e'|
%15
         fis,-1 e' a d'-3 e, d' g cis'-2|
         d cis'-1 fis'-2 b cis-1 b-0\2 cis'-3\3 b |
         fis,8-1 cis-3 fis-4 a-1 gis-1 fis-4 e-2 d|
         cis-4 eis-3 gis-1 eis b,-2 gis-1 cis'-3 gis|
         a, cis'-2 fis-4 cis' gis,-3 bis-1 fis-4 bis|
%20
         cis-4 eis-3 gis-1 eis gis,-4 e-2 b e|
         a, e-2 cis'-3 e b,-2 a-3 b a|
         < gis,-4 gis-1> e-2 gis e < b,-1 fis-4> a-2 b a|
         < gis, gis> e gis e < b, fis> a b a|
         e, e b e d-4 fis-3 b fis|
%25
         cis-4 gis-1 a-2 fis-4 gis-1 b cis' a|
         b d' e' cis' d' b cis' a|
         fis a cis' a d cis' fis' cis'|
         e b e' b cis b e' b|
         d a d' a b, a d' a|
%30
         cis gis eis' gis b, gis eis' gis|
         a, fis' cis' fis' fis, cis' a cis'|
         b, fis' a fis' e-2 b g'-4 b|
         a, e' g e' d fis'-2 gis-1 fis'|
         e-2 gis-1 cis'-3 d'-4 b cis'-3 a-2 gis-1|
%35
         fis a cis' a d cis' fis' cis'|
         e b e' b cis b e' b|
         d a d' a b, a d' a|
         \bbarre #"I" {cis gis eis' gis b, gis eis' gis} |
         a, cis' a cis' g,-3 e' a-2 e'|
%40
         fis,-1 e' a-2 d'-4 e, d'-3 gis'-4 cis'-2|
         d cis'-2 fis'-3 bis-1 cis-1 b-0 cis'-3 b|
%         fis, a b gis a fis gis e|
         < fis a cis' fis' >1
       }
\score {
  <<
    \new Staff \with {
      instrumentName = #"Flute"
      midiInstrument = #"flute"
    } {\clef "treble" \key a \major \flute}
    \new Staff \with {
      instrumentName = #"Guitar"
      midiInstrument = #"acoustic guitar (nylon)"
    } {\clef "treble_8" \key a \major \time 4/4 \guitar}
  >>
  \layout{}
  \midi{}
}
