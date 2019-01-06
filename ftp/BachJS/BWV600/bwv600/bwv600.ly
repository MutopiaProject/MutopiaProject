\version "2.18.2"
\language "deutsch"

\header {
  mutopiatitle = "Gott durch deine Güte"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 600"
  mutopiainstrument = "Organ"
  source = "Autograph"
  style = "Baroque"
  maintainer = "Urs Metzger"
  maintainerEmail = "urs@ursmetzger.de"
  lastupdated = "2006/May/21"
  title = \markup {
    \center-column {
      \fontsize #0 "Gott durch deine Güte"
      \fontsize #-2 "oder"
      \fontsize #0 "Gottes Sohn ist kommen"
    }
  }

  composer = "Johann Sebastian Bach"
  opus="BWV 600"
  license = "Public Domain"
  footer = "Mutopia-2018/03/31-769"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}

global = {
  \key f \major
  \time 3/2
  \accidentalStyle default
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

halsup = { \stemUp \tieUp }
halsdown = { \stemDown \tieDown }
staffup = { \change Staff = "right" \halsdown }
staffdown = { \change Staff = "left" \halsup }

sopran = {
  \new Voice \relative f' {
    \global
    \halsup
    f1^\markup { "man. Princip. 8fs." } f4 g
    a1 h2
    c1 d2
    c1\fermata r2
    %% Takt  5 ==================================================
    d1 e2
    f1 c2
    a2 h\prallprall a4 h
    c1 d2\rest
    b1 g2
    %% Takt 10 ==================================================
    a1 b2
    a1 g2
    f1 r2
    r2 e f
    g1 a2
    %% Takt 15 ==================================================
    g1 f2
    e2 d1
    c1 g'2\rest
    f1 f4 g
    a1 h2
    %% Takt 20 ==================================================
    c1 d2
    c1 r2
    f,1 g2
    a1 b2
    a1 g2
    %% Takt 25 ==================================================
    f1 e2
    f1.\fermata \bar "|."
  }
}

alt = {
  \new Voice \relative c' {
    \global
    \halsdown
    a8\rest es' d c d es d c b d c b
    a8 g' f e! d c d e f e f g
    e8 b'! a g a b a g f a g f
    g8 a g f e g f e a g f g
    %% Takt  5 ==================================================
    a8 c b a b c b a b d c b
    a8 b a g f a g f g b a g
    a8 a, h c d c d e f e f d
    e b' a g a b a g f a g f
    g a g f e d c d e f d e
    %% Takt 10 ==================================================
    f8 c d e f g f e f e f g
    c,8 f e d c es d c d c d e
    f8 e d e f g f e f e d c
    h8 d c h c d c h a c h a
    \staffdown g a g f e \staffup f' e d c g' f e
    %% Takt 15 ==================================================
    d8 e d c h d c h c h c d
    e8 d c h \staffdown a c h a h c a h
    c b! a g a f g a b g a b
    \staffup c8 es d c d es d c b d c b
    a g' f e d c d e f e f g
    %% Takt 20 ==================================================
    e b' a g a b a g f a g f
    g8 a g f e g f e a g f g
    a8 g f e d c b a b f' e d
    c8 g' f e f g f e d f e d
    c8 f es d c es d c d c d e
    %% Takt 25 ==================================================
    f8 e d c d c b a b d c b
    \dotsDown a1.
  }
}

bass = {
  \new Voice \relative f, {
    \global
    r4 f b c d e!
    f4 g f e d g
    c,4 f e f d g
    e4 a g a f b
    %% Takt  5 ==================================================
    fis d g f g c,
    d d' c b a g
    f e d g f g
    c, f e f d g
    e d c b! a g
    %% Takt 10 ==================================================
    f e d c d e
    f f' es f b, c
    d, d' c d h c
    d g, c a d h
    \stemDown e d c h a d
    %% Takt 15 ==================================================
    \stemNeutral h e d e a, h
    c e \stemDown f d g g,
    c e, f d g e!
    \stemNeutral a f b c d e
    f g f e d g
    %% Takt 20 ==================================================
    c, f e f d g
    e a g a f b
    a d c d g, c
    f, e d c b c
    f, f' es f b, c
    %% Takt 25 ==================================================
    d c b g c c,
    f1.
  }
}

right = {
  \clef treble
  <<
    \alt
    \sopran
  >>
}

left = {
  \clef bass
  <<
    \bass
  >>
}

pedal = {
  \global
  \clef "bass"
  \relative f {
    R1*3/2
    f1^\markup { "ped. Tromp. 8 fs." } f4 g
    a1 h2
    c1 d2
    %% Takt  5 ==================================================
    c2 r r
    d1 e2
    f1 c2
    a1 h2
    c1 r2
    %% Takt 10 ==================================================
    r2 b g
    a1 b2
    a1 g2
    f2 r r
    r2 e f
    %% Takt 15 ==================================================
    g1 a2
    g1 f2
    e2 d1
    c2 r r
    f1 f4 g
    %% Takt 20 ==================================================
    a1 h2
    c1 d2
    c2 r r
    f,1 g2
    a1 b2
    %% Takt 25 ==================================================
    a2 g1
    f1.
  }
}

\score {
  <<
    \new PianoStaff
    {
      \set PianoStaff.instrumentName = \markup { \large "Manual." }
      <<
        \new Staff = "right" { \right }
        \new Staff = "left" { \left }
      >>
    }
    \new Staff {
      \set Staff.instrumentName = \markup { \large "Pedal." \hspace #1.8 }
      \pedal
    }
  >>
  \layout { }
}


\score {
  \new PianoStaff {
    <<
      \new Staff = "right" {
        \set Staff.midiInstrument = "flute"
        \sopran
      }
      \new Staff = "left" {
        \set Staff.midiInstrument = "pan flute"
        \alt
      }
      \new Staff {
        \set Staff.midiInstrument = "pan flute"
        \bass
      }
      \new Staff {
        \set Staff.midiInstrument = "bassoon"
        \pedal
      }

    >>
  }

  \midi {
    \tempo 4 = 124
  }
}
