\version "2.16.1"
#(set-global-staff-size 20)
setup={\override Staff.TimeSignature #'style = #'numbered
\override Score.Hairpin #'after-line-breaking = ##t
#(set-accidental-style 'modern-cautionary)
\compressFullBarRests
}

partA={ \setup
\set Staff.instrumentName = "Bell"
\set Staff.midiInstrument = "tubular bells"
\time 3/4 \set Timing.beatStructure = #'(1 1 1) \set Timing.beamExceptions = #'()
\tempo "Tempo Guisto" 4 = 112
\key f \major bes'2. \p |
R |
bes' |
R |
bes' |
R |
bes' |
R
\mark \markup { \musicglyph #"scripts.segno" }
\bar "|:"
bes'4. \f bes' \accent _\markup{sonore} |
bes' bes' \accent |
bes' bes' \accent |
bes' bes' \accent |
bes' bes' \accent |
bes' bes' \accent |
bes' bes' \accent |
bes' bes' \accent |
bes' bes' \accent |
bes' bes' \accent |
bes' bes' \accent |
bes' bes' \accent |
bes' bes' \accent |
bes' bes' \accent |
bes' bes' \accent |
bes'2. |
R2.*4 |
bes'2. \mf |
bes' |
R2.*9 |
bes'2. \mf |
bes' |
R |
bes' \mf |
bes' |
R |
bes' \f |
bes' |
bes' \bar "||"
\mark \markup {\musicglyph #"scripts.coda"}
bes' \ff |
bes' |
bes' _\markup{dim.} |
bes' |
R2.*2 bes'2. \mf |
R |
bes' _\markup{dim.} |
R |
bes' |
\once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
R ^\markup{attaca} \bar "||"
\override Staff.TimeSignature #'stencil = ##f \time 21/4 bes'\breve \laissezVibrer
-\tag #'score ^\markup{Senza mesura (conductor to slowly sweep left to right to direct players to begin)}
-\tag #'part ^\markup{Senza mesura}
s s1 s4
| \time 12/4
r\breve -\tag #'score ^\markup{then wait and sweep to direct players to cease (except basses)}
s2 s2
\once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \mark "D.S."
\bar ":|" \break
\time 3/4
bes'2. ^\markup { \musicglyph #"scripts.coda" } \ff \accent |
bes' \accent |
bes' \accent |
bes' \accent |
bes' \accent |
bes' \accent |
bes' \accent |
bes' \accent \fermata \laissezVibrer ^\markup{vib.}
\bar "|." }

hairpinWithCenteredText =
#(define-music-function (parser location text) (markup?)
#{
  \override Voice.Hairpin #'stencil = #(lambda (grob)
    (ly:stencil-aligned-to
     (ly:stencil-combine-at-edge
      (ly:stencil-aligned-to (ly:hairpin::print grob) X CENTER)
      Y DOWN
      (ly:stencil-aligned-to (grob-interpret-markup grob text) X CENTER))
     X LEFT))
#})
hairpinPoco = \hairpinWithCenteredText \markup { \italic poco }
hairpinNormal = \hairpinWithCenteredText \markup { }

partB={ \setup
\set Staff.instrumentName = "Violin 1"
\set Staff.midiInstrument = "violin"
\key bes \major \time 3/4 \set Timing.beatStructure = #'(1 1 1) \set Timing.beamExceptions = #'()
\tempo "Tempo Guisto" 4 = 112
R2. |
e' \p ^\markup{ten.} |
R |
\hairpinPoco f' \< |
R \! |
\hairpinNormal e' \<
R \!
d' \<  |
\tag #'part { \mark \markup { \musicglyph #"scripts.segno" } \bar "|:" }
\repeat tremolo 6 { f''8 \ff \accent ^\markup{6} }
\repeat tremolo 6 { f' \accent ^\markup{6} }
\repeat tremolo 6 { f'' \accent ^\markup{sim.} }
\repeat tremolo 6 { f' \accent }
\repeat tremolo 6 { f'' \accent }
\repeat tremolo 6 { e'' \accent }
\repeat tremolo 6 { f'' \accent }
\repeat tremolo 6 { e'' \accent }
\repeat tremolo 6 { f'' \accent }
\repeat tremolo 6 { e'' \accent }
\repeat tremolo 6 { d'' \accent }
\repeat tremolo 6 { d'' \accent }
\repeat tremolo 6 { f'' \accent }
\repeat tremolo 6 { d'' \accent }
\repeat tremolo 6 { bes' \accent }
f''2. \f \tenuto ^\markup{ten}
c''2 _\markup{espress} ( d''8 ees'' ) |
ees''2 ( d''8 c'' ) |
c''2 ( b'8 c'' ) |
d''2 ( \<  f''8 ) \! r |
bes'2 ( a'8 bes' ) |
bes'2 ( g'8 bes' ) |
a' ( bes' ) \hairpinPoco bes' \<  d'' d'' bes' |
c''2 \! ( \accent \hairpinNormal bes'8 c'' ) |
c''2 ( \accent bes'8 d'' ) |
ees''2 ( \accent bes'4 |
c'' d''2 ) |
f' _\markup{dim} ( ees'8 ) r |
ees' \mf g' g' \>  bes' bes' ( c'' ) |
bes' \! a'4 bes'8 \<  c'' ( f' |
g' \! a' \>  ) a' ( bes'4 g'8 \! ) |
\hairpinPoco bes'2. \< |
bes'8 \! ( \hairpinNormal a'4 bes'8 ) c'' f' ( |
g' a' ) a' ( bes'4 g'8 ) |
bes'2. |
bes \f |
f'' |
f''8 ( \accent g'' ) g'' ( \<  \accent aes'' ) aes'' ( \accent bes'' ) |
bes'' ( \f a''4 bes''8 ) c''' f'' ( |
g'' a'' ) a'' ( \<  bes''4 ) g''8
\bar "||"
\mark \markup {\musicglyph #"scripts.coda"}
\repeat tremolo 2 { bes'' \ff }
\repeat tremolo 2 { bes'' }
\repeat tremolo 2 { bes'' }
\repeat tremolo 2 { bes'' }
a'' ( bes''4 ) g''8 |
\repeat tremolo 2 { f'' }
\repeat tremolo 2 { f'' }
\repeat tremolo 2 { f'' }
\repeat tremolo 2 { f'' }
e'' ( f''4 ) _\markup{dim.} d''8 |
e''2. ~ |
e'' |
e''2 ( d''8 ) e'' |
d''2 c''4 |
d''2 ( c''8 ) d'' |
c''2 bes'4 |
d''2 ( c''8 ) d'' |
c''2. \< -\tag #'part ^\markup{attaca}

\override Staff.TimeSignature #'stencil = ##f \time 21/4
bes'8 \! ( \mf ^\markup{Soli} a'4 -\tag #'part ^\markup{Senza mesura - play as directed} bes'8 ) c''[ ( f'] g'[ a'] ) a' ( bes'4 g'8 bes'2. ) \tag #'part { \textLengthOn } s1 ^\markup{repeat ad lib} _\markup{poco a poco cresc} s s
| \time 12/4
\tag #'part { s2 _\markup{\dynamic ff dim} s2 ^\markup{stop as directed} }
\tag #'score { s2 \ff s2 _\markup{dim} }
r1 s2 s2
\tag #'part { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \mark "D.S." }
\bar ":|" \break
\time 3/4

\repeat tremolo 2 { bes''8 \ff -\tag #'part ^\markup { \musicglyph #"scripts.coda" } }
\repeat tremolo 2 { bes'' }
\repeat tremolo 2 { bes'' }
\repeat tremolo 2 { bes'' }
a'' ( bes''4 ) g''8 |
\repeat tremolo 2 { bes'' }
\repeat tremolo 2 { bes'' }
\repeat tremolo 2 { bes'' }
\repeat tremolo 2 { bes'' }
a'' ( \<  bes''4 ) g''8 |
\repeat tremolo 2 { bes'' \fff }
\repeat tremolo 2 { bes'' \<  }
\repeat tremolo 2 { bes'' }
\repeat tremolo 2 { bes'' \! }
\repeat tremolo 2 { bes'' }
\repeat tremolo 2 { bes'' }
\repeat tremolo 2 { bes'' }
\repeat tremolo 2 { bes'' }
\repeat tremolo 2 { bes'' }
bes'' r r4 r \fermata
\bar "|." }

partC={ \setup 
\key bes \major
\set Staff.instrumentName = "Violin 2"
\set Staff.midiInstrument = "violin"
\time 3/4 \set Timing.beatStructure = #'(1 1 1) \set Timing.beamExceptions = #'()
\tempo "Tempo Guisto" 4 = 112
R2. |
f' \p ^\markup{ten.} |
R |
\hairpinPoco e' \<  |
R \! |
\hairpinNormal f' |
R |
f' |
\tag #'part { \mark \markup { \musicglyph #"scripts.segno" } \bar "|:" }
\repeat tremolo 6 { bes'8 \ff \accent ^\markup{6} }
\repeat tremolo 6 { bes \accent ^\markup{6} }
\repeat tremolo 6 { bes' \accent ^\markup{sim.} }
\repeat tremolo 6 { bes \accent }
\repeat tremolo 6 { d' \accent }
\repeat tremolo 6 { f' }
\repeat tremolo 6 { e' \accent }
\repeat tremolo 6 { f' }
\repeat tremolo 6 { e' \accent }
\repeat tremolo 6 { f' }
\repeat tremolo 6 { e' \accent }
\repeat tremolo 6 { f' }
\repeat tremolo 6 { d' \accent }
\repeat tremolo 6 { bes \accent }
\repeat tremolo 6 { f' \accent }
bes2. \accent ^\markup{ten} _\markup{\dynamic f marcatiss} |
g' \accent |
bes \accent |
a' \accent |
bes \accent |
bes'8 bes \<  bes d' d' f' |
f' \! ( \accent g' ) g' bes' bes' d'' |
f' ( \accent g' ) \hairpinPoco g' \<  bes' bes' d'' |
ees' \! \hairpinNormal g' g'2 ( \f |
a'8 ) f' r4 ees'8 g' |
g'2 ( \accent a'8 ) f' |
f' d' d' f' f' ( \accent g' ) |
bes2 _\markup{dim} ( g8 ) r |
g \mf bes bes \>  d' d' f' |
f'2 \! ~ f'4 ~ \<  |
f' \! f'2 \>  |
d' \! \hairpinPoco d'8 ( \<  f' ) \! |
\hairpinNormal f' d' d' f' f' ( \accent g' ) |
e'2. |
d' |
f''2 \f bes'8 ( \accent c'' ) |
c'' ( \accent f' ) f' ( \accent ees' ) \<  ees' ( \accent d' ) |
d' \! ( \accent c'4 ) d'8 ees' ( aes ) |
bes8 c' c' ( \accent d'4 bes8 ) |
bes2. \<
\bar "||"
\mark \markup {\musicglyph #"scripts.coda"}
\repeat tremolo 2 { g''8 \ff }
\repeat tremolo 2 { g'' }
\repeat tremolo 2 { g'' }
\repeat tremolo 2 { g'' }
f'' ( g''4 ) e''8 |
\repeat tremolo 2 { f'' }
\repeat tremolo 2 { f'' }
\repeat tremolo 2 { f'' }
\repeat tremolo 2 { f'' }
e'' ( f''4 ) _\markup{dim.} d''8 |
c''2. ~ |
c'' |
bes' \mf |
a' |
g'2 ( f'8 ) g' |
g'2 ( f'8 ) r |
g'2 ( f'8 ) g' |
f'2. \< -\tag #'part ^\markup{attaca} |

\override Staff.TimeSignature #'stencil = ##f \time 21/4
\tag #'part { \textLengthOn } s1 \! -\tag #'part ^\markup{play as directed} \tag #'part { \textLengthOff } bes'8 ( \mf ^\markup{Soli} a'4 -\tag #'part ^\markup{Senza mesura} bes'8 ) c''[ ( f'] g'[ a'] ) a' ( bes'4 g'8 bes'2. ) \tag #'part { \textLengthOn } s1 ^\markup{repeat ad lib} _\markup{poco a poco cresc} s
| \time 12/4
s2 -\tag #'score \ff -\tag #'part _\markup{\dynamic ff dim} s -\tag #'score _\markup{dim} s -\tag #'part ^\markup{stop as directed} r1 s2
\tag #'part { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \mark "D.S." }
\bar ":|" \break
\time 3/4

\repeat tremolo 2 { f''8 \ff -\tag #'part ^\markup { \musicglyph #"scripts.coda" } }
\repeat tremolo 2 { f'' }
\repeat tremolo 2 { f'' }
\repeat tremolo 2 { f'' }
e'' ( f''4 ) d''8 |
\repeat tremolo 2 { f'' }
\repeat tremolo 2 { f'' }
\repeat tremolo 2 { f'' }
\repeat tremolo 2 { f'' }
e'' ( \<  f''4 ) d''8 |
\repeat tremolo 2 { f'' \fff }
\repeat tremolo 2 { f'' \<  }
\repeat tremolo 2 { f'' }
\repeat tremolo 2 { f'' \! }
\repeat tremolo 2 { f'' }
\repeat tremolo 2 { f'' }
\repeat tremolo 2 { f'' }
\repeat tremolo 2 { f'' }
\repeat tremolo 2 { f'' }
f'' r r4 r \fermata
\bar "|." }

partD={ \setup \key bes \major
\set Staff.instrumentName = "Viola"
\set Staff.midiInstrument = "viola"
\clef alto
\time 3/4 \set Timing.beatStructure = #'(1 1 1) \set Timing.beamExceptions = #'()
\tempo "Tempo Guisto" 4 = 112
\repeat tremolo 2 { bes8 \p }
\repeat tremolo 2 { bes }
\repeat tremolo 2 { bes }
\repeat tremolo 2 { bes }
\repeat tremolo 2 { bes }
\repeat tremolo 2 { bes }
bes _\markup{poco} bes a bes bes g |
\repeat tremolo 2 { bes _\markup{a} }
\repeat tremolo 2 { bes }
\repeat tremolo 2 { bes }
bes _\markup{poco} bes a bes bes g |
\repeat tremolo 2 { bes _\markup{cresc} }
\repeat tremolo 2 { bes }
\repeat tremolo 2 { bes }
bes bes a bes bes g |
\repeat tremolo 2 { bes \<  }
\repeat tremolo 2 { bes }
\repeat tremolo 2 { bes }
\tag #'part { \mark \markup { \musicglyph #"scripts.segno" } \bar "|:" }
\repeat tremolo 6 { bes \ff \accent ^\markup{6} }
\repeat tremolo 6 { d' \accent ^\markup{6} }
\repeat tremolo 6 { bes \accent ^\markup{sim.}}
\repeat tremolo 6 { d' \accent }
\repeat tremolo 6 { e' \accent }
\repeat tremolo 6 { c' \accent }
\repeat tremolo 6 { d' \accent }
\repeat tremolo 6 { c' \accent }
\repeat tremolo 6 { d' \accent }
\repeat tremolo 6 { c' \accent }
\repeat tremolo 6 { d' \accent }
\repeat tremolo 6 { d' \accent }
\repeat tremolo 6 { bes \accent }
\repeat tremolo 6 { g' \accent }
\repeat tremolo 6 { d' \accent }
d' g g \> bes bes d' |
c'2 ( \f bes8 _\markup{espress} ) c' |
c'2 ( bes8 ) c' |
d'2 d'8 ( c' ) |
e'2 e'8 ( \<  d' ) |
f'2 \! f'8 ( e' ) |
bes d' d' f' f' bes |
bes d' \hairpinPoco d' \<  f' f' ( g' ) |
ees'2 \! ( \accent \hairpinNormal d'8 ) ees' |
c'2 ( \accent ees'8 ) g' |
f' d' d' f' f' ( \accent g' ) |
bes'2. |
bes _\markup{dim} |
bes8 \mf d' d' \>  f' f' ( \accent g' ) |
e'2 \! ( d'4 ~ \<  |
d' ) e'2 \>  |
\hairpinPoco f'2. \<  |
bes8 \! ( \hairpinNormal a4 ) bes8 c' f ( |
g ) a a ( bes4 ) g8 |
g ( f ) f ( \<  g ) g ( f ) |
f ( \f g ) g bes bes ( \accent c' ) |
f' ( \accent e' ) e' \accent c' \accent c' ( \accent bes ) |
f' ( \accent e' ) e' \accent c' \accent c' ( \accent bes ) |
f' ( \accent e' ) e' ( \accent d' ) c' ( \accent bes ) |
e' ( d' ) d' \accent bes \accent bes \<  \accent d' \accent
\bar "||"
\mark \markup {\musicglyph #"scripts.coda"}
d' \ff f' \repeat tremolo 2 { f' }
f' ( \accent g' ) |
f' ( \accent g' ) f' ( \accent g' ) \repeat tremolo 2 { bes' }
\repeat tremolo 2 { bes' } \repeat tremolo 2 { bes' } \repeat tremolo 2 { bes' }
\clef treble
bes' d'' e'' ( \accent d'' ) d'' \<  bes' |
bes'2 \accent a'4 ~ \accent |
a' a'2 \accent
\clef alto
g'2. \>  |
f'2 ( \mf g'4 ) |
ees'2 ( d'4 ) |
ees' c'2 |
ees'8 ( g' ) f'2 ( |
a'2. ) \< -\tag #'part ^\markup{attaca} |

\override Staff.TimeSignature #'stencil = ##f \time 21/4
\tag #'part { \textLengthOn } s1 \! -\tag #'part ^\markup{play as directed} s2. \tag #'part { \textLengthOff } bes8 ( \f ^\markup{Soli} a4 -\tag #'part ^\markup{Senza mesura} bes8 ) c'[ ( f] g[ a] ) a ( bes4 g8 bes2. ) \tag #'part { \textLengthOn } s1 ^\markup{repeat ad lib} _\markup{poco a poco cresc} s4
| \time 12/4
s2 -\tag #'score \ff -\tag #'part _\markup{\dynamic ff dim} s2 -\tag #'score _\markup{dim} s s -\tag #'part ^\markup{stop as directed} r s
\tag #'part { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \mark "D.S." }
\bar ":|" \break
\time 3/4

\repeat tremolo 2 { d'8 \ff -\tag #'part ^\markup { \musicglyph #"scripts.coda" } }
\repeat tremolo 2 { d' }
\repeat tremolo 2 { d' }
\repeat tremolo 2 { d' }
c' ( d'4 ) d'8 |
\repeat tremolo 2 { d' }
\repeat tremolo 2 { d' }
\repeat tremolo 2 { d' }
\repeat tremolo 2 { d' }
c' ( \<  d'4 ) d'8 |
\repeat tremolo 2 { d' \fff }
\repeat tremolo 2 { d' \<  }
\repeat tremolo 2 { d' }
\repeat tremolo 2 { d' \! }
\repeat tremolo 2 { d' }
\repeat tremolo 2 { d' }
\repeat tremolo 2 { d' }
\repeat tremolo 2 { d' }
\repeat tremolo 2 { d' }
d' r r4 r \fermata \bar "|." }

partE={ \setup
\time 3/4 \set Timing.beatStructure = #'(1 1 1) \set Timing.beamExceptions = #'() \key bes \major \clef bass
\set Staff.instrumentName = "Cello"
\set Staff.midiInstrument = "cello"
\tempo "Tempo Guisto" 4 = 112
R2. |
bes2. \p |
R2. |
\hairpinPoco bes2. \<
R2. \! \hairpinNormal bes2. \< R2. \! bes2. \<
\tag #'part { \mark \markup { \musicglyph #"scripts.segno" } \bar "|:" }
\repeat tremolo 6{bes8 \ff ^\markup{6} }
 |
\repeat tremolo 6{bes,8 ^\markup{6}}
\repeat tremolo 6{bes8 ^\markup{sim.}}
\repeat tremolo 6{bes,8 }
\repeat tremolo 6{bes8 }|
\repeat tremolo 6{a }|
\repeat tremolo 6{g }|
\repeat tremolo 6{f }|
\repeat tremolo 6{bes }|
\repeat tremolo 6{bes, }|
\repeat tremolo 6{bes }|
\repeat tremolo 6{bes }|
\repeat tremolo 6{bes, }|
\repeat tremolo 6{bes }|
\repeat tremolo 6{bes, }|
bes, d d \>  f f ( g ) |
ees2 ( \f d8 _\markup{espress} ) ees |
c2 ( ees8 ) g |
f d d f f ( \accent g ) |
g bes bes g g ees |
d bes, \<  bes, d d f |
c2 ( \>  e8 ) g |
f \! d d f f ( \< \accent g ) |
g bes bes g g ees |
d \! bes, bes, d d bes, |
g, bes, bes, d d f |
g, bes, bes, d d bes, |
g, _\markup{dim} bes, bes, d d bes, |
bes, \mf d d \>  f f ( \accent g ) |
f2. ~ \<  |
f2 ~ \> f8 r \! |
d \hairpinPoco bes, \<  bes, g, g, bes, |
f,2. \! ~ |
\hairpinNormal f,2 ~ f,8 r |
g, bes, bes, \< d d bes, |
bes, \f d d f ~ f g |
aes8 ( \accent g ) g ( \accent f ) f ( \accent g )
aes8 ( \< \accent g ) g ( \accent f ) f ( \accent g )
bes8 \f ( a4 ) bes8 c' ( f )
g8 ( a ) a ( bes4 ) \<  g8 \!
\bar "||"
\mark \markup {\musicglyph #"scripts.coda"}
\repeat tremolo 2{bes8 \ff }\repeat tremolo 2{bes }\repeat tremolo 2{bes }
\repeat tremolo 2{ bes8 } a ( bes4 ) g8
\repeat tremolo 2{d'8 }\repeat tremolo 2{d' }\repeat tremolo 2{d' }
\repeat tremolo 2{d'8 }c' ( d'4 ) d'8
e'2. ~ e'
d'2. \mf
c'2.
bes2.
bes2.
g2 f4
f2. -\tag #'part ^\markup{attaca}

\override Staff.TimeSignature #'stencil = ##f \time 21/4
\tag #'part { \textLengthOn } s1 s2. -\tag #'part ^\markup{play as directed} s2 \tag #'part { \textLengthOff } bes,8 ( \f ^\markup{Soli} a,4 -\tag #'part ^\markup{Senza mesura} bes,8 ) c[ ( f,] g,[ a,] ) a, ( bes,4 g,8 \tag #'part { \textLengthOn } bes,2. ) ^\markup{repeat ad lib} _\markup{poco a poco cresc} s2 s4
| \time 12/4
s2 _\markup{poco dim} s s s -\tag #'part ^\markup{stop as directed} s2 r
\tag #'part { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \mark "D.S." }
\bar ":|" \break
\time 3/4

\repeat tremolo 2{bes8 \ff -\tag #'part ^\markup { \musicglyph #"scripts.coda" } }\repeat tremolo 2{bes }\repeat tremolo 2{bes }
\repeat tremolo 2{bes8 }a ( bes4 ) g8
\repeat tremolo 2{bes8 }\repeat tremolo 2{bes }\repeat tremolo 2{bes }
\repeat tremolo 2{bes8 \< }a ( bes4 ) g8
\repeat tremolo 2{bes8 \fff }\repeat tremolo 2{bes }\repeat tremolo 2{bes \< }
\repeat tremolo 2{bes8 }\repeat tremolo 2{bes }\repeat tremolo 2{bes \! }
\repeat tremolo 2{bes8 }\repeat tremolo 2{bes }\repeat tremolo 2{bes }
bes8 r r4 r \fermata
\bar "|." }

partF={ \setup
\time 3/4 \set Timing.beatStructure = #'(1 1 1) \set Timing.beamExceptions = #'() \key bes \major \clef bass
\set Staff.instrumentName = "DB"
\set Staff.midiInstrument = "contrabass"
\tempo "Tempo Guisto" 4 = 112
R2. |
bes,2. \p
R2. |
bes,2.
R2. bes,2. R2. bes,2.
\tag #'part { \mark \markup { \musicglyph #"scripts.segno" } \bar "|:" }
\repeat tremolo 6 {bes,8 \ff }
\repeat tremolo 6 {bes,8 }
\repeat tremolo 6 {bes,8 }
\repeat tremolo 6 {bes,8 }
\repeat tremolo 6{bes8 }|
\repeat tremolo 6{a }|
\repeat tremolo 6{g }|
\repeat tremolo 6{f }|
\repeat tremolo 6{bes }|
\repeat tremolo 6{bes, }|
\repeat tremolo 6{bes }|
\repeat tremolo 6{bes }|
\repeat tremolo 6{bes, }|
\repeat tremolo 6{bes }|
\repeat tremolo 6{bes, }|
bes, d d \>  f f ( g ) |
ees2 ( \f d8 _\markup{espress} ) ees |
c2 ( ees8 ) g |
f d d f f ( \accent g ) |
g bes bes g g ees |
d bes, \<  bes, d d f |
c2 ( \>  e8 ) g |
f \! d d f f ( \< \accent g ) |
g bes bes g g ees |
d \! bes, bes, d d bes, |
g, bes, bes, d d f |
g, bes, bes, d d bes, |
g, _\markup{dim} bes, bes, d d bes, |
bes, \mf d d \>  f f ( \accent g ) |
f2. ~ \<  |
f2 ~ \> f8 r \! |
d \hairpinPoco bes, \<  bes, g, g, bes, |
f,2. \! ~ |
\hairpinNormal f,2 ~ f,8 r |
g, bes, bes, \< d d bes, |
bes, \f d d f ~ f g |
f2.
f,2. \<
f2. \f
e2.
\bar "||"
\mark \markup {\musicglyph #"scripts.coda"}
d2. \ff \accent
bes,2. \accent
d2. \accent
bes,2. \accent
c2. ~ c
R2.*6 -\tag #'part ^\markup{attaca}

\override Staff.TimeSignature #'stencil = ##f \time 21/4
\tag #'part { \textLengthOn } s1 -\tag #'part ^\markup{play as directed} s \tag #'part { \textLengthOff } s2. f \staccato _\markup{\dynamic ff sempre} \accent ^\markup{Soli} f, \staccato \accent
\tag #'part { \textLengthOn } s1 ^\markup{repeat ad lib}
| \time 12/4
s2 \ff s -\tag #'score _\markup{(non dim)} s s s s2
\tag #'part { \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT \mark "D.S." }
\bar ":|" \break
\time 3/4

d2. \ff \accent -\tag #'part ^\markup { \musicglyph #"scripts.coda" } 
bes,2. \ff \accent
d2. \accent
bes,2. \ff \accent
\repeat tremolo 2{bes,8 \fff }\repeat tremolo 2{bes, }\repeat tremolo 2{bes, \<  }
\repeat tremolo 2{bes,8 }\repeat tremolo 2{bes, }\repeat tremolo 2{bes, \! }
\repeat tremolo 2{bes,8 }\repeat tremolo 2{bes, }\repeat tremolo 2{bes, }
bes,8 r r4 r
\bar "|." }

\bookpart{
\header{
title = "Bridge of Bows"
composer="Chris Brown"
mutopiacomposer="BrownCJ"
subtitle="for String Orchestra and Bell"
mutopiainstrument="2 violins, viola, cello, double bass, and B-flat bell"
date="July 2013"
source="Typeset from the manuscript by permission of the composer"
style="Modern"
copyright="Creative Commons Attribution 3.0"
maintainer="Silas Brown"
maintainerWeb="http://ssb22.user.srcf.net/"
dedication="In celebration of Benjamin Britten's centenary year"
moreInfo="Quote from Alleluia/Noye’s Fludde granted by permission of Boosey & Hawkes Music Publishers Ltd."

 footer = "Mutopia-2013/08/18-1863"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } } }
}
\score { \keepWithTag #'score <<
\new Staff << \context Voice = PartA { \partA } >>
\new Staff << \context Voice = PartB { \partB } >>
\new Staff << \context Voice = PartC { \partC } >>
\new Staff << \context Voice = PartD { \partD } >>
\new Staff << \context Voice = PartE { \partE } >>
\new Staff << \context Voice = PartE { \partF } >>
>> \layout{} \midi{} }
\markup{\center-column{\line{Performance note: Violins left to centre of conductor, Violas/Celli centre to right, Double Bass far right.}\wordwrap{“Bridge of Bows” reflects Estonian composer Arvo Part's ‘Cantus’ tribute to Benjamin Britten, being written for the same forces: string orchestra and bell. The bridge is portrayed in the arch shape of the piece. A quiet introduction (based on the notes for B-E-N) leads to the main section, in which reference to Britten's “Alleluia” from Noye's Fludde, the herald of the appearance of the rainbow, can be heard. A central rhythmless passage for each string player, playing independently, brings the music back to the main section and a short jubilant coda. The bell chimes exactly 100 times to celebrate 2013 as the centenary year of Benjamin Britten's birth.}\line { } \line{Chris Brown} \line{July 2013}\line{Quote from Alleluia/Noye’s Fludde granted by permission of Boosey & Hawkes Music Publishers Ltd.}}}
}

% %{
\bookpart{
\header{
title = "Bridge of Bows"
subtitle="for String Orchestra and Bell"
composer="Chris Brown"
dedication="In celebration of Benjamin Britten's centenary year"
}
\score { <<
\new Staff << \context Voice = PartA { \keepWithTag #'part { \partA } } >>
>> \layout{} } }

\bookpart{
\header{
title = "Bridge of Bows"
subtitle="for String Orchestra and Bell"
composer="Chris Brown"
dedication="In celebration of Benjamin Britten's centenary year"
}
\score { <<
\new Staff << \context Voice = PartB { \keepWithTag #'part { \partB } } >>
>> \layout{} } }
\bookpart{
\header{
title = "Bridge of Bows"
subtitle="for String Orchestra and Bell"
composer="Chris Brown"
dedication="In celebration of Benjamin Britten's centenary year"
}
\score { <<
\new Staff << \context Voice = PartC { \keepWithTag #'part { \partC } } >>
>> \layout{} } }
\bookpart{
\header{
title = "Bridge of Bows"
subtitle="for String Orchestra and Bell"
composer="Chris Brown"
dedication="In celebration of Benjamin Britten's centenary year"
}
\score { <<
\new Staff << \context Voice = PartD { \keepWithTag #'part { \partD } } >>
>> \layout{} } }
\bookpart{
\header{
title = "Bridge of Bows"
subtitle="for String Orchestra and Bell"
composer="Chris Brown"
dedication="In celebration of Benjamin Britten's centenary year"
}
\score { <<
\new Staff << \context Voice = PartE { \keepWithTag #'part { \partE } } >>
>> \layout{} } }
\bookpart{
\header{
title = "Bridge of Bows"
subtitle="for String Orchestra and Bell"
composer="Chris Brown"
dedication="In celebration of Benjamin Britten's centenary year"
tagline=""
}
\score { <<
\new Staff << \context Voice = PartF { \keepWithTag #'part { \partF } } >>
>> \layout{} } }
% %}
