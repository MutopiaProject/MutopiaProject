\version "2.16.0"

\include "nederlands.ly"
\header {
  title             = "Sonatine"
  composer          = "Johann André (1741-1799)"
  opus              = "Opus 34. I."
  meter             = "Moderato ma con moto."
  copyright         = "Public Domain"
  tagline           = "Public Domain"
  mutopiatitle      = "Sonatine"
  mutopiacomposer   = "J. André (1741-1799)"
  mutopiainstrument = "Piano"
  date              = "18th century"
  source            = "Unknown, late 19th century"
  style             = "Classical"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Feb/27"

  tagline           = "\\parbox{\paper-width}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/02/27-207"
}

\paper {
  % specifying only line-width will cause staffs to be centered
  line-width = 19.0\cm
  % this adds space between composer and the first staff
  markup-system-spacing #'padding = #3
}
\layout {
  \context {
    \Score
    % add space between staves in piano staff
    \override StaffGrouper #'staff-staff-spacing #'padding = #3
  }
}

dynamics = {
}

Global =  {\key c\major \time 2/2}
Treble = { \clef treble }
Bass = { \clef bass }

VoiceI =  \relative c'' {
  \repeat volta 2 {
    \stemNeutral \slurNeutral
    g4\fp ( c b c
    d2 f
    e4 c d b
    c2  g) (

    e'4) ( b c a
    d a b2
    a4) <a\<  c>( <g b> <fis a>)
    <fis\>  a>2(  g4)\! r
  }

  \repeat volta 2 {
    g ( d' c d
    e2 c
    g4)_ \markup{\italic "cresc."} ( e' d e
    f2 d

    g,4)-. \tieUp g'2->\< ( f4 ~
    f e2 d4\!
    c_ \markup{\italic "decresc."} b a d
    c8-> b a g fis g a  g)-.

    g4_ \markup{\italic "dolce"} ( c b c
    d2 f
    e4 c b c
    d2  f) (

    e4  c)_ \markup{\italic "cresc."} ( f c
    fis d g4.  f8) (
    e4) <d f >( <c e>) <f, d'>
    <f\>  d'>2_( <e\! c'>4 r)
  }
  \break

  % Rondo
  \repeat volta 2 {
    \set Timing.measureLength = #(ly:make-moment 1 4)
    c'8\p^\markup{\column{Rondo\line{Allegretto}}} ( b16 c \bar "|"
    \set Timing.measureLength = #(ly:make-moment 2 4)
    \stemDown
    d8)-.[ d-.] b16( c d b
    c8  g)-. c[(\< b16 c]
    d8)-. <a c>-. <g b>-.[\! <fis a>-.] |

    g4 c8\f ( b16 c
    d8)-. d-. b16[ ( c d b]
    c8[  g)-.] c16\< ( d  e)-. c-.\!
    a8-.[ <d f>-.] <c e>-. <b d>-.
    \set Timing.measureLength = #(ly:make-moment 1 4)
    c4
  }

  \repeat volta 2 {
    \set Timing.measureLength = #(ly:make-moment 1 4)
    <c\< e>8\p-. <c e>-.
    \set Timing.measureLength = #(ly:make-moment 2 4)
    <b\! d >4-> \Bass <c,\< e>8-. <c e>-. |
    <b\! d >4-> \Treble <c' e>8\f-. <c e>-. |
    <b d>-. <b d>-. <a c>-.[ <a c>-.] |
    <g b>4 <g a>8-.\p <g a>-. |
    \barNumberCheck #39
    << {b8-.[ c](\> b)-. a-.\!} \\ { g8 g4 fis8 } >>
    g4 b16\< ( c d e\! |
    f8)-. <d f>-. <c e>-.[ <c e>-.] |
    <b d>4 \Bass b,16\< ( c d e\! |

    f8)-. <d f>-. <c e>-.[ <c e>-.] |
    <b d>4 r |
    f'16[ ( e d c] b8)-. r |
    \Treble
    f''16->[( e d c] b\< c d e |

    f16[ e f e] f e f e\! |
    f8)-. r d-.\p r
    b4->\fermata c8\p ( b16 c
    d8)-.[ d-.] b16 ( c d b

    c8[  g)-.] c\< ( b16 c
    d8)-. <a c>-. <g b>-.^[ <fis a>-.]\! |
    g4 c8\f ( b16 c
    \barNumberCheck #54
    d8)-. d-. b16[\< ( c d b\!] |

    c8  g)-. c16[ ( d  e)-. c-.] |
    a8-. <d f>-. <c e>-.[ <b d>-.] |
    \set Timing.measureLength = #(ly:make-moment 1 4) c4
  }

  \set Timing.measureLength = #(ly:make-moment 1 4)
  c16\pp ( d e c
  \set Timing.measureLength = #(ly:make-moment 2 4)
  g8)-.^[ g-.] c16[ ( d e c] |
  g8)-.^[ g-.] c16[\f ( d  e)-. c-.] |
  a8 <d f>-. <c e>-.[ <f, b d>-.] |
  \set Timing.measureLength = #(ly:make-moment 1 4)
  <e c'>4
  \bar "|."
}

VoiceII =  \relative c {
  \key c\major \time 2/2
  \voiceTwo
  \stemNeutral \slurNeutral
  r4 e ( d c
  b d b g
  c e f g
  e g e  c)

  r gis' ( a g
  fis2 g4 e
  c a d d,
  g d  g,) r

  r b'' ( a b
  c g e'  g,)
  r c ( b c
  d g, b  g)

  r e' ( g, d'
  g, c g  b) (
  a2 d,
  g) r

  r4 e8 ( g d g c, g'
  b, g' d g b, g' d g
  c, g' e g d g c, g'
  b, g' d g b, g' d g

  c, c' bes c a c a c
  d, d' c d b! d b d
  c4) f, ( g g,
  c g  c,) r

  % Rondo
  \Treble
  e''8( g
  f g d g
  e4) e8 ( c
  b)-. c-. d-. d-.

  \Bass
  g,16 ( f! e d e[ g e g]
  f g f g d[ g d g]
  e g e g e[ d  c)-. e-.]
  f8-. d-. g-._[ g,-.]
  c4

  \Treble c'16 ( d e f
  g8)-. g,-. \Bass c,16[ ( d e f]
  g8)-. g,-. c16([ d e fis]
  g[ a b c]  d8)-. dis-.
  e4-> cis16 ( d e cis

  d8)-. e ( d)-.[ d,-.]
  g4 g16 ( a b c
  \barNumberCheck #41
  d8)-. b-. c-.[ c,-.]
  g'4-> r

  r8  b,[-. c-. c,-.]
  g'4-> g16( a b c
  d8)-. r \Treble g16 ( a b c |
  \barNumberCheck #46
  d8)-. r g16 ( a b c

  d16[ cis d cis] d cis d cis
  d8)-. r b-. r
  g4->\fermata e8 ( g
  f g d[ g]
  \barNumberCheck #51

  e4) e8 ( c |
  b8) c-. d-.[ d-.] |
  \Bass
  g,16 ( f! e d e[ g e g] |
  f16 g f g d[ g d g] |

  e16 g e g e[ d  c)-. e-.] |
  f8-. d-. g-.[ g,-.] |
  c4

  \Treble r |
  <b' f'>8-.[ <b f'>-.] <c e>-. r |
  \Bass
  <b, f'>8-.[ <b f'>-.] e16 ( d  c)-. e-.
  f8-. d-. g-.[ g,-.]
  c4
}

\score {
  \context PianoStaff \with {
    midiInstrument = "acoustic grand"
    } <<
    \context Staff = "up" {
      \Global \clef treble
      \context Voice="VcI" \VoiceI
    }
    \context Dynamics = "dynamics" \dynamics
    \context Staff = "down" {
      \Global \clef bass
      \context Voice="VcII" \VoiceII
    }
  >>
  \layout {}
  \midi {
    \tempo 4 = 104
  }
}
