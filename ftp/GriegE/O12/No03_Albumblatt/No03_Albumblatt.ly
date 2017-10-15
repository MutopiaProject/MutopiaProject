%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.19.65"
\language "english"

\header {
  title = "Albumblatt"
  composer = "Edvard Grieg"
  opus = "Op 12, No 7"
  date = "1867"
  style = "Romantic"
  source = "G. Schirmer, Inc. 1902"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Albumblatt in E minor"
  mutopiaopus = "Op 12, No 7"
  mutopiacomposer = "GriegE"
  mutopiainstrument = "Piano"

 footer = "Mutopia-2017/10/15-2194"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2017 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

% #(ly:expect-warning "part of warning message")

sd = \sustainOn 
su = \sustainOff
so = \once \override SustainPedal.transparent = ##t 

ibm = \markup { \whiteout \italic { il basso marcato } }
rit = \markup \italic rit.
atempo = \markup \italic { a tempo }
der = \markup \italic { dim. e rit. }

global = {
  \key e \minor
  \time 2/4
  \numericTimeSignature
  \accidentalStyle piano
  
  % Change automatic beaming to beam across the whole measure
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/2)
  \set Timing.beatStructure = 1,1
}

rightHand = \relative {
  \global
  \clef treble
  \set Score.tempoHideNote = ##t
  \tempo "Allegretto" 4 = 112
  
  \partial 8 { b'8 ( }
  \repeat volta 2 {
    | e8. [ fs16 g8 fs ]
    | \acciaccatura { fs8 } b-. ) b ( e,4-> )
    | \acciaccatura { e8 } fs-. fs ( b,4-> )
    | \acciaccatura { b8 } e-. [ e ] ( e,-> ) b'
    | \acciaccatura { b8 } e8. ( [ fs16 ] \acciaccatura { fs8 } a16 gs g fs
    | \acciaccatura { fs8 } b-. ) b ( e,4-> )
    | \acciaccatura { e8 } fs-. fs ( b, b' ) 
  }
  \alternative {
    { | e,4 ( \autoBeamOff e'8 ) b, \autoBeamOn }
    { | e4 ( e'8 ) r }
  }
  
  \repeat volta 2 {
    | r8 <b,, g'> [ r <b g'> ]
    | r8 <b g'> [ r <d g> ]
    | r8 << { s8 d'4-> } \\ { <c, fs>8 d' <c, fs> } >>
    | r8 << { s8 d'4-> } \\ { <c, fs>8 d' <c, fs> } >>
    | r8 <b g'> [ r <b g'> ]
    | r8 <b g'> [ r <d g> ]
    | r8 <e fs> [ r <e fs> ]
    | r8 <ds fs~> <d fs> <c fs>
    
    | r8 <b g'> [ r <b g'> ]
    | r8 <b g'> [ r <d g> ]
    | r8 << { s8 d'4-> } \\ { <c, fs>8 d' <c, fs> } >>
    | r8 << { s8 b'4-> } \\ { <a, ds>8 b' <a, ds> } >>
    | r8 <g e'> [ r <g e'> ]
    | r8 <g e'> [ r <b e> ]
    | r8 \tempo 4 = 100 a4 ( ^\rit as8 )
    | \tempo 4 = 88 r8 <fs b>4 \tempo 4 = 112 b'8 ( ^\atempo
    
    | e8. [ fs16 g8 fs ]
    | \acciaccatura { fs8 } b-. ) b ( e,4-> )
    | \acciaccatura { e8 } fs-. fs ( b,4-> )
    | \acciaccatura { b8 } e-. [ e ] ( e,-> ) b'
    | \acciaccatura { b8 } e8. ( [ fs16 ] \acciaccatura { fs8 } a16 gs g fs
    | \acciaccatura { fs8 } b-. ) b ( e,4-> )
    | \acciaccatura { e8 } fs-. -\tweak X-offset -0.5 -\der fs ( b, b' )
    | e,4 ( e'8 ) r
  }
}

leftHand = \relative {
  \global
  \clef bass
  
  \partial 8 { r8 }
  \repeat volta 2 {
    | e8 ( <b' g'> ) e, ( <c' ds a'> )
    | e,8 ( <b' g'> ) e, ( <b' g'> )
    | e,8 ( <b' ds a'> ) e, ( <b' ds a'> )
    | e,8 ( <b' g'> ) e, ( <b' g'> )
    | e,8 ( <b' g'> ) e, ( <c' ds a'> )
    | e,8 ( <b' g'> ) e, ( <b' g'> )
    | e,8 ( <b' ds a'> ) e, ( <b' ds a'> )
  }
  \alternative {
    { | e,8 ( [ <b' g'> ] ) e,, r }
    { | e'8 ( [ <b' g'> ] ) e,, r }
  }
  
  \repeat volta 2 {
    << { 
      | d'8. ^\ibm cs16 d8 e 
      | fs g a b 
    } \\ { 
      | g,2 ~ 
      | g4 r 
    } >>
    | b'8-> a ~ <d, a'>4
    | b'8-> a ~ <d, a'>4
    << { 
      | d8. cs16 d8 e 
      | fs8 g a b 
    } \\ { 
      | g,2 ~ 
      | g4 r 
    } >>
    | b'8 as d c
    | c4-> ( b8 ) <d, a'>
    
    << { 
      | d8. cs16 d8 e 
      | fs g a b 
    } \\ { 
      | g,2 ~ 
      | g4 r 
    } >>
    | b'8-> a ~ <d, a'>4
    | g8-> fs ~ <b, fs'>4
    << { 
      | b8. as16 b8 cs 
      | ds8 e fs g 
    } \\ { 
      | e,2 ~ 
      | e4 r 
    } >>
    | << { g'8 ( fs ) fs ( e ) } \\ { c2 } >>
    | << { e4-> ( ds8 ) r } \\ { b2 } >>
    
    | e8 ( <b' g'> ) e, ( <c' ds a'> )
    | e,8 ( <b' g'> ) e, ( <b' g'> )
    | e,8 ( <b' ds a'> ) e, ( <b' ds a'> )
    | e,8 ( <b' g'> ) e, ( <b' g'> )
    | e,8 ( <b' g'> ) e, ( <c' ds a'> )
    | e,8 ( <b' g'> ) e, ( <b' g'> )
    | e,8 ( <b' ds a'> ) e, ( <b' ds a'> )
    | e,8 ( [ <b' g'> ] ) e,, r
  }
}

pedal = {
  \partial 8 { s8 }
  \repeat volta 2 {
    | s8. \sd \so s16 \su s8. \sd \so s16 \su
    | s4. \sd s16 \so s \su
    | s4. \sd s16 \so s \su
    | s4. \sd s16 \so s \su
    | s8. \sd \so s16 \su s8.\sd \so s16 \su
    | s4. \sd s16 \so s \su
    | s4. \sd s16 \so s \su
  }
  \alternative {
    { | s4. \sd s8 \su }
    { | s4 \sd s \su }
  }
  
  \repeat volta 2 {
    | s2
    | s2
    | s4 s8. \sd s16 \su
    | s4 s8. \sd s16 \su
    | s2
    | s2
    | s2
    | s4. s8 \sd <> \su
    
    | s2
    | s2
    | s4 s8. \sd s16 \su
    | s4 s8. \sd s16 \su
    | \repeat unfold 4 { s2 }

    \override SustainPedal.transparent = ##t 
    | s8. \sd s16 \su s8. \sd s16 \su
    | s4. \sd s16 s \su
    | s4. \sd s16 s \su
    | s4. \sd s16 s \su
    | s8. \sd s16 \su s8. \sd s16 \su
    | s4. \sd s16 s \su
    | s4. \sd s16 s \su
    \revert SustainPedal.transparent
    | s4 \sd s \su
  }
}

dynamics = {
  \partial 8 { s8 \p }
  \repeat volta 2 {
    \repeat unfold 7 { s2 }
  }
  \alternative {
    { s2 }
    { s2 }
  }
  
  \repeat volta 2 {
    | s2 \mf
    | s8 \< s8 s4 <> \!
    | s16 s \> s4 s8 \!
    | s2
    | s4. s8 \<
    | s4. s8 \!
    | s8 \f s\< s8. s16 \!
    | s4 s \dim
    
    | s2 \p
    | s8 \< s s s \!
    | s8 \> s s s \!
    | s2
    | s2
    | s8 s \< s s \!
    | s2
    | s2
    
    | \repeat unfold 7 { s2 }
    | s2 -\tweak X-offset 0.5 \pp
  }
}

#(set-global-staff-size 20) % default 20

\paper {
  
  % set these to false after editing 
  ragged-right = ##f
  ragged-last-bottom = ##f 

  markup-system-spacing = 
    #'((basic-distance . 2)
       (padding . 1)) % defaults: 1, 0.5
    
  system-system-spacing =
    #'((basic-distance . 12) 
       (minimum-distance . 8)
       (padding . 1)
       (stretchability . 20)) % defaults: 12, 8, 1, 60
    
  % #(set-paper-size "letter") % for testing only
  
  % Variables not affected by scaling of paper size 
  top-margin = 12\mm % default 5
  bottom-margin = 8\mm % default 6
}

% Typeset only
\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano"
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
  \unfoldRepeats {
    <<
      \new Staff = "upper" << \rightHand \pedal \dynamics >>
      \new Staff = "lower" << \leftHand \pedal \dynamics >>
    >>
  }
  \midi {
  }
}
