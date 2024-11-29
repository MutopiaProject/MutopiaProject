%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.20.0"
\language "english"

\header {
  title = "Mazurka"
  subtitle = "in A Minor"
  composer = "Frederic Chopin (1810-1849)"
  opus = "Opus 7, No 2"
  date = "1830 – 1832"
  style = "Romantic"
  source = "http://www.chopinonline.ac.uk/ocve/browse/pageview/67295/"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  copyright = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Mazurka in A Minor"
  mutopiaopus = "Opus 7, No 2"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"
}

sd = \sustainOn 
su = \sustainOff

slurPositionA = \once \override Slur.positions = #'(0 . 0)
slurPositionB = \once \override PhrasingSlur.positions = #'(5 . 3)
slurPositionC = \once \override PhrasingSlur.positions = #'(5 . 3)
slurPositionD = \once \override Slur.positions = #'(4 . 5)
slurPositionE = \once \override Slur.positions = #'(0 . 0)

slurShapeA = \shape #'((0 . 0) (0 . 0) (0.5 . 0.5) (0 . 0)) PhrasingSlur

% () may be used as a shorthand for ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
% if any of the segments does not need to be changed

%slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0)) \etc
%slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0)) Slur
%{slurShapeA = \shape #'(
             (( 0 . 0) (0 . 0) (0 . 0) (0 . 0))
             ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
           ) Slur %}

global = {
  \key a \minor
  \time 3/4
  \accidentalStyle piano
  \override Slur.details.accidental-collision = #1000
  \override Staff.RestCollision.minimum-distance = #0.4
}

rightHand = \relative c'' {
  \global
  \clef treble
  \tempo "Viva ma non troppo" 4 = 160
  \omit TupletBracket
  
  \repeat volta 2 {
    \partial 4 e4(
    f8. e16 d4 f |
    f2) e4 |
    \tuplet 3/2 { d16( e d } cs8 d ds e b |
    d2 c4) |
    \tuplet 3/2 { a8( b a) } gs4-.( a-. |
    b4-.) e2-> |
    \slurPositionA b8( g e b' ds,4 |
    e2) e'4( |
    
    %\barNumberCheck 9
    f8. e16 d4 f |
    f2 e4) |
    \tuplet 3/2 { d16( e d } cs8 d ds e b |
    \slashedGrace { b8 } d2 c4) |
    \context Voice = "1" { \tuplet 3/2 { \slurPositionB a8(^\( bf a) } g4 a } |
    << { bf4 d\) } \\ { d,4( f) } >> r4\fermata |
    \tag midi { \tempo "a Tempo" 4 = 160 }
    \tag layout { \tempo "a Tempo"}
      <<
        { a8.-> gs16 e4( gs | a2) \mark "Fine" } |
        \\
        { r4 d, d | c r } |
      >> 
  }
  
  \repeat volta 2 {
    b'4( |
    
    %\barNumberCheck 17
    c8 d ef4) ef8.( f16 |
    ef2 d4) |
    c8( d ef4) \slurShapeA ef8.\( f16 |
    ef2 d4 |
    bf'2 cs,4 |
    a'2 c,4 |
    af'2 b,4\) |
    g'4. bf,8( a e' |
    
    %\barNumberCheck 25
    f8 e d4 f) |
    f2( e4) |
    \tuplet 3/2 { d16( e d } cs8 d ds e b |
    d2 c4) |
    \context Voice = "1" { \tuplet 3/2 { \slurPositionC a8(^\( bf a) } g4 a } |
    << { bf4\) d } \\ { d,4( f) } >> r4\fermata |
    \tag midi { \tempo "a Tempo" 4 = 160 }
    \tag layout { \tempo "a Tempo"}
    \context Voice = "1" { a8. gs16^\( } << { e4 gs } \\ { d4 d } >> |
  } 
  \alternative {
    { << { a'2\) } \\ { c,4 r } >> } 
    { << { a'2. } \\ { r4 <cs, e>^.^( q^.^) } >> } 
  } 

  \key a \major
  \pageBreak
  %\barNumberCheck 33
  << 
    { cs'8[ r16 cs] d4( b } 
    \\
    { g4 * 1/2 s fs4 f } 
  >> 
  <<
    { gs8. e16 <cs a'>4.) <gs' b>8 }
    \\
    { d4 s2 } 
  >> 
  <<
    { cs'8.( e16) d4-^ b( }
    \\
    { g4 fs f }
  >>
  << { \tuplet 3/2 { gs8)( fs e) } } \\ { d4 } >> <cs a'>4. <gs' b>8 
  \tuplet 3/2 { <g cs>8-.( q-. q-.) } <fs d'>4_^ <f b> 
  \tuplet 3/2 { <d gs>8^\<-.( <d fs>-. <d e>\!-.) } <cs a'>4. <gs' b>8
  \tuplet 3/2 { <gs cs>8 <gs d'> <gs e'> } <fs d'>4-^ <f b>4^\> <>\!
  \tuplet 3/2 { <d gs>8-.( <d fs>-. <d e>-.) } <cs a'>2 
  \bar ".|:"
  
  %\barNumberCheck 41
  \repeat volta 2 {
    <a' cs>8[ r16 <a cs>] <b d>4-. <gs b>-.
    \tuplet 3/2 { <a cs>8->( <gs b> <fs a>) } <b d>4-. <gs b>-.
    <a cs>8[ r16 <a cs>] <b d>4-. <gs b>-.
    \tuplet 3/2 { <a cs>8->( <gs b> <fs a>) } <fs' fs'>4-. q-.
    <a, cs>8[ r16 <a cs>] <b d>4-. <gs b>-.
    \tuplet 3/2 { <a cs>8( <gs b> <fs a>) } <b d>4-. <gs b>-.
    << { cs8^\markup { \italic "ritenuto" } ds e2 } \\ { a,4 gs2 } >>
    << { cs8 ds \grace { fs4 } e4. d8 } \\ { a4 gs2 } >>
    
    %\barNumberCheck 49
    << { cs8[ r16 cs]( d4 b } \\ { g4*1/2 s fs4 f } >>
    << { gs8. e16 <cs a')>4. <gs' b>8 } \\ { d4 s2 } >>
    << { cs'8. e16 d4 b } \\ { g4 fs f } >>
    << { \tuplet 3/2 { gs8( fs e) } <cs a'>4. <gs' b>8 } \\ { d4 s2 } >>
    \tuplet 3/2 { <g cs>8-.( q-. q-.) } <fs d'>4 <fs b>^>
    \tuplet 3/2 { <d gs>8 <d fs> <d e> } <cs a'>4. <gs' b>8
    \tuplet 3/2 { <g cs>8-.( <g d'>-. <g e'>-.) } <fs d'>4^^ <f b>->
  }
  \alternative {
    { \tuplet 3/2 { <d gs>8-.( <d fs> <d e>-.) } <cs a'>2 } 
    { \tuplet 3/2 { <d gs>8-.( <d fs>-. <d e>-.) } <cs a'>4 }
  }
  \bar "|."
}

leftHand = \relative c' {
  \global
  \clef bass
  \override Beam.auto-knee-gap = 4
  
  \repeat volta 2 { 
    \partial 4 { r4 }
    r4 <a d f>-.( q-.) |
    r4 <a d f>-.( <a c e>-.) |
    r4 <e gs d'>-.( q-.) |
    r4 a,( <e' c'>) |
    r4 <e c'>( a,) |
    r4 <e' g b>( b) |
    r4 <b g' b> <b fs' b> |
    <e gs b>4 e, r |
    
    %\barNumberCheck 9
    r4 <a' d f> q |
    r4 <a c f> <a c e> |
    r4 <e gs e'> q |
    r4 <f a d> <f a c> |
    r4 <f c' ef> q |
    bf2 r4\fermata |
    r4 <e, b'>-.( q-.) |
    <a, e'>4 a,
  } 
  
  \repeat volta 2 {
    r4 |
      
    %\barNumberCheck 17
    r4 <af'' c fs>-.( q-.) |
    r4 <g c fs>-.( <g b g'>-.) |
    r4 <af c fs> q |
    r4 <af cf f>-.( <af bf f'>-.) |
    r4 <g bf f'> <g bf e> |
    r4 <g a e'> <fs a ef'> |
    r4 <fs af e'> <fs af d> |
    r4 <e g d'> <e g cs>( |
    
    %\barNumberCheck 25
    <d f d'>) <a' d f> q |
    r4 <a c f> <a c e> |
    r4 <e gs  d'> q |
    r4 <f a d> <f a c> |
    r4 <f c' ef> q |
    bf2 r4\fermata |
    r4 <e, b'> q |
  }
  \alternative {
    { <a, e'>4 a,4 }
    { r4 <a' a'> <a a'>~ }
  }
  
  \key a \major
  
  %\barNumberCheck 33
  <a a'>4 d d,(
  e4) a( e' 
  a4 d,) d,(
  e4) a( e'
  a4 d,) d,
  e4 a e'
  a4 d, d,
  e4 a a'
  
  %\barNumberCheck 41
  \repeat volta 2 {
    << { cs8[ r16 cs] d4-. b-. } \\ { fs2. } >>
    << { \tuplet 3/2 { cs'8( b a) } d4-. b-. } \\ { fs2. } >>
    << { cs'8[ r16 cs] d4-. b-. } \\ { fs2. } >>
    << { \tuplet 3/2 { cs'8( b a) } <fs, fs'>4 q } \\ { fs'4 s s} >>
    << { cs'8[ r16 cs] d4-. b-. } \\ { fs2. } >>
    << { \tuplet 3/2 { cs'8 b a } d4 b } \\ { fs2.~ } >>
    << { cs'8 b~ b2 } \\ { fs4 e2~ } >>
    << { cs'8[ b~] <e, b'>2 } \\ { e4 s2 } >> 
    
    %\barNumberCheck 49
    \slurPositionE a4( d, d,)
    e4( a) e'(
    a4 d,) d,(
    e4 a) e'(
    a4 d,) d,(
    e4 a) e'( 
    a4 d, d,)
  }
  \alternative {
    { e4( a) a' } 
    { e,4( a,)-\markup { \column { "D.C. al" " Fine" } } }
  }
}

pedal = {
  \repeat volta 2 {
    \partial 4 { s4 }
    s2. * 8 |
    
    %\barNumberCheck 9
    s2. * 7 |
    s2
  }
  
  \repeat volta 2 {
    s4 |
    
    %\barNumberCheck 17
    s2. * 8 |
    
    %\barNumberCheck 25
    s2. * 7 |
  }
  \alternative {
    { s2 }
    { s2. }
  }
  
  %\barNumberCheck 33
  s4_"sempre legato" s2 
  s2. * 7
  
  %\barNumberCheck 41
  \repeat volta 2 {
    s2. * 3
    s2.\sd
    s8 s\su s2
    s2. * 3
    
    %\barNumberCheck 49
    s2.-"legato"
    s2. * 6
  }
  \alternative {
    { s2. }
    { s2 }
  }
}

dynamics = {
  \repeat volta 2 {
    \partial 4 s4
    s8.\p\> s16\! s2 |
    s8.\> s16\! s2 |
    s8.\< s16\! s4 s8.\> s16\! |
    s4\> s8. s16\! s4 |
    s4 s8 s-"cres." s4 |
    s2. |
    s4.-\markup { \dynamic f stretto } s8\< s4 |
    s8. s16\! s4 s\p |
    
    %\barNumberCheck 9
    s8.\> s16\! s2 |
    s8.\> s16\! s2 |
    s8.\> s16\! s2-"cres." |
    s8.\> s16\! s2 |
    s4^"poco rall." s\< s8. s16\! |
    s2. * 2 |
    s2
  }
  
  \repeat volta 2 {
    s4 |
    
    %\barNumberCheck 15
    s4 s\< s8. s16\! |
    s8.\> s16\! s2 |
    s4\< s8. s16\! s4^"cres." |
    s2. |
    \repeat unfold 3 { s8\> s s4\! s } |
    s4\> s8\! s4\< s8\! |
    
    %%\barNumberCheck 25
    s2. |
    s4.\> s16\! s s4 |
    s2. * 2 |
    s4^"poco rall." s4\< s8. s16\! |
    s2. |
    s8.\> s16\! s2 |
  }
  \alternative {
    { s2 }
    { s2. }
  }
  
  %\barNumberCheck 33
  s4-"dolce" s\> s 
  s4.\< s8\! s4
  s4 s\< s\!
  s16 s16\< s8 s2\!
  s2-"scherz." s8\> s16. s32\!
  s2.
  s4\< s\! s
  s4 s8.\> s16\! s4
  
  %\barNumberCheck 41
  \repeat volta 2 {
    s16\f s\> s8\!  s4 s
    s2. * 2
    s4 s\fz s\fz
    s2. * 2
    s8\< s\! s2
    s8\< s\! s2
    
    %\barNumberCheck 49
    s2.-"dolce"
    s4\< s4.\! s8
    s2.
    \tuplet 3/2 { s8 s s\< } s4 s\!
    s2.-"scherz."
    s4 s4.\< s8\!
    s2.
  }
  \alternative {
    { \tuplet 3/2 { s8 s s\< } s2\! }
    { \tuplet 3/2 { s8\< s s\! } s4 }
  }
}

%#(set-global-staff-size 18) % default 20

% ly:expect-warning only works to supress once.  This function allows
% you to specify the number of times a warning appears.
#(define ly:expect-warning-times (lambda args
   (for-each (lambda _ (apply ly:expect-warning (cdr args)))
             (iota (car args)))))

%#(ly:expect-warning-times 69 "omitting tuplet bracket")
%#(ly:expect-warning-times 3 "stealing the entirety")

\paper {
  ragged-right = ##f % set to false after editing 
  ragged-last-bottom = ##t % set to false after editing 
                           % In this piece it looks better to leave it true

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
  \new PianoStaff \with { instrumentName = \markup \huge "No. 2" } 
  <<
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
    \context {
     \Staff
     \override RestCollision.minimum-distance = #0.4
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
