% -*- coding: utf-8-unix; -*-

\version "2.19.34"

\header {
  title = "Les étoiles d'or"
  subtitle = "No. 1 Valse"
  composer = "L. Streabbog (Louis Gobbaerts)"
  % see http://imslp.org/wiki/Category:Gobbaerts,_Louis

  mutopiatitle = "Les étoiles d'or, No. 1 Valse"
  mutopiacomposer = "GobbaertsL"
  mutopiainstrument = "Piano"
  % IMSLP #83958
  source = "G. Morosini & Co., 1882. The Crown Edition."
  style = "Romantic"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Masamichi Hosoda"
  maintainerEmail = "trueroad@trueroad.jp"
  maintainerWeb = "http://www.trueroad.jp/"

 footer = "Mutopia-2015/12/27-2092"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2015 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\pointAndClickOff

global = {
  \time 3/4
}

segnomark = \markup { \musicglyph #"scripts.segno" }

Fine = \markup { \italic "Fine" }

DS = \markup { \italic "D.S." }

upperC = \relative c' {
  \key c \major

  \repeat volta 2 {
    g''4-3^\segnomark r r | g r r |
    g(-3 fis-2 a-4 | g2.-3 ) |
    e4(-1 dis-2 e-1 | a-5 ) r g-. | d-1 r cis-2 | d2.-1 |

    g4-3 r r | g r r | g( fis a | g2. ) |
    d4(-1 cis-2 d-1 ) | b'2->-5( a4 ) | g r < g d b >-> | < g d b >-> r r |
  }

  \repeat volta 2 {
    \acciaccatura {g8-3} b4-.-5 r \acciaccatura {f8-2} a4-.-4 |
    \acciaccatura {g8} b4-.-5 r \acciaccatura {f8-2} a4-.-4 |
    \acciaccatura {f8} a4-. r \acciaccatura {e8-1} g4-.-3 |
    \acciaccatura {e8} g2. |
    < e g, >4-.-1-5 r < d f, >-. | < d f, >2. |
    < d f, >4-. r < c e, >-. | < c e, >2. |

    \acciaccatura {g'8} b4-. r \acciaccatura {f8-2} a4-.-4 |
    \acciaccatura {g8} b4-. r \acciaccatura {f8} a4-. |
    \acciaccatura {f8} a4-. r \acciaccatura {e8} g4-. | \acciaccatura {e8} g2. |
    < e g, >4-. r < d f, >-. | < d f, >2. |
    < c e, >4 < c e, > < c e,> | < c e, > r r |
  }
}

upperG = \relative c' {
  \key g \major

  \repeat volta 2 {
    b'-3 a-2 g-1 | fis-2 g-1 e' | d2. ~ | d4 r r |
    c-3 b a | gis-2 a-1 fis'-4 | e2.(-3 | d4 ) r r |

    b'-3 a g | fis-2 g-1 e' | d2. ~ | d4 r r |
    c-5 b a | e fis a | g r < g d b >-> | < g d b >-> r r |
  }
}

upper = {
  \clef treble

  \upperC
  \upperG
}

uppermidi = {
  \clef treble

  r2. |
  \upperC
  \upperG
  \upperC
}

lowerC = \relative c {
  \key c \major

  \repeat volta 2 {
    c4 < e g > < e g > | c < e g > < e g > |
    c < e g > < e g > | c < e g > < e g > |
    c < e g > < e g > | c < e g > < e g > |
    g, < f' g > < f g > | g, < f' g > < f g > |

    c < e g > < e g > | c < e g > < e g > |
    c < e g > < e g > | c < e g > < e g > |
    d < g b > < g b > | d < fis c' > < fis c' > |
    < g b > r < g b >-> | < g b >-> r r |
  }

  \repeat volta 2 {
    \grace {s8} g,4 < f' g > < f g > |
    \grace {s8} g,4 < f' g > < f g > |
    \grace {s8} c4 < e g > < e g > |
    \grace {s8} c4 < e g > < e g > |
    g, < f' g > < f g > | g, < f' g > < f g > |
    c < e g > < e g > | c < e g > < e g > |

    \grace {s8} g,4 < f' g > < f g > |
    \grace {s8} g,4 < f' g > < f g > |
    \grace {s8} c4 < e g > < e g > |
    \grace {s8} c4 < e g > < e g > |
    g, < f' g > < f g > | g, < f' g > < f g > |
    c < e g > < e g > | c r r_\Fine |
  }
}

lowerG = \relative c' {
  \key g \major

  \repeat volta 2 {
    g < b d > < b d > | g < b d > < b d > |
    a < c d > < c d > | a < c d > < c d > |
    d, < fis c' > < fis c' > | d < fis c' > < fis c' > |
    g < b d > < b d > | g < b d > < b d > |

    g < b d > < b d > | g < b d > < b d > |
    a < c d > < c d > | a < c d > < c d > |
    d, < fis c' > < fis c' > | d < fis c' > < fis c' > |
    < g b > r g,-> | g-> r r_\DS |
  }
}

lower = {
  \clef bass

  \lowerC
  \lowerG
}

lowermidi = {
  \clef bass

  r2. |
  \lowerC
  \lowerG
  \lowerC
}

dynamicsC = {
  \repeat unfold 16 { s2. | }
  s4\mf s s | \repeat unfold 13 { s2. | }
  s4\f s s | s2. |
}

dynamicsG = {
  \repeat unfold 16 { s2. | }
}

dynamics = {
  \dynamicsC
  \dynamicsG
}

dynamicsmidi = {
  \tempo 4 = 150
  \dynamicsC
  \dynamicsG
  \dynamicsC
}

\score {
  <<
    \new PianoStaff = "PianoStaff_pf" <<
      \new Staff = "Staff_pfUpper" << \global \upper \dynamics >>
      \new Staff = "Staff_pfLower" << \global \lower >>
    >>
  >>
  \layout { }
}

\score {
  %\unfoldRepeats {
    <<
      \new PianoStaff = "PianoStaff_pf" <<
	\new Staff = "Staff_pfUpper" << \global \uppermidi \dynamicsmidi >>
	\new Staff = "Staff_pfLower" << \global \lowermidi \dynamicsmidi >>
      >>
    >>
  %}
  \midi { }
}
