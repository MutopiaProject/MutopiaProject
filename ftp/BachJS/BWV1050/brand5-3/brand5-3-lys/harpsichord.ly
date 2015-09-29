\version "2.18.2"

\include "header.ly"

harpsichordTreble = \relative c'' {
  \omit TupletNumber

  \time 2/4
  \clef treble
  \key d \major

  % --Bar 1-- %
  R2*10 |
  \repeat unfold 2 {
    % --Bar 11-- %
    r8 r16 d a'8. e16 |
    \tuplet 3/2 {
      fis8 e d cis d e |
      a,8 cis b a b cis |
      fis,8 b a gis cis b |
      a16 gis a b cis d e fis e d cis b |
      a16 cis b a gis fis e fis e d cis b |
    }
    % --Bar 17-- %
    \change Staff = harpsichordDown
    \once \voiceOne
    a8
    \change Staff = harpsichordUp
    r8 a' r |
    a8 r \voiceOne gis r |
    a2 \trill ~ |
    \tuplet 3/2 { a8 \noBeam cis b a gis! fis | }
    e2 \trill ~ |
    \tuplet 3/2 {
      e8 \noBeam cis d e d e |
      fis8 a gis fis a gis |
      fis8 dis! e fis e fis |
    }
    gis8 r <e' cis b> r |
    \oneVoice
    % --Bar 26-- %
    <a, cis e >8 r < fis b d> r |
    <gis b d >8 r
    <<
      { cis8. d16 | e8. fis16 } \\
      { a,4 ~ | a }
    >>
    b8. a16 |
    a8 r s^"accomp." s
    % --Bar 30
    s2*8 |
    % --Bar 38-- %
    R2 |
    R2 |
    r8 r16 d a'8. e16 |

    % --Bar 41-- %
    \tuplet 3/2 {
      fis8 e d cis d e |
      a,16 fis g a b cis d e d cis b a |
      b16 d cis b a g fis e fis g a fis |
      d16 cis d e fis g a b a g fis e |
      fis16 a g fis e d cis b cis d e cis |
      a16 d e fis e d b e fis g fis e |
    }

    % --Bar 47-- %
    \tuplet 3/2 {
      cis16 fis g a g fis d g a b a g |
      e16 g a b a g fis g a b cis a |
      d8 cis b a b g |
    }
    fis8 r d' r |
    d8 r cis r |
    d2-\trill ~
    \tuplet 3/2 { d8 \noBeam fis e d cis b }

    % --Bar 54- %
    a2-\trill ~ |
    \tuplet 3/2 {
      a8 \noBeam fis g a g a |
      b8 d cis b d cis |
      b8 gis a b a b |
    }
    \voiceOne
    cis8 r \tuplet 3/2 { r16 g' fis e d cis | }
    d8 r \tuplet 3/2 { r16 fis e d cis b| }
    cis8 r \tuplet 3/2 { r16 e d c b a | }
    \tuplet 3/2 { b16 c b a g fis } r8 r16 <e g b> | %<c e g> or <g e c>?
    \oneVoice
    <e g a cis>8 r <fis a d> r |
    <fis b d>8. <e b' d>16 <e a cis>8. <e g cis>16 |
    <d fis a d>8 r ^"accomp." r4 |
    s2*2 |
    r8 r16 g d'8. a16 |

    % --Bar 68- %
    b2-\trill ~ |
    \tuplet 3/2 { b8 \noBeam d cis b d cis | }
    b2^\trillB ~ |
    \tuplet 3/2 {
      b8 \noBeam d cis b a gis |
      cis8 e d cis b a |
      d8 fis e d cis b |
      e8 g fis e d cis |
    }
    fis8 r s4 ^"accomp." |
  }

  \alternative {
    {

      % --Bar 76- %
      s2*3 |
      \tuplet 3/2 {
        fis,8-\pianoB( b d) d( cis d) |
        fis,8( b d) d( cis d) |
        g,!8( ais b) cis( ais b) |
        e,8( ais cis) cis( b cis) |
        fis,8( b d) d( cis d) |
        e,8( g cis) cis( ais b)

        %85
        cis8( ais) b( fis b) ais |
      }
      b8 r r4 |
      s2*2 |
      \tuplet 3/2 {
        b8(-\pianoB fis' b) b( ais b) |
        d,8( fis b) b( ais b) |
        e,8( fis g) e( fis d) |
        cis8( e ais) ais( gis ais) |
      }

      %93
      \tuplet 3/2 {
        d,8( fis b) b( ais b) |
        g!8( e cis) ais( cis b) |
        ais8( cis) b ais( b) cis |
      }
      d8 r r4 |
      s2*2 |

      r8 r16 cis_\cantabileB fis8. cis16 |
      d2 ~ |

      %101
      d8. d16 \tuplet 3/2 { e8( cis) d | }
      cis2 ~ |
      cis8. cis16 fis8. d16 |
      b2-\trill ~ |
      \tuplet 3/2 {
        b8 cis d cis d b |
        a8 \noBeam fis_\forteI gis a cis b |
      }
      cis8 r r4 |
      \tuplet 3/2 { r8 e, fis gis b a | }
      b8 r r4 |

      %110
      \tuplet 3/2 {
        r8 d, e fis a gis |
        a8 cis, dis eis gis fis |
        gis8 b a gis b a |
      }
      gis2-\trill ~ |
      \tuplet 3/2 {
        gis!8 \noBeam eis fis gis fis gis |
        a8 fis gis a gis a |
        b8 gis a b ais b |
        cis8 a b cis b cis |
        d8 b cis d cis d |

        %119
        gis,8 b a gis fis gis |
        a8 a, b cis b cis |
        d8 b cis d cis d |
        gis,8 a b
      } cis4 ~ |
      \tuplet 3/2 { cis8 d e } fis4 ~ |
      fis8. fis16 \tuplet 3/2 { eis8 fis gis | }
      cis,8. cis'16 \tuplet 3/2 { b8 cis d | }
      eis,8.-\trill dis32 eis \tuplet 3/2 { fis8 gis a | }

      %127
      \tuplet 3/2 {
        b8 cis d cis d b |
        a8 gis fis
      } r4^"accomp" |
      s2 * 19 |

      %148
      \tuplet 3/2 {
        cis'8_\pianoB( e a) a( gis a) |
        cis,8( e a) a( gis a) |
        d,8( e fis) d( e cis) |

        %151
        b8( d gis) gis( fis gis) |
        cis,8( e a) a( gis a) |
        fis8( d b) gis( b a) |
        gis8( b) a gis( a) b |
        cis8 \noBeam a_\forteI b cis e d |
        e8 cis d e g fis |
      }
      g2-\trill ~ |
      g2 |

      %159
      \tuplet 3/2 {
        g8 \noBeam g, a b d cis |
        d8 b cis d fis e |
      }
      fis2-\trill ~ |
      fis2 ~ |
      fis8. \noBeam fis16 b8. fis16 |
      \stemUp \tuplet 3/2 { g8 fis e d e fis | }
      b,8. fis16 \tuplet 3/2 {
        b8 d cis |
        \stemNeutral d8 b cis d fis e |
      }
      fis8. b,16 fis'8. cis16 |

      %168
      \tuplet 3/2 { d8 cis b ais b cis | }
      fis,4 e' ~ |
      \tuplet 3/2 {
        e8 d cis b cis ais |
        g'8 fis e d e cis |
      }
      b8. fis16 b8. fis16 |
      \tuplet 3/2 { g8 fis e d e fis | }
      b,8. fis16 \tuplet 3/2 {
        b8 d cis |
        d8 b cis d fis e |
        fis8 d e fis a gis |
      }

      %177
      a2-\trill ~ |
      \tuplet 3/2 { a8 \noBeam c b a g fis | }
      g2-\trill ~ |
      \tuplet 3/2 { g8 \noBeam b a g fis e | }
      fis2^\trillB ~ |
      fis2 |
      \tuplet 3/2 {
        fis8 \noBeam d e fis a g |
        a8 fis g a cis b
        |
      }
      cis2-\trill ~ |

      %186
      cis2 ~ |
      \tuplet 3/2 {
        cis8 \noBeam a b cis e d |
        e8 cis d e g fis |
      }
      g2-\trill ~ |
      \tuplet 3/2 { g8 \noBeam e fis g e fis | }
      g2-\trill ~ |
      \tuplet 3/2 {
        g8 b a g fis e |
        fis8 a g fis e d |
        e8 g fis e d cis |
      }

      %195
      \tuplet 3/2 {
        d8 fis e d cis b |
        cis8 e d cis d cis |
        b8 a b cis d16 cis b a |
      }
      gis8. fis16 \tuplet 3/2 { eis8 gis b | }
      \tuplet 3/2 {
        a8 cis b a cis fis |
        b,8 d cis b fis' eis |
        fis8 a, b cis d e |
        d8 fis e d fis b |

        %203
        gis8 eis fis
      } g4 ~ |
      \tuplet 3/2 {
        g8 fis e! d cis b |
        cis8 fis e dis e fis |
        b,8 e fis g a b |
        c!8 dis, e b e dis |
        e8 b a g fis g |
        e8 a g fis g a |
        d,8 g a b c a |

        %211
        g8 a b
      } e,8. e'16 |
      \tuplet 3/2 { a8 d, c b a g | }
      a4 ~ \tuplet 3/2 { a16 g fis e dis e | }
      \tuplet 3/2 {
        fis8 b a g fis e |
        fis8 b ais b fis' ais, |
      }
      b8 r r4 |
      r8 r16 cis \tuplet 3/2 { fis8( ais,) b | }
      cis8. fis,16 \tuplet 3/2 { b8 gis eis | }

      %219
      fis8. cis16 \tuplet 3/2 { d8 \change Staff = harpsichordDown ais b | }
      \change Staff = harpsichordUp \oneVoice
      s2*2 |
      s2^"accomp." |
      s2*2 |
      \tuplet 3/2 {
        r8 d e fis gis a |
        gis8 e fis gis ais b |

        %227
        ais8 fis gis ais b cis |
        b8 gis a! b cis d |
        cis8 ais b cis d e |
        fis8( d) b fis'( d) b |
        fis'8( d) b fis( b ais) |
      }
      b4 r |
      << { \voiceOne d4 } \new Voice { \voiceThree <d, fis a> } >> \oneVoice r |
      R2*9 |
    }
    {
      s2*3 |
    }

  }
} % ~ ~ end harpsichordTreble ~ ~ %


harpsichordBass = \relative c' {
  \omit TupletNumber
  \tempo "Allegro."
  \time 2/4
  \clef bass
  \key d \major

  % --Bar 1-- %
  R2*8 |

  \repeat unfold 2{
    r8 r16 a d8. a16 |
    \tuplet 3/2 { b8 a g fis g a | }
    d,8 r cis r |
    d8 r e r |
    fis8 r cis r |
    d8 r e r |
    fis8 r e r |
    fis8 r gis r |


    % --Bar 17-- %
    \tuplet 3/2 { a8 cis b a b cis | }
    d8 r \staffUp e r |
    fis2_\trill ~ |
    \tuplet 3/2 { fis8 \noBeam a gis fis e d | }
    cis2_\trill ~ |
    \tuplet 3/2 { cis8 \noBeam a b cis b cis | }
    \tuplet 3/2 { dis8 fis e dis fis e | }
    \tuplet 3/2 { dis8 b cis dis cis dis | }
    \tuplet 3/2 { e16 d! e fis e d }
    \once \override Beam.positions = #'(-6 . -5.5)
    \tuplet 3/2 { cis d cis \staffDown b a gis | }

    % --Bar 26-- %
    \tuplet 3/2 {
      fis16 e fis gis a fis b cis b a gis fis |
      e16 d e fis gis e fis a gis fis e d |
      cis8 b a
    } e'8. e,16 |
    a8 r fis r |
    g8 r a r |
    b8 r cis r |
    d8 r e r |

    % --Bar 33-- %
    fis8 r fis r |
    g8 r a r |
    b8 r a r |
    b8 r cis r |
    d8 r r4 |
    R2 |
    r8 r16 a d8. a16 |
    \tuplet 3/2 { b8 a g fis g a | }

    % --Bar 41-- %
    d,8 r e r |
    fis8 r fis, r |
    g8 r a r |
    b8 r cis r |
    d8 r e r |
    fis8 r g r |

    % --Bar 47-- %
    a8 r b r |
    cis8. \noBeam a16 d8. a16 |
    \tuplet 3/2 { b8 a g fis g a | }
    \tuplet 3/2 { d,8 fis e d e fis | }
    g8 r a r |
    b2-\trill ~ |
    \tuplet 3/2 { b8 \noBeam d cis b a g | }
    fis2-\trill ~ |
    \tuplet 3/2 { fis8 \noBeam d e fis e fis | }
    \tuplet 3/2 { gis8 b a gis b a | }
    \tuplet 3/2 { gis8 e fis gis fis gis | }
    \voiceTwo
    \tuplet 3/2 { a16 cis \staffUp d e fis g! } a8 r \staffDown \stemDown |
    \tuplet 3/2 { r16 b, cis d \staffUp e fis } g8 r \staffDown \stemDown |
    \tuplet 3/2 { r16 a, b cis d \staffUp e } fis8 r \staffDown  |

    % --Bar 61-- %
    g,8 r \staffUp \tuplet 3/2 { e'16 fis e d cis! \staffDown \once \stemDown b | }
    \oneVoice
    \tuplet 3/2 {
      a16 b a g fis e d e d cis b a |
      b8 a g
    } a8. a16 |
    d,8 r fis r | % 6 3?
    g8 r c r | % <2 4 6>
    b8. \noBeam g'16 d'8. a16 |
    \tuplet 3/2 { b8 a g fis gis a | }

    % --Bar 68-- %
    gis2-\trill ~ |
    \tuplet 3/2 { gis8 \noBeam b a gis b a | }
    gis2^\trillB ~ |
    \tuplet 3/2 {
      gis8 \noBeam b a gis fis e |
      a8 cis b a g! fis |
      b8 d cis b a g |
      cis8 e d cis b a |
    }
    d8 r fis, r |
    g8 r a r |
    \tuplet 3/2 { b8 a g } a8. a,16 |
  }

  \alternative {
    {
      %78
      \tuplet 3/2 { d8 fis e d e fis | }
      b,8 r r4 |
      %80
      \repeat unfold 5 { b8 r r4 | }

      %85
      b8 r r4 |
      b8. \noBeam fis'16 \tuplet 3/2 {
        b8 d cis |
        d8 cis b ais b cis |
      }
      fis,4 ~ \tuplet 3/2 {
        fis8 g e |
        d8 cis b
      } r4 |
      %90
      \repeat unfold 6 { b8 r r4 | }
      %96
      b8. \noBeam fis'16 \tuplet 3/2 {
        b8 a gis |
        a8 gis fis eis fis gis |
      }
      cis,4 ~ \tuplet 3/2 {
        cis8 d b |
        a8 gis fis
      } r4 |
      %100
      \repeat unfold 6 { fis8 r r4 | }
      %106
      fis8.\noBeam cis'16 \tuplet 3/2 { fis8 a gis | }
      a8 r r4 |
      %108
      \tuplet 3/2 { r8 cis, d e gis fis | }
      gis8 r r4 |
      \tuplet 3/2 {
        r8 b, cis d fis eis |
        fis8 a, b cis eis dis |
        eis8 gis fis eis gis fis |
      }
      eis2-\trill ~ |
      \tuplet 3/2 {
        eis!8 \noBeam cis dis eis! dis eis |
        %115
        fis8 d! e! fis e fis |
        gis8 e fis gis fis gis |
        a8 fis gis a gis a |
        b8 gis a b a b |
        %119
        eis,8 gis fis eis dis eis |
        fis8 fis, gis a gis a |
        b8 gis a b a b |
      }
      cis4 ~ \tuplet 3/2 { cis8 d e | }
      fis4 ~ \tuplet 3/2 {
        fis8 gis ais |
        b8 cis d cis dis eis |
        fis,8 gis a gis a b |
        a8 b cis
      } d,8 r |

      %127
      b8 r cis r |

      % --Bar 128 -- %
      fis,8 r a r |
      b8 r cis r |
      d8 r dis r |
      e8 r fis r |
      g8 r gis r |
      a8 r b r |
      cis8 r cis, r |

      % --Bar 135 -- %
      d8 r e r |
      fis8 r fis, r |
      gis8 r gis' r |
      a8 r a, r |
      b8 r b' r |
      cis8 r cis, r |
      d8 r d' r |
      d8 r cis r |

      % --Bar 143 -- %
      d8 r e r |
      \tuplet 3/2 { fis8 e d cis dis e }
      dis4 r8 b |
      e8. d!16 cis8. fis,16 |
      e8. d16 e8. e,16 |
      a8 r a' r |
      \repeat unfold 6 { a,8 r a ' r | }

      % --Bar 155 -- %
      \tuplet 3/2 {
        a,8 \noBeam cis e a cis b |
        cis8 a b cis e dis |
      }
      e2-\trill ~ |
      e2 ~ |

      % --Bar 159 -- %
      \tuplet 3/2 {
        e8 \noBeam e, fis g b a |
        b8 g a b d cis |
      }
      d2-\trill ~ |
      d2 ~ |
      d8 r r4 |
      \staffUp
      r8 r16 fis b8. fis16 |
      \tuplet 3/2 { g8 fis e d e fis | }
      \staffDown
      b,8. fis16 \tuplet 3/2 { b8 d cis | }
      \tuplet 3/2 { d8 b cis d fis e | }

      %168
      fis8. b,16 fis'8. cis16 |
      \tuplet 3/2 { d8 cis b ais b cis | }
      fis,4 e' ~ |
      \tuplet 3/2 { e8 d cis b cis ais | }
      \tuplet 3/2 { g'8 fis e d e cis | }
      b8. fis16 b8. fis16 |
      \tuplet 3/2 { g8 fis e d e fis | }
      b,8. fis16 \tuplet 3/2 { b8 d cis | }
      \tuplet 3/2 { d8 b cis d fis eis | }

      %177
      fis2-\trill ~ |
      \tuplet 3/2 { fis8 \noBeam a g fis e dis | }
      e2-\trill ~ |
      \tuplet 3/2 { e8 \noBeam g fis e d cis | }
      d2-\trillB ~ |
      d2 ~ |
      \tuplet 3/2 { d8 \noBeam fis, a d fis e | }
      \tuplet 3/2 { fis8 d e fis a gis | }
      a2^\trillB ~ |
      %186
      a2 ~ |
      \tuplet 3/2 {
        a8 \noBeam cis, e a cis b |
        cis8 a b cis e d
        |
      }
      e2-\trill ~
      \tuplet 3/2 { e8 \noBeam cis d e cis d | }
      e2-\trill ~ |
      \tuplet 3/2 {
        e8 g fis e d cis |
        d8 fis e d cis b |
        cis8 e d cis b a |
        %195
        b8 d cis b a gis |
        a8 cis b a b a |
        gis8 a gis fis eis fis |
        cis8 eis dis cis dis eis |
        fis8 a gis fis eis fis |
        gis8 b a gis fis gis |
        a8 cis b a gis fis |
        b8 d cis b a gis |
      }

      % --Bar 203 -- %
      cis8 r cis, r |
      fis8 r r4 |
      fis8 r fis, r |
      g8 r r4 |
      a8 r b r |
      e,8 r r4 |
      a8 r d r |
      b8 r g r |


      % --Bar 211 -- %
      \tuplet 3/2 { e8 fis g a b c | }
      d,8 r g r |
      d'8 r c r |
      b2 ~ |
      b8. \noBeam fis'16 b8. fis16 |
      g8. fis16 g8. e16 |
      <fis, fis'>2 ~ |
      q2 ~ |
      q2 |

      % --Bar 220 -- %
      <fis fis'>2^\markup { \bold "tasto solo"} ~ |
      q2 ~ q8.\noBeam b16 fis'8. a,16 |
      %should beam down
      \tuplet 3/2 { b8 a g ais b cis | }
      fis,4 ~ \tuplet 3/2 { fis8 fis' e | }
      \tuplet 3/2 {
        d8 b cis d e fis |
        e8 cis d e fis g |
        %227
        fis8 d e fis g a |
        g8 e fis gis a b |
        a8 fis gis ais b cis |
      }
      b8. g!16 d8. e16 |
      fis8. e16 fis8. fis,16 |
      b4 r |
      %233
      <<
        { \voiceOne a'4 }
        \new Voice { \voiceThree fis4 }
        \new Voice { \voiceTwo d4 }
      >> \oneVoice r4 |
      %234
      R2*7 |
    }
    { d,2\fermata \bar "|." }
  }

} % end for notes


harpsichordFigures = \figuremode {
  \repeat unfold 2 {
    R2*8 |
    s4 s8. <7 5>16 |
    <5>4 <6> |
    R2*18 |
    s4 <6>8 s |
    \bassFigureExtendersOn
    \tuplet 3/2 { <6 5>8 s s <6 5> <6 4> <5 3> | }
    \bassFigureExtendersOff
    s4 <6>8 s |
    s4 <6>8 s |
    <5>8 s <6> s |
    s4 <6>8 s |
    s4 <6>8 s |
    <6 5>8 s <6 5> s |
    R2*27 |
    s4 <6 5!>8 s |
    s4 <6 4 2>8 s |
    <6>4 s8. <7 5>16 |
    <5>4 s |
    R2*7 |
    s4 <6>8 s |
    s4 <6>8 s |
    \tuplet 3/2 { <5>8 s <6 5> } s4 |
    R2 |
  }
  \alternative {
    {
      R2*7 |
      s4 \tuplet 3/2 {
        s8 s <6\\> |
        <6>8 s s <6> s <7> |
        \bassFigureExtendersOn
        <6 _+>4 <6 4>8 <5 _+> s s |
        \bassFigureExtendersOff
      }
      R2*7 |
      s4 \tuplet 3/2 {
        s8 s <6\\> |
        <6>8 s s <6> s <7> |
        \bassFigureExtendersOn
        <6 _+>4 <6 4>8 <5 _+> s s |
        \bassFigureExtendersOff
      }
      <6>4 s |
      R2*28 |
      s4 <6> |
      <5>8 s <6\\> s |
      \bassFigureExtendersOn
      \tuplet 3/2 { <6 9>8 <6 8> s <6> s s }
      <_!>4 <6\\> |
      \tuplet 3/2 { <6 9>8 <6 8> s <6> s s }
      s4 <6\\> |
      \tuplet 3/2 { <6 9>8 <6 8> s <6> s s }
      s4 <6\\> |
      \tuplet 3/2 { <5 9\\>8 <5 8> s } <6>4 |
      <5!>4 <6> |
      \bassFigureExtendersOff
      <5> <6> |
      <5> <6\\> |
      <5> <6> |
      <5> <6> |
      <4 2>8 s <6> s |
      <6 5>8 s <6 4 _+> s |
      <5>8 s <6> s |
      <6 5>4 s8 <7 _+> |
      <_+>8. <6 4>16 <6>8. <6>16 |
      <6 4>4 <5 _+> |
      R2*74 |
      s4 <_+>8. <6\\>16 |
      \bassFigureExtendersOn
      \tuplet 3/2 {
        <6>4 s8 <6>4 <7>8 |
        <6 _+>4 <6 4>8 <5 _+> s s |
      }
      \bassFigureExtendersOff
      R2*8 |
    }
    { }
  }
}


harpsichordStaff = \new PianoStaff \with {
  instrumentName = \markup \smaller \center-column { "Cembalo" "concertato." }
  midiInstrument = "harpsichord"
} <<
  \new Staff = "harpsichordUp" \harpsichordTreble
  \new Staff = "harpsichordDown" \harpsichordBass
  \new FiguredBass \harpsichordFigures
>>
