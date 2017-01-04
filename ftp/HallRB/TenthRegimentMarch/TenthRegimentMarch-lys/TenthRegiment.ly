\version "2.18.2"
\include "changePitch.ly"

\pointAndClickOff

\header {
  title = "Tenth Regiment March"
  composer = "R. B. Hall"
  arranger = \markup { \smaller "edited by G. Fitzgerald" }
  mutopiatitle = "Tenth Regiment March"
  mutopiacomposer = "HallRB"
  mutopiainstrument = "Concert Band: Flutes, Oboe, Bassoon, Clarinets, Bass Clarinet, Alto Sax, Tenor Sax, Baritone Sax, Trumpets, Cornets, Horns, Trombones, Euphonium, Basses, Drums, Bells, Timpani"
  source = "Carl Fischer, 1895"
  style = "March"
  license = "Public Domain"
  maintainer = "Garrett Fitzgerald"

 footer = "Mutopia-2016/12/31-2157"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

rehearsalMarks = \relative c' {
  \set Score.skipBars = ##t
  \override MultiMeasureRest.expand-limit = #2
  \set countPercentRepeats = ##t
  \set repeatCountVisibility = #(every-nth-repeat-count-visible 4)

  \time 6/8

  s2.*4
  \mark \markup { \circle "A" }
  \repeat volta 2 {
    s2.*15 |
  }
  \alternative {
    {s2. | }
    {s2. | }
  }
  \mark \markup { \circle "B" }
  \repeat volta 2 {
    s2.*16 |
    \mark \markup { \circle "C" }
    s2.*15 |
  }
  \alternative {
    {s2. | }
    {s2. | }
  }
  \mark \markup { \bold "TRIO" }
  \repeat volta 2 {
    s2.*15 |
  }
  \alternative {
    {s2. | }
    {s2. | }
  }
  \mark \markup { \circle "D" }
  \repeat volta 2 {
    s2.*16 | \bar "||" 
    \mark \markup { \circle "E" }
    s2.*15 |
  }
  \alternative {
    {s2. | }
    {s2. | \bar "|." }
  }
}

% Define patterns for changePitch/cPI/cPII/cPIII/cPIV
patI = { c4 r8 }
patII = { c4 c8 }
patIII = { c8[ r8 c8] }
patIV = { r8 \samePitch { c c } }

fluteOne = \relative c''' {
  \key f \major
  
  a4.->\ff c-> | bes4.-> e4->( d8) |
  c8 r r 
  \tag #'fluteOne {<a a'>4->( <g g'>8) | <f f'>8 } 
  \tag #'clarEb {a4->( g8) | f8 } 
  r r \acciaccatura { c'16 d } c8\p( b bes)
  %mark A
  \repeat volta 2 {
    a8[ r a] a[ r a] | \acciaccatura bes a8( gis a) d4( a8) |
    g!8[ r g]( a[) r a]( | bes4.~) bes4 r8 |
    g8[ r g] g[ r g] | \acciaccatura a g8( fis g) c4( bes8) |
    a8[ r a]( bes[) r bes]( | c4.~)( c8 b bes) |
    a8[ r a] a[ r a] | \acciaccatura bes a8( gis a) c4( a8) |
    g8[ r g] g[ r g] | \acciaccatura a g8( fis g) e'4( c8) |
    b8-.\f c-. cis-. d4.->~ | d8 dis-. e-. f4.->~ |
    f8 r r b,4.->( |
  }
  \alternative {
    { c8) r r \acciaccatura { c16 d } c8\p( b bes) }
    { c8\repeatTie c,\< d e f g }
  }
  %mark B
  \repeat volta 2 {
    a4.->\ff a-> | a4-> a8 gis4 a8 | d4 c8 a4.->~ | a8 c, d e f g |
    a4.-> a-> | a4-> a8 gis4 a8 | d4 c8 bes4.->~ | bes4 e,8 g4 a8 |
    bes4.-> bes-> | bes4-> bes8 a4 bes8 | f'8[ r e] e4.->~ | e4 e,8 g4 bes8 |
    e8[ r d] d4.->~ | d4 e,8 g4 bes8 | d8[ r des] c4.->~ | c8 c, d e f g |
    %mark C
    a4.-> a-> | a4-> a8 gis4 a8 | d4 c8 a4.->~ | a8 c, d e f g |
    a4.-> a-> | a8 f g a bes c | d2.->~ | d4 d8 cis4 d8 |
    f4.-> b,-> | e4.-> d-> | d8 r r c4.->~ | c4 f,8 g4 bes8 |
    a4.->( g) | a4.->~( a4 g8) | f2.~ |    
  }
  \alternative {
    { f8 c\f\< d e f g\! | }
    { f4\repeatTie r8 r4 r8 | }
  }
  %TRIO
  \key bes \major
  \repeat volta 2 {
    r4 f8\p( e4 f8) | d'4.( bes) | g4.( bes) | f2. |
    r4 f8( e4 f8) | d'4.( bes) | g4. d'4( c8) | c4 r8 r4 r8 |
    r4 f,8( e4 f8) | d'4.( bes) | g4.( bes) | f2. |
    g4.( ees') | d4.( bes) | c4( g8) a4( f8) |
  }
  \alternative {
    { bes4 r8 r4 r8 | }
    { bes8-. d-.\< d-. d-. d-. d-. | }
  }
  %mark D
  \repeat volta 2 {
    d8\ff r r r d d | d8 r r r d d | d8 r r r4 r8 | r8 d d d4.:8 |
    d8 r r r d d | d8 r r r d d | d8 r r r4 r8 | r8 f f f4.:8 |
    f8 r r r f f | f8 r r r f f | f8 r r r4 r8 | r8 f f f4.:8 |
    f8 r r r f f | f8 r r r f f | f8 r r r4 r8 | R2. |
    %mark E
    r4 f,8\fff( e4 f8) | d'4.-> bes-> | g4.-> bes-> | f2.-> |
    r4 f8( e4 f8) | d'4.-> bes-> | g4.-> d'4->( c8) | c4 r8 r4 r8 |
    r4 f,8( e4 f8) | d'4.-> bes-> | g4.-> bes-> | f2.-> |
    g4.-> ees'-> | d4.-> bes-> | c4( g8) a4( f8) |
  }
  \alternative {
    { bes8 d-.\f\< d-. d-. d-. d-.\! | }
    { bes4 bes16 bes bes4 r8 | }
  }
  
}

fluteTwo = \relative c''' {
  \key f \major
  
  a4.->\ff c-> | bes4.-> e4->( d8) |
  c8 r r c4->( bes8) | a8 r r \acciaccatura { c16 d } c8\p( b bes)
  %mark A
  \repeat volta 2 {
    a8[ r a] a[ r a] | \acciaccatura bes a8( gis a) a4.-> |
    g!8[ r g]( a[) r a]( | bes4.~) bes4 r8 |
    g8[ r g] g[ r g] | \acciaccatura a g8( fis g) a4( g8) |
    f!8[ r f]( g[) r g]( | a4.~) a8 r r |
    a8[ r a] a[ r a] | \acciaccatura bes a8( gis a) a4. |
    g8[ r g] g[ r g] | \acciaccatura a g8( fis g) e'4( c8) |
    b8-.\f c-. cis-. d4.->~ | d8 dis-. e-. f4.->~ |
    f8 r r b,4.->( |
  }
  \alternative {
    { c8) r r \acciaccatura { c16 d } c8\p( b bes) }
    { c8\repeatTie c,\< d e f g }
  }
  %mark B
  \repeat volta 2 {
    a4.->\ff a-> | a4-> a8 gis4 a8 | a4 a8 f4.->~ | f8 c d e f g |
    a4.-> a-> | a4-> a8 gis4 a8 | bes4 bes8 e,4.->~ | e4 e8 g4 a8 |
    bes4.-> bes-> | bes4-> bes8 a4 bes8 | f'8[ r e] e4.->~ | e4 e,8 g4 bes8 |
    e8[ r d] d4.->~ | d4 e,8 g4 bes8 | d8[ r des] c4.->~ | c8 c, d e f g |
    %mark C
    a4.-> a-> | a4-> a8 gis4 a8 | a4 a8 f4.->~ | f8 c d e f g |
    a4.-> a-> | a8 f g a bes c | d2.->~ | d4 d8 cis4 d8 |
    f4.-> b,-> | e4.-> d-> | d8 r r c4.->~ | c4 f,8 g4 f8 |
    f2.->( | e2.) | f2.~ |    
  }
  \alternative {
    { f8 c\f\< d e f g\! | }
    { f4\repeatTie r8 r4 r8 | }
  }
  %TRIO
  \key bes \major
  \repeat volta 2 {
    r4 f8\p( e4 f8) | d'4.( bes) | g4.( bes) | f2. |
    r4 f8( e4 f8) | d'4.( bes) | g4. d'4( c8) | c4 r8 r4 r8 |
    r4 f,8( e4 f8) | d'4.( bes) | g4.( bes) | f2. |
    g4.( ees') | d4.( bes) | c4( g8) a4( f8) |
  }
  \alternative {
    { bes4 r8 r4 r8 | }
    { bes8 d-.\< d-. d-. d-. d-. | }
  }
  %mark D
  \repeat volta 2 {
    d8\ff r r r d d | d8 r r r d d | d8 r r r4 r8 | r8 d d d d d |
    d8 r r r d d | d8 r r r d d | d8 r r r4 r8 | r8 f f f f f |
    f8 r r r f f | f8 r r r f f | f8 r r r4 r8 | r8 f f f f f |
    f8 r r r f f | f8 r r r f f | f8 r r r4 r8 | R2. |
    %mark E
    r4 d,8\fff( cis4 d8) | f4.-> d-> | ees4.-> g4( ees8) | d2.-> |
    r4 d8( cis4 d8) | f4.-> d-> | e2.->( | ees!4) r8 r4 r8 |
    r4 d8( cis4 d8) | f4.-> d-> | ees4.-> g4->( ees8) | d2.-> |
    ees4.-> g-> | f4.-> d-> | ees4( g8) a4( f8) |
  }
  \alternative {
    { bes8 d-.\f\< d-. d-. d-. d-.\! | }
    { bes4 bes16 bes bes4 r8 | }
  }
}

oboeOne = \relative c'' {
  \key f \major
  
  a4.->\ff c-> | bes4.-> e4->( d8) |
  c8 r r a'4->( g8) | f8 r r \acciaccatura { c16 d } c8\p( b bes)
  %mark A
  \repeat volta 2 {
    \cPIII { a a a a | } \acciaccatura bes8 a8( gis a) d4( a8) |
    \cPIII { g g( a) a( | } | bes4.~) bes4 r8 |
    bes2.~ | bes2.( | \cPIII { a) a( bes) bes( | } c4.~)( c8 b bes) |
    \cPIII { a a a a | } \acciaccatura bes8 a8( gis a) c4( a8) | 
    c2.~ | c2. |
    b8-.\f c-. cis-. d4.->~ | d8 dis-. e-. f4.->~ |
    f8 r r b,4.->( |
  }
  \alternative {
    { c8) r r \acciaccatura { c16 d } c8\p( b bes) }
    { c8\repeatTie c\< d e f g }
  }
  %mark B
  \repeat volta 2 {
    a4.->\ff a-> | a4-> a8 gis4 a8 | d4 c8 a4.->~ | a8 c, d e f g |
    a4.-> a-> | a4-> a8 gis4 a8 | d4 c8 bes4.->~ | bes4 e,8 g4 a8 |
    bes4.-> bes-> | bes4-> bes8 a4 bes8 | bes8 r r bes4.->~ | bes8 r r r4 r8 |
    bes8 r r bes4.->~ | bes8 r r r4 r8 | a8 r r a4.->~ | a8 c, d e f g |
    %mark C
    a4.-> a-> | a4-> a8 gis4 a8 | d4 c8 a4.->~ | a8 c, d e f g |
    a4.-> a-> | a8 f g a bes c | d2.->~ | d4 r8 r4 r8 |
    gis,2.-> | gis2.-> | a8 r r a4.~ | a4 a8 a4 a8 |
    a4.( g) | a4.~ a4 g8 | f2.~ |    
  }
  \alternative {
    { f8 c\f\< d e f g\! | }
    { f4\repeatTie r8 r4 r8 | }
  }
  %TRIO
  \key bes \major
  \repeat volta 2 {
    R2.*2 | ees2.\p( | d2.) |
    R2.*2 | e2.( | ees!4) r8 r4 r8 |
    R2.*2 | ees2.( | d2.) |
    g,4.( ees') | d4.( bes) | c4( g8) a4( f8) |
  }
  \alternative {
    { bes4 r8 r4 r8 | }
    { bes4 r8 r4 r8 | }
  }
  %mark D
  \repeat volta 2 {
    d8\ff r r r d d | d8 r r r d d | d8 r r r4 r8 | r8 d d d d d |
    d8 r r r d d | d8 r r r d d | d8 r r r4 r8 | r8 f f f f f |
    f8 r r r f f | f8 r r r f f | f8 r r r4 r8 | r8 f f f f f |
    f8 r r r f f | f8 r r r f f | f8 r r r4 r8 | R2. |
    %mark E
    r4 f8\fff( e4 f8) | d'4.-> bes-> | g4.-> bes-> | f2.-> |
    r4 f8( e4 f8) | d'4.-> bes-> | e,2.->( | ees!4) r8 r4 r8 |
    r4 f8( e4 f8) | d'4.-> bes-> | g4.-> bes-> | f2.-> |
    ees4.-> g-> | f4.-> ees-> | d2.~ |
  }
  \alternative {
    { d4 r8 r4 r8 | }
    { d4\repeatTie d16 d d4 r8 | }
  }
}

bassoonOne = \relative c {
  \key f \major
  
  f4.->\ff d-> | g4.-> e-> | a8 r r c,4.->( | f4) r8 r4 r8 |
  %mark A
  \repeat volta 2 {
    \cPII { f\p a c, a' | f a c, a' | g bes d, bes' | g bes d, bes' |
	    e, g c, g' | e g c, g' | f a c, bes' | } a4 bes8 c,( d e ) |
    \cPII { f a c, a' | f a c, a' | } \cPI { g g | g g | s } %skip for rest at end
    g4.->\f~ g4 fis8 | f!4.->~ f4 e8 | d8 r r g,4.->( | 
  }
  \alternative {
    { c8) r r r4 r8 | }
    { c8\repeatTie r r r4 r8 | }
  }
  %mark B
  \repeat volta 2 {
    r8 c\ff d e f g | a4 r8 c,4 r8 | r8 c d e f g | a4 r8 c,4 r8 |
    r8 c d e f g | a4 r8 c,4 r8 | r8 d e f g a | bes4 r8 c,4 r8 |
    r8 d e f g a | \cPI { bes c, | g' c, | g' c, |
			  g' c, | g' c, | f c | f c | s }
    %mark C
    f8 c d e f g | a4 r8 c,4 r8 | r8 c d e f g | a4 r8 c,4 r8 |
    r8 c d e f g | a4 r8 c,4 r8 | r8 d e f g a | bes2.-> |
    \cPI { b, b | b b | c c | c c |
	   g g | c c | s } f4 d8 c4 a8 |
  }
  \alternative {
    { f4 r8 r4 r8 | }
    { f4 f8\p( e4 f8) | }
  }
  %TRIO
  \key bes \major
  \repeat volta 2 {
    \cPI { bes bes | bes bes | bes bes | s } bes4 f8( e4 f8) |
    \cPI { bes bes | bes bes | c c | s } f,4 f8( e4 f8) |
    \cPI { bes bes | bes bes | bes bes | bes bes |
	   ees, ees | f f | f f | s }
  }
  \alternative {
    { bes4 f8( e4 f8) |  }
    { bes4 r8 r4 r8  }
  }
  %mark D
  \repeat volta 2 {
    r8 fis'\ff g a4.->~ | a8 g a bes4.->~ | bes8 a bes c4 bes8 | a4 r8 r4 r8 |
    r8 fis g a4.->~ | a8 g a bes4.->~ | bes8 a bes c4 bes8 | a4 r8 r4 r8 |
    r8 a bes c4.->~ | c8 bes c d4.->~ | d8 c d ees4 d8 | c4 r8 r4 r8 |
    r8 a bes c4.->~ | c8 bes c d4.->~ | d8 c d ees4 d8 | c4 f,8( e4 f8) |
    %mark E
    \cPI { bes,\fff bes | bes bes | bes bes | s } bes4 f8( e4 f8) |
    \cPI { bes bes | bes bes | c c | s } f,4 f8( e4 f8) |
    \cPI { bes bes | bes bes | bes bes | bes bes | ees, ees | f f | f f | s }
  }
  \alternative {
    { bes4 r8 r4 r8 |  }
    { bes4 bes16 bes bes4 r8 | }
  } 
}

% clarinetInEb - dup of flute

clarinetOne = \relative c''' {
  \key g \major
  

  g4.->\ff gis-> | a4.-> ais-> |
  b8 r r b4->( a8) | g8 r r \acciaccatura { d'16 e } d8\p( cis c)
  %mark A
  \repeat volta 2 {
    b8[ r b] b[ r b] | \acciaccatura c8 b( ais b) e4( b8) |
    a8[ r a]( b[) r b]( | c4.~) c4 r8 |
    a8[ r a] a[ r a] \acciaccatura b8 a( gis a) d4( c8) |
    b8[ r b]( c[) r c]( | d4.~) d8( cis c) |
    b8[ r b] b[ r b] | \acciaccatura c8 b( ais b) d4( b8) |
    a8[ r a] a[ r a] | \acciaccatura b8 a( gis a) fis'4( d8) |
    cis8-.[\f r cis-.] cis4.->~ | cis8[ r cis-.] cis4.->~ |
    cis8 r r g4.->( 
  }
  \alternative {
    { fis8) r r \acciaccatura { d'16 e } d8\p( cis c) | }
    { fis,8\repeatTie d\< e fis g a |  }
  }
  %mark B
  \repeat volta 2 {
    b4.->\ff b-> | b4-> b8 ais4 b8 | e4 d8 b4.->~ | b8 d, e fis g a |
    b4.-> b-> | b4-> b8 ais4 b8 | e4 d8 c4.->~ | c4 fis,8 a4 b8 |
    c4.-> c-> | c4-> c8 b4 c8 | c8[ r c] c4.->~ | c4 fis,8 a4 c8 |
    c8[ r c] c4.->~ | c4 fis,8 a4 c8 | b8[ r b] b4.->~ | b8 d, e fis g a |
    %mark C
    b4.-> b-> | b4-> b8 ais4 b8 | e4 d8 b4.->~ | b8 d, e fis g a |
    b4.-> b-> | b8 g a b c d | e2.~-> | e4 e8 dis4 e8 |
    bes2.-> | bes2.-> | b!8 r r d4.~-> | d4 g,8 a4 c8 |
    b4.->( a) | b4.->~( b4 a8) | g2.~ |
  }
  \alternative {
    { g8 d\f\< e fis g a\! |  }
    { g4\repeatTie g,,8\p(^"Soli" fis4 g8) }
  }
  %TRIO
  \key c \major
  \repeat volta 2 {
    c4 e'8( dis4 e8) | g4.( e) | f4. a4( f8) | e2. |
    r4 e8( dis4 e8) | g4.( e) | fis2.( | f!4) g,,8( fis4 g8) |
    c4 e'8( dis4 e8) | g4.( e) | f4. a4( f8) | e2. |
    f4.( a) | g4.( e) | f2.( | 
  }
  \alternative {
    { e4) g,,8\p^"Soli"( fis4 g8) |  }
    { e''8
      \ottava #1
      \set Staff.ottavation = #"8"
      e'8-.\< e-. e-. e-. e-.
      \ottava #0 | }
  }
  %mark D
  \repeat volta 2 {
    gis,8\ff r r r gis gis | a8 r r r a a | gis8 r r r4 r8 | r8
    \ottava #1
    \set Staff.ottavation = #"8"
    e'8 e e e e
    \ottava #0 |
    gis,8 r r r gis gis | a8 r r r a a | gis8 r r r4 r8 | r8
    \ottava #1
    \set Staff.ottavation = #"8"
    g'8 g g g g
    \ottava #0 |
    b,8 r r r b b | c8 r r r c c | b8 r r r4 r8 | r8
    \ottava #1
    \set Staff.ottavation = #"8"
    g'8 g g g g
    \ottava #0 |
    b,8 r r r b b | c8 r r r c c | b8 r r r4 r8 | r2.
    %mark E
    r4 g8\fff( fis4 g8) | e'4.-> c-> | a4.-> c-> | g2.-> |
    r4 g8( fis4 g8) | e'4.-> c-> | a4.-> e'4->( d8) | d4 r8 r4 r8 |
    r4 g,8( fis4 g8) | e'4.-> c-> | a4.-> c-> | g2.-> |
    a4.-> f'-> | e4.-> c-> | d4( a8) b4( g8) |
  }
  \alternative {
    { c8 e-.\f\< e-. e-. e-. e-.\! | }
    { c4 c16 c c4 r8 |  }
  }
}

clarinetTwo = \relative c'' {
  \key g \major
  
  b4.->\ff d-> | c4.-> fis4->( e8) |
  d8 r r d4->( c8) | b8 r r r4 r8 |
  
  %mark A
  \repeat volta 2 {
    g4.\p( fis | e4. d | c4. b | a4.~ a4) r8
    fis''8[ r fis] fis[ r fis] | \acciaccatura g8 fis( eis fis) b4( a8) |
    g8[ r g]( a[) r a]( | b4.~) b8 r r  |
    g,4.( fis | e4. d) | 
    fis'8[ r fis] fis[ r fis] | \acciaccatura g8 fis( eis fis) a4( fis8) |
    cis8-.\f d-. dis-. e4.->~ | e8 eis-. fis-. g4.->~ |
    g8 r r cis,4.->( 
  }
  \alternative {
    { d4) r8 r4 r8 | }
    { d8\repeatTie d,\< e fis g a |  }
  }
  %mark B
  \repeat volta 2 {
    b4.->\ff b-> | b4-> b8 ais4 b8 | e4 d8 b4.->~ | b8 d, e fis g a |
    b4.-> b-> | b4-> b8 ais4 b8 | e4 d8 c4.->~ | c4 fis,8 a4 b8 |
    c4.-> c-> | c4-> c8 b4 b8 | g'8[ r fis] fis4.->~ | fis4 fis,8 a4 c8 |
    fis8[ r e] e4.->~ | e4 fis,8 a4 c8 | e8[ r ees] d4.->~ | d8 d, e fis g a |
    %mark C
    b4.-> b-> | b4-> b8 ais4 b8 | e4 d8 b4.->~ | b8 d, e fis g a |
    b4.-> b-> | b8 g a b c d | e2.->~ | e4 e8 dis4 e8 |
    g4.-> cis,-> | fis4.-> e-> | e8 r r d4.->~ | d4 d8 d4 d8 |
    cis2.( | c!2.) | b2.~ |
  }
  \alternative {
    { b8 d,\f\< e fis g a\! |  }
    { b4\repeatTie g,8\p(^"Soli" fis4 g8) }
  }
  %TRIO
  \key c \major
  \repeat volta 2 {
    c4 g'8( fis4 g8) | e'4.( c) | a4.( c) | g2. |
    r4 g8( fis4 g8) | e'4.( c) | a4. e'4( d8) | d4 g,,8( fis4 g8) |
    c4 g'8( fis4 g8) | e'4.( c) | a4.( c) | g2. |
    a4.( f') | e4.( c) | d4( a8) b4( g8) |
  }
  \alternative {
    { c4 g,8\p^"Soli"( fis4 g8) |  }
    { c'8 e8-.\< e-. e-. e-. e-. | }
  }
  
  %mark D
  \repeat volta 2 {
    d8\ff r r r d d | c8 r r r c c |
    b8 r r r4 r8 | r8 e e e e e |
    d8 r r r d d | c8 r r r c c |
    b8 r r r4 r8 | r8 g' g g g g |
    f8 r r r f f | e8 r r r e e |
    d8 r r r4 r8 | r8 g g g g g |
    f8 r r r f f | e8 r r r e e |
    d8 r r r4 r8 | R2. |

    %mark E
    r4 g,8\fff( fis4 g8) | e'4.-> c-> | a4.-> c-> | g2.-> |
    r4 g8( fis4 g8) | e'4.-> c-> | a4.-> e'4->( d8) | d4 r8 r4 r8 |
    r4 g,8( fis4 g8) | e'4.-> c-> | a4.-> c-> | g2.-> |
    a4.-> f'-> | e4.-> c-> | f2.( |
  }
  \alternative {
    { e8) e-.\f\< e-. e-. e-. e-.\! | }
    { e4\repeatTie e16 e e4 r8 |  }
  }
}

clarinetThree = \relative c'' {
  \key g \major
  
  g4.->\ff b-> | c4.-> cis4.-> |
  d8 r r fis,4.->( | g8) r r r4 r8 |
  
  %mark A
  \repeat volta 2 {
    g4.\p( fis | e4. d | c4. b | a4.~ a4) r8
    a'8[ r a] a[ r a] |  a8( gis a) d4( c8) |
    b8[ r b]( c[) r c]( | d4.~) d8 r r  |
    g,4.( fis | e4. d) | 
    a'8[ r a] a[ r a] | a( gis a) fis'4( d8) |
    a8-.[\f r a-.] a4.->~ | a8[ r a-.] a4.->~ |
    a8 r r a4.->~ 
  }
  \alternative {
    { a4 r8 r4 r8 | }
    { a8\repeatTie d,\< e fis g a |  }
  }
  %mark B
  \repeat volta 2 {
    b4.->\ff b-> | b4-> b8 ais4 b8 | e4 d8 b4.->~ | b8 d, e fis g a |
    b4.-> b-> | b4-> b8 ais4 b8 | e4 d8 c4.->~ | c4 fis,8 a4 b8 |
    c4.-> c-> | c4-> c8 b4 b8 | d8[ r d] d4.->~ | d4 fis,8 a4 c8 |
    c8[ r c] c4.->~ | c4 fis,8 a4 c8 | e8[ r ees] d4.->~ | d8 d, e fis g a |
    %mark C
    b4.-> b-> | b4 b8 ais4 b8 | e4 d8 b4.->~ | b8 d, e fis g a |
    b4.-> b-> | f2.( | e2.)~ | e4 e'8 dis4 e8 |
    g,2.~ | g2. | g8 r r g4.->~ | g4 b8 b4 b8 |
    e,2.( | fis2.) | g2.~ |
  }
  \alternative {
    { g8 d\f\< e fis g a\! |  }
    { g4\repeatTie g,8\p(^"Soli" fis4 g8) }
  }
  %TRIO
  \key c \major
  \repeat volta 2 {
    c4 g'8( fis4 g8) | e'4.( c) | a4.( c) | g2. |
    r4 g8( fis4 g8) | e'4.( c) | a4. e'4( d8) | d4 g,,8( fis4 g8) |
    c4 g'8( fis4 g8) | e'4.( c) | a4.( c) | g2. |
    a4.( f') | e4.( c) | d4( a8) b4( g8) |
  }
  \alternative {
    { c4 g,8\p^"Soli"( fis4 g8) |  }
    { c'8 e8-.\< e-. e-. e-. e-. | }
  }
  
  %mark D
  \repeat volta 2 {
    b8\ff r r r b b | a8 r r r a a |
    gis8 r r r4 r8 | r8 e' e e e e |
    b8 r r r b b | a8 r r r a a |
    gis8 r r r4 r8 | r8 g' g g g g |
    d8 r r r d d | c8 r r r c c |
    b8 r r r4 r8 | r8 g' g g g g |
    d8 r r r d d | c8 r r r c c |
    b8 r r r4 r8 | R2. |

    %mark E
    r4 g8\fff( fis4 g8) | e'4.-> c-> | a4.-> c-> | g2.-> |
    r4 g8( fis4 g8) | e'4.-> c-> | a4.-> e'4->( d8) | d4 r8 r4 r8 |
    r4 g,8( fis4 g8) | e'4.-> c-> | a4.-> c-> | g2.-> |
    a4.-> f'-> | e4.-> c-> | b2.( |
  }
  \alternative {
    { c8) e-.\f\< e-. e-. e-. e-.\! | }
    { c4\repeatTie c16 c c4 r8 |  }
  }
}

clarinetBass = \relative c'' {
  \key g \major

  g4.->\ff e-> | a4.-> fis->( | b8) r r d,4.->( | g8) r r r4. |
  
  %mark A
  \repeat volta 2 {
    \cPI { g\p d | g d | a' e | a g | fis d | fis d | g d | g d |
	   g d | g d | a' a | a a | s } % skip at the end to get the last rest
    a4.~\f a4 gis8 | g4.~ g4 fis8 | e8 r r a4.( |
  }
  \alternative {
    { d,8) r r r4 r8 |  }
    { d8\repeatTie r r r4 r8 |  }
  }
  %mark B
  \repeat volta 2 {
    \cPII { g\ff d' d, d' | g, d' d, d' |g, d' d, d' | } g,4 r8 d4 r8 |
    \cPII { g d' d, d' | g, d' d, d' | a d d, d' | } a4 r8 d,4 r8 |
    \cPI { fis d | a' d, | a' d, | a' d, |
	   a' d, | a' d, | g d | g d | s }
    %mark C
    \cPII { g d' d, d' | g, d' d, d' | g, d' d, d' | } g,4 r8 d4 r8 |
    \cPII {g d' d, d' | } g,4 r8 g4. | \cPI { c, c | c c | s }
    \cPI { cis cis | cis cis | s } \cPII { d d' b g | } d4 r8 d4 r8 |
    \cPI { a' a | d, d | s } \cPII { g e' d b | }
  }
  \alternative {
    { g8 r r r4 r8 |  }
    { g4 g,8\p( fis4 g8)  }
  }
  %TRIO
  \key c \major
  \repeat volta 2 {
    \cPI { c c | c c | c c | s } \cPII { c g( fis g) | }
    \cPI { c c | c c | d d | s } \cPII { g g,( fis g) | }
    \cPI { c c | c c | c c | s } c4 r8 c'8 b bes |
    a4.( f') | e4.( c) | d4 a8 b4. |
  }
  \alternative {
    { c4 g,8( fis4 g8) |  }
    { c'4 r8 r4 r8 |  }
  }
  %mark D
  \repeat volta 2 {
    r8 gis,\ff a b4.->~ | b8 a b c4.->~ | c8 b c d4 c8 | b4 r8 r4 r8 |
    r8 gis a b4.->~ | b8 a b c4.->~ | c8 b c d4 c8 | b4 r8 r4 r8 |
    r8 b c d4.->~ | d8 c d e4.->~ | e8 d e f4 e8 | d4 r8 r4 r8 |
    r8 b c d4.->~ | d8 c d e4.->~ | e8 d e f4 e8 | d4 g8\fff( fis4 g8) |
    %mark E
    e'2.-> | g4.-> e-> | f4.-> c4( d8) | e4 g,8( fis4 g8) |
    e'2.-> | g4.-> e-> | d4.-> c-> | b4 g8( fis4 g8) |
    e'2.-> | g4.-> e-> | f4.-> c4( d8) | e2.-> |
    \cPI { f, f | g g | g, g | s }
  }
  \alternative {
    { c4 r8 r4 r8 |  }
    { c4 c16 c c4 r8 |  }
  }  
}

saxAlto = \relative c'' {
  \key d \major
  
  d4.->\ff dis-> | e4.-> eis->( | fis8) r r cis4.( | d4) r8 r4 r8 |
  %mark A
  \repeat volta 2 {
    d4.\p( cis | b4. a | g4. fis | e4.~ e4) r8 |
    cis'2.~ | cis2. | d2.~ | d4 r8 r4 r8 |
    d4.( cis | b4. a) | cis2.~ | cis2. |
    b4\f b8 b4.~ | b4 d8 d4.~ | d8 r r d4.( |
  }
  \alternative {
    { cis8) r r r4 r8 |  }
    { cis8\repeatTie a\< b cis d e |  }
  }
  %mark B
  \repeat volta 2 {
    fis4.->\ff fis-> | fis4-> fis8 eis4 fis8 | b4 a8 fis4.->~ | fis8 a, b cis d e |
    fis4.-> fis-> | fis4-> fis8 eis4 fis8 | b4 a8 g4.->~ | g4 cis,8 e4 fis8 |
    g4.-> g-> | g4-> g8 fis4 g8 | g8 r r g4.->~ | g4 cis,8 e4 g8 |
    g8 r r g4.->~ | g4 cis,8 e4 g8 | b8[ r bes] a4.->~ | a8 a, b cis d e |
    %mark C
    fis4.-> fis-> | fis4-> fis8 eis4 fis8 | b4 a8 fis4.->~ | fis8 a, b cis d e |
    fis4.-> fis-> | fis8 d e fis g a | b2.~ | b4 b8 ais4 b8 |
    eis,2.-> | eis2.-> | fis8 r r fis4.~ | fis4 d8 e4 g8 |
    fis4.( e) | fis4.~ fis4 e8 | d2.~ |
  }
  \alternative {
    { d8 a\f\< b cis d e\! |  }
    { d4 r8 r4 r8 |  }
  }
  %TRIO
  \key g \major
  \repeat volta 2 {
    r4 b8\p( ais4 b8) | d4.( b) | c4. e4( c8) | b2. |
    r4 b8( ais4 b8) | d4.( b) | cis2.( | c!4) r8 r4 r8 |
    r4 b8( ais4 b8) | d4.( b) | c4. e4( c8) | b2. |
    c4.( e) | d4.( b) | c2.( |
  }
  \alternative {
    { b4) r8 r4 r8 |  }
    { b4\repeatTie r8 r4 r8  }
  }
  %mark D
  \repeat volta 2 {
    r8 dis,\ff e fis4.->~ | fis8 e fis g4.~ | g8 fis g a4 g8 | fis4 r8 r4 r8 |
    r8 dis e fis4.->~ | fis8 e fis g4.~ | g8 fis g a4 g8 | fis4 r8 r4 r8 |
    r8 fis g a4.->~ | a8 g a b4.->~ | b8 a b c4 b8 | a4 r8 r4 r8 |
    r8 fis g a4.->~ | a8 g a b4.->~ | b8 a b c4 b8 | a4 r8 r4 r8 |
    %mark E
    r4 d8\fff( cis4 d8) | b'4.-> g-> | e4.-> g-> | d2.-> |
    r4 d8( cis4 d8) | b'4.-> g-> | e4.-> b'4->( a8) | a4 r8 r4 r8 |
    r4 d,8( cis4 d8) | b'4.-> g-> | e4.-> g-> | d2.-> |
    e4.-> c'-> | b4.-> g-> | a4( e8) fis4( d8) |
  }
  \alternative {
    { g4 r8 r4 r8 | }
    { g4 d16 d d4 r8 | }
  }  
}

saxTenor = \relative c'' {
  \key g \major

  b4.->\ff d-> | c4.-> e->( | d8) r r c4.->( | b8) r r r4 r8 |
  %mark A
  \repeat volta 2 {
    g'4.\p( fis | e4. d | c4. b | a4.~ a4) r8 |
    c2.~ | c2. | b2.~ | b4 r8 r4 r8 |
    g'4.( fis | e4. d) | d2.~ | d2. |
    a4.~\f a4 aes8 | g4.~ g4 fis8 | e8 r r a4.->~ | 
  }
  \alternative {
    { a8 r r r4 r8 | }
    { a8\repeatTie r r r4 r8 | }
  }
  %mark B
  \repeat volta 2 {
    g4.->\ff fis-> | e4.-> d-> | b'8 r r b4.->~ | b8 d, e fis g a |
    g4.-> fis-> | e4.-> d-> | c'8 r r c4.->~ | c4 c8 c4 c8 |
    a4.-> g-> | fis4.-> e-> | c'8 r r c4.->~ | c4 c8 c4 c8 |
    c8 r r c4.->~ | c4 c8 c4 c8 | b8 r r b4.->~ | b4 b8 b4 b8 |
    %mark C
    g4.-> fis-> | e4.-> d-> | b'8 r r b4.->~ | b8 d, e fis g a |
    g4.-> fis-> | e4.-> d-> | r8 e fis g a b | c2.-> |
    e2.-> | e2.-> | d8 r r d4.->~ | d4 d8 d4 d8 |
    cis2.( | c!2.) | b2.~ | 
  }
  \alternative {
    { b4 r8 r4 r8 | }
    { b4\repeatTie g8\p( fis!4 g8) | }
  }

  %TRIO
  \key c \major
  \repeat volta 2 {
    e'4 r8 r4 r8 | r4 g,8 c4 e8 | f4. c4( d8) | e4 g,8( fis4 g8) |
    e'4 r8 r4 r8 | r4 g,8 c4 e8 | d4.( c | b4) g8( fis4 g8) |
    e'4 r8 r4 r8 | r4 g,8 c4 e8 | f4. c4( d8) | e4 d8 c b bes |
    a4.( f') | e4.( c) | d4( a8) b4( g8) | 
  }
  \alternative {
    { c4 g8\p( fis4 g8) | }
    { c4 r8 r4 r8 | }
  }
  %mark D
  \repeat volta 2 {
    r8 gis\ff a b4.->~ | b8 a b c4.->~ | c8 b c d4 c8 | b4 r8 r4 r8 |
    r8 gis a b4.->~ | b8 a b c4.->~ | c8 b c d4 c8 | b4 r8 r4 r8 |
    r8 b c d4.->~ | d8 c d e4.->~ | e8 d e f4 e8 | d4 r 8 r4 r8 |
    r8 b c d4.->~ | d8 c d e4.->~ | e8 d e f4 e8 | d4 g,8\fff( fis4 g8) |
    %mark E
    e'2. | g4.-> e-> | f4.-> c4( d8) | e4 g,8( fis4 g8) |
    e'2. | g4.-> e-> | d4.-> c-> | b4 g8( fis4 g8) |
    e'2. | g4.-> e-> | f4.-> c4->( d8) | e2. |
    a,4.-> f'-> | e4.-> c-> | b2.->( |
  }
  \alternative {
    { c4) r8 r4 r8 | }
    { c4\repeatTie e16 e e4 r8 | }
  }  
}

saxBaritone = \relative c' {
  \key d \major
  
  d4.->\ff b'-> | e,4.-> cis'-> | fis,4 r8 a4.->( | d8) r r r4 r8 |
  %mark A
  \repeat volta 2 {
    \cPI { d\p a | d a | e' b | e d | s }
    cis2.( | a2.) | \cPI { d a | d a | s }
    \cPI { d a | d a | s } e'2.~ | e2. |
    e4.~\f e4 ees8 | d4.~ d4 cis8 | b8 r r e,4.( | 
  }
  \alternative {
    { a8) r r r4 r8 | }
    { a8\repeatTie r r r4 r8 | }
  }
  %mark B
  \repeat volta 2 {
    d4.->\ff cis-> | b4.-> a-> | d8 r r d4.->~ | d4 d8 d4 d8 |
    d4.-> cis-> | b4.-> a-> | e'8 r r e4.->~ | e4 e8 e4 e8 |
    e4.-> d-> | cis4.-> b-> | e8 r r e4.->~ | e4 a,8 a4 a8 |
    e'8 r r e4.-> | e4 a,8 a4 a8 | d8 r r d4.->~ | d4 a8 a4 a8 |
    %mark C
    d4.-> cis-> | b4.-> a-> | d8 r r d4.->~ | d4 d8 d4 d8 |
    d4.-> cis-> | b4.-> a-> | r8 b cis d e fis | g2.-> |
    gis,2.-> | gis2.-> | a8 r r a4.->~ | a4 a8 a4 a8 |
    e'2.( | a,2.) | d4 b8 a4 fis8 |
  }
  \alternative {
    { d4 r8 r4 r8 | }
    { d4 d'8\p( cis4 d8) | }
  }
  %TRIO
  \key g \major
  \repeat volta 2 {
    \cPI { g, g | g g | g g | s } g4 d'8( cis4 d8) |
    \cPI { g, g | g g | a a | s } d 4 d8( cis4 d8) |
    \cPI { g, g | g g | g g | g g |
	   c c | d d | d d | s }
  }
  \alternative {
    { g,4 d'8\p( cis4 d8) |  }
    { g,4 r8 r4 r8 |  }
  }
  %mark D
  \repeat volta 2 {
    r8 dis\ff e fis4.->~ | fis8 e fis g4.->~ | g8 fis g a4 g8 | fis4 r8 r4 r8 |
    r8 dis e fis4.->~ | fis8 e fis g4.->~ | g8 fis g a4 g8 | fis4 r8 r4 r8 |
    r8 fis g a4.->~ | a8 g a b4.->~ | b8 a b c4 b8 | a4 r8 r4 r8 |
    r8 fis g a4.->~ | a8 g a b4.->~ | b8 a b c4 b8 | a4 d8( cis4 d8) |
    %mark E
    \cPI { g,\fff g | g g | g g | s } g4 d'8( cis4 d8) |
    \cPI { g, g | g g | a a | s } d4 d8( cis4 d8) |
    \cPI { g, g | g g | g g | g g |
	   c c | d d | s } d2.( |
  }
  \alternative {
    { g,4) r8 r4 r8 | }
    { g4\repeatTie g16 g g4 r8 | }
  }
}

trumpetOne = \relative c' {
  \key g \major

  d4.->\ff e-> | e4.-> fis->~ | fis8 r r fis4.->( | g8) r r r4 r8 |
  %mark A
  \repeat volta 2 {
    g4.\p(^"Soli" fis | e4. d | c4. b | a4.~ a4) r8 |
    fis'2.~ | fis2. | g2.~ | g4 r8 r4 r8 |
    g4.( fis | e4. d) | fis2.~ | fis2. |
    a4\f a8 a4.->~ | a4 a8 a4.-> | a8 r r g4.->( |
  }
  \alternative {
    { fis8) r r r4 r8 | }
    { fis8\repeatTie r r r4 r8 | }
  }
  %mark B
  \repeat volta 2 {
    r8 g\ff g r g g | r8 g g r g g | g8 r r g4.->~ | g4 g8 g4 g8 |
    r8 g g r g g | r8 g g r g g | fis8 r r fis4.->~ | fis4 fis8 fis4 fis8 |
    r8 fis fis r fis fis | r8 fis fis r fis fis | a8 r r a4.->~ | a4 a8 a4 a8 |
    a8 r r a4.~ | a4 a8 a4 a8 | g8 r r g4.->~ | g4 r8 r4 r8 |
    r8 g g r g g | r8 g g r g g | g8 r r g4.->~ | g4 g8 g4 g8 |
    r8 g g r g g | r8 f f r f f | e2.->~ | e4 e8 e4 e8 |
    g2.-> | g2.-> | g8 r r g4.~ | g4 g8 g4 g8 |
    g2.( | fis2.) | d2.~ |
  }
  \alternative {
    { d4 r8 r4 r8 | }
    { d4\repeatTie r8 r4 r8 | }
  }
  %TRIO
  \key c \major
  \repeat volta 2 {
    r4 e8\p( dis4 e8) | g4.( e) | f4. a4( f8) | e2. |
    r4 e8( dis4 e8) | g4.( e) | fis2.( | f!4) r8 r4 r8 |
    r4 e8( dis4 e8) | g4.( e) | f4. a4( f8) | e2. |
    f4.( a) | g4.( e) | f2.( |
  }
  \alternative {
    { e4) r8 r4 r8 | }
    { e8 e-.\< e-. e-. e-. e-. | }
  }
  %mark D
  \repeat volta 2 {
    b'8\ff r r r b b | a8 r r r a a | gis r r r4 r8 | r8 e e e e e |
    b'8 r r r b b | a8 r r r a a | gis r r r4 r8 | r8 g! g g g g |
    d'8 r r r d d | c8 r r r c c | b r r r4 r8 | r8 g g g g g |
    d'8 r r r d d | c8 r r r c c | b r r r4 r8 | R2. |
    %mark E
    r8 g\fff g r g g | r8 g g r g g | r8 a a r a a | r8 g g g g g |
    r8 g g r g g | r8 g g r g g | fis2.( | f!8) f f f f f |
    r8 g g r g g | r8 g g r g g | r8 a a r a a | r8 g g g g g |
    f4.-> a-> | g4.-> e-> | d2.( | 
  }
  \alternative {
    { c8) e-.\f\< e-. e-. e-. e-.\! | }
    { c4\repeatTie c16 c c4 r8 | }
  }
}

trumpetTwo = \relative c' {
  \key g \major

  d4.->\ff e-> | e4.-> fis->~ | fis8 r r d4.->~ | d8 r r r4 r8 |
  %mark A
  \repeat volta 2 {
    g4.\p(^"Soli" fis | e4. d | c4. b | a4.~ a4) r8 |
    d2.~ | d2. | d2.~ | d4 r8 r4 r8 |
    g4.( fis | e4. d) | fis2.~ | fis2. |
    a4\f a8 a4.->~ | a4 a8 a4.->~ | a8 r r e4.->( |
  }
  \alternative {
    { d8) r r r4 r8 | }
    { d8\repeatTie r r r4 r8 | }
  }
  %mark B
  \repeat volta 2 {
    r8 d\ff d r d d | r8 d d r d d | d8 r r d4.->~ | d4 d8 d4 d8 |
    r8 d d r d d | r8 d d r d d | d8 r r d4.->~ | d4 d8 d4 d8 |
    r8 d d r d d | r8 d d r d d | d8 r r d4.->~ | d4 d8 d4 d8 |
    d8 r r d4.->~ | d4 d8 d4 d8 | d8 r r d4.->~ | d4 r8 r4 r8 |
    r8 d d r d d | r8 d d r d d | d8 r r d4.->~ | d4 d8 d4 d8 |
    r8 d d r d d | r8 d d r d d | e2.->~ | e4 e8 e4 e8 |
    g2.-> | g2.-> | g8 r r g4.~ | g4 g8 g4 g8 |
    e2.( | d2.) | d2.~ |
  }
  \alternative {
    { d4 r8 r4 r8 | }
    { d4\repeatTie r8 r4 r8 | }
  }
  %TRIO
  \key c \major
  \repeat volta 2 {
    R2.*6 | d2.~ | d4 r8 r4 r8 |
    R2.*6 | d2.(
  }
  \alternative {
    { c4) r8 r4 r8 | }
    { c8\repeatTie e-.\< e-. e-. e-. e-. | }
  }
  %mark D
  \repeat volta 2 {
    e8\ff r r r e e | e8 r r r e e | e8 r r r4 r8 | r8 e e e e e |
    e8 r r r e e | e8 r r r e e | e8 r r r4 r8 | r8 g g g g g |
    g8 r r r g g | g8 r r r g g | g8 r r r4 r8 | r8 g g g g g |
    g8 r r r g g | g8 r r r g g | g8 r r r4 r8 | R2. |
    %mark E
    r8 e\fff e r e e | r8 e e r e e | r8 f f r f f | r8 e e e e e |
    r8 e e r e e | r8 e e r e e | d2.( | d8) d d d d d |
    r8 e e r e e | r8 e e r e e | r8 f f r f f | r8 e e e e e |
    f4.-> a-> | g4.-> e-> | d2.( | 
  }
  \alternative {
    { c8) e-.\f\< e-. e-. e-. e-.\! | }
    { c4\repeatTie c16 c c4 r8 | }
  }
}

cornetSolo = \relative c'' {
  \key g \major
  
  b4.->\ff d-> | c4.-> fis4->( e8) |
  d8 r r b'4->( a8) | g4 r8 \acciaccatura { d16 e } d8\p( cis c) |
  %mark A
  \repeat volta 2 {
    b8[ r b] b[ r b] | \acciaccatura c8 b8( ais b) e4( b8) |
    a8[ r a]( b[) r b]( | c4.~) c4 r8 |
    a8[ r a] a[ r a] | \acciaccatura b8 a8( gis a) d4( c8) |
    b8[ r b]( c[) r c]( | d4.~)( d8 cis c) |
    b8[ r b] b[ r b] | \acciaccatura c8 b8( ais b) d4( b8) |
    a8[ r a] a[ r a] | \acciaccatura b8 a8( gis a) fis'4( d8) |
    cis8-.\f d-. dis-. e4.->~ | e8 eis-. fis-. g4.->~ |
    g8 r r cis,4.->( |
  }
  \alternative {
    { d8) r r \acciaccatura { d16 e } d8\p( cis c) | }
    { d8\repeatTie d,\< e fis g a | }
  }
  %mark B
  \repeat volta 2 {
    b4.->\ff b-> | b4-> b8 ais4 b8 | e4 d8 b4.->~ | b8 d, e fis g a |
    b4.-> b-> | b4-> b8 ais4 b8 | e4 d8 c4.->~ | c4 fis,8 a4 b8 |
    c4.-> c-> | c4-> c8 b4 c8 | g'8[ r fis] fis4.->~ | fis4 fis,8 a4 c8 |
    fis8[ r e] e4.->~ | e4 fis,8 a4 c8 | e8[ r ees] d4.->~ | d8 d, e fis g a |
    %mark C
    b4.-> b-> | b4-> b8 ais4 b8 | e4 d8 b4.->~ | b8 d, e fis g a |
    b4.-> b-> | b8 g a b c d | e2.~ | e4 e8 dis4 e8 |
    g4.-> cis,-> | fis4.-> e-> | e8 r r d4.->~ | d4 g,8 a4 c8 |
    b4.->( a) | b4.->~ b4 a8 | g2.( |
  }
  \alternative {
    { g8) d\f\< e fis g a\! | }
    { g4\repeatTie r8 r4 r8 | }
  }
  %TRIO
  \key c \major
  \repeat volta 2 {
    r4 g8\p( fis4 g8) | e'4.( c) | a4.( c) | g2. |
    r4 g8( fis4 g8) | e'4.( c) | a4. e'4( d8) | d4 r8 r4 r8 |
    r4 g,8( fis4 g8) | e'4.( c) | a4.( c) | g2. |
    a4.( f') | e4.( c) | d4( a8) b4( g8) |
  }
  \alternative {
    { c4 r8 r4 r8 | }
    { c8 e-.\< e-. e-. e-. e-. | }
  }
  %mark D
  \repeat volta 2 {
    e8\ff r r r e e | e8 r r r e e | e8 r r r4 r8 | r8 e e e e e |
    e8 r r r e e | e8 r r r e e | e8 r r r4 r8 | r8 g g g g g |
    g8 r r r g g | g8 r r r g g | g8 r r r4 r8 | r8 g g g g g |
    g8 r r r g g | g8 r r r g g | g8 r r r4 r8 | R2. |
    %mark E
    r4 g,8\fff( fis4 g8) | e'4.-> c-> | a4.-> c-> | g2.-> |
    r4 g8( fis4 g8) | e'4.-> c-> | a4.-> e'4( d8) | d4 r8 r4 r8 |
    r4 g,8( fis4 g8) | e'4.-> c-> | a4.-> c-> | g2.-> |
    a4.-> f'-> | e4.-> c-> | d4( a8) b4( g8) |
  }
  \alternative {
    { c8 e-.\f\< e-. e-. e-. e-. | }
    { c4\! c16 c c4 r8 | }
  }
}

cornetOne = \relative c'' {
  \key g \major
  
  g4.->\ff gis-> | a4.-> bes4.->(  |
  b!8) r r d4->( c8) | b4 r8 \acciaccatura { d16 e } d8\p( cis c) |
  %mark A
  \repeat volta 2 {
    b8[ r b] b[ r b] | \acciaccatura c8 b8( ais b) e4( b8) |
    a8[ r a]( b[) r b]( | c4.~) c4 r8 |
    a8[ r a] a[ r a] | \acciaccatura b8 a8( gis a) d4( c8) |
    b8[ r b]( c[) r c]( | d4.~)( d8 cis c) |
    b8[ r b] b[ r b] | \acciaccatura c8 b8( ais b) d4( b8) |
    a8[ r a] a[ r a] | \acciaccatura b8 a8( gis a) fis'4( d8) |
    cis8-.\f d-. dis-. e4.->~ | e8 eis-. fis-. g4.->~ |
    g8 r r cis,4.->( |
  }
  \alternative {
    { d8) r r \acciaccatura { d16 e } d8\p( cis c) | }
    { d8\repeatTie r r r4. | }
  }
  %mark B
  \repeat volta 2 {
    b4.->\ff b-> | b4-> b8 ais4 b8 | e4 d8 b4.->~ | b8 d, e fis g a |
    b4.-> b-> | b4-> b8 ais4 b8 | e4 d8 c4.->~ | c4 fis,8 a4 b8 |
    c4.-> c-> | c4-> c8 b4 c8 | c8 r r c4.->~ | c4 fis,8 a4 c8 |
    c8 r r c4.->~ | c4 fis,8 a4 c8 | b8 r r b4.->~ | b8 d, e fis g a |
    %mark C
    b4.-> b-> | b4-> b8 ais4 b8 | e4 d8 b4.->~ | b8 d, e fis g a |
    b4.-> b-> | b8 g a b c d | e2.~ | e4 e8 dis4 e8 |
    bes2.-> | bes2.->| b!8 r r b4.->~ | b4 g8 a4 c8 |
    b4.->( a) | b4.->~ b4 a8 | g2.( |
  }
  \alternative {
    { g8) d\f\< e fis g a\! | }
    { g4\repeatTie r8 r4 r8 | }
  }
  %TRIO
  \key c \major
  \repeat volta 2 {
    r4 e8\p( dis4 e8) | g4.( e) | f4. a4( f8) | e2. |
    r4 e8( dis4 e8) | g4.( e) | fis2.( | f!4) r8 r4 r8 |
    r4 e8( dis4 e8) | g4.( e) | f4. a4( f8) | e2. |
    f4.( a) | g4.( e) | f2.( |
  }
  \alternative {
    { e4) r8 r4 r8 | }
    { e8 e'-.\< e-. e-. e-. e-. | }
  }
  %mark D
  \repeat volta 2 {
    d8\ff r r r d d | c8 r r r c c | b8 r r r4 r8 | r8 e e e e e |
    d8 r r r d d | c8 r r r c c | b8 r r r4 r8 | r8 g' g g g g |
    f8 r r r f f | e8 r r r e e | d8 r r r4 r8 | r8 g g g g g |
    f8 r r r f f | e8 r r r e e | d8 r r r4 r8 | R2. |
    %mark E
    r4 g,8\fff( fis4 g8) | e'4.-> c-> | a4.-> c-> | g2.-> |
    r4 g8( fis4 g8) | e'4.-> c-> | a4.-> e'4( d8) | d4 r8 r4 r8 |
    r4 g,8( fis4 g8) | e'4.-> c-> | a4.-> c-> | g2.-> |
    f4.-> a-> | g4.-> e-> | g2.( |
  }
  \alternative {
    { g4) r8 r4 r8 | }
    { g4\repeatTie g16 g g4 r8 | }
  }
}

cornetTwo = \relative c' {
  \key g \major
  d4.->\ff e-> | e4.-> fis->~ | fis8 r r fis4.->( | g8) r r r4 r8 |
  %mark A
  \repeat volta 2 {
    g4.\p(^"Soli" fis | e4. d | c4. b | a4.~ a4) r8 |
    fis'2.~ | fis2. | g2.~ | g4 r8 r4 r8 |
    g4.( fis | e4. d) | fis2.~ | fis2. |
    a4\f a8 a4.->~ | a4 a8 a4.->~ | a8 r r g4.->( |
  }
  \alternative {
    { fis8) r r r4 r8 | }
    { fis8\repeatTie r r r4 r8 | }
  }
  %mark B
  \repeat volta 2 {
    r8 g\ff g r g g | r8 g g r8 g g | g8 r r g4.->~ | g4 g8 g4 g8 |
    r8 g g r g g | r8 g g r8 g g | fis8 r r fis4.->~ | fis4 fis8 fis4 fis8 |
    r8 fis fis r fis fis | r8 fis fis r fis fis | a8 r r a4.->~ | a4 a8 a4 a8 |
    a8 r r a4.->~ | a4 a8 a4 a8 | g8 r r g4.->~ | g4 r8 r4 r8 |
    r8 g g r g g | r8 g g r8 g g | g8 r r g4.->~ | g4 g8 g4 g8 |
    r8 g g r g g | r8 f f r8 f f | e2.->~ | e4 e8 e4 e8 |
    g2.-> | g2.-> | g8 r r g4.->~ | g4 g8 g4 g8 |
    g2.( | fis2.) | d2.~ |
  }
  \alternative {
    { d4 r8 r4 r8 | }
    { d4\repeatTie r8 r4 r8 | }
  }
  %TRIO
  \key c \major
  \repeat volta 2 {
    r4 e8\p( dis4 e8) | g4.( e) | f4. a4( f8) | e2. |
    r4 e8( dis4 e8) | g4.( e) | fis2.( | f!4) r8 r4 r8 |
    r4 e8( dis4 e8) | g4.( e) | f4. a4( f8) e2. |
    f4.( a) | g4.( e) | f2.( |
  }
  \alternative {
    { e4) r8 r4 r8 | }
    { e8-.\repeatTie e-.\< e-. e-. e-. e-. | }
  }
  %mark D
  \repeat volta 2 {
    b'8\ff r r r b b | a8 r r r a a | gis8 r r r4 r8 | r8 e e e e e |
    b'8 r r r b b | a8 r r r a a | gis8 r r r4 r8 | r8 g! g g g g |
    d'8 r r r d d | c8 r r r c c | b8 r r r4 r8 | r8 g g g g g |
    d'8 r r r d d | c8 r r r c c | b8 r r r4 r8 | R2. |
    %mark E
    r8 g\fff g r g g | r8 g g r g g | r8 a a r a a | r8 g g g g g |
    r8 g g r g g | r8 g g r g g | fis2.->( | f!8) f f f f f |
    r8 g g r g g | r8 g g r g g | r8 a a r a a | r8 g g g g g |
    f4.-> a-> | g4.-> e-> | d2.( |
  }
  \alternative {
    { c8) e-.\f\< e-. e-. e-. e-. | }
    { c4\!\repeatTie c16 c c4 r8 | }
  }
}

cornetThree = \relative c' {
  \key g \major
  d4.->\ff e-> | e4.-> fis->~ | fis8 r r d4.->~ | d8 r r r4 r8 |
  %mark A
  \repeat volta 2 {
    g4.\p(^"Soli" fis | e4. d | c4. b | a4.~ a4) r8 |
    d2.~ | d2. | d2.~ | d4 r8 r4 r8 |
    g4.( fis | e4. d) | fis2.~ | fis2. |
    a4\f a8 a4.->~ | a4 a8 a4.->~ | a8 r r e4.->( |
  }
  \alternative {
    { d8) r r r4 r8 | }
    { d8\repeatTie r r r4 r8 | }
  }
  %mark B
  \repeat volta 2 {
    r8 d\ff d r d d | r8 d d r8 d d | d8 r r d4.->~ | d4 d8 d4 d8 |
    r8 d d r d d | r8 d d r8 d d | d8 r r d4.->~ | d4 d8 d4 d8 |
    r8 d d r d d | r8 d d r d d | d8 r r d4.->~ | d4 d8 d4 d8 |
    d8 r r d4.->~ | d4 d8 d4 d8 | d8 r r d4.->~ | d4 r8 r4 r8 |
    r8 d d r d d | r8 d d r8 d d | d8 r r d4.->~ | d4 d8 d4 d8 |
    r8 d d r d d | r8 d d r8 d d | e2.->~ | e4 e8 e4 e8 |
    g2.-> | g2.-> | g8 r r g4.->~ | g4 g8 g4 g8 |
    e2.( | d2.) | d2.~ |
  }
  \alternative {
    { d4 r8 r4 r8 | }
    { d4\repeatTie r8 r4 r8 | }
  }
  %TRIO
  \key c \major
  \repeat volta 2 {
    R2.*6 | d2.~\p | d4 r8 r4 r8 |
    R2.*6 | d2.(
  }
  \alternative {
    { c4) r8 r4 r8 | }
    { e8\repeatTie e-.\< e-. e-. e-. e-. | }
  }
  %mark D
  \repeat volta 2 {
    e8\ff r r r e e | e8 r r r e e | e8 r r r4 r8 | r8 e e e e e |
    e8 r r r e e | e8 r r r e e | e8 r r r4 r8 | r8 g g g g g |
    g8 r r r g g | g8 r r r g g | g8 r r r4 r8 | r8 g g g g g |
    g8 r r r g g | g8 r r r g g | g8 r r r4 r8 | R2. |
    %mark E
    r8 e\fff e r e e | r8 e e r e e | r8 f f r f f | r8 e e e e e |
    r8 e e r e e | r8 e e r e e | d2.->( | d8) d d d d d |
    r8 e e r e e | r8 e e r e e | r8 f f r f f | r8 e e e e e |
    f4.-> a-> | g4.-> e-> | d2.( |
  }
  \alternative {
    { c8) e-.\f\< e-. e-. e-. e-. | }
    { c4\!\repeatTie c16 c c4 r8 | }
  }
}

hornOne = \relative c'' {
  \key c \major

  c4.->\ff cis-> | d4.-> dis->( | e8) r r b4.->( | c8) r r r4 r8 |
  %mark A
  \repeat volta 2 {
    c4.\p( b | a4. g | f4. e | d4.~ d4) r8 |
    \cPII { b' b b b | b b b b | c c c c | c c c c | }
    c4.( b | a4. g) | \cPII { b b b b | b b b b | }
    a4\f a8 a4.->~ | a4 b8 c4.->~ | c8 r r c4.->( |
  }
  \alternative {
    { b8) r r r4 r8 |  }
    { b8\repeatTie r r r4 r8 |  }
  }
  %mark B
  \repeat volta 2 {
    \repeat percent 3 { r8 c\ff c r c c | } r8 c c c c c |
    \cPIV { c c | c c | b b | } r8 b b b b b |
    \repeat percent 6 { r8 b b r b b | } r8 c c r c c | r8 c c c c c |
    %mark C
    \repeat percent 3 { r8 c c r c c | } r8 c c c c c |
    \repeat percent 7 { r8 c c r c c | } r8 c c c c c |
    \cPIV { c c | b b | c c | } 
  }
  \alternative {
    { c4 r8 r4 r8 | }
    { c4 r8 r4 r8 | }
  }
  %TRIO
  \key f \major
  \repeat volta 2 {
    \cPII { a\p a a a | c c a a | bes bes bes bes | a a a a |
	    a a a a | c c a a | b b b b | bes! bes bes bes |
	    a a a a | c c a a | bes bes bes bes | a a a a |
	    bes bes d d | c c a a | bes bes bes bes | }
  }
  \alternative {
    { a4 r8 r4 r8 | }
    { a4 r8 r4 r8 | }
  }
  %mark D
  \repeat volta 2 {
    r8 cis,\ff d e4.->~ | e8 d e f4.->~ | f8 e f g4 f8 | e4 r8 r4 r8 |
    r8 cis d e4.->~ | e8 d e f4.->~ | f8 e f g4 f8 | e4 r8 r4 r8 |
    r8 e f g4.->~ | g8 f g a4.->~ | a8 g a bes4 a8 | g4 r8 r4 r8 |
    r8 e f g4.->~ | g8 f g a4.->~ | a8 g a bes4 a8 | g4 c,8( b4 c8) |
    %mark E
    \cPIV { a'\fff a | c a | bes bes | } r8 a a a a a |
    \cPIV { a a | c a | b b | } r8 bes! bes bes bes bes |
    \cPIV { a a | c a | bes bes | } r8 a a a a a |
    \cPIV { bes bes | a a | bes bes | }
  }
  \alternative {
    { a4 r8 r4 r8 | }
    { a4 a16 a a4 r8 | }
  } 
}

hornTwo = \relative c' {
  \key c \major

  e4.->\ff g-> | f4.-> a->( | g8) r r f4.->( | e8) r r r4 r8 |
  %mark A
  \repeat volta 2 {
    c'4.\p( b | a4. g | f4. e | d4.~ d4) r8 |
    \cPII { f f f f | f f f f | e e e e | e e e e | }
    c'4.( b | a4. g) | \cPII { g g g g | g g g g | }
    fis4\f fis8 fis4.->~ | fis4 fis8 fis4.->~ | fis8 r r a4.->( |
  }
  \alternative {
    { g8) r r r4 r8 |  }
    { g8\repeatTie r r r4 r8 |  }
  }
  %mark B
  \repeat volta 2 {
    \repeat percent 3 { r8 e\ff e r e e | } r8 e e e e e |
    \cPIV { e e | e e | f f | } r8 f f f f f |
    \repeat percent 6 { r8 f f r f f | } r8 e e r e e | r8 e e e e e |
    %mark C
    \repeat percent 3 { r8 e e r e e | } r8 e e e e e |
    \cPIV { e e | bes' bes | a a | a a |
	   dis, dis | dis dis | e e | } r8 e e e e e |
    \cPIV { fis fis | f! f | e e | } 
  }
  \alternative {
    { e4 r8 r4 r8 | }
    { e4 r8 r4 r8 | }
  }
  %TRIO
  \key f \major
  \repeat volta 2 {
    \repeat percent 7 { f4\p f8 f4 f8 | } e4 e8 e4 e8 | 
    \repeat percent 6 { f4 f8 f4 f8 | } e4 e8 e4 e8 | 
  }
  \alternative {
    { f4 r8 r4 r8 | }
    { f4 r8 r4 r8 | }
  }
  %mark D
  \repeat volta 2 {
    r8 cis\ff d e4.->~ | e8 d e f4.->~ | f8 e f g4 f8 | e4 r8 r4 r8 |
    r8 cis d e4.->~ | e8 d e f4.->~ | f8 e f g4 f8 | e4 r8 r4 r8 |
    r8 e f g4.->~ | g8 f g a4.->~ | a8 g a bes4 a8 | g4 r8 r4 r8 |
    r8 e f g4.->~ | g8 f g a4.->~ | a8 g a bes4 a8 | g4 c,8( b4 c8) |
    %mark E
    \repeat percent 3 { r8 f\fff f r f f | } r8 f f f f f |
    \repeat percent 3 { r8 f f r f f | } r8 e e e e e |
    \repeat percent 3 { r8 f f r f f | } r8 f f f f f |
    \cPIV { f f | f f | e e | }
  }
  \alternative {
    { f4 r8 r4 r8 | }
    { f4 c16 c c4 r8 | }
  } 
}

hornThree = \relative c'' {
  \key c \major

  g4.->\ff a-> | a4.-> b->( | b8) r r g4.->( | g8) r r r4 r8 |
  %mark A
  \repeat volta 2 {
    \cPII { g\p g g g | g g c c | a a a a | a a a a | }
    \repeat percent 6 { g4 g8 g4 g8 | } \cPII { d d d d | d d d d | }
    d4\f d8 d4.->~ | d4 d8 d4.->~ | d8 r r d4.->( |
  }
  \alternative {
    { d8) r r r4 r8 |  }
    { d8\repeatTie r r r4 r8 |  }
  }
  %mark B
  \repeat volta 2 {
    \repeat percent 3 { r8 g\ff g r g g | } r8 g g g g g |
    \repeat percent 3 { r8 g g r g g | } r8 g g g g g |
    \repeat percent 7 { r8 g g r g g | } r8 g g g g g |
    %mark C
    \repeat percent 3 { r8 g g r g g | } r8 g g g g g |
    \cPIV { g g | e e | f f | f f |
	    fis fis | fis fis | g g | } r8 g g g g g |
    \cPIV { a a | g g | g g | }
  }
  \alternative {
    { g4 r8 r4 r8 | }
    { g4 r8 r4 r8 | }
  }
  %TRIO
  \key f \major
  \repeat volta 2 {
    \cPII { c,\p c c c | c c c c | d d d d | c c c c |
	    c c c c | c c c c | d d d d | c c c c |
	    c c c c | c c c c | d d d d | c c c c |
	    d d d d | c c c c | c c c c | }
  }
  \alternative {
    { c4 r8 r4 r8 | }
    { c4 r8 r4 r8 | }
  }
  %mark D
  \repeat volta 2 {
    r8 cis\ff d e4.->~ | e8 d e f4.->~ | f8 e f g4 f8 | e4 r8 r4 r8 |
    r8 cis d e4.->~ | e8 d e f4.->~ | f8 e f g4 f8 | e4 r8 r4 r8 |
    r8 e f g4.->~ | g8 f g a4.->~ | a8 g a bes4 a8 | g4 r8 r4 r8 |
    r8 e f g4.->~ | g8 f g a4.->~ | a8 g a bes4 a8 | g4 c,8( b4 c8) |
    %mark E
    \cPIV { c\fff c | c c | d d | } r8 c c c c c |
    \cPIV { c c | c c | d d | } r8 c c c c c |
    \cPIV { c c | c c | d d | } r8 c c c c c |
    \cPIV { d d | c c | c c | }
  }
  \alternative {
    { c4 r8 r4 r8 | }
    { c4 f16 f f4 r8 | }
  } 
}
hornFour = \relative c' {
  \key c \major

  c4.->\ff e-> | d4.-> fis->( | g8) r r d4.->( | c8) r r r4 r8 |
  %mark A
  \repeat volta 2 {
    \cPII { e\p e e e | e e e e | f f f f | f f f f |
	    d d d d | d d d d | c c c c | c c c c |
	    e e e e | e e e e | d d d d | d d d d | }
    d4\f d8 d4.->~ | d4 d8 d4.->~ | d8 r r fis4.->( |
  }
  \alternative {
    { g8) r r r4 r8 |  }
    { g8\repeatTie r r r4 r8 |  }
  }
  %mark B
  \repeat volta 2 {
    \repeat percent 3 { r8 c,\ff c r c c | } r8 c c c c c |
    \cPIV { c c | c c | d d | } r8 d d d d d |
    \repeat percent 6 { r8 d d r d d | } r8 c c r8 c c | r8 c c c c c
    %mark C
    \repeat percent 3 { r8 c c r c c | } r8 c c c c c |
    \cPIV { c c | e e | f f | f f |
	    a a | a a | g g | } r8 g g g g g |
    \cPIV { d d | d d | c c | }
  }
  \alternative {
    { c4 r8 r4 r8 | }
    { c4 r8 r4 r8 | }
  }
  %TRIO
  \key f \major
  \repeat volta 2 {
    \cPII { c\p c c c | c c c c | d d d d | c c c c |
	    c c c c | c c c c | d d d d | c c c c |
	    c c c c | c c c c | d d d d | c c c c |
	    d d d d | c c c c | c c c c | }
  }
  \alternative {
    { c4 r8 r4 r8 | }
    { c4 r8 r4 r8 | }
  }
  %mark D
  \repeat volta 2 {
    r8 cis\ff d e4.->~ | e8 d e f4.->~ | f8 e f g4 f8 | e4 r8 r4 r8 |
    r8 cis d e4.->~ | e8 d e f4.->~ | f8 e f g4 f8 | e4 r8 r4 r8 |
    r8 e f g4.->~ | g8 f g a4.->~ | a8 g a bes4 a8 | g4 r8 r4 r8 |
    r8 e f g4.->~ | g8 f g a4.->~ | a8 g a bes4 a8 | g4 c,8( b4 c8) |
    %mark E
    \cPIV { c\fff c | c c | d d | } r8 c c c c c |
    \cPIV { c c | c c | d d | } r8 c c c c c |
    \cPIV { c c | c c | d d | } r8 c c c c c |
    \cPIV { d d | c c | c c | }
  }
  \alternative {
    { c4 r8 r4 r8 | }
    { c4 c16 c c4 r8 | }
  } 
}

tromboneOne = \relative c' {
  \key f \major
  c4.->\ff d-> | d4.-> d->( | c8) r r c4.->( | c8) r r r4 r8 |

  %mark A
  \repeat volta 2 {
    \cPIII { c\p c c c | c c c c | d d d d | d d d d | }
    c2.~ | c2. | c2.~ | c4 r 8 r4 r8 |
    \cPIII { c c c c | c c c c | } c2.~ | c2. |
    g4.->~\f  g4 fis8 | f!4.->~ f4 e8 | d8 r r d'4.->( |
  }
  \alternative {
    { c4) r8 r4 r8 | }
    { c4\repeatTie r8 r4 r8 | }
  }
  %mark B
  \repeat volta 2 {
    f,4.->\ff e-> | d4.-> c-> | c'8 r r c4.->~ | c4 c8 c4 c8 |
    f,4.-> e-> | d4.-> c-> | c'8 r r c4.->~ | c4 c8 c4 c8 |
    g4.-> f-> | e4.-> d-> | c'8 r r c4.->~ | c4 c8 c4 c8 |
    c8 r r c4.->~ | c4 c8 c4 c8 | c8 r r c4.->~ | c4 r8 r4 r8 |
    %mark C
    f,4.-> e-> | d4.-> c-> | c'8 r r c4.->~ | c4 c8 c4 c8 |
    f,4.-> e-> | d4.-> c-> | r8 d e f g a | bes2.-> |
    d2.-> | d2.-> | c8 r r c4.~ | c4 c8 c4 c8 |
    b2.( | bes!2.) | a2.~ |
  }
  \alternative {
    { a4 r8 r4 r8 |  }
    { a4\repeatTie r8 r4 r8 | }
  }
  %TRIO
  \key bes \major
  \repeat volta 2 {
    \cPII { d\p d d d | d d d d | ees ees ees ees | d d d d |
	    d d d d | d d d d | c c c c | } c4 r8 r4 r8 |
    \cPII { d d d d | d d d d | ees ees ees ees | d d d d |
	    ees ees ees ees | d d d d | ees ees ees ees | }
  }
  \alternative {
    { d4 r8 r4 r8 | }
    { d4 r8 r4 r8 | }
  }
  %mark D
  \repeat volta 2 {
    r8 fis,\ff g a4.->~ | a8 g a bes4.->~ | bes8 a bes c4 bes8 | a4 r8 r4 r8 |
    r8 fis g a4.->~ | a8 g a bes4.->~ | bes8 a bes c4 bes8 | a4 r8 r4 r8 |
    r8 a bes c4.->~ | c8 bes c d4.->~ | d8 c d ees4 d8 | c4 r8 r4 r8 |
    r8 a bes c4.->~ | c8 bes c d4.->~ | d8 c d ees4 d8 | c4 f,8\fff( e4 f8) |
    %mark E
    d'2.-> | f4.-> d-> | ees4.-> bes4-> c8 | d4 f,8( e4 f8) |
    d'2.-> | f4.-> d-> | c4.-> bes-> | a4 f8( e4 f8) |
    d'2.-> | f4.-> d-> | ees4.-> bes4-> c8 | d2.-> |
    g,4.-> ees'-> | d4.-> bes-> | ees2.(
  }
  \alternative {
    { d4) r8 r4 r8 | }
    { d4\repeatTie d16 d d4 r8 | }
  } 
}

tromboneTwo = \relative c' {
  \key f \major
  a4.->\ff a-> | bes4.-> b->( | c8) r r bes!4.->( | a8) r r r4 r8 |

  %mark A
  \repeat volta 2 {
    \cPIII { a\p a a a | a a a a | bes bes bes bes | bes bes bes bes | }
    bes2.~ | bes2. | a2.~ | a4 r 8 r4 r8 |
    \cPIII { a a a a | a a a a | } g2.~ | g2. |
    g4.->~\f  g4 fis8 | f!4.->~ f4 e8 | d8 r r g4.->( |
  }
  \alternative {
    { g4) r8 r4 r8 | }
    { g4\repeatTie r8 r4 r8 | }
  }
  %mark B
  \repeat volta 2 {
    f4.->\ff e-> | d4.-> c-> | a'8 r r a4.->~ | a4 a8 a4 a8 |
    f4.-> e-> | d4.-> c-> | g'8 r r g4.->~ | g4 g8 g4 g8 |
    g4.-> f-> | e4.-> d-> | bes'8 r r bes4.->~ | bes4 bes8 bes4 bes8 |
    bes8 r r bes4.->~ | bes4 bes8 bes4 bes8 | a8 r r a4.->~ | a4 r8 r4 r8 |
    %mark C
    f4.-> e-> | d4.-> c-> | a'8 r r a4.->~ | a4 a8 a4 a8 |
    f4.-> e-> | d4.-> c-> | r8 d e f g a | bes2.-> |
    aes2.-> | aes2.-> | a!8 r r a4.~ | a4 a8 a4 a8 |
    g2.( | g2.) | f2.~ |
  }
  \alternative {
    { f4 r8 r4 r8 |  }
    { f4\repeatTie r8 r4 r8 | }
  }
  %TRIO
  \key bes \major
  \repeat volta 2 {
    \repeat percent 7 { bes4\p bes8 bes4 bes8 | } a4 r8 r4 r8 |
    \repeat percent 6 { bes4 bes8 bes4 bes8 | } a4 a8 a4 a8 |
  }
  \alternative {
    { bes4 r8 r4 r8 | }
    { bes4 r8 r4 r8 | }
  }
  %mark D
  \repeat volta 2 {
    r8 fis\ff g a4.->~ | a8 g a bes4.->~ | bes8 a bes c4 bes8 | a4 r8 r4 r8 |
    r8 fis g a4.->~ | a8 g a bes4.->~ | bes8 a bes c4 bes8 | a4 r8 r4 r8 |
    r8 a bes c4.->~ | c8 bes c d4.->~ | d8 c d ees4 d8 | c4 r8 r4 r8 |
    r8 a bes c4.->~ | c8 bes c d4.->~ | d8 c d ees4 d8 | c4 f,8\fff( e4 f8) |
    %mark E
    d'2.-> | f4.-> d-> | ees4.-> bes4-> c8 | d4 f,8( e4 f8) |
    d'2.-> | f4.-> d-> | c4.-> bes-> | a4 f8( e4 f8) |
    d'2.-> | f4.-> d-> | ees4.-> bes4-> c8 | d2.-> |
    g,4.-> ees'-> | d4.-> bes-> | a2.(
  }
  \alternative {
    { bes4) r8 r4 r8 | }
    { bes4\repeatTie bes16 bes bes4 r8 | }
  } 
}

tromboneThree = \relative c {
  \key f \major
  f4.->\ff d-> | g4.-> e->( | a8) r r c,4.->( | f8) r r r4 r8 |

  %mark A
  \repeat volta 2 {
    \cPI { f\p c | f c | g' d | g f |
	   e c | e c | f c | f c |
	   f c | f c | g' g | g g | s }
    g4.->~\f g4 fis8 | f!4.->~ f4 e8 | d8 r r g4.->( 
  }
  \alternative {
    { c,4) r8 r4 r8 | }
    { c4\repeatTie r8 r4 r8 | }
  }
  %mark B
  \repeat volta 2 {
    f4.->\ff e-> | d4.-> c-> | f8 r r f4.->~ | f4 f8 f4 f8
    f4.-> e-> | d4.-> c-> | g'8 r r g4.->~ | g4 c,8 c4 c8 |
    g'4.-> f-> | e4.-> d-> | g8 r r g4.->~ | g4 c,8 c4 c8 |
    g'8 r r g4.->~ | g4 c,8 c4 c8 | f8 r r f4.~ | f4 r8 r4 r8 |
    %mark C
    f4.-> e-> | d4.-> c-> | f8 r r f4.->~ | f4 f8 f4 f8 |
    f4.-> e-> | d4.-> c-> | r8 d e f g a | bes2.-> |
    b2.-> | b2.-> | c8 r r c,4.~ | c4 c8 c4 c8 |
    g'2.( | c,2.) | f4 d8 c4 a8 |
  }
  \alternative {
    { f4 r8 r4 r8 |  }
    { f4\repeatTie f8\p^"Soli"( e4 f8) | }
  }
  %TRIO
  \key bes \major
  \repeat volta 2 {
    \repeat percent 3 { bes4 r8 bes4 r8 | } bes4 f8( e4 f8) |
    \cPI { bes bes | bes bes | c c | s } f4 f,8( e4 f8) |
    \repeat percent 4 { bes4 r8 bes4 r8 | }
    \cPI { ees ees | f f | f f | s }
    
  }
  \alternative {
    { bes,4 f8\p( e4 f8) | }
    { bes4 r8 r4 r8 | }
  }
  %mark D
  \repeat volta 2 {
    r8 fis'\ff g a4.->~ | a8 g a bes4.->~ | bes8 a bes c4 bes8 | a4 r8 r4 r8 |
    r8 fis g a4.->~ | a8 g a bes4.->~ | bes8 a bes c4 bes8 | a4 r8 r4 r8 |
    r8 a bes c4.->~ | c8 bes c d4.->~ | d8 c d ees4 d8 | c4 r8 r4 r8 |
    r8 a bes c4.->~ | c8 bes c d4.->~ | d8 c d ees4 d8 | c4 f,8\fff( e4 f8) |
    %mark E
    d'2.-> | f4.-> d-> | ees4.-> bes4-> c8 | d4 f,8( e4 f8) |
    d'2.-> | f4.-> d-> | c4.-> bes-> | a4 f8( e4 f8) |
    d'2.-> | f4.-> d-> | ees4.-> bes4-> c8 | d2.-> |
    ees,4 r8 ees4 r8 | f4 r8 f4 r8 | f2.(
  }
  \alternative {
    { bes,4) r8 r4 r8 | }
    { bes4\repeatTie bes16 bes bes4 r8 | }
  } 
}

baritoneTC = \relative c'' {
  \key g \major

  g4.->\ff e-> | a4.-> fis-> | b8 r r d,4.->( | g8) r r r4 r8 |
  \repeat volta 2 {
    %mark A
    b8[\p r b] b[ r b] | \acciaccatura c8 b8( ais b) e4( b8) |
    a8[ r a]( b[) r b]( | c4.~) c4 r8 |
    a8[ r a] a[ r a] | \acciaccatura b8 a8( gis a) d4( c8) |
    b8[ r b]( c[) r c]( | d4.~) d4 r8 |
    b8[ r b] b[ r b] | \acciaccatura c8 b8( ais b) d4( b8) |
    a8[ r a] a[ r a] | \acciaccatura b8 a8( gis a) fis'4( d8) |
    a4.->~\f a4 gis8 | g4.->~ g4 fis8 | e8 r r cis'4.->( |
  }
  \alternative {
    { d8) r r r4 r8 | }
    { d8\repeatTie r r r4 r8 | }
  }
  \repeat volta 2 {
    %mark B
    g,4.->\ff fis-> | e4.-> d-> | e'4 d8 b4.->~ | b8 d, e fis g a |
    g4.-> fis-> | e4.-> d-> | e'4 d8 c4.->~ | c4 c8 c4 c8 |
    a4.-> g-> | fis4.-> e-> | g'8[ r fis] fis4.~ | fis4 fis,8 a4 c8 |
    fis8[ r e] e4.->~ | e4 fis,8 a4 c8 | e8[ r dis] d4.->~ | d4 r8 r4 r8 |
    %mark C
    g,4.-> fis-> | e4.-> d-> | e'4 d8 b4.->~ | b8 d, e fis g a |
    g4.-> fis-> | e4.-> d-> | r8 e fis g a b | c2.-> |
    g'4.-> cis,-> | fis4.-> e-> | e8 r r d4.->~ | d4 d,8 g4 b8 |
    e2.( | fis2. | g4) e,8 d4 b8 | 
  }
  \alternative {
    { g4 r8 r4 r8 | }
    { g4 g8\p(^"Solo" fis!4 g8) | }
  }
  
  %Trio
  \key c \major
  \repeat volta 2 {
    c4 r8 r4 r8 | r4 g'8 c4 e8 | f4. c4( d8) | e4 g,8( fis4 g8) |
    c,4 r8 r4 r8 | r4 g'8 c4 e8 | d4.( c) | b4 g8( fis4 g8) |
    c,4 r8 r4 r8 | r4 g'8 c4 e8 | f4. c4( d8) | e4-. d8-. c-. b-. bes-. |
    a4.( f') | e4.( c) | d4( a8) b4( g8) |
  }
  \alternative {
    { c4 g,8\p( fis4 g8) | }
    { c'4 r8 r4 r8 | }
  }
  %mark D
  \repeat volta 2 {
    r8 gis\ff a b4.->~ | b8 a b c4.->~ | c8 b c d4 c8 | b4 r8 r4 r8 |
    r8 gis a b4.->~ | b8 a b c4.->~ | c8 b c d4 c8 | b4 r8 r4 r8 |
    r8 b c d4.->~ | d8 c d e4.->~ | e8 d e f4 e8 | d4 r8 r4 r8 |
    r8 b c d4.->~ | d8 c d e4.->~ | e8 d e f4 e8 | d4 g,8\fff( fis4 g8) |
    %mark E
    c4 g8( fis4 g8) | e'4 g,8 c4 e8 | a,4.-> c-> | g4-> g8( fis4 g8) |
    c4 g8( fis4 g8) | e'4 g,8 c4 e8 | a,4.-> e'4->( d8) | d4 g,8( fis4 g8) |
    c4 g8( fis4 g8) | e'4 g,8 c4 e8 | a,4.-> c-> | g4.->~ g4 r8 |
    a4.-> f'-> | e4.-> c-> | d4( a8) b4( g8) |
  }
  \alternative {
    { c4 r8 r4 r8 | }
    { c4 c16 c c4 r8 | }
  }
}
		    
basses = \relative c, {
  \key f \major
  
  f4.->\ff d-> | g4.-> e-> | a8 r r c,4.->( | f4) r8 r4 r8
  %mark A
  \repeat volta 2 {
    \cPI { f\p c | f c | g' d | g f |
	   e c | e c | f c | f c |
	   f c | f c | g' g | g g | s }
    g4.->~ g4 ges8 | f4.->~ f4 e8 | d8 r r g4.->( 
  }
  \alternative {
    { c,4) r8 r4 r8 | }
    { c4\repeatTie r8 r4 r8 | }
  }
  %mark B
  \repeat volta 2 {
    \repeat percent 6 { f4\ff r8 c4 r8 | } \cPI { g' c, | g' c, | s }
    e4 r8 c4 r8 | \repeat percent 3 { g'4 r8 c,4 r8 | }
    \cPI { g' c, | g' c, | f c | f c | s }
    %mark C
    \repeat percent 5 { f4 r8 c4 r8 | } \cPI { f f | bes bes | bes bes | s }
    \cPI { b b | b b | c c | c c | g g | c, c | s } f4 d'8 c4 a8 |    
  }
  \alternative {
    { f4 r8 r4 r8 | }
    { f4 f8\p^"Soli"( e4 f8) | }
  }
  %TRIO
  \key bes \major
  \repeat volta 2 {
    \cPI { bes bes | bes bes | bes bes | s } bes4 f8( e4 f8) |
    \cPI { bes bes | bes bes | c c | s } f,4 f8( e4 f8) |
    \repeat percent 4 { bes4 r8 bes4 r8 | }
    \cPI { ees, ees | f f | f f | s }
  }
  \alternative {
    { bes4 f8\p^"Soli"( e4 f8) | }
    { bes4 r8 r4 r8 | }
  }
  %mark D
  \repeat volta 2 {
    r8 fis\ff g a4.->~ | a8 g a bes4.->~ | bes8 a bes c4 bes8 | a4 r8 r4 r8 |
    r8 fis g a4.->~ | a8 g a bes4.->~ | bes8 a bes c4 bes8 | a4 r8 r4 r8 |
    r8 a bes c4.->~ | c8 bes c d4.->~ | d8 c d ees4 d8 | c4 r8 r4 r8 |
    r8 a bes c4.->~ | c8 bes c d4.->~ | d8 c d ees4 d8 | c4 f,8\fff( e4 f8) |
    %mark E
    \repeat percent 3 { bes4 r8 bes4 r8 | } bes4 f8( e4 f8) |
    \cPI { bes bes | bes bes | c c | s } f,4 f8( e4 f8) |
    \repeat percent 4 { bes4 r8 bes4 r8 | }
    \cPI { ees, ees | f f | f f | s }
  }
  \alternative {
    { bes4 r8 r4 r8 | }
    { bes4 bes16 bes bes4 r8 |  }
  } 
}

drumSnareBass = \drummode {
  \clef percussion

  << sn4.:32
     \\
     bd4.\ff >>
  
  << sn4.:32
     \\
     bd4. >> |
  << sn4.:32
     \\
     bd4. >>
  << sn4.:32
     \\
     bd4. >> |
  
  << sn8
     \\
     bd8 >>
  r r
  << { sn4.:32~ | sn8 }
     \\
     { bd4. | bd 8 } >>
  r r r4 r8
  %mark A
  \repeat volta 2 {
    \repeat percent 12 {
      << { sn4 sn8 sn4 sn8 | }
	 \\
	 { bd4\p r8 bd4 r8 | } >>
    }
    << { sn4 sn8 sn4.:32~ | sn4 sn8 sn4.:32~ | sn8 } 
       \\
       { bd4\f r8 r4 bd8 | bd4 r8 r4 bd8 | bd8 } >>
    r r
    << { sn4.:32->~ | } 
       \\
       { bd4. | } >>
  }
  \alternative {
    { << sn4
	 \\
	 bd4 >>
      r8 r4 r8 | }
    { << sn4
	 \\
	 bd4 >>
      r8 r4 r8 | }
  }
  %mark B
  \repeat volta 2 {
    \repeat percent 3 {
      << { r8 sn sn r sn sn | }
	 \\
	 { bd4\ff r8 bd4 r8 | } >>
    }
    << { r8 sn sn sn4.:8 | }
       \\
       { bd4 r8 r4 r8 | } >>
    \repeat percent 3 {
      << { r8 sn sn r sn sn | }
	 \\
	 { bd4 r8 bd4 r8 | } >>
    }
    << { r8 sn sn sn4.:8 | }
       \\
       { bd4 r8 r4 r8 | } >>
    \repeat percent 7 {
      << { r8 sn sn r sn sn | }
	 \\
	 { bd4 r8 bd4 r8 | } >>
    }
    << { r8 sn sn sn4.:8 | }
       \\
       { bd4 r8 r4 r8 | } >>
    %mark C
    \repeat percent 3 {
      << { r8 sn sn r sn sn | }
	 \\
	 { bd4 r8 bd4 r8 | } >>
    }
    << { r8 sn sn sn4.:8 | }
       \\
       { bd4 r8 r4 r8 | } >>
    \repeat percent 4 {
      << { r8 sn sn r sn sn | }
	 \\
	 { bd4 r8 bd4 r8 | } >>
    }
    \repeat percent 3 {
      << { r8 sn sn r sn sn | }
	 \\
	 { bd4 r8 bd4 r8 | } >>
    }
    << { r8 sn sn sn4.:8 | }
       \\
       { bd4 r8 r4 r8 | } >>
    \repeat percent 3 {
      << { r8 sn sn r sn sn | }
	 \\
	 { bd4 r8 bd4 r8 | } >>
    }
  }
  \alternative {
    { << sn4
	 \\
	 bd4 >>
      r8 r4 r8 | }
    { << sn4
	 \\
	 bd4 >>
      r8 r4 r8 | }
  }
  %TRIO
  \repeat volta 2 {
    \repeat percent 15 {
      << { sn4 sn8 sn4 sn8 | }
	 \\
	 { bd4 r8 bd4 r8 | } >>
    }
  }
  \alternative {
    { << sn4
	 \\
	 bd4 >>
      r8 r4 r8 | }
    { << sn4
	 \\
	 bd4 >>
      r8 r4 r8 | }
  }
  %Mark D
  \repeat volta 2 {
    R2.*16 |
    %Mark E
    \repeat percent 3 {
      << { r8 sn sn r sn sn | }
	 \\
	 { bd4\fff r8 bd4 r8 | } >>
    }
    << { r8 sn sn sn4.:8 | }
       \\
       { bd4 r8 r4 r8 | } >>
    \repeat percent 3 {
      << { r8 sn sn r sn sn | }
	 \\
	 { bd4 r8 bd4 r8 | } >>
    }
    << { r8 sn sn sn4.:8 | }
       \\
       { bd4 r8 r4 r8 | } >>
    \repeat percent 3 {
      << { r8 sn sn r sn sn | }
	 \\
	 { bd4 r8 bd4 r8 | } >>
    }
    << { r8 sn sn sn4.:8 | }
       \\
       { bd4 r8 r4 r8 | } >>
    \repeat percent 3 {
      << { r8 sn sn r sn sn | }
	 \\
	 { bd4 r8 bd4 r8 | } >>
    }
  }
  \alternative {
    { << sn4 \\ bd4 >> r8 r4 r8 | }
    { << { sn4 sn16 sn sn4  }
	 \\
	 { bd4 r8 bd4 } >>
      r8 |
    }
  }
}

percTimp = \relative c {
  \key f \major
  
  R2.*2 | r4 r8 c4.:32\ff( | f,8) r r r4 r8
  %mark A
  \repeat volta 2 {
    f4\p r8 r4 r8 | f4 r8 r4 r8 | R2.*2 |
    c'4 r8 r4 r8 | c4 r8 r4 r8 | f,4 r8 c'4 r8 | f,4 r8 c'4 r8 |
    f,4 r8 r4 r8 | f4 r8 r4 r8 | c'4 r8 r4 r8 | c4 r8 r4 r8 |
    R2.*3 |
  }
  \alternative {
    { R2. | }
    { R2. | }
  }
  %mark B
  \repeat volta 2 {
    \repeat percent 3 { f,4\ff r8 c'4 r8 | } f,4 r8 r4 r8 |
    \cPI { f c' | f, c' | c c | s } c4 r8 r4 r8 |
    \repeat percent 6 { c4 r8 c4 r8 | } f,4 r8 c'4 r8 | f,4 r8 c'4 r8 |
    %mark C
    \repeat percent 3 { f,4 r8 c'4 r8 | } f,4 r8 r4 r8 |
    \cPI { f c' | f, f | f f | s } f4 r8 r4 r8 |
    \cPI { f f | f f | c' c | c c |
	   f, f | c' c | s } f,4 r8 f4 f8 |
  }
  \alternative {
    { f4 r8 r4 r8 | }
    { f4 r8 r4 r8 | }
  }
  %TRIO
  \key bes \major
  \repeat volta 2 {
    R2.*15
  }
  \alternative {
    { R2. | }
    { R2. | }
  }
  %mark D
  \repeat volta 2 {
    R2.*16 |
    %mark E
    R2.*15 |
  }
  \alternative {
    { R2. | }
    { R2. | }
  } 
}

percBells = \relative c' {
  \key f \major
  
  R2.*4
  %mark A
  \repeat volta 2 {
    R2.*15 |
  }
  \alternative {
    { R2. | }
    { R2. | }
  }
  %mark B
  \repeat volta 2 {
    R2.*16 |
    %mark C
    R2.*15
  }
  \alternative {
    { R2.| }
    { R2.| }
  }
  %TRIO
  \key bes \major
  \repeat volta 2 {
    r4 f8\p( e4 f8) | d'4.( bes) | g4.( bes) | f2. |
    r4 f8( e4 f8) | d'4.( bes) | g4. d'4( c8) | c4 r8 r4 r8 |
    r4 f,8( e4 f8) | d'4.( bes) | g4.( bes) | f2. |
    g4.( ees') | d4.( bes) | c4( g8 a4 f8) |
  }
  \alternative {
    { bes4 r8 r4 r8 | }
    { bes4 r8 r4 r8 | }
  }
  %mark D
  \repeat volta 2 {
    R2.*16
    %mark E
    r4 f8\ff( e4 f8) | d'4.-> bes-> | g4.-> bes-> | f2.-> |
    r4 f8( e4 f8) | d'4.-> bes-> | g4.-> d'4( c8) | c4 r8 r4 r8 |
    r4 f,8( e4 f8) | d'4.-> bes-> | g4.-> bes-> | f2.-> |
    g4.-> ees'-> | d4.-> bes-> | c4( g8 a4 f8) |
  }
  \alternative {
    { bes4 r8 r4 r8 | }
    { bes4 r8 r4 r8 | }
  } 
}
