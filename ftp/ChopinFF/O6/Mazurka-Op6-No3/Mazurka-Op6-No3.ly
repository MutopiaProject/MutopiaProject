%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.20.0"
\language "english"

\header {
  title = "Mazurka"
  subtitle = "in E major"
  composer = "Frederic Chopin (1810-1849)"
  opus = "Opus 6, No 3"
  date = "1830 – 1832"
  style = "Romantic"
  source = "http://www.chopinonline.ac.uk/ocve/browse/pageview/68623/"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  copyright = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Mazurka in E major"
  mutopiaopus = "Opus 6, No 3"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"
}

sd = \sustainOn 
su = \sustainOff

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

slurShapeA = \shape #'((0 . 0) (0 . 0.5) (0 . 1.5) (1 . 0.5)) \etc

prallUnder = \once \override Script.avoid-slur = #'inside

global = {
  \key e \major
  \time 3/4
  \accidentalStyle piano
  \override Slur.details.accidental-collision = #1000
}

rightHand = \relative c {
  \global
  \clef treble
  \tag layout { \tempo "Vivace" 2. = 60 } 
  \tag midi { \tempo 4 = 140 }
  \omit TupletBracket
  
  R2. * 4 |
  \clef bass
  cs8-.( b-. a4-. gs-.) |
  \acciaccatura { gs16 fs } e2.^> |
  cs'8[-! r16 b-.]( a4-. gs-.) |
  \acciaccatura { gs16 fs } e2^> <e' b'>4 |
  
  %\barNumberCheck 9
  \clef treble
  <gs b>8[ r16 <b e>]( <e gs>4) <gs b>-> |
  <b e>8[-! r16 <e, gs>]( <gs b>4) <b e>-> |
  << { \tuplet 3/2 { fs'8( gs fs) } } \\ { ds4 } >> 
    <css es>8-! <ds fs>( <es gs> <fs a>) |
  <a cs>8[-! r16 <gs b>]( <e gs>2->) |
  << { \tuplet 3/2 { fs8( gs fs) } } \\ { ds4 } >> 
    <css es>8-! <ds fs>( <es gs> <fs a>) |
  <a cs>8[-! r16 <gs b>]( <e gs>2->) |
  \context Voice = "2" { <ds fs>8[-! r16 <cs e>]( <fs, cs'>2)( } |
  << { s8 r16 b2-> r16 } \\ { <b ds>8^!)[ s16 fs] b,2 } >> |
  
  %\barNumberCheck 17
  \clef bass
  gs,8-.( fs-. e4-. ds-.) |
  \acciaccatura { ds16 cs } b2.^>( |
  gs'8)[ r16 fs-.]( e4-. ds-.) |
  \acciaccatura { ds16 cs } b2^> r4 |
  \clef treble
  <gs'' b>8[ r16 <b e>]( <e gs>4) <gs b>-> |
  <b e>8[-! r16 <e, gs>]_( <gs b>4) <b e>-> |
  << { \tuplet 3/2 { fs'8( gs fs) } } \\ { ds4 } >> 
    <cs es>8-! <ds fs>( <es gs> <fs a>) |
  <a cs>8[-! r16 <gs b>]( <e gs>2->) |
  << { \tuplet 3/2 { fs8( gs fs) } } \\ { ds4 } >> 
    <cs es>8-! <ds fs>( <es gs> <fs a>) |
  <a cs>8[-! r16 <gs b>]( <e gs>2->) |
  <ds fs>8[ r16 <cs e>]( <fs, cs'>2)-^ |
  << { s8 r16 b2-> r16 } \\ { <b ds>8^![ s16 fs] b,2-> } >> |
  
  %\barNumberCheck 29
  \clef bass
  gs,8-.( fs-. e4-. ds-.) |
  \acciaccatura { ds16 cs } b2.^>( |
  gs'8)[ r16 fs-.]( e4-. ds-.) |
  \acciaccatura { ds16 cs } b2^> r4 |
  \clef treble
  
  %\barNumberCheck 33
  \break
  \repeat volta 2 {
    <fs''' b ds fs>8.-! <b ds fs>16-! <b d fs>4-^ r |
    <a cs a'>8[ r16 <cs a'>] <cs a'>4->( <b gs'>8 <a fs'> |
    <gs e'>8.) <fs ds'>16 <e cs'>4( <gs e'>) |
    <gs e'>8. <fs ds'>16 <e cs'>4 <gs e'> |
    <fs a cs fs>8.-. <a cs fs>16 q4-^ r |
    <<
      { \oneVoice <cs a'>8-![ r16 <cs a'>]( <cs gs'>4 \voiceOne gs'8 fs) | }
      \new Voice
      { \voiceFour s4 s ds | }
      \new Voice
      { \voiceTwo s4 s b8 a | }
    >> 
    <gs e'>8[ r16 <a cs>]_( <gs b>4-. <e e'>-.) |
    <e e'>8[-! r16 <a cs>]_( <gs b>4 <e e'>)
  }
  
  %\barNumberCheck 40
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  <<
    { 
      \slashedGrace { s8 } s4. b'4. |
      s8 b2 s8 |
      s4. b4.-> |
      s8 b4 s4. |
      s4. b4. |
    }
    \\
    { 
      \slashedGrace { \stemUp b8 } \stemNeutral b'8[ r16 as^\( a8 b, gs' fs] |
      e8 b gs'^. as^. b4^~ |
      <b, b'>8\) as'^( a b, gs' fs) |
      e8^( b ds \prallUnder a^\prall b4)^( |
      b'8)[^. r16 as^( a8 b, gs' fs] |
      e8)[ b^\slurShapeA( gs' as)] % partial measure
    }
  >> 
  \oneVoice b4(~ % | end of measure started in voice two above
  b8 as fs a gs e |
  fs8 ds e cs e c) |
 
  %\barNumberCheck 48
  \oneVoice b8.(^\markup { \italic "risvegliato." } gs16 e4 fs8 gs |
  a8 cs e4. es8) |
  fs8( as,) b4 cs8( d) |
  e8( gs,) a4 b8( cs) |
  b8.(\prall gs16 e4 fs8 gs |
  a8 cs e4. es8) |
  fs8( as,) b4 cs8->( gs) |
  a4( a') r8 as,8( |
  
  %\barNumberCheck 56
  b8. gs16 e4) fs8( gs |
  a8 cs) e4. es8 |
  fs8( as,) b4 cs8( d |
  e8-> gs,) a4-! b8( cs |
  b8)[\prall r16 gs] e4( fs8 gs |
  a8 cs e4.) es8( |
  fs8 as,) b4-! cs8( gs) |
  a4( a') r |
  
  %\barNumberCheck 64
  \clef bass
  fs,,8-.( e-. d4-. cs-.) |
  \acciaccatura { cs16 b } a2.^> |
  fs'8-.([ r16 e16-.] d4-. cs-. |
  \acciaccatura { cs16 b } a2 * 1/2) \clef treble r4 <a' e'>-> |
  
  %\barNumberCheck 68
  <gs b>8[ r16 <b e>]( <e gs>4-!) <gs b>-> |
  <b e>8[-! r16 <e, gs>]( <gs b>4) <b e>-> |
  << { \tuplet 3/2 { fs'8( gs fs) } } \\ { ds4 } >> 
    <css es>8-! <ds fs>( <es gs> <fs a> |
  <a cs>8)[ r16 <gs b>]( <e gs>2->) |
  << { \tuplet 3/2 { fs8( gs fs) } } \\ { ds4 } >> 
    <css es>8-! <ds fs>( <es gs> <fs a>) |
  <a cs>8-![ r16 <gs b>]( <e gs>2) |
  <ds fs>8[-! r16 <cs e>->]( <fs, cs'>2) |
  << { s8 r16 b2-> r16 } \\ { <b ds>8^![ s16 fs] b,2 } >> |
  
  %\barNumberCheck 76
  \clef bass
  gs,8-.( fs-. e4-. ds-. |
  \grace { ds16 cs } b2.)( |
  gs'8)[ r16 fs-.]( e4-. ds-. |
  \grace { ds16 cs } b2) r4 |
  
  %\barNumberCheck 80
  \clef treble
  <gs'' b>8[ r16 <b e>]( <e gs>4) <gs b>-> |
  <b e>8[ r16 <e, gs>]( <gs b>4) <b e>-> |
  << { \tuplet 3/2 { fs'8( gs fs) } } \\ { ds4 } >> 
    <css es>8-! <ds fs>( <es gs> <fs a>) |
  <a cs>8[-. r16 <gs b>]( <e gs>2->) |
  << { \tuplet 3/2 { fs8( gs fs) } } \\ { ds4 } >> 
    <css es>8-! <ds fs>( <es gs> <fs a>) |
  <a cs>8[ r16 <gs b>]( <e gs>2->) |
  <cs fs>8(-. <c fs>-. <b fs'>4-.) <a gs'>( |
  <gs e'>2)( <e' e'>4-.) |
  <cs fs>8-.->( q-. <c fs>4->) << { gs'4 } \\ { b,8 a } >> |
  <gs e'>4( <e' e'>) r |
 
  \bar "|."
}

leftHand = \relative c {
  \global
  \clef bass
  
  <e b'>4-. q-. q-^ |
  <e b'>4-. q-. q-^ |
  <e b'>4-. q-^ q-. |
  <e b'>4-^ q-. q-^ |
  \repeat unfold 3 { <e b'>4-. q-. q-^ | }
  <e b'>4-. q-. r |
  
  %\barNumberCheck 9
  e,4-! <e' b'> q-^ |
  <e b'>4 q <e gs b e>-^ |
  <e a b ds>4-.( q-. q-. |
  <e gs b e>4-. q-. q-.) |
  <e a b ds>4-.( q-. q-. |
  <e gs b e>4-. q-. q-.) |
  fs,4 <fs' as e'>-> q |
  b,,4 <b' fs'> q |
  
  %\barNumberCheck 17
  \repeat unfold 4 { <b fs'>4 q q-^ }
  e,4 <e' b'> q-^ |
  <e b'>4 q <e gs b e>-^ |
  <e a b ds>4 q q |
  <e gs b e>4 q q |
  <e a b ds>4 q q |
  <e gs b e>4 q q |
  fs,4 <fs' as e'>-^ q |
  b,,4 <b' fs'> q |
  
  %\barNumberCheck 29
  \repeat unfold 4 { <b fs'>4 q q-> | }
  
  %\barNumberCheck 33
  \repeat volta 2 {
    <b, b'>4 <b'' fs'> r |
    <fs, fs'>4 <fs' cs' fs> r |
    <cs, cs'>4 <cs' gs' cs> q |
    <cs gs' cs>4 q q |
    <fs, fs'>4 <fs' cs' fs> r |
    <b,, b'>4 <fs'' b ds>-. b, |
    <e, e'>4 <e' b'>-.( q-. |
    <e b'>4-. q-. q-.) |
  }
  
  %\barNumberCheck 40
  \slashedGrace { s8 } <e a b ds>4 q q |
  <e gs b e>4 q q |
  <e a b ds>4-> q q |
  <e gs b e>4 q q |
  <e a b ds>4 q q |
  <e gs b e>4 * 1/2 s8^\markup { \italic "cres." } 
    \clef treble gs'8^( as b4)^~ |
  b8 as^( fs a gs e |
  fs8 ds e cs e c |
  
  %\barNumberCheck 48
  b8) r \clef bass <e, b' d>4( q |
  <a cs>4 <gs b e>)\< <g b e>(\! |
  <fs cs' e>4 <b d>) <f b d>( |
  <e b' d>4 <a cs>) <a, a'> |
  <e e'>4 <e' b' d> q( |
  <a cs>4\< <gs b e> <g b e>\! |
  <fs cs' e>4 <b d>) <e, b' d>( |
  <a cs>4) <a, a'>-. <a, a'>-. |
  
  %\barNumberCheck 56
  <e' e'>4 <e' b' d> q |
  <a cs>4 <gs b e>\< <g b e>\! |
  <fs cs' e>4( <fs a ds> <f a d> |
  <e b' d>4 <e g cs> <ef g cs> |
  <d fs d'>4 <d g b> <d e b'> |
  <cs e cs'>4 <cs e a> <c e a> |
  <b ds a'>4) e,4 <e' b' d> |
  <a cs>4 <a e'> q |
  
  %\barNumberCheck 64
  \repeat unfold 3 { <a e'>4 q q-> | }
  <a e'>4 q r |
  
  %\barNumberCheck 68
  e,4 <e' b'> q |
  <e b'>4 q <e gs b e> |
  <e a b ds>4( q q |
  <e gs b e>4 q q) |
  <e a b ds>4( q q |
  <e gs b e>4 q q) |
  fs,4 <fs' as e'> q |
  b,,4 <b' fs'> q-> |
  
  %\barNumberCheck 76
  \repeat unfold 4 { <b fs'>4 q q-> | }
  
  %\barNumberCheck 80
  e,4 <e' b'> q |
  <e b'>4 q q-> |
  <e a b ds>4( q q |
  <e gs b e>4 q q) |
  <e a b ds>4( q q |
  <e gs b e>4 q q) |
  <a e'>4 <b ds> q |
  <e, b' e>4 q <gs e'> |
  <a e'>4 q <a ds> |
  <e b' e>4( <e, e'>) r |
}

dynamics = {
  s2.\p |
  s2. * 7 |
  
  %\barNumberCheck 9
  s2.\f |
  s2.-"cres." |
  s4. s8\< s s\! |
  s2. |
  s4. s8\< s s\! |
  s2. * 3 |
  
  %\barNumberCheck 17
  s2.\p |
  s2. * 3 |
  s2.\f |
  s2.-"cres." |
  s2. * 6 |
  
  %\barNumberCheck 29
  s2. * 4 |
  
  %\barNumberCheck 33
  \repeat volta 2 {
    s2.\ff |
    s2 s4\p |
    s2. |
    s2. |
    s2.\ff |
    s2 s4\p |
    s2. |
    s2. |
  }

  %\barNumberCheck 40
  \slashedGrace { s8 } s4.-\markup { \dynamic p dolce. } s8\> s s\! |
  s2. * 3 |
  s4 s4.\> s8\! |
  s4 s\< s\f |
  s2. |
  s2.^"stretto. dim." |
  
  %\barNumberCheck 48
  s2. |
  s4\< s8\! s4. |
  s8\< s\! s2 |
  s8\< s\! s2 |
  s2. |
  s8\< s\! s2 |
  s8\> s\! s2 |
  s2. |
  
  %\barNumberCheck 56
  s2.\p |
  s2. * 4 |
  s4\< s8\! s4.
  s2. * 2 |
  
  %\barNumberCheck 64
  s2.\p |
  s2. * 3 |
  
  %\barNumberCheck 68
  s2.\f |
  s2.-"cres." |
  s4 s16 s\< s4 s8\! |
  s2. |
  s4 s8 s\< s s\! |
  s2. * 3 |
  
  %\barNumberCheck 76
  s2.\p |
  s2. * 3 |
  
  %\barNumberCheck 80
  s2.\f |
  s2.-"cres." |
  s2\< s8 s\! |
  s2. |
  s4 s4.\< s8\! |
  s2. |
  s4\p s4.\< s8\! |
  s2. * 2 |
  s2.\pp |
}

pedal = {
  s2. * 8 |
  
  %\barNumberCheck 9
  s2.\sd |
  s2 s4\su |
  s2. * 4 |
  s4\sd s s\su |
  s4\sd s s8 s\su |
  
  %\barNumberCheck 17
  s2. * 10 |
  \tag layout { s2.\sd | }
  \tag midi { s2\sd s8 s\su | }
  \tag layout { s2.\sd | }
  \tag midi { s2\sd s8 s\su | }
  
  %\barNumberCheck 29
  s2. * 4 |
  
  %\barNumberCheck 33
  \repeat volta 2 {
    s4.\sd s8\su s4 |
    s2\sd s8 s\su |
    s2. * 2 |
    \tag layout { s2.\sd | }
    \tag midi { s2\sd s4\su | }
    s2\sd s8 s\su |
    s2. * 2 |
  }
  
  %\barNumberCheck 40
  \slashedGrace { s8 } s2. |
  s2. * 7 |
  
  %\barNumberCheck 48
  s2. * 8 |
  
  %\barNumberCheck 56
  s2. * 6 |
  s4 s\sd s8 s\su |
  s2. |
  
  %\barNumberCheck 64
  s2. * 4 |
  
  %\barNumberCheck 68
  s2.\sd |
  s2 s4\su |
  s2. * 4 |
  s2\sd s4\su |
  s2\sd s4\su |
  
  %\barNumberCheck 76
  s2. * 4
  
  %\barNumberCheck 80
  s2. * 9 |
  s2\sd s4\su | 
}

#(set-global-staff-size 18)

\paper {
  ragged-right = ##f
  ragged-last-bottom = ##f

  markup-system-spacing = 
    #'((basic-distance . 2)
       (padding . 1))
    
  system-system-spacing =
    #'((basic-distance . 12) 
       (minimum-distance . 8)
       (padding . 3)
       (stretchability . 60))
      
  last-bottom-spacing = 
    #'((basic-distance . 2)
       (minimum-distance . 1)
       (padding . 2)
       (stretchability . 30))
 
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
      \omit BarNumber
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
