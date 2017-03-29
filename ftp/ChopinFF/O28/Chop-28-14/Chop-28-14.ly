%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.18.2"
\language "english"

\header {
  title = "Prélude"
  composer = "Frederic Chopin (1810-1849)"
  opus = "Op 28, No 14"
  date = "1837"
  style = "Romantic"
  source = "CFEO, http://www.chopinonline.ac.uk/cfeo/browse/pageview/73653/"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Prélude 14"
  mutopiaopus = "Op 28, No 14"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"

 footer = "Mutopia-2017/03/29-2175"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2017 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

global = {
  \key ef \minor
  \time 4/4
  \accidentalStyle piano
  \omit TupletNumber
}

rightHand = \relative {
  \global
  \clef treble
  \set Score.tempoHideNote = ##t
  \tempo "Allegro." 4 = 160
  \voiceOne
  
  \tuplet 3/2 4 {
    \staffDown
    | ef8 bf' gf cf ef, cf' d, cf' f, bf d, bf'
    | ef,8 bf' gf cf ef, cf' d, cf' f, bf d, bf'
    | ef,8 bf' gf cf ef, c' f, c' af \staffUp ef' bff df
    | gf,8 df' bf ef gf, e' a, e' c gf' df f
    
    | bf,8 f' df gf bf, gf' a, gf' c, f a, f'
    | bf,8 f' df gf bff, gf' af, gf' d f cf f
    | af,8 ff' cf d af d g, d' bf f' g, ef'
    \staffDown
    | f,8 df' g, b f b  e, b' g df' e, c'
    | gf8 eff' bff c gf c f, c' af ef' f, df'
    | ef,8 cf' f, a ef a d, a' f bf gf bf
    
    | ef,8 bf' gf cf ef, cf' d, cf' f, bf d, bf'
    | ef,8 bf' gf cf g cf d, cf' gf bf f bf
    | ef,8 bf' gf cf ef, cf' f, df' a df f, df'
    | gf,8 df' bff eff gf, eff' bf ef gf, ff' g, f'
    
    | af,8 cf gf cf f, cf' ef, af d, gf ef gf
    | af,8 gf' ef gf af, gf' bf, gf' ef gf bf, gf'
    | ef8 bf' ef, cf' ef, df' ef, bf' ef, cf' ef, df'
    | ef,8 df' ef, cf' ef, bf' ef, af ef bf' ef, bf'
  }
  | ef,4 \staffUp \oneVoice r r2 |
    
  \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  \voiceFour

  \tuplet 3/2 4 {
    | ef,8 bf' gf cf ef, cf' d, cf' f, bf d, bf'
    | ef,8 bf' gf cf ef, cf' d, cf' f, bf d, bf'
    | ef,8 bf' gf cf ef, c' f, c' af ef' bff df
    \stemNeutral
    | gf,8 df' bf ef gf, e' a, e' c gf' df f
    
    | bf,8 f' df gf bf, gf' a, gf' c, f a, f'
    | bf,8 f' df gf bff, gf' af, gf' d f cf f
    | af,8 ff' cf d af d g, d' bf f' g, ef'
    \stemDown
    | f,8 df' g, b f b  e, b' g df' e, c'
    | gf8 eff' bff c gf c f, c' af ef' f, df'
    | ef,8 cf' f, a ef a d, a' f bf gf bf
    
    | ef,8 bf' gf cf ef, cf' d, cf' f, bf d, bf'
    | ef,8 bf' gf cf g cf d, cf' gf bf f bf
    | ef,8 bf' gf cf ef, cf' f, df' a df f, df'
    | gf,8 df' bff eff gf, eff' bf ef gf, ff' g, f'
    
    | af,8 cf gf cf f, cf' ef, af d, gf ef gf
    | af,8 gf' ef gf af, gf' bf, gf' ef gf bf, gf'
    | ef8 bf' ef, cf' ef, df' ef, bf' ef, cf' ef, df'
    | ef,8 df' ef, cf' ef, bf' ef, af ef bf' ef, bf'
  }
  | ef,,4 \oneVoice r r2 |
}

dyn = {
  | s2 -\markup { \dynamic "mf" "peasante." } \< s \>
  | s2 \< s \>
  | s1 \<
  | s2 s4. s16 s \!
  
  | s2 \< s \>
  | s2 \< s4. \> s16 s \!
  | s2 \> s\<
  | s2 \> s \< 
  | s2 \> s \<
  | s2 \> s \<
 
  | s1 \ff
  | s2 \< s \>
  | s1 \<
  | s2 s4. s16 s \!
  
  | s1
  | s2 s2\>
  | s1
  | s1
  | s4 s \! s2 |
}

#(set-global-staff-size 18)

\paper {
  ragged-last-bottom = ##f % False after editing is finished
  
  top-margin = 8\mm
  bottom-margin = 6\mm
  system-system-spacing.basic-distance = #19
  
  % #(set-paper-size "letter") % for testing only
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"XIV"
    \new Staff = "upper" \rightHand
    \new Dynamics \dyn
    \new Staff = "lower" \leftHand
  >>
  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
  \midi {
  }
}
