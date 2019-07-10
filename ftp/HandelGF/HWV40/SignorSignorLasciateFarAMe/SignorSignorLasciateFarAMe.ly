\version "2.18.2"

\layout {
  \context {
    \Staff
    \RemoveEmptyStaves
  }
}

\midi {
  \tempo 4 = 115
  \context {
    \Voice
    \remove "Dynamic_performer"
  }
}

\paper {
  page-count = #1
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  title = "Signor, Signor, lasciate far a me"
  composer = "George Frideric Handel (1685-1759)"
  arranger = "Ernst Victor Wolff (1889-1960)"

  maintainer = "Anonymous"
  mutopiacomposer = "HandelGF"
  mutopiainstrument = "Voice (Bass), Piano"
  mutopiatitle = "Signor, Signor, lasciate far a me (Serse)"
  license = "Public Domain"
  source = "DR. V. ERNST WOLFF, DEM CEMBALISTEN DER HÄNDEL-OPERNFESTSPIELE ZU EIGEN / XERXES / ODER / DER VERLIEBTE KÖNIG / 〈 SERSE 〉 / HEITERE OPER IN DREI AKTEN / MUSIK VON / GEORG FRIEDRICH HÄNDEL / MUSIKALISCHE EINRICHTUNG AUF GRUND / DER PARTITUR DER DEUTSCHEN HÄNDELGESELLSCHAFT / FREIE NEUGESTALTUNG DES / TEXTBUCHES UND DER SECCO-REZITATIVE VON / OSKAR HAGEN / KLAVIER-AUSZUG VON / V. ERNST WOLFF / EIGENTUM DES VERLEGERS / C. F. PETERS, LEIPZIG (IMSLP134224-PMLP24130)"
  style = "Baroque"
  footer = "Mutopia-2019/07/10-2242"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}

sempreMarkup = \markup \fontsize #-0.1 \italic "sempre"
sempre = #(make-music 'CrescendoEvent
                      'span-direction START
                      'span-type 'text
                      'span-text sempreMarkup)

pizzicatoUnisono = \markup \whiteout { \dynamic f \normal-text \italic "(pizzicato unisono)" }
sceneNotes = ""
%{sceneNotes = \markup \normal-text {
  \justify {
    "Er will nach jeder Strophe davonrennen, da ihm immer noch etwas einfällt, kehrt er jedesmal wieder."
    "Die letzte Strophe völlig ad spectatores. Die Szene bleibt einen Augenblick leer."
  }
}%}

global = {
  \tempo Allegro
  \key d \minor
  \time 4/4
  \partial 8

  \repeat volta 3 {
    s8 s1*3 \break
    s1*3 \break
    s1*3 \break
    s1*3 \break
    s1 \noBreak s1 \noBreak s1 \noBreak s1
  }
}

voice = \relative c {
  d8 |
  a'4 r8 a d4 r8 a |
  bes8 g a a, d4 r8 f |
  g4 a bes4. c8 |

    \barNumberCheck 4

  a16[ g] f8 r4 r c'8 bes |
  a8 g a f c'4 g8 f |
  e8 d e c g'4 d'8 c |

    \barNumberCheck 7

  bes8 a bes g d'4 a8 g |
  f8 e f d a'4 r8 d, |
  a'4 r8 a d4 r8 a |

    \barNumberCheck 10

  bes8 g a a, d4 r8 e |
  f8 g a b cis a d g, |
  a4. a8 d,4 r |

    \barNumberCheck 13

  R1*3 |
  R1*8/8
}

germanFirstStanza = \lyricmode {
  \set stanza = #"1. "
  Ich habs, ich habs! Das wird ein Mei -- ster -- stück! Mein Schlacht -- plan ist ent --
  wor -- fen! Sprin -- ge, lau -- fe pfeil -- gesch -- wind, keh -- re wie -- der wie der Wind, glaubt ihr,
  ich se noch nicht fort, bin ich schon am fer -- nen Ort! Ich habs, ich habs! Das
  wird ein Mei -- ster -- stück, das wird ein Mei -- ster -- stück, das wird ein Mei -- ster -- stück!
}
germanSecondStanza = \lyricmode {
  \set stanza = #"2. "
  Der Brief, der Brief, der wird ihr zu -- ge -- steckt. Kein' and -- re soll ihn
  ha -- ben! Wie mir auch das Her -- ze schlägt, wenn man mich um Aus -- kunft frägt: bin ver --
  schwie -- gen wie das Grab, weil ich die -- sen Auf -- trag hab. Der Brief, der Brief, der
  wird ihr zu -- ge -- steckt, der Brief der wird ihr granz al -- lei -- ne zu -- ge -- steckt.
}
germanThirdStanza = \lyricmode {
  \set stanza = #"3. "
  Paßt auf, paßt auf! Das wird ein Mei -- ster -- stück! Ihr sollt den Scharf -- sinn
  lo -- ben! Sprin -- ge, lau -- fe pfeil -- gesch -- wind, keh -- re wie -- der wie der Wind, glaubt ihr,
  ich se noch nicht fort, bin ich schon am fer -- nen Ort! Paßt auf, paßt auf, das
  wird ein Mei -- ster -- stück, das wird ein Mei -- ster -- stück, das wird ein Mei -- ster -- stück!
}

italianLyrics = \lyricmode {
  % Source: G. F. Händel's / Werke. / Lieferung XCII. / Opern / Band XXXVIII. / Serse. / Ausgabe der Deutschen Händelgesellschaft / Leipzig, / Stid un Druck der Gesellschaft. / 1884. (IMSLP63006-PMLP24130)

  Si -- gnor, Si -- gnor, la -- scia -- te far a me, io l'ho pen -- sa -- to
  be -- ne cor -- ro vo -- lo par -- to vó, e più pres -- to tor -- ne -- rò, e più
  pres -- to tor -- ne -- rò, che se_a -- ves -- si l'a -- li_al piè; Si -- gnor, Si -- gnor, la --
  scia -- te far a me, la -- scia -- te far a me, la -- scia -- te far a me.
}

%{
Ich habs, ich habs! Das wird ein Meisterstück!
Mein Schlachtplan ist entworfen!
Springe, laufe pfeilgeschwind,
Kehre wieder wie der Wind,
Glaubt ihr, ich se noch nicht fort,
Bin ich schon am fernen Ort!

Der Brief, der Brief, der wird ihr zugesteckt.
Kein' andre soll ihn haben!
Wie mir auch das Herze schlägt,
Wenn man mich um Auskunft frägt:
Bin verschwiegen wie das Grab,
Weil ich diesen Auftrag hab.

Paßt auf, paßt auf! Das wird ein Meisterstück!
Ihr sollt den Scharfsinn loben!
Springe, laufe pfeilgeschwind,
Kehre wieder wie der Wind,
Glaubt ihr, ich se noch nicht fort,
Bin ich schon am fernen Ort!
%}

%{
Signor, Signor, lasciate far a me,
Io l'ho pensato bene.
Corro volo parto vó,
E più presto tornerò,
Che se avessi l'ali al piè.
%}

upper = \relative c' {
  d8^\markup { \italic Tutti \normal-text "[ Streichquintett, Cembalo ]" } |
  a'4 r8 a d4 r8 a |
  bes8 g a a, d4 r8 f |
  \stemUp g4 a bes4. c8 \stemNeutral |

    \barNumberCheck 4

  a8 f d'4\rest d\rest c8 bes |
  a8 g a f \stemUp c'4 \stemNeutral g8 f |
  e8 d e c g'4 d'8 c |

    \barNumberCheck 7

  bes8 a bes g \stemUp d'4 \stemNeutral a8 g |
  f8 e f d a'4 r8 d, |
  a'4 r8 a d4 r8 a |

    \barNumberCheck 10

  bes8 g a a, d4 r8 e |
  f8 g a b cis a d g, |
  a4. a8 d,4 r8 <f' a> |

    \barNumberCheck 13

  <f a>8^\tweak X-offset #-4 #(make-dynamic-script sceneNotes) <a c> <a c> <g bes>16 <f a> <e g>8 g, <e' g> g, |
  <e' g>8 <g bes> <g bes> <f a>16 <e g> <d f>8 f, <d' f> f, |
  <a d f>8[ <f' a> <f a> <bes, e g>16 <d f>] <cis e>8 <cis bes'> <a d a'> <bes d g> |
  <a d f>4 <g cis e> <f d'> r8
}

upperSmall = \relative c' {
  s8 |
  s1 |
  s2. s8 c |
  d4 e f g |

    \barNumberCheck 4

  \once \override Beam.positions = #'(-5.5 . -5.5) c,8_~ c <d f> <c e> <a f'>4 s4 |
  s2 <e' g>4 s |
  s2 <bes d>4 s |

    \barNumberCheck 7

  s2 <f' a>4 s |
  s2 <cis e>4 s |
}

lower = \relative c {
  d8 |
  a'4 r8 a d4 r8 a |
  bes8 g a a, d4 r8 a |
  bes4 c d e |

    \barNumberCheck 4

  f8 a, bes c f,4 c''8 bes |
  a8 g a f c'4 g8 f |
  e8 d e c g'4 d'8 c |

    \barNumberCheck 7

  bes8 a bes g d'4 a8 g |
  f8 e f d a'4 r8 d, |
  a'4 r8 a d4 r8 a |

    \barNumberCheck 10

  bes8 g a a, d4 r8 e |
  f8 g a b cis a d g, |
  a4. a8 d,4 r8 <d' f> |

    \barNumberCheck 13

  <<
    {
      s2 c8[ e] c e |
      bes4 e8 c d d bes d |
      s2 cis8 e s4 |
    } \\ {
      <a, c>8 <f c'> <a f'> <bes d> c4 c,8 c' |
      g8 g, g' a bes4 bes,8 bes' |
      f8 d <f d'> g a g f g |
    }
  >>
  a4 a, d r8_#(make-dynamic-script (markup #:normal-text #:italic "attacca"))
}

dynamics = {
  s8-\tweak X-offset #0 #(make-dynamic-script pizzicatoUnisono) |
  s1*3 |

    \barNumberCheck 4

  s2. s4\p |
  s8\< s s s s4\! s8\cresc s\! |
  s8\< s s s s4\! s8\sempre s |

    \barNumberCheck 7

  s8 s s s\cresc s4 s |
  s2. s8 s\f |
  s1 |

    \barNumberCheck 10

  a1*2 |
  s2. s8\ff s |

    \barNumberCheck 13

   s8-#(make-dynamic-script (markup #:normal-text "(arco)")) s s2. |
  s1*2 |
  s2..
}

\score {
  <<
    \new Staff \with { midiInstrument = "voice oohs" } <<
      \new Voice \global
      \new Voice = "voice" {
        \clef bass
        \autoBeamOff
        \dynamicUp
        \voice
      }
      \new Lyrics \lyricsto "voice" \italianLyrics
      %\new Lyrics \lyricsto "voice" \germanFirstStanza
      %\new Lyrics \lyricsto "voice" \germanSecondStanza
      %\new Lyrics \lyricsto "voice" \germanThirdStanza
    >>
    \new PianoStaff \with { midiInstrument = "acoustic grand" } <<
      \new Staff = "upper" <<
        \clef treble
        \global
        \new Voice \upper
        \new CueVoice { \stemDown \upperSmall }
      >>
      \new Dynamics = "dynamics" <<
        \global
        \dynamics
      >>
      \new Staff = "lower" <<
        \clef bass
        \global
        \lower
      >>
    >>
  >>

  \layout {}
  \midi {}
}