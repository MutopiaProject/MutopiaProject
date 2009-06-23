\version "2.12.2"
\header {
    mutopiatitle = "Nun bitten wir den heiligen Geist"
    mutopiaopus = "BuxWV 208"
    mutopiacomposer = "BuxtehudeD"
    mutopiainstrument = "Organ"
    mutopiastyle = "Baroque"
    copyright = "Public Domain"
    maintainer = "Dieter Leber"
    maintainerEmail = "dieter.leber@gmx.de"
    lastupdated = "2009-06-16"
    source = "http://www.free-scores.com/download-sheet-music.php?pdf=1659"
    title = "Nun bitten wir den heiligen Geist"
    subtitle = "BuxWV 208"
    composer = "Dietrich Buxtehude (1637-1707)"
    copyright = ##f
 footer = "Mutopia-2009/06/23-1683"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\paper {
    top-margin= #5.2
    bottom-margin= #9.5
    between-system-padding = #0.2
    between-system-space = #0.3
    after-title-space = #0.1
    ragged-last-bottom = ##f %% stretch and center systems of last page
    #(ly:set-option 'point-and-click #f) %% for smaller PDFs
}

\layout {
    indent = 0.0\cm
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)


oben = \relative c {
    \key g \major
    \time 4/4
    s2 g''4. fis16 g
    a2 a4~ a16 b a b
    g4~ g16 a16 g fis e4~ e16 d16 e fis
    d4. e16 fis g2\mordent~
    %% 5
    g16 a16 b c d e fis g r16 fis, g a g8.\prall fis16
    g1
    r2 b4. c8
    d e f e16 d e2\mordent
    d4. c8 b2
    %% 10
    a e4. fis8
    g2~\mordent g16 a g a fis a g fis
    g g fis e d g b, d g,4 r4
    r1
    b'4~ b16 c16 b c b4~ b16 c16 b c
    %% 15
    b4~ b16 c16 b c a4~ a16 b16 c b
    b8 a16 g fis b dis, fis b,8 b' a8.\prall b16
    g4 r4 r8 g8 fis8. g16
    a2 r8 b16 c d8 c16 b
    a2~ a16 c16 b c a8.\prall g16
    %% 20
    g2 r2
    r1
    r16 g16 fis e d d' c b a8 b c16 d c d
    b4. b16 c b8 c16 b a8 b16 a
    g4~ g16 a16 fis g e4~ e16 fis16 g a
    %% 25
    fis g fis g fis a g fis g a g a g b a g
    a b a8~ a16 b16 a8~ a16 g16 fis e d c b a
    g8 g' g4~ g16 fis16 g a g8.\prall f16
    e2~ e16 e16 fis g fis g e fis
    d b' a b g8.\prall fis16 g2
    %% 30
    r16 g' fis e d c b a g b a g g8.\prall fis16
    g8 d'16 c b d e fis g a g8~ g16 a16 g8~
    g16 a16 g8~ g16 a16 g8~ g16 a16 g8~ g16 a16 g fis
    g2 \bar "|."
}

mitteOben = \relative c {
    \key g \major
    \time 4/4
    s4*2 r8 b'8 e4~
    e8 d8 e8 d8 c4 d8 c
    b c d4~ d8 c16 b c4~
    c4 b8 c d2~
    %% 5
    d2 c2
    \clef violin b4 d4 e4 d8 c8
    b8 b'8 a8 g8 fis4 g~
    g g g2~
    g4 a8 g fis4 g8 fis
    %% 10
    e4 d8 c b4 c4
    d1~
    d4 r4 g8 g g fis
    g4 e dis4 e4
    r4 fis2 e4
    %% 15
    \clef bass r8 dis e2 dis8 e8
    fis2 r4 fis4
    e4 r4 r2
    e4. d16 c d2
    e2 d4 c
    %% 20
    b4 b c4 d4
    e2~ e8 d8 c8 b8
    a4 b8 c d2~
    d8 \clef violin e16 fis g4~ g4 fis4~
    fis8 e8 d4~ d8 c16 b c4
    %% 25
    d1
    e2 d2
    b4 c8 b16 c d2~
    d8 c16 b c8. b16 c2
    b4 d2 e4
    %% 30
    d2. c4
    b2. c4
    d4 e4 d4 c4
    d2
}

mitteUnten = \relative c {
    \key g \major
    \time 4/4
    s4*2 r8 b'8 c4~
    c8 b8 c8 d8 a g fis4
    g2. a4~
    a8 g16 a g2 a4
    %% 5
    b4 a8 g a2
    \clef violin g4 b4 c4 b8 a8
    g8 g'8 fis8 e8 d4 e
    b2 c
    b4 a2 g4~
    %% 10
    g8 g fis4 g4 a4
    b2 a
    b4 r4 r2
    b8 b b a b4 g4
    r4 a g2
    %% 15
    \clef bass r4 r8 b8 c b a g
    fis2 r4 b4
    b4 r4 r8 b8 b4
    e,8 fis16 g a2 g4~
    g8 g fis e fis g4 fis8
    %% 20
    g2 a4 b4
    c8 g c4~ c8 b8 a8 g8
    fis4 g2 fis4
    g4 \clef violin r8 e'8 d4. c8
    b4. a8 g4 a~
    %% 25
    a a g2~
    g4 fis8 e fis2
    g1~
    g2~ g4 a8 g
    fis4 g2.
    %% 30
    b2. a4
    g2. a4
    b4 c4 b4 a4
    b2
}

unten = \relative c {
    \key g \major
    \time 4/4
    s4*2 r2
    r2 r4 d4
    e b c a
    b2. c4
    %% 5
    d1
    g,
    r1
    r2 c4 e
    g fis8 e d4 e8 d
    %% 10
    cis4 d2 c4
    b c d2
    g,4 r4 e'8 e e d
    e4 c b e,
    r4 dis' e2
    %% 15
    r4 g2 fis8 e
    dis2 r4 dis
    e16 e dis e b e g, b e,8 e' d8. e16
    c2 b
    c4 cis d d
    %% 20
    e2. d4
    c4. b8 a2
    d1
    r4 g,2 d'4
    e b c2~
    %% 25
    c2 b2
    cis d
    e b
    c2~ c4 a4
    b2~ b16 d16 b d c e c e
    %% 30
    d1
    g,1~
    g1~
    g2
}


\score {
    <<
        \new GrandStaff <<
            \new Staff {   
                #(set-accidental-style 'modern-cautionary) 
                \clef violin 
                << 
                    \oben
                >>
            }
            \new Staff {   
                #(set-accidental-style 'modern-cautionary) 
                \clef bass 
                << 
                    \mitteOben \\ 
                    \mitteUnten 
                >>
            }
        >> % end GrandStaff
        \new Staff {   
            #(set-accidental-style 'modern-cautionary) 
            \clef bass 
            << 
                \unten
            >>
        }
    >>
}

\score {
    \unfoldRepeats {
        <<
            \new Staff {   
                \clef violin 
                << 
                    \oben
                >>
            }
            \new Staff {   
                \clef bass 
                << 
                    \mitteOben \\ 
                    \mitteUnten 
                >>
            }
            \new Staff {   
                \clef bass 
                << 
                    \unten
                >>
            }
        >>
    }
    \midi {
        \context {
            \Score
            tempoWholesPerMinute = #(ly:make-moment 72 4)
        }
    }
}
