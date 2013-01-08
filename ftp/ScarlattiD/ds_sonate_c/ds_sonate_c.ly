\version "2.16.1"
#(set-global-staff-size 16)

Algemeen = { {\key c\major \time 12/8 \partial 4.}}
SU = {\change Staff = "up"}
SD = {\change Staff = "down"}

StemI = { \relative c'' {
    \stemUp g4^"m.d." r8
    c4. \SD \stemDown g,_"m.s." c, \SU \stemUp c''4\trill b16 c
    d4. \SD \stemDown g,, \stemUp g, \SU d'''4\trill c16 d
    e4. \SD c,, c, \SU e'''
    e4. ( d) \SD \stemDown g,,, \SU \stemUp g''4 r8

    c4. \SD \stemDown g, c, \SU \stemUp c''4\trill b16 c
    d4. \SD \stemDown g,, \stemUp g, \SU d'''4\trill c16 d
    e4. \SD c,, c, \SU e'''
    e4. ( d) \SD \stemDown g,,, \SU \stemUp g''

    \grace { a16[( bes] } c4. bes) \SD \stemDown c,, \SU \stemUp bes''\trill
    a4. \SD \stemDown c,, f, \SU \stemUp a''
    \grace { b!16[( c] } d4. c) \SD \stemDown d,, \SU \stemUp a''\trill
    b \SD \stemDown d,, g, \SU \stemUp d'''

    <g e> \SD \stemDown g,,, \SU \stemUp <f''' d> \SD \stemDown g,,,
    \SU \stemUp <e''' c> \SD \stemDown g,,, \SU \stemUp <d''' b> \SD \stemDown g,,,
    \SU \stemUp <g''' e> \SD \stemDown g,,, \SU \stemUp <f''' d> \SD \stemDown g,,,
    \SU \stemUp <e''' c> \SD \stemDown g,,, \SU \stemUp <d''' b> g,

    \grace { a16[( bes] } c4. bes) \SD \stemDown c,, \SU \stemUp bes''\trill
    a \SD \stemDown c,, f, \SU \stemUp a''
    \grace { b!16[( c] } d4. c) \SD \stemDown d,, \SU \stemUp c''\trill
    b \SD \stemDown d,, g, \SU \stemUp d'''

    \grace { e16[( f] } g4. f) \SD \stemDown g,, \SU \stemUp f''\trill
    e \SD \stemDown g,, c, \SU \stemUp g'''4\trill f16 g
    a4. \SD \stemDown c,, f, \SU \stemUp a''4\trill g16 f
    g4. \SD \stemDown c,, e, \SU \stemUp g''4\trill f16 e

    f4. \SD \stemDown b,, d, \SU \stemUp f''4\trill e16 d
    e4. c \SD \stemDown d,, \SU \stemUp b''4\trill a16 b
    c4. \SD c,, c \SU g''
    \grace { a16[( bes] } c4. bes) \SD \stemDown c,, \SU \stemUp bes''\trill

    a \SD \stemDown c,, f, \SU \stemUp a''
    \grace { b!16[( c] } d4. c) \SD \stemDown d,, \SU \stemUp c''\trill
    b \SD \stemDown d,, g, \SU \stemUp d'''
    <g e> \SD \stemDown g,,, \SU \stemUp <f'''! d> \SD \stemDown g,,,

    \SU \stemUp <e''' c> \SD \stemDown g,,, \SU \stemUp <d''' b> \SD \stemDown g,,,
    \SU \stemUp <g''' e> \SD \stemDown g,,, \SU \stemUp <f''' d> \SD \stemDown g,,,
    \SU \stemUp <e''' c> \SD \stemDown g,,, \SU \stemUp <d''' b> g,
    \grace { a16[( bes] } c4. bes) \SD \stemDown c,, \SU \stemUp bes''\trill

    a \SD \stemDown c,, f, \SU \stemUp a''
    \grace { b!16[( c] } d4. c) \SD \stemDown d,, \SU \stemUp a''\trill
    b \SD \stemDown d,, g, \SU \stemUp d'''
    \grace { e16[( f] } g4. f) \SD \stemDown g,, \SU \stemUp f''\trill

    e4. \SD \stemDown g,, c, \SU \stemUp g'''4\trill f16 g
    a4. \SD \stemDown c,, f, \SU \stemUp a''4\trill g16 f
    g4. \SD \stemDown c,, e, \SU \stemUp g''4\trill f16 e
    f4. \SD \stemDown b,, d, \SU \stemUp f''4\trill e16 d

    e4. c \SD \stemDown d,, \SU \stemUp b''4\trill a16 b
    c4. \SD \stemUp c,,, c
    \bar "|."
    }}

StemII = { \relative c' {
    \SU \stemDown c8_"m.d." e g
    c, e g c, e g c, e g c, e g
    b, d g b, d g b, d g b, d g
    c, e g c, e g c, e g c, e g
    \SD \stemUp g, c e g, b d g, b d \SU \stemDown c e g

    \SU \stemDown c, e g c, e g c, e g c, e g
    b, d g b, d g b, d g b, d g
    c, e g c, e g c, e g c, e g
    \SD \stemUp g, c e g, b d g, b d e, g c

    e, g c e, g c e, g c e, g c
    f, a c f, a c f, a c f, a c
    fis, a d fis, a d fis, a d fis, a d
    g, b d g, b d g, b d g, b d

    g, c e g, c e g, b d g, b d
    g, c e g, c e g, b d g, b d
    g, c e g, c e g, b d g, b d
    g, c e g, c e <g, b d>4. e8 g c

    e, g c e, g c e, g c e, g c
    f, a c f, a c f, a c f, a c
    fis, a d fis, a d fis, a d fis, a d
    g, b d g, b d g, b d g, b d

    \SU \stemDown b d g b, d g b, d g b, d g
    c, e g c, e g c, e g c, e g
    f a c f, a c f, a c f, a c
    e, g c e, g c e, g c e, g c

    d, f b d, f b d, f b d, f b
    c, e g \SD \stemUp e, g c f, a d g, b d
    \SU \stemDown c e g c, e g c, e g \SD \stemUp e, g c
    e, g c e, g c e, g c e, g c

    f, a c f, a c f, a c f, a c
    fis, a d fis, a d fis, a d fis, a d
    g, b d g, b d g, b d g, b d
    g, c e g, c e g, b d g, b d

    g, c e g, c e g, b d g, b d
    g, c e g, c e g, b d g, b d
    g, c e g, c e <g, b d>4. e8 g c
    e, g c e, g c e, g c e, g c

    f, a c f, a c f, a c f, a c
    fis, a d fis, a d fis, a d fis, a d
    g, b d g, b d g, b d g, b d
    \SU \stemDown b d g b, d g b, d g b, d g

    c, e g c, e g c, e g c, e g
    f a c f, a c f, a c f, a c
    e, g c e, g c e, g c e, g c
    d, f b d, f b d, f b d, f b

    c, e g \SD \stemUp e, g c f, a d g, b d
    \SU \stemDown c e g c, e g c,4.
    }}

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "harpsichord"
  \context Staff = "up" <<\Algemeen \clef violin \context Voice=Een{\StemI} >>
  \context Staff = "down" <<\Algemeen \clef bass \context Voice=Twee{\StemII}>>
>>}
\layout {}

  \midi {
    \tempo 4 = 120
    }


}
\header {
 title = "Sonata in C major"
 composer = "D. Scarlatti (1685-1757)"

 mutopiatitle = "Sonata in C major"
 mutopiacomposer = "ScarlattiD"
 mutopiainstrument = "Harpsichord, Piano"
 source = "Bartholf Senff 1880s"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Bas Wassink"
 maintainerEmail = "basvanlola@hotmail.com"

 footer = "Mutopia-2013/01/08-139"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}
