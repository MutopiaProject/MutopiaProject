\version "2.12.2"
\header {
    mutopiatitle = "Großer Gott, wir loben dich"
    mutopiaopus = "op. 135a, No. 10"
    mutopiacomposer = "RegerM"
    mutopiainstrument = "Organ"
    mutopiastyle = "Romantic"
    copyright = "Public Domain"
    maintainer = "Dieter Leber"
    maintainerEmail = "dieter.leber@gmx.de"
    lastupdated = "2009-06-16"
    source = "Edition Peters Nr. 3980"
    title = "Großer Gott, wir loben dich"
    composer = "Max Reger (1873 - 1916)" 
    opus = "op. 135a, Nr. 10"
    copyright = ##f
 footer = "Mutopia-2009/06/24-1686"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

tempoMark = #(define-music-function (parser location markp) (string?)
#{ \once \override Score . RehearsalMark #'self-alignment-X = #left
\once \override Score . RehearsalMark #'extra-spacing-width = #'(+inf.0 . -inf.0)
\mark \markup { \bold $markp } #})

\paper {
    system-count = #3
    pagetopspace = #0.0
    top-margin= #5.2
    bottom-margin= #5.5
    between-system-padding = #0.1
    between-system-space = #0.1
    after-title-space = #0.1
    between-title-space = #0.0
    ragged-last-bottom = ##f %% stretch and center systems of last page
    #(ly:set-option 'point-and-click #f) %% for smaller PDFs
}

\layout {
    indent = 0.0\cm
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 17)

global = { 
    \key g \major
    \time 3/4
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Satz
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
satztracka = \relative c { 
    \global
    \tempoMark "Bewegt"
    g''2-- ( g4--
    g-- fis g
    a b a
    g2.\fermata )
    %% 5
    b2-- ( b4--
    b-- a g
    d'! c b--
    b2 a4\fermata )
    g2-- ( g4--
    %% 10
    g-- fis g
    a b a
    g2. \fermata ) %% \break
    b2-- ( b4--
    b-- a g
    %% 15
    d'! c b--
    b2-- a4\fermata )
    a2 ( b4
    c b a
    b2 c4 
    %% 20
    d2. \fermata )
    e2-- ( e4--
    d c b^\markup {\italic "sempre rit       -        -        -       -      "}
    c b a
    g2.\fermata )
    \bar "|."
}

satztrackb = \relative c { 
    \global
    d'4 dis e~
    e es d
    e d4. c8
    b4 d e
    %% 5
    dis e fis~
    fis8 e4 dis e8~
    e f fis4 g~
    g fis8 e fis4
    d2 e4~
    %% 10
    e d2
    e8 [ es ] d cis c4
    b c d
    dis e fis
    e8 [ b ] cis dis e4
    %% 15
    f e2~
    e4 d8 cis d4
    c d2
    c4 d e8 es
    d2 e4
    %% 20
    fis g a
    e fis g
    gis a f
    e8 fis g4. fis8
    d2.
}

satztrackc = \relative c { 
    \global \slurDown \phrasingSlurDown
    b'2.^\f (
    a2 b4
    a8 g fis [ e ] fis4
    d ) g8 ( fis e4
    %% 5
    fis4. b8 a4
    g a bes
    b c8 d e4
    d8 b a g a4 ) 
    b^\markup {\italic "più" \dynamic f} \( g c8 b
    %% 10
    bes4 a g~
    g \afterGrace fis2\trill ( { e16 ) [ fis ] }
    g2. \)
    a4 ( g fis
    b8 g a4 b
    %% 15
    gis a g~
    g fis8 e fis ) [ f ] (
    e4^\markup {\italic "più" \dynamic f} a f
    e g4. fis8
    g4 a g
    %% 20
    a2 b8 c
    b4^\ff c cis
    d e d
    c d4.. c16
    b2.\fermata )
}

satztrackd = \relative c { 
    \global
    g'4\f ( fis e
    c2 b4
    c d d,
    g ) b ( c
    %% 5
    b cis dis
    e fis g
    gis a8 b cis4
    d d,2 )
    g4_\markup {\italic "più" \dynamic f} ( b, c
    %% 10
    cis d8 c b4
    c d dis
    e ) a, ( b
    fis' e dis
    g fis e
    %% 15
    b c cis
    d d, d' )
    a_\markup {\italic "più" \dynamic f} ( f' gis,
    a b c
    g fis e
    %% 20
    d e fis
    gis\ff a ais
    b c d
    a b8 c d4
    g,2.\fermata )
}


\new Score {
    \transpose g g {
        <<
            \new GrandStaff <<
                \new Staff {
                    #(set-accidental-style 'modern-cautionary) 
                    \clef violin 
                    <<
                        \satztracka \\
                        \satztrackb
                    >>
                }
                \new Staff {
                    #(set-accidental-style 'modern-cautionary) 
                    \clef bass 
                    <<
                        \satztrackc
                    >>
                }
            >> % end GrandStaff
            \new Staff {
                #(set-accidental-style 'modern-cautionary) 
                \clef bass 
                <<
                    \satztrackd
                >>
            }
        >>
    }
}


\score {
    \unfoldRepeats {
        <<
            \new GrandStaff <<
                \new Staff {
                    \clef violin 
                    <<
                        \satztracka \\
                        \satztrackb
                    >>
                }
                \new Staff {
                    \clef bass 
                    <<
                        \satztrackc
                    >>
                }
            >> % end GrandStaff
            \new Staff {
                \clef bass 
                <<
                    \satztrackd
                >>
            }
        >>
    }
    \midi {
        \context {
            \Score
            tempoWholesPerMinute = #(ly:make-moment 108 4)
        }
    }
}



