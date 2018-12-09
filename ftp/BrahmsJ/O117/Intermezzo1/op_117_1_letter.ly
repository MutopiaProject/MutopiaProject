\version "2.18.2"
\language "deutsch"

ncs = #(define-music-function (parser location offset) (number?)
         #{ \once \override NoteColumn.force-hshift = #offset #})
osl = #(define-music-function (parser location stemLength) (number?)
         #{ \once \override Stem.length = #stemLength #})
toff = #(define-music-function (parser location off) (pair?)
          #{ \once \override TextScript.extra-offset = #off #})

spanRit = { \once \override TextSpanner.bound-details.left.text = "rit." }
up      = { \change Staff = "right" \stemDown }
down    = { \change Staff = "left" \stemUp }
inside  = #(define-music-function (parser location pos) (pair?)
             #{ \once \override TextScript.avoid-slur = #'inside
                \once \override TextScript.outside-staff-priority = ##f
                \once \override TextScript.extra-offset = #pos #})
espr = \markup { \scale #'(4 . 1) \musicglyph #'"scripts.espr" }

\header {
  title = "Intermezzo"
  composer = \markup {
    \fontsize #-2 \override #'(baseline-skip . 2)
    \column {
      \line { \italic "Schlaf sanft, mein Kind, schlaf sanft und schön!" }
      \line { \italic "Mich dauert's sehr, dich weinen sehn." }
    }
  }
  opus = \markup {
    \fontsize #-3 \override #'(baseline-skip . 2)
    \column {
      \line { \right-align \fontsize #-2 "(Schottisch. Aus Herder's Volksliedern.)" }
      \line { \right-align \raise #-1 "Johannes Brahms, Op. 117, No. 1" }
    }
  }
  source = "Berlin: N. Simrock, 1892. Plate 9876."
  style = "Romantic"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Urs Metzger"
  mutopiatitle = "Intermezzo"
  mutopiacomposer = "BrahmsJ"
  mutopiaopus = "Op. 117, No. 1"
  mutopiainstrument = "Piano"
  mutopiacomposer = "BachJS"

  tagline = ##f
}

#(set-default-paper-size "letter")

\paper {
  ragged-last = ##f
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

global = {
  \key es \major
  \time 6/8
  \partial 8
}

right_a = \relative b' {
  \global
  \tempo "Andante moderato"
  \slurUp b8(
  \stemUp <es, es'>4 <es es'>8 <es es'>4) <es es'>8(
  es'4 es8 <es, es'>4) <es es'>8(
  <es es'>4 <es es'>8 <es es'>4) <es es'>8(
  es'4 d8 es4) f8\rest
  \barNumberCheck 5
  <as, as'>4 \osl #11.8 <f f'>8 <g g'>4 <b b'>8(
  <as as'>4 <f f'>8 <g g'>4 <g es'>8)
  f'4 \stemNeutral <b, d b'>8~( <b d b'> <b d> <b d a'>
  <b es g>8 <a d f> <g c es>16 <f b d> <es as~ c f>8 \arpeggio <d as' b>) c'16( b
  \stemUp <es, es'>4 <es es'>8 <es es'>4) <es es'>8(
  \barNumberCheck 10
  es'4 es8 <es, es'>4) <es es'>8(
  <es es'>4 <es es'>8 <es es'>4) <es es'>8(
  <f es'>4 <f es'>8 f'4) \once\override Slur.control-points = #'((1.8 . 5.9) (5.3 . 9.7) (37 . 8.8) (48.0 . 3.0)) b8 (
  <es, es'>4 es' es,
  f8 es c b4) \once \override Beam.positions = #'(3.9 . 4.2) c16( d
  \barNumberCheck 15
  \once \override TextScript.extra-offset = #'(0.4 . -2.8) <es, es'>4 ^\markup { \italic \whiteout "poco a poco rit." } <es es'> <es es'>
  es'4 d8 es4) \stemNeutral <fes, fes'>16( <ges ges'>
  <as as'>8 <ges ges'> <fes fes'> <es es'>4) <des es>8(
  <ces es>4 <as es'>8 es'4) <fes fes'>16( <ges ges'>
  <as as'>8 <ges ges'> <fes fes'> <es es'>4) <fes fes'>16( <ges es' ges>
  \barNumberCheck 20
  <as fes' as>8 <ges es' ges> <fes des' fes> <es ces' es> <des b' des> <ces as' ces>)
  \mark \markup{ \fontsize #-2 \fermata }
  \bar "||"
  \key es \minor \tempo "Più Adagio"
  r8 b'[( b,-. \inside #'(0.4 . 0.8) ces' ^\espr ces,-. as']
  as,8-.) \stemUp as''4( \inside #'(1.3 . 2.9) b ^\espr ges8)
  ges,8-. ges[( ges, f' f, f'])
  r8 f'4( es es8)
  \barNumberCheck 25
  \clef "bass" r8 <b, c e>4( \inside #'(1.3 . 4) <b c f> ^\espr c8)
  \clef "treble" <f a es' f>4. <f b f'>
  \clef "bass" r8 <b, c e>4( <b es ges!> c8)
  \clef "treble" <f a es' f>4. <b d>
  r8 b[( b,-. \inside #'(0.8 . 1) ces'! ^\espr ces,-. \! as']
  \barNumberCheck 30
  as,8-.) \stemUp <b' des fes as>4( \inside #'(1.3 . 3.1) <des g b> ^\espr des8)
  r8 <c, es ges!>4( <ces es ges> fes8)
  r8 <b des fes as>4( <b des fes> es8)
  r8 <ces,! d>4( es b8)
  <b d as' b>4. <b es b'>
  \barNumberCheck 35
  r8 <as' ces fes>4( <ges b es> <ges b>8)
  \clef "bass" \stemDown <d, as' b>4.( <d as' b>
  \stemUp des'!4 ces b) \break
  \bar "||" \key es \major \clef "treble" \tempo "Un poco più Andante"
  s4 \stemDown <es' g es'>8 <es g es'>4 s8
  \stemUp f,8[ es] \stemDown <es' g es'>8 <es g es'>4 s8
  \barNumberCheck 40
  s4 \stemDown <es g es'>8 <es g es'>4 \stemUp <as,, es' as>16( <g g'>
  b'8 es, \osl #5 \slashedGrace g f) \mergeDifferentlyDottedOn es8.( g16 b g'
  <as, as'>4 <f f'>8 <g g'>4) <b b'>8(
  <as as'>4 <f f'>8 <g g'>4 <g es'>8
  <f f'>4 <es es'>8 <f f'>4 <f' a>8) (
  \barNumberCheck 45
  <b, es g>8 <a d f> es'16 d <es, as c>8 <d g b>) b'8(
  <es, es'>4 <es es'>8 <es es'>4) <es es'>8(
  es'4 es8 <es, es'>4) <es es'>8(
  <es es'>4 <es es'>8 <es es'>4) <es es'>8(
  <es es'>4 <d d'>8 <d d'>4) \once \override Slur.height-limit = #4 \once \override Slur.extra-offset = #'(0 . -1) b''8(
  \barNumberCheck 50
  es8. d16 es c es b8 as g16
  f16 d es g \tieUp b8~ b8.) c,16( d f
  <es, es'>4 <es es'> <es es'>
  es'4 d8~ d4) \tieNeutral <es, es'>8~( ^\markup{ \italic "espress." }
  <es es'>4 <es es'>8~ <es es'>4) \tieUp <es es'>8~(
  \barNumberCheck 55
  es'4 d8~ d4.)
  <es, es'>4 r8 \down <b, g' b>4 a'8\rest
  \up \once \override Script.extra-offset = #'(0 . 0.3) <g' es' g>4. ^\fermata r4 \bar "|."
}

right_b = \relative b' {
  \global
  \stemDown s8
  \ncs #1.7 es8 d c b4 as16 g
  f8 es g b4 \ncs #1.4 c16 d
  \ncs #1.7 es8 d c b4 as16 g
  b8 es, \osl #5 \slashedGrace g8 f \dotsDown es8.
  \once\override Slur.control-points = #'((0.2 . 2.6) (4.5 . 7) (16 . 7.0) (22.1 . 4.5))
  g16( b g'   \barNumberCheck 5
  f8 c d b8.) es16 g es
  f8 c d es b c
  <f, d'>4 s8 s4.
  s4. s4 <c es>16 <d f>
  \ncs #1.7 es'8 d c b4 as16 g
  \barNumberCheck 10
  f8 es g b4 \ncs #1.4 c16 d
  \ncs #1.7 es8 d c b4 a16 g
  a8 b c \dotsUp <f, b es>8. d'16 c b
  \ncs #1.7 es'8 d <es, c'> <d b'> <c as'> <b g'>
  <as es'>8 g16 f es g b4 es,8
  \barNumberCheck 15
  \ncs #1.7 es'8 d c b4 as!16 g
  b8 es, \osl #5 \slashedGrace g8 f es4 s8
  s2. * 3
  \barNumberCheck 20
  s2.
  s8 <ges b>4 <as ces> <f as>8
  \dynamicUp s8 <f' as>[ as,-. <ges' b> b,-. <es ges>]
  s8 <es, ges>4 <ces es f> <ces es f>8
  s8 <b' des f>[ f <b des es> es, <b' des>]
  \barNumberCheck 25
  s8 b,[ e, b' f b]
  \slurDown \ncs #3.4 es'8( des c es4 des8)
  s8 b,[ e, b' ges <es ges>]
  \slurUp \ncs #3.4 es''8( des c) <as as'!>( <ges ges'> <f f'>)
  s8 <ges b>4 <as ces> <fes as>8
  \barNumberCheck 30
  s8 b[ as des b <des, b'>]
  s8 c[ ges ces ges <ces es>]
  s8 b'[ as b fes <b des>]
  s8 ces,[ \down f,! \up b \down es, \up ges]
  \slurDown \ncs #3.4 as'8( ges f as4 ges8)
  \barNumberCheck 35
  s8 as[ fes ges es ges]
  s2.
  <es, g es'>4. <es g es'>
  \slurDown \once\override Slur.control-points = #'((0.1 . -6.3) (4 . -8.9) (8.8 . -8.3) (11.9 . -10.1))
  <es' g es'>8( <d d'> \down \clef "treble" <c es c'> <b es b'>4) \up \stemUp
  \once\override Slur.control-points = #'((0.2 . -4.8) (5 . -7.9) (17 . -5.6) (21.9 . -10.1))
  <as es' as>16( <g g'>
  \stemDown g4 \down s8 \stemUp \tieDown <b es b'>4) \up
  \stemUp \once\override Slur.control-points = #'((0.2 . -3.8) (5 . -8.3) (14.5 . -7.7) (18.9 . -10.1))
  <c c'>16( <d d'>
  \barNumberCheck 40
  \stemDown <es b' es>8 <d d'> \down \clef "treble" <c es c'> <b es b'>4) s8
  \up b4 <as d>8 <g es'>4 <g' b>8
  f'8 c d b8. es16 g es
  f16 es f c es d es d es b c b
  d16 c d b c b d c d b a b
  \barNumberCheck 45
  b16 g a f <g c> <f b> es c d b <c es as> <d f>
  \ncs #1.7 es'8 d c b4 as16 g
  f8 es g b4 \ncs #1.4 c16 d
  \ncs #1.7 es8 d c b4 a16 g
  a8 b c \ncs #1.35 b8. d16 c b
  \barNumberCheck 50
  es4 es8~ es16 d es c es b~
  b16 \slurUp \once \override Slur.extra-offset = #'(0 . -0.2) as8( g16 \down f \arpeggio d es \arpeggio g) \up b4
  \ncs #1.7 es8 d c b4 \slurDown as!16( g
  b8 es,) g16( \once \override Tie.staff-position = #-4.6 f~) f4 \ncs #-0.4 c'8(
  b4) \osl #8 \once \override Slur.extra-offset = #'(0 . 0.5) a8( as4) \osl #8 g8
  b8 es, g16( \once \override Tie.staff-position = #-4.6 f~ f4~ f16 es)
}

dyn = {
  s8 _\markup { \dynamic p \whiteout \italic dolce }
  s2. * 4
  \barNumberCheck 5
  s2.
  s4. s8 s4 \<
  s4 s8 \! s8 s4 \>
  s4. s4. \!
  s2.
  \barNumberCheck 10
  s4. s4. \>
  s4 s8 \! s4.
  s4 \< s8 \! s4. \>
  s2. \!
  s2.
  \barNumberCheck 15
  \toff #'(0 . -1.5) s2. ^\markup { \italic "dim." }
  s2 s8 s8 \p
  s2.
  s4. s4 s8 \<
  s4 s8 \! s8 \toff #'(-1.2 . -1.6) s8 ^\markup { \whiteout \italic "rit. molto" } s8
  \barNumberCheck 20
  s2 \> s8 s8 \!
  s2. _\markup { \dynamic pp \whiteout \italic "sempre ma molto espressivo" }
  s2. * 3
  \barNumberCheck 25
  s2.
  s2. \pp
  s8 \p s8. \< s16 \! s8. \> s8. \!
  s4. \pp \spanRit s4 \startTextSpan \> s16 s \stopTextSpan
  s2. \p
  \barNumberCheck 30
  s2.
  s2.
  s8 s4 \> s4. \!
  s2.
  s2. \pp
  \barNumberCheck 35
  s4. \> s4. \!
  s2. \pp
  s4. \>  s4 s8 \!
  \toff #'(-4.5 . -1.0) s2. _\markup { \italic dolce }
  s2.
  \barNumberCheck 40
  s2.
  s4. s4 s8\<
  s8 \> s4 \! s4 s8 \p
  s2.
  s4 \< s16 s \! s4.
  \barNumberCheck 45
  s4. \> s8. s \!
  \toff #'(0 . 1) s2. _\markup { \italic dolce }
  s2. s4 s8 \<
  s4. s4 s8 \!
  \toff #'(0 . 1.2) s4. _\markup { \italic dolce }
  \barNumberCheck 50
  s2.
  s4. s8. s \<
  s8 \> s8 \! s8 _\markup { \italic "rit. dim." } s4.
  s4. s4 \toff #'(-1.1 . 2) s16 _\markup { \dynamic rf } s8. \>
  s8 \! s8 s4. _\markup { \italic "dim. rit." }
}

left_a = \relative es, {
  \global
  es8
  <es' g>4 <es g>8 <es g>4 es,8
  <es' g>4 <es g>8 <es g>4 g,,8
  <g' es' g>4 <g es' g>8 <g es' g>4 b,8
  <b' g'>4 <b as'>8 <es g>4 es,8
  \barNumberCheck 5
  <es' c'>4 <es as>8 <es b'>4 es,8
  <es' c'>4 <es as>8 <es b'>4 \slurDown <es, es'>8(
  <b' b'>8 <a a'> <g g'> <f f'>4) <es es'>16( <d d'>
  <f f'>4 <b, b'>8) <b b'>4 <b' as'>8
  <es, g'>4 \arpeggio <es' g>8 <es g>4 es,8
  \barNumberCheck 10
  <es' g>4 <es g>8 <es g>4 c,8
  <c' g'>4 <c g'>8 <c g' >4 f,8
  <f' c'>4 <f a>8 <b, b'>4 ^\markup { \italic dolce }<b' d as'!>8
  \slurNeutral <es, b' g'>4( \arpeggio <es b' g'> \arpeggio <es b'>)
  <es b'>4( <es g> <g, es' g>)
  \barNumberCheck 15
  <a es' g>4( <b es g> <c es g>
  <b g'>4 <b as'!>8 <es g>4) <fes, fes'>16( <ges ges'>
  \stemDown <as as'>8 <ges ges'> <fes fes'> <es es'>4) \slurDown <des des'>16( <ces ces'>
  <b b'>8 <as as'> <ces ces'> es4) <es' des'>8(
  <es ces'>4 <es as>8 <es es'>4) \stemNeutral <des, des'>8(
  \barNumberCheck 20
  <b b'>4 <g! g'!> \toff #'(9.1 . 4.6) <as as'>) _\markup{ \fermata }
  \bar "||" \key es \minor
  b16( b' es ges) r8 b,,16( b' f' as) r8
  b,,16( b' d f) r8 b,,16( b' es ges) r8
  b,,16( b' ces es) r8 as,,16( as' ces es) r8
  as,,16( as' b des) r8 ges,,16( ges' b des) r8
  \barNumberCheck 25
  ges,,16( ges' b c) r8 f,,16( f' b c) r8
  \stemDown \once \override Dots.extra-offset = #'(-3.5 . 0) <f, a es' f>4. <f b f'>
  \stemNeutral ges,16( ges' b c) r8 c,,16( c' es b') r8
  \stemDown \once \override Dots.extra-offset = #'(-3.5 . 0) <f a es' f>4. <b d>
  \stemNeutral es,16( b' es ges) r8 as,,16( as' ces fes) r8
  \barNumberCheck 30
  b,,16( b' des fes) r8 es,16( b' es g) r8
  as,,16( es' as c) r8 as,16( es' as ces) r8
  b,16( b' des fes) r8 g,,16( g' b es) r8
  \stemDown as,,16( es' as ces) r8 ges,!16( es' ges b) r8
  \once \override Dots.extra-offset = #'(-3.7 . 0) <b d as'>4. <b es>
  \barNumberCheck 35
  \stemNeutral as,16( as' ces fes) r8 b,,16( ges' b es) r8
  \stemUp \slurUp b4.( b
  des!4 ces b)
  \bar "||" \key es \major
  \once \override TextScript.extra-offset = #'(-1.2 . -1) <es, b' g'>4 _\markup{ \italic "col Ped."} \arpeggio s8 s4 \clef "bass" <es b'>8
  <es b' f'>8 es' \clef "treble" <g es' g> s4 \clef "bass" <g, es'>8
  \barNumberCheck 40
  <g es'>4 s8 s4 \clef "bass" \stemNeutral <b, b'>8
  <b' es g>4 <b, b'>8 <es b'>4 es8
  <es' c'>4 <es as>8 <es b'>4 es,8
  <es' c'>4 <es as>8 <es b'>4 <es, es'>8(
  <b' b'>8 <a a'> <g b g'> <f b f'>4) \slurDown <es es'>16( <d d'>)
  \barNumberCheck 45
  <f f'>4 <b, b'>8 <b b'>4 \stemUp b'16 as'
  \stemNeutral <es, g'>4 \arpeggio <es' g>8 <es g>4 es,8
  <es' g>4 <es g>8 <es g>4 c,8
  <c' g'>4 <c g'>8 <c g'>4 d,8
  <d' fis c'>4 <d fis a>8 <g, g'>4 <b' d as'!>8
  \barNumberCheck 50
  <es, b' g'>4 \arpeggio <es b' g'>8 \arpeggio <es b' g'>4 \arpeggio <es b'>8
  \stemDown <es b'>4 \set Staff.connectArpeggios = ##t <es as>8 \arpeggio <es g>4 \arpeggio <g, es' g>8~
  <a es' g>4 <b es g> <c es g>
  <b g'>4 <b as'>8~ <b as'>4 <as es' c'>8~ \arpeggio
  <as es' c'>4 <c es>8~ <c es>4 <b g'>8~
  \barNumberCheck 55
  <b g'>4 <b as'>8~ <b as'>4.
  <es g>4 \sustainOn r8 <es,, es'>4 g'8\rest
  <es' g es'>4. _\fermata r4
}
left_b = \relative es {
  \global
  s8
  s2. * 14
  \barNumberCheck 15
  s2.
  s2.
  s4. s4 \stemUp \crossStaff { es8
  es4 es8 es4 } s8
  s2.
  \barNumberCheck 20
  s2. * 5
  \barNumberCheck 25
  s2.
  \stemUp \slurUp \ncs #3.4 es8( des c es4 des8)
  s2.
  \ncs #3.4 es8( des c) <as as'!>( <ges ges'> <f f'>)
  s2.
  \barNumberCheck 30
  s2.*4
  \ncs #3.4 as'8( ges f as4 ges8)
  \barNumberCheck 35
  s2.
  \stemDown as,4 \> ges f \!
  \dotsDown es4. es
  s2. * 7
  \barNumberCheck 45
  s4. s4 b'8
  s2. * 4
}

\score {
  \new PianoStaff <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } <<
      \right_a
      \right_b
    >>
    \new Dynamics = "Dynamics_pf" \dyn
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
      \consists "Span_arpeggio_engraver"
    } {
      \clef bass <<
        \left_a
        \left_b
      >>
    }
  >>
  \layout {
    indent = 7\mm
    \context {
      \Dynamics
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
    }
    \context {
      \PianoStaff
      \consists #Span_stem_engraver
    }
  }
  \midi {
    \tempo 4 = 50
  }
}
