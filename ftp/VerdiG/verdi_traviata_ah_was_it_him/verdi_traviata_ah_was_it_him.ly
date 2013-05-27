\version "2.6.0"
\header {
  title = "La Traviata."
  subtitle = "Ah! Was It Him My Heart Foretold."
  composer = "G. VERDI."
  arranger = \markup \italic { "arr. by Louis Tocaben." }
  instrument = \markup { \bold { 1\raise #1.0 { st } Mandolin. } }
  mutopiatitle = "Ah! Was It Him My Heart Foretold."
  mutopiacomposer = "VerdiG"
  mutopiainstrument = "Mandolin"
  date = "1853"
  source = "Hinds, Noble & Eldredge 1912"
  style = "Romantic"
  copyright = "Public Domain"
  maintainer = "Lincoln Smith"
  lastupdated = "2005/Sep/27"
  
  footer = "Mutopia-2005/09/28-603"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

#(set-global-staff-size 20)

mainsection = \relative \new Staff {
    \key a \minor
    \time 3/8
    \clef treble

    \override TupletBracket  #'bracket-visibility = #'if-no-beam
    \override TupletBracket  #'direction = #up
    \override Score.SpacingSpanner  #'shortest-duration-space = #3.0

    \set Staff.midiInstrument = "tremolo strings"

    f'8-.\p^\markup \large { Andantino. } e-. c-. |
    a4 (a'8) |
    f4 (a8) |
    e4.\< |
    \times 2/3 { d16\! (e f) } a8[ g] |
    \appoggiatura { g16[ f] } e4 (c'8) |
    \times 2/3 { b,16\> (c d) } e8[ e\!] |
    a,16[ c32 b] a8 r |

    f'8-. e-. c-. |
    a4 (a'8) |
    f4 (a8) |
    e4.\< |
    \times 2/3 { d16\! (e f) } a8[ g] |
    \appoggiatura { g16[ f] } e4 (c'8) |
    \times 2/3 { b,16\> (c d) } e8[ e\!] |
    a,16[ c32 b] a8 r |

    \times 2/3 { a16\pp (gis a) } a8[ b] |
    c8. d16 c8 |
    \setTextCresc
    \times 2/3 { c16\< (b c)\! } c8[ d] |
    \setHairpinCresc
    e8. f16 e8 |
    \times 2/3 { e16\f (dis e) } e8[ fis] |
    gis8. fis16 e8 |
    \times 2/3 { e16\pp (dis e) } e8\<[ fis] |
    gis4.\!

    \bar "||"
    \key a \major

    a4\p^\markup { \hspace #0.0 \raise #0.5 { \italic \large {espressivo.} } } (gis16. fis32) |
    gis4 (fis16. e32) |
    cis8 (d b) |
    cis8. (b16 a8) |

    a'4 (gis16. fis32) |
    gis4 (fis16. e32) |
    cis8.[ (d16]) \times 2/3 { d (cis b) } |
    cis4 (a8) |

    f'8 f f |
    e4 (a,8) |
    f'8\< f16 f f f\! |
    \setTextCresc
    e4\< (a8\!) |
    \setHairpinCresc

    cis8[ (b)] \times 2/3 { a16 (gis fis) } |
    fis8[ (e)] \times 2/3 { e16 (a cis,) } |
    fis8[ (e)]^\markup \large { "To Coda " \musicglyph #"scripts.coda" } \times 2/3 { cis16 (d b) } |
    a8 r r |

    \times 2/3 { e16[\p (gis b]) } e8 r |
    \times 2/3 { e,16[ (a c]) } e8 r |
    \times 2/3 { e,16 (gis b\>) } e8[ e,\!] |

    \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \chordmode { c:6^5\p r c:6^5 c:6^5 r c:6^5 }
    \once \override Score.RehearsalMark #'self-alignment-X = #right
    \mark \markup \small { "D.C. al " \musicglyph #"scripts.coda" }
    \bar "||"
  }


codasection = \relative \new Staff {
    \set Staff.instrument = "CODA."
    \key a \major
    \time 3/8
    \clef treble

    \override TupletBracket  #'bracket-visibility = #'if-no-beam
    \override TupletBracket  #'direction = #up
    \override Score.SpacingSpanner  #'shortest-duration-space = #3.0

    \set Staff.midiInstrument = "tremolo strings"

    a'8^\markup { \musicglyph #"scripts.coda" } r \times 2/3 { gis'16[ (fis gis]) } |
    a8[ (e]) \times 2/3 { gis16 (fis gis) } |
    a4 r8 |
    e8
    \cadenzaOn
    \tiny
    e16^\markup { \hspace #0.0 \raise #1.0 { \italic \small { Cad.ad lib.} } } gis b a gis fis eis fis
    d b ais b
    \normalsize
    \cadenzaOff
    \partial 8*2
    fis'8.\fermata e16 |
    a,8 r \times 2/3 { a'16[ (a a]) } |
    a8
    << a8 cis,8 e,8 >>
    << a'8 cis,8 e,8 >> |
    << a'4 cis,4 e,4 >>
    r8\fermata \bar "|."
  }


\score 
{
  \mainsection
  \layout { }
  \midi { \tempo 4=45 }
}

\score 
{
  \codasection
  \layout { }
}

