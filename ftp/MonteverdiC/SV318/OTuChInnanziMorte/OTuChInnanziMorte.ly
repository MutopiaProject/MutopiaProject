\version "2.18.2"

\midi {
  \tempo 2 = 50
}

\header {
  title = "O tu ch'innanzi morte"
  composer = "Claudio Monteverdi (1567—1643)"
  poet = "Alessandro Striggio the Younger (1573—1630)"

  date = "1607"
  maintainer = "Anonymous"
  mutopiacomposer = "MonteverdiC"
  mutopiainstrument = "Voice (Bass), Reed Organ"
  mutopiapoet = "Alessandro Striggio the Younger"
  mutopiatitle = "O tu ch'innanzi morte (L'Orfeo)"
  license = "Public Domain"
  source = "L'ORFEO / FAVOLA / IN MVSICA / DA CLAVDIO MONTEVERDE / MAESTRO DI CAPELLA / DELLA SERENISS. REPVBLICA. / RAPPRESENTATA IN MANTOVA / L'Anno 1607. Et novamente Ristampata. / IN VENETIA M D C X. V. / Appresso Riccardo Amadino. (IMSLP51366-PMLP21363, IMSLP30835-PMLP21363)"
  style = "Baroque"
  footer = "Mutopia-2019/07/13-2246"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}

global = {
  \key d \minor
  \time 2/1
  \override Score.TimeSignature #'stencil = #ly:text-interface::print
  \override Score.TimeSignature #'text = \markup \musicglyph #"timesig.C44"

  \cadenzaOn s1*2 s16 \cadenzaOff \bar "|" \set Score.currentBarNumber = #2 s1*4 \break
  s1*2 \noBreak s1*4 \break
  s1*6 \break
  s1*2 \cadenzaOn s1*2 s8 \cadenzaOff \bar "|" \set Score.currentBarNumber = #12 s1*2 \break
  s1*4 \cadenzaOn s1*2 s16 \cadenzaOff \bar "|" \set Score.currentBarNumber = #16 \break
  s1*6 \break
  s1*6 \bar "|."
}

voice = \relative c' {
  a1^"Caronte canta al suono del Regale." f2~ f8 f f8. f8 |
  bes,2. bes4 f4. a8 c2 |
  c2 r4 c8 c c4 c8 c c2~ |

    \barNumberCheck 4

  c4 e g4. d8 c2 c |
  r4 c bes a g2 g |
  r8 g g bes a4. g8 d'2 d |

    \barNumberCheck 7

  r8 d d d d4. d8 d4. f8 e4. d8 |
  d2 d4 a'4~ a2 r4 f |
  f4 f8 f bes,4. bes8 f4. a8 c2 |

    \barNumberCheck 10

  c2 c4 c8 c c2~ c8 c c e |
  g4. d4 c2 c r8 c bes a |
  g2 g4 g bes a8 g d'2 |

    \barNumberCheck 13

  d2 r4 d8 d d4 d8 d d4 f |
  e4. d8 d2 d r8 a' a4~ |
  a8 a a g bes4 f2 f8. g8 g2 |

    \barNumberCheck 16

  g2 r8 c, c c c4. c8 c4~ c8 e |
  g4. d8 c2 c r4 c |
  c8 c bes a g4. bes8 a4. g8 d'2 |

    \barNumberCheck 19

  d2 a' a r4 cis,!4 |
  cis!4 cis!8 cis! d2 d r4 d |
  c4 bes a2 d1\fermata |
}

text = \lyricmode {
  O tu ch'in -- nan -- zi mor -- t'a que -- ste ri -- ve Te -- me -- ra -- rio te'n vie --
  ni,_ar -- re -- sta_i pas -- si Sol -- car quest' -- on -- de ad huom mor -- tal non das -- si
  Ne può co' -- mor -- ti_al -- ber -- go_ha -- ver chi vi -- ve Che? voi for -- se ne -- mi -- co_al mio si -- gno --
  re Cer -- be -- ro trar da le tar -- ta -- ree por -- te O ra -- pir bra -- mi sua ca -- ra con -- sor --
  te D'im -- pu -- di -- co de -- si -- re_ac -- ceso il co -- re? Pon fre no_al foll' -- ar -- dir, ch'en -- tr'al mio le --
  gno No ac -- cor -- ro più mai cor -- po -- rea sal -- ma Sì de gli_an -- ti -- chi_ol -- tra -- gg'an -- cor nel' -- al --
  ma Ser -- bo a -- cer -- ba me -- mo -- ria e gius -- to sde -- gno.
}

%{
O tu ch'innanzi mort'a queste rive
Temerario te'n vie ni, arresta i passi
Solcar quest'onde ad huom mortal non dassi
Ne può co'morti albergo haver chi vive
Che? voi forse nemico al mio signore
Cerbero trar da le tartaree porte
O rapir brami sua cara consorte
D'impudico desire acceso il core?
Pon fre no al foll'ardir, ch'entr'al mio legno
No accorro più mai cor porea salma
Sì de gli antichi oltragg'ancor nel'alma
Serbo acerba memoria e giusto sdegno.
%}

organ = \relative c {
  f1~ f s16 |
  bes,1 f2 c'~ |
  c2 c~ c1 |

    \barNumberCheck 4

  a2 g c1~ |
  c1 g |
  g1 d' |

    \barNumberCheck 7

  d1~ d2 a2 |
  d1 f1~ |
  f2 bes, f c' |

    \barNumberCheck 10

  c1~ c2 a |
  g2 s8 c1 c2 |
  g1~ g2 d'~ |

    \barNumberCheck 13

  d2~ d1~ d2 |
  a2 d1 f2~ |
  f2 bes, f s16 c'2~ |

    \barNumberCheck 16

  c2~ c~ c a |
  g2 c1~ c2~ |
  c2 g1 d'2~ |

    \barNumberCheck 19

  d2~ d1 cis2~ |
  cis2 d1~ d2~ |
  d2 a d1\fermata |
}

\score {
  <<
    \new Staff \with { midiInstrument = "voice oohs" } <<
      \new Voice \global
      \new Voice = "voice" {
        \clef bass
        \autoBeamOff
        \voice
      }
      \new Lyrics \lyricsto "voice" \text
    >>
    \new Staff = "organ" \with { midiInstrument = "reed organ" } <<
      \clef bass
      \global
      \organ
    >>
  >>

  \layout {}
  \midi {}
}