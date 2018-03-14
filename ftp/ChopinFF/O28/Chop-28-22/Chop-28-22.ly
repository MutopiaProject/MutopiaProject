%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.19.81"
\language "english"

\header {
  title = "Prélude"
  composer = "Frederic Chopin (1810-1849)"
  opus = "Op 28, No 22"
  date = "1837"
  style = "Romantic"
  source = "CFEO, http://www.chopinonline.ac.uk/cfeo/browse/pageview/73670/"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Prélude 22"
  mutopiaopus = "Op 28, No 22"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"
  footer = "Mutopia-2018/03/13-2214"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2018 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}

% #(ly:expect-warning "part of warning message")

sd = \sustainOn 
su = \sustainOff

staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

%slurShapeA = \tweak Slur.positions #'(1 . 1) \etc
slurShapeA = 
  \shape #'((1 . -0.5) (0.5 . -1) (-0.75 . -1) (-1.25 . -0.5)) \etc
slurShapeB = \shape #'((0.75 . -0.5) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'((0 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) \etc
slurShapeD = \shape #'((1.5 . 4.25) (1 . 4.5) (0.25 . 4.5) (-0.5 . 4.5)) \etc
slurShapeE = \shape #'((0.5 . 0.5) (0.5 . 0.25) (0.25 . 0) (0 . 0)) \etc
slurShapeF = \shape #'((2 . 1) (1.5 . 0.5) (1 . 0.25) (0.5 . 0)) \etc
slurShapeG = \shape #'((0.75 . 0.5) (0.75 . 0.25) (0.5 . 0) (0 . 0)) \etc
slurShapeH = \shape #'((1.75 . 1) (1.5 . 0.5) (1 . 0.25) (0.5 . 0)) \etc
slurShapeI = \shape #'((0.75 . 2) (0.5 . 1.5) (0.25 . 1) (0 . 0)) \etc
slurShapeJ = \shape #'((0.75 . 2) (0.5 . 1.5) (0.25 . 1) (0 . 0)) \etc
slurShapeK = \shape #'((0.75 . 2) (0.75 . 1.5) (0.5 . 1) (0 . 0)) \etc
slurShapeL = \shape #'((0.75 . 2) (0.75 . 1.5) (0.5 . 1) (0 . 0)) \etc
slurShapeM = \shape #'((0.75 . 2) (0.75 . 1.5) (0.5 . 1) (0 . 0)) \etc
slurShapeN = \shape #'((0.75 . 1.75) (0.75 . 1.25) (0.5 . 1) (0 . 0)) \etc
slurShapeO = \shape #'((0.75 . 1.75) (0.75 . 1.25) (0.5 . 1) (0 . 0)) \etc
slurShapeP = \shape #'((0.75 . 2) (0.75 . 1.5) (0.5 . 1) (0 . 0)) \etc
slurShapeQ = \shape #'((0.75 . 2) (0.75 . 1.5) (0.5 . 1) (0 . 0)) \etc
slurShapeR = \shape #'((0.75 . 2) (0.75 . 1.5) (0.5 . 1) (0 . 0)) \etc
slurShapeS = \shape #'((-0.75 . 1) (-0.25 . 0.75) (0 . 0.5) (0 . 0)) \etc
slurShapeT = \shape #'((0.75 . 1) (0.75 . 0.5) (0.25 . 0.25) (0 . 0)) \etc
slurShapeU = \shape #'((0.75 . 2) (0.75 . 1) (0.25 . 0.25) (0 . 0)) \etc
slurShapeV = \shape #'((0.75 . 2) (0.75 . 1.5) (0.5 . 1) (0 . 0)) \etc
slurShapeW = \shape #'((0.75 . 1) (0.25 . 0.5) (0 . 0.5) (0 . 0)) \etc

tieShapeA = \shape #'((0.75 . 0.75) (0.5 . 0.75) (0.25 . 0.75) (0 . 0.75)) \etc
tieShapeB = \shape #'((0.75 . 0) (0.5 . 0) (0.25 . 0) (0 . 0)) \etc
tieShapeC = \shape #'((0.75 . 0) (0.5 . 0) (0.25 . 0) (0 . 0)) \etc

moveCresc = \once \override DynamicTextSpanner.bound-details.left.padding = -3

global = {
  \key g \minor
  \time 6/8
  \accidentalStyle piano
}

rightHand = \relative {
  \global
  \clef treble
  \set Score.tempoHideNote = ##t
  \tempo "Molto agitato." 4. = 100
  %\override Beam.auto-knee-gap = #5 % default 5.5
  
  \partial 4. { r4 r8 }
  r8 
    << 
      { <c'~ ef>4 ( ^\> <c d>4 \! ) } 
      \\ 
      { a8 -\slurShapeB ^( \staffDown \voiceThree ef \hideNotes a4 ) } 
    >> 
    r8 |
  r8
    <<
      { <ef' -\tieShapeB _~ fs -\slurShapeC \=2(>4 ^\> <ef g\=2)> \! }
      \\
      { c8 \staffDown \voiceThree fs, s4 }
    >>
    r8 |
  r8
    <<
      { <ef' -\tieShapeA _~ g>4 ( ^\> <ef fs> \! ) }
      \\
      { c8 \staffDown \voiceThree g s4 }
    >>
    r8 |
  r8
    <<
      { <fs' a>4 ( ^\> <g bf> \! ) }
      \\
      { ef8 \staffDown\voiceThree a, }
    >>
    r8 |
  r8 << { <ef'' g>4 ( ^\> \oneVoice <fs, a d fs>4 \! ) } \\ { bf8 g s4 } >> r8 |
  r8 << { <df' f>4 ( ^\> \oneVoice <e, g c e>4 \! ) } \\ { af8 f s4 } >> r8 |
  r8 << { <df' f>4 ( ^\> \oneVoice <e, g c e>4 \! ) } \\ { af8 f s4 } >> r8 |
  r8 <ef a c ef>-> r r4 r8 |
  
  \barNumberCheck 9
  r8 
    << 
      { <c'~ ef>4 ( <d, a' c d> ) } 
      \\ 
      { a'8 -\slurShapeA ^( ef \voiceOne a4 ) } 
    >> 
    r8 |
  r8 
    <<
      { <ef' -\tieShapeC _~ fs>4 ( \oneVoice <g, ef' g> ) }
      \\
      { c8 fs, s4 }
    >>
    r8 |
  r8 
    <<
      { <ef'~ g>4 ( \oneVoice <fs, c' ef fs> ) }
      \\
      { c'8 -\slurShapeD ( g c4 ) }
    >>
    r8 |
  r8
    <<
      { <fs a>4 ( \oneVoice <bf, g' bf> ) }
      \\
      { ef8 a, s4 }
    >>
    r8 |
  r8 << { bf'4-> } \\ { g8 -\slurShapeE ^( bf, ) } >> 
    r8 << { <g' a>4-> } \\ { e8 -\slurShapeF ^( a, ) } >> |
  r8 << { af'4-> } \\ { f8 -\slurShapeG ^( af, ) } >>
    r8 << { <f' g>4-> } \\ { d8 -\slurShapeH ^( g, ) } >> |
  r8 << { <c ef>4-> } \\ { g8 -\slurShapeI ^( ef ) } >>
    r8 << { <c' ef>4-> } \\ { gf8 -\slurShapeJ ^( ef ) } >> |
  <ef g c ef>8-. <ef af c ef>-. r r4 r8 |
  
  \barNumberCheck 17
  r8 << { <df' f>4 } \\ { af8-> -\slurShapeK ^( f ) } >> 
    r8 << { <ef' g>4 } \\ { bf8-> -\slurShapeL ^( g ) } >> |
  r8 << { <ef' af>4 } \\ { c8-> -\slurShapeM ^( af ) } >>
    r8 << { <c ef>4 } \\ { af8-> -\slurShapeN ^( ef ) } >> |
  r8 << { <df' f>4 } \\ { af8-> -\slurShapeK ^( f ) } >> 
    r8 << { <ef' g>4 } \\ { bf8-> -\slurShapeL ^( g ) } >> |
  r8 << { <ef' af>4 } \\ { c8-> -\slurShapeM ^( af ) } >>
    r8 << { <ef' g>4 } \\ { c8-> -\slurShapeO ^( g ) } >> |
  r8 << { <d' f>4 } \\ { af8-> -\slurShapeP ^( f ) } >>
    r8 << { <d' fs>4 } \\ { a8-> -\slurShapeQ ^( fs ) } >> |
  r8 << { <d' g>4 } \\ { bf8-> -\slurShapeR ^( g ) } >>
    r8 << { <a c>4 } \\ { g8-> -\slurShapeS ^( c, ) } >> |
  r8 << { <bf' d>4 } \\ { g8-> -\slurShapeT ^( d ) } >>
    r8 << { <ef g>4 } \\ { bf8-> -\slurShapeU ^( \staffDown \voiceThree g ) } >> |
  r8 << { <g' c>4 } \\ { ef8-> -\slurShapeV ^( c ) } >>
    r8 <fs bf>-> ( <c a'> ) |
    
  \barNumberCheck 25
  r8 << { <df' f>4 } \\ { af8-> -\slurShapeK ^( f ) } >> 
    r8 << { <ef' g>4 } \\ { bf8-> -\slurShapeL ^( g ) } >> |
  r8 << { <ef' af>4 } \\ { c8-> -\slurShapeM ^( af ) } >>
    r8 << { <c ef>4 } \\ { af8-> -\slurShapeN ^( ef ) } >> |
  r8 << { <df' f>4 } \\ { af8-> -\slurShapeK ^( f ) } >> 
    r8 << { <ef' g>4 } \\ { bf8-> -\slurShapeL ^( g ) } >> |
  r8 << { <ef' af>4 } \\ { c8-> -\slurShapeM ^( af ) } >>
    r8 << { <ef' g>4 } \\ { c8-> -\slurShapeO ^( g ) } >> |
  r8 << { <d' f>4 } \\ { af8-> -\slurShapeP ^( f ) } >>
    r8 << { <d' fs>4 } \\ { a8-> -\slurShapeQ ^( fs ) } >> |
  r8^"più animato" << { <d' g>4 } \\ { bf8-> -\slurShapeR ^( g ) } >>
    r8 << { <a c>4 } \\ { g8-> -\slurShapeS ^( c, ) } >> |
  r8 << { <bf' d>4 } \\ { g8-> -\slurShapeT ^( d ) } >>
    r8 << { <ef g>4 } \\ { bf8-> -\slurShapeU ^( \staffDown \voiceThree g ) } >> |
  r8 << { <g' c>4 } \\ { ef8-> -\slurShapeV ^( c ) } >>
    r8 <fs bf>-> ( <c a'> ) |
  r8 << { <bf' d>4 } \\ { g8-> -\slurShapeT ^( d ) } >>
    r8 << { <ef g>4 } \\ { bf8-> -\slurShapeU ^( \staffDown \voiceThree g ) } >> | 
  r8 << { c'4 } \\ { <ef, g>8-> -\slurShapeW ^( <c fs> ) } >>
    r8 << { <ef g>4 } \\ { bf8-> -\slurShapeU ^( \staffDown \voiceThree g ) } >> |
    
  \barNumberCheck 35
  r8 \voiceOne <a c\=1_( ef>8 \staffDown ef \staffUp <c'\=1) d>4 \oneVoice r8
  r8
    <<
      { <ef_~ fs>4 ( <ef g> ) }
      \\
      { c8 \staffDown \voiceThree fs, s4 }
    >>
    r8 |
  r8
    <<
      { <ef'_~ fs>4 ( <ef g> ) }
      \\
      { c8 \staffDown \voiceThree fs, s4 }
    >>
    r8 |
  r8
    <<
      { <ef''_~ fs>4 ( \oneVoice <g, ef' g> ) }
      \\
      { c8 fs, s4 }
    >>
    r8 |
  <g' bf ef g>4-. r8 r4 r8 |
  <d, g bf d>4. <d fs>4. |
  <d g>2. \arpeggio \fermata | \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  
  \partial 4. { <bf,, bf'>8 ( <a a'>8. <g g'>16 }
  << 
    { \voiceFour <g g'>4. ) ~ q8 <fs fs'> ^( <a a'> }
    \new Voice { \voiceThree s4. \crossStaff <d' a'>4 s8 } 
  >> |
  <<
    { \voiceFour <a, a'>4. ) ~ q8 <bf bf'> ^( <g g'> }
    \new Voice { \voiceThree s4. \crossStaff g''4 s8 }
  >> |
  <<
    { \voiceFour <bf,, bf'>4. ) ~ q8 <a a'> ^( <c c'> }
    \new Voice { \voiceThree s4. \crossStaff fs'4 s8 }
  >> |
  <<
    { \voiceFour <c, c'>4. ) ~ q8 <d d'> ^( <bf bf'> }
    \new Voice { \voiceThree s4. \crossStaff bf''4 s8  }
  >> |
  <cs,~ cs'^~>4. ) ^( q8 <d d'> <a a'> ) |
  <b~ b'^~>4. ^( q8 <c c'> <g g'> ) |
  <b~ b'^~>4. ^( q8 <c c'> <g g'> ) |
  <g g'>8 ^( <fs fs'> <g g'> <bf bf'> [ <a a'> ) r16 <g g'> ] ^( |
  
  \barNumberCheck 9
  <g~ g'^~>4. q8 <fs fs'> <a a'> ) |
  <a~ a'^~>4. q8 <bf bf'> <g g'> |
  <bf~ bf'^~>4. q8 <a a'> ^( <c c'> |
  <c~ c'^~>4. ) q8 <d d'> <bf bf'> |
  <g' g'>8 ^( <ef ef'> <d d'> q4 <cs cs'>8 ) |
  <f f'>8 ^( <df df'> <c c'> q4 <b b'>8 ) |
  <ef ef'>8 _\cresc ^( <c c'> <bf bf'> <a a'> <c c'> <af af'> ) |
  <g g'>8 <gf gf'> <f f'> <e e'> <ef ef'> <d d'> \! |
  
  \barNumberCheck 17
  <df df'>8 <df' df'> q q q q |
  <c c'>8 <bf bf'> <af af'> <g g'> <f f '> <ef ef'> |
  <df df'>8 <df' df'> q q q q |
  <c c'>8 <bf bf'> <af af'> <g g'> <f f '> <ef ef'> |
  <d d'>8 <c' c'> q q q q |
  <bf bf'>8 <a a'> <g g'> <ef ef'> <d d'> <c c'> |
  <bf bf'>4 r8 <ef ef'>4 r8 |
  <a, a'>4 r8 <d d'>4 r8 |
  
  \barNumberCheck 25
  <df df'>8 <df' df'> q q q q |
  <c c'>8 <bf bf'> <af af'> <g g'> <f f '> <ef ef'> |
  <df df'>8 <df' df'> q q q q |
  <c c'>8 <bf bf'> <af af'> <g g'> <f f '> <ef ef'> |
  <d d'>8 <c' c'> q q q q |
  <bf bf'>8 <a a'> <g g'> <ef ef'> <d d'> <c c'> |
  <bf bf'>4 r8 <ef ef'>4 r8 |
  <a, a'>4 r8 <d d'>4 r8 |
  <bf bf'>4 r8 <ef ef'>4 r8 |
  \voiceFour <a,a'>4. ^( <bf bf'>8 [ <a a'> ) r16 <g g'> ] |
  
  \barNumberCheck 35
  << 
    { \voiceFour <g g'>4. ~ q8 <fs fs'> <a a'> }
    \new Voice { \voiceThree s4. \crossStaff <d' a'>4 s8 } 
  >> |
  <<
    { \voiceFour <a, a'>4. ~ q8 <bf bf'> <g g'> }
    \new Voice { \voiceThree s4. \crossStaff g''4 s8 }
  >> |
  <<
    { \voiceFour <a,, a'>4. ~ q8 <bf bf'> <g g'> }
    \new Voice { \voiceThree s4. \crossStaff g''4 s8 }
  >> |
  \oneVoice <a,, a'>4. ~ q8 <bf bf'> ^( <g g'> ) |
  <cs, cs'>4-. r8 r4 r8 |
  <d d'>4. << { \crossStaff <fs'' c'>4. } \\ { <d, a' d>4. } >> |
  << 
    { \crossStaff <g' bf>2. \arpeggio } 
    \\ 
    { \oneVoice \appoggiatura { g,,4 } \voiceFour <g' d'>2. \arpeggio } 
  >> | \bar "|."
}

pedal = {
  \partial 4. { s4. }
  s2. * 8
  
  \barNumberCheck 9
  s2. * 8
  
  \barNumberCheck 17
  s4 \sd s8 \su s4 \sd s8 \su |
  s2. |
  s4 \sd s8 \su s4 \sd s8 \su |
  s2. |
  s4 \sd s8 \su s4 \sd s8 \su |
  s2. |
  s4 \sd s8 \su s4 \sd s8 \su |
  s4 \sd s8 \su s4 \sd s8 \su |
  
  \barNumberCheck 25
  s4 \sd s8 \su s4 \sd s8 \su |
  s2. |
  s4 \sd s8 \su s4 \sd s8 \su |
  s2. |
  s4 \sd s8 \su s4 \sd s8 \su |
  s2. |
  s4 \sd s8 \su s4 \sd s8 \su |
  s4 \sd s8 \su s4 \sd s8 \su |
  s4 \sd s8 \su s4 \sd s8 \su |
  s4 \sd s8 \su s4. |
  
  \barNumberCheck 35
  
}

dynamics = {
  \partial 4. { s4. \f }
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 7 |
  s4 s8 \< s4. <> \! |
  
  \barNumberCheck 17
  s2. \ff |
  s2. * 7 |
  
  \barNumberCheck 25
  s2. \ff |
  s2. * 9 |
  
  \barNumberCheck 35
  s2. |
  \moveCresc s2. \cresc |
  s2. * 3 |
  s2. \ff |
}

#(set-global-staff-size 20) % default 20

\paper {
  ragged-last-bottom = ##t % set to false after editing 

  markup-system-spacing = 
    #'((basic-distance . 2)
       (padding . 1)) % defaults: 1, 0.5
    
  system-system-spacing =
    #'((basic-distance . 12) 
       (minimum-distance . 8)
       (padding . 1)
       (stretchability . 60)) % defaults: 12, 8, 1, 60
    
  #(set-paper-size "letter") % for testing only
  
  % Variables not affected by scaling of paper size 
  top-margin = 12\mm % default 5
  bottom-margin = 12\mm % default 6
}

% Typeset only
\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"XXII"
    \set PianoStaff.connectArpeggios = ##t
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

% Midi only
\score {
  <<
    \new Staff = "upper" << \rightHand \pedal \dynamics >>
    \new Staff = "lower" << \leftHand \pedal \dynamics >>
  >>
  \midi {
  }
}