%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.20.0"
\language "english"

\header {
  title = "Nocture"
  subtitle = "in A Flat Major"
  composer = "Frederic Chopin (1810-1849)"
  opus = "Opus 32, No 2"
  date = "1837"
  style = "Romantic"
  source = "CFEO, http://www.chopinonline.ac.uk/ocve/browse/pageview/70168/"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  copyright = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Nocture in A Flat Major"
  mutopiaopus = "Opus 32, No 2"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"
}

sd = \sustainOn 
su = \sustainOff

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

extendArpeggio = \once \override Staff.Arpeggio.positions = #'(-3 . 1)


trillUnderSlur = {
  \once \override Script.avoid-slur = #'inside
  \once \override Script.script-priority = #-100
}

shiftNote = {
  \once \override NoteColumn.force-hshift = #2.4
  \once \override Accidental.X-extent = #'(1 . 0)
  \once \override Accidental.extra-offset = #'(3.3 . 0)
}

moveTurn = 
  \tweak Y-offset -2
  \tweak X-offset 1 
  \etc

slurShapeA = \shape #'(
                        ()
                        ((0 . 0)(0 . 0)(0 . 0.5)(0 . 0))
                      ) \etc
slurShapeB = \shape #'(
                        ()
                        ((0 . 0)(0 . 0)(0 . 1.25)(0 . 0))
                      ) \etc
slurShapeC = \shape #'(
                        ()
                        ((0 . 0)(0 . 0)(0 . 2)(0 . 3))
                      ) \etc
slurShapeD = \shape #'((0 . -0.75)(0 . -0.75)(0 . -0.75)(0 . -0.75)) \etc
slurShapeE = \shape #'((0 . -0.25)(-0.25 . -0.75)(-0.25 . -0.75)(-0.5 . -0.25)) \etc
slurShapeF = \shape #'((0 . 0.5)(0 . 0.75)(0 . 0.75)(-0.25 . 0.5)) \etc
slurShapeG = \shape #'((0 . 0)(0 . 0)(0 . 0)(0 . -.25)) \etc
slurShapeH = \shape #'(
                        ((1 . 0)(0 . 0)(0 . 0)(0 . 0))
                        ()
                      ) \etc
slurShapeI = \shape #'(
                        ()
                        ((0 . 0)(0 . 0)(0 . 1)(0 . 2))
                      ) \etc
slurShapeJ = \shape #'(
                        ((0 . 0)(0 . 0.25)(0 . 0.25)(0 . 0))
                        ((0 . 0)(0 . 0.75)(0 . 0.75)(0 . 0))
                      ) \etc
slurShapeK = \shape #'((0 . 0)(0 . 0.5)(0 . 0.5)(0 . 0)) \etc

slurPositionA = \once \override Slur.positions = #'(2 . 0)
slurPositionB = \once \override Slur.positions = #'(0 . 1)

tieShapeA = \shape #'((0 . 0)(0 . -0.25)(0 . -0.25)(0 . 0.25)) \etc

global = {
  \key af \major
  \time 4/4
  \accidentalStyle piano
  \override Slur.details.accidental-collision = #1000
}

rightHand = \relative {
  \global
  \clef treble
  \tag layout { \tempo "Lento" }
  \tag midi { \tempo 4 = 40 }
  \omit TupletBracket
  
  << 
    { \voiceOne c''2 af4. bf8 } 
    \\ 
    { \voiceTwo \extendArpeggio <c, ef af>2 \arpeggio f4 ff } 
    \\ 
    { \voiceTwo s2 df } 
  >> |
  <c ef af c>1 \arpeggio \fermata |
  \bar "||"
  
  \barNumberCheck 3
  \tag midi { \tempo 4 = 60 }
  c'4( b c ef |
  c4) c8.( bf16 af4) ef |
  c8_( ef af bf \stemUp c[ 
    \tag layout { af8 * 1/2 s16 \moveTurn \turn }
    \tag midi { \tuplet 5/2 { af16 bf af g af } }
    \tuplet 3/2 { g'8 f ef]) } | 
  \stemNeutral bf4( \tuplet 7/4 { a16 bf cf bf df cf bf } bf4) b( |
  c4 b c ef |
  c4) c8.( bf16 af4) \grace { af16 bf } \afterGrace bf4\trill { af16 bf } | 
  \tuplet 5/4 { c16( df c b c } \grace { c16 } \tweak stencil ##f 
    \tuplet 3/2 4 { af'8) g8.( f16 f8 ef8. df16 
    \tuplet 3/2 { df16[ ef df } c8) r16 bf]( } |
  
  \barNumberCheck 10
  af4 f af) \context Voice = "2" { g8.-\slurShapeA ( af16 |
  bf4 c c df |
  df8[ \omit TupletBracket \tuplet 3/2 { df16 ef df } c8. bf16] a4 bf |
  bf4 c8. bf16 f'4 ef } |
  <<
    { 
      \voiceOne s4 \omit TupletNumber \magnifyMusic 0.63 { 
        \tuplet 10/2 { s8 c df c b c bf' af ef c } s2 
      } 
    } \\ { 
      \oneVoice df4 \grace { c16 } c4 a bf8) r16 b^( 
    }
  >> |
  
  \barNumberCheck 15
  \context Voice = "2" { c4 b c ef |
  c4) } c8.( bf16 af4) \grace { af16 bf } \afterGrace bf4\trill { af16 bf } | 
  \tuplet 5/4 { c16( df c b c } \grace { c16 } \tweak stencil ##f 
    \tuplet 3/2 4 { af'8) g8.( f16 f8 ef8. df16
    \tuplet 3/2 { df16[ ef df } c8) r16 bf]-\slurShapeC ( } |
  af4 f af) \context Voice = "2" { g8.-\slurShapeB ( af16 |
  bf4 c c df |
  df8[ \omit TupletBracket \tuplet 3/2 { df16 ef df } c8. bf16] a4 bf |
  bf4 c8. bf16 f'4 ef } |
  <<
    { 
      \voiceOne s4 \omit TupletNumber \magnifyMusic 0.63 { 
        \tuplet 12/2 { s8 c df c b c bf' af c af ef c } s2 
      } 
    } 
    \\ 
    { 
      \oneVoice df4 \grace { c16 } c4 a bf8) r16 b^( 
    }
  >> |
  
  \barNumberCheck 23
  \context Voice = "2" { c4 b c ef |
  c4 c8. bf16) } af4( \grace { af16 bf } \trillUnderSlur 
    \afterGrace bf4\trill { af16 bf } |
  \tuplet 5/4 { c16 df c b c } \grace { c16 } \omit TupletNumber
    \tuplet 3/2 4 { af'8) g8.( f16 f8 ef df 
    \grace { c16 ef } df8[ c) r16 bf]( } |
  af4) r r c( \bar "||" | \break

  \tag layout {
    \barNumberCheck 27
    \time 12/8
  }
  \grace { c16 df } 
  \tag midi { 
    \time 12/8 
    \tempo 4 = 90
  } 
  \stemDown c8) <f, b>( <f c'> <f f'>) <f e'>-.( <f ef'>-. 
    <f d'>-. <f df'>-. <f c'>-. <f bf>-. <f c'>-. <f df'>-. |
  \grace { g16 af } <f g>8) fs( <f g>-. <e df'>-. <e c'> <e g>-.
    <f bf>-. <f af>-. <f g>-. <f af>-. <f bf>-. <f b>-. |
  <e c'>8 <e df'>) <e_~ c'>( <e bf'>\prall <f af>) <f bf>(
    <e c'> <e df'>) <e_~ c'>( <e bf'>\prall <f af>) <af bf>( |
  <af c>8 <af df>-. <af c>-. <f bf>-.\prall <ff af>-. <ef_~ bf'>-.
    <ef c'> <ef df'>) <ef_~ c'>( <ef bf'>\prall <e af>) <e bf'>( |
   c'8) <af b>( <af c> <af af'>) <af g'>-.( <af gf'>-. 
    <g f'>-. <g e'>-. <g~ef'>-. <g d'>-. <g df'>-. <g c>-. |
  \appoggiatura { bf16 c } \stemDown <g bf>8 <g a> <g bf> <e df'> <e c'> <e g>
    <f bf> <f af> <f g> <f af> <f bf> <f b> |
  <e c'>8 <e df'>) <e_~ c'>^( <e bf'>\prall <f af>) <f\=1-\slurShapeD _( bf>(
    <e\=1) c'> <e df'>) <e_~ c'>^( <e bf'>\prall <f af>) <af bf>( |
  <af c>8 <af df>-. <af c>-. <f bf>)\prall <ff af> <ef_~ bf'>(
    <ef c'> <gf df'>) <gf_~ c>( <gf bf>\prall <gf af>) <gf_~ bf> \slurShapeE ( |
  
  \barNumberCheck 35
  \slurPositionA <gf c>8)( <gf df'> <gf ef'> <f f'> <f c'> <f df'>)
    <<
      { bff'4 s8 bf4 s8 }
      \\
      { <bff, bff'>8 ef <af, af'> <bf bf'>^( df <af af'>) }
    >> |
  <af d>8( <af ef'> <af f'> <gf gf'> <gf df'> <gf ef'>)
    <<
      { cf'4 s8 cf4 s8 }
      \\
      { <cf, cf'>8^( f <bf, bf'>) <cf cf'>^( ef <bf bf'>) }
    >> |
  <<
    { bff'4 s8 g4 s8 aff4 s8 f4 s8 }
    \\
    { 
      <bff, bff'>8^( ef <af, af'>) <g g'>^( df' <af af'>) 
      <aff aff'>^( df <gf, gf'>) <f f'>^( cf' <gf gf'>)
    }
  >> |
  <<
    { f'4 s8 ff4 s8 ef4 s8 d4 s8 }
    \\
    { 
      <f, f'>8^( cf' <ff, ff'>) <ff ff'>^( bf <ef, ef'>)
      <ef ef'>^( a <d, d'>) <d d'>^( gs <cs, cs'>)
    }
  >> | \bar "||" \pageBreak
  
  \barNumberCheck 39
  \key fs \minor
  cs'8\prall <fs, bs>( <fs cs'> <fs fs'>) <fs es'>-.( <fs e'>-.
    <fs ds'>-. <fs d'>-. <fs cs'>-. <fs b>-. <fs cs'>-. <fs d'>-.) |
  << { \voiceTwo fs8 \shiftNote fs! fs } \\ { \voiceOne gs8( fss gs } >>
    \context Voice = "2" { <es d'> <es cs'> <es gs> <fs b> <fs a> 
    <fs gs> <fs a> <fs b> <fs bs> |
  \voiceTwo <es cs'>8 <es d'> <es_~ cs'> <es b'>^\prall <fs a> <fs b> 
    <es[ cs'> <es d'>) <es_~ cs']>^( <es b'>^\prall <fs a>) <a b>^( |
  <a cs>8 <a d>^. <a cs>^. <fs b>^\prall <fs a>^. <e_~ b'>^.
    <e cs'> <e d'>) <e_~ cs'>^( <e b'>^\prall <es a>) <es b'>^( |

  \barNumberCheck 43
  cs'8) <a bs>^( <a cs> <a a'>) <a gs'>^.^( <a g'>^. <gs fs'>^. 
    <gs f'>^. <gs e'>^. <gs ds'>^. <gs d'>^.) <gs~ cs>-\slurShapeG ^( |
  <gs b>8) -\slurShapeH ^( ^\prall <gs as> <fs b> <es d'> <es cs'> <es gs>
    <fs b> <fs a> <fs gs> <fs a> <fs b> <fs bs> |
  <es cs'>8 <es d'> <es~ cs'> <es b'>^\prall <fs a>) <fs b>^(
    <es cs'>8 <es d'>) <es~ cs'>^( <es b'>^\prall <fs a>) <a b>^(
  <a cs>8 <a d>^. <a cs>^. <fs b>^\prall <f a>^. <e~ b'>^.
    <e cs'> <g d'>) <g~ cs>^( <g b>^\prall <g a> <g~ b> |
    
  \barNumberCheck 47
  <g cs>8 <g d'> \override TextSpanner.bound-details.left.text = "cresc."
    <g e'>\startTextSpan <fs fs'> <fs cs'> <fs d'>) 
    <<
      { bf'4 s8 b4 s8 }
      \\
      { <bf, bf'>8^( e <a, a'>) <b b'>^( e <a, a'>) }
    >> |
  <a ds>8 <a e'> <a fs'> <g g'> <g ds'> <g e'> 
    <<
      { c'4 s8 c4 s8 }
      \\
      { <c, c'>8^( fs <b, b'>) <c c'>^( e <b b'>) }
    >> |
  <<
    { bf'4 s8 gs4 s8 bff4 s8 g4 s8 }
    \\
    { 
      <bf, bf'>8^( e <a, a'>) <gs gs'>^( d' <a a'>) 
      <bff bff'>^( ef <af, af'>) <g g'>^( df' <af af'>)
    }
  >> |
  <<
    { aff'4 s8 gf4 s8 f4 s8 ff4 s8 }
    \\
    { 
      <aff, aff'>8^( df <gf, gf'>) q^( c <f, f'>)
      q^( b <e, e'>) <ff ff'>^( bf <ef, ef'>) \stopTextSpan
    }
  >> |  } \break % end context
   
  \barNumberCheck 51
  \key af \major
  \time 4/4
  \tag layout { \tempo "Appossionato" }
  \tag midi { \tempo 4 = 60 }
  \oneVoice
  c'4( b c ef |
  c4) \slurPositionB c8.( bf16 af4 ef)_( |
  c8 ef af bf \stemUp c[ 
    \tag layout { af8 * 1/2 s16 \moveTurn \reverseturn }
    \tag midi { \tuplet 5/2 { af16 bf af g af } }
    \undo \omit TupletNumber \tuplet 3/2 { g'8 f ef]) } \stemNeutral | 
  bf4( \omit TupletNumber \tuplet 7/4 { a16 bf cf bf df cf bf } bf4) b( |
  c4 b c ef |
  c4) c8.( bf16 af4) \grace { af16 bf } \afterGrace bf4\trill { af16 bf } |
  \tuplet 5/4 { c16( df c b c } \grace { c16 } \tweak stencil ##f 
    \tuplet 3/2 4 { af'8) g8.( f16 f8 ef8. df16 
    \tuplet 3/2 { df16[ ef df } c8) r16 bf] -\slurShapeI ( } |
  
  \barNumberCheck 58
  af4 f af) \context Voice = "2" { g8. -\slurShapeJ ( af16 |
  bf4 c c df |
  df8[ \omit TupletBracket \tuplet 3/2 { df16 ef df } c8. bf16] a4 bf |
  bf4 c8. bf16 f'4 ef |
  <<
    { 
      \voiceOne s4 \omit TupletNumber \magnifyMusic 0.63 { 
        \tuplet 10/2 { s8 c df c b c bf' af ef c } s2 
      } 
    } 
    \\ 
    { \oneVoice df4 \grace { c16 } c4 a bf8) r16 b^( }
  >> |
  
  \barNumberCheck 63
  c4 b c ef |
  c4) c8.( bf16) af4 \grace { af16 bf } 
    \afterGrace bf4\trill { af16 bf } | } % end context
  \tuplet 5/4 { c16( df c b c } \grace { c16 } \tweak stencil ##f 
    \tuplet 3/2 4 { af'8) g8.( f16 f8 ef df
    \tuplet 3/2 { df16[ ef df } c8) r16 bf]( } |
  af4 f af) \context Voice = "2" { g8.( af16 |
  bf4 c c df |
  df8[ \omit TupletBracket \omit TupletNumber \tuplet 3/2 { df16 ef df } 
    c8. bf16] a4 bf) } |
  \context Voice = "2" { bf4-\slurShapeK ( c8. bf16 f'4 ef } |
  <<
    { 
      \voiceOne s4 \omit TupletNumber \magnifyMusic 0.63 { 
        \tuplet 12/2 { s8 c df c b c bf' af c af ef c } s2 
      } 
    } 
    \\ 
    { 
      \voiceTwo df4 \grace { \stemUp c16 } \stemDown c4 \stemUp a bf8) r16 
        \stemDown b^( 
    }
  >> |
  
  \barNumberCheck 71
  \context Voice = "2" {
  \tuplet 5/4 4 {
    \undo \omit TupletNumber c df b df c \omit TupletNumber bf c as c bf  
      c df bf df c  ef f d f ef |
  c df b df c  bf c a c bf } \oneVoice
    \grace { g16 af } af4\trill \grace { g16[ af] a[ bf] } 
    \afterGrace bf4\trill { a16 bf } |
  \tuplet 9/4 { \undo \omit TupletNumber 
    b16 c df c b c ef df c } \omit TupletNumber \grace { c } \tweak stencil ##f
    \tuplet 3/2 { af'8) g8.( f16 f8 ef df \grace { df16 ef } df8[ c) r16 bf] } } |
  c4( \tuplet 3/2 { af'8 g f f ef df \tuplet 3/2 { df16 ef df } c8 bf) } |
  \bar "|" \mark \markup{ \musicglyph #"scripts.ufermata" }
  
  \barNumberCheck 75
  \tag layout { \tempo "Lento" }
  \tag midi { \tempo 4 = 40 }
  <c, ef af c>2\arpeggio
    << 
      { \voiceOne af'4. bf8 } 
      \\ 
      { \voiceTwo f4 ff } 
      \\ 
      { \voiceTwo df2 } 
    >> |
  \tempo "Fine"
  <c ef af c>1 \arpeggio \fermata |
  \bar "|."
} 

leftHand = \relative {
  \global
  \clef bass
  \override Beam.auto-knee-gap = 4
  
  <af, ef' af>2 \arpeggio <df af'>2 |
  <af ef' af>1 \arpeggio \fermata |
  \bar "||"
  
  \barNumberCheck 3
  \tuplet 3/2 4 { 
    af8^\markup { \italic sempre \dynamic p \italic { e legato } } 
      <af' c> ef af, <af' b> d, af <af' c> ef af, <g' df'> ef |
    af,8 <af' c> ef ef, <g' df'> ef \omit TupletNumber \omit TupletBracket
      af, <af' c> ef af, bf' ef, |
    af,8 af' ef af, <af' c> ef af, <af' c> ef c ef' ef, |
    ef,8 ef'' g, 
      <<
        { df4 s8 ff4 s8 ef4 s8 }
        \\
        { df8 ff' af, ff df' af ef df' g, }
      >> |
    af,8 <af' c> ef af, <af' b> d, af <af' c> ef af, <g' df'> ef |
    af,8 <af' c> ef c <g' e'> c f, <c' f> af df, <bf' f'> g~ |
    <c, g'>8 <bf' e> g f <af f'> c df, <af' f'> bf ef, <g ef'> df' |
    
    \barNumberCheck 10
    af,8 <af' c> ef af, <af' b> d, af <af' c> ef c ef' af, |
    << 
      { g4 s8 gf4 s8 f4 s8 s4. }
      \\
      { g8 ef' bf gf ef' bf f ef' a, bf, df' bf }
    >> |
    <<
      { ef,4 s8 gf4 s8 f4 s8 bf,4 s8 }
      \\
      { ef8 gf' bf, gf ef' bf f ef' c bf, df' bf }
    >> |
    <<
      { ff4 s8 ef4 s8 df4 s8 c4 s8 }
      \\
      { ff8 df' af ef df' g, df ef' g, c, ef' af, }
    >> |
    bf,8 ef' g, af, ef'' af, ef, ef''( fs, g df' ef, |
    
    \barNumberCheck 15
    af,8) <af'c> ef af, <af' b> d, af <af' c> ef af, <g' df'> ef |
    af,8 <af' c> ef c <g' e'> c f, <c' f> af df, <bf' f'> g~ |
    <c, g'>8 <bf' e> g f <af f'> c df, <af' f'> bf ef, <g ef'> df' |
    af,8 <af' c> ef af, <af' b> d, af <af' c> ef c ef' af, |
    << 
      { g4 s8 gf4 s8 f4 s8 s4. }
      \\
      { g8 ef' bf gf ef' bf f ef' a, bf, df' bf }
    >> |
    <<
      { ef,4 s8 gf4 s8 f4 s8 bf,4 s8 }
      \\
      { ef8 gf' bf, gf ef' bf f ef' c bf, df' bf }
    >> |
    <<
      { ff4 s8 s4. df4 s8 c4 s8 }
      \\
      { 
        \mergeDifferentlyHeadedOn \mergeDifferentlyDottedOn 
        ff8 df' af ef df' g, df ef' g, c, ef' af, 
      }
      \\
      { s4. ef2.*3/2-\tieShapeA_~ }
    >> |
    <<
      \context Voice = "3" { ef2*3/2 s2. }
      \\
      { bf8 ef' g, af, ef'' af, ef, ef''^( fs, g df' ef, }
    >> |
    
    \barNumberCheck 23
    \context Voice = "2" { af,8) <af' c> ef } 
      af, <af' b> d, af <af' c> ef af, <g' df'> ef |
    af,8 <af' c> ef c <g' e'> c f, <c' f> af df, <bf' f'> g~ |
    <c, g'>8 <bf' e> g f <af f'> c df, <af' f'> bf ef, <g ef'> df' |
    <<
      { s4 d,8 f4 ef8 s2. }
      \\
      { af,8^( <af' c> d, f <af c> ef) af,^( <af' c> ef) g,^( <e' bf'> c) }
    >> | \break
  } % end of tuplet
  
  \tag layout {
    \barNumberCheck 27
    \time 12/8
    \grace { s8 }
  }
  \tag midi { \time 12/8 } f,8-. <af' c> q q q q bf,-. <g' df'> q q q q |
  <<
    { 
      \mergeDifferentlyDottedOn \mergeDifferentlyHeadedOn 
      c,2. f4._~ \stemDown f8 ef df 
    }
    \\
    { c8 <g' bf c> q q q q f\> <af c> q q ef df\! }
  >> |
  <<
    { \mergeDifferentlyDottedOn c4. f4 s8 c4. f4 s8 }
    \\
    { c8 <g' bf c> q f <af c> df, c <g' bf c> q f <af c> <ff af d> }
  >> |
  <ef af ef'>8 <ef af f'>-. <ef af ef'>-. <ef af eff'>-. <ef af df>-. 
    <ef g df'>-. af,-. <af'c> q g,-. <g' bf c> q |
  f,8-. <f' c' f> q q q q bf,-. <g' bf df f> q q q q |
  \appoggiatura { s8 } c,8-. <g' bf f'> q <g bf> q q 
    <<
      { \mergeDifferentlyDottedOn f4._~ \stemDown f8 ef df }
      \\
      { f8 <af c> q q ef df }
    >> |
  <<
    { \mergeDifferentlyDottedOn c4. f c f4 s8 }
    \\
    { c8 <g' bf c> q f <af c> df, c <g' bf c> q f <af c> <ff af d> }
  >> 
  <ef af ef'>8 <ef af f'>-.( <ef af ef'>-. <ef af eff'>-. <ef af df>-. 
    <ef g df'>-.) af,-. <af' ef'> q af,-. <af' df> q |
    
  \barNumberCheck 35
  af,8-. <af' c> q df,-. <af' df> q c,-. <ef' gf> <af, gf'> 
    df,-. <df' f> <af f'> |
  bf,8-. <bf' f'> q ef,-. <bf' ef> q d,-. <f' af> <bf, bf'>
    ef,-. <ef' gf> <bf gf'> |
  c,8-. <ef' gf> <af, gf'> df,-. <df' f> <af f'> bf,-. <df' ff> <gf, ff'>
    cf,-. <cf' ef> <gf ef'> |
  af,8-. <cf' eff> <ff, eff'> g,-. <bf' df> <ef, df'> fs,-. <a' c> <d, c'>
    \stemDown es,-. <gs' b> <cs, b'> | \bar "||" \pageBreak
   
  \barNumberCheck 39
  \key fs \minor
  <fs,, fs'>8-. <fs'' a cs> q q q q b,-. <fs' gs d'> q q q q |
  <<
    { \mergeDifferentlyHeadedOn cs2. fs4.-\slurShapeF _(\> s8) s s\! }
    \\
    { cs8 <gs' b cs> q q q q fs <a cs> q <fs a cs> e d }
  >> |
  <<
    { cs4. fs4 s8 cs4. fs4 s8 }
    \\
    { cs8 <gs' b cs> q fs <a cs> d, cs <gs' b cs> q fs <a cs> <f a ds> }
  >> |
  <e a e'>8 <e a fs'>-.( <e a e'>-. <e a ds>-. <e a d>-. <e gs d'>-.)
    a, <a' cs> q gs, <gs' b cs> q |
    
  \barNumberCheck 43
  fs,8-. <fs' cs' fs> q q q q b,-. <gs' b d fs> q q q q |
  cs,,8 <gs'' b cs> q 
    << 
      { cs,4. fs4._~ \stemDown fs4. } 
      \\ 
      { cs8 <gs' b cs> q fs\> <a cs> q <fs a cs> e^( d)\! } 
    >> |
  <<
    { cs4. fs4 s8 cs4. fs4 s8 }
    \\
    { cs8 <gs' b cs> q fs <a cs> d, cs <gs' b cs> q fs <a cs> <f a ds>  }
  >> |
  <e a e'>8 <e a fs'> <e a e'> <e a ds> <e a d> <e gs d'>
    a,_. <a' e'> q a,_. <a' d> q |
  a,8^. <a' e'> q d, <a' d> q cs,^. <e' g> <a, g'> d, <d' fs> <a fs'> |
  b,8^. <b' fs'> q e,^. <b' e> q ds,^. <fs' a> <b, a'> e,^. <e' g> <b g'> |
  cs,8^. <e' g> <a, g'> d,^. <d' fs> <a fs'> 
    c,^. <ef' gf> <af, gf'> df,^. <df' f> <af f'> |
  bf,8^. <df' ff> <g, ff'> a,^. <c' ef> <f, ef'> 
    af,^. <b' d> <e, d'> g,^. <bf' df> <ef, bf'> | \break
  
  \barNumberCheck 51
  \key af \major
  \time 4/4
  \tuplet 3/2 4 { 
    af,8 <af' c> ef af, <af' b> d, af <af' c> ef af, <g' df'> ef |
    af,8 <af' c> ef ef, <g' df'> ef af, <af' c> ef af, bf' ef, |
    af,8 af' ef af, <af' c> ef af, <af' c> ef c ef' ef, |
    ef,8 ef'' g, 
      <<
        { df4 s8 ff4 s8 ef4 s8 }
        \\
        { df8 ff' af, ff df' af ef df' g, }
      >> |
    af,8 <af' c> ef af, <af' b> d, af <af' c> ef af, <g' df'> ef |
    af,8 <af' c> ef c <g' e'> c f, <c' f> af df, <bf' f'> g~ |
    <c, g'>8 <bf' e> g f <af f'> c df, <af' f'> bf ef, <g ef'> df' |
    
    \barNumberCheck 58
    af,8 <af' c> ef af, <af' b> d, af <af' c> ef c ef' af, |
    << 
      { g4 s8 gf4 s8 f4 s8 s4. }
      \\
      { g8 ef' bf gf ef' bf f ef' a, bf, df' bf }
    >> |
    <<
      { ef,4 s8 gf4 s8 f4 s8 bf,4 s8 }
      \\
      { ef8 gf' bf, gf ef' bf f ef' c bf, df' bf }
    >> |
    <<
      { ff4 s8 ef4 s8 df4 s8 c4 s8 }
      \\
      { ff8 df' af ef df' g, df ef' g, c, ef' af, }
    >> |
    bf,8 ef' g, af, ef'' af, ef, ef''( fs, g df' ef, |
    
    \barNumberCheck 63
    af,8) <af' c> ef af, <af' b> d, af <af' c> ef af, <g' df'> ef |
    af,8 <af' c> ef c <g' e'> c f, <c' f> af df, <bf' f'> g~ |
    <c, g'>8 <bf' e> g f <af f'> c df, <af' f'> bf ef, <g ef'> df' |
    af,8 <af' c> ef af, <af' b> d, af <af' c> ef c ef' af, |
    << 
      { g4 s8 gf4 s8 f4 s8 s4. }
      \\
      { g8 ef' bf gf ef' bf f ef' a, bf, df' bf }
    >> |
    <<
      { ef,4 s8 gf4 s8 f4 s8 bf,4 s8 }
      \\
      { ef8 gf' bf, gf ef' bf f ef' c bf, df' bf }
    >> |
    <<
      { ff4 s8 s4. df4 s8 c4 s8 }
      \\
      { 
        \mergeDifferentlyHeadedOn \mergeDifferentlyDottedOn 
          ff8 df' af ef df' g, df ef' g, c, ef' af, 
      }
      \\
      { s4. ef2.*3/2_~ }
    >> |
    <<
      \context Voice = "3" { ef2*3/2 s2. }
      \\
      { bf8 ef' g, af, ef'' af, ef, ef''^( fs, g df' ef, }
    >> |
    
    \barNumberCheck 71
    \context Voice = "2" { af,8) <af' c> ef } 
      af, <af' b> d, af <af' c> ef af, <g' df'> ef |
    af,8 <af' c> ef c <g' e'> c f, <c' f> af df, <bf' f'> g~ |
    <c, g'>8 <bf' e> g f <af f'> c df, <af' f'> bf ef, <g ef'> df' |
    e,8 <bf' g'> c f, <af f'> c df, <af' f'> bf
      << { ef,4 * 1/2 ef'4 } \\ { ef,8 <g ef'> df' } >> |
    \bar "|" \mark \markup{ \musicglyph #"scripts.ufermata" }
  } % end tuplet
      
  \barNumberCheck 75
  <af, ef' af>2\arpeggio <df af'>2 |
  <af ef' af>1\arpeggio \fermata |
  \bar "|."
  
}

pedal = {
  s4\sd s\su s4.\sd s8\su |
  s2.\sd s4\su |
  
  \barNumberCheck 3
  \tuplet 3/2 4 {
    s8.\sd s\su s\sd s\su s\sd s\su s\sd s\su |
    s8.\sd s\su s4\sd s8\su \tag layout { s2. } 
      \tag midi { s4\sd s8\su s4\sd s8\su } |
    s2.\sd s4 s8.\su s\sd s8\su |
    s4\sd s8\su s4\sd s8\su \tag layout { s2. } 
      \tag midi { s4\sd s8\su s4\sd s8\su } |
    s8.\sd s\su s\sd s\su s\sd s\su s\sd s\su |
    \repeat unfold 2 { s4\sd s8\su s4\sd s8\su s4\sd s8\su s4\sd s8\su } |
    
    \barNumberCheck 10
    s8.\sd s\su s\sd s\su s\sd s\su s\sd s\su |
    s2. s4. s4\sd s8\su |
    s4\sd s8\su s4. s2. |
    s4. s4\sd s8\su s8.\sd s\su s4\sd s8\su |
    s4\sd s8\su s4\sd s8\su \tag layout { s4\sd s8\su } \tag midi { s4. } s4. |
    
    \barNumberCheck 15
    s8.\sd s\su s\sd s\su s\sd s\su s\sd s\su |
    \repeat unfold 3 { s4\sd s8\su s4\sd s8\su s4\sd s8\su s4\sd s8\su } |
    s2. s4. s4\sd s8\su |
    s4\sd s8\su s4\sd s8\su s4\sd s8\su s4\sd s8\su |
    s8.\sd s\su s\sd s\su s\sd s\su s\sd s\su |
    s4\sd s8\su s4\sd s8\su s4\sd s8\su s4. |
    
    \barNumberCheck 23
    \repeat unfold 2 { s8.\sd s\su s\sd s\su s\sd s\su s\sd s\su | } |
    s4\sd s8\su s4\sd s8\su s4\sd s8\su s4\sd s8\su | 
    s8.\sd s\su s\sd s\su s\sd s\su s\sd s\su |
  } % end tuplet
  
  \tag layout {
    \barNumberCheck 27
    \time 12/8
  }
  \grace { s8 } \tag midi { \time 12/8 } s1. |
  s1. * 2 |
  s2. s8.\sd s\su s\sd s\su |
  s4.\sd <>\su s s\sd s4 s8\su |
  s4.\sd <>\su s4. s2. |
  s1. |
  s2. s4\sd s8\su s4\sd s8\su |
  
  \barNumberCheck 35
  s4\sd s8\su s4\sd s8\su s4\sd s8\su s4\sd s8\su |
  s8.\sd s\su s\sd s\su s\sd s\su s\sd s\su |
  s4\sd s8\su s4\sd s8\su s4\sd s8\su s4\sd s8\su |
  s8.\sd s\su s\sd s\su s\sd s\su s\sd s\su |
  
  \barNumberCheck 39
  s2. s4.\sd s8 s s\su |
  s1. * 2 |
  s2. s4\sd s8\su s4\sd s8\su |
  
  \barNumberCheck 43
  s4.\sd s4 s8\su s4.\sd s4 s8\su |
  s4\sd \tag midi { s8\su } \tag layout { s8 } s4. s2. |
  s1. |
  s2. s4\sd s8\su s4\sd s8\su |
  \repeat unfold 4 { s4\sd s8\su s4\sd s8\su s4\sd s8\su s4\sd s8\su } |
  
  \barNumberCheck 51
  \time 4/4
  \tuplet 3/2 4 {
    \repeat unfold 2 { s8.\sd s\su s\sd s\su s\sd s\su s\sd s\su } |
    s4.\sd s4 s8\su s2. | 
    s8.\sd s\su s4\sd s8\su s2. |
    s8.\sd s\su s\sd s\su s\sd s\su s\sd s\su |
    s8.\sd s\su s\sd s\su s4\sd s8\su s4\sd s8\su |
    s4\sd s8\su s4\sd s8\su s4\sd s8\su s4\sd s8\su |
    
    \barNumberCheck 58
    s8.\sd s\su s\sd s\su s\sd s\su s\sd s\su |
    s2. s4. s4\sd s8\su |
    s4\sd s8\su s4. s2. |
    s4. s4\sd s8\su s8.\sd s\su s4\sd s8\su |
    s4\sd s8\su s4\sd s8\su s4\sd s8\su s4. |
    
    \barNumberCheck 63
    s8.\sd s\su s\sd s\su s\sd s\su s\sd s\su |
    s4\sd s8\su s4\sd s8\su s4\sd s8\su s4\sd s8\su |
    s4\sd s8\su s4\sd s8\su s4\sd s8\su s4\sd s8\su |
    s8.\sd s\su s\sd s\su s\sd s\su s\sd s\su |
    s2. s4. s4\sd s8\su |
    s4\sd s8\su s4\sd s8\su s8.\sd s\su s\sd s\su |
    s8.\sd s\su s4\sd s8\su s8.\sd s\su s4\sd s8\su |
    s4\sd s8\su s4\sd s8\su s4\sd s8\su s4. |
    
    \barNumberCheck 71
    \repeat unfold 3 { s4\sd s8\su s4\sd s8\su s4\sd s8\su s4\sd s8\su } |
    s8.\sd s\su s\sd s\su s4\sd s8\su s4\sd s8\su |
    
    \barNumberCheck 75
  } % end tuplet
}

dynamics = {
  s1 * 2 |
  
  \barNumberCheck 3
  \tag midi { s2.\p } \tag layout { s2.\< } s8 s\! |
  s2.\> s8 s\! |
  s1\< <>\! |
  s2 s4\< s\! | 
  s1 |
  s4 s8.\> s16\! s2 |
  s2 s\> <>\! |
  
  \barNumberCheck 10
  s2. s8.\> s16\! |
  s2.\< s8. s16\! |
  s1 |
  s2 s2\> |
  s4 s\! s2 |
  
  \barNumberCheck 15
  s4 s2\< s4\! |
  s2 s2\< <>\! |
  s4 s2\> s8 s\! |
  s2. s8\> s8\! |
  s4\< s2 s4\! |
  s1 |
  s2 s2\> |
  s16 s8.\! s16 s8.^\markup { \italic delicatiss. } s4\> s8\! s |
  
  \barNumberCheck 23
  s4\< s2 s4\! |
  s4\> s8. s16\! s2\< <>\! | 
  s4 s2\> s4\! | 
  s2. s4\> <>\! |
  
  \tag layout {
    \barNumberCheck 27 
    \time 12/8
  }
  \grace { s8 } \tag midi { \time 12/8 } s1.\p |
  s1. |
  s2. s4. s4\< s8\! |
  s2. s4.\< s4 s8\! |
  s8\< s4 s2.\> s4 s8\! |
  s2. s4. s4\< s8\! |
  s2. s4. s4\< s8\! |
  s2. s4.\< s4 s8\! |
  
  \barNumberCheck 35
  s4.\< s8\! s4 s4\> s8\! s4\> s8\! |
  s4.\< s4 s8\! s4\> s8\! s4\> s8\! |
  s4\> s8\! s4\> s8\! s4\> s8\! s4\> s8\! |
  s4\> s8\! s4\> s8\! s4\> s8\! s4\> s8\! |
  
  \barNumberCheck 39
  s8\fz\< s s\! s4. s2. |
  s1. * 3 |
  
  \barNumberCheck 43
  s8\ff s\< s s4.\! s2. |
  s1. * 3 |
  s4.\> s4 s8\! s8\> s\! s s\> s\! s |
  s4.\> s4 s8\! s8\> s\! s s\> s\! s |
  s8\> s\! s s\> s\! s s8\> s\! s s\> s\! s |
  s8\> s\! s s\> s\! s s8\> s\! s s\> s\! s |
  
  \barNumberCheck 51
  \time 4/4
  s1\ff |
  s4 s8.\> s16\! s2 |
  s1 |
  s2 s4\< s8\! s8 |
  s1 |
  s4 s8.\< s16\! s2 |
  s4\< s8\! s s4.\> s16 s16\! |
  
  \barNumberCheck 58
  s2 s4 s8.\> s16\! |
  s2\< s4 s8. s16\! |
  s1 |
  s2 s4\> s |
  s8. s16\! s4-\markup { \italic delicatiss. } s8\> s\! s4 |
  
  \barNumberCheck 63
  s4 s2\< s8 s\! |
  s4 s8. s16\< s4 s8. s16\! |
  s4 s\> s s8 s16\! s |
  s2. s8.\> s16\! |
  s2.\< s8. s16\! |
  s1 |
  s2 s2\> |
  s8. s16\! s4\!-\markup { \italic delicatiss. } s8.\> s16\! s4 |
  
  \barNumberCheck 71
  s1-\markup { \italic leggieriss. } |
  s2 s4\< s8. s16\! |
  s2 s8.\> s16\! s8.\< s16\! |
  s4 s-\markup { \italic rit. } s\> s\! |
  
  \barNumberCheck 75
  s2 s4.\< s8\! |
  s4\> s\! s2 |
}

#(set-global-staff-size 18) % default 20

% ly:expect-warning only works to supress once.  This function allows
% you to specify the number of times a warning appears.
#(define ly:expect-warning-times (lambda args
   (for-each (lambda _ (apply ly:expect-warning (cdr args)))
             (iota (car args)))))

#(ly:expect-warning-times 69 "omitting tuplet bracket")
#(ly:expect-warning-times 3 "stealing the entirety")

\paper {
  ragged-right = ##f % set to false after editing 
  ragged-last-bottom = ##f % set to false after editing 

  markup-system-spacing = 
    #'((basic-distance . 2)
       (padding . 1)) % defaults: 1, 0.5
    
  system-system-spacing =
    #'((basic-distance . 12) 
       (minimum-distance . 8)
       (padding . 3)
       (stretchability . 60)) % defaults: 12, 8, 1, 60
      
  last-bottom-spacing = 
    #'((basic-distance . 2)
       (minimum-distance . 1)
       (padding . 2)
       (stretchability . 30)) % defaults 1, 0, 1, 30
    
  %#(set-paper-size "letter") % for testing only
  
  % These settings are scaled to paper-size
  top-margin = 12\mm % default 5
  bottom-margin = 12\mm % default 6
  left-margin = 10\mm % default 10
  right-margin = 10\mm % default 10
}

% Typeset only
\score {
  \keepWithTag layout
  \new PianoStaff <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "upper" \rightHand
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics = "pedal" \pedal 
  >>
  \layout {
    \context {
      \Score
      \omit BarNumber % Uncomment after editing
    }
  }
}

\include "articulate.ly"

% Midi only
\score {
  \keepWithTag midi
  \articulate {
    <<
      \new Staff = "upper" << \rightHand \pedal \dynamics >>
      \new Staff = "lower" << \leftHand \pedal \dynamics >>
    >>
  }
  \midi {
    \tempo 4 = 44
    \context {
      \Staff
      \consists "Dynamic_performer"
    }
    \context {
     \Voice
     \remove "Dynamic_performer"
    }    
  }
}
