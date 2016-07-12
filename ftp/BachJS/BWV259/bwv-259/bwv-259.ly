\version "2.18.2"

\language "english"

\header {
    title = "Ach, was soll ich Sünder machen"
    subtitle = "BWV 259"
    composer = "Johann Sebastian Bach"
    maintainer = "Tomasz Tokarski"
    mutopiatitle = "Ach, was soll ich Sünder machen"
    mutopiacomposer = "BachJS"
    mutopiainstrument = "Harpsichord, Piano"
    mutopiaopus = "BWV 259"
    source = "Johann Philipp Kirnberger, Carl Philipp Emanuel Bach"
    style = "Baroque"
    license = "Creative Commons Attribution-ShareAlike 4.0"
    maintainerEmail = "tomasz@tomasztokarski.com"
    maintainerWeb = "http://tomasztokarski.com"

 footer = "Mutopia-2016/07/12-2126"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

soprano =  \relative e' {
    \clef "treble" \key g \major \numericTimeSignature\time 4/4
    e4 e4 g4 g4 |
    a4 a4 b4 b4 ^\fermata |
    b4 d4 c4 b4 |
    a4. a8 g2 ^\fermata |
    a4 a4 b4 g4 |
    fs4. fs8 e2 ^\fermata |
    e'4 e4 d4 d4 |
    cs4 cs4 b4 b4 ^\fermata |
    d4 d4 c ?4 b4 |
    a4. a8 g2 ^\fermata |
    a4 a4 b4 g4 |
    fs4. fs8 e2 ^\fermata \bar "|."
}

alto =  \relative b {
    \clef "treble" \key g \major \numericTimeSignature\time 4/4
    b4 b4 e4 e4 |
    e4 a8 [ fs8 ] g4 g4 |
    g4 g4 g8 [ fs8 ] g4 |
    g4 fs4 d2 |
    fs4 e4 ds8 [ fs8 b,8 e16 ds16 ] |
    e4 ds4 b2 |
    g'4 g4 fs4 fs4 |
    g4 fs4 fs4 fs4 |
    fs4 g4 g8 a4 g8 |
    g4 fs4 d2 |
    e4 fs4 fs4. e8 |
    e4 ds4 b2 \bar "|."
}

tenor =  \relative g {
    \clef "bass" \key g \major \numericTimeSignature\time 4/4
    g4 g4 b4 b4 |
    c4 d4 d4 d4 |
    d4 d8 [ b8 ] c8 [ d8 ] d4 |
    e8 [ c8 a8 d16 c16 ] b2 |
    d4 a4. g16 [ fs16 g8 c8 ( ] |
    c8 ) [ a8 fs8 b16 a16 ] g2 |
    b4 b4 b4 b4 |
    b4. as8 d4 d4 |
    d8 [ c8 ] b4 e8 d4 e8 ( |
    e8 ) [ c8 a8 d16 c16 ] b2 |
    cs4 d8 [ c8 ] b4 b8 [ c8 ( ] |
    c8 ) [ a8 fs8 b16 a16 ] gs2 \bar "|."
}

bass =  \relative e {
    \clef "bass" \key g \major \numericTimeSignature\time 4/4
    e8 [ fs8 g8 fs8 ] e8 [ d8 c8 b8 ] |
    a8 [ g8 fs8 d8 ] g4 g'4 _\fermata |
    g,8 [ a8 b8 e8 ] a,8 [ d8 g,8 b8 ] |
    c8 [ a8 ] d4 g,2 _\fermata |
    fs'8 [ e8 d8 c8 ] b8 [ ds8 e8 c8 ] |
    a8 [ fs8 ] b4 e,2 _\fermata |
    e8 [ fs8 g8 a8 ] b8 [ cs8 d8 b8 ] |
    e8 [ cs8 ] fs4 b,2 _\fermata |
    b'8 [ a8 g8 fs8 ] e8 [ fs8 g8 e8 ] |
    c8 [ a8 ] d4 g,2 _\fermata |
    g'4 fs8 [ e8 ] ds4 e8 [ c8 ] |
    a8 [ fs8 ] b4 e,2 _\fermata \bar "|."
}

staffs = {
    \new PianoStaff
    <<
        \new Staff <<
            \context Staff <<
                \context Voice = "Soprano" { \voiceOne \soprano }
                \context Voice = "Alto" { \voiceTwo \alto }
            >>
        >>
        \new Staff <<
            \context Staff <<
                \context Voice = "Tenor" { \voiceOne \tenor }
                \context Voice = "Bass" { \voiceTwo \bass }
            >>
        >>
    >>
}

\score {
    \staffs
    \layout {}
}

\score {
    \unfoldRepeats \staffs
    \midi { \tempo 4 = 60 }
}
