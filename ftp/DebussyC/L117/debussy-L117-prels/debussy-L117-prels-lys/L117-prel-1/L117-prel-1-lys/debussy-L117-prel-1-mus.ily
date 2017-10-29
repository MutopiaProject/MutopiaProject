\version "2.18.2"

upperOne =  \relative c' {
  \tempo "Lent et grave" 4=44
  <d f>4-.(^\legendOne-\hideP
     <ees g>-. <f a>-.)                       | % 1
  <d f>4-.( <ees g>-. <f a>-.)                | % 2
   \shiftOn
  d4 d ees                                    | % 3
   \timeSigParenth \numericTimeSignature
   \time 4/4 \shapeSlurTwo
  e4^( f8^.) <f'bes f'>-.[(-\hidePP <d a'd>-.
     <a d a'>-.<f a d f>-.<g bes d g>-.]      | % 4
   \mBreak
   \timeSigParenth \timeSigShowBeg \time 3/4
  <e g c e>-.[<d f a d>-.<d f bes d>-.<c e g c>-.] \stemNeutral <f a c f>4)\ten | % 5
   \bar "||"
  a'8\rest \stemUp <f,bes d f>4-.( \preBrokenBeam <g b ees! g>-.<a cis f a>8-.) | % 6
  a'8\rest <f, bes!d f>4-.(<g b ees g>-. \preBrokenBeam <a cis f a>8-.)         | % 7
   \mBreak
  a'8\rest <f g g'>4-.<f g g'>-.<f g g'>8-.   | % 8
   \timeSigParenth \numericTimeSignature \time 4/4
  a8\rest <f g g'>4-. \shapeSlurThi <f bes f'>8-.[\(-\hideMF
    <d a'd>-.<a d a'>-.<f a d f>-. \shiftOff \ignoreClashOnce <g bes d g>-.] | % 9
  <e g c e>-.[<d f a d>-.<d f bes d>-.<c e g c>-.] \stemNeutral <f a c f>2\)\ten | % 10
   \bar "||" \timeSigParenth \timeSigShowBeg \time 3/4 \stemUp
  \shapeSlurCin <g'g'>4\ten\(-\hidePP <f f'>8.
     \moveScriptOne <d d'>16(^\legendTwo <c c'>8.) <bes bes'>16( | %11
  <g g'>8.) <f f'>16( \moveNoteOne <d d'>2)\) | %12
  \shapeSlurSix <c''c'>4\(<bes bes'>8.<g g'>16(<f f'>8.)<ees ees'>16( | %13
  <c c'>8.) <bes bes'>16( \moveNoteOne <g g'>2)\)                     | %14
  a'8\rest <e'c e,>4-.-\hideMF <cis a cis,>-. <dis b dis,>8-.         | %15
   \timeSigParenth \time 4/4
  r8 <e c e, >8-. a,8\rest <a g a'>4.-.-\hideF a8\rest <c c,>8-. | %16
   \bar "||" \timeSigParenth \timeSigShowBeg \time 3/4
  a8\rest  <a g a'>4-.<c d,c>-. a8\rest      | %17
  a8\rest \moveDynFif <aes c ees! aes>8\ten^\pp~ <aes c ees aes>2 | %18
  a8\rest \moveDynThi <g bes d g>8^\ten^\piuPP~ <g bes d g>2 | %19
  a8\rest \moveDynFou <f a c f>8^\ten^\ppp^~ <f a c f>2\breatheFermata  | %20
  d,4_\(-\hideP f c                          | %21
   \mBreak
  ees2 g4\)                                  | %22
  \shapeSlurSevt <d'd,>4\( <f f,> <a!a,!>    | %23
  <cis cis,>4 <e e,> <gis gis,>\)            | %24
  b,,8\rest \stemDown <f'd bes!f>8-.[ <g!ees!b g!>8.( <aes e c aes>16] <a f cis a>4) | %25
   \mBreak
  b,8\rest <f'd bes!f>-.[ <g ees!b g>8.( <aes e c aes>16] <a f cis a>4) | %26
  g,8\rest <a'g,a>8_\ten-\hidePP_~<a g,a>2   | %27
  g,8\rest <a'g,a>8_\ten_~<a g,a>2           | %27
  \clef bass <d,,bes f d>2.\ten-\hideF       | %28
  <d~bes~f_~d_~>2.\ten-\hidePP               | %29
  <d bes f d>2^\fermata d,4\rest             | %30
   \bar "|."
}

upperTwo =  \relative c' {
  \preBrokenBeam \shiftNoteRight
  \shapeSlurEle bes4(-\hideP b8. c16 cis4)   | % 1
  \shapeSlurOne
  bes!( b8. c16 cis8. f16 \stemUp            | % 2
  \shiftNoteNone
  g8.)^\ten^( a16^.) g8.^\ten^( a16^.) g8.^\ten^( a16^.) | % 3
  g8.^\ten a16 s2.                           | % 4
  s2.                                        | % 5
  bes,4 \alignBeamTwo \preBrokenBeamOne
       b8.-\breakBeamOne c16 cis4            | % 6
  bes!4 \alignBeamTwo \preBrokenBeamOne 
       b8.-\breakBeamTwo c16 \alignBeamTre
       \preBrokenBeamTwo cis8.-\breakBeamTre f16 | % 7
  \alignBeamCin \preBrokenBeamTre <d g>8.-\breakBeamQtr 
       a'16 \preBrokenBeamTre <d, g>8.-\breakBeamCin
       a'16 \preBrokenBeamTre <ees g>8.-\breakBeamSix a16  | % 8
  \preBrokenBeamTre <e g>8.-\breakBeamSep bes'16 \alignBeamRev
       f8 s2 \tag #'played {s8} \tag #'printed { \spacerOne } | % 9
  s1 \time 3/4 \stemDown                     | %10
  g''8\rest <c g ees c>4_.-\hidePP <d a f d>_.<ees^~ bes^~ g~ees~>8_. | %11
  <ees bes g ees>_.[<f c a f>_.<g d bes g>_.
      <a e c a>_.<bes f d bes>_.<c g ees c>_.] | %12
  g,8\rest <aes f c aes>4_.<bes f d bes>_.<c g ees c>8_.~  | %13
  <c g ees c>8[ <des aes f des>_. \moveDynTwe 
      <ees bes g>_.^\< <f c aes>_.<g d b g>_.<bes f des bes>_.]\! | %14
  \shapeSlurQtr <g,g,>4(-\hideMF <e e,>8. <f f,>16 <fis fis,>8. <b b,>16) | %15
  <g g,>8.( <c c,>16) \shapeSlurSep <c d c,d>4.(-\hideF
      <e e,>8[ <g, a,g>8. <c c,>16])         | %16
   \mBreak
  <c d c,d>8.( <e e,>16 <g, a,g>4) \shapeSlurNint <c c,>\ten~\( | %17
  <c c,>4. <d d,>4-\hideP <f f,>8\)          | %18
  \shapeSlurTwen <c c,>4.\( <d d,>4 <f f,>8\)| %19
  <c c,>2._\ten-\hidePP                      | %20
  s2. s2.                                    | %21-22
  g,8\rest <bes'f>4_. <des aes>_. <f c>8_.   | %23
  r8 <a e>4_. <c g>_. <e b>8_.               | %24
  s2 \stemUp g8\rest \moveDynEle <f cis a f>8^.^\pp^\laissezVibrer | %25
   \mBreak
  s2 g8\rest \moveDynEle <f cis a f>8^.^\pp  | %26
  a,4\rest e'\rest \stemDown <f f,>^.^\ppp   | %27
  a,4\rest e'\rest \stemUp <f f,>^.          | %28
}

upperTre = \relative c {
  \staffDown
  \crossStaff {
  f4-\hideP g a                              | % 1
  f4 g a                                     | % 2
  \shiftNoteRightTwo
  <f g> <f g> <f g>                          | % 3
  <f g> \shiftNoteNone <f bes>8 }
      \staffUp \stemDown \alignBeamOne \shapeSlurTwe
      <d''bes f d>_.[_(-\hidePP <a f d a>_. \staffDown
      <f,a d f>_.<d a' d>_.<g bes d>_.])     | % 4
  s2. \stemUp                                | % 5
  bes,4 \crossStaff { 
      \autoBeamOff b8. c16 cis4 }            | % 6
  bes!4 \crossStaff { b8. c16 cis8.f16       | % 7
  \shapeSlurTwUn <f g>8._( a16) \shapeSlurTwUn 
      <f g>8._( a16) \shapeSlurTwUn <f g>8._( a16) | % 8
  <f g>8._( bes16) <bes f>8 } \staffUp \alignBeamQtr
     \shapeSlurTre \stemDown <d' bes f d>_.[_\(-\hideMF
     <a f d a>_. \staffDown \stemUp
     <f,a d f>-. <d f a d>-. <g bes d>-.]    | % 9
  \stemNeutral <c,g'c>_.[<d a'>_.<bes f'bes>_.
     <c g'>_.]<f,c'a'>2_\ten\) \stemUp       | %10
  r8 <g' ees c>4-.-\hidePP <a f d>-.<bes g ees>8-.~ | %11
  <bes g ees>8-.[<c a f>-.<d bes g>-.<e c a>-.
     <f d bes>-.<g ees c>-.]                 | %12
  r8 <ees,c aes>4-.<f d bes>-.<g ees c>8-.~  | %13
  \alignBeamSix <g ees c>8[ <aes f des>-. <ees'bes g ees>-._\< 
     <f c aes f>-.<d!b g>-.<f des bes>-.]\!  | %14
   \autoBeamOn
  g,,4\(-\hideMF e8. f16 fis8. b16\)         | %15
  g8.( c16) <c d>4.(-\hideF e8[ g,8. c16])   | %16
  <c d>8.( e16 <g, a>4) \shapeSlurFou c4^\ten\(~  | %17
  c4.-\hidePP d4 f8\)                        | %18
  c4.( d4 f8)                                | %19
  c2.^\ten                                   | %20
  \shapeSlurFif d4\(-\hideP f c              | %21
   \mBreak
  ees2 g!4\)                                 | %22
  \shapeSlurSixt d4\( f a                    | %23
  \clef treble cis4 e gis\)                  | %24
  \clef bass
  f,8\rest <d'bes f>8^.[ \shapeSlurOct 
      <ees!b g!>8.( <e c aes>16]<f cis a>4)  | %25
   \mBreak
  f,8\rest <d'bes!f>8^.[ \shapeSlurOct 
      <ees!b g>8.( <e c aes>16]<f cis a>4)   | %26
  c8\rest <f cis g>8^\ten-\hidePP~<f cis g>2 | %27
  c8\rest <f cis g>8^\ten~<f cis g>2         | %28
  <bes,,f bes,>2.-\hideF                     | %29
  <bes f bes,>2.~-\hidePP                    | %30
  <bes f bes,>2\fermata f'4\rest             | %31
    
}
upperQtr = \relative c''' {
  s2. s2. s2.                                | % 1-3
  f4\rest f8\rest s8 s2                      | % 4
  s2. \staffDown \stemUp                     | % 5
  s8 <f,,,bes d>4^.-\hidePP <g b ees>^.<a cis f>8^.| % 6
  s8 <f bes!d>4^.<g b ees>^.<a cis f>8^.     | % 7
  s2.                                        | % 8
  \time 4/4 s1 s1                            | %9-10
  \time 3/4 \repeat unfold 5 { s2. |}         %11-15
  s4. \staffUp \stemDown \moveNoteTwo <a'g>4-\hideF s4 <d,c>8 | %16
  s8 \moveNoteTwo <g a>4 \moveNoteTwo <c,d> s8| %17
}

upperStaff = <<{ \upperOne }\\{ \upperTwo }\\{ \upperTre }\\{ \upperQtr }>>

lowerStaff = \relative c {
   \setRestDirDown \stemDown
  <bes bes,>4_._(-\hideP <a a,>_. <f f,>_.)  | % 1
  <bes bes,>4_._( <a a,>_. <f f,>_.)         | % 2
  <bes bes,>4_._( <b b,>_. <c c,>_.)         | % 3
   \timeSigParenth \numericTimeSignature
  <cis cis,>4_._( <d d,>2_.) s4              | % 4
   \timeSigParenth \timeSigShowBeg
  <c g'c>8_.[_( <d a'>_.<bes f'bes>_.
     <c g'>_.] \stemNeutral <f,c'a'>4)_\ten  | % 5
  \stemDown bes,_._( <a a'>_. <f' f,>_.)     | % 6
  bes,_._( <a a'>_. <f' f,>_.)               | % 7
  <bes! bes,!>_._(<b b,>_.<c c,>_.)          | % 8
   \timeSigParenth
  <cis cis,>4_._( <d d,>2_.) s4              | % 9
  s1                                         | %10
   \mBreak
   \timeSigShowBeg \timeSigParenth  \time 3/4
  <f,f,>2.-\hidePP_~                         | %11
  <f f,>2.                                   | %12
  <f f,>2._~                                 | %13
   \mBreak
  <f f,>2.                                   | %14
  c8\rest <c c'>4_.-\hideMF <a a'>_.<b b'>8_.| %15
  \timeSigParenth \time 4/4
  c8\rest c8 f2-\hideF \moveNoteTre <e a>4   | %16
   \mBreak
   \timeSigParenth \timeSigShowBeg \time 3/4
  f4 e s                                     | %17
  r8 \moveDynSep <aes ees! aes,>8_\ten_\pp_~
         <aes ees aes,>2                     | %18
  r8 \moveDynSix <g d g,>8_\ten_\piuPP_~ <g d g,>2        | %19
  r8 \moveDynOct <f c f,>8_\ten_\ppp_~ <f c f,>2          | %20
  g8\rest <bes'f bes,>4_.-\hideP <des aes des,>_.<aes ees aes,>8_.| %21
  r8 <ces ges ces,>4._. s8 <ees bes ees,>8_.              | %22
  g,,8\rest <bes'f bes,>4_. <des aes des,>_. <f c f,>8_.  | %23
  \clef treble
  f,8\rest <a'e a,>4_. <c!g c,>_. <e b e,>8_.|%24
  \clef bass <bes,,,!bes,!>4 s e8\rest \moveDynOct
     \brokenHairpin \shapeSlurEigt <f f,>8_._\pp_(\> | %25
   \mBreak
  <bes!bes,!>4)_\! s e,8\rest \moveDynOct
     \shapeSlurNov <f f,>8_._\pp_(                   | %26
  <bes!bes,!>2) \moveDynOct \shapeSlurNov \moveDynSixt
  \lengthenHairpin <f f,>4_._(_\ppp_\>               | %27
  <bes bes,>2)\! <f f,>4_.                           | %28
  s2. s2.                                            | %29-30
  bes,,4_\ten_.-\hidePP g4\rest g4\rest              | %31
}

dynamics = {
  \pushDynLeft s2.\p                         | % 1
  s2.                                        | % 2
  \pushDynLeft s4\p\< s4\p\< s4\p\<          | % 3
  s8. s16\! s8 s2\pp s8                      | % 4
  s8 \moveDynSevt s4.\> s4\!                 | % 5
  \moveDynEigt s2.\p                         | % 6
  s2.                                        | % 7
  s2. \moveDynTwo                            | % 8
  s8...\< s8\! s64 \moveDynOne s4.\mf s4     | % 9
  \moveDynTre \openHairpin s2\> s2\!         | %10
  \moveDynTen s2._\pp                        | %11
  \repeat unfold 3 { s2. }                   | %12-14
  s2.\mf                                     | %15
  \moveDynQtr s8.\< s16\! \moveDynCin s2.\f  | %16
  s4 s4\> s4\!                               | %17
  s4. s4.^\markup{ \italic \bold "dim."}     | %18
  s2.                                        | %19
  \moveDynNov s2.\pp                         | %20
  \moveDynNov s2.\p                          | %21
  s2.                                        | %22
  s4-\piuP s2-\markup{ \italic \bold "dim."} | %23
  s2\< s8.\p\> s16                           | %24
  s8\! s8\p\< s4 s4\p                        | %25
  s8 s8\p\< s4 s4\p                          | %26
  s2.\pp                                     | %27
  s2.\pp                                     | %28
  s2.\f\>                                    | %29
  s2.\pp                                     | %30
}
