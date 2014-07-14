%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.18.2"
\language "english"

\header {
  title = "Deuxième Arabesque"
  composer = "Claude Debussy"
  source = "Paris: Durand et Schoenewerk, n.d.[1891]. Plates D.S. 4395-96"
  style = "Modern"
  mutopiacomposer = "DebussyC"
  mutopiaopus = "L66 No.2"
  mutopiainstrument = "Piano"
  maintainerEmail = "knute (at) snortum (dot) net"
  maintainerWeb = "http://musicwithknute.com"
  lastupdated = "5-Jul-2014"
}

pLeger = #(make-dynamic-script #{ 
  \markup { \dynamic "p" \normal-text { \italic "et très léger" } }
#} )

noDash = \override DynamicTextSpanner #'dash-period = #-1.0
noDynamic = \once \omit DynamicText
tupletOff = {
  \omit TupletNumber
  \omit TupletBracket
}
tupletOn = \undo \omit TupletNumber

staffUp = \change Staff = "up"
staffDown = \change Staff = "down"

upper = \relative c'' {
  \tempo "Allegretto Schezando" 
  \noDash
  \tupletUp
  \omit TupletBracket
  
  | \tuplet 3/2 { e16 \pLeger ( fs e ) } a,8-. 
    \tuplet 3/2 { a'16 ( b a ) } d,8-.
    \tuplet 3/2 { e16 ( fs e ) } a,8-. 
    \tuplet 3/2 { a'16 ( b a ) } d,8-.
  | \tuplet 3/2 { e16 ( fs e ) } b8-. \tuplet 3/2 { b'16 \dim ( c b ) } d,8-.
    \tuplet 3/2 { e16 ( fs e ) } b8-. \tuplet 3/2 { b'16 ( c b ) } d,8-.
  \tupletOff
  | \tuplet 3/2 { e16 ( fs e ) } c8-. \tuplet 3/2 { c'16 ( d c ) } d,8-.
    \tuplet 3/2 { e16 ( fs e ) } c8-. \tuplet 3/2 { c'16 ( d c ) } d,8-.
  | \tuplet 3/2 { e16 ( fs e ) } c8-. \tuplet 3/2 { c'16 ( d c ) } d,8-.
    \tuplet 3/2 { e16 ( fs e ) } c8-. \tuplet 3/2 { c'16 ( d c ) } d,8-.
  | \tuplet 3/2 { e16 \pp ( fs e ) } b8-. \tuplet 3/2 { d16 ( e d ) } g,8-.
    \tuplet 3/2 { b16 ( c b ) } d,8-. \tuplet 3/2 { a'16 ( b a ) } e8-.
  | \tuplet 3/2 { e'16 ( fs e ) } b8-. \tuplet 3/2 { d16 ( e d ) } g,8-.
    \tuplet 3/2 { b16 ( c b ) } d,8-. \tuplet 3/2 { a'16 ( b a ) } e8-.
  | \tuplet 3/2 { g16 \< ( a g ) } d8-. 
    \tupletOn \tupletDown \tuplet 3/2 { e8-. g-. b-. \! }
    \tupletOff \tuplet 3/2 { g16 \< ( a g ) } d8-. 
    \tupletOn \tupletDown \tuplet 3/2 { e8-. g-. b-. \! }
  
  \barNumberCheck #8
  | << 
    { 
      \tupletOff \tuplet 3/2 { \noDynamic a16 \mp \< ( b a ) } 
      e8-. e'8 ( \noDynamic d \sf ) \! 
    } 
    \\ { s4 <a c>8 s } 
    >>
    \once \set Staff.connectArpeggios = ##t
    << 
      { b'8 \arpeggio \sf \> ( [ a ] ) fs8-. d-. \! } 
      \\ 
      { <d fs>8 \arpeggio s s4 } 
    >> 
  \tupletOff
  | \tuplet 3/2 { e16 \pp ( fs e ) } b8-. \tuplet 3/2 { d16 ( e d ) } g,8-.
    \tuplet 3/2 { b16 ( c b ) } d,8-. \tuplet 3/2 { a'16 ( b a ) } e8-.
  | \tuplet 3/2 { e'16 ( fs e ) } b8-. \tuplet 3/2 { d16 ( e d ) } g,8-.
    \tuplet 3/2 { b16 ( c b ) } d,8-. \tuplet 3/2 { a'16 ( b a ) } e8-.
  | \tuplet 3/2 { g16 \< ( a g ) } d8-. 
    \tupletOn \tupletDown \tuplet 3/2 { e8-. g-. b-. \! } <e, a>8-> r r s 
  | \tupletOff \tuplet 3/2 { g16 \p ( a \< g ) } d8-. 
    \tupletOn \tupletDown \tuplet 3/2 { e8-. g-. b-. \! } <e, a>8-> r r s
  \tupletOff 
  | \tuplet 3/2 { a'16 \mf ( b a ) } fs8-. \tuplet 3/2 { d16 ( e d ) } b8-.
    \tuplet 3/2 { a16 \> ( b a ) } fs8-. \tuplet 3/2 { d16 ( e d ) } b8-. \!
  | a8-. \p \> d-. b-. <cs fs>-. <a d>-. \! r r4
  \clef bass
  | \tuplet 3/2 { g16 ( a g ) } e8-. \clef treble
    << 
      { 
        \tupletOff 
        \tuplet 3/2 { g'16 \mf ( a g ) } e8 ~ e8 fs_. \< g_. a_. \!
      } 
      \\ 
      { c,4 ~ c8 s } 
    >>
  | <c d fs b>8-. \arpeggio c'-. d-. e-. 
    <b d fs>-. \acciaccatura { fs'8 } a8-. g-. d-.
  \clef bass
  | \tuplet 3/2 { g,,16 ( a g ) } e8-. \clef treble
    << 
      { 
        \tupletOff 
        \tuplet 3/2 { g'16 \mf ( a g ) } e8 ~ e8 fs_. \< g_. a_. \!
      } 
      \\ 
      { c,4 ~ c8 s } 
    >>
  | <c d fs b>8-. \arpeggio c'-. d-. e-. 
    <b d fs>-. \acciaccatura { fs'8 } a8-. g-. d-.
  |
}

lower = \relative c' {
  | <c d fs>1 \(
  | <b d fs>1
  | <a d fs>1
  \clef bass
  | d,1 \)
  | <g, d' b'>4 ~ q8 r r4 <c g'>8-. r
  | <g d' b'>4 ~ q8 r r4 <c g'>8-. r
  | <b g'>8-. r <c g'>-. r <b g'>-. r <c g'>-. r
  
  \barNumberCheck #8
  | <cs g' a>8 r <d c' fs> \arpeggio r \clef treble <d' a' c> \arpeggio r r4
  \clef bass
  | <g,, d' b'>4 ~ q8 r r4 <c g'>8 r
  | <g d' b'>4 ~ q8 r r4 <c g'>8 r
  | <b g'>8-. r <c g'>-. r <cs g' a> \arpeggio \clef treble
    e'-. [ a-. \staffUp <e' a>-> ] \arpeggio \staffDown \clef bass
  | <b,, g'>8-. r <c g'>-. r <cs g' a> \arpeggio \clef treble
    e'-. \< [ a-. \staffUp <e' a>-> ] \! \arpeggio \staffDown 
  | <fs, a d>8 r <e g b> r \clef bass <fs, a d>8 r <e g b> r
  | << { fs4 g8 a } \\ { a,2 } >> fs'8-. d-. a-. d,-.
  | <a a'>8 r <a' e'>4 ~ q8 r r4
  | <d, d'>8 r r4 <g, g'>8 r <d'' g b d> r
  | <a, a'>8 r <a' e'>4 ~ q8 r r4
  | <d, d'>8 r r4 <g, g'>8 r <d'' g b d> r
}

global = {
  \key g \major
  \time 4/4
  \clef treble
  \accidentalStyle piano-cautionary
}

\score {
  \new PianoStaff <<
    \new Staff = "up" {
      \global
      \upper
    }
    \new Staff = "down" {
      \global
      \lower
    }
  >>
  \layout {
    \context {
      \Staff
      \consists "Span_arpeggio_engraver"
    }
  }
  \midi {
    \tempo 4 = 120
  }
}