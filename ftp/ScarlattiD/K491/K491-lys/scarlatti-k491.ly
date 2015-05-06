%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.19.19"
\language "english"

\include "articulate.ly"

\paper {
  % --- Set these to false after all editing is finished
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  ragged-right = ##f
}

\header {
  title = "Keyboard Sonata in D Major"
  composer = "Domenico Scarlatti (1685-1757)"
  opus = "K.491"
  date = ""
  style = "Baroque"
  source = ""
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiacomposer = "ScarlattiD"
  mutopiainstrument = "Piano"

 footer = "Mutopia-2015/03/25-2002"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%--------Definitions

%------------Music

% --- First repeat, both hands

voltaOneUpper = \relative c'' {
  d4 \prall d \prall d \prall |
  d16 e fs g a g fs e d cs b a |
  d4 \prall d \prall e \prall |
  r8 fs16 g a8 d, a' d, |
  r8 e16 fs g8 cs, g' cs, |
  <d fs>4 q <fs a> |
  <e g>4 q q |
  r8 <a, fs'>16. <b g'>32 <a fs'>8 <b g'> <a fs'> <g e'> |
  <fs d'>4 q <g e'> |
  r8 <a fs'>16. <b g'>32 <a fs'>8 <b g'> <a fs'> <g e'> |
  <fs d'>4 q <g e'> |
  << { fs'8 fs16. g32 a8 a g fs } \\ { a,4 a8 fs' e d } >> |
  <a e'>8 q16. q32 q8 <fs d'> <e cs'> <d d'> |
  <a' e'>8 q16. q32 q8 <fs d'> <e cs'> <d d'> |
  <a' e'>8 <fs d'> <e cs'> <d d'> <a' e'> <fs d'> |
  <e cs'> <d d'> <a' e'>8 <fs d'> <e cs'> <d d'> |
  <a' e'>2. \prall |
  R1 * 3/4 \fermataMarkup |
  
  % --- bar 19
  << 
    { 
      \acciaccatura { e'16 f } g8 f16 e e8 e e e |
      \acciaccatura { g8 } f8 e16 d16 d8 d d e |
      \acciaccatura { g8 } f8 e16 d 
    } 
    \\ 
    { 
      \grace { s8 } c2. |
      \grace { s8 } b2 b8 cs |
      \grace { s8 } <a d>4
    }
  >> 
  <c e>8 <b d> <a c> <gs b> |
  a8 \prall b c \prall d e \prall f |
  << 
    { 
      \acciaccatura { e16 f } g8 f16 e e8 e e e |
      \acciaccatura { g8 } f8 e16 d16 d8 d d e |
      \acciaccatura { g8 } f8 e16 d 
    } 
    \\ 
    { 
      \grace { s8 } c2. |
      \grace { s8 } b2 b8 cs |
      \grace { s8 } <a d>4
    }
  >> 
  <c e>8 <b d> <a c> <gs b> |
  
  % --- bar 26
  a16 a' cs, e a, cs e, a cs, e a, a' |
  fs16 a' fs a d, fs a, d fs, a d, d' |
  cs16 a' cs, e a, cs e, a cs, e a, a' |
  fs16 d' cs b a gs32 a b a b cs b4 \prall |
  a4 r a' |
  \acciaccatura { gs8 } fs4 r a |
  \acciaccatura { fs8 } e4 r a |
  r16 fs e d d cs b a cs b a gs |
  a4 r a' |
  \acciaccatura { gs8 } fs4 r a |
  \acciaccatura { fs8 } e4 r a |
  r16 fs e d d cs b a cs b a gs |
  <a cs>8 q16 <b d> <cs e>8 <d fs> <cs e> <b d> |
  <a cs>8 <gs b>16 <a cs> <b d>8 <a cs>4 <gs b>8 |
  <a cs>16 <gs b> <a cs> <b d> <a cs> <b d> <cs e> <d fs> 
    <cs e> <b d> <a cs> <gs b> |
  <a cs>16 <gs b> <a cs> <b d> <a cs> <b d> <cs e> <d fs> 
    <cs e> <b d> <a cs> <gs b> |
  <a cs>8 <gs b>16 <a cs> <b d>8 <a cs>4 <gs b>8 |
  a16 a' e cs a e cs a r4 |
  R1 * 3/4 
}

voltaOneLower = \relative c' {
  R1 * 3/4 |
  d4 \prall d \prall d \prall |
  d16 e fs g a g fs e d cs b a |
  <d, d'>4 q <fs d'> |
  <g d' e>4 q <a e'> |
  r8 fs'16 g a8 d, a' d, |
  << { r8 e16 fs g8 cs, g' cs, } \\ { a2. } >> |
  d,4 d d |
  r8 <fs d'>16. <g e'>32 <fs d'>8 <g e'> <fs d'> <e cs'> |
  d4 d d |
  r8 <fs d'>16. <g e'>32 <fs d'>8 <g e'> <fs d'> <e cs'> | 
  << { d'2 } \\ { d,4 fs } >> g4 |
  <a,, a'>4 q q |
  q4 q q |
  q4 q q |
  q4 q q |
  q2. |
  R1 * 3/4 \fermataMarkup |
  
  % --- bar 19
  <c c'>4 q q |
  <g' g'>4 q  q |
  <d d'>4 <e e'> e |
  a4 r r |
  <c, c'>4 q q |
  <g' g'>4 q  q |
  <d d'>4 e' e, |
  
  % --- 26
  <a, a'>4 q q |
  <d d'>4 q q |
  <a a'>4 q q |
  <d d'>4 <e e'> e |
  a16 a'' cs, e a, cs e, a cs, e a, cs |
  d16 a'' fs a d, fs a, d fs, a d,  a' |
  a,16 e'' cs e a, cs e, a cs, e a, cs |
  d,4 e e |
  a16 a'' cs, e a, cs e, a cs, e a, cs |
  d16 a'' fs a d, fs a, d fs, a d,  a' |
  a,16 e'' cs e a, cs e, a cs, e a, cs |
  d,4 e e |
  <a, a'>4 q <e' e'> |
  <a, a'>4 <d d'> <e e'> |
  <a, a'>4 q <e' e'> |
  <a, a'>4 q <e' e'> |
  <a, a'>4 <d d'> <e e'> |
  <a, a'>4 r a''16 e cs a |
  a,2. 
}

% --- Second repeat, both hands

voltaTwoUpper = \relative c'' {
  
  % --- bar 45
  r8 cs16 d e8 a, e' a, |
  r8 b16 cs d8 gs, d' gs, |
  <a cs>4 q <cs e> |
  <b d>4 q q |
  a16 b cs d e d cs b a g! fs e |
  r8 fs'16 g a8 d, a' d, |
  r8 e16 fs g8 cs, g' cs, |
  <d fs>4 q <fs a> |
  <e g>4 q q |
  <d fs>4 q q |
  g16 fs g a b a g fs e d cs b |
  <a e'>8 q16. q32 q8 <fs d'> <e cs'> <d d'> |
  <a' e'>8 q16. q32 q8 <fs d'> <e cs'> <d d'> |
  <a' e'>8 <fs d'> <e cs'> <d d'> <a' e'> <fs d'> |
  <e cs'> <d d'> <a' e'>8 <fs d'> <e cs'> <d d'> |
  <a' e'>2. \prall |
  R1 * 3/4 \fermataMarkup |
  \bar "||"
  \key c \major
  
  % --- bar 62
  << 
    { << { c'8 bf16 a a8 } \\ \new Voice { \voiceFour f4. } >> <f a>8 q q } 
    \\ 
    { c2. } 
  >> |
  << { \acciaccatura { a'8 } g8 f16 e e8 fs g a } 
     \\ 
     { \acciaccatura { s8 } <c,~ e>4 c8 d e fs } 
  >> |
  <g bf>8 <f a>16 <e g> <f a>8 <e g> <d f> <cs e> |
  d8 \prall e f \prall g a \prall bf |
  << 
    { << { c8 bf16 a a8 } \\ \new Voice { \voiceFour f4. } >> <f a>8 q q } 
    \\ 
    { c2. } 
  >> |
  << { \acciaccatura { a'8 } g8 f16 e e8 fs g a } 
     \\ 
     { \acciaccatura { s8 } <c,~ e>4 c8 d e fs } 
  >> |
  <g bf>8 <f a>16 <e g> <f a>8 <e g> <d f> <cs e> |
  \bar "||"
  \key d \major
  
  % --- bar 69
  d16 d' fs, a d, fs a, d fs, a d, d' |
  b16 d' b d g, b d, g b, d g, g' |
  fs16 d' fs, a d, fs a, d fs, a d, d' |
  b16 g' fs e d cs32 d e d e fs e4 \prall |
  d4 r d' |
  \acciaccatura { cs8 } b4 r fs |
  \acciaccatura { b8 } a4 r d |
  r16 b a g g fs e d fs e d cs |
  d4 r d' |
  \acciaccatura { cs8 } b4 r fs |
  \acciaccatura { b8 } a4 r d |
  r16 b a g g fs e d fs e d cs |
  d8 <d fs>16. <e g>32 <fs a>8 <g b> <fs a> <g e> |
  <d fs>8 <cs e>16 <d fs> <e g>8 <d fs>4 <cs e>8 |
  <d fs>16 <cs e> <d fs> <g e> <d fs> <g e> <fs a> <g b> 
    <fs a> <e g> <d fs> <cs e> |
  <d fs>16 <cs e> <d fs> <g e> <d fs> <g e> <fs a> <g b> 
    <fs a> <e g> <d fs> <cs e> |
  <d fs>8 <cs e>16 <d fs> <e g>8 <d fs>4 <cs e>8 |
  d16 d' a fs d a fs d r4 |
  R1 * 3/4 |
}

voltaTwoLower = \relative c {
  
  % --- bar 45
  <a a'>4 q <cs a'> |
  <d a' b>4 q <e b'> |
  r8 cs'16 d e8 a, e' a, |
  << { r8 b16 cs d8 gs, d' gs, } \\ { e2. } >> |
  <a cs>4 q q |
  <d, d'>4 q <fs d'> |
  <g d' e>4 q <a e'> |
  r8 fs'16 g a8 d, a' d, |
  << { r8 e16 fs g8 cs, g' cs, } \\ { a2. } >> |
  d16 e fs g a g fs e d c b a |
  g4 g g |
  <a,, a'>4 q q |
  q4 q q |
  q4 q q |
  q4 q q |
  q2. |
  R1 * 3/4 \fermataMarkup |
  \bar "||"
  \key c \major
  
  % --- bar 62
  <f' c' f>2 q4 |
  <c g' c>2 <c c'>4 |
  <g' g'>4 a' a, |
  <d, d'>4 r r |
  <f c' f>2 q4 |
  <c g' c>2 <c c'>4 |
  <g' g'>4 a' a, |
  \bar "||"
  \key d \major
  
  % --- bar 69
  <d, d'>4 q q |
  <g g'>4 q q |
  <d d'>4 q q |
  <g g'>4 <a a'> a |
  d16 a'' fs a d, fs a, d fs, a d, d' |
  g,16 g' d g b, d g, b d, g g, g' |
  fs16 a' fs a d, fs a, d fs, a d, fs |
  g,,4 a a |
  d16 a''' fs a d, fs a, d fs, a d, d' |
  g,16 g' d g b, d g, b d, g g, g' |
  fs16 a' fs a d, fs a, d fs, a d, fs |
  g,,4 a a |
  <d d'>4 q <a' a'> |
  <d, d'>4 <g g'> <a a'> |
  <d, d'>4 q <a' a'> |
  <d, d'>4 q <a' a'> |
  <d, d'>4 <g g'> <a a'> |
  <d, d'>2 d''16 a fs d |
  d,2. |
}

%-------Typeset music 

global = {
  \time 3/4
  \key d \major
}

upperStaff = \relative c'' {
  \clef treble
  \global
  \tempo "Allegro" 4 = 108
  \repeat volta 2 { \voltaOneUpper \pageBreak }
  \repeat volta 2 { \voltaTwoUpper }
}

lowerStaff = \relative c' {
  \clef bass
  \global
  \repeat volta 2 { \voltaOneLower \pageBreak }
  \repeat volta 2 { \voltaTwoLower }
}

\score {
  \removeWithTag #'played
  \new PianoStaff <<
    \new Staff = "upper" { \upperStaff }
    \new Staff = "lower" { \lowerStaff } 
  >>
  \layout {
  }
}

%-------generate Midi

\score {
  \articulate <<  
    \removeWithTag #'printed
    \new PianoStaff <<
        \set PianoStaff.midiInstrument = "acoustic grand"
        \new Staff = "upper" { \upperStaff }
        \new Staff = "lower" { \lowerStaff }
    >>
  >>
  \midi {  
  }
}
