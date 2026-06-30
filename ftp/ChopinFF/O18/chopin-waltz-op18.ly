\version "2.26"
\language "english"

\header {
  title = "Grande Valse Brillante"
  composer = "Frédéric Chopin"
  opus = "Op. 18"
  mutopiatitle = "Grande Valse Brillante"
  mutopiacomposer = "ChopinFF"
  mutopiaopus = "Op. 18"
  mutopiainstrument = "piano"
  source = "Editions Durand, 1915"
  license = "Public Domain"
  maintainer = "Michael Tyznik"
  maintainerEmail = "first name at last name dot com"
  maintainerWeb = "https://tyznik.com"
}

\markup \italic \small "à Mademoiselle Laura Harsford"


% Functions to extend slurs at alternatives

extendLV =
#(define-music-function (further) (number?)
#{
  \once \override LaissezVibrerTie.X-extent = #'(0 . 0)
  \once \override LaissezVibrerTie.details.note-head-gap = #(- 0.2 (/ further 2))
  \once \override LaissezVibrerTie.extra-offset = #(cons (/ further 2) 0)
#})

extendRT =
#(define-music-function (further) (number?)
#{
  \once \override RepeatTie.X-extent = #'(0 . 0)
  \once \override RepeatTie.details.note-head-gap = #(- 0.2 (/ further 2))
  \once \override RepeatTie.extra-offset = #(cons (/ further -2) 0)
#})


% Style grace note fingerings

startAcciaccaturaMusic = {
  <>( 
  \override Fingering.font-size = #-6  
  \override Flag.stroke-style = "grace"
}
stopAcciaccaturaMusic = {
  \revert Fingering.font-size
  \revert Flag.stroke-style
  <>)
} 

startGraceMusic = {
  \override Fingering.font-size = #-6  
}
stopGraceMusic = {
  \revert Fingering.font-size
} 


% Create custom bar line for key change before repeat

\defineBarLine "|-R" #'( "||" ".|:" #f)


  
% Two functions for (de)crescendo spanners where you can explicitly
% give the spanner text.
textCresc =
#(define-music-function (mymarkup) (markup?)
   (make-music 'CrescendoEvent
               'span-direction START
               'span-type 'text
               'span-text mymarkup))
textDecresc =
#(define-music-function (mymarkup) (markup?)
   (make-music 'DecrescendoEvent
               'span-direction START
               'span-type 'text
               'span-text mymarkup))
  

 

global = {
  \key ef \major
  \time 3/4 
  \override TextSpanner.line-X-offset = #'(1 . 1)
  \override TextSpanner.line-Y-offset = 0.5
  
}


upper = \relative c'' {
  \global
  \clef treble


  bf2-^-1 bf8-.-3[ bf-.-2] | %m1
  bf2-^-1 bf8-.[ bf-.] |
  bf4-^ bf8-.[ bf-.] bf4-^ |
  bf8-.[ bf-.] bf4-^ bf8-.[ bf-.] |
  \repeat volta 2 {
    bf4-.-1 d8-2( ef <d f>4 |
    bf-.) ef8-2( f <ef g>4 |
    bf4-.) f'8-2( g <f af>4) | %m7
    <df g bf>2-5 <df g bf>8-4-. <df g bf>-. |
    <<
      {
        bf'4->-4( c8 bf af4-3-.) |
        af-4->( bf8 af g4)-. |
        g-4->( af8 g f4-.) |
        f-4->( g8 f ef4-.) |
      }
    \\
      {
        <df g>2 c4 |
        cf2 bf4 |
        bf2 af4 |
        af2 g4 |
      }
    >>
    bf-.-1 d8-2( ef <d f>4 |
    bf4-.) ef8-2( f <ef g>4 |
    bf4-.) f'8-2( g <f af>4) | 
    <df g bf>4. <g bf>8-4( df <g bf>) |
    <<
      {
        \mergeDifferentlyHeadedOn
        \stemDown
        df8->-1( bf'-4 c bf af4-.-3) |
        cf,8->( af'-4 bf af g4-.-3) |
        bf,8->( g'-4 af g f4-.) |
      }
      \\
      {
        \stemUp df2 \stemDown c4  | 
        \stemUp cf2 \stemDown bf4 |
        \stemUp bf2 \stemDown af4 |
      }
    >>
    }
  \alternative {
    { <g ef'>4-! bf8-3-. bf-2-. bf-1-. bf-2-. | }
    { <g ef'>4-! ef'8-4-. ef-3-. ef-2-. ef-1-. | }
  }
  ef-3-.^\markup { \italic "leggiermente" } ef-.-2 ef-.-1 ef-.-3 ef-. ef-. |
  f-3(_[ ef c-1 af-4 ef-2 e-1)] |
  f-.-3 f-.-2 f-.-1 f-.-3 f-. f-. |
  ef-2( af-4 c-1 ef af e-1) |
  f-.-3 f-.-2 f-.-1 f-.-3 f-.-2 f-.-1 |
  \tuplet 3/2 { f-2->\( g f } ef af-2 c4-4-.\) | 
  f-5( ef8 df g,4-.) |
  bf-4( af8 ef c4-.) |
  ef8-.-3 ef-.-2 ef-.-1 ef-.-3 ef-. ef-. |
  f-3^( ef c-1 af-4 ef-2 e-1) |
  f-.-3 f-.-2 f-.-1 f-. f-. f-. |
  ef-2( af-4 c-1 ef af e-1) |
  f-.-3 f-.-2 f-.-1 f-. f-. f-. |
  \tuplet 3/2 { f-2\( g f } ef af c4-3-.\) |
  f-5( ef8 df g,4-.) | \break 
  % Moving articulations under slur
  \override Fingering.avoid-slur = #'inside
  \override Script.avoid-slur = #'inside
  \override TextScript.avoid-slur = #'ignore  
  \override TextScript.extra-offset = #'(0 . -3)
  \set fingeringOrientations = #'(top left) 
  af2-4( \shape #'((0 . 0.5) (0 . 2.5) (1 . 2.5) (0 . 0.5)) ( <c,-2>4->\trill-\tweak X-offset #0.5 ^\markup {\with-dimensions #'(-1 . 1) #'(-0.6 . 1) \fontsize #-4 \natural}  |
  bf-1) d8-2( ef <d f>4 |
  \revert Fingering.avoid-slur
  \revert Script.avoid-slur
  \revert TextScript.avoid-slur
  \revert TextScript.extra-offset
  \set fingeringOrientations = #'(top bottom) 
  bf4) ef8-2( f <ef g>4 |
  bf4) f'8-2( g <f af>4) |
  <df g bf>2-5 <df g bf>8-.-4 <df g bf>8-. |
  <<
    { bf'4->-4( c8 bf af4-.-3) |
      af4-4->( bf8 af g4-.-3) |
      g-4->( af8 g f4-.) |
      f-4->( g8 f ef4-.) | }
    \\
    { <df g>2 c4 |
      cf2 bf4 |
      bf2 af4 |
      af2 g4 | }
  >>
  bf8-1( d-2 ef e-4 <d f>4) |
  bf8-1( d-2 ef! f <ef g>4) |
  bf8-1( e-2 f g <f af>4) |
  <df g bf>4.-4 <g bf>8( df <g bf>) |
  <<
    { \mergeDifferentlyHeadedOn
      \stemDown
      df->-1( bf'-4 c bf af4-.-3) |
      cf,8->( af'-4 bf af g4-.-3) |
      bf,8->( g'-4 af g f4-3 |  
      ef-.)  ef8-.-4 ef-.-3 ef-.-2 ef-.-1 |
    }
    \\
    {
      \stemUp df2 \stemDown c4 |
      \stemUp cf2 \stemDown bf4 |
      \stemUp bf2 \stemDown af4 |
      g
    }
  >>
  ef'8-3-.^\markup { \italic "leggiermente" } ef-.-2 ef-.-1 ef-.-3 ef-. ef-. |
  f-3(_[ ef c-1 af-4 ef-2 e-1)] |
  f-.-3 f-.-2 f-.-1 f-.-3 f-. f-. |
  ef-2( af-4 c-1 ef af e-1) |
  f-.-3 f-.-2 f-.-1 f-.-3 f-. f-. |
  \tuplet 3/2 { f-2\( g f } ef af-2 c4-4-.\) |
  f-5( ef8 df g,4-.) |
  bf-4( af8 ef c4-.) |
  ef8-.-3 ef-. ef-. ef-.-3 ef-. ef-. |
  f-3( ef c-1 af-4 ef-2 e-1) |
  f-.-3 f-. f-. f-.-3 f-. f-. |
  ef-2( af-4 c-1 ef af e-1) |
  f-.-3 f-. f-. f-.-3 f-. f-. |
  \tuplet 3/2 { f-2->\( g f } ef af-2 c4-4\) |
  f-5( ef8 df g,4 |
  af2) af,4-1 | \bar "|-R" \break 
  \key df \major
  \repeat volta 2 {
    <ef' gf>2-4-5( <b d>4-1-3 |
    <c ef>-.) af8-.-3 af-.-2 af4-1-^ |
    <gf' bf>2-2-5( <e g>4-1-4 |
    <f af>-.-2-3) af,8-3-. af-2-. af4-1-^ |
    <ef' gf>2-4-5( <b d>4-1-3 |
    <c ef>-.) af8-.-3 af-.-2 af4-1-^ |
    <bf gf'>-2-5( <af f'>-1-5 <gf ef'>-1-4 | 
    <f df'>-1-3-.) af8-3-. af-2-. af4-1-^ |
    <ef' gf>2-4-5( <b d>4-1-3 |
    <c ef>-.) af8-.-3 af-. af4-^ |
    <gf' bf>2-3-5( <e g>4-1-4 |
    <f af>-.-2-3) af,8-3-. af-. af4->( |
    af')
    <<
      { \stemDown
        bf,8-1( af'-5) \stemUp gf4-4-^\(~ |
        gf4. gf8-5 f4-4-^~ |
        f4. f8-5 ef4-4 |
      }
      \\
      {
        \stemUp 
        bf4 \stemDown ef~ |
        ef af, df~ |
        df gf, gf |
      }
    >>
  }
  \alternative { {
    <<
      { df'-3\) }
      \\ 
      { \once\stemUp f, }
    >>
    af8-3-. af-2-. af4-1-^
  } {
    <<
      { df\repeatTie }
      \\
      { \once\stemUp f, }
    >>
    r <f f'>-.
    
    
  } }
  \slashedGrace f'8( <ef) g,>4-^-!-3 g,-! \slashedGrace f'8( <ef) g,>4-! |
  g,-!-^ \slashedGrace f'8( <ef) g,>4-! g,-! |
  af8-2( c-1 ef af c4) |
  \tuplet 3/2 { af8-3->\( bf af } f d ef4-3\) |
  \slashedGrace f8-4( <ef^3) g,>4-! g,-! \slashedGrace f'8( <ef) g,>4-! |
  g,-! \slashedGrace f'8( <ef) g,>4-! g,-! |
  \override Fingering.avoid-slur = #'inside
  \tupletDown \tuplet 3/2 { ef8-2^\( f ef } \tupletNeutral d-1 ef c'-5 bf-3 |
  af-2\prall g af bf c-1 df!-2\) |
  \revert Fingering.avoid-slur
  \slashedGrace f8-4( <ef^3) g,>4-^-! g,-! \slashedGrace f'8( <ef) g,>4-! |
  g,-!-^ \slashedGrace f'8( <ef) g,>4-! g,-! |
  af8-2( c-1 ef af c4) |
  \tuplet 3/2 { af8-3\( bf af } f d ef4-3-!\) |
  \slashedGrace f8-4( <ef^3) g,>4-! g,-! \slashedGrace f'8( <ef) g,>4-! |
  g,-! \slashedGrace f'8( <ef) g,>4-! g,-! |
  \override TextSpanner.bound-details.left.text = \markup {"poco rit."}
  \once\override TextSpanner.extra-offset = #'(0 . 0.5) 
  \override Fingering.avoid-slur = #'inside
  \override TextSpanner.bound-details.left.stencil-align-dir-y = 0.1
  \stemDown af8-2\prall(\startTextSpan g af bf c-1 df |
  ef[ f-1 gf! g bf8.-5 af16])\stopTextSpan \stemNeutral |
  \revert Fingering.avoid-slur
  \set fingeringOrientations = #'(left)
  \once\override TextScript.extra-offset = #'(0 . 1.3) 
  <ef-4 gf-5>2->(^\markup {\italic "a tempo"} <b d>4-1-3 | % need to figure out tie direction for fingering
   
  <c ef>-.) af8-.-3 af-.-2 af4-1-^ |
  <gf' bf>2->-3-5( <e g>4-1-4 |
  <f af>-.-2-3) af,8-3-. af-. af4-^ |
  <ef' gf>2->-4-5( <b d>4-1-3 |
  <c ef>-.) af8-.-3 af-. af4-^ |
  <bf gf'>-2-5( <af f'>-1-5 <gf ef'>-1-4 | 
  <f df'>-3-.) af8-3-. af-2-. af4-1-^ |
  <ef' gf>2-4-5( <b d>4-1-3 |
  <c ef>-.) af8-.-3 af af4-^ |
  <gf' bf>2->-3-5( <e g>4-1-4 |
  <f af>-.-2-3) af,8-3-. af-. af4->( | 
  af')
  <<
    {
      \stemDown bf,8^1( af'^5) \stemUp gf4-4-^~\( |
      gf4. gf8-5 f4-4-^~ |
      f4. f8-5 ef4-4 |
      df\)
    }
    \\
    {
      \stemUp bf \stemDown ef~ |
      ef af, df~ |
      df gf, gf |
      f
    }
  >>
  df8-3-. df-2-. df4-1 |
  \repeat volta 2 {
    <f-2 af-4>\tweak extra-offset #'(0 . 1)^\markup {\italic "con anima"}  r
    \set fingeringOrientations = #'(top bottom)
    <f-1 af-3>( |
    \grace af16-2 \grace bf-4 <f af^3>4-.) r8 <ef^1 gf^3>( <f af>4 |
    <gf bf>-.) r <bf^1 df^3> |
    <bf^2 gf'^5>2.->( |
    <af^1 f'^4>4-!) r8 ef'-.-3 <ef^4 gf,^1>4->( |
    <f^5 af,^2>-!) r8 ef-3-. <ef^4 gf,>4->( |
    <f af,>-!) r8 ef-.-4 <ef^5 gf,^1>4->( |
    <c^4 e,^1>-!) r8 df-3-. <df^2 f,^1>4->( |
    <f^4 af^5>-!) r8 <f^2 af^4>-. <f^1 af^3>4->( |
    \grace af16-2 \grace bf-4 <f af^3>4-!) r8 <ef^1 gf^3>( <f af>4 |
    <gf bf>-!) r <bf^1 df^3>-. |
    \set fingeringOrientations = #'(top left bottom) 
    <bf-2 gf'-5>2.->( |
    <af-1 f'-4>4-!) r8 ef'-.-3 <ef-4 gf,-1>4->( |
    <f-5 af,-2>-!) r8 ef-.-3 <ef^4 gf,>4->( |
    <f af,>-!) r8 ef-.-3 <ef-4 gf,>4->( |
  }
  \alternative {
    {
      <df^2 f,>) r df,,_1 |
    }
    {
      \extendRT #2 
      \once \override NoteColumn.X-offset = #'2
      \once \override NoteHead.extra-spacing-width = #'(0 . 2)
      <df''^2\repeatTie f,> r f,-3 | \bar "||" \break
    }
  }
  \repeat volta 2 {
    \acciaccatura f8-2 gf4-.-^ \acciaccatura gf8 e4-.-1 \acciaccatura e8 f4-.-2 |
    \acciaccatura f8-2 gf4-.-^ \acciaccatura gf8 e4-.-1 \acciaccatura e8 f4-.-2 |
    \acciaccatura f8-1 df'4-4-.-^ \acciaccatura df8-3 c4-.-2 \acciaccatura c8-3 b4-.-2 |
    \acciaccatura cf8-3 bf!4-.-2 \acciaccatura bf8 a4-. \acciaccatura bff8 af4-. |
    \acciaccatura af8 g4-. \acciaccatura aff8 gf4-. \acciaccatura gf8 f4-. |
    \acciaccatura f8 e4-. \acciaccatura ff8 ef4-. \acciaccatura ef8-3 c4-.-1 |
    \acciaccatura c8-2 df4-. \acciaccatura df8 a4-.-1 \acciaccatura a8-2 bf4-.-3 |
    \acciaccatura bf8-2 df4-.-3 \acciaccatura df8-2 ef4-. \acciaccatura ef8 e4-. |
    \acciaccatura e8-2 gf!4-.-^-4 \acciaccatura gf8-3 e!4-.-1 \acciaccatura e8-2 f4-.-3 |
    \acciaccatura f8-2 gf4-.-3 \acciaccatura gf8 e4-. \acciaccatura e8 f4-. |
    \acciaccatura f8 f'4-.-^\( \acciaccatura f8 df4-.-3 \acciaccatura df8-3 bf4-.-2 |
    \acciaccatura bf8-3 gf4-.-1 \acciaccatura gf8-4 ef4-.-2 \acciaccatura ef8-2 c4-.-1\) |
    \acciaccatura gf'8-3 f4-.-2 \acciaccatura f8-3 e4-.-2 \acciaccatura ff8 ef4-. |
    \acciaccatura ef8 d4-. \acciaccatura eff8 df4-. \acciaccatura df8 c4-. |
    \acciaccatura c8 cf4-. \acciaccatura cf8 bf4-. \acciaccatura bf8 a4-. |
    \acciaccatura bff8 af4-. \acciaccatura af8 g4-. \acciaccatura aff8 gf4-. |
    <f af>4^^  r8 <f^2 af^4>8  <f^1 af^3>4->\( | 
    \grace af16-2 \grace bf-4 <f af^3>4^!\) r8 <ef^1 gf^3>\( <f af>4 |
    <gf bf>-!\) r <bf^1 df^3>-. |
    <bf-2 gf'-2>2.->( |
    <af-1 f'-4>4-!) r8 ef'-.-3 <ef^4 gf,^1>4->( |
    <f af,>-!) r8 ef-.-3 <ef^4 gf,>4->( |
    <f af,>-!) r8 ef-.-4 <ef^5 gf,^1>4->( |
    <c^4 e,^1>-!) r8 df-.-3 <df^2 f,^1>4->( |
    <f^4 af^5>-!) r8 <f^2 af^4>-. <f^1 af^3>4( |
    \grace af16-2 \grace bf-4 <f af^3>4-!) r8 <ef^1 gf^3>( <f af>4 | 
    <gf bf>-!) r <bf-1 df-3>-. |
    <bf-2 gf'-5>2.->( |
    <af-1 f'-4>4-!) r8 ef'8-.-3 <ef-4 gf,-1>4->( |
    <gf-5 af,-2>-!) r8 ef8-.-3 <ef^4 gf,>4->( |
    <f af,>-!) r8 ef-.-3 <ef^4 gf,>4->( |
  }
   
  \alternative {
    {
      <df f,>-!) r 
      \extendLV #2
      \once \override NoteHead.extra-spacing-width = #'(0 . 3)
      f,\laissezVibrer |
    }
    {
      \extendRT #2
      \once \override NoteColumn.X-offset = #'2
      \once \override NoteHead.extra-spacing-width = #'(0 . 2)
      <df'\repeatTie f,>-! r df,8-3 df-2 |
    }
  } 
  \override Fingering.avoid-slur = #'inside
  df-1( ef-3 df-2 c df d |
  f2-5 ef4) |
  af,8-1_( bf-3 af-2 g af a |
  bf4-4 gf8-.-2) bf-3([ cf-1 c-2] |
  df\prall[ c-1 df-2 bf')] af-4( gf |
  \revert Fingering.avoid-slur
  f2-1 ef4-3) |
  \tupletDown
  \once\override TupletNumber.Y-offset = -2
  \tuplet 3/2 { af,8-1\( bf-3 af-2 } g af-3 cf-5 bf |
  \tupletNeutral
  gf-.-2\) c,!-1( df f-1 gf bf) |
  \once\override PhrasingSlur.height-limit = 5
  \once\override PhrasingSlur.ratio = 10    
  df-4\( ef df-3 c-1 df d |
  \acciaccatura d8-2 f2-4 df4\) |
  af8-1_( bf-3 af\prall g-1 af a |
  bf4-4 gf!8-2-.) bf-3([ cf-1 c-2)] |
  \once\override PhrasingSlur.eccentricity = 1.5 
  \once\override PhrasingSlur.height-limit = 5 
  df\prall\( c-1 \tuplet 3/2 { df-2 cf'-5\) bf-3-. } \tuplet 3/2 { bf-4 af gf } |
  f2-1( ef4-3) |
  \tupletDown
  \once\override TupletNumber.Y-offset = -2
  \tuplet 3/2 { af,8-1\( bf-3 af-2 } g af-3 cf-5 bf |
  \tupletNeutral
  gf!4-.-2\) r bf8-3-. bf-2-. |
  bf4-.-1 r bf8-. bf-. |
  bf4-. r bf8-. bf-.|
  bf4-. <bf bf'>8-. <bf bf'>-. <bf bf'>4-. |
  <bf bf'>8-. <bf bf'>-. <bf bf'>4-. <bf bf'>8-. <bf bf'>-. |
  <bf bf'>4-. r <bf, f' bf>8-. <bf bf'>-. |
  <bf e bf'>4-. r <bf ef bf'>8-. <bf bf'>-. |
  <bf d bf'>4-. <bf bf'>8-. <bf bf'>-. <bf bf'>4-. |
  <bf bf'>8-. <bf bf'>-. <bf bf'>4-. <bf bf'>8-. <bf bf'>-. | \bar "||" \break
  \key ef \major <bf bf'>4-! d'8-2( ef <d f>4 |
  bf-!) ef8-2( f <ef g>4 |
  bf-!) f8-2( g <f' af>4) |
  <df g bf>2-5 <df g bf>8-4-. <df g bf>-. |
  <<
    {
      bf'4-4->( c8 bf af4-.-3) |
      af-4->( bf8 af g4-.-3) |
      g4-4->( af8 g f4-.-) |
      f-4->( g8 f ef4-.) |
    }
    \\
    {
      <df g>2 c4 |
      cf2 bf4 |
      bf2 af4 |
      af2 g4 |
    }
  >>
  <bf bf'>-! d8-2( ef <d f>4) |
  <bf bf'>-! ef8-2( f <ef g>4) |
  <bf bf'>-! f'8( g <f af>4) |
  <df g bf>4. <g bf>8-4( df-1 <g bf>) |
  <<
    {
      \stemDown
      df-1->( bf'-4 c bf af4-.-3) |
      cf,8->( af'-4 bf af g4-.-3) |
      bf,8->( g'-4 af g f4 |
      ef-.)
    }
    \\
    {
      \stemUp df2 \stemDown c4 |
      \stemUp cf2 \stemDown bf4 |
      \stemUp bf2 \stemDown af4 |
      g
    }
  >>
  ef'8-4-.^\markup {\italic "leggiermente"} ef-3-. ef-2-. ef-1-. |
  ef-.-3 ef-.-2 ef-.-1 ef-.-3 ef-. ef-. |
  f-3( ef c-1 af-4 ef-2 e-1) |
  f-.-3 f-.-2 f-.-1 f-.-3 f-. f-. |
  ef-2( af-4 c-1 ef af e-1) |
  f-3-. f-2-. f-1-. f-.-3 f-. f-. |
  \tuplet 3/2 { f-2->( g f } ef af-2 c4-.) |
  f-5( ef8 df g,4-.) |
  bf-4( af8 ef c4-.) |
  ef8-.-3 ef-.-2 ef-.-1 ef-.-3 ef-. ef-. |
  f-3( ef c-1 af-4 ef-2 e-1) |
  f-.-3 f-.-2 f-.-1 f-.-3 f-. f-. |
  ef-2( af-4 c-1 ef af e-1) |
  f-3-. f-2-. f-1-. f-.-3 f-. f-. |
  \tuplet 3/2 { f-2->( g f } ef af c4-.-4) |
  f-5( ef8 df g,4) |
  \set fingeringOrientations = #'(left)
  af r <c,-2>->(\trill-\tweak X-offset #0.5 ^\markup {\with-dimensions #'(-1 . 1) #'(-0.4 . 1) \fontsize #-4 \natural} |
  \set fingeringOrientations = #'(top bottom)
  af-.-1)
  d8-2( ef <d f>4 |
  bf-.) ef8-2( f <ef g>4 |
  bf-.) f'8-2( g <f af>4) |
  <df g bf>2-5 <df g bf>8-. <df g bf>-. |
  <<
    {
      bf'4-4->( c8 bf af4-.-3) |
      af-4->( bf8 af g4-3-.) |
      g-4->( af8 g f4-.-) |
      f-4->( g8 f ef4-.-) |
    }
    \\
    {
      <df g>2 c4 |
      cf2 bf4 |
      bf2 af4 |
      af2 g4 |
    }
  >>
  <bf bf'>-! d8-2-( ef <d f>4) |
  <bf bf'>-! ef8-2-( f <ef g>4) |
  <bf bf'>-! f'8-2-( g <f af>4) |
  <df g bf>-^ r r |
  R2. |
  r4 r <df g bf>8-.-4 <df g bf>-. |
  <<
    {
      bf'4->-4( c8 bf af4-3-.) |
      af-4->( bf8 af g4-.-) |
      g-4->( af8 g f4-.-)
    }
    \\
    {
      <df g>2 c4 |
      cf2 bf4 |
      bf2 af4
    }
  >>
  R2. | \break
  R2.*4^\markup {\italic "a tempo"} |
  ef8-4-. ef-3-. ef-2-. ef-1-. ef4-4-^ |
  g,8-1( bf ef g-1 c4-4-^) |
  \acciaccatura c8-3 b4-.-2 \acciaccatura cf8-3 bf4-2-. \acciaccatura bf8-3 a4-.-2 |
  \acciaccatura bff8 af4-. \acciaccatura af8 g4-. \acciaccatura g8 f4-. |
  ef8-4-. ef-. ef-. ef-.-1 ef4-2 |
  c8-1( ef af c-1 f4---4) |
  \acciaccatura g8-3 f4-.-2 \acciaccatura f-3 e4-.-2 \acciaccatura ff8 ef4-. |
  \acciaccatura ef8 d4-. \acciaccatura eff8 df4-. \acciaccatura df8 c4-. |
  cf8-.-3 cf-.-2 cf-.-1 cf-.-3 cf-. cf-. |
  af-2( cf-1 d f cf'4) |
  \acciaccatura cf8-3 bf4-.-2 \acciaccatura bf8-3 a4-.-2 \acciaccatura bff8 af4-. |
  \acciaccatura af8 g4-. \acciaccatura aff8 gf4-. \acciaccatura gf8 f4-. |
  \acciaccatura f8 g'4-.-3 \acciaccatura g8 f4-. \acciaccatura f8 e4-. |
  \acciaccatura ff8 ef!4-. \acciaccatura ef8 d4-. \acciaccatura eff8 df4-. |
  \acciaccatura df8 c4-. \acciaccatura c8 b4-. \acciaccatura cf8 bf4-. |
  \acciaccatura bf8 a4-. \acciaccatura bff8 af4-. \acciaccatura af8 f4-. |
  <ef ef'>-!-^ g8-2( af <g bf>4) |
  <ef ef'>-!-^ gf8( af <gf bff>4) |
  <ef ef'>-!-^ f8( g! <f af>4) |
  <g bf bf,>2-^ <g bf bf,>8-. <g bf bf,>-. |
  <<
    {
      <bf bf,>2.-^ |
      <bf bf,>-^ |
      \set fingeringOrientations = #'(left)
      <g-5>2->( <f-5>4-.) |
      <f-5>2->( <ef-5>4-.) |
      \set fingeringOrientations = #'(top bottom)
      <ef ef,>2.-> |
      <ef ef,>-> |
      <ef ef,>-> |
      <bf g bf,>2_.-^ <bf g bf,>8_. <bf g bf,>_. |
      <bf bf,>2.-^ |
      <bf bf,>2.-^ |
      cf8-5-. cf-4-. cf-3-. cf-2-. cf-1-. cf-3-. |
      cf8-5( bf g ef bf4_.-1) |
      <bf bf'>2.-^ |
      <bf bf'>-^ |
      c'!8-5-. c-4-. c-3-. c-2-. c-1-. c-3-. |
      c-5( bf g ef bf4-1_.) |
      cf'8-5-. cf-. cf-. cf-. cf-1-. cf-3-. |
    }
    \\
    {
      \set fingeringOrientations = #'(left top bottom)
      <g'-3>4-.( af8 g f4-.^2) |
      <f-3>-( g8 f ef4-.) |
      bf-2( c8-3 bf-2 af4-.-1) |
      af-2( bf8-3 af-2 g4-.) |
      ef( af8-2 bf <af c>4-.) |
      ef( af8 bf <af cf>4-.) |
      ef( g8 af <g bf>4-.) |
      s2. |
      <g-3>4( af8 g f4-.) |
      <f-3>4( g8 f ef4-.) |
      d8 s8 s4 s |
      s2. |
      <g-3>4( af8 g f4-.) |
      <f-3>4( g8 f ef4-.) |
      d8 s8 s2 |
      s2. |
      d8 s8 s2 |
      \set fingeringOrientations = #'(top bottom)
    }
  >>
  cf'8-5( bf af f d4-.) |
  g'8(-5 f d cf af4-.) |
  cf'8-5( af f d cf4-.) |
  \tweak extra-offset #'(0 . 2) \ottava 1
  \once\override Slur.height-limit = #14
  cf''8-4( g-2 cf-5 af-3 f d-1 |
  \ottava 0
  cf-4 g-2 cf-5 af f d |
  cf-4 g-2 cf-5 af f d
  \change Staff = "lower"
  \voiceOne
  cf-4 g cf-5 af f d |
  ef) r 
  \once\override Slur.height-limit = #5
  g-1( af bf c!-1 |
  \oneVoice
  \change Staff = "upper"
  d ef f-1 g af a-1 | \break
  c-4-\tweak extra-offset #'(0 . 1) ^\markup {\italic "accelerando"} bf-3 g af bf c-1 |
  d ef f-1 g af a-1 |
  c-4 bf g-1 af bf c-1 |
  \ottava 1
  d ef f-1 g af a-1 |
  c-4 bf g-1 af a-1 bf-3 |
  c bf g-1 af a-1 bf |
  ef-!) r g,-1( af a-1 bf-3 |
  ef4-!-5) g,8( af a bf |
  ef4-!) g,8( af a bf |
  ef4-!) g,8( af a bf |
  ef4-!) g,8( af a bf |
  ef4-!) g,8( af a bf |
  ef4-!) g,8( af a bf |
  ef4-.) g,8( af a bf |
  ef4-.) \ottava 0 r r |
  R2. |
  <g,, bf ef g>4-! r r |
  <g, bf ef g>-! <g bf ef g>-! <g bf ef g>-! |
  \change Staff = "lower"
  \voiceOne ef,2.\fermata \bar "|."
  
  
  

}

lower = \relative c {
  \global
  \clef bass

  R1*3/4 | %m1
  R1*3/4 |
  R1*3/4 |
  R1*3/4 |
  bf4-. <bf' f' af> <bf f' af> |
  ef,-. <bf' ef g> <bf ef g> |
  d,-.  <bf' f' af> <bf f' af> | 
  ef,-. <bf' df g>-. e,-5( |
  f-.-4) <af f'>-. af,-. |
  bf-. <g' ef'> <g ef'> |
  bf,-. <f' d'> <bf d> |
  <<
    {
      r4 <bf ef> <bf ef> |
    }
    \\
    {
      ef,2. |
    }
  >>
  bf4-. <bf' f' af> <bf f' af> |
  ef,-. <bf' ef g> <bf ef g> |
  d,4-. <bf' f' af> <bf f' af> |
  ef,-. <bf' df g>-. e,-5( |
  f-.-4) <af f'>-. af,-. |
  bf-. <g' ef'> <g ef'> |
  bf,-. <f' d'> <bf d> |
  <ef, bf' ef> r r |
  <<
    { r <g ef'>( <g df'>) | }
    \\
    { ef2 ef4 | }
  >>
  af, <ef' af c> <ef af c> |
  af, <ef' af c> <ef af c> |
  af, <d af' b> <d af' b> |
  af <ef' af c> <ef af c> |
  d <af' b f'> <af b f'> |
  ef \clef treble <c' ef af> <c ef af> |
  \clef bass ef, \clef treble <df' ef g> <df ef g> |
  af <c ef af> <c ef af> |
  \clef bass af, <ef' af c> <ef af c> |
  af, <ef' af c> <ef af c> |
  af, <d af' b> <d af' b> |
  af <ef' af c> <ef af c> |
  d <af' b f'> <af b f'> |
  ef \clef treble <c' ef af> <c ef af> |
  \clef bass ef, \clef treble <df' ef g> <df ef g> |
  <<
    { r <c af'>_( <f af>) |}
    \\
    { af,2. |}
  >>
  \clef bass <bf, bf'>4-! <bf' f' af> <bf f' af> |
  ef,-! <bf' ef g> <bf ef g> |
  d,-! <bf' f' af> <bf f' af> |
  ef,-. <bf' df g>-. e,-5( |
  f-.-4) <af f'>-. af,-. |
  bf-. <g' ef'> <g ef'> |
  bf,-. <f' d'> <bf d> |
  <<
    { r <bf ef> <bf ef> |}
    \\
    { ef,2. |}
  >>
  d4-. <bf' f' af> <bf f' af> |
  ef,-. <bf' ef g> <bf ef g> |
  d,-. <bf' f' af> <bf f' af> |
  ef,-. <bf' df g>-. e,-5( |
  f-.-4) <af f'>-. af,-. |
  bf-. <g' ef'> <g ef'> |
  bf,-. <f' d'> <bf d>~ |
  <ef, bf' ef> r <ef g df'> |
  af, <ef' af c> <ef af c> |
  af, <ef' af c> <ef af c> |
  af, <d! af' b> <d af' b> |
  af <ef' af c> <ef af c> |
  d <af' b f'> <af b f'> |
  ef \clef treble <c' ef af> <c ef af> |
  \clef bass ef, \clef treble <df' ef g> <df ef g> |
  <<
    { r <c ef af> <c ef af> | }
    \\
    { af2. }
  >>
  \clef bass af,4 <ef' af c> <ef af c> |
  af, <ef' af c> <ef af c> |
  af, <d af' b> <d af' b> |
  af <ef' af c> <ef af c> |
  d <af' b f'> <af b f'> |
  <<
    { r <af c ef> <af c ef> |
      r <bf df ef> <bf ef df> | }
    \\
    { ef,2. |
      ef2. | }
  >>
  af,4( <ef' c'>) r |
  \key df \major
  af,-. <ef'_5 c'_2>( <af_3 gf'_1>) |
  af,-. <ef' c'>( <af gf'>) | 
  df,-. <f_5 df'_2>( <af_4 f'_1>) |
  df,-. <f df'>( <af f'>) | 
  af,-. <ef' c'-2>( <af gf'>-1-3) |
  af,-. <ef' c'>( <af gf'>) |
  <<
    { r af( c) |
      <df, df'>_. \stemDown <f df'-2>4( <af f'>) }
    \\
    { df,2. }
  >>
  af4-. <ef' c'>( <af gf'>) |
  af,-. <ef' c'>( <af gf'>) |
  df,,-. <f' df'>( <af f'>) |
  df,-. <f df'>( <af f'>) |
  gf,-. <gf' d'>-5-2_( <bf ef>-3-1) |
  af,-. <f' c'>-5-2_( <af df!>-3-1) |
  af, <ef' af c> <ef af c> |
  <df af' df> r r |
  <df af' df> r <df af' df> |
  <ef bf' df>-! r <ef bf' df>-! |
  <ef bf' df>-! r <ef bf' df>-! |
  af, <ef' af c> <ef af c> |
  af, 
  <<
    { <af' b>4( <af c>-!) }
    \\
    { d,8-5( f-3) ef4-4 }
  >>
  <ef bf'! df!>-!_5  r <ef bf' df>-! |
  <ef bf' df>-! r <ef bf' df>-! |
  ef, <g' df'> <ef df'> |
  af, <af' c> <ef c'> |
  <ef bf'! df!>-!  r <ef bf' df>-! |
  <ef bf' df>-! r <ef bf' df>-! |
  af, <ef' af c> <ef af c> |
  af, 
  <<
    { <af' b>4( \once\override Script.avoid-slur = #'outside <af c>-!) }
    \\
    { d,8-5( f-3) ef4-4 }
  >>
  <ef bf'! df!>-!  r <ef bf' df>-! |
  <ef bf' df>-! r <ef bf' df>-!( |
  <af c>) r r 
  R2. | 
  af,4-. <ef'_5 c'_2>( <af_3 gf'_1>) |
  af,-. <ef' c'>( <af gf'>) |
  df,,-. <f' df'-2>( <af f'>)-4-1 |
  df,-. <f df'>( <af f'>) | 
  af,4-. <ef' c'>( <af gf'>) |
  af,-. <ef' c'>( <af gf'>) |
  <<
    { r af( c |
      <df, df'>_.) \stemDown <f df'^2>4( <af f'>) }
    \\
    { df,2. }
  >>
  af4-. <ef' c'^2>( <af^3 gf'^1>) | 
  af,4-. <ef' c'>( <af gf'>) | 
  df,,-. <f' df'^2>( <af f'>) |
  df,-. <f df'>( <af f'>) |
  gf,-. <gf'_5 d'_2>( <bf_3 ef_1>) |
  af,-. <f'_5 c'_2>( <af_3 df!_1>) |
  af,-. <ef' af c> <ef af c> |
  <df af' df> r r |
  df,-. <df' af' cf> <df af' cf> |
  df,-. <df' af' cf> <df af' cf> |
  gf,-. <df' gf bf> <df gf bf> |
  gf,-. <d'_4 bf'>_( <ef bf'>) |
  af,-. <ef' af c!> <ef af c> |
  af,-. <ef' af c> <ef af c> |
  af,-. <ef' af c> <ef af c> | 
  <<
    {
      r <af df> <af df> |
    }
    \\
    {
      df,2. |
    }
  >>
  df4-. \clef treble <df' af' cf> <df af' cf> |
  \clef bass df,-. \clef treble <df' af' cf> <df af' cf> |
  gf,-. <df' gf bf> <df gf bf> |
  gf,-. <d'_4 bf'>( <ef bf'>) |
  af,-. <ef' af c!> <ef af c> |
  af,-. <ef' af c> <ef af c> |
  af,-. <ef' af c> <ef af c> |
  <df af' df> r r |
  \once \override NoteColumn.X-offset = #'2
  \once \override NoteHead.extra-spacing-width = #'(0 . 2)
  <df af' df> r r \clef bass |
  \grace s8 bf,4-. <f' df'> <f df'> |
  a,-. <f' c' ef> <f c' ef> |
  bf,-. <f' bf df> <f bf df> |
  ef-. <bf' c gf'> <bf c gf'> |
  f-. <bf df f> <bf df f> |
  f-. <a ef' f> <a ef' f> |
  bf,-. <f' df'> <f df'> |
  bf,-. <f' df'> <f df'> |
  bf,-. <f' df'> <f df'> |
  a,-. <f' c' ef> <f c' ef> |
  bf,-. <f' bf df> <f bf df> |
  ef-. <bf' c gf'> <bf c gf'> |
  f-. <bf df f> <bf df f> |
  f-. <a ef' f> <a ef' f> |
  <bf df f> r r |
  R2. |
  df,,4-. <df' af' cf> <df af' cf> |
  df,-. <df' af' cf> <df af' cf> |
  gf,-. <df' gf bf> <df gf bf> |
  gf,-. <d'_4 bf'>_( <ef bf'>) |
  af,-. <ef' af c!> <ef af c> |
  af,-. <ef' af c> <ef af c> |
  af,-. <ef' af c> <ef af c>|
  <<
    {
      r <af df> <af df> |
    }
    \\
    {
      df,2. |
    }
  >>
  df4-. \clef treble <df' af' cf> <df af' cf> |
  \clef bass df,-. \clef treble <df' af' cf> <df af' cf> |
  gf,-. <df' gf bf> <df gf bf> |
  gf,-. <d' bf'>( <ef bf'>) |
  af,-. <ef' af c!> <ef af c> |
  af,-. <ef' af c> <ef af c> |
  af,-. <ef' af c> <ef af c> |
  <df af' df>-! r r |
  \once \override NoteColumn.X-offset = #'2
  \once \override NoteHead.extra-spacing-width = #'(0 . 2)
  <df af' df>-! r r | \clef bass 
  <<
    {
      r <gf, df'> <gf df'> |
    }
    \\
    {
      bf,2. |
    }
  >>
  cf4 <gf' af ef'> <gf af ef'> |
  <<
    {
      r <f cf'> <f cf'> |
    }
    \\
    {
      df2. |
    }
  >>
  af,4 <df' bf'> <df bf'> |
  <<
    {
      r <gf df'> <gf df'> |
    }
    \\
    {
      bf,2. |
    }
  >>
  cf4 <gf' af ef'> <gf af ef'> |
  <<
    { r <f cf'> <f cf'> }
    \\
    { df2. }
  >>
  gf,4 <df' bf'> <df bf'> |
  <<
    { r <gf df'> <gf df'> | }
    \\
    { bf,2. }
  >>
  cf4 <g'_3_( ef'> <af) ef'> |
  <<
    { r <f cf'> <f cf'> }
    \\
    { df2. }
  >>
  gf,4 <df' bf'> <df bf'> |
  <<
    { r <gf df'> <gf df'> }
    \\
    { bf,2. | }
  >>
  cf4 <gf' af ef'> <gf af ef'> |
  <<
    { r <f cf'> <f cf'> | }
    \\
    { df2. |}
  >>
  gf,4 <df' bf'> r |
  <bf bf,>-. r <af'_3 bf f'>->( |
  <g_4 bf e>) r <gf_4 bf ef>->( |
  <f_5 bf d>) <bf, bf,>8-. <bf bf,>-. <bf bf,>4-. |
  <bf bf,>8-. <bf bf,>-. <bf bf,>4-. <bf bf,>8-. <bf bf,>-. |
  <bf bf,>4-. r <bf af'^2>( |
  <bf g'^1>) r <bf gf'>( |
  <bf f'>) r r |
  R2. |
  \key ef \major
  <bf bf,>4-! <bf' f' af> <bf f' af> |
  <ef, ef,>-! <bf' ef g> <bf ef g> |
  <bf bf,>-! <bf f' af> <bf f' af> |
  ef,-. <bf' df g>-. e,-5( |
  f-4-.) <af f'>-. af,-. |
  bf-. <g' ef'> <g ef'> |
  bf, <f' d'> <bf d> |
  <<
    { r <bf ef> <bf ef> }
    \\
    { ef,2. }
  >>
  <bf bf'>4-! <bf' f' af> <bf f' af> |
  <ef, ef,>-! <bf' ef g> <bf ef g> |
  <bf bf,>-! <bf d af'> <bf d af'> |
  ef,-. <bf' df g>-1 e,-5( |
  f-.-4) <af f'>-. af,-. |
  bf-. <g' ef'> <g ef'> |
  bf,-. <f' d'> <bf~ d> |
  <ef, bf' ef> r <ef g df'> |
  af, <ef' af c> <ef af c> |
  af, <ef' af c> <ef af c> |
  af, <d a' bf> <d a' bf> |
  af <ef' af c> <ef af c> |
  d <af' b f'> <af b f'> |
  ef \clef treble <c' ef af> <c ef af> |
  \clef bass ef, \clef treble <df' ef g> <df ef g> |
  af <c ef af> <c ef af> |
  \clef bass af, <ef' af c> <ef af c> |
  af, <ef' af c> <ef af c> |
  af, <d af' b> <d af' b> |
  af <ef' af c> <ef af c> |
  d <af' b f'> <af b f'> |
  ef \clef treble <c' ef af> <c ef af> |
  \clef bass ef, \clef treble <df' ef g> <df ef g> |
  <<
    { r <c af'> <c f af> | }
    \\
    { af2. }
  >>
  \clef bass <bf bf,>4-. <bf f' af> <bf f' af> |
  ef,-. <bf' ef g> <bf ef g> |
  d,-. <bf' f' af> <bf f' af> |
  ef,-. <bf' df g>-. e,( |
  f-.) <af f'>-. af,-. |
  bf-. <g' ef'> <g ef'> |
  bf,-. <f' d'> <bf d> |
  <<
    { r <bf ef> <bf ef> | }
    \\
    { ef,2. | }
  >>
  <bf bf,>4-! <bf' f' af> <bf f' af> |
  <ef, ef,>-! <bf' ef g> <bf ef g> |
  <bf bf,>-! <bf d af'> <bf d af'> |
  <bf ef, df' g>-^\arpeggio r r |
  R2. |
  r4 r e,-. |
  f-. <af f'>-. af,-. |
  bf-. <g' ef'> <g ef'> |
  bf,-. <f' bf d> <f bf d> |
  R2. |
  ef,4 <bf' g'> <bf g'>-^ |
  ef,4 <bf' g'> <bf g'>-^ |
  ef,4 <bf' g'> <bf g'>-^ |
  ef,4 <bf' g'> <bf g'>-^ |
  ef,4 <bf' g'> <bf g'> |
  ef,4 <bf' g'> <bf g'> |
  ef,4 <ef' g df'> <ef g df'> |
  <ef g df'> <ef g df'> <ef g df'> |
  ef, <ef' af c> <ef af c> |
  ef, <ef' af c> <ef af c> |
  ef, <ef' af c> <ef af c> |
  ef, <ef' af c> <ef af c> |
  <ef ef,> <ef af d> <ef af d> |
  <ef ef,> <ef af d> <ef af d> |
  <ef ef,> <ef af cf d> <ef af cf d> |
  <ef af cf d> <ef af cf d> <ef af cf d> |
  <ef af cf d> <ef af cf d> <ef af cf d> |
  <ef af cf d> <ef af cf d> <ef af cf d> |
  <ef af bf d> <ef af bf d> <ef af bf d> |
  <ef af bf d> <ef af bf d> <ef af bf d> |
  <ef ef,>-! \clef treble <df' ef g bf> <df ef g bf> |
  \clef bass <ef, ef,>-! \clef treble <c' ef gf bff> <c ef gf bff> |
  \clef bass <ef, ef,>-! \clef treble <cf' ef f af> <cf ef f af> |
  \clef bass <ef, ef,>-! <g bf ef g> <g bf ef g> |
  <bf, bf,>-! <af' bf d f> <af bf d f> |
  <ef ef,>-! <g bf ef> <g bf ef> |
  <bf bf,>-! <bf d af f> <bf d af f> |
  <ef, ef,>-! <ef bf' df> <ef bf' df> |
  <af af,> <af c ef,> <af c ef,> |
  <af af,> <af cf ef,> <af cf ef,> |
  ef, <bf' ef g> <bf ef g> |
  ef, <bf' ef g> <bf ef g> |
  ef, <bf' d af'> <bf d af'> |
  ef, <bf' ef g> <bf ef g> |
  ef, <bf' f' af> <bf f' af> |
  ef, <bf' ef g> <bf ef g> |
  ef, <bf' d af'> <bf d af'> |
  ef, <bf' ef g> <bf ef g> |
  ef, <bf' f' af> <bf f' af> |
  ef, <bf' ef g> <bf ef g> |
  ef, <bf' f' af> <bf f' af> |
  ef, <bf' f' af> <bf f' af> |
  ef, <bf' f' af> <bf f' af> |
  ef, <bf' f' af> <bf f' af> |
  <ef ef,> <ef af cf d> r |
  <ef af cf d> <ef af cf d> r |
  <ef af cf d> <ef af cf d> r |
  \voiceTwo R2. |
  <ef, ef,>8 r r4 r |
  \oneVoice
  R2. |
  r4 <g' bf ef> <g bf ef g> |
  <g bf ef g> <g bf ef g> <g bf ef g> |
  <g bf ef g> <g bf ef g> <g bf ef g> |
  <g bf ef g> <g bf ef g> <g bf ef g> |
  <g bf ef g> <g bf ef g> <g bf ef g> |
  <g bf ef g> <g bf ef g> <g bf ef g> |
  <g bf ef g> r r |
  <g ef ef'> r r |
  <g bf ef g> r r |
  \clef treble <bf g' bf> r r |
  <ef g ef'> r r |
  <bf g' bf> r r |
  <g' ef' g>-. r r |
  <bf g' bf>-. r r |
  <g' ef' g>-. r r |
  R2. |
  <ef bf ef,>4-! r r |
  \clef bass <ef, bf ef,>-! <ef bf ef,>-! <ef bf ef,>-! |
  \voiceTwo <ef,, ef,>2.


}

dynamics = {
  \global
  \override Parentheses.font-size = #+1
  
  \override DynamicTextSpanner.font-size = #-.5
   
  %\override TextSpanner.dash-fraction = 0.3
  %\override TextSpanner.bound-details.left.stencil-align-dir-y = #-0.2
  
  s4\f s s |
  s2.*3 |
  s4\parenthesize \f s s\< |
  s2.|
  s4 s s\! |
  s\sf s s |
  s\p s s |
  s\> s s |
  s2. |
  s4 s s\! |
  s\f s s |
  s\< s s |
  s s s\! |
  s\sf s s |
  s\> s s |
  s2. |
  s4 s s\! |
  s2.*2 |
  s4\p\< s s\! |
  s\> s s8 s\! |
  s2. |
  s4\< s s8 s\! |
  s2.*2 |
  s4\p s s |
  s s s |
  s8\< s s s s s\! |
  s\> s s s s s\! |
  s2. |
  s8\< s s s s s\! |
  s2.|
  s4 s8\< s s4\! |
  s4\p s s |
  s s s |
  s\f s s\< |
  s s s |
  s s s\! |
  s4\sf s\> s |
  s2.*3 |
  s4 s s\! |
  s8\p s\< s s s4\! |
  s8\< s s s s4\! |
  s8\< s s s s4\! |
  s4\sf s s |
  s8\> s s2 |
  s2. |
  s4 s s\! |
  s s8\p s s s |
  s\< s s s s s\! |
  s\> s s s s s\! |
  s2. |
  s8\< s s s s s\! |
  s2. |
  s4 s8\< s s4\! |
  s\p s s |
  s s s |
  s8\< s s s s s\! |
  s\> s s s s s\! |
  s2. |
  s8\< s s s s s\! |
  s2. |
  s4 s8\< s s4\! |
  s\> s8 s8\! s4 |
  s2. |
  s2\mf s4 |
  s2.*5 |
  s4\> s s\! |
  s2.*8 |
  s4\sf s s |
  s\sf s s\ff |
  s2.*2 |
  s8\p s8 s2 |
  s2.|
  s4\f s s |
  s2. |
  s4\p\< s s |
  s s s8 s\! |
  s4\ff s s |
  s2. |
  s8\p s s2 |
  \tuplet 3/2 { s8\> s s\! } s2 |
  s4\f s s |
  s2. |
  s8\< s_\markup {\italic "dolce"} s2|
  s2. |
  s2\mf s4 |
  s2.*4 |
  s4 s8\< s s4\! |
  s\> s s\! |
  s2.*10 |
  s4 s8 s\< s4 |
  s\! s2 |
  s4 s\parenthesize \> s\! |
  s s\p s |
  s2.*3 |
  s4\f s s |
  s s8 s\< s4 |
  s s s\! |
  s s\parenthesize \> s\! |
  s s\p s |
  s2.*3 |
  s4 s s\p |
  s\p s s |
  s2. |
  s4\> s s |
  s2.*2 |
  s4 s s\! |
  s\p s s |
  s\< s s |
  s2. |
  s4 s s\! |
  s2.*3 |
  s4\textCresc "crescendo" s s |
  s2. |
  s4 s s |
  s\f s s |
  s s8 s\< s4 |
  s s s\! |
  s s\parenthesize \> s\! |
  s s\mf s |
  s2.*3 |
  s4\f s s |
  s s8 s\< s4 |
  s s s\! |
  s s\parenthesize \> s\! |
  s s\mf s |
  s2.*3 |
  s4 s s8\p s |
  s8-\markup {"dolce"} s8 s\< s s s\! | 
  s2\> s4\! |
  s8 s s s\< s s\! |
  s4\> s8\! s\< s s |
  s s s s s s\! |
  s4\> s s\! |
  s2. |
  s8 s\< s4 s |
  s s s8 s\! |
  s4\> s s\! |
  s2.*2 |
  s8\< s s4 \tuplet 3/2 {s8 s s\!} |
  s4\> s s\! |
  s2.*2 |
  s4\p s s |
  s2. |
  s4 s8\ff s s4 |
  s2. |
  s4 s\p s |
  s2. |
  s4 s8\cresc s s4 |
  s s s8 s\! |
  s4\f s s |
  s s8\< s s4 |
  s s s\! |
  s\sf s s |
  s\p s s |
  s\< s s |
  s2. |
  s4\! s s |
  s\sf s s |
  s\sf s s |
  s\sf s s |
  s\sf s s |
  s2. |
  s8\> s s2 |
  s s4\! |
  s s8\p s s4 |
  s8\< s s s s s\! |
  s\> s s s s s\! |
  s2. |
  s8\< s s s s s\! |
  s2. |
  s4 s8\< s s4 |
  s\> s s |
  s s s\! |
  s8\< s s2 |
  s s8 s\! |
  s2. |
  s8\< s s s s s\! |
  s2. |
  s4 s\< s\! |
  s s8\> s s4\! |
  s2. |
  s4\f s s |
  s\< s s |
  s s s\! |
  s2\sf s4 |
  s2. |
  s4\> s s |
  s2. |
  s4 s s\! |
  s\sf s s |
  s\sf s s |
  s\sf s8\< s s4\! |
  s\sf s s |
  s2. |
  \override TextSpanner.font-size = #-0.5
  \override TextSpanner.bound-details.left.stencil-align-dir-y = 0.1
  \override TextSpanner.bound-details.left.text = \markup {"poco rit. "}
  s4 s s8\p_\startTextSpan s |
  s4\> s s |
  s2. |
  s4 s s\!\stopTextSpan |
  s2. |
  s4\pp s s |
  s2.*3 |
  s8\p s s2 |
  s2. |
  s4\textCresc "poco" s s |
  s s\textCresc "a" s |
  s s s |
  s s\textCresc "poco" s |
  s s s |
  s s\textCresc "cres" s |
  s s s |
  s s\textCresc "cen" s |
  s s\textCresc "do" s\> |
  s s s\! |
  s\f s s |
  s2.*3 |
  s4\ff s8\< s s4\! |
  s s8\< s s4\! |
  s s8\< s s4\! |
  s2\sf s4 |
  s2.*4 |
  s4 s4\textDecresc "di" s |
  s s\textDecresc "mi" s |
  s s\textDecresc "nu" s |
  s s\textDecresc "en" s |
  s s\textDecresc "do" s |
  s2. |
  s8\p s s2 |
  s2. |
  s4\pp s s |
  s2.*3 |
  s8 s8\textCresc "cres" s2 |
  s4 s s\textCresc "cen" |
  s2. |
  s4\textCresc "do" s s |
  s8\ff s s2 |
  s2.*3 |
  s8 s\p s2 |
  s2.*3 |
  s8\textCresc "cresc" s s2 |
  s4 s\textCresc "cen" s |
  s s s8\textCresc "do" s\! |
  s2. |
  s4 s\textDecresc "di" s |
  s s\textDecresc "mi" s |
  s s s8\textDecresc "nu" s |
  s4 s s 
  s4\textDecresc "en" s s|
  s4\textDecresc "do" s8\textDecresc "smorzando" s s4 |
  s2. |
  s2. |
  s4\! s s |
  s2. |
  s4\sf s s |
  s\ff s s
  
  
  
  
  
  
  
  
  
  
}
  

pedal = {
  \global 
  \set Staff.pedalSustainStyle = #'bracket
  
  s2.*4 |
  s4\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s\sustainOff s |
  s2. |
  s4\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s2. |
  s4\sustainOn s s\sustainOff |
  s2.*8 |
  s4\sustainOn s s |
  s s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s2. |
  s4\sustainOn s s |
  s s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s2.*17 |
  s4\sustainOn s s |
  s s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s2. |
  s4\sustainOn s s |
  s s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s2.*3 |
  s4\sustainOn s s |
  s s s\sustainOff |
  s4\sustainOn s s |
  s s s\sustainOff |
  s4\sustainOn s s |
  s s s\sustainOff |
  s s s |
  s4\sustainOn s s\sustainOff |
  s4\sustainOn s s |
  s s s\sustainOff |
  s4\sustainOn s s |
  s s s\sustainOff |
  s2.*7 |
  s4\sustainOn s s\sustainOff |
  s2.*7 |
  s4\sustainOn s s\sustainOff |
  s2.*3 |
  s4\sustainOn s s\sustainOff |
  s2. |
  s4\sustainOn s s |
  s s s\sustainOff |
  s4\sustainOn s s |
  s s s\sustainOff |
  s4\sustainOn s s |
  s s s\sustainOff |
  s2. |
  s4\sustainOn s s\sustainOff |
  s4\sustainOn s s |
  s s s\sustainOff |
  s4\sustainOn s s |
  s s s\sustainOff |
  s2.*4 |
  s4\sustainOn s s |
  s s s\sustainOff |
  s4\sustainOn s s |
  s s\sustainOff s |
  s4\sustainOn s s |
  s s s |
  s s s\sustainOff |
  s s s |
  s4\sustainOn s s |
  s s s\sustainOff |
  s\sustainOn s s |
  s\sustainOff s s |
  s\sustainOn s s |
  s s s |
  s s s\sustainOff |
  s2.*10 |
  s4\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s2.*4 |
  s4\sustainOn s s |
  s s s\sustainOff |
  s\sustainOn s s |
  s\sustainOff s s |
  s\sustainOn s s |
  s s s |
  s s s\sustainOff |
  s s s |
  s\sustainOn s s |
  s s s\sustainOff |
  s\sustainOn s s |
  s\sustainOff s s |
  s\sustainOn s s |
  s s s |
  s s s\sustainOff 
  s2.*25 |
  s4\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s\sustainOff s |
  s2. |
  s4\sustainOn s s\sustainOff |
  s\sustainOn s\sustainOff s |
  s\sustainOn s\sustainOff s |
  s2.*43 |
  s4\sustainOn s s |
  s2.*4 |
  s4 s s\sustainOff |
  s2.*2 |
  s4\sustainOn s s |
  s s s\sustainOff |
  s2.*2 |
  s4\sustainOn s s |
  s s s\sustainOff |
  s\sustainOn s s |
  s s s\sustainOff |
  s\sustainOn s s |
  s s s\sustainOff |
  s\sustainOn s s |
  s s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  s\sustainOn s s\sustainOff |
  
  
  
  
  
  
  
}



\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \lower
    \new Dynamics = "pedal" \pedal
  >>
  
  \layout {}
}

\score {
  <<
    \new Staff << \dynamics \upper \pedal >>
    \new Staff << \dynamics \lower \pedal >>
  >>

  \midi {
    \context { \Staff \accepts Dynamics }
    \context { \Staff \consists "Dynamic_performer" }
    \tempo 4 = 180
  }
}
