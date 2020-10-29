%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.20.0"
\language "english"

\header {
  title = "Mazurka"
  subtitle = "in A flat"
  composer = "Frederic Chopin (1810-1849)"
  opus = "Opus 7, No 4"
  date = "1830 – 1832"
  style = "Romantic"
  source = "http://www.chopinonline.ac.uk/ocve/browse/pageview/67300/"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  copyright = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Mazurka in A flat"
  mutopiaopus = "Opus 7, No 4"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"
}

sd = \sustainOn 
su = \sustainOff

global = {
  \key af \major
  \time 3/4
  \accidentalStyle piano
}

rightHand = \relative c' {
  \global
  \clef treble
  \tag layout { \tempo "Presto ma non troppo" 2. = 76 }
  \tag midi { \tempo 2. = 64 }
  \omit TupletBracket
  
  \partial 8 { ef8 }
  \tuplet 3/2 { af8( bf af) } g8( af bf c) |
  \tuplet 3/2 { df8 ef df } c8( df ef4)( |
  af8-!)[ r16 df,]( c8 ef af, a) |
  bf8( df f, g) af4_>~ |
  \tuplet 3/2 { af8( bf af) } g8( af bf c) |
  \tuplet 3/2 { df8( ef df) } c8( df d ef) |
  \slashedGrace { ef8 } af8-![ r16 df,]( c8 ef af, a) |
  bf8([ df f, g] af) r16 b |
  
  \barNumberCheck 9
  \break
  \repeat volta 2 {
    c4( c'8-!)[ r16 bf]( af4)~ |
    af8 g \slashedGrace { bf8 } af( g) d4->( |
    c8-.)[ c( c') r16 bf]( af4)~ |
    af8[ g \acciaccatura { bf8 } af8-! r16 g]( d4) |
    c4 df8.-> f16( c4->) |
    b8[ r16 g( b8 d]) c4->~ |
    c4 df8.-> f16( c4->)~ |
    c4. bf8[ c8.-> bf16] |
    
    % \barNumberCheck 17
    \tuplet 3/2 { af8( bf af) } g8 af bf c |
    \tuplet 3/2 { df8( ef df) } c8( df) ef4_>( |
    af8)[ r16 df,]( c8) ef( af, a |
    bf8 df f, g af4->)~ |
    \tuplet 3/2 { af8( bf af) } g8[ r16 af( bf8 c)] |
    \tuplet 3/2 { df8( ef df) } c8-.[ r16 df( \slashedGrace { df8 } d ef] |
    \slashedGrace { ef8 } af8-!)[ r16 df,]( c8) ef( af, a |
    bf df f, g af4->) |
  }
  \break
  
  %\barNumberCheck 25
  <<
    {  
      gf'8( f ef f df4 |
      bf8 ef bf c af4) |
      gf'8( f ef f df4 |
      bf8 ef af, c) df4( |
      gf8-.^\markup { \italic "staccato." } f-. ef-. f-. df-. af-. |
      bf8-. ef-. bf c-. af-. af'-. |
      gf8-. f-. ef-. f-. df-. af-. |
      bf8-. ef-. af,-. c-. df4) |
    }
    \\
    {  
      gf,4 gf f |
      g4 gf gf |
      gf4 gf f |
      g4 gf f |
      gf4 gf f |
      g4 gf gf |
      gf4 gf f |
      g4 gf f |
    }
  >> 
  \bar "||"
  
  %\barNumberCheck 33
  \tag midi { \tempo 2. = 40 }
  <<
    { 
      <cs' e>8(^\markup { \italic "molto rall:" } <b d> <a cs>4) 
        <fs a fs'>_>( |
      <cs' e>2 <a cs>4)
      <cs e>8( <b d> <a cs>4) <fs a fs'>
      << { e'2.\fermata } \\ { <a, cs>2 bf4^> } >>
    }
    \\
    { 
      e,2 s4 |
      e2._> |
      e2 s4 |
      e2. |
    }
  >> 
  \bar "||"
  
  %\barNumberCheck 37
  \tag midi { \tempo 2. = 64 }
  \tempo "a Tempo"
  \tuplet 3/2 { af8( bf af) } g8( af bf c) |
  \tuplet 3/2 { df8 ef df } c8( df) ef4 |
  af8-![ r16 df,]( c8 ef af, a |
  bf8 df f, g af4_>)~ |
  \tuplet 3/2 { af8( bf af) } g8( af bf c) |
  \tuplet 3/2 { df8( ef df) } c8([ r16 df \slashedGrace { df8 } d8 ef]) |
  \slashedGrace { ef8 } af8-! 
    \tag midi { \tempo 2. = 20 } r16\fermata 
    \tag midi { \tempo 2. = 64 } df,( c8 ef af, a |
  bf8[ df f, g] af4) |
  \bar "|."
}

leftHand = \relative c' {
  \global
  \clef bass
  
  \partial 8 { r8 }
  <af c ef>4( <af df ff>_> q |
  <g bf ff'>4_> <af c ef> <g bf ef> |
  <f af df f>8) r <ef af ef'>4( <ef c' ef> |
  <ef df' ef>4 q <af c ef>) | 
  <af c ef>4 <af df ff>_> q( |
  <g bf ff'>4_> <af c ef> <g bf ef> |
  <f af df f>8) r <ef af ef'>4( <ef c' ef> |
  <ef df' ef>4 q <af c ef>) |
  
  \barNumberCheck 9
  \repeat volta 2 {
    c,4 <g' c e>( <f  c' f> |
    <f b f'>4 q q |
    <af c ef>4)-. <g c e>( <f c' f> |
    <g b f'> q q) |
    <af c ef>4 <f af df>_>( <f af d> |
    <g d' f>4 q <c ef> |
    <af c ef>4) <f af df>( <f af d> |
    <g bf d>4) <g bf ef> <g df' ff> |
    
    %\barNumberCheck 17
    <af c ef>4 <af df ff>_> q |
    <g bf ff'>4_>( <af c ef> <g bf ef> |
    <f af df f>8) r <ef af ef'>4( <ef c' ef> |
    <ef df' ef>4 q <af c ef>) |
    <af c ef>4( <af df ff>_> q |
    <g bf ff'>4_> <af c ef> <g bf ef> |
    <f af df f>8) r <ef af ef'>4( <ef c'ef> |
    <ef df'ef> q <af c ef>->) |
  }
  
  %\barNumberCheck 25
  <df, af' c>4 q <df af' df>^> |
  <df bf' ef>4 <df a' ef'> <df af' ef'> |
  <df af' c>4 q <df af' df>^> |
  <df af' ef'>4 q <df af' df>^> |
  <df af' c>4_\markup { \italic "sempre legato." } q <df af' df> |
  <df bf' ef>4 <df a' ef'> <df af' ef'> |
  <df af' c>4 q <df af' df> |
  <df bf' ef>4 <df af'ef'> <df af'> |
  
  %\barNumberCheck 33
  <a a'>2 <d a'>4 |
  <a a'>2. |
  a'2 <d, a'>4
  <a a'>2\fermata <g' df'>4_>(
  
  %\barNumberCheck 37
  <af c ef>4 <af df ff> q |
  <g bf ff'>4 <af c ef> <g bf ef> |
  <f af df f>8) r <ef af ef'>4 <ef c' ef> |
  <ef df' ef>4 q <af c ef>^> | 
  <af c ef>4 <af df ff> q |
  <g bf ff'>4 <af c ef> <g bf ef> |
  <f af df f>8 r16\fermata s <ef af ef'>4( <ef c' ef> |
  <ef df' ef>4 q <af c ef>) |
}

dynamics = {
  \partial 8 { s8 }
  s2.\f  |
  s4 s\< s\! |
  s4\fz s2\p |
  s2. |
  s4\f s8 s\< s s\! |
  \tuplet 3/2 { s8\> s s\! } s2 |
  s8. s16\p s2 |
  s2. |
  
  \barNumberCheck 9
  \repeat volta 2 {
    s4-"scherz." s s8\> s8\! |
    s2. |
    s2 s8\> s\! |
    s2. |
    s2.\p |
    s2. |
    s2 s4\< <>\! |
    s2.-"cres." |
    
    %\barNumberCheck 17
    s4\f s\< s8 s\! |
    s2. |
    s8.\fz s16\p s2 |
    s2. |
    s2.\f |
    s2. |
    s8. s16\p s2 |
    s2. |
  }
  
  %\barNumberCheck 25
  s2.-"dolcissimo." |
  s2. * 3 |
  \tag layout { s2.-\markup { \dynamic p \italic "ritenuto." } | }
  \tag midi { s2.\p | }
  s2. * 3 |
  
  %\barNumberCheck 33
  \tag layout { s2.-\markup { \dynamic pp \italic "sotto voce." } | }
  \tag midi { s2.\pp | }
  s2. |
  s4 s2-"smorz." |
  s2. |
  
  %\barNumberCheck 37
  s2.\f |
  s2. |
  s8 s16 s\p s2 |
  s2. |
  s2.\f |
  s2. |
  s8 s16 s\f s2 |
  s2. |
}

pedal = {
  \partial 8 { s8 }
  s2.-"legato." |
  s2. * 7 |
  
  \barNumberCheck 9
  \repeat volta 2 {
    s4\sd s8 s\su s4 |
    s2. * 5 |
    s4 s\> s8 s\! |
    s2\< s8 s\! |
    
    %\barNumberCheck 17
    s2. * 8 |
  }
  
  %\barNumberCheck 25
  s2. * 8 |
  
  %\barNumberCheck 33
  s2\sd s4\su |
  s2.\sd |
  s2 s4\su |
  s2. |
  
  %\barNumberCheck 37
  s2. * 7 |
  s2 s4^"Fine" |
}

#(set-global-staff-size 18) % default 20

\paper {
  ragged-right = ##f
  ragged-last-bottom = ##f

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
  \new PianoStaff \with { instrumentName = \markup \huge "No. 4" } 
  <<
    \new Staff = "upper" \rightHand
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics = "pedal" \pedal 
  >>
  \layout {
    \context {
      \Score
      \omit BarNumber
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
