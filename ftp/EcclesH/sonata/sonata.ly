\version "2.18.2"

% I prepared this score in 2005 from J. Salmon's 1914 arrangement for violin
% and piano. I hereby dedicate my additional editorial work to the public domain.
% This score can be obtained in editable form from www.lightandmatter.com or
% mutopiaproject.org. -- Benjamin Crowell

\header {
  title = "Sonata"
  subtitle = "arranged for violin and piano"
  instrument = "Violin"
  arranger = "Salmon/Crowell"
  composer = "Henri Eccles (1670-1742)"
  mutopiatitle = "Sonata in G minor"
  mutopiacomposer = "EcclesH"
  mutopiainstrument = "Violin"
  source = "ed. J. Salmon, 1914"
  style = "Baroque"
  license = "Public Domain"
  maintainer = "Benjamin Crowell"
  maintainerWeb = "http://www.lightandmatter.com/music/strings/"
  moreInfo = "This score was prepared by Benjamin Crowell in 2005 from J. Salmon's 1914 arrangement for violin and piano."

 footer = "Mutopia-2015/09/01-540"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

global =  {
  \key g \minor
}

violingrave = \transpose g g {
  \relative c'' {
    % \set Staff.instrumentName = "violin"
    \time 4/4
    \partial 8 d8\mf |
    \repeat volta 2 {
      bes'4~ bes16[ a g fis] g4 r8 d8 |
      c8. bes16 a8( bes16 g) fis8( d) r8 d'8 |
      a'8.( c,16) c8( bes16 a) bes8([ e)] e([ f16 g)] |
      cis,8([ f)] f[ g16( a)] d,8( g) g4~ |
      g8\< bes16( a) a4~ a8 g16( f) f8 e16( d\!) |
    }
    \alternative {
      {
        d4\f cis8.\trill d16 d4. d8 |
      }
      {
        d4 cis8.\trill d16 d4. f8\pp |
      }
    }

    f4.( d8) bes16( a) bes4 bes8 |
    g'8.( f16) es16([ d c bes] a8) f8 bes4~ |
    bes8[ d16( c)] c4~ c8 es16( d) es8 \tuplet 3/2 {g16 f es} |
    d4 c8.\trill bes16 bes4 r16 f'16( g a) |

    bes4. g8 e4.\trill e8 |
    a8 g16( fis) g8.( a16) fis8\<( d) c' c |
    c8\! bes16( a) bes8\< c d8. c16( bes16 a)\! g fis |
    g16\f( a) g a a8.\trill g16 g2 |
    \bar "||"

  }
}

violincourante = \transpose g g {
  \relative c'' {
    % \set Staff.instrumentName = "violin"
    \time 3/4
    \partial 8 d8\f |
    \repeat volta 2 {
      <g,, d' bes' g'>8 d''16 c bes8 g g,[ g''] |
      fis8[ d] a8[ fis16 e] d8[ a''] |
      bes8 a( bes) fis g( c,) |
      d2 r8 d8\p( |
      g8) d16 c bes8 g g,[ g''] |

      fis8[ d] a8[ fis16 e] d8[ a''] |
      bes8 a( bes) fis g( c,) |
      d2 r4 |
      <g,, d' b' g'>8\fz d''16( c) b16 c d b g'8 d |
      es8 c16( d) es8 c g c |
      <a f'>8 c16( bes) a bes c a f'8 c |

      d8 bes16( c) d8 bes f bes |
      <a, fis' d'>8\fz a'16( g) fis8 a d a |
      bes8 a g g' d16 c bes a |
      bes16( a) g8 c4.\trill d8 |
      d8\f fis16 g a8 fis d fis |

      a,16 d cis d a8 d fis, a |

    }
    \alternative {
      {
        d,2 r8 d'8 |
      }
      {
        d,2 r8 f'!8 |
      }
    }

    \repeat volta 2 {
      <d, bes' f'>8\f [d'16 c] bes8 f d bes' |
      c8 c,16 bes a8 c' f, f' |
      <f, d'>8 c' bes f' d, f' |

      <es, bes' g'>8 f'( g) d es( d) |
      c16( bes) a bes c16( bes) a g f4 |
      cis'16\f d e8  a,16 b cis8  g16 cis e8 |
      f4. bes8 a g |
      f16( e) f g e4.\trill( d8) |

      d4. d8( es!8) g16 f |
      g8( as) d,4.\trill( c8) |
      c4. d8\p( c d) |
      es8 a,( c) f, es'( c) |
      d8 c bes d bes16( c) d8 |
      c8 fis, a d, d'16 c bes a |

      bes8 a g bes16( a) g8 bes |
      a e( g) cis,\< g'( a,) |
      fis'8[ e]\! d[ d'16( c]\<) bes[ c d bes]\! |
      es8\mf( c) as c es( g) |
      fis4. fis8( g) bes,( |
      a8) g( d) a' g'( fis) |

      <g,, d' bes' g'>8 f''16[( es]) d16[ c bes a] bes16[ a g fis] |
      g8 f!16(\< es!) d16 es d c bes\! c bes a |

    }
    \alternative {
      {
        g2\< r8\! f''!8 |
      }
      {
        g,,2.~ |
        g4( <d' bes' g'>8) r8 r4 |
      }
    }

    \bar "||"

  }
}

violinadagio = \transpose g g {
  \relative c'' {
    % \set Staff.instrumentName = "violin"
    \time 3/2

    r2 r d\mf |
    c2. es4 d4.( c8) |
    bes4.( a8) g2 d' |
    g2. bes4 a4.( g8) |
    fis4.( e8) d2 g4.( d8) |
    d4.( c8) c2. c4 |
    c2( bes) d |

    es4.( a,8) a2.\trill g4 |
    g1 g'2\pp( |
    f4) bes,( f'4. g8) f4.( g8 |
    es4) g,( es'4. f8) es4.( f8 |
    d4) f,( d'4. es8) d4.( es8) |
    c2 f, r4 d'4\pp |

    c2( f,) f'\f |
    bes4( d,) c2.\trill bes4 |
    bes1 bes'2 |
    bes2 a4.( bes8) g4.( a8) |
    fis2. d4 g4.( d8) |
    % omitted \mf DynamicText added to prevent a MIDI error in LilyPond 2.18.2:
    % programming error: Impossible or ambiguous (de)crescendo in MIDI
    c4.( bes8) a2.\trill \once \omit DynamicText g4\mf |
    g2.\< d'4\f\! es4.( d8) |

    d2. d4\pp es4.( d8) |
    d2.\< d4\f\! es4.( d8) |
    c4.( bes8) a2.\trill g4 |
    g2. d4 g4.( a,8) |
    bes4.( c8) c2.\trill d4 |
    d1. |
    d1\fermata

    \bar "||"

  }
}

violinvivace = \transpose g g {
  \relative c'' {
    % \set Staff.instrumentName = "violin"
    \time 3/8
    \repeat volta 2 {

      g16\p\upbow( d') d d d c |
      bes( c) bes a g8 |
      d'16( g) g g g a |
      fis( g) fis e d fis |
      g( bes) bes bes bes bes |
      es,( g) g g g g |
      c,( f) f f f f |

      d( es) d c bes c |
      d( g) g g g f |
      e( f) e d c g' |
      c g( a) bes a g |
      fis g( fis) e d c |
      bes g' bes, g' bes, g' |
      c, g' c, g' c, g' |

      d g d g d g |
      es g es g es g |
      bes, g' bes, g' bes, g' |
      c, g' c, g' c, g' |
      d g fis a d, fis |
      g4 a8 |
      bes16 a g f es d |

      g f es d c bes |
      c d es d c bes |
      a bes a bes c a |
      f( bes) bes-. bes-. bes-. bes-. |
      f( c') c-. c-. c-. c-. |
      f,( d') d-. d-. d-. d-. |
      f,( es') es-. es-. es-. es-. |

      f,-. bes-. f-. bes-. f-. bes-. |
      f-. c'-. f,-. c'-. f,-. c'-. |
      f,-. d'-. f,-. d'-. f,-. d'-. |
      f,-. es'-. f,-. es'-. f,-. es'-. |
      f( g) f es d( bes') |
      bes,([ c)] c8.[\trill( bes16)] |

    }
    \alternative {
      {
        bes4 r8 |
      }
      {
        bes4 d8\p |
      }
    }

    g16 f g a g f |
    e f e d c e |
    a g a bes a g |
    fis4 d8 |
    g16( d) d d d d |
    a'( d,) d d d d |

    bes'16( d,) d d d d |
    a'( d,) d d d d |
    g( d) g( d) g( d) |
    a'( d,) a'( d,) a'( d,) |
    bes'( d,) bes'( d,) bes'( d,) |
    a'( d,) a'( d,) a'( d,) |
    g( a) bes a g fis |

    g( a) bes a g fis |
    g( a) bes a g fis |
    g( as) g f g d |
    es( f) g f es d |
    c( d) es d c bes |
    a( bes) c bes a g |
    fis[ e] d8-.[( d'-.]) |

    es!8 a,4\trill |
    g16( bes) bes( d) d( g) |
    g\<( d) d( bes) bes( g) |
    d'( bes) bes( g) g( d\!) |
    bes'\<( g) g( d) d( bes) |
    g bes d g bes d\! |
    g4 r8 |
    <d, a' fis'>4\f r8 |
    <g, d' bes' g'>4 r8 |


    \bar "||"

  }
}


\score {
  \new Staff << \global \violingrave >>
  \layout { }
  \midi {
    \tempo 8 = 69
  }
  \header {
    piece = "Grave"
  }
}
\score {
  \new Staff << \global \violincourante >>
  \layout { }
  \midi {
    \tempo 4 = 104
  }
  \header {
    piece = "Courante"
  }
}
\score {
  \new Staff << \global \violinadagio >>
  \layout { }
  \midi {
    \tempo 2 = 42
  }
  \header {
    piece = "Adagio"
  }
}
\score {
  \new Staff << \global \violinvivace >>
  \layout { }
  \midi {
    \tempo 4. = 76
  }
  \header {
    piece = "Vivace"
  }
}

