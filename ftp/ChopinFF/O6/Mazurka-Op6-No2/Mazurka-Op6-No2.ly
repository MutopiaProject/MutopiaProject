%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.20.0"
\language "english"

\header {
  title = "Mazurka"
  subtitle = "in C sharp minor"
  composer = "Frederic Chopin (1810-1849)"
  opus = "Opus 6, No 2"
  date = "1830 – 1832"
  style = "Romantic"
  source = "http://www.chopinonline.ac.uk/ocve/browse/pageview/66606/"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  copyright = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Mazurka in C sharp minor"
  mutopiaopus = "Opus 6, No 2"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"
}

sd = \sustainOn 
su = \sustainOff

slurShapeA = \shape #'((0 . 0) (0 . 0) (1 . 0) (2 . 0)) \etc
slurShapeB = \shape #'((-3 . 0) (-1.5 . 0) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'((0 . 0) (0 . 0) (0 . 0) (-0.5 . -0.5)) \etc
slurShapeD = \shape #'((0 . 0) (-1 . 1) (0 . 0) (0 . 0)) \etc

global = {
  \key cs \minor
  \time 3/4
  \accidentalStyle piano
  \override Slur.details.accidental-collision = #1000
}

rightHand = \relative c'' {
  \global
  \clef treble
  \tempo 4 = 63
  \omit TupletBracket
  
  <<
    {  
      gs4^\markup { \italic "sotto voce." } gs2 |
      s4 gs2-> |
      gs4 gs2-> |
      gs4 gs2-> |
      gs4-> gs-> gs-> |
      gs4-> gs-> gs-> |
      gs4-> gs-> <bs, gs'>8-. <cs gs'>-. |
      \tuplet 3/2 { <ds gs>8-.( <fs gs>-. <e gs>-.) } <ds gs>4 % part. measure
    }
    \\
    {  
      s2. |
      ds8 as cs4. s8 |
      s2. |
      \tuplet 3/2 { ds8( fs e) } ds2 |
      s2.
      ds8-\slurShapeB ( bs \slashedGrace { ds8 } cs8 bs cs as) |
      s2. |
      s2 % partial measure
    }
  >> 
 
  \repeat volta 2 {
    gs'4->(
    
    %\barNumberCheck 9
    gs'8)[ r16 a]( fs4. gs8 |
    e8. gs16 cs,4 e |
    gs8)[ r16 a]( fs4) gs-> |
    \tuplet 3/2 { e8( fs gs)_( } \slashedGrace { gs8 } cs,4.)-> css8( |
    ds8-!)[ r16 e]( cs4. ds8 |
    bs8. ds16 gs,4) a->\trill |
    gs8-![ r16 fs](^\markup { \italic "con forza." } ds4) gs |
    \acciaccatura { gs8 } cs,2->
  }
  
  \repeat volta 2 {
    css4
    
    %\barNumberCheck 17
    ds8-.[ r16 fss]( gs4 bs8 ds) |
    ds,8-.[ r16 fss]( gs8 bs ds4) |
    cs8.-> as16( cs4) bs8-\slurShapeC ( gs |
    \tuplet 3/2 { css8)( as bs) } cs4 bs8 gs |
    ds8-.[ r16 fss]( gs4 bs8 ds) |
    ds,8-.[ r16 fss]( gs8 bs ds4->) |
    css8 as cs4 bs8 gs( |
    gs'8.) gs,16( gs'8.) gs,16( gs'8.) gs,16( |
    
    %\barNumberCheck 25
    gs'8.) a16( fs4. gs8 |
    e8. gs16 cs,4 e |
    gs8)[ r16 a]( fs4) gs-> |
    \tuplet 3/2 { e8( fs gs) } \acciaccatura { gs8 } cs,4.-> css8 |
    ds8-> e-> cs4-> ds-> |
    bs8->[ ds->] gs,-> r a4\trill |
    gs8-![ r16 fs]( ds4) gs |
    \slashedGrace { gs8 } cs,2-> % partial measure
  }
  
  cs4-\slurShapeD (^\markup { \italic "gajo." }
  
  %\barNumberCheck 33
  cs'8 ds e4. cs8) |
  b8( gs e2-\tweak Y-offset -4.5 ->)
  cs'8( ds e4-.) \slashedGrace { fs8 } e8( cs |
  b8 gs) \context Voice = "1" { e2->^~ }
  <<
    { 
      e8( a gs2) |
      e8( \slashedGrace { b'8 } a8 gs2) |
      e8( a gs4-. gs-.) |
      e8[( a]) % partial measure
    }
    \\
    { 
      cs,4 b b |
      cs4 b b |
      cs4-> b b |
      cs4 % partial measure
    }
  >> 
  <gs gs'>4-> r
  
  %\barNumberCheck 41
  es''8( fss gs4. es8) |
  ds8( bs) gs2-> |
  es'8( fss gs4) \slashedGrace { as8 } gs8( es) |
  \context Voice = "1" { ds8( bs gs2)->^~ } |
  <<
    {  
      gs8( cs bs2->) |
      gs8 \slashedGrace { ds'8 } cs8 bs2-> |
      gs8( cs bs4-> bs->) |
      gs8( cs bs4)-> r |
      
      %\barNumberCheck 49
      gs4^\markup { \italic "soto voce." } gs2-> |
      s4 gs2-> |
      gs4 gs2-> |
      gs4 gs2-> |
      gs4-> gs-> gs->
      gs4-> gs-> gs->
      gs4-> gs-> % parital measure
    }
    \\
    {  
      es4 ds ds |
      es4-> ds ds |
      es4-> ds ds |
      es4-> ds ds8( cs) |
      
      %\barNumberCheck 49
      bs4 s2 |
      ds8 bs cs4. s8 |
      s2. |
      \tuplet 3/2 { ds8( fs e) } ds2 |
      s2. |
      ds8 bs \slashedGrace { ds8 } cs8 bs cs as |
      s2 % partial measure
    }
  >> 
  <bs gs'>8-. <cs gs'>-. 
  \tuplet 3/2 { <ds gs>8-. <fs gs>-. <e gs>-. } <ds gs>4-. gs->( |
  
  %\barNumberCheck 57
  gs'8)[ r16 a]( fs4. gs8) |
  e8.( gs16 cs,4 e |
  gs8)-.[ r16 a]( fs4 gs->) |
  \tuplet 3/2 { e8( fs gs) } \acciaccatura { gs8 } cs,4.-> css8(
  ds8-!)[ r16 e]( cs4. ds8 |
  bs8. ds16 gs,4 a)\trill |
  gs8[ r16 fs](^\markup { \italic "con forza." } ds4) gs-> |
  \slashedGrace { gs8 } cs,2-> gs'4( |
  
  %\barNumberCheck 65
  gs'8-. a-. fs4-. gs-. |
  e8-. gs-. cs,4-. e-.)
  \tuplet 3/2 { gs8[( \slashedGrace { b8 } a r16 gs]) } ds4-! gs |
  \acciaccatura { gs8 } \tuplet 3/2 { e8( fs gs) } 
    \slashedGrace { gs8 } cs,4. css8 |
  ds8([-. r16 e]-. cs4-. ds-. |
  bs8-.[ r16 ds]-. gs,4) a->(\trill |
  gs8)[ r16^\markup { \italic "con forza." } a]( ds,4) gs-> |
  \slashedGrace { gs8 } cs,2.->\fermata
  \bar "|."
}

leftHand = \relative c' {
  \global
  \clef bass
  
  <<
    {  
      bs4 as bs8 cs |
      s2 s8 as |
      \tuplet 3/2 { bs8 cs bs } as4 bs8 cs |
      s2.
      \tuplet 3/2 { bs8( cs bs) } as4 bs8-\slurShapeA ( cs) |
      s2. |
      \tuplet 3/2 { bs8 cs bs } as4 s |
      s2 % partial measure
    }
    \\
    {  
      \repeat unfold 4 { <gs, ds'>4 q2_> | }
      <gs ds'~>4 <gs ds'> q |
      <gs ds'>4 q q |
      <gs ds'>4 q q |
      <gs ds'>4 q % partial measure
    }
  >> 
  
  \repeat volta 2 {
    r4
    
    %\barNumberCheck 9
    bs4-. <gs' ds' fs> q |
    cs,4 <gs' cs e> q |
    bs,4 <gs' ds' fs> q |
    cs,4 <gs' cs e> r |
    fss,4 <ds' as' cs> q |
    gs,4 <ds' fs bs> q |
    gs,4 <ds' fs bs> q |
    cs,4 <cs' gs' e'>\arpeggio
  }
  
  \repeat volta 2 {
    r4
    
    %\barNumberCheck 17
    gs4 <ds' gs bs> q |
    gs,4 <ds' gs bs> q |
    << { as'2( s4) } \\ { <e gs>4 <ds fss> <gs, gs'>^! } >>
    << { as'2( s4) } \\ { <e gs>4 <ds fss> <gs, gs'>^! } >>
    <gs, gs'>4 <ds'' gs bs> q |
    gs,4 <ds' gs bs> q |
    << { as'2( s4) } \\ { <e gs>4 <ds fss> <gs, gs'>^! } >>
    R2. |
    
    %\barNumberCheck 25
    bs4 <gs' ds' fs> q |
    cs,4 <gs' cs e> q |
    bs,4 <gs' ds' fs> q |
    cs,4 <gs' e'> r |
    << { s4 <ds as'> q } \\ { fss,2. } >>
    gs4( <ds' fs bs>) r |
    gs,4 <ds' fs bs> q |
    cs,4 <cs' gs' e'>\arpeggio % partial measure
  }
  
  r4
  
  %\barNumberCheck 33
  a4 <e' cs'> q |
  e,4 <e' b'> q |
  a,4 <e' cs'> q |
  e,4 <e' b'> q |
  \repeat unfold 3 { <a, e'>4( <e e'>-. q-.) | }
  << { e'4 } \\ { a,8. b16 } >> cs4-> cs,->-. |
  
  %\barNumberCheck 41
  r4 <es' gs cs es> q |
  gs,4 <ds' gs bs> q |
  cs4 <es gs cs es> q |
  gs,4-. <ds' gs bs> q |
  <cs gs' cs>4 <gs gs'>(-. q-. |
  <cs gs'>4) <gs gs'>( q |
  <cs gs'>4) <gs gs'> q |
  <cs gs'>4 <gs gs'> <gs gs'>
  
  %\barNumberCheck 49
  <<
    {  
      s4 as' bs8( cs) |
      s4 s4. as8 |
      \tuplet 3/2 { bs8( cs bs } as4 bs8 cs) |
      s2. |
      \tuplet 3/2 { bs8 cs bs } as4 bs8 cs |
      s2. |
      \tuplet 3/2 { bs8 cs bs } as4 % partial measure 
    }
    \\
    {  
      <gs, ds'>4 q2-> |
      <gs ds'>4 q2-> |
      <gs ds'>4 q2 |
      <gs ds'>4 q2 |
      <gs ds'>4 q q |
      <gs ds'>4 q q |
      <gs ds'>4 q % partial measure
    }
  >> 
  \voiceFour <gs ds'>4
  <gs ds'>4 q \oneVoice r |
  
  %\barNumberCheck 57
  bs4 <gs' ds' fs> q |
  cs,4 <gs' e'> q |
  bs,4 <gs' ds' fs> q |
  cs,4 <gs' cs e> r |
  fss,4-. <ds' as' cs> q |
  gs,4 <ds' fs bs> q |
  gs,4 <ds' fs bs> q |
  cs,4 <cs' gs' e'>\arpeggio r |
  
  %\barNumberCheck 65
  bs4 <gs' ds' fs> q |
  cs,4 <gs' cs e> q |
  bs,4 <gs' ds' fs> q |
  cs,4 <gs' cs e> r |
  fss,4-. <ds' as' cs> q |
  gs,4(-. <ds' fs bs>) r |
  gs,4-. <ds' fs bs> q |
  cs,4 <cs' gs' e'> r_\markup { \italic "Fine" } |
}

dynamics = {
  \tag layout { s2.-\markup { \dynamic p "legato." } | }
  \tag midi { s2.\p | }
  s2. * 6
  s2
  
  \repeat volta 2 {
    s4
    
    %\barNumberCheck 9
    s2. * 5 |
    s2 s4\f |
    s2.
    s2
  }
  
  \repeat volta 2 {
    \partial 4 { s4 } -\markup { \whiteout "leggier." }
    
    %\barNumberCheck 17
    s2. |
    s4. s8\< s s\! |
    s2. * 2 |
    s4. s8\< s s\! |
    s2.
    s8\> s\! s2 |
    \tag layout { s2.^"calando." | }
    \tag midi { \tempo 4 = 50 s4\mf \tempo 4 = 40 s\mp \tempo 4 = 30 s\p }
    
    %\barNumberCheck 25
    \tag layout { \tempo "a Tempo." s2. | }
    \tag midi { \tempo 4 = 63 s2. | }
    s2. * 3 |
    s2.\f |
    s2. |
    s4. s8-\markup { \whiteout "con forza." } s4 |
    s2 % partial measure
  }
  
  s4\p
  
  %\barNumberCheck 33
  s4\< s8 s\! s4 |
  s2. |
  s4\< s8 s\! s4 |
  s2. |
  s2.\p |
  s8\> s8\! s2 |
  s2. |
  s4 s2\fz |
  
  %\barNumberCheck 41
  s4\f s4.\> s8\! |
  s2. * 4 |
  \override TextSpanner.bound-details.left.text = "decres" 
  s8 s\startTextSpan s2 |
  s2. | 
  s2 s8 s\stopTextSpan |
  
  %\barNumberCheck 49
  s2. |
  s2 s4^"sempre legato." |
  s2. * 6 |
  
  %\barNumberCheck 57
  s2.\p |
  s2. * 6 |
  s2 s4\p |
  
  %\barNumberCheck 65
  s2.^"rubato." |
  s2. * 3 |
  s2.\f |
  s2. * 3 |
}

pedal = {
  s2. * 7
  s2
  
  \repeat volta 2 {
    s4
    
    %\barNumberCheck 9
    \repeat unfold 4 { s2\sd s4\su | }
    s2\sd s8 s\su |
    s4\sd s\su s |
    s4.\sd s8\su s4 |
    s4\sd s8 s\su 
  }
  
  \repeat volta 2 {
    s4
    
    %\barNumberCheck 17
    s2\sd s4\su |
    s2\sd s4\su |
    s2. * 2 |
    s2\sd s4\su |
    s2\sd s4\su |
    s2. * 2 |
    
    %\barNumberCheck 25
    \repeat unfold 4 { s2\sd s8 s\su }
    s2. * 2 |
    s2\sd s4\su |
    s4\sd s8 s\su % partial measure
  }
  
  s4
  
  %\barNumberCheck 33
  \repeat unfold 4 { s2\sd s8 s\su | }
  s2. * 3 |
  s4 s2\sd |
  
  %\barNumberCheck 41
  s2 s4\su |
  \tag layout { s2.\sd | }
  \tag midi { s2\sd s8 s\su | }
  s2. * 6 |
  
  %\barNumberCheck 49
  s2. * 8 |
  
  %\barNumberCheck 57
  s2\sd s4\su |
  s2. * 7 |
  
  %\barNumberCheck 65
  \repeat unfold 3 { s2\sd s4\su | }
  s2\sd s8\su s |
  s2\sd s8 s\su |
  s4\sd s8 s\su s4 |
  s2\sd s4\su |
  \tag layout { s2\sd s4 | }
  \tag midi { s2\sd s4\su | }
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
