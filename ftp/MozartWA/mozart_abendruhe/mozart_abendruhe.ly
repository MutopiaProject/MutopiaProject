\version "2.12.2"
\header {
    mutopiatitle = "Abendruhe"
    mutopiaopus = "KV ANH C 9.10"
    mutopiacomposer = "MozartWA"
    mutopiainstrument = "Voice (SATB)"
    mutopiastyle = "Classical"
    copyright = "Public Domain"
    maintainer = "Dieter Leber"
    maintainerEmail = "dieter.leber@gmx.de"
    lastupdated = "2009-06-16"
    source = "http://www.cpdl.org/wiki/index.php/Abendruhe_(Wolfgang_Amadeus_Mozart)"
    title = "Abendruhe"
    composer = "Wolfgang Amadeus Mozart (1756-1791)"
    copyright = ##f
 footer = "Mutopia-2009/06/23-1685"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\paper {
    system-count = #4
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

tempoMark = #(define-music-function (parser location markp) (string?)
#{ \once \override Score . RehearsalMark #'self-alignment-X = #left
\once \override Score . RehearsalMark #'extra-spacing-width = #'(+inf.0 . -inf.0)
\mark \markup { \bold $markp } #})

%% #(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

global = { 
    \key bes \major
    \time 3/4
}

sopran = \relative c { 
    \partial 4
    \tempoMark "Langsam" 
    f'4^\p
    bes2^\< bes4
    a2 \! bes4
    c2 a8^\> f
    f8. g16 f4\! b4\rest
    %% 5
    bes^\f a bes
    c2 bes4
    a ( bes ) g
    g8^\> f f4\! b4\rest
    f^\p f f
    %% 10
    \slurDotted a8-> ( g ) g4 b4\rest
    a4^\< ( a ) a\!
    \slurSolid c ( bes ) b4\rest
    a^\p a a
    bes2 c4
    %% 15
    bes2 a4
    bes2.
    bes4^\< bes bes
    bes2^\> g4
    f2^\pp f4
    f2 \fermata \bar "|."
}

alt = \relative c { 
    \partial 4
    f'4
    f2 f4
    f2 f4
    f2 es4
    d8. es16 d4 s4
    %% 5
    f f f
    f2 f4
    f ( g ) e
    e8 f f4 s4
    c c c
    %% 10
    \slurDotted d4 ( d ) s4
    es4 ( es ) es
    \slurSolid f2 s4
    d d d
    d2 g4
    %% 15
    f2 es4
    d2.
    d4 es f
    es2 es4
    d ( c ) es
    d2
}

tenor = \relative c { 
    \partial 4
    f4
    d'2 d4
    es2 d4
    c2 c4
    bes bes d,4\rest
    %% 5
    d' es d
    c2 d4
    c2 bes4
    bes8 a a4 d,4\rest
    a' a a
    %% 10
    \slurDotted bes4 ( bes ) d,4\rest
    c'4 ( c ) c
    \slurSolid d2 d,4\rest
    c' c c
    bes2 es4
    %% 15
    d2 c4
    bes2.
    f4 g as
    g2 bes4
    bes2 a4
    bes2
}

bass = \relative c { 
    \partial 4
    f4\p
    bes,2\< bes4
    c2 \! bes4
    a2 a4\>
    bes bes\! s4
    %% 5
    bes\f c bes
    a2 bes4
    c2 c4
    f\> f\! s4
    f\p f f
    %% 10
    \slurDotted f4-> ( f ) s4
    f4\< ( f ) f\!
    \slurSolid f2 s4
    fis\p fis fis
    g2 es4
    %% 15
    f2 f4
    bes,2.
    bes4\< bes bes
    es2\> es4
    f2\pp f4
    bes,2 \fermata
}

text = \lyricmode {
    \set stanza = "1. "
    Ver- klun- gen ist des Ta- ges Trei- - ben,
    nicht lang mehr will die Son- ne blei- - ben,
    von ih- rer "Ar  -   beit" ruht die Hand;
    der Fei- er- a- bend deckt das Land,
    der Fei- er- a- bend deckt das Land.
}

textzwei = \lyricmode {
    \set stanza = "2. "
    Viel Ster- ne klar am Him- mel schim- - mern,
    viel Her- zen bang auf Erd' sich küm- - mern
    um Er- den- leid "und        Er- " den- weh:
    mein Herz, blick' auf zur Him- mels- höh';
    mein Herz, blick' auf zur Him- mels- höh'!
}

textdrei = \lyricmode {
    \set stanza = "3. "
    Er, der am A- bend al- les dek- - ket,
    ob Leid, ob Freud der Tag ge- wek- - ket,
    in Feld und Wald "mit     Schat- " ten zu,
    er- füllt auch dich mit Fried' und Ruh',
    er- füllt auch dich mit Fried' und Ruh'.
}


\score {
    \new ChoirStaff <<
        \new Staff = women <<
            \clef violin
            \new Voice = "sopran" { \voiceOne << \global  \sopran >> }
            \new Voice = "alt" { \voiceTwo << \global \alt >> }
        >>
        \new Lyrics = sopranlyric { s1 }
        \new Lyrics = sopranlyrictwo { s1 }
        \new Lyrics = sopranlyricthree { s1 }
        \new Staff = men <<
            \clef bass
            \new Voice = "tenor" { \voiceOne << \global  \tenor >> }
            \new Voice = "bass" { \voiceTwo << \global \bass >> }
        >>
        \context Lyrics = sopranlyric \lyricsto alt \text
        \context Lyrics = sopranlyrictwo \lyricsto alt \textzwei
        \context Lyrics = sopranlyricthree \lyricsto alt \textdrei
    >>
}


\score {
    \unfoldRepeats {
        \new GrandStaff <<
            \new Staff {
                \set Staff.midiInstrument = "flute"
                \clef violin 
                <<
                    \sopran
                >>
            }
            \new Staff {
                \set Staff.midiInstrument = "flute"
                \clef violin 
                <<
                    \alt
                >>
            }
            \new Staff {
                \set Staff.midiInstrument = "flute"
                \clef bass 
                <<
                    \tenor
                >>
            }
            \new Staff {
                \set Staff.midiInstrument = "flute"
                \clef bass 
                <<
                    \bass
                >>
            }
        >> % end GrandStaff
    }
    \midi {
        \context {
            \Score
            tempoWholesPerMinute = #(ly:make-moment 80 4)
        }
    }
}

