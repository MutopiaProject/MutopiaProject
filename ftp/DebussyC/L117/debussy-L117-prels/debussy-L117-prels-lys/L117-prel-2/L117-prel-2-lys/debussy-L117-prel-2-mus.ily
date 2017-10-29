\version "2.18.2"


%%-----------------------------------------------------------------------------
% Corrections from the source
%
% * bar 31, first and third eighth, lower voice in right hand, durations should
%   be 64ths like the upper voice
% * bar 40, lower voice in the left hand should be tied to next measure
% * bar 42, fourth eighth, right hand, should be treble clef
% * bar 51, second quarter, d''' should be tied to next measure
% * bar 62, triplets at the end of the bar need to be 64th notes, not 32nd
%%-----------------------------------------------------------------------------


upperStaffTop = \relative c''' {
  \tempo "Modéré" 8 = 88
  \oneVoice
  \tupletBracketOff
  
  r4^\dansUnRythme <gs e>8-- ~ ( q32 <fs d> <e c> <d bf> |
  <c af>8.. <c' gs>32 <bf fs>4 ) |
  r4 <gs e>8-- ~ ( q32 <fs d> <e c> <d bf> |
  <c af>4 ~ q16 <bf fs> <af e> <fs d> ) |
  <e c>2 ~ |
  q4 r |
  \clef bass
  r8 af,= ( bf <c c,> ) ~ |
  
  \barNumberCheck #8
  q4 ~ q8 r |
  r8 s4. | 
  \voiceOne 
  r4 \clef treble \slurDown <gs''='' e>8-- ^\tresDoux ~ ( 
    q32 <fs d> <e c> <d bf> | 
  <c af>4 ) r4 |
  \oneVoice
  \stemUp \slurDown
  <gs' e>8-- ~ ( q32 <fs d> <e c> <d bf> <c af>4 ~ |
  q16 <bf fs>-. <af e>-. <fs d>-. ) <e c>4 ~ |
  q4 r |
  \stemNeutral \slurNeutral
  <gs' e>8-- ~ ( q32 <fs d> <e c> <d bf> <c af>4 ~ |
  
  \barNumberCheck #16
  q8.. <c' gs>32 <bf fs>4 ) |
  <gs e>8-- ~ ( q32 <fs d> <e c> <d bf> <c af>4 ~ |
  q8.. <d bf>32 ) q8..-- ( <e c>32 ) |
  q8..-- ( <fs d>32 ) 
  << 
    { 
      s4 |
      s2 |
      s4 <d d'>8 ( r |
      <d' d'>8 ) r 
    } 
    \\ 
    {  
      <fs, d>4-- ~ ( |
      q8 [ <e c> <fs d>8. <gs e>16 ] |
      q2 ) | 
      s4
    } 
  >>
  \slurUp \stemUp
  r8 af,='32 ( bf af fs |
  af16 <e c'>16 <fs bf>8 ~ q16 ) r af32 ( bf af fs | 
   
  \barNumberCheck #24
  af16 <e c'>16 <fs bf>8 ~ q16 ) r 
    \subGroupEighth gs32 ( [ c e gs \subGroupOff |
  \tupletDown
  <d fs>32 <c e> <bf d>8. ] ) ~ q8
    \tweak TupletNumber.Y-offset #-2
    \tuplet 3/2 { <af c>16 ( <bf d> <af c> } |
    \break
  \acciaccatura { <fs bf>8 } <e af>4. )
    \tuplet 3/2 { <fs bf>16^- ( q^- <e af>^- } |
  \acciaccatura { <fs bf>8 } <e af>2 ) ~ |
  \markAlignLeft \mark "a Tempo" q4 r8 af32 ( [ bf af fs ) |
  af16-. ( c-. ) ] bf32 ( [ d c e af8-. ] ) af,32 ( bf af fs |
  s8 ) bf32 ( d c e af8 ~ af32 bf af bf ) |
  c8 ( [ d64 df c16. ] ) c8 ( d64 df c16. ) |
  
  \barNumberCheck #32
  <af c>2-- |
  \repeat unfold 5 {
    d,16-. ( [ e-. d'-. e,-. ] ) d-. ( [ e-. d'-. e,-. ] ) |
  }
  <<
    { <af,,= d fs>16 ( [ <bf fs' bf> <c af'>8 ] ~ q16 c' bf d ) | }
    \\
    { s8 \flagHide \stemUp \tieUp fs,8 ~ \stemDown fs4 | }
  >>
  <<
    { 
      <af, d fs>16 ( [ <bf fs' bf> <c af'>8 ] ~ q16 c' bf d ) | 
    }
    \\
    { 
      s8 \flagHide \stemUp \tieUp fs,8 ~ \stemDown fs4 | 
    }
  >>
  
  \barNumberCheck #40
  \set tieWaitForNote = ##t
  \stringSpanner "Serrez" { af16 ( [ c bf d ] ) af16 ~ ( c bf d ) ~ } |
  <d af>8 r \clef bass s4 |
  s8 -\tweak X-offset #-7 -\tweak Y-offset #5 ^\markup \huge "En animant" 
    s s af32^- bf af gf |
  af32^- bf af gf ef4^- 
    \stringSpanner "Emporté" { <af' af,>32 ( <bf bf,> <af af,> <gf gf,> |
  <af af,>32 [ <bf bf,> <df df,> <ef ef,> <af df, af>8 ] ~ }
    \stringSpanner "Cédez" { q16 <ef ef,>_. <df df,>_. <bf bf,>_. ) } |
    \break
  \stringSpanner "Très retenu" { <df, df,>32 ( ef <ef ef,>8 <gf gf,>16 ) 
    <df df,>32 ( ef <ef ef,>8. ) |
  <df df,>32 ( ef <ef ef,>8 <bf' bf,>16 ) <df, df,>32 ( ef <ef ef,>8. ) ~ |
  q4 r } |
  \bar "||"
  
  \barNumberCheck #48
  \key c \major
  r8
    -\tweak X-offset #-7.2
    -\tweak Y-offset #-5
    _\markup \override #'(baseline-skip . 2.0) \tiny \italic 
      \column { "(comme un très" "léger glissando)" }
    <<
      {
        \voiceOne \staffDown fs,,= [ \staffUp d''16-. ]  
      }
      \new Voice {
        \voiceTwo
        \scaleDurations 4/11 {
          \staffDown \stemUp \shapeSlurNine fs,,=16. ( \graceOn 
          \set stemLeftBeamCount = #3
          \set stemRightBeamCount = #1
          gs32 
          \set stemLeftBeamCount = #1
          bf c 
          \set stemRightBeamCount = #1
          d 
          \staffUp \stemDown 
          \set stemLeftBeamCount = #1
          fs gs bf c )
        }
      }
    >>
    r16 r8 |
  r8
    <<
      {
        \voiceOne \staffDown af,= [ \staffUp e''16-. ] 
      }
      \new Voice {
        \voiceTwo
        \scaleDurations 4/11 {
          \staffDown \stemUp \shapeSlurTen af,,=16. ( \graceOn 
          \set stemLeftBeamCount = #3
          \set stemRightBeamCount = #1
          bf32 
          \set stemLeftBeamCount = #1
          c d 
          \set stemRightBeamCount = #1
          e 
          \staffUp \stemDown 
          \set stemLeftBeamCount = #1
          af bf c d )
        }
      }
    >>
    r16 r8 |
  s2 * 4 |
  <bf'='' c gs'>8-. ( [ <fs gs e'>-. <bf, c gs'>-. 
    \configLVTiesThree <bf' c gs'>-. ] ) \laissezVibrer |
  r8
    <<
      {
        \voiceOne \staffDown fs,,= [ \staffUp d''16 ]  
      }
      \new Voice {
        \voiceTwo
        \scaleDurations 4/11 {
          \staffDown \stemUp \shapeSlurTwelve fs,,=16. ( \graceOn 
          \set stemLeftBeamCount = #3
          \set stemRightBeamCount = #1
          gs32 
          \set stemLeftBeamCount = #1
          bf c 
          \set stemRightBeamCount = #1
          d 
          \staffUp \stemDown 
          \set stemLeftBeamCount = #1
          fs gs bf c )
        }
      }
    >>
    r16 r8 |
    
  \barNumberCheck #56
  \ottavaEight 
    <c' d bf'>8_. _( [ <af bf fs'>_. <c, d bf'>_. <c' d bf'>_. ] ) \ottava #0
  r8
    <<
      {
        \voiceOne \staffDown af,,= [ \staffUp e''16-. ] 
      }
      \new Voice {
        \voiceTwo
        \scaleDurations 4/11 {
          \staffDown \stemUp \shapeSlurThirteen af,,=16. ( \graceOn 
          \set stemLeftBeamCount = #3
          \set stemRightBeamCount = #1
          bf32 
          \set stemLeftBeamCount = #1
          c d 
          \set stemRightBeamCount = #1
          e 
          \staffUp \stemDown 
          \set stemLeftBeamCount = #1
          af bf c d )
        }
      }
    >>
    r16 r8 |
  <bf' c fs>8_. ^\tresApaise _( <fs gs e'>_. ) s4 |
  s2 |
  <bf c fs>8_. _( <fs gs e'>_. ) s4 |
}

upperStaffBottom = \relative c' {
  s2 * 7 | 
  
  \barNumberCheck #8
  s2 |
  \clef bass \slurUp \tieNeutral 
  s8 af ( bf <c c,> ) ~ | 
  q4 s4 |
  s2 * 5 |
  
  \barNumberCheck #16
  s2 * 5 |
  r4 \stemDown d8-. ( r |
  d'8-. ) r \stemNeutral s4 |
  s2 |
  
  \barNumberCheck #24
  s2 * 2 |
  \textSpannerUp
  s4. \stringSpanner "Cédez" { s8 |
  s4.. s16 } | 
  s2 |
  s8 bf='8 r8 s8 |
  s8 bf8 r4 |
  \slurDown fs'64 ( g af16. ) s8 fs64 ( g af16. ) s8 |
  
  \barNumberCheck #32
  \stringSpanner "Cédez" { s16 s s s s s s s } |
  r8 af=''-- _( [ bf-- c-- ] ~ |
  c4 d-- ) ~ |
  d8 \( e-- d-- c-- |
  bf16 af bf4-- ( af8 ) \) |
  af2 |
  s2 |
  s2 |
  
  \barNumberCheck #40
  \voiceTwo 
  fs,4-- fs-- ~ |
  \flagHide \stemUp \stringSpanner "Cédez" { fs8 s s16 s s s } \stemDown |
  s2 |
  s4. ef'16 df |
  ef16 gf s4. |
  af,16 gf8. af16 gf8. |
  af16 gf8. af16 gf8. ~ |
  \stemUp gf4 s |
  
  \barNumberCheck #48
  s2 |
  s2 |
  \voiceOne
  r8 ^\legendThree af'=''-. \( [ bf-. c-. ] ~ |
  c4 d-- ~ |
  d8 [ e-. d-. c-. ] |
  bf16-. af-. bf8-- ^\> ~ bf \! _( af _~ ) \) |
  \voiceTwo
  af2 |
  s2 |
  
  \barNumberCheck #56
  s2 |
  s2 |
  r4 <gs e>8-- ~ ^( q32 <fs d> <e c> <d bf> |
  <c af>8.. <c' gs>32 <bf fs>4 ) |
  r4 <gs e>8^- ~ ^\( q32 <fs d> <e c> <d bf> |
  \stemUp <c af>4 q16 <fs, bf>8 <e af>16 |
  \tupletBracketOff
  \acciaccatura { <d fs>8 ( } <c e>4-- ) \) 
    \breathFermata
    \once \override BreathingSign.Y-offset = #3  \breathe
    \acciaccatura { <d fs>8 } <c e>8.. [ 
    \once \override BreathingSign.Y-offset = #4 \breathe
    \tuplet 3/2 { <d fs>64-. ( <d fs>-. <c e>-. ) ] } |
  \acciaccatura { <d fs>8 } <c e>4-- 
    \once \override BreathingSign.Y-offset = #3 \breathe 
    q4-- ~ |
  q2 ^\fermata |
  \bar "|."
}

lowerStaffTop = \relative c {
  \voiceOne
  R1 * 2 |
  r4 s | 
  s2 |
  r8 \shapeSlurOne af _\touPP _( [ bf ] ) s |
  
  \barNumberCheck #8
  s2 | 
  r8 \shapeSlurOne af  _( [ bf ] ) s |
  s4 \shapeSlurTwo <d'=' d,>-- ~ ( |
  q8 <e e,> <d d,> <c c,> |
  <bf bf,>16 <af af,> <bf bf,>4 <af af,>8 ) |
  q2 |
  q2 |
  r8 \clef treble <af' e c af>_. [ _( <bf fs d bf>_. 
    \configLVTiesOne <c af e c>_. ) ] \laissezVibrer \clef bass |
    
  \barNumberCheck #16
  s2 |
  r8 \clef treble <af e c af>_. [ _( <bf fs d bf>_. 
    \configLVTiesOne <c af e c>_. ) ] \laissezVibrer \clef bass |
  s2 |
  r8 \clef treble <af e c af>_. [ _( <bf fs d bf>_. 
    \configLVTiesOne <c af e c>_. ) ] \laissezVibrer \clef bass |
  s2 |
  s2 |
  s4 \voiceFour \staffUp d,='4-- ~ |
  d8. ( \staffDown c16 ) fs,8. ( c'16 ) |
  
  \barNumberCheck #24
  \staffUp d8. ( \staffDown c16 ) fs,8. ( c'16 ) |
  d8. ( c16 ) fs,8. ( c'16 ) |
  \staffUp d8. ( \staffDown c16 ) fs,8. ( c'16 ) |
  \staffUp d8. ( \staffDown c16 ) fs,8. ( c'16 ) |
  d8. ( c16 ) fs,8. ( \staffUp c'16 ) |
  d16 e \staffDown \clef treble \stemUp fs-. gs-. bf-. c-. d-. e-. |
  \clef bass \staffUp \stemDown <d, af'>16-. <e c'>-. 
    \staffDown \stemUp \clef treble fs-. gs-. bf-. c-. d-. e-. |
  \stemDown d16 ( e8 ) e16-. d16 ( e8 ) e16-. |
  
  \barNumberCheck #32
  \stemUp d16-. ^\p ( e-. \staffUp \stemDown d'^. e,^. )
    \staffDown \stemUp d16-. %{ ^\markup { \whiteout \italic "dim." } %} ( 
    e-. \staffUp \stemDown d'^. e,^. ) 
  \staffDown \clef bass
  <<
    \new Voice {
      \voiceOne 
      r8 \clef treble <af, e c af>8-. ( <bf fs d bf>-. <c af e c>-. ~ |
      q4 <d bf fs d>4-- ) ~ |
      q8 \shapeSlurEight <e c af e>-. \( <d bf fs d>-. <c af e c>-. |
      <bf fs d bf>16-. <af e c af>-. <bf fs d bf>4-- ( <af e c af>8 ) \)
    }
    \new Staff \with { createSpacing = ##f \omit TimeSignature } {
      \voiceTwo bf,,,=,,2 ~ |
      \cueClefUnbrokenVisibility
      \cueBassClefLow bf2 |
      \cueBassClefLow bf2 ~ |
      \cueBassClefLow bf2 |
    }
  >>
  \clef treble
  \stemUp
  <af'''=' e c af>2 |
  \clef bass
  \stemDown \slurUp
  d,,8.\rest d16 ( d'8 c16 bf ) |
  d,8.\rest d16 ( d'8 c16 bf ) |
  
  \barNumberCheck #40
  \subGroupEighth
  \tupletBracketOff
  d16 ( [ c \tuplet 3/2 { bf16 af fs ) ] } 
    d'16 ( c \tuplet 3/2 { bf16 af fs ) } |
  \subGroupOff
  d'16 c bf af ~ 
    \tuplet 3/2 { \stemUp af8 \stemNeutral \staffUp bf \tieUp af ~ } |
  \bar "||"
    
  \key bf \minor
  \shapeSlurSeven af32 [ ( bf af gf \staffDown 
    <<
      {
        \voiceTwo \stemUp ef8 ) ] ~ ef4 
      }
      \new Voice {
        \voiceOne
        \scaleDurations 4/14 { 
          \staffDown
          \shapeSlurSix ef32 [ \(
          \graceOn gf af bf df \staffUp \stemDown \clef treble 
          ef \< gf af bf df ] \stemUp ef gf af bf \graceOff 
        }
        \stemNeutral df16^> \! ( [ bf ] ) \) s8 |
      }
    >>
  s8
    <<
      {
        \voiceTwo \stemUp \autoBeamOff \crossStaff { 
          ef,,,=4
        }
        \autoBeamOn
      }
      \new Voice {
        \voiceOne
        \subGroupThirtySecond
        \scaleDurations 4/19 {  
          \staffDown
          \shapeSlurFive ef32 [ ^\(
          \graceOn gf af bf 
          \set stemRightBeamCount = #1
          df
          \set stemLeftBeamCount = #1
          \staffUp \stemDown ef gf af bf 
          \set stemRightBeamCount = #1
          df
          \set stemLeftBeamCount = #1
          \staffDown \clef treble \stemUp ef gf af bf 
          \set stemRightBeamCount = #1
          df
          \set stemLeftBeamCount = #1 \staffUp \ottavaAdjustOne \ottavaEight
          \stemDown ef gf af bf ] \graceOff
        }
        \subGroupOff
        \stemNeutral df16 %{ -\tweak padding #1 %} ^> ( [ bf ] ) \) \ottava #0
      }
    >>
    \clef bass \stemDown <bf,,,= ef,>16 _( <df gf,> |
  <ef bf>16 [ <gf df> \staffUp <df' af ef>8 ] ) ~ q4 \staffDown |
  \voiceThree <af, df,>16 ( <gf ef>8. ) <af df,>16 ( <gf ef>8. ) |
  <af df,>16 ( <gf ef>8. ) <af df,>16 ( <gf ef>8. ) ~ |
  q4 r |
  
  \barNumberCheck #48
  s2 |
  s2 |
  fs8 \rest 
    \scaleDurations 4/11 {
      \stemUp \graceOn \shapeSlurFifteen fs16. (  
      \set stemLeftBeamCount = #3
      \set stemRightBeamCount = #1
      gs32 
      \set stemLeftBeamCount = #1
      bf c 
      \set stemRightBeamCount = #1
      d 
      \staffUp \stemDown 
      \set stemLeftBeamCount = #1
      fs gs bf c ) \graceOff \staffDown
    }
    s4 |
  af,8 \rest
    \scaleDurations 4/11 {
      \stemUp \graceOn \shapeSlurSixteen af16. (  
      \set stemLeftBeamCount = #3
      \set stemRightBeamCount = #1
      bf32 
      \set stemLeftBeamCount = #1
      c d 
      \set stemRightBeamCount = #1
      e 
      \staffUp \stemDown 
      \set stemLeftBeamCount = #1
      af bf c d ) \staffDown \graceOff
    }
    s4 |
  fs,,8 \rest
    \scaleDurations 4/11 {
      \stemUp \graceOn \shapeSlurSeventeen fs16. ^(  
      \set stemLeftBeamCount = #3
      \set stemRightBeamCount = #1
      gs32 
      \set stemLeftBeamCount = #1
      bf c 
      \set stemRightBeamCount = #1
      d 
      \staffUp \stemDown 
      \set stemLeftBeamCount = #1
      fs gs bf c ) \staffDown \graceOff
    }
    s4 |
  af,8 \rest
    \scaleDurations 4/11 {
      \stemUp \graceOn \shapeSlurEleven af16. _(  
      \set stemLeftBeamCount = #3
      \set stemRightBeamCount = #1
      bf32 
      \set stemLeftBeamCount = #1
      c d 
      \set stemRightBeamCount = #1
      e 
      \staffUp \stemDown 
      \set stemLeftBeamCount = #1
      af bf c d ) \staffDown \graceOff
    }
    s4 |
  fs,,8 \rest <c fs bf>^. ^( [ <e bf' d>^. 
    \configLVTiesTwo <fs c' e>^. ] ) \laissezVibrer
  s2 |
  
  \barNumberCheck #56
  fs8 \rest <d af' c>^. [ ^( <fs c' e>^. <af d fs>^. ) ]
  s2 |
  fs8 \rest <c fs bf>^. [ ^( <e bf' d>^. <fs c' e>^. ) ] 
  fs8 \rest <d af' c>-. [ ( <fs c' e>-. <af d fs>-. ) ]
  fs8 \rest <c fs bf>-. [ ( <e bf' d>-. <fs c' e>-. ) ]
  fs8 \rest <d af' c>-. [ ( <fs c' e>-. ) ] r8 |
  <<
    { \voiceFour fs4 fs | fs4 }
    \new Voice {
      \voiceThree
      \mergeDifferentlyDottedOn
      \scaleDurations 8/12 {
        \stemUp \shapeSlurFourteen fs16. _( [
        \set stemLeftBeamCount = #3
        \set stemRightBeamCount = #1
        \graceOn
        gs32 
        \set stemLeftBeamCount = #1
        bf c 
        \set stemRightBeamCount = #1
        d 
        \staffUp \stemDown 
        \set stemLeftBeamCount = #1
        fs gs bf c ] )  
        \graceOff \staffDown s
      }
      \scaleDurations 8/12 {
        \stemUp \shapeSlurFourteen fs,,16. _( [
        \set stemLeftBeamCount = #3
        \set stemRightBeamCount = #1
        \graceOn
        gs32 
        \set stemLeftBeamCount = #1
        bf c 
        \set stemRightBeamCount = #1
        d 
        \staffUp \stemDown 
        \set stemLeftBeamCount = #1
        fs gs bf c ] ) 
        \staffDown \graceOff s
      }
      |
      \scaleDurations 8/12 {
        \stemUp \shapeSlurFourteen fs,,16. _( [
        \set stemLeftBeamCount = #3
        \set stemRightBeamCount = #1
        \graceOn
        gs32 
        \set stemLeftBeamCount = #1
        bf c 
        \set stemRightBeamCount = #1
        d 
        \staffUp \stemDown 
        \set stemLeftBeamCount = #1
        fs gs bf c ] ) 
        \staffDown \graceOff s
      }
    }
  >>
}

lowerStaffBottom = \relative c, {
  \voiceTwo
  s2 * 4 |
  s4 bf-. \pp ( |
  bf8-. bf-. r bf-. |
  bf4-. ) r |
  
  \barNumberCheck #8
  bf8-. ( bf-. r bf-. |
  bf4-. ) r |
  bf8-. ( bf-. r bf-. |
  bf4-. ) r _\> |
  s4 s8. s16 \! |
  r8 bf4-. ( bf8-. ) |
  r8 bf4-. ( bf8-. |
  bf4-. ) s |
    
  \barNumberCheck #16
  bf8-. ( bf-. r bf-. |
  bf8-. ) s4. |
  bf8-. ( bf-. r bf-. ) |
  bf4-. s |
  bf8-. ( bf-. r bf-. ) |
  bf2 ~ |
  bf2 |
  bf2 |
  
  \barNumberCheck #24
  bf2 ~ |
  bf2 |
  bf2 |
  bf2 ~ |
  bf2 |
  bf2 |
  bf2 | 
  s2 |
  
  \barNumberCheck #32
  s2 * 5 |
  s4 \clef bass bf ~ |
  bf2 |
  bf2 ~ |
  
  \barNumberCheck #40
  bf2 ~ |
  bf2 |
  \key bf \minor
  << 
    { 
      \voiceFour 
      bf2 |
      bf2 |
    }
    \new Voice {
      \voiceThree s4.
      \autoBeamOff \crossStaff { 
        af''32 _( bf af gf ) |
        \break
        af32 _( bf af gf ) s4. |
      } \autoBeamOn 
    }
  >>
  s2 |
  r8 bf,,=,, r bf |
  r8 bf r bf |
  r8 bf r bf |
  
  \barNumberCheck #48
  \key c \major
  \repeat unfold 6 {
    bf4.-- bf'8-. |
  }
  bf,2-- |
  bf4.-- bf'8-. |
  
  \barNumberCheck #56
  bf,2-- |
  bf4.-- bf'8-. |
  \repeat unfold 4 {
    bf,4-- s4 |
  }
  s2 \sustainOn |
  s2 |
  \voiceThree R2 \sustainOff |
}

dynamics = {
  s4 s4 -\pTresDoux |
  s4 \< s4 \> |
  s4 \! s8 \p s8 \> |
  \dynamicAdjustOne s4 \piuP s16 s \> s s \! |
  s2 |
  s2 |
  s2 -\ppExpr |
  
  \barNumberCheck #8
  s2 |
  s2 |
  s4 \< s4 \! |
  s2 |
  s2 |
  s16 s \> s s s4 \! |
  s2 |
  s2 \pp |
  
  \barNumberCheck #16
  s4 \< s4 \> |
  s2 \pp |
  s4 \< s \p \< |
  s4 \p \< s \! |
  s4 s \> |
  s4 \! s \pp |
  s4 s -\ppTresSouple |
  \hairpinAdjustOne s16 \< s s8 \! s s \pp |
  
  \barNumberCheck #24
  \hairpinAdjustOne s16 \< s s8 \! s s32 \< s s s \! |
  s4. s32 \> s s s \! |
  s4. s32 \> s s s \! |
  \dynamicAdjustTwo s2 \pp |
  s4 s8 s \p |
  s8 s \< s \! s \p |
  s8 s \< s s32 s s s \!
  s16 \< s \! s8 s16 \< \p s \! s8 | 
  
  \barNumberCheck #32
  s4 \textAdjustOne s -\markup { \italic "dim." } |
  s2 \pp |
  s2 |
  s2 |
  s8 s4. \> |
  s2 \pp |
  s4 \p s \< |
  s4 \p s \< |
  
  \barNumberCheck #40
  s16 \< s s s \! s \< s s s \! |
  s2 ^\markup { \italic "dim. molto" } |
  s8 \p s s \dynamicAdjustThree s \mf |
  s8 s32 s -\tweak extra-offset #'(1 . -2) -\cres 
    s -\tweak extra-offset #'(0 . 7) ^\rapide
    s -\tweak extra-offset #'(2 . 0) -\molto s8  s \mf \< |
  s8 s -\tweak X-offset #-2 \f s -\tweak extra-offset #'(0 . -1) -\molto \> s |
  s16 \p \< s8. s16 \piuP \> s8 s16 \! |
  s16 \p \< s8. s16 \piuP \> s8 s16 \! |
  s2 |
  
  \barNumberCheck #48
  s2 \pp |
  s2 |
  s2 \hidePP |
  s2 * 3 |
  s4 \pp s8 \> s \! |
  s2 |
  
  \barNumberCheck #56
  s4 \pp s8 \> s \! |
  s2 |
  s2 \piuPP
  s2 * 6 |
}

upperStaff = {
  \clef treble
  <<
    \new Voice { \voiceOne \upperStaffTop }
    \new Voice { \voiceTwo \upperStaffBottom }
  >>
}

lowerStaff = {
  \clef bass
  <<
    \new Voice { \voiceThree \lowerStaffTop }
    \new Voice { \voiceFour \lowerStaffBottom }
  >>
}