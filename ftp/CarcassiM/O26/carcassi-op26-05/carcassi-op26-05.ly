\version "2.19.49"

\header {
  title = "Six Caprices"
  source = "Mainz: B. Schott's Söhne"
  % Statens musikbibliotek - The Music Library of Sweden
  % Boije 91
  composer = "Mateo Carcassi"
  opus = "Op. 26 No. 5"
  year = "ca. 1827"
  mutopiacomposer = "CarcassiM"
  mutopiainstrument = "Guitar"
  mutopiatitle = "Six Caprices, No. 5"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx at gmail.com"

 footer = "Mutopia-2017/01/16-1840"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2017 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\paper {
  line-width = 18.0\cm
  top-margin = 4\mm                              %-minimum: 8 mm
  top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
  markup-system-spacing.basic-distance = #10     %-dist. from header/title to first system
  top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
  last-bottom-spacing.padding = #2               %-min #1.5 -pads music from copyright block 
}


%% Syntax: \barre #"text" { notes } - text = any number of box
barre =
#(define-music-function (barre location str music) (string? ly:music?)
   (let ((elts (extract-named-music music '(NoteEvent EventChord))))
     (if (pair? elts)
         (let ((first-element (first elts))
               (last-element (last elts)))
           (set! (ly:music-property first-element 'articulations)
                 (cons (make-music 'TextSpanEvent 'span-direction -1)
                       (ly:music-property first-element 'articulations)))
           (set! (ly:music-property last-element 'articulations)
                 (cons (make-music 'TextSpanEvent 'span-direction 1)
                       (ly:music-property last-element 'articulations))))))
   #{
       \once \override TextSpanner.font-size = #-2
       \once \override TextSpanner.font-shape = #'upright
       \once \override TextSpanner.staff-padding = #3
       \once \override TextSpanner.style = #'line
       \once \override TextSpanner.to-barline = ##f
       \once \override TextSpanner.bound-details =
            #`((left
                (text . ,#{ \markup { \draw-line #'( 0 . -.5) } #})
                (Y . 0)
                (padding . 0.25)
                (attach-dir . -2))
               (right
                (text . ,#{ \markup { \draw-line #'( 0 . -.5) } #})
                (Y . 0)
                (padding . 0.25)
                (attach-dir . 2)))
       %% uncomment this line for make full barred
       \once  \override TextSpanner.bound-details.left.text =  \markup { #str " "}
       $music
   #})

commonVar = {
  \override Score.RehearsalMark.break-align-symbols = #'(key-signature)
  \override TextSpanner.staff-padding = #6
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
}

\layout {
  \context {
    \Voice
    \override StringNumber.stencil = ##f
  }
}


upperVoice = \relative c' {
  \voiceOne
  \tempo Allegro
  <a d fis>8\sf d,16 d' fis, d' a d g, d' fis, d' e, d' d, d' |
  <a e'>8 a,16 e'' cis, e' e, e' d, e' cis, e' b, e' a, e' |
  d,16\f d'-3 fis-2 d b,-1 d' fis d e, d'-3 gis-4 d e,, d'' gis d |
  \set minimumFret=5
  \barre #"V " { a,16 cis' a' cis, e, a' cis,, a''} \set minimumFret=0 a,,4 r |

  <a' cis g'>8\sf a,16 g'' cis,, g'' e, g' d, g' cis,, g'' b,, g'' a,, g'' |

  <a, d fis>8 d,16 fis' fis, fis' a, fis' g, fis' fis, fis' e, fis' d, fis' |
  g,16\f d' e d e, d' e d a d fis d a, cis' e cis |
  d,16 d' fis d a d fis, d' d, d' fis d d,\p fis'-3 a fis |

  d,16 fis'-3 ais-2 fis d, g'-3 b-2 g d, b''-3 d-1 b e-4 b d b |
  d,,16 eis' gis eis d, fis' a fis d, fis' a fis b fis a fis |
  a,,16 e'' g e a e g e a,, cis'-3 e-2 cis dis-1 cis e-2 cis |

  <a d fis>8 a16 d fis, d' a d d, d' fis d d, fis' a fis |
  d,16 fis' ais fis d, g' b g d, b'' d b e b d b |
  d,,16 eis' gis eis d, fis' a fis d, fis' a fis b fis a fis |

  g,,16\sf e'' g e a e g e a,, cis' e cis dis cis e cis |
  <a d fis>8 d,16 d' fis, d' a d g, d' fis, d' e, d' d, d' |
  << { e,,16\mf \stemDown d'' e d fis d e d gis d e d fis d e d}
     \\ { \stemUp f8\rest e fis e gis e fis e } >> |

  a16 cis, a, e'' cis, e' e, e' d, e' cis, e' b, e' a,, e'' |
  e,,16 b'' e b ais cis e cis b d e d gis, b e b |
  a16 cis e cis e, cis' e cis cis, cis' e cis a, cis' e cis |

  << { e,,16 \stemDown d'' e d fis d e d gis d e d fis d e d}
     \\ { \stemUp f8\rest e fis e gis e fis e } >> |
  a16 cis, a, e'' cis, e' e, e' d, e' cis, e' b, e' a,, e'' |
  e,,16 b'' e b ais cis e cis b d e d gis, b e b |

  a16 cis e cis e, cis' e cis cis, cis' e cis a, cis' e cis |
  a,16\p e'' g e a e g e a,, bis' dis bis a, cis' e cis |

  a,16 fis'' a fis b fis a fis a,, cis' eis cis a, d' fis d |
  <e g>8\f a,,16 g'' cis,,-4 g'' a,, g'' d, fis' a, fis' fis, fis' d, fis' |
  a,,16 cis' e cis e, cis' cis, cis' a, cis' e cis a cis e cis |
  \barNumberCheck #29
  a,16\p e'' g e a e g e a,, bis' dis bis a, cis' e cis |
  a,16 fis'' a fis b fis a fis a,, cis' eis cis a, d' fis d |
  <e g>8\f a,,16 g'' cis,, g'' a,, g'' d, fis' a, fis' fis, fis' d, fis' |

  <cis e>8 d16 e cis e b e a, e' g, e' fis, e' e, e' |
  <a, d fis>8\sf d,16 d' fis, d' a d g, d' fis, d' e, d' d, d' |
  <a e'>8\sf a,16 e'' cis, e' e, e' d, e' cis, e' b, e' a,, e'' |

  \barNumberCheck #35
  d,16\f d' fis d b, d' fis d e, d' gis d e,, d'' gis d |
  a,16 cis' a' cis, e, cis' cis, cis' a,4 r4 |
  <a' cis g'>8\sf a,16 g'' cis,, g'' e, g' d, g' cis,, g'' b,, g'' a,, g'' |

  <a, d fis>8\sf d,16 fis' fis, fis' a, fis' g, fis' fis, fis' e, fis' d, fis' |
  g,16 d' e d e, d' e d a d fis d a, cis' e cis |
  d,16 d' fis d a d fis, d' d, d' fis d d, fis' a fis |
  \barNumberCheck #41
  d,16\p fis' a fis d, g' b g d, b'' d b e b d b |
  d,,16 eis'gis eis d, fis' a fis d, fis' a fis b fis a fis |

  a,,16 e'' g e a e g e a,, cis' e cis dis cis e cis |
  <a d fis>8 a16 d fis, d' a d d, d' fis d d, fis' a fis |
  d,16 fis' a fis d, g' b g d, b'' d b e b d b |
  \barNumberCheck #46
  d,,16 eis' gis eis d, fis' a fis d, fis' a fis b fis a fis |
  a,,16 e'' g e a e g e a,, cis' e cis dis cis e cis |

  <a d fis>8\sf d,16 d' fis, d' a d g, d' fis, d' e, d' d, d' |
  <a e'>8 a,16 e'' cis, e' e, e' d, e' cis, e' b, e' a,, e'' |
  d,16\f d'-3 fis-2 d fis,, d'' fis d g,, d'' e d gis,,-4 d''-3 eis-1 d |

  a,16 d' fis d a d fis d a, cis' e cis a cis e cis |
  <a d fis>8\sf d,16 d' fis, d' a d g, d' fis, d' e, d' d, d' |
  <a e'>8\sf a,16 e'' cis, e' e, e' d, e' cis, e' b, e' a,, e'' |
  \barNumberCheck #54
  d,16\ff d'-3 fis-2 d c,-4 d' fis d b,-1 d'-3 g-4 d bes,-1 d'-3 g-4 d |
  a,16 fis''-4 a-1 fis a, -3 fis' a fis a,, g''-1 cis-3 g e g-2 cis g |
  <d fis d'>4. r16 q q4 q |
  q2^\fermata b\rest |

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo
  d8 d fis a g fis e d |
  cis8 a cis e d cis b a |
  d4 b e e, |
  \set minimumFret=5
  a4 e'8 cis \set minimumFret=0 a4 s4 |
  a8 a cis e d cis b a |

  d8 d fis a g fis e d |
  g4 e a a, |
  d4 a'8 fis d4 d |

  d4 d d2 |
  d4 d d2 |
  a2 a |

  d8 a' fis a d,4 d |
  d4 d d2 |
  d4 d d2 |

  g,2 a |
  d8 d fis a g fis e d |
  e,2 s |

  a''8 a,,8[ cis e] d cis b a |
  e4 ais' b gis |
  a4 e cis a |
  \barNumberCheck #21
  e2 s |
  a''8 a,,8[ cis e] d cis b a |
  e4 ais' b gis |

  a4 e cis a |
  a2 a4 a |

  a2 a4 a |
  a8 a cis a d a' fis d |
  a4 e'8 cis a4 a' |

  a,2 a4 a |
  a2 a4 a |
  a8 a cis a d a' fis d |

  a8 d'[ cis b] a g fis e |
  d8 d fis a g fis e d |
  cis8 a cis e d cis b a |

  d4 b e e, |
  a4 e'8 cis a4 s4 |
  a8 a cis e d cis b a |

  d8 d fis a g fis e d |
  g4 e a a, |
  d4 a'8 fis d4 d |

  d4 d d2 |
  d4 d d2 |

  a2 a |
  d8 a' fis a d,4 d |
  d4 d d2 |

  d4 d d2 |
  a2 a |

  d8 d fis a g fis e d |
  cis8 a cis e d cis b a |
  \textSpannerDown
  \override TextSpanner.bound-details.left.text = #"Pouce "
  d4 fis,\startTextSpan g gis\stopTextSpan |

  a4 a' a, a' |
  d,8 d fis a g fis e d |
  cis8 a cis e d cis b a |

  d4 c b bes |
  a4 a' a, e'' |
  d,4. r8 d4 d |
  d2._\fermata
}


\score {
  <<
    \new Staff = "Guitar" \with {
      midiInstrument = #"acoustic guitar (nylon)"
      instrumentName = #"Nº 5"
    } <<
      \commonVar
      \clef "treble_8"
      \key d \major \time 4/4
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
    >>
%{
    \new TabStaff = "guitar tab" \with {
      restrainOpenStrings = ##t
    }
    <<
      \clef moderntab
      \context TabVoice = "upperVoice" \upperVoice
      \context TabVoice = "lowerVoice" \lowerVoice
    >>
%}
  >>
  \layout {}
  \midi {
    \tempo 4 = 100
  }
}
