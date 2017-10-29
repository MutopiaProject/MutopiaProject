\version "2.18.2"

\include "nederlands.ly"

global = {
  \key ges \major
  \numericTimeSignature
  \time 4/4
}

legendOne = \markup { \raise #5.0 \center-align \italic \smaller "aussi légèrement que possible" }

staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"
unrest = { \once\hideNotes r16 }

hidePP = \tweak #'stencil ##f \pp

XpiuP = \markup { \concat { \italic "più" } \dynamic p }
XpiuPP = \markup{ \concat { \italic "più" } \dynamic pp }

upperOne = \relative c' {
  \tupletSpan 4
  \tuplet 6/4 {
    \shapeII #'((s -1 0) (s 0 3)) PhrasingSlur
    \override TextScript.outside-staff-priority = ##f
    \staffDown bes16 \staffUp ces\( bes' ces bes ces,^\legendOne \repeat unfold 3 { \staffDown bes16 \staffUp ces bes' ces bes ces, } |
    \omit TupletNumber \omit TupletBracket
    \repeat unfold 3 { \staffDown bes16 \staffUp ces bes' ces bes ces, } \staffDown bes16 \staffUp ces bes' ces bes\) ces, |

    \staffDown bes16 \staffUp ces\( bes' ces bes ces, \stemDown \repeat unfold 3 { s16 ces bes' ces bes ces, } |
    \repeat unfold 3 { s16 ces bes' ces bes ces, } s16 ces bes' ces bes\) ces, |

    s16 ces bes' ces bes ces, \repeat unfold 3 { s16 ces bes' ces bes ces, } |
    \repeat unfold 3 { s16 ces bes' ces bes ces, } s16 ces bes' ces bes ces, |

    \stemDown \staffDown \once\stemUp bes16 \staffUp ces\( bes' ces bes ces, \repeat unfold 3 { \staffDown \once\stemUp bes16 \staffUp ces bes' ces bes ces, } |
  }
  \tuplet 6/4 { \repeat unfold 3 { \staffDown \once\stemUp bes16 \staffUp ces bes' ces bes ces, } }
    \staffDown \once\stemUp bes'16 \staffUp ces bes'\) ces |

  \ottava #1 <des ees ges bes>8-.( <bes c ees ges>-. <ges bes des ees>-. <ees ges bes c>-.
  \ottava #0 <des ees ges bes>8-. <bes c ees ges>-. <ges bes des ees>-. <ees ges bes c>-. |
  \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" }
  <des ees ges bes>8-. <bes c ees ges>-. \clef bass <ges bes des ees>-.
    <ees ges bes c>-.^\markup{"Cédez"} <des ees ges bes>2--) \breathe |
  \break
  \clef treble
  \ottava #1 <des''' ees ges bes>8-.(^\markup{"a tempo"} <bes c ees ges>-. <ges bes des ees>-. <ees ges bes c>-.
  \ottava #0 <des ees ges bes>8-. <bes c ees ges>-. <ges bes des ees>-. <ees ges bes c>-. |
  <des ees ges bes>8-. <bes c ees ges>-. \clef bass <ges bes des ees>-.
    <ees ges bes c>-.^\markup{"Cédez"} <des ees ges bes>2--) \breathe |

  \break
  \tuplet 6/4 {
    \shapeII #'((s -1 0) (s 0 3)) PhrasingSlur
    \staffDown \once\stemUp bes,16 \staffUp ces'\( ^\markup{"a tempo"} bes' ces bes ces, \staffDown \once\stemUp bes \staffUp ces bes' ces bes ces,
    \clef treble
    \repeat unfold 2 { \staffDown \once\stemUp bes' \staffUp ces bes' ces bes ces, } |
    \repeat unfold 3 { \staffDown \once\stemUp bes \staffUp ces' bes' ces bes ces, }
      \staffDown \once\stemUp bes, \staffUp ces' bes' ces bes ces,\) |

    \shapeII #'((s -1 2) (s 0 5)) PhrasingSlur
    \staffDown \once\stemUp beses,16 \staffUp ces\( beses' ces beses ces, \repeat unfold 3 { s ces beses' ces beses ces, } |
    \repeat unfold 3 { \unrest ces beses' ces beses ces, } \unrest ces beses' ces beses ces,\) |

    % 17 & 18
    s16 ces\( beses' ces beses ces, \repeat unfold 3 { s16 ces beses' ces beses ces, } |
    \staffDown \once\stemUp bes! \staffUp ces bes' ces bes ces,
      \repeat unfold 2 { \staffDown \once\stemUp bes \staffUp ces bes' ces bes ces, }
      \staffDown \once\stemUp bes \staffUp ces bes' ces bes ces,\) |

    % 19 & 20
    \staffDown \once\stemUp beses16 \staffUp ces\(
      beses' ces beses ces,
      \repeat unfold 3 { \unrest ces beses' ces beses ces, } |
      \repeat unfold 3 { \unrest ces beses' ces beses ces, } \unrest ces beses' ces beses ces,\) |
  }

  \key c \major

  << { \tuplet 6/4 { \omit TupletNumber \omit TupletBracket \stemDown
                     \unrest b16\( a' b a b, \repeat unfold 3 { \unrest b16 a' b a b, } |
                     \clef bass
                     \stemUp a16\)_( b a b a b \clef treble
                     \stemDown des ees des ees des ees
                     \stemUp a b a b a b
                     \stemDown des, ees des ees des ees) }
     } \\
     { s1 | f,1_- } \\
     { s1 | \stemDown s2 f'4 s } >>

  % 23 & 24
  \clef bass
  << { \tuplet 6/4 { a,16( b \repeat unfold 11 { a b } |
                     \repeat unfold 6 { a b }
                     \repeat unfold 5 { b cis } b cis) } } \\
     { f,1 | f2 g } >> |

  % 25 & 26, 27
  << { \tuplet 6/4 { bes16_( c bes c bes c \clef treble
                     d e d e d e bes' c bes c bes c d, e d e d e) |
                     \clef bass bes_( c \repeat unfold 11 { bes c } |
                     bes16 c bes c bes c \clef treble
                     d e d e d e bes' c bes c bes c } d e d'[ e]) } \\
     { ges,,,1 | ges1 | ges4 } \\
     { \stemDown s2 ges'4 s | s1 | s2 ges4 s } >> |

  % 28 & 29
  \key ges \major % \ees minor
  \stemDown <ges'' des bes ges>16->\([ <ges, des bes ges>
    \staffDown\stemUp <des, bes ges des>8]\) \staffUp <ges des bes ges>2.~^-^^ |
  q4 <fes ces>^-^( des^- <fes ces>^-) |
  \break

  % 30 & 31
  \stemDown <ges'' des bes ges>16->\([ <ges, des bes ges>
    \staffDown\stemUp <des, bes ges des>8]\) \staffUp <ges des bes ges>4^-^^
    \stemDown <beses'' fes des beses>16->\([ <beses, fes des beses> \staffDown\stemUp <fes, des beses fes>8]\)
    \staffUp <beses fes des beses>4^-^^ |
  \stemDown <ges'' des bes ges>16->\([ <ges, des bes ges>
    \staffDown\stemUp <des, bes ges des>8]\) \staffUp <ges des bes ges>2.~^-^^ |

  % 32 & 33
  q4^( <fes ces>^- des^- <fes ces>^-) |
  \key c \major
  \stemDown <g'' d b g>16->([ <g, d b g>
    \staffDown\stemUp <d, b g d>8]) \staffUp <g d b g>4^-^^
    \stemDown <b'' fis dis b>16->([ <b, fis dis b> \staffDown\stemUp <fis, dis b fis>8])
    \staffUp <b fis dis b>4^-^^ |

  % 34
  \stemDown <gis'' dis bis gis>16([ <gis, dis bis gis> \staffDown\stemUp <dis, bis gis dis>8^-])
    \tuplet 6/4 {
      gis16 \staffUp\stemDown a\( gis' a gis a,
      \repeat unfold 2 { \staffDown\stemUp gis \staffUp\stemDown a gis' a gis a, } } |
  \tuplet 6/4 {
    % 35
    \repeat unfold 3 { \staffDown\stemUp gis16 \staffUp\stemDown a gis' a gis a, }
    \staffDown\stemUp gis \staffUp\stemDown a gis' a gis a, \) |
    % 36
    \staffDown\stemUp gis \staffUp\stemDown a\( gis' a gis a,
    \repeat unfold 2 { \hideNotes r16 \unHideNotes a gis' a gis a, }
                            \hideNotes r16 \unHideNotes a gis' a gis a,\)|
    % 37
      \hideNotes r16 \unHideNotes a\( gis' a gis a,
    \repeat unfold 2 { \hideNotes r16 \unHideNotes a gis' a gis a, }
      \hideNotes r16 \unHideNotes a gis' a gis a,\) |

    % 38
    \staffDown\stemUp gis16 \staffUp\stemDown a\( gis' a gis a,
    \staffDown\stemUp g \staffUp\stemDown aes g' aes g aes,
    \staffDown\stemUp fis \staffUp\stemDown g fis' g fis g,
    \staffDown\stemUp a \staffUp\stemDown bes a' bes a bes, |
    % 39
    \staffDown\stemUp gis16 \staffUp\stemDown a gis' a gis a,
    \staffDown\stemUp g \staffUp\stemDown aes g' aes g aes,
    \staffDown\stemUp fis \staffUp\stemDown g fis' g fis g,
    \staffDown\stemUp a \staffUp\stemDown bes a' bes a\) bes, |

    % 40
    \staffDown\stemUp e,16 \staffUp\stemDown f\( e' f e f, \repeat unfold 2 { \once\hideNotes r f e' f e f, }
    \once\hideNotes r f e' f e f,\) |
    % 41
    \once\hideNotes r\( f e' f e f, \repeat unfold 2 { \once\hideNotes r f e' f e f, } \once\hideNotes r f e' f e f,\) |

    % 42 & 43, a 2-bar phrase
    \staffDown\stemUp e16 \staffUp\stemDown f\( e' f e f,
    \staffDown\stemUp e \staffUp\stemDown fes ees' fes ees fes,
    \staffDown\stemUp d \staffUp\stemDown ees d' ees d ees,
    \staffDown\stemUp f \staffUp\stemDown ges f' ges f ges, |

    \staffDown\stemUp e16 \staffUp\stemDown f e' f e f,
    \staffDown\stemUp e \staffUp\stemDown fes ees' fes ees fes,
    \staffDown\stemUp c \staffUp\stemDown d c' d c d,
    \staffDown\stemUp ces \staffUp\stemDown des ces' des ces\) des, |

    \key ges \major % \ees minor
    \staffDown\stemUp bes16 \staffUp\stemDown ces\( bes' ces bes ces,
            \repeat unfold 2 { \once\hideNotes r ces bes' ces bes ces, }
            \once\hideNotes r ces bes' ces bes ces,\) |

    % 45 & 46
    \staffDown\stemUp ges'16 \staffUp\stemDown ces,\( bes' ces bes ces,
      \staffDown\stemUp ees \staffUp\stemDown ces bes' ces bes ces,
      \staffDown\stemUp des \staffUp\stemDown ces bes' ces bes ces,
      \staffDown\stemUp bes \staffUp\stemDown ces bes' ces bes ces,\) |
    \once\hideNotes r16\( ces bes' ces bes ces,
      \repeat unfold 2 { \once\hideNotes r16 ces bes' ces bes ces, }
      \once\hideNotes r16 ces bes' ces bes ces,\) |

    % 47 & 48 (same as 46)
    \repeat unfold 2 {
      \once\hideNotes r16\( ces bes' ces bes ces,
        \repeat unfold 2 { \once\hideNotes r16 ces bes' ces bes ces, }
        \once\hideNotes r16 ces bes' ces bes ces,\) | }

    \once\hideNotes r16 ces\( bes' ces bes ces,
      \repeat unfold 2 { \once\hideNotes r16 ces bes' ces bes ces, }
      \once\hideNotes r16 ces bes' ces bes' ces\) |
   }
  \ottava #1 <bes' ges ees des>8-.( <ges ees c bes>-. <ees des bes ges>-. <c bes ges ees>-.
  \ottava #0 <bes ges ees des>8-. <ges ees c bes>-. <ees des bes ges>-. <c bes ges ees>-.) |
  \override TextSpanner.bound-details.left.text=\markup{\upright "Cédez "}
  \override TextSpanner.bound-details.right.text=\markup{\concat { " " \raise #0.7 \musicglyph #"scripts.caesura.straight" } }
  <bes ges ees des>8-.(\startTextSpan <ges ees c bes>-. \clef bass <ees des bes ges>-. <c bes ges ees>-.)\stopTextSpan
    \clef treble \tuplet 6/4 {
      \staffDown\stemUp bes16 \staffUp\stemDown ces(^\markup{"a tempo"} bes' ces bes ces,
      \staffDown\stemUp bes16 \staffUp\stemDown ces bes' ces bes ces,) |
    }
  \ottava #1 <bes''' ges ees des>8-.( <ges ees c bes>-. <ees des bes ges>-. <c bes ges ees>-.
  \ottava #0 <bes ges ees des>8-. <ges ees c bes>-. <ees des bes ges>-. <c bes ges ees>-.) |

  << { \override TextSpanner.bound-details.left.text=\markup{\upright "Cédez "}
       \override TextSpanner.bound-details.right.text=\markup{\concat { " " \raise #0.7 \musicglyph #"scripts.caesura.straight" } }
       \stemDown <bes ges ees des>8-.(\startTextSpan <ges ees c bes>-. \clef bass <ees des bes ges>-. <c bes ges ees>-.)\stopTextSpan
       \clef treble \tuplet 6/4 {
         \shapeII #'((s 0 2) (s 0 2)) PhrasingSlur
         \omit TupletBracket
         \staffDown\stemUp bes16 \staffUp\stemDown ces\(^\markup{"a tempo"} bes' ces bes ces, }
       \tuplet 6/4 {
         \omit TupletBracket \omit TupletNumber
         \staffDown\stemUp bes16 \staffUp\stemDown ces bes' ces bes ces, } |
       s4 \tuplet 6/4 { \revert TupletNumber.stencil \staffDown\stemUp bes16 ces \staffUp\stemDown bes' ces bes ces,}
       \tuplet 6/4 {
         \omit TupletNumber
         \staffDown\stemUp bes16 ces \staffUp\stemDown bes' ces bes ces,
         \staffDown\stemUp bes16 ces \staffUp\stemDown bes' ces bes ces,\) }
       \shapeII #'((s -1 2) (s 0 5)) PhrasingSlur } \\
     { s1 | \tuplet 3/2 { \staffDown\stemUp \once\override NoteColumn.force-hshift=0.5
                          bes8^( ces \staffUp\stemDown <ges' ees ces> } <g e c>2.) } >> |

  % 55, 56, & 57
  << { \stemDown s4 <g e c>2.\laissezVibrer |
       q4 <aes f des>2._-\laissezVibrer |
       q2^\markup{"Un Peu retenu"} <a fis d> | } \\
     {
       \tuplet 6/4 { \omit TupletNumber \omit TupletBracket
                     \once\override NoteColumn.force-hshift=0.5
                     \staffDown\stemUp bes,8 ces \staffUp\stemDown <ges'! ees! ces> \revert TupletNumber.stencil \staffDown\stemUp bes,16 ces \staffUp\stemDown bes' ces bes ces,
                     \staffDown\stemUp bes ces \staffUp\stemDown bes' ces bes ces,
                     \staffDown\stemUp bes ces \staffUp\stemDown bes' ces bes ces, |

                     \once\override NoteColumn.force-hshift=0.5
                     \staffDown\stemUp bes ces \staffUp\stemDown bes' ces bes ces,
                     \repeat unfold 2 { \staffDown\stemUp bes ces \staffUp\stemDown bes' ces bes ces, }
                     \staffDown\stemUp bes ces \staffUp\stemDown bes' ces bes ces, |

                     \once\override NoteColumn.force-hshift=0.5
                     \staffDown\stemUp bes ces \staffUp\stemDown bes' ces bes ces,
                     \repeat unfold 2 { \staffDown\stemUp bes ces \staffUp\stemDown bes' ces bes ces, }
                     \staffDown\stemUp bes ces \staffUp\stemDown bes' ces bes ces, |
                   }
     } \\
     { % extra voice just for slurs
       \shapeII #'((s 0 1.5) (s 1 1.5)) PhrasingSlur
       \hideNotes \repeat unfold 3 { b'2\( s16*7 b16\) | } \unHideNotes |
     } >> |

  % 58 & 59
  \tuplet 3/2 { \omit TupletNumber \omit TupletBracket
                \staffDown\stemUp \once \override NoteColumn.force-hshift=0.5 bes8_.( ces_. \staffUp\stemDown <bes'' bes,>8~--\arpeggio)
              } q2. |
  r1^\fermata \bar "|."
}


lowerOne = \relative c' {
  \stemDown
  % 1 & 2
  \repeat unfold 2 {
    \repeat unfold 4 { bes8_. s } |
  }
  % 3 & 4
  << { \voiceOne aes'8\rest aes16.\rest ees32 des4~ des8..\( ees32( des8..) ees32 |
       ges8.. ees32( des2) bes4_-\)_( } \\
     { \voiceTwo bes8_. f\rest f4\rest bes8_. r8 r4 | s1 } >> |
  % 5 & 6

  << { \voiceOne bes4)-\shape #'((0.0 . 0.0) (0.0 . 1.0) (0 . 1.0) (0 . 0.0)) (
       \acciaccatura{ ges'16[ ees]} des4) bes-\shape #'((0.0 . 0.0) (0.0 . 1.0) (0 . 1.0) (0 . 0.0)) (
       \acciaccatura{f'16[ eeses]} des4) } \\
     { \voiceTwo bes4~ bes8 r bes4_-~ bes8 r} >> |
  << { \voiceOne bes4-\shape #'((0.0 . 0.0) (0.0 . 1.0) (0 . 1.0) (0 . 0.0)) (
       \acciaccatura{ ges'16[ ees]} des4) bes-\shape #'((0.0 . 0.0) (0.0 . 1.0) (0 . 1.0) (0 . 0.0)) (
       \acciaccatura{f'16[ eeses]} des4) } \\
     { \voiceTwo bes4~ bes8 r bes4_-~ bes8 r} >> |
  % 7 & 8
  \repeat unfold 4 { bes8_. s8 } |
  \repeat unfold 3 { bes8_. s8 } bes'8_. s8 |

  \clef bass

  % 9-12
  \oneVoice
  \set doubleSlurs = ##t <bes,,, ees,>1~ |
  \set doubleSlurs = ##f <bes ees,>2( <ees aes,>4_. <des ges,>)_. |
  \set doubleSlurs = ##t <bes ees,>1~ |
  \set doubleSlurs = ##f <bes ees,>2( <ees aes,>4_. <ees aes,>)_. |

  % 13 & 14
  \stemDown bes4_- bes' bes'8_. r bes8_. s |
  bes8_. s bes_. s bes_. s bes_. s |

  % 15 & 16
  \clef treble
  << { \voiceOne s8 s16. ees32( des4~) des8..( ees32 des8.. ees32) |
       ges8..( ees32) des2( ees4) } \\
     { \voiceTwo beses4~_- beses8_. g\rest beses8_. g\rest f4\rest |
       beses8_. g\rest f4\rest beses8_. g\rest f4\rest } >> |

  % 17 & 18
  << { \voiceOne ges'4( aes) ges4( aes) } \\
     { \stemDown \repeat unfold 2 { \once \override NoteColumn.force-hshift = 0.5  des,8..( eeses32 \once\hideNotes ees4) } } \\
     { \stemDown \repeat unfold 2 { beses8_. s8 eeses4 } } >>
  \stemDown \repeat unfold 4 { bes8_. s8 } |

  % 19 & 20
  << { r8 r16. f'32 ees4~ ees8..( fes32) ees8..( f32) } \\
     { beses,4_- g\rest beses g\rest } >> |
  << { aes'8..( f32) ees2( f4) } \\
     { beses,8_. g\rest f4\rest beses8_. g\rest f4\rest } >> |

  \key c \major
  % 21 & 22
  << { d'4( g) d( g) } \\
     { <a, f>4( <d b>) <a f>4( <des b>) } \\
     { \hideNotes c,4_( s2 c4) } >> |
   \clef bass <des g,_->1~ |

  % 23 & 24
  \stemUp <des g,>4_( <c f,> <a d,!> <c f,> |
  <des g,>2 <e a,>) |

  % 25 & 26, 27
  <d aes>1~ |
  q4( <des ges,> <bes ees,> <des ges,> |
  <d aes>1)

  % 28 & 29
  \key ges \major % \ees minor
  << \slurDown\tieDown { ges,,1( |
                 \tuplet 6/4 { \omit TupletNumber \omit TupletBracket \stemDown
                               ges16 des' ges, des' ges, des'
                               bes fes' bes, fes' bes, fes'
                               des aes' des, aes' des, aes'
                               bes, fes' bes, fes' bes, fes')
                             } } \\
     { \shiftOn \stemUp ges,16( des' \staffUp \hideNotes r8 ges'2.) |
        \staffDown r4 \unHideNotes \autoBeamOff \crossStaff {
          <aeses fes>4 <aes f des> <aeses fes> } \autoBeamOn } \\
     { \hideNotes r4 \unHideNotes \tuplet 6/4 {
       \omit TupletNumber \omit TupletBracket \stemDown
       \repeat unfold 9 { ges,,16 des' }} | s1 } >> |

  << { \stemDown ges,2 beses } \\
     { \shiftOn \stemUp ges16( des' \staffUp\hideNotes r8 ges4) \unHideNotes
       \staffDown beses,16[( fes'] \staffUp\hideNotes r8 ges4) \unHideNotes } >> |

  << \slurDown\tieDown { ges,1( |
                 \tuplet 6/4 { \omit TupletNumber \omit TupletBracket \stemDown
                               ges16 des' ges, des' ges, des'
                               bes fes' bes, fes' bes, fes'
                               des aes' des, aes' des, aes'
                               bes, fes' bes, fes' bes, fes')
                             } } \\
     { \shiftOn \stemUp ges,16( des' \staffUp \hideNotes r8 ges'2.) |
        \staffDown r4 \unHideNotes \autoBeamOff \crossStaff {
          <aeses fes>4 <aes f des> <aeses fes> } \autoBeamOn } \\
     { \hideNotes r4 \unHideNotes \tuplet 6/4 {
       \omit TupletNumber \omit TupletBracket \stemDown
       \repeat unfold 9 { ges,,16 des' }} | s1 } >> |

  \key c \major
  << { \stemDown g,2 b } \\
     { \shiftOn \stemUp g16( d' \staffUp\hideNotes r8 g4) \unHideNotes
       \staffDown b,16[( fis'] \staffUp\hideNotes r8 g4) \unHideNotes } >> |

  << { \stemDown gis,2 s } \\
     { \shiftOn\stemUp\autoBeamOff gis16[( dis'] \hideNotes dis'8) \unHideNotes\autoBeamOn
       \clef treble \stemDown gis'8_. s gis8_. s gis8_. s } >> |
  \stemDown \repeat unfold 4 { gis8_. s } |

  % 36
  << { r8 r16. cis32( b4)( b8.. cis32) b8..( cis32) } \\ { gis4~ gis8 r gis r r4 } >> |
  << { e'8..( cis32 b2 cis4) } \\ { gis8_. r r4 gis8_. r r4 } >> |

  % 38, 39
  \repeat unfold 2 { gis8_. s g_. s fis_. s a_. s | }

  % 40 & 41
  << { r8 r16. a32( g4~ g8.. a32) g8..( a32) } \\ { e4_~ e8 r e8 r r4 } >> |
  << { c'8..( a32 g2 a4) } \\ { e8 r r4 e8 r r4 } >> |

  % 42 & 43
  e8_. r ees_. r d_. r f_. r |
  e8_. r ees_. r c_. r ces_. r |

  % 44
  \key ges \major % \ees minor
  << { r8 r16. ees32( des4~ des8.. ees32) des8..( ees32) } \\ { bes4( bes4) s2 } >> |

  % 45 & 46
  << { \stemDown ges'4_._( ees_. des_. \clef bass bes_-~) | \stemUp bes2 bes } \\
     { s1 | r8 r16. ces,32\( bes4~ bes8.. ces32 bes8.. bes32\) } >> |

  % 47 & 48
  << { \voiceOne bes'2 bes | s1 } \\
     { \voiceTwo ges4( ees des bes~) |
       \slurUp \once\stemUp bes4( <des' ges, des>) \once\stemUp bes,4( <ees' aes, ees>) } >> |
  % 49 & 50
  \slurUp \once\stemUp bes,4( <des' ges, des>) \once\stemUp bes,4( <ees' aes, ees>) |
  <bes,, ees,>1~ |

  % 51 & 52
  q2 bes''8_. s bes_. s |
  <bes,, ees,>1~ |

  % 53 & 54
  \once\stemUp q2 bes''8_. s bes_. s |
  \clef treble
  \once\override NoteColumn.force-hshift=-0.8 bes1 |

  % 55-57
  \override NoteColumn.force-hshift=-0.8
  bes1 | bes1 | bes1 |
  bes1~
  \revert NoteColumn.force-hshift
  | bes1^\fermata
}



%\tweak DynamicText.self-alignment-X #RIGHT
midDynamics = {
  \override DynamicTextSpanner.style = #'none
  s8\pp s8*7 s1*5 s8\pp s8*7 s4*3 s16 s16\< s16 s16\!
  s8\pp s8*7 s8-\tweak #'Y-offset #-0.2 \> s8 s8\! s8 s2 s8\pp s8*7 s8 \> s8 s16\! s16 s8 \< s4 s4\! |
  s8\p s8 s16 s16-\tweak #'Y-offset #-0.6 \< s16 s16\! s2 |
  s1 | s8\pp s8*7 | s4 s32 s32\< s4 s8 s32 s32\! s4 |
  s1 | s8\pp s8*7 | s1 |  s4 s4\< s16*7 s16\! |
  s1 | s8\pp s8*7 |
  s1 | s16\< s8*7 s16\! |
  s8\pp s8*7 | s1 |
  s16\< s8*6 s16\! s8 |
  % 28
  s16-\tweak #'X-offset #-2.0 \f\< s16\! s8 s2.\p |
  s4 s4 -\tweak #'X-offset #-2.0 \pp\> s4 s8. s16\! |
  s16-\tweak #'X-offset #-2.0 \f\< s16\! s8 s4\p s16-\tweak #'X-offset #-2.0 \f\< s16\! s8 s4\p |
  s16 \f\< s16\! s8 s2.\p |
  s4 s4-\tweak #'X-offset #-2.0 \pp\> s4 s8 s8\! |
  s16-\tweak #'X-offset #-2.0 \f\< s16\! s8 s4\p s16\f\< s16\! s8 s4\p |
  s16-\tweak #'X-offset #-2.0 \f\< s16\! s2. s8 |
  s8 s8-\tweak #'Y-offset #-1.0 \dim s8 s4\! s8-\markup{\italic "molto"} s4 |
  % 36
  s16\p s16 s8*7 |
  s4 s4\< s4 s4\! |
  s16-\tweak #'X-offset #-0.5 \p s16 s8*7 |
  s1 |
  s16-\tweak #'X-offset #-0.5 \p s16 s8*7 |
  s4 s4\< s4 s4\! |
  s1*2 | % 42,43
  s16-\tweak #'X-offset #-4.0 -\XpiuP s16 s8*7 |
  s1*5 | % 45 - 49
  s8 s8\pp s4*3 |
  s4-\tweak #'X-offset #1.0 \> s4\! s2 |
  s8\pp s8*7 |
  s4\> s4\! s2 | % 53
  \tuplet 3/2 { s8\< s8\! s8 } s2.\p |
  \tuplet 3/2 { s8\< s8\! s8 } s2.\p |
  s4 s2.\pp |
  s2 s2-\tweak #'X-offset #-4.0 -\XpiuPP |
  s1\ppp
  s1
}

lowDynamics = {
  s8\hidePP s8*7 | s1*3 |
  \repeat unfold 4 { s32\< s32*4 s32\! s32 s32\> s32\! s32*3 s8 }
  s1*6 | s4 s4\sfz s4\p s4 | s8\> s8*6 s16 s16\! |
  s1*2 | s4\pp\< s4\! s4\pp\< s4\! |
  s1*3 | s4\< s4\! s4\< s4\! | s1*3 | s1*3 |
  % 28
  s8 s8 \pp s2. | s1 |
  s1 | s8 s8\pp s2. |
  % 32, 33
  s1*2 |
  s1*2 |
  s1*2 |
  s16\< s8*7 s16\! |
  s16\> s8*7 s16\! |
  s1 |
  % 41,42,43
  s1*2 | s16\> s8*7 s16\! |
  s1*4 |
  s4\p\< s4\! s4\p\< s4\! | % 48
  s4\p\< s4\! s4\p\< s4\! | % 49
  s1*9 |
  s1_\markup{\italic "laissez vibrer"}
}
