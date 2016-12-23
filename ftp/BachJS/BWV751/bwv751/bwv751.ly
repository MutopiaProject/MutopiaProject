\version "2.19.46"

\header {
  mutopiatitle = "In Dulci Jubilo"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 751"
  date = ""
  source = "Edition Peters, 6421"
  style = "Baroque"
  license = "Public Domain"
  maintainer = "Hans Fugal"
  maintainerEmail = "hans@fugal.net"
  mutopiainstrument = "Organ"

  title = "In Dulci Jubilo"
  composer = "Johann Sebastian Bach (spurious)"
  opus = "BWV 751"

 footer = "Mutopia-2016/12/23-884"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

%--Default staff size is 20
#(set-global-staff-size 20)

\paper {
    top-margin = 8\mm                              %-minimum: 8 mm
    top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #5      %-dist. from header/title to first system
    top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.padding = #2               %-min #1.5 -pads music from copyright block 
    ragged-bottom = ##f
    ragged-last-bottom = ##f
  }

global = {
  \key c \major
  \time 3/2
}

right = \relative c'' {
  \stemUp
  r2 r g | g1 g2 b1 c2 d1 e2 d1 g,2 g1 g2 b1 c2 d1 e2 d1. d1 e2 d1 c2 b a b |
  g1 g2 a1 a2 b1 a2 g1 a2 b1.|  d4 b s d e s d b s d c s b g s b a s g d s fis g2 a4 e s e a s b g s b a s g d s g a s b g s g b2 |
  e,1 e2 fis1 fis2 g2. a4 b c d1. b1 b2 a1 a2 g1. g1 fis2 g4 b c d e d cis a b cis d a g a fis g a g fis1 d2 |
  d1 d2 fis1 g2 a1 b2 a1 d,2 d1 d2 fis1 g2 a1 b2 a1. a1 b2 a1 g2 fis2 e fis|
  d1 d2 e1 e2 fis1 e2 d1 e2 fis1. a4 fis s a b s a fis s a g s fis d s fis e s d a s cis d2 e4 b s  b e s fis d s fis e s d a s d e s fis d s d fis2 |
  e1 e2 fis1 fis2 g2. a4 b c d1. b1 b2 a1 a2 g1. g1 fis2 g4 d e fis g a g fis g a b c b c d e8 f e4 fis g1. \bar "|."
}

left = \relative c' {
  \stemDown
  \tieDown
  r2 r b2 b a4 b
  \change Staff = right c2| d2 c4 d e2 |
  \change Staff = left b4 g a b c2 b4 c b a b c b2 a4 b
  \change Staff = right c2 d c4 d e2 |
  \change Staff = left b4 g a b c2 b4
  \change Staff = right g' f e d c b f' e d c2 b c4 d e2 d4 e c e d c |
  b4 c d c b2 c4 b c a b c d b c d c d
  \change Staff = left b g a b
  \change Staff = right c b8 c d4 e fis d g2 s4 s g s s c s s g s s e s s d s s c s s b s s s |  s s c s s  fis s s d s s c s s b s s c s s d s s s|
  % 26
  \change Staff = left
  r4 c b c a2
  \change Staff = right
  r4 d c d b2 |r4 e d c
  \change Staff = left
  b2 a4
  \change Staff = right
  a' g a fis e d g e fis g2 ~ g4 e fis g fis2 r4 d c d e d r c b c d c b1 g'2 g1 fis2 e d cis d1
  \change Staff = left
  fis,2 |fis2 e4 fis g2 a g4 a b2 fis4 d e fis g2 fis4 g fis e fis g fis2 e4 fis g2 a2 g4 a b2 fis4 d e fis g2 fis4 d' c b a g fis c' b a g2 fis2 g4 a b2 a4 b g b a g fis g a g fis2 |
  g4 fis g e fis g a fis g a g a fis d e fis g fis8 g a4 b cis a
  \change Staff = right
  d2|
  % 54
  s4 s d s s g s s d s s b|
  \change Staff = left
  s s a s s g s s fis s s s | s s g s s
  \change Staff = right
  cis|
  \change Staff = left
  s s a s s g s s fis s s g s s a s s s
  % 62
  r4 c b c a2
  \change Staff = right
  r4 d c d b2 r4 e d c b2 a4 a' g a fis e | d 4 g e fis g2 ~ g4 e fis g fis2 r4 d c d e d r c b c d c
  \change Staff = left
  b2. a4 b c |b2.
  \change Staff = right
  c4 d e d2 b c <b d>1. \bar "|."
}

pedal = \relative c {
  g1.~g~g~g~g~g~g~g~g~g~g~g~g~g~g~g~g~g~g~g~g~g~g~g~g|
  R1. R e1 e2 fis1 fis2 g2. a4 b c | d1. b1 b2 a1 a2 g1. R R |
  d~d~d~d~d~d~d~d~d~d~d~d~d~d~d~d~d~d~d~d~d~d~d~d~d|
  R R e1 e2 fis1 fis2 g2. a4 b c d1. b1 b2 a1 a2 g1.~g~g~g \bar "|."
}


#(set-default-paper-size "letter" 'landscape)
#(set-global-staff-size 19)

\score {
  <<
    \new PianoStaff {
      \set PianoStaff.instrumentName = "Manual "
      \set PianoStaff.midiInstrument = "church organ"
      <<
      \context Staff = right {
        \global
        \new Voice = right \right
      }
      \context Staff = left {
        \global
        \clef bass
        \new Voice = left \left
      }
      >>
    }
    \context Staff = pedal {
      \set Staff.instrumentName = "Pedal   "
      \set Staff.midiInstrument = "church organ"
      \global
      \clef bass
      \context Voice = pedal \pedal
    }
  >>

  \layout{}
  \midi{
    \tempo 2 = 160
  }
}

% TODO
% I'm still not pleased with the staff switching. Need to go through and redo
