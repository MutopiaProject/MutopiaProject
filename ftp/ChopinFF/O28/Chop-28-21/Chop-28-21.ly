%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.19.61"
\language "english"

\header {
  title = "Prélude"
  composer = "Frederic Chopin (1810-1849)"
  opus = "Op 28, No 21"
  date = "1837"
  style = "Romantic"
  source = "CFEO, http://www.chopinonline.ac.uk/cfeo/browse/pageview/73668/"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Prélude 21"
  mutopiaopus = "Op 28, No 21"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"
  footer = "Mutopia-2017/10/15-2195"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2017 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}

% #(ly:expect-warning "part of warning message")

sd = \sustainOn 
su = \sustainOff

hideOneNote = {
  \once \omit Stem
  \once \omit Flag
}

slurShapeA = \shape #'((0 . 0) (0 . -1.5) (0 . -1) (0 . 3)) \etc
slurShapeB = \tweak Slur.positions #'(0 . 3) \etc
slurShapeC = \tweak Slur.positions #'(2 . 2) \etc
slurShapeD = \tweak Slur.positions #'(0 . 3) \etc
slurShapeE = \shape #'((0 . 0) (0 . 0) (0 . 0.5) (-0.5 . 2)) \etc
slurShapeF = \tweak Slur.positions #'(0 . 4) \etc
slurShapeG = \tweak Slur.positions #'(0 . 3) \etc
slurShapeH = \tweak Slur.positions #'(0 . 1) \etc
slurShapeI = \shape #'((0 . 0) (0 . -0.5) (0 . 0.5) (0 . 2)) \etc
slurShapeJ = \shape #'((0 . 0) (0 . -0.5) (0 . 0.5) (0 . 2)) \etc
slurShapeK = \shape #'((0 . 0) (0 . -0.5) (0 . 0.5) (0 . 2)) \etc
slurShapeL = \shape #'((0 . 0) (0 . -0.5) (0 . 0.5) (0 . 2)) \etc

hshiftNoteA = {
  \once \override NoteHead.X-offset = -0.5
  \once \override Stem.X-offset = -0.5
}

global = {
  \key bf \major
  \time 3/4
  \accidentalStyle piano
}

rightHand = \relative {
  \global
  \clef treble
  \set Score.tempoHideNote = ##t
  \tempo "Cantabile." 4 = 66
  
  | f''2. (
  | d2 \grace { f4 } ef4
  | d2.
  | g,2. )
  | a4 ( ef' ) ef (
  | ef4 \acciaccatura { ef16 f ef } d4 ef 
  | g2 ~ g8. f16
  | d2 ) r4
  
  \barNumberCheck 9
  | bf'2. (
  | bf,2 ~ bf8. ) bf16 (
  | g'2.
  | g,4 \acciaccatura { g8 [ a g s fs g ] } ef'4 c
  | a8 ) <f' d'> ( [ <e g> <ef a> <d bf'> <df f> ]
  | <c af'>8 <bf gf'> <a c> <af d> <g ef'> <gf bf> )
  | r8 <f d'> ( <e g> <ef a> <d bf'> f
  | bf,8 ) r r4 r
  
  \barNumberCheck 17
  | <bf' df bf'>2. (
  | <gf bf gf'>2 <cf ef cf'>4
  | <bf df bf'>2.
  | <gf bf gf'>2. )
  | <df' bf' df>2 ( <bf gf' bf>4
  | <gf' bf gf'>2 <df bf' df>4
  | \slashedGrace { <cf af' cf>8 } q4 <bf gf' bf> ) r
  | R2.
  
  \barNumberCheck 25
  | <bf df bf'>2. (
  | <gf bf gf'>2 <cf ef cf'>4
  | <bf df bf'>2.
  | <gf bf gf'>2. )
  | <df' bf' df>2 ( <bf gf' bf>4
  | <gf' bf gf'>2 <df bf' df>4
  | \acciaccatura { <df bf' df>8 } <cf af' cf>4 <bf gf' bf> ) r
  | R2.
  
  \barNumberCheck 33
  <<
    \new Voice {
      \voiceOne
      | f'4-> s2
      | d4 s2
      | g4-> s2
      | ef4 s2
      | a4-> s2
      | bf4-> s2
    }
    \new Voice {
      \voiceTwo
      | r8 f, ^( <e g> <ef a> <d bf'> <c c'>
      | \hideOneNote d'8 ) f, ^( [ <e g> <ef a> <d bf'> d' ]
      | \hideOneNote g8 ) g, ^( [ <fs a> <f b> <ef c'> <d d'> ]
      | \hideOneNote ef'8 ) g, ^( [ <fs a> <f b> <ef c'> ef' ]
      | \hideOneNote a8 ) a, ^( [ <gs b> <g cs> <f d'> f' ]
      | \hideOneNote bf8 ) bf, ^( [ <a c> <af d> <g ef'> <gf gf'> ] )
    }
    \new Voice {
      \voiceFour
      | s2.
      | r8 s s2
      | r8 s s2
      | r8 s s2
      | r8 s s2
      | r8 s s2
    }
  >>
  | r8 f' ( <gf bf ef>_> f <gf bf ef>_> f 
  | <gf bf ef>8 f <gf bf ef> f <gf bf ef> f )
  
  \barNumberCheck 41
  | <gf ef'>8 ( <f d'> <e g> <ef a> <d bf'> <df f>
  | <c af'>8 <bf gf'> <a c> <af d> <g ef'> <gf bf>
  | <f df'>8 <e c'> <ef g> <d gs> <cs a'> <c ef>
  | <bf gf'>8 <a f'> <af c> <g d'> << { ef'4-> } \\ { gf,8 <f a> } >>
  | <f bf d>8 ) r r4 r
  | r8 << { s8 s4 c'' } \\ { <gf ef'>8 ^( <f a> <e bf'> ef gf
  | \oneVoice <d f bf d>4 ) } >> r r 
  | r8 << { s8 s4 c' } \\ { <gf ef'>8 ^( <f a> <e bf'> ef gf
  
  \barNumberCheck 49
  | \oneVoice <d f bf d>4 ) } >> r r
  <<
    \new Voice {
      \voiceOne
      | g2.-> (
      | f2. )
      | g2.-> (
      | f2. ~
      | f2. )
      \oneVoice
      | R2.
      | R2.
      \voiceOne
      | <ef f>2. (
      | <d f>2. )
      |
    }
    \new Voice {
      \voiceTwo
      | \hshiftNoteA d4. c8 ef d
      | \hshiftNoteA d2.
      | \hshiftNoteA d4. c8 ef d
      | \hshiftNoteA d2. ~
      | d2.
      | 
    }
  >>
  \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  
  | bf,,8 f'' _( \< <e g> <ef a> <d bf'> <c c'> \!
  | bf8 ) \< <f' d'> ( <e g> <ef a> <d bf'> bf \!
  | ef,8 ) g' ( \< <fs a> <f b> <ef c'> <d d'> \!
  | c8 ) <g' ef'> ( \< <fs a> <f b> <ef c'> <c ef'> \!
  | f,8 ) <bf' gf'> -\slurShapeE ( \< <a f'> <af c> <g ef'> <gf bf> \!
  | f,8 ) <gf' ef'> ( \< <f d'> <e g> <ef a> f \!
  | bf,8 ) f' -\slurShapeB ( <e g> <ef a> <d bf'> <c c'> 
  | bf8 ) <f' d'> ( <e g> <ef a> <d bf'> <c c'>
  
  \barNumberCheck 9
  | g8 ) d'' -\slurShapeA ( \< <cs e> <c fs> <bf g'> <a a'> \!
  | bf,8 ) bf' -\slurShapeF ( \< <a c> <af d> <g ef'> <f f'> \!
  | ef,8 ) g' -\slurShapeG ( \< <fs a> <f b> <ef c'> <d d'> \!
  | c8 ) <g' ef'> ( <fs a> <f b> <ef c'> <c ef'>
  | f,8 ) \clef treble <f'' d'> ( [ <e g> <ef a> <d bf'> <df f> ]
  | <c af'> <bf gf'> <a c> <af d> <g ef'> <gf bf> ) \clef bass
  | bf,8 <f' d'> ( <e g> <ef a> <d bf'> f
  | bf,8 ) <f' d'> ( <e g> <ef a> <d bf'> bf
  
  \barNumberCheck 17
  \override Beam.auto-knee-gap = 4
  \once \override Beam.positions = #'(-2.5 . -2.5)
  | gf,8 ) <df'' bf'> ( <gf df'> <bf ef> <gf df'> <df bf'> 
  | \stemNeutral <gf df'>8 <bf ef> <gf df'> <df bf'> <gf df'> <bf ef> 
  | <gf df'>8 <df bf'> <gf df'> <bf ef> <gf df'> <df bf'>
  | <gf df'>8 <bf ef> <gf df'> <df bf'> <gf df'> <bf ef>
  | <gf df'>8 <df bf'> <gf df'> <bf ef> <gf df'> <df bf'>
  | <gf df'>8 <bf ef> <gf df'> <df bf'> <gf df'> <bf ef>
  | <gf df'>8 <df bf'> <gf df'> <bf ef> <gf df'> <df bf'>
  | <gf df'>8 <bf ef> <gf df'> <df bf'> <gf df'> <bf ef>
  
  \barNumberCheck 25
  | <gf ff'>8 <bf df> <gf gf'> <bf ef> <gf ff'> <bf df>
  | gf8 <bf ef> <gf ff'> <bf df> <gf gf'> <bf ef>
  | <gf ff'>8 <bf df> <gf gf'> <bf ef> <gf ff'> <bf df>
  | gf8 <bf ef> <gf ff'> <bf df> <gf gf'> <bf ef>
  | <gf ff'>8 <bf df> <gf gf'> <bf ef> <gf ff'>8 <bf df> 
  | <gf gf'>8 <bf ef> <gf ff'> <bf df> <gf gf'> <bf ef>
  | <gf ff'>8 <bf df> <gf gf'> <bf ef> <gf ff'>8 <bf df>
  | <gf gf'>8 \< <bf ef> <gf ff'> <bf df> <gf e'> <bf c> ) \!
  
  \barNumberCheck 33
  \once \override Beam.positions = #'(-2.5 . -3)
  | f,,8 -\slurShapeH ( f'' <e g> <ef a> <d bf'> c
  | f,8 ) f' -\slurShapeI ( <e g> <ef a> <d bf'> f
  | f,8 ) g' -\slurShapeJ ( <fs a> <f b> <ef c'> d
  | f,8 ) g' ( <fs a> <f b> <ef c'> g
  | f,8 ) a' -\slurShapeK ( <gs b> <g cs> <f d'> a
  | f,8 ) bf' ( <a c> <af d> <g ef'> gf 
  | <f,, f'>8 ) \clef treble \stemDown f''' -\slurShapeC ( 
    [ <gf bf ef> f <gf bf ef> f ]
  | <gf bf ef>8 f <gf bf ef> f <gf bf ef> f )
  
  \barNumberCheck 41
  \stemNeutral
  | <gf a ef'>8 ( <f d'> <e g> <ef a> <d bf'> <df f>
  | <c af'>8 <bf gf'> \clef bass <a c> <af d> <g ef'> <gf bf>
  | <f df'>8 <e c'> <ef g> <d gs> <cs a'> <c ef>
  | <bf gf'>8 <a f'> <af c> <g d'> <gf ef'> f
  | bf,8 ) e' -\slurShapeD ^( f bf a g 
  | f,8 ) <gf' ef'> ( <f a> <e bf'> <ef c'> gf
  | bf,8 ) e -\slurShapeL ^( f bf a g 
  | f,8 ) <gf' ef'> ( <f a> <e bf'> <ef c'> gf
  
  \barNumberCheck 49
  | bf,,8 ) \< e f bf a g \!
  <<
    \new Voice {
      \voiceThree
      \crossStaff { 
        | << { bf'4 s2 } { g2. } >> 
        | <f bf>2.
        | << { bf4 s2 } { g2. } >> 
        | <f bf>2. ~
        | q2.
        | s2.
        | s2.
        | <f c'>2.->
        | <f bf>2.->
        |
      }
    }
    \new Voice {
      \voiceFour
      | g,,2 ( a4
      | bf8 e f bf a g
      | g,2 a4 )
      | bf8 ( e f bf a g
      | bf,8 e f c' a bf
      | ef cs d g e f
      | d'4 ) \oneVoice r r
      \voiceFour
      | <f,,, f'>2. (
      | <bf bf'>2. )
      |
    }
  >>
}

pedal = {
  | \repeat unfold 8 { s4 \sd s16 s \su s8 s4 }
  
  \barNumberCheck 9
  | \repeat unfold 4 { s4 \sd s16 s \su s8 s4 }
  | s2. * 4
  
  \barNumberCheck 17
  | s2. \sd
  | s2 s8. s16 \su
  | s2. \sd
  | s2. * 3
  | s8 s \su s \sd s \su s4 \sd
  | s2 s8. s16 \su
  
  \barNumberCheck 25
  | s2. * 8
  
  \barNumberCheck 33
  | \repeat unfold 6 { s4 \sd s16 s \su s8 s4 }
  | s2. \sd
  | s2 s8. s16 \su
  
  \barNumberCheck 41
  | s2. * 4
  | \repeat unfold 4 { s4 \sd s16 s \su s8 s4 }
  
  \barNumberCheck 49
  | s2. * 8
  | s2 \sd s4 \su
  | s2 \sd s4 \su
  |
}

dynamics = {
  | \once \omit DynamicText s2. \p
  | s2. * 7
  
  \barNumberCheck 9
  | s2. * 4
  | s8 s \> s2
  | s2 s8 s \!
  | s8 \> 8 s4. s8 \!
  | s8 \dim s \! s4 s
  
  \barNumberCheck 17
  | s2. \f
  | s2. * 7
  
  \barNumberCheck 25
  | s2. \pp
  | s2. * 7
  
  \barNumberCheck 33
  | \once \omit DynamicText s2. \mf \cresc
  | s2. * 5
  | s8 s \ff s2
  | s2.
  
  \barNumberCheck 41
  | s8 \dim s \! s2
  | s2. * 4
  | s8 s \> s4. s8 \!
  | s2.
  | s8 s \> s4. s8 \!
  
  \barNumberCheck 49
  | s2. * 5
  | s8 s \< s2
  | s2.
  | s4 \f \> s s \!
  |
}

#(set-global-staff-size 19) % default 20

\paper {
  ragged-last-bottom = ##f % set to false after editing 

  markup-system-spacing = 
    #'((basic-distance . 2)
       (padding . 1)) % defaults: 1, 0.5
    
  system-system-spacing =
    #'((basic-distance . 12) 
       (minimum-distance . 8)
       (padding . 1)
       (stretchability . 15)) % defaults: 12, 8, 1, 60
    
  %#(set-paper-size "letter") % for testing only
  
  % Variables not affected by scaling of paper size 
  top-margin = 12\mm % default 5
  bottom-margin = 8\mm % default 6
}

% Typeset only
\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"XXI"
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