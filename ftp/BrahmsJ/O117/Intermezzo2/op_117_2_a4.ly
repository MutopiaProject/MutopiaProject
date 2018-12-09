\version "2.18.2"
\language "deutsch"

extraNatOn  = { #(set-accidental-style 'modern)  \set Staff.extraNatural = ##t }
extraNatOff = { #(set-accidental-style 'default) \set Staff.extraNatural = ##f }

bPos    = #(define-music-function (parser location pos) (pair?)
             #{ \once \override Beam.positions = #pos #})
ncOff   = #(define-music-function (parser location offset) (number?)
             #{ \once \override NoteColumn.force-hshift = #offset #})
osl   	= #(define-music-function (parser location stemLength) (number?)
            #{ \once \override Stem.length = #stemLength #})
dynOff  = #(define-music-function (parser location off) (pair?)
             #{ \once \override DynamicText.extra-offset = #off #})
hpOff  	= #(define-music-function (parser location off) (pair?)
             #{ \once \override Hairpin.extra-offset = #off #})
tsOff  	= #(define-music-function (parser location off) (pair?)
             #{ \once \override TextScript.extra-offset = #off #})
tPos  	= #(define-music-function (parser location pos) (number?)
            #{ \once \override Tie.staff-position = #pos #})
spanRit = { \once \override TextSpanner.bound-details.left.text = "rit." }
up      = { \change Staff = "right" }
down    = { \change Staff = "left" }
ups     = { \change Staff = "right" \stemDown }
downs   = { \change Staff = "left" \stemUp }

\header {
  title = "Intermezzo"
  opus = "Johannes Brahms, Op. 117, No. 2"
  source = "Berlin: N. Simrock, 1892. Plate 9876."
  style = "Romantic"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Urs Metzger"
  mutopiatitle = "Intermezzo"
  mutopiacomposer = "BrahmsJ"
  mutopiaopus = "Op. 117, No. 2"
  mutopiainstrument = "Piano"
  mutopiacomposer = "BrahmsJ"
}

#(set-default-paper-size "a4")

\paper {
  ragged-last = ##f
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

global = {
  \key b \minor
  \time 3/8
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \set Timing.beatStructure = #'(1 1 1)
  \mergeDifferentlyDottedOn
  \partial 32 * 5
}

right_a = \relative des'' {
  \global
  \tempo "Andante non troppo e con molta espressione"
  \stemUp \phrasingSlurUp des32\(( c) ges c, c'(
  b32) f b,\) h'\rest h16.\rest b32\(( c) ges c, c'(
  f32) b, f\) d'\rest d16.\rest f32( as!) des, as as'(
  ges32) des ges, d'\rest d16.\rest des32( ges) c, ges ges'(
  f32) c f, d'\rest d16.\rest c32( f) b, f f'(

  \barNumberCheck 5
  es32) b es, des'( c) ges c, d'\rest d16.\rest f32(
  es32) a, es des'( c) a es d'\rest d16.\rest ges32(
  f8)[ e es]
  <<
    \new Voice = "eins" { \stemUp \tieUp \set tieWaitForNote = ##t \tPos #4.5 \tsOff #'(2.3 . 0) des4.~ ^\markup { \scale #'(2.5 . 1) \musicglyph #'"scripts.sforzato" } }
    \context Voice = "eins" { \stemUp \tieUp \omit TupletNumber s32 \times 11/8 \set tieWaitForNote = ##t \tPos #1.5 a4~ }
    \context Voice = "eins" { \stemUp \tieUp \omit TupletNumber s16 \times 10/8 ges4~ <ges a des>8.. }
  >> des'32( c) ges c, c'(

  \barNumberCheck 10
  b32) f b, h'\rest h16.\rest b32( c) ges c, c'(
  f32) c f, d'\rest d16.\rest f32( b) e, b b'(
  a32) es! a, d\rest d16.\rest f32( as) d, as as'(
  g32) des! g, d'\rest d16.\rest es32( ges) c, ges ges'(
  f32) h, f es'( des) h f d'\rest d16.\rest e32( \pageBreak

  \barNumberCheck 15
  f32) _\markup{ \vspace #2.4 " "} as, f des'( c) as f h\rest h16.\rest c32
  des8[ b g]
  b8.[ as32 as'] ges! c, ges! ges'(
  f32) ces f, es'( des) ces f, d'\rest d16.\rest eses32(
  des32) as f c'!( ces) as eses h'\rest h16.\rest des32

  \barNumberCheck 20
  ces8[ heses as]
  <<
    {
      <<
        \new Voice { \voiceOne \tPos #4.1 ges4.~ \hideNotes ges8.}
        \new Voice { \voiceThree s32 \tPos #-0.2 eses16.~ \noBeam eses8[ des]~ \hideNotes des8.}
        \new Voice { s16 \tPos #-8.0 heses16~ \tPos #-8.0 \ncOff #1 heses4~ <heses des ges>8. }
      >> \slurUp \tPos #-6 <as c! f>16~([ <ges c es!>) <ges c es>](
    }
    { s8 \spanRit s4 \startTextSpan s8 s4 \stopTextSpan }
  >>
  <f des'>8.) <f' des'>16([ <ges! c es>) <ges c es>(]
  <f f' as>8.)[ \arpeggio <des' f>16( <ges, ges' b>) \arpeggio <c es>(]

  \barNumberCheck 25
  <f, f' as>8.)[ \arpeggio <des des' f>16( \arpeggio <as' c>) <b, b' des>(] \arpeggio
  <f' as>8.[ <es ges>16)
  \once\override Slur.control-points = #'((1.6 . 2.2) (8.0 . 4.3) (22.0 . 4.3) (33.0 . 3.3))
  <es ges>8(]
  <f as>8[ <es ges> <es ges>])
  \once\override Slur.control-points = #'((-2.5 . 3.3) (8.0 . 7.3) (39.0 . 10.0) (52.0 . 5.6))
  <as, ges'>8[( <as f'>8 <f f'>8]
  \clef "bass" <f f'>8[ <es es'>8 <e e'>8]

  \barNumberCheck 30
  <f f'>8.) \clef "treble" \tPos #-6 <as! c f>16~([ <ges c es>) <ges c es>](
  <f des'>8.) \stemUp <f' des'>16([ <ges! c es>) <ges c es>(] \pageBreak
  <f f' as>8.)[ \arpeggio <des' f>16( <ges, ges' b>) \arpeggio <ces es>(]
  <f, f' as>8.)[ \arpeggio <des des' f>16( \arpeggio <as' ces>) <b, b' des>(] \arpeggio
  <f' a>8.[ <ges b>16) <ges b>8(]

  \barNumberCheck 35
  <ges a>8[ <ges b> <ges b>]
  <as ces>8[ <ges b> <g, g'>]
  <as as'>8 <ges! ges'!>4
  <f f'>8..) \stemNeutral \slurNeutral <des' des'>32-.( <c c'>16-.[ r32 <c c'>-.)]
  <b b'>8([ f')] r16. f'32\( (

  \barNumberCheck 40
  fes) des fes, fes'( es) des es,\) r32 r16. as'32\( (
  ges!32) es ges,! ges'( f!) es f,\) r32 r16. b'32(
  as!32 f as,) r r \once \override Slur.ratio = #1.5 b'( as f as,16) r32 \slurUp b'(
  \stemUp as f ces a'\rest a16.\rest \down b,,32 as f ces) s
  s16. c32 des as' ces \up s s16. as''32(

  \barNumberCheck 45
  g32 e b s s16. \downs as,32 g e b) s
  s16. h32 c g' b \up r r16 \tsOff #'(4.5 . 0)
  \override TieColumn.tie-configuration = #'((7.4 . 1) (4.1 . -1) (2.1 . -1))
  <e' g b des>~([ ^\markup { \scale #'(3.5 . 1) \musicglyph #'"scripts.sforzato" }
  <e g b c>16]) f\rest f\rest \tsOff #'(3.5 . 0)
  \override TieColumn.tie-configuration = #'((0.6 . 1) (-2 . -1) (-4 . -1))
  <es,! ges! b! des>~([ ^\markup { \scale #'(2.3 . 1) \musicglyph #'"scripts.sforzato" } <es ges b c>)]  r
  \revert TieColumn.tie-configuration
  r16 \clef "bass" \stemDown <es, f a des>(~ <es f a c>4) \pageBreak
  \clef "treble" r16 des'''32([ es, c' ges b c, a' es as a,]

  \barNumberCheck 50
  ges'32 c, f ges, es' a,) r16 r \stemUp des32( es,
  c'32 ges) r16 r des'32\( f, ces' as! ces, \slurDown ces'(
  b32) as b,\) r r16. b'32( ces) as ces, ces'(
  f32) as, f d'\rest d16.\rest f32( as!) d, as as'(
  ges32) es ges, d'\rest d16.\rest des!32( ges) c, ges ges'(

  \barNumberCheck 55
  f) c f, d'\rest d16.\rest c32( f) b, f f'(
  es32) b es, des'( c) ges c, d'\rest d16.\rest f32(
  es32) a, es des'( c) a es h'\rest h16.\rest ges'32
  f8[ e es]
  <<
    \new Voice = "eins" { \stemUp \tieUp \set tieWaitForNote = ##t \tsOff #'(2.5 . 0) des4.~ ^\markup { \scale #'(2.6 . 1) \musicglyph #'"scripts.sforzato" } }
    \context Voice = "eins" { \stemUp \tieUp \omit TupletNumber s32 \times 11/8 \set tieWaitForNote = ##t \tPos #1.5 a4~ }
    \context Voice = "eins" { \stemUp \tieUp \omit TupletNumber s16 \times 10/8 ges4~ \stemDown <ges a des>8 }
  >> s8 c!32 ges c, c'(

  \barNumberCheck 61
  b32) f b, h'\rest h16.\rest b32( des) ges, b, des'(
  ges32) ces, ges h\rest h16.\rest es32( des) asas b, des'(
  ces32) ges ces, h'\rest h16.\rest ces32( <c es>) as c,! es'(
  as32) des, as d\rest d16.\rest des32( as') des, as as'(

  \barNumberCheck 65
  des32) g, des d\rest d16.\rest des32( ges) c, ges ges'(
  ces) f, ces d\rest d16.\rest h32( e) ais, e e' \pageBreak
  \stemUp a!8[ fis dis]
  a8[ gis fis]
  \slashedGrace <a, es'! f!>8 es'''8[ a, es] \break

  \barNumberCheck 70
  a,8[ as ges!]
  <<
    { \spanRit s4 \startTextSpan s16. s32 \stopTextSpan }
    \\
    { \stemUp f8[ e es] \tempo "Più Adagio" s4. }
  >>
  f'8.\rest \slurUp e16([ ^\markup { \italic "dolce" } f d \break
  b f d)] s8.

  \barNumberCheck 75
  f'8.\rest \slurUp g16([ _\markup{ \dynamic "p" } as f
  des as f)] des'\([ ( c) c(] \break
  b8.)[ b16( h) h(]
  c8.)[ c16( b!) b(]
  as8.)[ as16( a) a(]

  \barNumberCheck 80
  <<
    { b8.)[ b,16( des) des] }
    \new Voice { s8. \stemUp \hideNotes b16~ b8}
  >> \break
  <c f>8.[ f,16( c') c]
  \stemNeutral <ges! a es'>8 \)[ <f a des> <es a c>~]
  <es a c>4( b'8)
  \clef "treble" \downs b16[ \ups des-.( f-. b-. des-. <f f'>-.)]

  \barNumberCheck 85
  <b b'>4 ^\fermata \bar "|."
}

right_b = \relative b' {
  \global
  s32 s8
  \stemDown b8 s s
  \osl #7.9 f'8 s s
  s4.
  s4.

  \barNumberCheck 5
  s4.
  s4.
  f32[ c a] f e'[ c a] f es'[ c a] f
  \slurDown des'[( a ges des \down \stemUp a ges des a ges des a ges]
  es[ es' ges a es' ges a]) s32 s8

  \barNumberCheck 10
  \up \stemDown b'8 s s
  << { \stemDown \osl #7.9 f'8 s } \\ { s32 \stemDown c16 s32 } >> s8
  s4. * 3

  \barNumberCheck 15
  s4.
  des32 g, e \downs c \ups b' g des \downs c \ups g' e b \downs c
  \once\override Slur.control-points = #'((0.1 . -6.3) (5 . -13.0) (20.0 . -22.0) (23.5 . -16.8))
  \stemDown \up b'32( f c \down \stemUp f, c as f c as as') r16
  s4.
  s4.

  \barNumberCheck 20
  \ups ces''32 as eses \downs ges,,, \ups heses''' ges des \downs ges,,, \ups as''' f ces \downs ges,,
  \once\override Slur.control-points = #'((0.1 . -7.0) (20 . -17.4) (44.0 . -23.0) (55.2 . -14.3))
  \ups ges'''32([ eses heses \downs ges eses heses ges eses heses ges heses eses]
  \stemDown \tuplet 3/2 { ges16 heses eses } ges16) s8.
  s4.
  s4.

  \barNumberCheck 25
  s4.
  \ups s4 a16\rest b
  ces16[ b a b h c]
  es16[ des c des c b!]
  \once \override TextSpanner.bound-details.left.text = "rit." \textSpannerDown a16[ \startTextSpan b des c b c]

  \barNumberCheck 30
  b8[ \stopTextSpan a16] s8.
  s4.
  \downs \slurUp \tieUp as16 b( ces4~)
  ces16([ b ces8 f,)]
  \ups s4 c'16\rest des

  \barNumberCheck 35
  eses16[ des c! des eses des]
  \extraNatOn es!16[ \extraNatOff des c des es des]
  f16 [ des \spanRit \textSpannerUp c \startTextSpan b as c]
  \textLengthOn \ncOff #3.0 es8([^"          " des16.)] \stopTextSpan s32 s8 \textLengthOff
  s4.

  \barNumberCheck 40
  s4. * 15

  \barNumberCheck 55
  s4. * 3
  f'32[ c a] f e'[ c a] f es'[ c a] f
  \slurDown des'[( a ges des \down \stemUp a ges des a ges des a ges])

  \barNumberCheck 60
  \up c''''32\rest \slurUp des([ ces heses as ges es des)] s8
  s4. * 4

  \barNumberCheck 65
  s4.
  s4.
  \ups a'32 dis, a \downs h, \ups fis'' dis a \downs h,, \ups dis'' a fis \downs h,,,
  \ups a'''32 dis, a \downs h, \ups gis''32 dis a \downs h,, \ups fis'''32 dis a \downs h,
  \ups es'''32 a, es \downs <c, f> \ups a'' es a, \downs <f, c'> \ups es'' a, es \downs <c, f>

  \barNumberCheck 70
  \bPos #'(-8 . -11) \ups a''32 es a, \downs <f, c'> \bPos #'(-8 . -12) \ups as'' es a,! \downs f,, \bPos #'(-8 . -11) \ups ges''' es a, \downs <f, c'>
  \bPos #'(-8 . -11.5) \ups f''32 c a \downs f,, \bPos #'(-8 . -11) \ups e''' c a \downs <f, c'> \ups \set tieWaitForNote = ##t \tuplet 3/2 { es''16~ c~ \tieDown a~ }
  \stemUp <a c es>8.[ \set tieWaitForNote = ##f <f a d>16~( <f a c>) <f a c>~](
  <f b>4.)
  s8. <as! des f>16([ <heses c es>) <heses c es>(]

  \barNumberCheck 75
  \stemDown <as des>4.)
  s4 <c ges'!>8
  <b f'>4 <h f'>8
  <c e>4 <b! e>8
  <as f'>4 <a es'!>8

  \barNumberCheck 80
  <b d>4 b8 \clef "bass" <f b>4.
}

dyn = {
  s32 _\markup { \dynamic p \italic dolce } s8
  s4. * 7
  s8 s32 \once \override Hairpin.extra-offset = #'(0 . 1.5) s32 \> s8.
  s8.. \pp s32 \p s8

  \barNumberCheck 10
  s4.
  s8.. s32 _\markup { \italic "espress." } s8
  s4. *3

  \barNumberCheck 15
  \tsOff #'(0 . 2) s4. _\markup { \italic "dim." }
  s4.
  s8 s8 \< s8 \>
  s4. \!
  \tsOff #'(0 . 2) s4. _\markup { \italic "dim." }

  \barNumberCheck 20
  s4.
  s8 s32 \hpOff #'(1 . 0.47) s32 \> s8.
  s16 s\! s s8. \p
  s4.
  s8. s16 \< s16 \> s16 \!

  \barNumberCheck 25
  s4.
  s4 s8 _\markup { \italic \whiteout "legato espress. e sostenuto" }
  s4 s16 s \<
  s4.
  s4. \>

  \barNumberCheck 30
  s16 s16 \! s \p \tsOff #'(-0.2 . 1.5) s8. _\markup { \italic dolce }
  s4.
  \hpOff #'(0 . 0.5) s4 \< \hpOff #'(0 . 0.5) s8 \>
  s32 s16. \! s4
  s4 \tsOff #'(0 . -1.5) s8 ^\markup { \whiteout "espress. e sostenuto" }

  \barNumberCheck 35
  s8. s \<
  s4.
  s4. \f \>
  s16 s \! \tsOff #'(0 . 1.5) s4 _\markup { \dynamic p \italic dolce }
  s4.

  \barNumberCheck 40
  s4.
  s4 s16. s32 \<
  s4.
  s4. \p
  s4 s8 _\markup { \italic "dim." }

  \barNumberCheck 45
  s4.
  s4.
  s4.
  s16 s16 \pp s4
  s4 s32 s16. \<

  \barNumberCheck 50
  s8 s32 s \! s16 s8 \>
  s16 s \! s \tsOff #'(0 . 1.4) s _\markup { \italic dolce } s16. s32 \p
  s4.
  s4.
  s4.

  \barNumberCheck 55
  s4.
  s4.
  s4.
  s4. \>
  s4. \!

  \barNumberCheck 60
  s4 \pp s8 \p
  s4 s8 _\markup { \italic "cresc." }
  s4.
  s4.
  s8.. s32 _\markup { \italic \whiteout "sempre cresc." } s8

  \barNumberCheck 65
  s4.
  s4.
  \dynOff #'(0 . -1.8) s4. \f
  s4.
  \tsOff #'(-1.8 . -0.3) s4. _\markup{ \dynamic "rf" }

  \barNumberCheck 70
  s4 \hpOff #'(0 . -2.9) s8 \>
  s4.
  s8. \p s8 \> s16 \!
  s4.
  s8. \tsOff #'(0 . 0.6) s16 _\markup{ \dynamic "rf" } \hpOff #'(0 . -0.9) s8 \>

  \barNumberCheck 75
  s4. \!
  s8. s8._\markup { \dynamic "f" \whiteout \italic "  legato espress." }
  s4.
  s8. s8. _\markup { \italic "dim." }
  s4.

  \barNumberCheck 80
  s4. _\markup { \italic "rit. molto" }
  \hpOff #'(0 . -1.2) s4. \>
  s4.
  \dynOff #'(0 . -1.2) s4. \p
  s16 \hpOff #'(0 . -3.0) s16 \> s4

  \barNumberCheck 85
  s4 \pp
}

left_a = \relative es, {
  \global
  r32 _\markup { \italic "col" \musicglyph #"pedal.Ped" } es16 r
  des16 r32 e'( f b \up f') \down r32 es,,!16 r
  des16 r32 a''( b \up f' b) \down r32 b,,,16 r
  es16 r32 a'( b \up des b') \down r32 as,,,!16 r
  des16 r32 g'( as c \up as') \down r32 ges,,,!16 r

  \barNumberCheck 5
  c16 r es r32 f'( ges b \up ges') \down r32
  f,,,16 r f' r32 e'( f a \up f') \down r32
  s4.
  s4 \sustainOn s16. s32 \sustainOff
  s8.. \sustainOn r32 \sustainOff es,,16 r

  \barNumberCheck 10
  des16 r32 e'( f b \up f') \down r32 es,,!16 r
  des16 r32 a''( b \up f' b) \down r32 c,,,16 r
  f16 r32 h'( c \up es c') \down r32 b,,,!16 r
  es16 r32 a'( b \up des b') \down r as,,,!16 r
  des16 r des' r32 g( as h \up as') \down r

  \barNumberCheck 15
  c,,,16 r c' r32 e( f as \up f') \down r
  s4.
  s4.
  des,,16 r des' r32 g( as ces \up as') \down r
  des,,,16 r des' r32 e( f as \up f') \down r

  \barNumberCheck 20
  s4.
  s4.
  s8. \slurUp as,,,8([ des16]~
  \stemUp \tieUp des8.[ as''~]
  as16 c des4)

  \barNumberCheck 25
  as16 \slurUp g( as4)
  \slurDown es,16([ b' es b')] r \slurDown
  \once\override Slur.control-points = #'((0.1 . -3.0) (4.0 . -9.0) (22.0 . -8.0) (29.4 . -7.5))
  b,(
  ces16[ b a b h c])
  \once\override Slur.control-points = #'((-3. . -6.0) (10.0 . -8.0) (42.0 . -7.8) (52.2 . -3.5))
  es16[( des c des c b!]
  a16[ b des c b c~]

  \barNumberCheck 30
  <f, c'>8.) \slurUp as,!8([ \tieDown des16]~
  des8.[ \tieUp as''~])
  \tieDown \stemDown \dotsDown \tPos #3.4 as4.~
  as4 s8
  ges,16[( des' ges des']) r \slurDown
  \once\override Slur.control-points = #'((0.5 . -3.2) (4.0 . -6.3) (25.0 . -6.0) (30.4 . -5.0))
  des,(

  \barNumberCheck 35
  \stemUp eses16[ des c! des eses des])
  \once\override Slur.control-points = #'((-4.5 . -5.2) (10.0 . -7.1) (39.0 . -7.1) (45.2 . -4.4))
  \extraNatOn es!16[( \extraNatOff des c des es \tieUp des~]
  des16 [ f es des c as~]
  <des, as'>8..) \slurDown des'32-.( c16-.[ r32 c-.)]
  \stemNeutral \slurNeutral \phrasingSlurNeutral \dotsNeutral b16. e,32\( ( f) a f' f,( ges) b ges'\) r

  \barNumberCheck 40
  r16. ges32\( ( g) b g' g,( as) c as'\) r
  r16. as,,32\( ( a) c a' a,( b) d b'\) r
  \clef "treble" r32 \slurDown b( h d h' h, c f c' c, des f
  des'!16) r32 \up \stemDown b as f ces \down \clef "bass" h,\rest h16.\rest \slurUp \once \override Slur.extra-offset = #'(0 . 0.5) c,!32(
  des32 as' ces s s16. \up c'!32 des as' ces) s

  \barNumberCheck 45
  s16. as32 g e b \down s s16. \slurDown h,,32(
  c32 g' b c,\rest e16.\rest h''32 c \up e g) e\rest
  e16\rest <h e g>~([ <c e g>)] \down r r <h, es! ges!>~(
  <c es ges>16) r r \stemNeutral
  \once\override Slur.control-points = #'((0.4 . -7.5) (5.0 . -8.5) (10.0 . -7.0) (13.0 . -5.5))
  e,,( f16. f'32)
  \once\override Slur.control-points = #'((-2.4 . -5.2) (10.0 . -8.0) (64.0 . -9.5) (71.2 . -3.0))
  a32([ c es ges a c ges' es ges, a es' c]

  \barNumberCheck 50
  es,32[ ges c a c, es a ges es c a ges]
  es32 a ges') r r16 es,32( as f'16) r
  d,16 r32 \slurUp e'( f as f') r es,,!16 r
  d16 r32 a''( b \up f' b) \down r32 b,,,16 r
  es16 r32 \once \override Slur.ratio = #1.5 a'(b \up des! b') \down r32 as,,,!16 r

  \barNumberCheck 55
  des16 r32 g'( as! c \up as') \down r32 ges,,,!16 r
  c16 r es r32 f'( ges b \up ges') \down r32
  f,,,16 r f' r32 e'( f a \up f') \down r32
  s4.
  s4 \sustainOn s16. s32 \sustainOff

  \barNumberCheck 60
  \slurDown es,,,16([ \sustainOn es'32 ges a es' ges a]) \sustainOff es,16 r
  des16 r32 \slurUp e'( f b \up f') \down r fes,,16 r
  es16 r32 f'( ges ces \up ges') \down r fes,,16 r
  es16 r32 f'!( ges ces \up ges') \down r ges,,16 r
  f16 r32 g'!( as \up des as') \down r fes,,16 r

  \barNumberCheck 65
  es16 r32 a'!( b \up des b') \down r eses,,,16 r
  des16 r32 g'( as ces \up as') \down r c,,,!16 r
  h16 r32 s s4
  s4.
  <c! f! c'!>16 r32 s s4

  \barNumberCheck 70
  s4.
  s4.
  f,8. \stemUp f'16([ es') es(]
  d4.~)
  d8. \bPos #'(4.4 . 4.8) f,16([ ges'!) ges(]

  \barNumberCheck 75
  f4.~)
  f8. \bPos #'(3.4 . 4.3) f,16([ <es' a>8)]
  <d f>4 <des f>8
  <c g'>4 <c g'>8
  <des f>4 <ces f>8

  \barNumberCheck 80
  <b f'>4 <b f'>8
  c4.
  \tieNeutral f,,4~ f16 r
  \slurNeutral b,16([ b'-.) _\markup { \musicglyph #"pedal.Ped" } f'-.( b-. des-. f-.)     ]
}

left_b = \relative des, {
  \global
  s32 s8
  s4. * 19

  \barNumberCheck 20
  s4. *3
  \stemDown \tieDown des16[ g as8. des16~]
  <des as'>4 \tieNeutral <des as'>8~

  \barNumberCheck 25
  <des as'>4 <b f'>8
  s4.
  d,8[ es es]
  f[ f des]
  ges[ ges ges]

  \barNumberCheck 30
  s4.
  des16[ g as8. \tieDown des16~]
  des4 des8~
  des4 des8
  s4.

  \barNumberCheck 35
  ges,8[ ges ges]
  f8[ ges b]
  as8 as4
  s4. * 2

  \barNumberCheck 40
  s4. * 30

  \barNumberCheck 70
  s4.
  s4.
  s8. f8 \slurDown f16~
  f16 \tsOff #'(1.5 . 0) e( _\markup { \scale #'(2.0 . 1) \musicglyph #'"scripts.sforzato" } f4)~ _\markup { \musicglyph #"pedal.Ped" }
  f8.[ f8 f16~]

  \barNumberCheck 75
  f16 e( f4)~ _\markup { \musicglyph #"pedal.Ped" }
  f8.[ f8 f16~]
  f16 e( f4)~
  f16 e( f4)~
  f16 e( f4)~

  \barNumberCheck 80
  f16 e( f4)~
  f16 e( f4)
  s4.
  s4.
  <b des b'>4 \stemNeutral b,8

  \barNumberCheck 85
  <b f' des'>4 ^\fermata
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
    \tempo 8 = 72
  }
}
