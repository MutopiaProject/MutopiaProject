%%--------------------------------------------------------------------
% Mutopia Project
% LilyPond template for keyboard solo piece
% for new additions
%%--------------------------------------------------------------------

\version "2.18.2"

%#(set-default-paper-size "letter")

#(set-global-staff-size 18)

\paper {
    top-margin = 8\mm                              %-minimum: 8 mm
    top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #5      %-dist. from header/title to first system
    top-system-spacing.basic-distance = #10        %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.padding = #2               %-min #1.5 -pads music from copyright block 
    line-width = 192\mm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
    ragged-right = ##f
}

\header {
    title = "Piano Sonata No.1"
    composer = "L.V. Beethoven (1770-1827)"
    opus = "Op.2 No.1"
    date = "1794/95"
    style = "Classical"
    source = "Peters, 1910"

    maintainer = "Javier Ruiz-Alma"
    maintainerEmail = "javier (at) ruiz-alma.com"
    license = "Creative Commons Attribution-ShareAlike 4.0"

    mutopiatitle = "Sonata No. 1 (2nd Movement: Adagio)"
    mutopiaopus = "Op. 2, No. 1"
    mutopiacomposer = "BeethovenLv"
    mutopiainstrument = "Piano"

 footer = "Mutopia-2015/11/15-2070"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\include "shapeII.ily"

%--------Definitions
global = {
  \key f \major
  \time 3/4
}

staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

dolceP = \markup \whiteout \concat { \italic dolce \hspace #0.4 \dynamic p }
rf = #(make-dynamic-script "rf")
txtRH = \markup \center-align \larger \italic "  R.H."
txtSharpTurn = \markup { \override #'( baseline-skip . 0.8 ) \center-align \center-column \tiny { \finger "4321" \normalsize \musicglyph #"scripts.turn" \sharp } }
txtNatTurnA = \markup { \override #'( baseline-skip . 0.8 ) \center-align \center-column { \musicglyph #"scripts.turn" \tiny \natural } }
txtNatTurnB = \markup { \override #'( baseline-skip . 0.8 ) \center-align \center-column \tiny {  \finger "432" \normalsize \musicglyph #"scripts.turn" \tiny \natural } }
txtNatTurnC = \markup { \override #'( baseline-skip . 0.8 ) \center-align \center-column \tiny {  \finger "432" \normalsize \musicglyph #"scripts.turn" \tiny \natural } }
txtTurnD = \markup { \override #'( baseline-skip . 2 ) \center-column { \musicglyph #"scripts.turn" \finger "4323" } }
txtSharpTurnE = \markup { \override #'( baseline-skip . 0.8 ) \center-align \center-column \tiny { \finger "432" \normalsize \musicglyph #"scripts.turn" \sharp } }

omitDyn = \once\omit DynamicText
scriptUnderSlur = \temporary \override TextScript #'avoid-slur = #'inside
csBracket = \override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
hideTupletBracket = \temporary \override TupletBracket.bracket-visibility = ##f
hideTupletNumber = \temporary \override TupletNumber.transparent = ##t
textUnderSlur = {
  \once \override TextScript.outside-staff-priority = ##f
  \once \override TextScript.avoid-slur = #'inside
}

#(define-markup-command (tied-finger-up layout props f1 f2)
   (string? string?)
   (interpret-markup layout props
     #{
       \markup {
       \override #'(baseline-skip . 1.2)
       \center-column {
         \scale #'(1 . -1) \musicglyph #"ties.lyric.default"
         \concat { #f1 \hspace #0.6 #f2 }
       }
       }
     #}
   ))

fingerFourThree = \finger \markup { \tied-finger-up #"4" #"3" }
fingerOneTwo = \finger \markup { \tied-finger-up #"1" #"2" }
fingerDown = \set fingeringOrientations = #'(down)
fingerLeft = \set fingeringOrientations = #'(left)
fingerLift = \temporary \override Fingering.extra-offset = #'(1.5 . 2.5)

scriptLiftA = \once \override Script.extra-offset = #'( 0 . 1 )
scriptLiftB = \once \override TextScript.extra-offset = #'( 0.5 . 11.5 )
scriptLiftC = \once \override TextScript.extra-offset = #'( -0.4 . 12.8 )
scriptDownA = \once \override TextScript.extra-offset = #'( 0 . -2 )

algnBeamA = \once \override Beam.positions = #'(4.5 . 5.3)

resetShpPSlur = \shapeII #'(()) PhrasingSlur
resetShpSlur  = \shapeII #'(()) Slur
shpSlurA = \shape #'((0 . 2.2) (0 . 2.3) (0 . 1.7) (0 . 1.7)) Slur
shpSlurB = \shape #'((0 . 1) (0 . 3) (0 . 2.1) (0 . 2)) PhrasingSlur
shpSlurC = \shapeII #'( (head 0 2 ) ( ) ( ) ( ) ) Slur
shpSlurD = \shapeII #'((head 0.4 5)()(-1 1.5)(head 0 1)) Slur
shpSlurE = \shapeII #'((head)(0 1)()(head)) Slur
shpSlurF = \shape #'((0.4 . -1.4) (2 . 2) (0 . 3.5) (0 . -1)) PhrasingSlur
shpSlurG = \shape #'( ((0 . 0)(0 . 0)(0 . 0)(0 . 0))
                      ((0 . 1)(0 . 2)(0 . 2)(0 . -0.5)) ) PhrasingSlur
shpSlurH = \shape #'( ((0.5 . 1.0)(3 . 3)(-6 . 2)(0 . 1))
                      ((0 . 0)(0 . 0)(0 . 0)(0 . 0)) ) PhrasingSlur
shpSlurI = \shape #'( ((0.3 . -0.7)(1 . 1.5)(-0.5 . 4)(0 . 1))
                      ((0 . 1)(0 . 1)(0 . 0.5)(0 . 0)) ) PhrasingSlur
shpSlurJ = \shape #'( ((0 . -1.5)(3 . 0.5)(-1 . 1)(-0.4 . -2))
                      ((0 . 0)(0 . 0)(0 . 0)(0 . 0)) ) PhrasingSlur

%-------------- Music definitions

upperStaffA =   \relative c' {
    \tempo "Adagio." \oneVoice
    \partial 4 \omitDyn  c8.-2-\dolceP\p^\( c16-1
  | a'4-3 \grace c16-5 bes8 a g f-1
  | f4-4 e8\)-.\noBeam c8-2^\( <d b> <e bes>-2-4
  | \slurUp \voiceOne f8-1\)( c'16-5) b\rest c8-4( bes16) b\rest bes8-4( a16) b\rest
  | \slurNeutral \oneVoice <a f>4-4( <g e>16-.)\noBeam c,-2\( d e-1 f fis g-1 gis
  %5
  | \shpSlurB a4-3\)^\( \grace c16-5 bes8 <a f> <g e>-2-4 f-1
  | \shpSlurF <f d'>4-3\)^\( <g e'>\fingerFourThree \voiceOne g'16 f e f
  | \oneVoice e16 d c bes-2 a8.-1 a16\turn\finger \markup "4323" c-5 bes g e
  | <e g>4-2-4 f8\)  r \shpSlurG c'8.-1\( f16-4
  | f4-3 e f8.-3 a16-2
  %10
  | c4-4 b16-3\)-\shapeII #'(()(0 1.5))\( c d c-3 bes a g-3 f-2
  | f4-3 e f16.-3 g32-2 a16. b32-2
  | d8-4 c~\)-\shapeII #'(()(0 1)(0 2)(0 -0.3)) \( \omitDyn c16\pp b d c c-4 bes a bes
  | a4-2\)-\shapeII #'((0 -2)(0 1.5))^\( \grace c16-5 bes8 <a f> <g e>-2-4 f-3
  | <e c>4-1-4 <bes d>8-2-3\) r <d d'>8.\( <c c'>16-4
  %15
  | c'16-2 f e d cis \slashedGrace e8 d16 c-1 bes-3 a c bes g
  | \fingerLeft <g-5 bes,-2>4 <f a,>8-4\) r \shpSlurA a4-3(
  | \voiceOne d4-4) s <d d,>8.\( <d d,>16
  | <d d,>4 <cis cis,>8-4\) r \fingerLift <cis-2>8.\( d16 \undo\fingerLift
  | e4\) s g,8.-3-\shapeII #'(()(0 1))\( g16-2
  %20
  | g4-3 f8\) r f4-3\(
  | d'4-5\) s \oneVoice <f f,>8.\( <f f,>16
  | <f f,>8-5\)([ <e e,>-4)] <e e,>-5([ <d d,>-4)] <d d,>-5([ <c c,>-4)]
  | \voiceOne c8-3( b) ~ b32( c d c b c d b-1 c16 d e c)
  | \grace { b32-1-\shapeII #'(()(0 0.5))_( c-2 d-4 } c8-3)( b!) ~ b32\( c d c b c d b-1 \oneVoice c-2 d e d c b a-3 g-1
  %25
  | \shpSlurH gis32-2\)\( a-3 c-5 b a g f e-2 g-4 f a g f e d cis-2 d-1 e-3 f-4 e g f e d
  | c!32-1 d-4 c-3 b c g a b c-1 d e f g fis-3 g fis g16-.-5 f-. e-. d-.
  | c8-.\)\noBeam \clef bass c,-2-\shapeII #'((0.3 -1)(0 1))\( <a f'>[ <g_1 e'^4> <f a d>-5 <e g c>-4]
  | \voiceOne c'4-5 b-4\) \oneVoice <b g f d>-4\(
  | <c e,>8-.-5\) \clef treble \tupletSpan 8 \tuplet 3/2 { \scriptDownA c16_1([^\txtNatTurnB e g_5]) g_4( f) r f_4( e) r e_4( d) r d_4( c) r }
  %30
  | \clef bass \voiceOne c4( b-4) \oneVoice \clef treble <d f b>-4^(
  | <e c'>8-.)\noBeam c-1\sfp ~ c16_\( d32\pp e f_1 g a bes! c^[ b_3 c d c bes a g]
  | a4-3\)^\( \grace c16 bes8 a g f
  | \voiceOne f4-4 e8^.\)\noBeam c-2\( <d b>-3 < e bes>^4_2
  | f16-1\)( c'-5) \dotsUp c-4-. c-3-. c-4( bes) bes-.-4 bes-.-3 bes-4( a) a-.-4 a-.-3
  %35
  | a8.-4( bes32 a g8)\noBeam \oneVoice \tupletSpan 8 \tuplet 3/2 { c,16-._2-\shapeII #'((0.3 0.3)(2 -1.1)(0.5 -3.1)(0 0.2))\( cis-. d-._1 ees-. e-._1 f-. fis-.[ g-._1 gis-._2] }
  | a4-3\)-\shapeII #'((0 3)(0 3)(0 3)(-0.5 3)) ^( \tuplet 3/2 { c16_3)(^[ bes)] r bes_3( a) r a_3( g) r g_3( f) r }
  | d'4-1-\shapeII #'(()(0 2))\( e g32-4 f e f e f g f
  | e d-1 cis-3 d e d c bes a4\)-\shapeII #'(()(3 1.8)(2 1)(0 2))^\( c16 bes g e
  | <g^3>4 f8\) r c'8.-1-\shapeII #'(()(2 2.5)(-2 2.5)(-0.5 0.5))\( f16-4
  %40
  | f4-3 e f8. a16-2
  | c4-4 \shpSlurI b16-3\)\( c d c-3 bes a g-3 f-2
  | f4-3 e32 f e d e-4 c-2 d-1 e f16.-3 g32-2 a16.\turn^\finger " 1" b32-2
  | d8-4 c\) \tuplet 3/2 { r16 b-2( c) r d-4( c) r c-4( b) r c-4( bes) }
  | a8.-2-\shapeII #'(()(0 1.5)) ( a16\turn\finger "3212" \tuplet 3/2 { r16 c)-3( bes) r bes-3( a) r a-3( g) r g-3( f }
  %45
  | <e c>4-1-4)-\shapeII #'((0.5 0)()()(-0.5 0)) ( <d bes>)-2-3 <d d'>8.-\shapeII #'(()(0 1.5))\(\sf <c c'>16-4
  | c'16-2 f8\sf e32 d cis e d c-1 bes-3 a c bes a g bes-4 g-2 f e-2 g-4 e-1
  | <e g>4-2-4 f16-.-3\)\noBeam c-1-\shapeII #'((-0.5 2.5)(0 2)(0 2)()) \( f-5 c-3 bes a g-3 f\)
  | \voiceOne \fingerLift <f-3>8(^\sf \undo\fingerLift e) ~ e32\( f g f e f g e f16 g a f-2\)
  | f8-3(^\sf e) ~ e32-\shapeII #'(()(0 0.8))\( f g f e f g e f a c bes-4 a-5 g f ees
  %50
  | \oneVoice d32-1\)-\shapeII #'((0 1)(3 3)(-6 4)(0 -2.5))\( ees-4 d-3 cis d-1 e f fis g-1 a bes c!-1 d e f!-1 fis-2 g-1 a bes c-1 d e f! d
  | c32-1 d-4 c-3 b c-1 f-5 e d c b-1 bes-4 a g f e-3 d c16-.\pp\)_[-\shapeII #'((0 1)(1 2)) ^\( bes-.-3 a-. g-.]
  | \clef bass \voiceOne f2-5 ~ f8\)\noBeam c16-3( f)
  | \clef treble f4( e-4) e-5(
  | \oneVoice \tupletDown \tuplet 3/2 { <f c a>16-1-3-5) a,-2-\shapeII #'((0 0.5)()(0 -1)(0 2.5))( c f-1[ a-3 c-5]) c-4( f, bes-3) bes-4([ e,! a-3)] a-4( d, g-3) g-4([ c,f)] }
  %55
  | \voiceOne f4-5( e-4) e'-5
  | \tupletSpan 16 \tuplet 3/2 {
         \hideTupletNumber \hideTupletBracket \staffDown \once\hideNotes \shpSlurC f,,32( s16
         \undo\hideTupletNumber \tupletDown \staffUp \omitDyn f'32[\p a c])
         \hideTupletNumber \staffDown \voiceTwo \once\hideNotes \shpSlurD f,32^( s16 \staffUp \undo\hideTupletNumber \tupletUp f'32 a c_5)
         \shpSlurE c_4^( a bes \staffDown \hideTupletNumber \voiceOne  s16 \once\hideNotes f32)
         \staffUp \undo\hideTupletNumber \oneVoice \tupletUp bes32_4^([ gis a] \hideTupletNumber \staffDown \voiceOne s16 \once\hideNotes e32)
         \staffUp \undo\hideTupletNumber \oneVoice \tupletUp a32_4^([ fis g] \hideTupletNumber \staffDown \voiceOne s16 \once\hideNotes d32)
         \staffUp \undo\hideTupletNumber \oneVoice \tupletUp g32_4^([ e f] \hideTupletNumber \staffDown \voiceOne s16 \once\hideNotes c32) \staffUp
         \resetShpSlur
    }
  | \oneVoice f4-4( e32-.)  % shown as 16th in source
       c32-.-\shapeII #'(()(0 1))(-\shapeII #'((-0.3 0.5)(2 0.5)(-2 -1)())\( d-. e-. f-1-. g-. a-. bes-.) c b-3 c d c bes a g
  | f8-2\) r c16\finger "1  "-\shapeII #'(()(0 1.5))\(\pp^\txtNatTurnC d32-.-2-\shapeII #'(()(0 0.5))( e-. f-.-1 g-. a-. bes!-.) c b-3 c d c bes a g-1
  | g4.-3 \textUnderSlur g16.\finger "1  "^\txtSharpTurnE\< a32-3\! c16-5\> bes g-2 e\!
  %60
  | <e g>4-2-4\pp f8\) r r4
  | <g e c bes g>8-. r <f c a>-. r8*3\fermata
   \bar "|."
}

upperStaffB = \relative c' {
    \partial 4 s4
  | s8 s^\turn s2
  | s2.
  | \omitDyn f4\p g f
  | s2.
  %5
  | s8 s8^\turn s2
  | s2 c'4
  | s2.*2
  | s2 s8 s^\turn^\finger \markup \center-align "4321"
  %10
  | s2.
  | s2 s16 s16^\turn^1 s s^\turn^1
  | s2.
  | s8 \scriptLiftA s8^\turn s2
  | s2.
  %15
  | s2.
  | s2 s8 s32 \hideNotes r32 \scriptUnderSlur \scriptLiftB r32-\txtSharpTurn r \unHideNotes
  | r16 <f, d>_3_5( <g e> <a f>) r <a f>( <gis e > <a f>) r <a f>( <g e> <f d>)
  | r16 <g e>_3_5( <a f>_1_4 <bes g>_2_3) r <bes g>_2_3( <a fis>_1_4 <bes g>) r <bes g>_1_3( \scriptLiftC <a f>_\txtNatTurnA <g e>)
  | r16 <e cis>_3_5( <f d> <g e>) r <g e>( <fis dis> <g e>) r <g e>( <f d> <e cis>)
  %20
  | r16 <f d>_5( <g e> <a f>) r <a f>( <g e> <f d>) r <f d>_3( <e cis>^\turn^\finger \markup \center-align "4321" <f d>)
  | r16 <d b>_3_5( <e c!> <f d>) r <f d>( <e c> <d b>) s4
  | s2.
  | \arpeggioBracket \csBracket d'4\arpeggio b\rest b\rest
  | d4\arpeggio s2
  %25
  | s2.*3
  | <g,, f d>2 s4
  | s2.
  %30
  | <g f d>2 s4
  | s2.
  | s16 s8.^\turn s2
  | c4. s4.
  | f4 g f
  %35
  | f4_2( e8) s4.
  | s8. \textUnderSlur s16^\turn^\markup \center-align \finger "4321" s2
  | s4 \once\hideNotes b8\rest s16 s8^\turn s8.
  | s8 \once\hideNotes b8\rest s8. \textUnderSlur s16^\txtTurnD s4
  | s2.
  %40
  | s2 s8 s8^\turn^\finger " 1"
  | s2.
  | s2 s16 s8.^\turn^\finger " 1"
  | s2.*2
  %45
  | s2.*3
  | g4\arpeggio r c
  | g4\arpeggio r c
  %50
  | s2.*2
  | d,8\rest f-\shapeII #'(()(0 -1))( bes_3 a g_1 f_1)
  | <c'bes g>2\sfp <c bes g>4
  | s2.
  %55
  | <c bes g>2\sfp <c'bes g>4
  | \oneVoice r16 s r s8 r16 s r s r s r
}

dynamics = {
    \partial 4 s4
  | s2.*4
  %5
  | s2.*4
  | s2.\<
  %10
  | s2.\sf
  | s2.
  | s4 s2\pp
  | s2.
  | s2 s4\rf
  %15
  | s2.*5
  %20
  | s2.*2
  | s2.\<
  | s2.\sf
  | s2.\sf
  %25
  | s2.
  | s2 s4\pp
  | s2.
  | s2.\sfp
  | s2.
  %30
  | s2.\sfp
  | s2.
  | s2.\p
  | s2.*2
  %35
  | s2.*2
  | s4...\< s32\! s4\>
  | s4 s2\pp
  | s2.
  %40
  | s2.*5
  %45
  | s2.
  | s4 s\> s\pp
  | s2.*3
  %50
  | s2.*5
  %55
  | s2.
  | s2.\p
  | s2.\sf
  | s2.*2
  %60
  | s2.
  | s2.\pp
  
}

lowerStaffA = \relative c' {
    \partial 4 \oneVoice r4 \voiceOne
  | \omitDyn c4-2\p\( d8 c bes a-4
  | a4-1 g8\) \oneVoice r8 r4
  | <c a>4_2 <c e,>_5 <c f,>_3
  | <c c,>4. r8 r4
  %5
  | \voiceOne c4-2-\shapeII #'((0 2)(0 1)(0 1.5)())\( d8 c bes a-4
  | \oneVoice \fingerDown <bes-3 d-1>4\) <bes-4 c-2> <a f'>
  | <bes-4 f'> <c f> c,16_5\( e g bes_1
  | <bes-2 f-4_~>4 <a f>8-1\) r r4
  | \voiceOne \fingerLeft \fingerLift <g-3>16\( bes c bes g bes c bes <f-3> a c a
  %10
  | <e-4>16\) g c g e g c g f a c a
  | g16 bes c bes g bes c bes <a-2> c a f \undo\fingerLift
  | \oneVoice c16 e-4 g-2 c \clef treble \omitDyn e-3\pp g-2 c,-5 e d f e g
  | \voiceOne f-5-\shapeII #'((0 0.5)(0.3 1.8)(0 2)(-0.3 -3))\( c'-3 f e d8-1 c bes a-1
  | <f bes,>4.-5-2\) r8 <e bes>8._4_( <f a,>16
  %15
  | <f a,>4) bes,16-\shapeII #'(()(0 1))\( d g bes f-3 a g e-3
  | \clef bass \fingerLift <e\fingerOneTwo>4 f8\) \oneVoice r r4 \undo\fingerLift
  | \voiceOne s4 d,^2_\txtRH s
  | s2.
  | s4 a_2 s
  %20
  | s2.
  | s4 g_2 \oneVoice r16 <b'd>_1_3( <cis ais> <b d>)
  | \clef treble r16 <e c!>_1_3( <dis b> <e c>) r <f d>_1_3( <e cis> <f d>) r <g e>_1_3( <fis dis> <g e>)
  | \voiceOne g4 aes8-2(_\sf g e' c-2)
  | g4 aes8-2-\shapeII #'(()(0 0.8))\(_\sf g e' c-2
  %25
  | \oneVoice <a! f>8_3_5\) r r4 \clef bass <d, a f>8 r
  | <e c g>8 r r4 <f b,g>8 r
  | <e c>8-. r r4 r
  | <g,,g,>4 ~ <g g,>16\( \omitDyn a,32\pp b c d e_3 f g_1 fis_3 g_1 a_2 g_1 f e d
  | c8-.\) r \tupletSpan 8 \hideTupletBracket \tuplet 3/2 { r16 a''-3( c) r g-3( b) r f-3( a) r e-3( g) }
  %30
  | s2.
  | \voiceOne r4 \fingerLift \algnBeamA <bes!-1>8\( g e c' \undo\fingerLift
  | c4-2\)\( d8 c bes a
  | a4-1 g8\) \oneVoice r r4
  | <a c>4_2 <c e,>_5 <c f,>_3
  %35
  | <c c,>4. r8 r4
  | \tuplet 3/2 { f,16( a c d e ees) \hideTupletNumber r d-3( f) r f( c-4) r bes-3( e) r c-2( a)-4 }
  | \clef treble \undo\hideTupletNumber \tupletDown \tuplet 3/2 { bes-5\( d-3 f bes f d \hideTupletNumber bes c e g e c a c f a f c }
  | \tuplet 3/2 { bes16\) d f g f d \clef bass c, f-3 a c a f
                  \newSpacingSection % this command fixes unevenness in tuplet distance in LPv2.18
                                     % not needed for versions 2.19+
                  c g'-3 bes c bes g }
  | \tuplet 3/2 { f16 bes-3 c e c bes f a-4 c d c bes a c-2 bes a-1 g f }
  %40
  | \tuplet 3/2 { c16 g'-3 bes c bes g c, g' bes c bes g c, f-3 a c a f }
  | \tuplet 3/2 { c16 e-4 g c g e c e g c g e c f a c a f }
  | \tuplet 3/2 { c16 g'bes c bes g c,g'bes c bes g c,f a c a f }
  | \tuplet 3/2 { c16 e g c-1 e-2 d-3 \clef treble c_5 e g c c, e d_5 f c' e,_4 g c }
    \voiceOne
  | \tuplet 3/2 { f,16-5 a c f-1[ e-1 ees-2] d-2 f d c[ e-1 c-2] bes d bes-2 a[ c a-2] }
  %45
  | \clef bass f2 f4
  | s4 d8\( g e bes'
  | bes4-2 a8-1\) \oneVoice r r4
  | \clef bass \voiceOne c,,4 des8_\sf( c a' f)
  | c4 des8\(_\sf c a' f
  %50
  | \oneVoice <d! bes>8_3_5\) r r4 \clef treble <bes' d g>8 r
  | <c f a>8 r r4 \clef bass <bes e,c>4
  | \voiceOne d,8\rest a-4-\shapeII #'(()(0 1))( d-2 c-1 bes a)
  | \oneVoice <c c,>4 ~ <c c,>16 d,32\( e f g a_3 bes c b_3 c_1 d_2 c_1 bes a g
  | \oneVoice a4\) \undo\hideTupletNumber \tuplet 3/2 { r16 ees''-2( d) r d(-2 c) r c-2( bes) r bes-2( a) }
  %55
  | <c,c,>4 ~ \shpSlurJ <c c,>16\( d32_4 e f g a_3 bes c b_3 c_1 d_2 c_1 bes a g
  | \oneVoice \tupletUp \tupletSpan 16 \tuplet 3/2 { \omitDyn f32\)\p a c  } r16
         \clef treble \tuplet 3/2 { f32 a c } r16 r
         \tuplet 3/2 { cis32_3 d f } r16
         \tuplet 3/2 { b,32_4 c e } r16
         \tuplet 3/2 { a,32_4 bes d } r16
         \tuplet 3/2 { gis,32_4_[ a c] }
  | <bes g! c,>4. r8 <bes g e c>4
  | <f a>8 r r4 <bes g e c>
  | \voiceOne bes4-3-\shapeII #'((0 2)()()(0 -0.3))\( c des-1\sf
  %60
  | <des bes>4-3-2 <c a>8-4-1\) \oneVoice r r4
  | \clef bass <c, g e c>8-. r <f, c a f>-. r8*3\fermata
}

lowerStaffB = \relative c {
    \partial 4 s4
  | \omitDyn f2\p f4
  | c4. s4.
  | s2.*2
  %5
  | f2 f4
  | s2.*3
  | c2.
  %10
  | c2.
  | c2.
  | s2.
  | f'2 f4
  | s2.
  %15
  | s4 <bes,_5> c
  | f,4. s4.
  | s2.*3
  %20
  | s2.*3
  | \arpeggioBracket \csBracket  f'!2_4\arpeggio <g e>4_4_5
  | f2_4\arpeggio <g e>4_4_5
  %25
  | s2.*5
  %30
  | \oneVoice <g,,^~ g,>4 g16-\shapeII #'((h 0 5)(2 1)()(h)) \( a32_4 b c d e_3 f g fis_3 g_1 a_2 g_1 f e d
  | \voiceTwo c2.\)\sfp
  | f2 f4
  | c4. s4.
  | s2.
  %35
  | s2.*5
  %40
  | s2.*4
  | f'2 f4
  %45
  | bes,4._1_3( a8) <b gis>8._5( <c a>16_4
  | <c a f'>4_5) \clef treble bes_5 c_4
  | f4._4 s4.
  | bes,,2_4\arpeggio a4
  | bes2_4\arpeggio a4
  %50
  | s2.*2
  | f2 f4
  | s2.*2
  %55
  | s2.*4
  | f''2._5
  %60
  | f4._5 s4.
}

upperStaff = <<{ \upperStaffA } \\ { \upperStaffB } >>
lowerStaff = <<{ \lowerStaffA } \\ { \lowerStaffB } >>

%-------Typeset music and generate midi
\score {
    \new PianoStaff \with { connectArpeggios = ##t } <<
        \set PianoStaff.midiInstrument = "acoustic grand"
        \new Staff = "upper" { \clef treble \global \upperStaff }
        \new Dynamics { \dynamics } 
        \new Staff = "lower" { \clef bass \global \lowerStaff }
    >>
    \layout{ 
       \context {
         \Score
         \consists "Span_arpeggio_engraver"
       }
    }
    \midi  { \tempo 4 = 46 }
}
