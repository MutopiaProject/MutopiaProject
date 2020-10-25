%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.20.0"
\language "english"

\header {
  title = "Mazurka"
  subtitle = "in F Minor"
  composer = "Frederic Chopin (1810-1849)"
  opus = "Opus 7, No 3"
  date = "1830 – 1832"
  style = "Romantic"
  source = "http://www.chopinonline.ac.uk/ocve/browse/pageview/67297/"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  copyright = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Mazurka in F Minor"
  mutopiaopus = "Opus 7, No 3"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"
}

sd = \sustainOn 
su = \sustainOff

%arpeggioPositionA = \once \override Staff.Arpeggio.positions = #'(0 . 0)
arpeggioPositionA = \once \override Staff.Arpeggio.positions = #'(-2 . 3)
arpeggioPositionB = \once \override Staff.Arpeggio.positions = #'(-2 . 3)

%slurPositionA = \once \override Slur.positions = #'(0 . 0)
slurPositionA = \once \override Slur.positions = #'(0 . 0)
slurPositionB = \once \override Slur.positions = #'(0 . 0)

% () may be used as a shorthand for ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
% if any of the segments does not need to be changed

%slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0)) \etc
%slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0)) Slur
%{slurShapeA = \shape #'(
             (( 0 . 0) (0 . 0) (0 . 0) (0 . 0))
             ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
           ) Slur %}

tieShapeA = \shape #'((0 . 0) (0 . 0.2) (0 . 0.2) (0 . 0)) \etc
tieShapeB = \shape #'((0 . 0) (0 . 0.2) (0 . 0.2) (0 . 0)) \etc
tieShapeC = \shape #'((0 . 0) (0 . 0.2) (0 . 0.2) (0 . 0)) \etc
tieShapeD = \shape #'((0 . 0) (0 . 0.2) (0 . 0.2) (0 . 0)) \etc
tieShapeE = \shape #'((0 . 0) (0 . 0.2) (0 . 0.2) (0 . 0)) \etc

tieShapeX = \shape #'(
             (( 0 . 0) (0 . 0) (0 . 0) (0 . 0))
             ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
           ) Tie

global = {
  \key f \minor
  \time 3/4
  \accidentalStyle piano
  \override Slur.details.accidental-collision = #1000
  %\override TextSpanner.script-priority = #-100
  %\override Staff.RestCollision.minimum-distance = #0.4 % needed?
}

rightHand = \relative c' {
  \global
  \clef treble
  \tempo 2. = 54
  \omit TupletBracket
  
  s2. * 8 |
  
  \barNumberCheck 9
  f8[ r16 g( af8 bf c af]) |
  \tuplet 3/2 { g8( af g) } f4-. f'->( |
  bf,8)[ r16 c16( df8 ef f df]) |
  \tuplet 3/2 { df8( ef df) } c4-! af-> |
  f8[-! r16 g( af8 bf c af]) |
  \tuplet 3/2 { g8( af g) } f4-! c'4-> |
  \slashedGrace { c8 } c,8[^\markup { \italic "con forza." } 
    r16 d( ef8 f g b,)] |
  c4.-> c8 df8->\prall[ r16 c]( |
  
  \barNumberCheck 17
  f8)[-!^\markup { \italic rubato. } r16 g( af8 bf c af)] |
  \tuplet 3/2 { g8( af g) } f4-. f'-> |
  bf,8[-! r16 c( df8 ef f df)] |
  \tuplet 3/2 { df8( ef df) } c4 af-> |
  f8[-! r16 g( af8 bf c af]) |
  \tuplet 3/2 { g8( af g) } f4 c'-> |
  \slashedGrace { c8 } c,8[^\markup { \italic "con forza." } 
    r16 d( ef8 f g b,)] |
  c2-^( c'4) |
  \bar "||"
  
  \barNumberCheck 25
  bf8 af g4-! g8( af) |
  f8( g af4)-! af8 c |
  bf8( af g\prall f g af) |
  f8-.[ r16 g af8 bf c df] |
  \slashedGrace { df8 } f8. ef16 df4\prall c8( bf |
  af8 bf c4-!) c8( df |
  f8)[ r16 ef]( df4\trill c8 bf |
  af8 bf c2) |
  
  \barNumberCheck 33
  bf8( af g4-!) g8( af) |
  f8( g af4)-! af8( c) |
  bf8( af g\prall f g af) |
  f8-.[ r16 g af8 bf c df] |
  \slashedGrace { df8 } f8.( ef16 df4\prall c8 bf) |
  af8( bf c4) c8( df |
  f8)[ r16 ef]( df4\prall c8 bf) |
  af8[ r16 bf]( c4) af8( c) |
  \break
  \bar "||"
  
  \barNumberCheck 41
  <gf af ef'>8.-.( q16-. <gf af f'>4 <gf af ef'>-.) |
  <f af df>8-![ r16 <f af f'>]-! <af df af'>2^\markup { \italic ten. } |
  << { <gf bf>8[ r16 <gf c>]( df'4 af) } \\ { s4 f2 } >> |
  << { <gf bf>8[ r16 <gf c>]( df'4 af) } \\ { s4 f2 } >> |
  <gf af ef'>8.-.( q16-. <gf af f'>4 <gf af ef'>-.) |
  <f af df>8-.[ r16 <f af f'>]( <af df af'>2)^\markup { \italic ten. } |
  <<
    {  
      <ef g c>8[ r16 <df g bf>]( c'4->) <c, af'> |
      <ef g c>8[ r16 <df g bf>]( c'4->) <c, af'> |
    }
    \\
    {  
      s8 s16 \hideNotes \slurPositionA df16( \unHideNotes ef2) | 
      s8 s16 \hideNotes \slurPositionB df16( \unHideNotes ef2) |
    }
  >> 
  <gf af ef'>8.( q16 <gf af f'>4-. <gf af ef'>-.) |
  <f af df>8[ r16 <f af f'>]( <af df af'>2)^\markup { \italic ten. } |
  
  \barNumberCheck 51
  << 
    { <gf bf>8[ r16 <gf c>]( df'4 af) } 
    \\ 
    { s8. \hideNotes gf16( \unHideNotes f2) } 
  >> |
    << 
    { <gf bf>8[ r16 <gf c>]( df'4 af) } 
    \\ 
    { s8. \hideNotes gf16( \unHideNotes f2) } 
  >> |
  <gf af ef'>8.( q16 <gf af f'>4-. <gf af ef'>-.) |
  <f af df>8[ r16 <f af f'>]( <af df af'>2)^\markup { \italic ten. } 
    \arpeggio |
  <<
    {  
      <ef g c>8[ r16 <df g bf>]( c'4->) <c, af'> |
      <ef g c>8[ r16 <df g bf>]( c'4->) <c, af'> |
    }
    \\
    {  
      s8 s16 \hideNotes \slurPositionA df16( \unHideNotes ef2) | 
      s8 s16 \hideNotes \slurPositionB df16( \unHideNotes ef2) |
    }
  >> 
  
  \barNumberCheck 57
  <d af' bf>4( q <f af bf>-> |
  <ef gf bf>4 <ef bf'> q |
  <d af' bf>4 q q |
  <ef gf bf>4 <ef bf'> <df ef bff'>->) |
  <c ef af>4-!( q <ef gf af>-> |
  <df f af>4 <df af'> q |
  <c gf' af> q-.) q( |
  <df f af>4 q <ef f a>-> |
  <ef f bf>4-!) <d f bf>( <f af bf> |
  <f gf bf>4 <ef gf bf> <ef bf'> |
  <ef af bf>4 <d af' bf> q |
  <ef gf bf>4 <ef bf'> <df ef bff'>-> |
  <df ef af>4-!) <c ef af>^( <ef gf af> |
  <ef f af>4 <df f af> <df af'> |
  <df gf af>4 <c gf' af> q |
  <df f af>4 q q |
  
  \barNumberCheck 73
  <df f af>4 q q |
  <ff af>^> q q |
  <e af>^> q q^\markup { \italic smorz. } |
  <e g> q q) |
  s2. * 8 |
  
  \barNumberCheck 85
  \tempo \markup { "Tempo 1" \super "o" }
  f8[ r16 g( af8 bf c af)] |
  \tuplet 3/2 { g8 af g } f4-. f'->( |
  bf,8)[ r16 c( df8 ef f df)] |
  \tuplet 3/2 { df8( ef df) } c4-! af-> |
  f8[ r16 g( af8 bf c af)] |
  \tuplet 3/2 { g8 af g } f4 c'-> |
  \slashedGrace { c8 } c,8[ r16 d( ef8 f g b,)]
  c4. c8 df8[\trill r16 c(] |
  
  \barNumberCheck 93
  f8)[^\markup { \italic "rubato." } r16 g( af8 bf c af)] |
  \tuplet 3/2 { g8( af g) } f4-. f'-> |
  \slashedGrace { f8 } bf,8[ r16 c( df8 ef f df)] |
  \tuplet 3/2 { df8( ef df) } c4 af-> |
  f8(-. g-. af-. bf-. c-. af-. |
  \tuplet 3/2 { g-. af-. g-. } f4-. c'-.)
  c,8-![ r16 e(^\< g8 bf\! ) df8.^\> c16]\! | 
  \tuplet 3/2 { af8[( bf af) } f]-! r f'4->( |
  c,8-!)[ r16 e(^\< g8 bf\! ) df8.^\> c16]\! | 
  \tuplet 3/2 { af8[( bf af) } f]-! r af'4->( |
  c,,8-!)[ r16 e(^\< g8 bf\! ) df8.^\> c16]\! |
  \tuplet 3/2 { af8( bf af) } f4( f' |
  f4 \ottava #1 f'') r |
  \bar "|."
}

leftHand = \relative c {
  \global
  \clef bass
  \override Beam.auto-knee-gap = 4
  
  <<
    {
      c2.(-\tieShapeA ~  |
      c4 df b |
      c2.-\tieShapeB ~ |
      c4 df b |
      c2.)-\tieShapeC ~ |
      c2.-\tieShapeD ~ |
      c2.-\tieShapeE ~ |
      c2. |
    }
    \\
    {
      f,8 e c2 |
      f2.~ |
      f8 e c2 |
      f2.~ |
      f8 e c2 |
      f4 f8 e c4 |
      f8 e c4 c |
      f8^. e^. f^. e^. c^. c^. |
    }
  >> 
  
  \barNumberCheck 9
  f4-. <f c' af'>\arpeggio q\arpeggio |
  r4 <f c' af'>\arpeggio q\arpeggio |
  r4 <bf f' df'>\arpeggio q \arpeggio |
  \repeat unfold 3 { r4 <f c' af'>\arpeggio q\arpeggio } |
  r4 <g ef' g> <g d' g> |
  r4 <c g' e'>\arpeggio <c bf' e>\arpeggio |
  
  \barNumberCheck 17
  r4 <f, c' af'>\arpeggio q\arpeggio |
  r4 <f c' af'>\arpeggio q\arpeggio |
  r4 <bf f' df'>\arpeggio q \arpeggio |
  \repeat unfold 3 { r4 <f c' af'>\arpeggio q\arpeggio } | 
  r4 <g ef' g> <g d' g> |
  r4 c2->~ |
  
  \barNumberCheck 25
  c4( c') c |
  <f, af c>4 q q |
  <f g c>4 <f bf c> q |
  <f af c>4-. q( <f af bf>) |
  ef,4-. <ef' g df'> q |
  af,4 <ef' af c> q |
  ef,4-. <ef' g df'> q |
  af,4-. << { <af' c>4 } \\ { ef8[ e] } >> <f af c>4 |
  
  \barNumberCheck 33
  <f g c>4 <f bf c> q |
  <f af c>4 q q |
  <f g c>4 <f bf c> q |
  <f af c>4-! q <f af bf> |
  ef,4-.^\markup { \italic dolce. } <ef' g df'> q |
  af,4 <ef' af c> q |
  ef,4-. <ef' g df'> q |
  af,4 <ef' c'> af, |
  
  \barNumberCheck 41
  << 
    { \voiceFour \arpeggioPositionA <ef' af c>4 \arpeggio q q } 
    \\ 
    { \voiceTwo af,2. } 
  >>
  <df af' df>4\arpeggio <df af' f'>2^\markup { \italic ten. } \arpeggio |
  <gf bf df>8[ r16 <gf bf df>]~ <df af' df>4 df, |
  <gf' bf df>8[ r16 <gf bf df>]~ <df af' df>4 df, |
  << 
    { 
      \voiceFour <af' ef' c'>4\arpeggio 
        \arpeggioPositionB <ef' af c>\arpeggio q |
    } 
    \\ 
    { s4 \voiceTwo af,2 | } 
  >> 
  <df af' df>4\arpeggio <df af' f'>2^\markup { \italic ten. } \arpeggio |
  <<
    { 
      ef8[ r16 ef]~ ef4 ef~ |
      ef8[ r16 ef]~ ef4 ef |
    }
    \\
    {  
      ef,4 af2 |
      ef4 af2 |
    }
  >> 
  << 
    { 
      \voiceFour <af ef' c'>4\arpeggio 
        \arpeggioPositionB <ef' af c>\arpeggio q |
    } 
    \\ 
    { s4 \voiceTwo af,2 | } 
  >>   
  <df af' df>4\arpeggio <df af' f'>2_>^\markup { \italic ten. } \arpeggio |
  
  \barNumberCheck 51
  <gf bf df>8[ r16 <gf bf df>]~ <df af' df>4 df, |
  <gf' bf df>8[ r16 <gf bf df>]~ <df af' df>4 df, |
  << 
    { 
      \voiceFour <af' ef' c'>4\arpeggio 
        \arpeggioPositionB <ef' af c> q |
    } 
    \\ 
    { \hideNotes af,4( \unHideNotes \voiceTwo af2) | } 
  >>
  <df af' df>4 <df af' f'>2^\markup { \italic ten. } \arpeggio |
  <<
    { 
      ef8[ r16 ef]~ ef4 ef~ |
      ef8[ r16 ef]~ ef4 s |
    }
    \\
    {  
      ef,4 af2 |
      ef4 af4 af'8^( gf) |
    }
  >> 
  
  \barNumberCheck 57
  f4. bf,8( c d |
  ef8 f gf4. af8) |
  \slashedGrace { gf8 } f8.( e16) f4-! bf,( |
  ef8. f16 gf2)~ |
  gf4. af,8( bf c |
  df8) ef f4 gf8( f |
  \slashedGrace { f8 } ef8. d16 ef4) af,4->( |
  f'8 ef df4) c8( cf |
  bf4.) bf8( c d |
  ef8 f gf4 af8 gf) |
  \slashedGrace { gf8 } f8.( e16 f4-!) bf,( |
  ef8. f16 gf2)~ |
  gf4. af,8( bf c
  df8 ef) f4 gf8 f |
  \slashedGrace { f8 } ef8.( d16 ef4-!) af, |
  f'8( ef df2) |
  
  \barNumberCheck 73
  \context Voice = "2" { f,8( e df2)~ } |
  << 
    { \crossStaff { af''4 af af | af af af | g g g | } }
    \\ 
    {}
    \\
    { df,2. | c2._~ | <c c'_~>2. | } 
  >> 
  <<
    { 
      <g'' c>2.->( | <af f'>2.->  <g c>2.-> |  <af f'>2.->) | <g c>2.->~ 
        | q2. | q2 r4 | 
    }
    \\
    { 
      f,8 e c2 | f2.~ | f8 e c2 | f2. | f8 e c2 | f4 f8 e c4 | f8 e c4 c | 
        f8 e f e c c | 
    }
    \\
    { c'2.~ | c4 df b | c2.~ | c4 df b | c2.~ | c2. | c2.~ | c2. | }
  >> 
  \break
  
  \barNumberCheck 85
  f,4 <f c' af'> q |
  r4 <f c' af'> q |
  r4 <bf f' df'> q |
  r4 <f c' af'> q | 
  r4 <f c' af'>\arpeggio q |
  r4 <f c' af'> q |
  r4 <g ef' g> <g d' g> |
  r4 <c g' e'> <c bf' e> |
  
  \barNumberCheck 93
  r4 <f, c' af'> q | 
  r4 <f c' af'> q | 
  r4 <bf f' df'> q |
  r4 <f c' af'> q |
  r4 <f c' af'>-.( q-.) |
  r4 <f c' af'>-.( q-.) |
  r4 <f c' g'>-.( q-.) |
  r4 <f c' af'>-.( q-.) |
  r4 <f c' g'>-.( q-.) |
  r4 <f c' af'>-.( q-.) |
  r4 <f c' g'>-.( q-.) |
  r4 <f c' af'>( <df' bf'>) |
  <f, c' af'>2 r4 |
}

pedal = {
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 4 |
  \repeat unfold 3 { s4\sd s s\su } |
  s4 s\< s\! |
  
  \barNumberCheck 33
  s2. * 4 |
  \repeat unfold 3 { s4\sd s s\su } |
  s2 s4\fz |
  
  \barNumberCheck 41
  s2\sd s8 s\su |
  s4 s2\sd |
  s4\su s4.\sd s16 s\su |
  s4 s4.\sd s16 s\su |
  s4\sd s s\su |
  s4 s\sd s8 s\su |
  s2. * 2 |
  s4\sd s s8 s\su |
  s8. s16\sd s2 <>\su |
  
  \barNumberCheck 51
  s2. * 6 |
  
  \barNumberCheck 57
  s2._\markup { \italic marcarto. } |
  s2\< s8 s\! |
  s2. |
  s4\< s2\! |
  s4. s8\< s4 |
  s4 s\! s |
  s2. * 2 |
  s4. s8\< s4 |
  s4 s\! s |
  s2. |
  s4\< s2\! |
  s2 s4\< |
  s4 s\! s |
  s2. * 2 |
  
  \barNumberCheck 73
  s2. |
  \repeat unfold 3 { s2\sd s8 s\su } |
  s2.-\markup { \italic "legato." } |
  s8 s\< s s\> s\! s |
  s2. |
  s8 s\< s s\> s\! s |
  s2. * 4 |
  
  \barNumberCheck 85
  s2. * 8 |
  
  \barNumberCheck 93
  s2. * 11 |
  s4 s\sd s8 s\su |
  s2\sd s4^"Fine" |
}

dynamics = {
  \tag layout { s2.-\markup { \dynamic pp \whiteout "sotto voce." } } |
  \tag midi { s2.\pp } |
  s2. * 5 |
  s4 s2_"smorz."
  s2.
  
  \barNumberCheck 9
  \tag layout { s2.-\markup { \dynamic p "con anima." } } |
  \tag midi { s2.\p } |
  s2. |
  s4 s4.\< s8\! |
  s2. |
  s4 s4.\< s8\! |
  s2. * 3 |
  
  \barNumberCheck 17
  s4 s4.\< s8\! |
  s2. |
  s4 s4.\< s8\! |
  s2. |
  s4 s4.\< s8\! |
  s4 s2^"cres." |
  s4\< s2\! |
  s2. |
  
  \barNumberCheck 25
  s2.-\markup { \dynamic p stretto. } |
  s2. * 2 |
  s2\< s8 s\! |
  s2.^"dolce." |
  s4 s\< s8 s\! |
  s4\> s\! s |
  s4\> s2\! |
  
  \barNumberCheck 33
  s2.-\markup { \dynamic p stretto. } |
  s2. * 2 |
  s8 s16 s\< s4 s8 s\! |
  s8.\> s16\! s2 |
  s4 s4\< s8 s\! |
  s4 s4\> a8 s\! |
  s8.\< s16\! s8.\> s16\! s4 | 
  
  \barNumberCheck 41
  s4\f s\> s\! |
  s8\< s16 s\! s2 |
  s8\p\< s16 s\! s2 |
  s8 s16\< s s2\! |
  s4\ff s\> s\! |
  s16 s\< s s\! s2 |
  s2.\p |
  s2. |
  s4\f s\> s\! | 
  s2. |
  
  \barNumberCheck 51
  s8.\p s16\< s4\! s |
  s8. s16\< s4\! s |
  s2.\ff |
  s8. s16\< s16\! s s8 s4 |  
  s2.\p |
  s2. |
  
  \barNumberCheck 57
  s2.\p |
  s2. * 15 |
  
  \barNumberCheck 73
  s2.-\markup { \dynamic pp \whiteout \italic { ritenuto e sotto voce } } |
  s2. * 3 |
  s2.\pp |
  s2. * 7
  
  \barNumberCheck 85
  s8.\f s16\< s4 s8 s\! |
  s2. * 5 |
  s2.^"con forza." |
  s2. |
  
  \barNumberCheck 93
  s8 s\p s2 |
  s2. * 10 |
  s2 s4\pp |
  s2. |
}

#(set-global-staff-size 18) % default 20

% ly:expect-warning only works to supress once.  This function allows
% you to specify the number of times a warning appears.
#(define ly:expect-warning-times (lambda args
   (for-each (lambda _ (apply ly:expect-warning (cdr args)))
             (iota (car args)))))

%#(ly:expect-warning-times 69 "omitting tuplet bracket")
%#(ly:expect-warning-times 3 "stealing the entirety")

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
    
  #(set-paper-size "letter") % for testing only
  
  % These settings are scaled to paper-size
  top-margin = 12\mm % default 5
  bottom-margin = 12\mm % default 6
  left-margin = 10\mm % default 10
  right-margin = 10\mm % default 10
}

% Typeset only
\score {
  \keepWithTag layout
  \new PianoStaff \with { instrumentName = \markup \huge "No. 3" } 
  <<
    \new Staff = "upper" \rightHand
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics = "pedal" \pedal 
  >>
  \layout {
    \context {
      \Score
      %\omit BarNumber % Uncomment after editing
    }
    \context {
      \PianoStaff
      \consists #Span_stem_engraver
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
