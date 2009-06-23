\version "2.12.2"
\header {
    mutopiatitle = "Nun bitten wir den heiligen Geist"
    mutopiaopus = "BuxWV 209"
    mutopiacomposer = "BuxtehudeD"
    mutopiainstrument = "Organ"
    mutopiastyle = "Baroque"
    copyright = "Public Domain"
    maintainer = "Dieter Leber"
    maintainerEmail = "dieter.leber@gmx.de"
    lastupdated = "2009-06-16"
    source = "http://www.free-scores.com/download-sheet-music.php?pdf=1659"
    title = "Nun bitten wir den heiligen Geist"
    subtitle = "BuxWV 209"
    composer = "Dietrich Buxtehude (1637-1707)"
    copyright = ##f
 footer = "Mutopia-2009/06/23-1684"
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
    g''1
    a2 a
    g2~ g8 f8 f g16 f
    e2~ e8 g8 fis\prall e
    %% 5
    d8. e16 fis e d8 g2~
    g8 fis16 g fis8.\prall e16 fis8 g16 a g8.\prall fis16
    g2 r2
    r1
    r4 r16 e'16 d c b8. c32 d c8 b16 c
    %% 10
    d4~ d16 d16 e f e8. d16 e g f e
    d4~ d16 f16 e d c8 b16 c d e d c
    b4.\prall c16 d a4. b16 a
    g a g fis e fis g8~ g16 fis16 g a g4~
    g8 fis16 g a b g a fis8 e16
    %% 15
    fis g fis g32 fis g fis
    g2 r2
    r1 \pageBreak
    b2 b
    b a16 a b c b c b a
    %% 20
    b2~ b8 b a b16 a
    g2. g4
    a8. b16 c b a c b8. a16 b c d e
    a,2~ a4. b16 a
    g2 r2
    %% 25
    r1
    r1
    a2~ a8 b16 c b c a c
    b4~ b16 a16 b c d e c d b c a b
    g a b a g a g fis e8 fis16 g a8 g
    %% 30
    fis4. g16 a g a b a g a fis g
    a2~ a8 b16 c b8. a16
    g2~ g8 a16 g f8 g16 f
    e1
    d4. e16 fis g2~
    %% 35
    g2~ g16 fis16 g a g8.\prall fis16
    g1^\fermata     \bar "|."
}

mitteOben = \relative c {
    \key g \major
    \time 4/4
    r2 d'
    e2 d
    d1~
    d4 c8 b c2
    %% 5
    a2 r4 d~
    d1~
    d2 r2
    r2 r4 e
    g4 a g2
    %% 10
    a4 g4~ g2
    a4 g a2~
    a8 g16 fis g2 fis4
    e1~
    e2 d4 c
    %% 15
    b2 r2
    e4 e e d
    e2. dis4\prall
    e4 d e d4~
    d2 g4 fis4
    %% 20
    e2 e2
    fis2 g2
    e2 d2~
    d8 e d4 r2
    d4. d8 e8 d c b
    %% 25
    a b16 c d8. c16 b8 c16 d e8 d
    c4 cis4 d2~
    d2~ d4. dis8
    e4. fis8
    g fis e4~
    %% 30
    e dis4 e2~
    e2. d4~
    d8 e16
    f e8. d16 e4 d
    c1~
    %% 35
    c4 b4~ b8 e b c
    d2~ d4 d4~
    d8 e8 d c d2
}

mitteUnten = \relative c {
    \key g \major
    \time 4/4
    r2 b'
    c1~
    c4 b8 a b2~
    b4 a8 g a2
    %% 5
    fis r4 b4 ~
    b4 a8 g a2
    b4 \clef violin b d e
    d4 c b2~
    b4 c8 d e2
    %% 10
    d8 c b4 c2~
    c4 b4 e d4 ~
    d2 e4 d~
    d c2 b4
    a1
    %% 15
    \clef bass g2 b4 b
    b a b2~
    b8 a g4 fis2
    g2~ g4. fis8
    g4 b e8 d c4
    %% 20
    b2 c2~
    c2 d2
    c1
    b8 c8 b4 g4. g8
    b a g fis8 e8 fis16 g a8 g8
    %% 25
    fis2 g2~
    g4 fis8 e8 fis2
    g4 r4 r4 r8 a8
    b c b a8 b4 c4~
    c b b2
    %% 30
    a4 g fis2
    g1~
    g2 a2~
    a4 g4~ g2
    d8 g16 a b4~ g8 a8 a4
    %% 35
    b8 c8 b8 a8 b2
}

unten = \relative c {
    \key g \major
    \time 4/4
    r2 g'2~
    g fis2
    g g,
    c1~
    %% 5
    c2 r4 b8 c
    d2 d,
    g r4 e'
    g a g2
    e2. e4
    %% 10
    fis g c,2
    fis,4 g2 fis4
    g b cis d
    e2~ e4. d8
    c4 cis d2
    %% 15
    e4 e e d
    e c b4. a8
    g4. a8 b2
    e,4 b' c d
    g,4. fis8 e2~
    %% 20
    e4 e'8 d c4 b
    a2 g4 g'4~
    g4 fis8 e fis2
    g8 c, g4 r2
    r1
    %% 25
    d'4. d8 e d c b
    a2 d,4 d'
    g,8 g'4 g8 b a g fis
    e2~ e8 d8 c b
    a4 b e, e'8 d
    %% 30
    cis2 d
    b c2~
    c4 b4 a g
    fis g8 g e4 e'
    b4. c8 d2
    %% 35
    g,1_\fermata
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
                    \stemUp { \mitteOben }  \\
                    \stemDown { \mitteUnten }
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
