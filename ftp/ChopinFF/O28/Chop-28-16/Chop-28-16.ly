%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.19.56"
\language "english"

\header {
  title = "Prélude"
  composer = "Frederic Chopin (1810-1849)"
  opus = "Op 28, No 16"
  date = "1837"
  style = "Romantic"
  source = "CFEO, http://www.chopinonline.ac.uk/cfeo/browse/pageview/73657/"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Prélude 16"
  mutopiaopus = "Op 28, No 16"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"

 footer = "Mutopia-2017/03/29-2176"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2017 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

sd = \sustainOn 
su = \sustainOff 

doubleFermatas = {
  \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \override Staff.RehearsalMark.direction = #DOWN
  \override Staff.RehearsalMark.rotation = #'(180 0 0)
  \mark \markup { \musicglyph #"scripts.ufermata" }
}

spaceFromBarLine = {
  \once \override Score.BarLine.space-alist.next-note = #'(fixed-space . 3.2)
}

global = {
  \key bf \minor
  \time 4/4
  \accidentalStyle piano
  \omit TupletBracket
}

rightHand = \relative {
  \global
  \clef treble
  \set Score.tempoHideNote = ##t
  \tempo 4 = 120
  \oneVoice
  
  \tag #'layout {
    \tupletUp
    \tuplet 3/2 2 { <ef' a gf'>4-> <ef a f'>-> <ef a e'>->
      <ef a ef'>-> <ef a df>-> <ef a c>-> }
  }
  \tag #'midi { % Fake fermata 
    \tuplet 3/2 2 { <ef a gf'>4 <ef a f'> <ef a e'>
      <ef a ef'> <ef a df> \tempo 4 = 60 <ef a c>8 r }
  }
  
  \bar "||"

  \tempo "Presto con fuoco." 4 = 160
  \spaceFromBarLine
  | f'16 ( c ef df  f, a bf c  df ef f g  a bf c df 
  \ottava 1
  | ef16 f g a  bf c df ef  e f ef df  c bf a bf
  | af16 gf f e  f ef df c  bf a bf af  \ottava 0 gf f ef df 
  | c16 df ef f  gf af bf c  bf af gf f  ef df c ef
  | gf16 d f ef   c gf b c  df c d ef  f ef e f
  | af16 gf a bf  \ottava 1 df c df d  f ef e f  af bf af gf
  | gf16 f' ef ef, df' c c, bf' a a, af' gf  gf, f' ef gf, 
  | f16 ef' df f,  \ottava 0 df' c ef, c'  df, bf' af c,  af' gf bf, gf' 
  
  \barNumberCheck 10
  | a,16 bf c df  ef e f gf  e f d ef  c df c bf
  | a16 bf c df  ef e f gf  e f d ef  c df c bf )
  | b16 ( c d ef  e f g af  fs g e f  d ef d c )
  | b16 ( c d ef  e f g af  fs g e f  d ef d c )
  | df16 ( ef f gf  af bf b c  cs d f ef  c a gf ef 
  | df16 ef f  gf af bf b c  df c ef df  bf g e df
  | c16 df d ef  e f gf g  af a c bf  gf f ef df
  | c16 bf a c  gf f e f  gf f bf a  df c af' gf
  
  \barNumberCheck 18
  | f16 c ef df  f, a bf c  df ef f g  a bf c df 
  \ottava 1
  | ef16 f g a  bf c df ef  e f ef df  c bf a bf
  | af16 gf f e  f ef df c  bf a bf af  \ottava 0 gf f ef df 
  | c16 df ef f  gf af bf c  bf af gf f  ef df c ef
  | gf16 d ff ef  c gf b c  df c d ef  ff ef e f
  | af16 gf b c  \ottava 1 df c d ef  f ef e f  af bf af g 
  | gf16 f' ef gf,  ef' df f, df'  c ef, c' bf  df, bf' af c,
  | af'16 gf bf, gf'  f af, f' ef  gf, ef' df f, \ottava 0 bf af f df )
  
  \barNumberCheck 26
  | c16 ( df ef e  f gf af bff  g af ef ff  af, ff' ef df )
  | c16 ( df ef e  f gf af bff  g af ef ff  af, ff' df cf )
  | as16 ( b cs d  ds e fs g  es fs ds e  cs d b a )
  | gs16 ( a b c  cs d e f  ds e cs d  b c b a 
  | gs16 a df c  bf a gf' f  ef df c' bf  af gf f ef
  | df16 c bf' af gf f ef df  c bf af' gf  f ef df c 
  | bf16 a af g  a g gf f  g gf f e  gf f e ef
  | f16 e ef d  e ef d df  ef d df c  ef df c bf )
  
  \barNumberCheck 34
  | a16 ( bf c df  ef e f gf  ef f d ef  c df c bf )
  | a16 ( bf c df  ef e f gf  ef f d ef  c df c bf )
  | c16 ( df ef f  gf c bf c,  bf c df ef  f c' bf gf )
  | e16 ( f gf f  bf a gf' f  ef df bf f  ef df bf f )
  | a16 ( bf c df  ef e f gf  ef f d ef  c df c bf )
  | a16 ( bf c df  ef e f gf  ef f d ef  c df c bf )
  | cf16 ( df ef ff  gf af bf cf  df ef ff gf  af bf ef df 
  | ff16 ef cf af  gf ef cf af  \stemUp gf ef cf \staffDown af  gf ef cf af ) 
  
  \barNumberCheck 42
  | e16 ^( f bf a  gf f df' c  bf a gf' f  df c bf' a
  | gf f df' c  \staffUp bf a gf' f  df c bf' a  gf f df' c
  | \stemDown bf a gf' f  df c bf' a  gf f df' c  bf a gf' f
  | \ottava 1 df16 c bf' a  gf f df' c f8 ) r \ottava 0 <ef,,, a f'>4
  | <bf' bf'>4 r r2
  |
  
  \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  \oneVoice
  
  \tag #'layout {
    \tupletUp
    \tuplet 3/2 2 { <f,, f'>4-> <c'' f c'>-> q-> q-> q-> q-> }
  }
  
  \tag #'midi {
    \tuplet 3/2 2 { <f,, f'>4 <c'' f c'> q q q q8 r }
  }
  
  \doubleFermatas
  \spaceFromBarLine
  | bf8 ( <f' df'> ) r f, bf ( <f' df'> ) r f,
  | bf8 ( <f' df'> ) r f, bf ( <f' df'> ) r f,
  | bf8 ( <f' df'> ) r f, bf ( <f' df'> ) r f,
  | bf8 ( <ef gf ef'> ) r bf, bf' ( <ef gf ef'> ) r bf,
  | bf'8 ( <ef gf ef'> ) r bf, bf' ( <ef gf ef'> ) r bf,
  | bf'8 ( <ef gf ef'> ) r bf, bf' ( <ef gf ef'> ) r bf (
  | a8 <gf' ef'> ) r a,, a' ( <gf' ef'> ) r a, (
  | bf8 <f' df'> ) r bf, df ( <f bf f'> ) r df (
  
  \barNumberCheck 10
  | ef8 <a gf'> ) r ef df ( < f bf f'> ) r df (
  | ef8 <a gf'> ) r ef df ( < f bf f'> ) r df (
  | f8 <b af'> ) r f ( ef <g c g'> ) r ef (
  | f8 <b af'> ) r f ( ef <g c g'> ) r ef (
  | f8 <af df af'> ) r f ( gf <a c a'> ) r gf (
  | f8 <af df af'> ) r f e ( <bf' df g> ) r e, (
  | ef8 <a c gf'> ) r ef ( df < f bf f'> ) r4
  | f,8 r <c' f a ef'>4 \arpeggio r r
  
  \barNumberCheck 18
  | <bf, bf'>8 <df' f df'> r <f,, f'> ( <bf bf'>8 ) <df' f df'> r <f,, f'> (
  | <bf bf'>8 ) <df' f df'> r <f,, f'> ( <bf bf'>8 ) <df' f df'> r <f,, f'> (
  | <bf bf'>8 ) <df' f df'> r <f,, f'> ( <bf bf'>8 ) <df' f df'> r <f,, f'> (
  | <bf bf'>8 ) <ef' gf ef'> r <f,, f'> ( <bf bf'>8 ) <ef' gf ef'> r <f,, f'>(
  | <bff bff'>8 ) <ef' gf ef'> r <ef,, ef'> ( 
    <bff' bff'>8 ) <ef' gf ef'> r <ef,, ef'> (
  | <bff' bff'>8 ) <ef' gf ef'> r <ef,, ef'> ( 
    <bff' bff'>8 ) <ef' gf ef'> r <ef,, ef'> (
  | <af af'>8 ) <ef'' c' gf'> r <ef,, ef'> ( <af af'> ) <ef'' c' gf'> r af,, (
  | af'8 ) <f' df' f> r af,, ( af' ) <f' df'> r af,, 
  
  \barNumberCheck 26
  | af'8 ( <ef' gf c> ) r af,, af' ( <ff' df'> ) r af,,
  | af'8 ( <ef' gf c> ) r af, ( df <ff df'> ) r g, (
  | fs8 <fs' as e'> ) r fs,, ( fs' <fs' b d> ) r f, (
  | e8 <e' gs d'> ) r e,, ( e' <e' a c> ) r <e,, e'>
  | <f f'>8 r <c'' f ef'>4 \arpeggio <bf f' df'> 
    \arpeggio <ef bf' gf'> \arpeggio
  | <af, gf' c>4 \arpeggio <df af' f'> \arpeggio
    <gf, df' bf'> \arpeggio <c gf' ef'> \arpeggio
  | <df f bf df>4 <ef gf bf c> r gf16 ( f e ef
  | f16 e ef d  e ef d df  ef d df c  ef df c bf )
  
  \barNumberCheck 34
  | ef,8 ( <a gf'> ) r ef ( df <bf' f'> ) r df, (
  | ef8 <a gf'> ) r ef ( df <bf' f'> ) r df, (
  | ef8 <bf' gf'> ) r ef, ( f <df' bf'> ) r f,, (
  | f'8 <ef' a> ) r f, ( bf <f' df'> ) r df, (
  | ef8 <a gf'> ) r ef ( df <bf' f'> ) r df, (
  | ef8 <a gf'> ) r ef ( df <bf' f'> ) r df, 
  | <ef cf' gf'>4 r <ef' gf cf gf'> ( <df gf bf ff'>
  |
    <<
      { \voiceThree ef'2 ) s2 }
      \new Voice { \voiceFour <cf, gf'>4 \oneVoice r r2 }
    >>
  
  \barNumberCheck 42
  | \stemDown e,,16 _( f bf a  gf f df' c  bf a gf' f  df c bf' a
  | gf f df' c  bf a gf' f  df c bf' a  gf f df' c
  | bf a gf' f  \clef treble \stemNeutral df c bf' a  gf f df' c  bf a gf' f
  | df16 c bf' a  gf f df' c f8 ) r \clef bass <f,,,, f'>4
  | \slurDown \acciaccatura { bf,8 } <bf' f' df'>4 \oneVoice r r2
}

pedal = {
  \omit TupletBracket
  | \tuplet 3/2 { s4 \sd s \su s } s2
  | \repeat unfold 8 { s8 \sd s \su s4 s8 \sd s \su s4 }
  
  \barNumberCheck 10
  | \repeat unfold 7 { s8 \sd s \su s4 s8 \sd s \su s4 }
  | s2. \sd <> \su s4
  
  \barNumberCheck 18
  | \repeat unfold 8 { s8 \sd s \su s4 s8 \sd s \su s4 }
  
  \barNumberCheck 26
  | \repeat unfold 4 { s8 \sd s \su s4 s8 \sd s \su s4 }
  | s4 \sd s8 s \su s8. \sd s16 \su s8. \sd s16 \su
  | s8. \sd s16 \su s8. \sd s16 \su s8. \sd s16 \su s8. \sd s16 \su
  | s1
  | s1
  
  \barNumberCheck 34
  | \repeat unfold 6 { s8 \sd s \su s4 s8 \sd s \su s4 }
  | s2 \sd s8 s \su s8. \sd s16 \su
  | s2 \sd s4 <> \su s
  
  \barNumberCheck 42
  | s1
  | s1
  | s4 s \sd s2
  | s2. s4 \su
  | s2. \sd s4 \su
  |
}

dynamics = {
  | s1 \f
  | s1 \<
  | s2 s \>
  | s1 <> \!
  | s1
  | s1 \<
  | s1
  | s2 s4 s \>
  | s1 <> \!
  
  \barNumberCheck 10
  | s1 * 4
  | \repeat unfold 3 { s2 s \> <> \! }
  | s4 s \< s2
  
  \barNumberCheck 18
  | s2 \ff s \<
  | s2 <> \! s
  | s1 \>
  | s2 \< <> \! s
  | s2 s2 \<
  | s1
  | s1 \>
  | s1
  
  \barNumberCheck 26
  | \repeat unfold 3 { s2 \< s \> }
  | s2 \< s \> <> \!
  | s1-"stretto."
  | s1
  | s2 s4 s \> <> \!
  | s1
  
  \barNumberCheck 34
  | s2 \< s \>
  | s2 \< s \>
  | s2 \< <> \! s \< <> \!
  | s2 s \>
  | s2 \< s \>
  | s2 \< s \>
  | s1 \< <> \!
  | s1
  
  \barNumberCheck 42
  | s4 s \cresc s2
  | s1
  | s1 
  | s2. s4 \ff
  | s4 \> <> \! s2.
  |
}

#(set-global-staff-size 19)

\paper {
  ragged-last-bottom = ##f % False after editing is finished
  
  top-margin = 8\mm
  bottom-margin = 6\mm
  system-system-spacing.basic-distance = #19
  
  % #(set-paper-size "letter") % for testing only
}

% Typeset, no MIDI
\score {
  \keepWithTag #'layout
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"XVI"
    \new Staff = "upper" \rightHand
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \with { \consists "Mark_engraver" } \leftHand
    \new Dynamics = "pedal" \pedal 
  >>
  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}

% MIDI only
\score {
  \keepWithTag #'midi
  <<
    \new Staff = "upper" << \rightHand \pedal >>
    \new Staff = "lower" << \leftHand \pedal >>
  >>
  \midi {
  }
}
