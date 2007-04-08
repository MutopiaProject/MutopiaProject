\version "1.4.8"
\include "paper16.ly"

Algemeen = {\notes {\key c\major \time 12/8 \partial 4.}}
SU = {\translator Staff = "up"}
SD = {\translator Staff = "down"}

StemI = {\notes \relative c'' {
    \stemUp g4^"m.d." r8
    c4. \SD \stemDown g,_"m.s." c, \SU \stemUp c''4\trill b16 c
    d4. \SD \stemDown g,, \stemUp g, \SU d'''4\trill c16 d
    e4. \SD c,, c, \SU e'''
    e4. () d \SD \stemDown g,,, \SU \stemUp g''4 r8

    c4. \SD \stemDown g, c, \SU \stemUp c''4\trill b16 c
    d4. \SD \stemDown g,, \stemUp g, \SU d'''4\trill c16 d
    e4. \SD c,, c, \SU e'''
    e4. () d \SD \stemDown g,,, \SU \stemUp g''

    \grace {[a16 bes]} c4. () bes \SD \stemDown c,, \SU \stemUp bes''\trill
    a4. \SD \stemDown c,, f, \SU \stemUp a''
    \grace {[b!16 c]} d4. () c \SD \stemDown d,, \SU \stemUp a''\trill
    b \SD \stemDown d,, g, \SU \stemUp d'''

    <g e> \SD \stemDown g,,, \SU \stemUp <f''' d> \SD \stemDown g,,,
    \SU \stemUp <e''' c> \SD \stemDown g,,, \SU \stemUp <d''' b> \SD \stemDown g,,,
    \SU \stemUp <g''' e> \SD \stemDown g,,, \SU \stemUp <f''' d> \SD \stemDown g,,,
    \SU \stemUp <e''' c> \SD \stemDown g,,, \SU \stemUp <d''' b> g,

    \grace {[a16 bes]} c4. () bes \SD \stemDown c,, \SU \stemUp bes''\trill
    a \SD \stemDown c,, f, \SU \stemUp a''
    \grace {[b!16 c]} d4. () c \SD \stemDown d,, \SU \stemUp c''\trill
    b \SD \stemDown d,, g, \SU \stemUp d'''

    \grace {[e16 f]} g4. () f \SD \stemDown g,, \SU \stemUp f''\trill
    e \SD \stemDown g,, c, \SU \stemUp g'''4\trill f16 g
    a4. \SD \stemDown c,, f, \SU \stemUp a''4\trill g16 f
    g4. \SD \stemDown c,, e, \SU \stemUp g''4\trill f16 e

    f4. \SD \stemDown b,, d, \SU \stemUp f''4\trill e16 d
    e4. c \SD \stemDown d,, \SU \stemUp b''4\trill a16 b
    c4. \SD c,, c \SU g''
    \grace {[a16 bes]} c4. () bes \SD \stemDown c,, \SU \stemUp bes''\trill

    a \SD \stemDown c,, f, \SU \stemUp a''
    \grace {[b!16 c]} d4. () c \SD \stemDown d,, \SU \stemUp c''\trill
    b \SD \stemDown d,, g, \SU \stemUp d'''
    <g e> \SD \stemDown g,,, \SU \stemUp <f'''! d> \SD \stemDown g,,,

    \SU \stemUp <e''' c> \SD \stemDown g,,, \SU \stemUp <d''' b> \SD \stemDown g,,,
    \SU \stemUp <g''' e> \SD \stemDown g,,, \SU \stemUp <f''' d> \SD \stemDown g,,,
    \SU \stemUp <e''' c> \SD \stemDown g,,, \SU \stemUp <d''' b> g,
    \grace {[a16 bes]} c4. () bes \SD \stemDown c,, \SU \stemUp bes''\trill

    a \SD \stemDown c,, f, \SU \stemUp a''
    \grace {[b!16 c]} d4. () c \SD \stemDown d,, \SU \stemUp a''\trill
    b \SD \stemDown d,, g, \SU \stemUp d'''
    \grace {[e16 f]} g4. () f \SD \stemDown g,, \SU \stemUp f''\trill

    e4. \SD \stemDown g,, c, \SU \stemUp g'''4\trill f16 g
    a4. \SD \stemDown c,, f, \SU \stemUp a''4\trill g16 f
    g4. \SD \stemDown c,, e, \SU \stemUp g''4\trill f16 e
    f4. \SD \stemDown b,, d, \SU \stemUp f''4\trill e16 d

    e4. c \SD \stemDown d,, \SU \stemUp b''4\trill a16 b
    \partial 8*9
    c4. \SD \stemUp c,,, c
    \bar "|."
    }}
StemII = {\notes \relative c' {
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
    g, c e g, c e <g,4. b d> e8 g c

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
    g, c e g, c e <g,4. b d> e8 g c
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
    \partial 8*9
    \SU \stemDown c e g c, e g c,4.
    }}

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "harpsichord"
  \context Staff = "up" <\Algemeen \clef violin \context Voice=Een{\StemI} >
  \context Staff = "down" <\Algemeen \clef bass \context Voice=Twee{\StemII}>
>}
\paper {}
\midi {\tempo 4=120}
}
\header {
 title = "Sonata in C major"
 composer = "D. Scarlatti (1685-1757)"

 mutopiatitle = "Sonata in C major"
 mutopiacomposer = "D. Scarlatti (1685-1757)"
 mutopiainstrument = "Harpsichord"
 source = "Bartholf Senff 1880's"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Bas Wassink"
 maintainerEmail = "basvanlola@hotmail.com"
 lastupdated = "2001/Dec/18"

 tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
 footer = "Mutopia-2001/12/18-139"
}
