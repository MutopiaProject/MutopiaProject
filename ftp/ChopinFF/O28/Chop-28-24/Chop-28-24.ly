%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.19.81"
\language "english"
\include "articulate.ly"

\header {
  title = "Prélude"
  composer = "Frederic Chopin (1810-1849)"
  opus = "Op 28, No 24"
  date = "1837"
  style = "Romantic"
  source = "CFEO, http://www.chopinonline.ac.uk/cfeo/browse/pageview/73672/"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Prélude 24"
  mutopiaopus = "Op 28, No 24"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"

  footer = "Mutopia-2018/05/15-2221"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2018 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}

sd = \sustainOn 
su = \sustainOff

staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

tupletInvisible = {
  \once \omit TupletBracket
  \once \omit TupletNumber
}

trillsUnderSlur = {
  \override TrillSpanner.avoid-slur = #'inside
  \override TrillSpanner.outside-staff-priority = ##f
  \override Script.avoid-slur = #'inside
  \override Script.outside-staff-priority = ##f
}

moveCresc = \once \override DynamicTextSpanner.bound-details.left.padding = -2

global = {
  \key d \minor
  \time 6/8
  \accidentalStyle piano
}

rightHand = \relative a' {
  \global
  \clef treble
  \set Score.tempoHideNote = ##t
  \tempo "Allegro apassionato." 4. = 80
  \trillsUnderSlur
  
  R1 * 6/8 |
  R1 * 6/8 |
  a4^( f8 d4.)~ |
  d4. f8( a8. d16 |
  c2~ c8. bf16 |
  a4.) r4 r16 a |
  a4 r16 f \appoggiatura { d16 e f } e8 d r |
  r4 f8( a d8. f16 |
  e2~ e8. d16 |
  a4 \grace { a16 b } \afterGrace b2\startTrillSpan { a16\stopTrillSpan b } |
  c4. bf4 a8 |
  \afterGrace g4.\trill { f16 g } a4 r16 f |
  c2.) |
  \tupletInvisible \set fontSize = -3 \tuplet 28/6 { 
    \voiceTwo c8 d c b c d e f g a bf c d e f g a bf c d 
    \ottava 1 e f g a bf c d e 
  } |
  \oneVoice \set fontSize = 0 f4 \ottava 0 r8 r4 r8 |
  \afterGrace b,,,4.(\trill { a16 b } c4 r16 a |
  e4 ) f''8(~ \tupletInvisible \set fontSize = -3 \tuplet 13/3 {
    f8 e c a f e c a f e \clef bass c a f
  } |
  \set fontSize = 0 e4) \tupletInvisible \tuplet 28/4 { 
    e8([ \set fontSize = -3 f e ds e fs gs a b c \clef treble d e fs gs a b c
    d e fs gs a b c d e fs gs]
  } |
  \set fontSize = 0 a4) r8 r4 r8 |
  R1 * 6/8 |
  
  \barNumberCheck 21
  e,,4^( c8 a4.~ |
  a4. c8 e8. a16 |
  g2~ g8. f16 |
  e4.) r4 r16 e( |
  e4 r16 c \appoggiatura { a16 b c } b8 a) r |
  r4 c8( e a8. c16 | 
  b2~ b8. a16 |
  e4 \grace { e16 fs } \afterGrace fs2\startTrillSpan { 
    e16 fs\stopTrillSpan 
  } |
  g4. f4 e8 |
  \afterGrace d4.\trill { c16 d } e4 r16 c |
  g2.) |
  \tupletInvisible \tuplet 28/6 { \voiceTwo
    g8^([ \set fontSize = -3 a g fs g a b c d e f g a b c d e f 
    \ottava 1 g a b c d e f g a b]
  }
  \set fontSize = 0 c4) \ottava 0 \oneVoice r8 r4 r8 |
  \afterGrace fs,,,4._(\trill { e16 fs } g4 r16 e |
  b4) c''8~ \tupletInvisible \tuplet 13/3 { \set fontSize = -3
    c8( b g e c b g e \clef bass c b g e c
  }
  \set fontSize = 0 b4.->)~ \tupletInvisible \tuplet 19/3 { \set fontSize = -3
    b8( c ds fs a c \clef treble ds fs a c ds fs a c
    \ottava 1 ds fs a c ds
  } |
  \set fontSize = 0 e4->) \ottava 0 r8 g,,,4.(~ |
  g4 g8 \appoggiatura { g16 bf } af4 r16 g) |
  
  \barNumberCheck 39
  g4( ef8 c4.)~ |
  c4. ef8( g8. c16 |
  bf4 af8 ef4.)~ |
  \mergeDifferentlyDottedOn
  ef8 af8.^([ af16] << { af4. } \\ { af16 f gf ef gf af, } >> 
  af'4 f8 df4.)~ |
  df4 f8( af df8. f16 |
  ef4 df8 af4.) |
  r4 f8( af df8. f16 |
  ef4 df8 a4.->)~ |
  a8 a( a a[ f r16 g] |
  a2.)~ |
  a8( <a a'> q q \appoggiatura { <c c'>8 } <bf bf'>8. <a a'>16 |
  
  \barNumberCheck 51
  <a a'>4 <f f'>8 <d d'>4.)~ |
  <d d'>4( <f f'>8 <a a'> <d d'>8. <f f'>16 |
  <e e'>4 <d d'>8) <g, g'>( <d' d'>8. <f f'>16 |
  <e e'>4 <d d'>8) <gs, gs'>( <d' d'> <f f'>) |
  \scaleDurations 2/3 {
    \ottava 1 <d'' f>16([ <cs e> <c ef>] <b d>[ <bf df> <a c>] <gs b>[ <g bf> <fs a>]
      <f af>[ <e g> <ds fs>] <d f>[ <cs e> <c ef>] <b d>[ <bf df> <a c>] |
    \ottava 0 <gs b>16[ <g bf> <fs a>] <f af>[ <e g> <ds fs>] <d f>[ <cs e> <c ef>]
      <b d>[ <bf df> <a c>] <gs b>[ <g bf> <fs a>] <f gs>[ <e gs> <d gs>] |
  }
  a4) r16 a'^( a4.->)~ |
  a8 g8.^( f16 \tuplet 7/6 { e16 f e d e f d } |
  <a a'>8) r <a'a'> \ottava 1 <a'a'>4.(~ |
  q8 <g g'>8. <f f'>16 \tuplet 7/6 {
    <e e'>16[ <f f'> <e e'> <d d'> <e e'> <f f'>) r32 <d d'>](
  } |
  <bf' bf'>8 <e, e'> <f f'> <a a'> <g g'> <bf, bf'> |
  \ottava 0 <d d'>8 <g, g'> <a a'> <c c'>[ <bf bf'> r16 <e, e'>] |
  <g g'>8 <bf, bf'> <c c'> <e e'> <d d'> <g, g'> |
  <bf bf'>4.-> \clef bass <cs, cs'>-> |
  <d d'>4->) r8 r4 r8 |
  \clef treble \ottava 1 <f''' f'~>4
    \tupletInvisible \set fontSize = -3 \tuplet 22/4 {
      f'8( e d b g f e d b \ottava 0 g f e d b g f e d \clef bass b g f e
    } |
  \set fontSize = 0 d2->) r4 |
  \clef treble << { <b' b'>4.( <bf bf'> } \\ { f'2._> } >> |
  \context Voice = "1" <a, f' a>4) r8 r4 r8 |
  \clef treble \ottava 1 <f''' f'~>4
    \tupletInvisible \set fontSize = -3 \tuplet 22/4 {
      f'8( e d b g f e d b \ottava 0 g f e d b g f e d \clef bass b g f e
    } |
  \set fontSize = 0 d2->) r4 |
  \clef treble \tuplet 5/3 4. {
    <b' f' b>8^( q q q q q <bf f' bf>8 q q q)
  } |
  <a f' a>4\arpeggio r8 \ottava 1 <d'' d'>4. |
  \tupletInvisible \set fontSize = -3 \tuplet 24/6 {
    bf'8[( a f d bf a \ottava 0 f d bf a f d \staffDown
    bf a f d bf a f d bf a f e])
  } |
  \set fontSize = 0 \staffUp s1 * 6/8 |
  s1 * 6/8 |
  s1 * 6/8 |
  \bar "|."
}

leftHand = \relative d, {
  \global
  \clef bass
  
  \repeat unfold 16 { << { d16_( a' f' d, a''8) } \\ { s16 a,4 * 1/4 } >> }
  \repeat unfold 3 { d,16( a' f' d, a''8) }
  d,,16( g f' d, g'8) |
  c,,16( a' f' c, a''8) c,,16_( a' f' c, a''8) |
  c,,16( g' f' c, g''8) c,,16_( g' f' c, g''8) |
  c,,16( bf' f' c, g''8) c,,16_( bf' f' c, g''8) |
  c,,16( bf' e c, g''8) c,,16_( bf' e c, g''8) |
  f,16( c' a' f, c''8) f,,16( c' a' f, c''8) |
  f,,16( ds' a' f, b'8) f,16( b a' f, b'8) |
  e,,16( c' a' e, c''8) e,,16( c' a' e, c''8) |
  e,,16( d' gs e, b''8) e,,16( d' gs e, b''8) |
  a,,16( e' c' a, e''8) a,,16( e' c' a, e''8) |
  a,,16( e' c' a, e''8) a,,16( e' c' a, e''8) |
  
  \barNumberCheck 21
  \repeat unfold 7 { a,,16( e' c' a, e''8) a,,16( e' c' a, e''8) | }
  a,,16( e' c' a, e''8) a,,16( d c' a, d'8) |
  g,,16( e' c' g, e''8) g,,16( e' c' g, e''8) |
  g,,16( d' c' g, d''8) g,,16( d' c' g, d''8) |
  g,,16( d' c' g, d''8) g,,16( d' c' g, d''8) |
  g,,16( f' b g, d''8) g,,16( f' b g, d''8) |
  c,16( g' e' c, g''8) c,,16( g' e' c, g''8) |
  c,,16( fs e' c, g''8) c,,16( fs e' c, g''8) |
  b,,16( g' e' b, g''8) b,,16( g' e' b, g''8) |
  b,,16( a' ds b, fs''8) b,,16( a' ds b, fs''8) |
  e,16( b' g' e, b''8) e,,16( b' g' e, b''8) |
  ef,,16( b' g' e, b''8) d,,16( b' f' d, g'8) |
  
  \barNumberCheck 39
  c,,16( g' ef' c, g''8) c,,16( g' ef' c, g''8) |
  c,,16( g' ef' c, g''8) c,,16( g' ef' c, g''8) |
  c,,16( af' ef' c, af''8) c,,16( af' ef' c, af''8) |
  c,,16( af' gf' c,, af''8) c,,16( af' gf' c,, af''8) |
  \repeat unfold 4 { df,,16( af' f' df, af''8) df,,16( af' f' df, af''8) | }
  \repeat unfold 3 { df,,16( a' f' df, a''8) df,,16( a' f' df, a''8) | }
  cs,,16( a' f' cs, a''8) cs,,16( a' f' cs, a''8) |
  
  \barNumberCheck 51
  d,,16( a' f' d, a''8) d,,16( a' f' d, a''8) |
  d,,16( a' f' d, a''8) d,,16( a' f' d, a''8) |
  bf,,16( g' d' bf, e'8) bf,16( g' d' bf, e'8) |
  \repeat unfold 3 { bf,16( gs' d' bf, f''8) bf,,16( gs' d' bf, f''8) | }
  \repeat unfold 4 { a,,16( f' d' a, f''8) a,,16( f' d' a, f''8) | }
  \repeat unfold 3 { a,,16( g' d' g,, e''8) a,,16( g' d' g,, e''8) | }
  a,,16( g' d' g,, e''8) a,,16( g' a a, e''8) |
  d,16( a' f' d, a''8) d,,16( a' f' d, a''8) |
  d,,16( gs f' d, gs'8) d,16( gs f' d, gs'8) |
  d,16( a' f' d, a''8) d,,16( a' f' d, a''8) |
  d,,16( gs f' d, gs'8) d,16( gs f' d, gs'8) |
  d,16( a' f' d, a''8) d,,16( a' f' d, a''8) |
  d,,16( gs f' d, gs'8) d,16( gs f' d, gs'8) |
  d,16( a' f' d, a''8) d,,16( a' f' d, a''8) |
  d,,16( gs f' d, gs'8) d,16( gs f' d, gs'8) |
  <d, a' f'>4\arpeggio r8 \clef treble <f'' a d f>4. \clef bass |
  R1 * 6/8 |
  d,,,2-> r4 |
  d2-> r4 |
  d2-> r4\fermata |
}

pedal = {
  s2. \sd |
  s2. |
  s2. |
  s2 s8. s16\su |
  s2\sd s8. s16\su |
  s2.\sd |
  s2. * 3 |
  s4 s8\su s4\sd s16 s\su |
  \repeat unfold 8 { s2\sd s8. s16\su | }
  s2.\sd |
  s2. |
  
  \barNumberCheck 21
  s2. |
  s2 s8. s16\su |
  s2\sd s8. s16\su |
  s2.\sd |
  s2. * 3 |
  s4 s8\su s4\sd s8\su |
  s2.\sd |
  \repeat unfold 8 { s2\sd s8. s16\su | }
  s4\sd s16 s\su s4\sd s16 s\su |
  
  \barNumberCheck 39
  s2.\sd |
  s2 s8. s16\su |
  s2.\sd |
  s2 s8. s16\su | 
  s2.\sd |
  s2. |
  s2. |
  s2 s8. s16\su |
  s2.\sd |
  s2. |
  s2. |
  s2 s8. s16\su |
  
  \barNumberCheck 51
  s2.\sd |
  s2 s8. s16\su |
  s2\sd s8. s16\su |
  s2.\sd |
  s2. |
  s2 s8. s16\su |
  s2.\sd |
  s2. |
  s2. |
  s2 s8. s16\su |
  s2\sd s8. s16\su |
  \repeat unfold 3 { s4\sd s8\su s4\sd s8\su | }
  \repeat unfold 3 { s2\sd s8. s16\su | }
  s4\sd s8\su s4\sd s8\su |
  \repeat unfold 3 { s2\sd s8. s16\su | }
  s4\sd s8\su s4\sd s8\su |
  s2.\sd |
}

dynamics = {
  s2.\f |
  s2. |
  s4\> s8\! s4. |
  s2\< s8. s16\! |
  s2 s4\> |
  s16 s\! s8 s2 |
  s2\> s8 s\! |
  s4 s2\< |
  s4 s8\! s4. |
  s4 s4.\< s8\! |
  s2. * 3 |
  s2\< s8. s16\! |
  s2. |
  s2. |
  s4 s8\> s16\! s s4 |
  s8\> s16\! s s4.\< s16 s32 s\! |
  s4. s4.-\markup { \bold \italic sempre } |
  s2.\f |
  
  \barNumberCheck 21
  s2. |
  s4. s\< |
  s32 s\! s16 s4 s8. s16\> s8 |
  s32 s\! s16 s4 s4. |
  s2. * 3 |
  s2\< s8. s32 s\! |
  s2. * 3 |
  s2\< s8. s32 s\! |
  s2. |
  s2. |
  s4 s8\> s32 s\! s16 s4 |
  s4. s4\< s16 s32 s\! |
  s2. |
  s2. |
  
  \barNumberCheck 39
  s2. |
  s4.\< s4 s16 s\! |
  s2. |
  s4. s8.\cresc s8. |
  s2. |
  s4.\< s4 s16 s\! |
  s2. |
  s8. s8.\p s4. |
  s2. |
  s2. |
  s4.\> s4 s16 s\! |
  s4.\< s4 s16 s\! |
  
  \barNumberCheck 51
  s2.\ff |
  s4. s4.\cresc
  s2. |
  s2. |
  s2.\ff |
  s2. * 3 |
  s4 \moveCresc s8\cresc s4.\> |
  s16 s\! s4 s8 s8-\markup { \italic stretto. } s8 |
  s2.\ff |
  s2. * 4 |
  s4 s8\> s4 s16 s\! |
  s2. * 3 |
  s4 s8\> s4 s16 s\! |
  s2.
  s4^\markup { \italic stretto } s8\< s4. <>\! |
  s4. s4.\fff |
}

#(set-global-staff-size 19) % default 20

% Beam slope is fine, even with the warning
#(ly:expect-warning "no viable initial configuration found")

\paper {
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
  
  % Variables not affected by scaling of paper size 
  top-margin = 12\mm % default 5
  bottom-margin = 12\mm % default 6
}

% Typeset only
\score {
  \keepWithTag layout
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"XXIV"
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
  }
}
