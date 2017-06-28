%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.19.60"
\language "english"

\header {
  title = "Prélude"
  composer = "Frederic Chopin (1810-1849)"
  opus = "Op 28, No 19"
  date = "1837"
  style = "Romantic"
  source = "CFEO, http://www.chopinonline.ac.uk/cfeo/browse/pageview/73665/"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Prélude 19"
  mutopiaopus = "Op 28, No 19"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"

 footer = "Mutopia-2017/06/28-2192"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2017 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

%--- Function to set ottava text to "8" instead of "8va" 
#(define ottava
   (let ((orig-ottava ottava)
         (numbers '("15" "8" "" "8" "15")))
     (define-music-function (oct)(integer?)
       #{
         #(orig-ottava oct)
         #(if (not (= oct 0))
              #{
                \set Staff.ottavation = #(list-ref numbers (+ oct 2))
              #})
       #})))

sd = \sustainOn 
su = \sustainOff

omitTuplet = {
  \omit TupletBracket
  \omit TupletNumber
}

global = {
  \key ef \major
  \time 3/4
  \accidentalStyle piano
}

rightHand = \relative {
  \global
  \clef treble
  \set Score.tempoHideNote = ##t
  \tempo "Vivace." 4 = 168
  
  \partial 4 { bf'4^\markup { \italic legato } }
  \omitTuplet
  \tuplet 3/2 {
    | bf8 bf, ef ef' ef, bf' g' g, ef'
    | bf'8 bf, g' ef' ef, bf' g' ef, bf'
    | f'8 d, af' ef' ef, af c c, af'
    | c8 c, g' bf bf, ef g g, bf
    | ef8 ef, a d d, a' ef' ef, a
    | g'8 g, bf f' f, bf d d, f
    | ef'8 ef, a d d, a' ef' ef, a
    | g'8 g, c f f, af c c, f
    
    \barNumberCheck 9
    | bf8 bf, ef ef' ef, bf' g' g, ef'
    | bf'8 bf, g' ef' ef, bf' g' ef, bf'
    | f'8 d, af' ef' ef, af c c, af'
    | c8 c, g' bf bf, ef g g, ef' 
    | gf8 gf, ef' f f, ef' fs fs, ef'
    | g8 g, d' a' a, d bf' bf, d
    | c'8 c, f d' d, f a a, f'
    | c'8 c, f bf bf, f' f f, bf
    
    \barNumberCheck 17
    | f'8 f, cf' ef ef, bf' f' df, af'
    | af'8 df,, bf' gf' df, bf' df df, bf'
    | f'8 df, cf' ef df, bf' f' df, af'
    | af'8 df,, bf' gf' df, bf' f' df, bf'
    | ff'8 df, bf' bf' ff, df' df' bf, e
    | d'8 bf, f' ef' bf, g' b gs, d'
    | c'8 a, ef' d' a, f' a f, c'
    | c'8 f,, ef' bf' f, d' f f, bf
    
    \barNumberCheck 25
    | f'8 f, cf' ef ef, bf' f' df, af'
    | af'8 df,, bf' gf' df, bf' df df, bf'
    | f'8 df, cf' ef df, bf' f' df, af'
    | af'8 df,, bf' gf' df, bf' f' df, bf'
    | e8 cs, bf' g' e, cs' fs ef, c'
    | a'8 fs, ef' gs f, d' b' gs, f'
    | bf8 g, e' df' bf, g' c a, fs'
    | ef'8 c, a' d cf, af'
  }
      f'8 r 
      
  \tuplet 3/2 {
    \barNumberCheck 33
    | bf,,8 bf, ef ef' ef, bf' g' g, ef'
    | bf'8 bf, g' ef' ef, bf' g' ef, bf'
    | f'8 d, af' ef' ef, af c c, af'
    | c8 c, g' bf bf, ef g g, bf
    | ef8 ef, a d d, a' ef' ef, a
    | g'8 g, bf f' f, bf d d, f
    | ef'8 ef, a d d, a' ef' ef, a
    | g'8 g, c f f, af c c, f
    
    \barNumberCheck 41
    | bf8 bf, ef ef' ef, bf' g' g, ef'
    | bf'8 bf, g' ef' ef, bf' g' ef, bf'
    | gf'8 ef, a f' d, af' e' cs, g'
    | ef'8 c, gf' d' b, f' df' df, g
    | c8 c, f d' c, f e' c, f
    | f'8 f, c' g' g, c f f, c'
    | c8 c, f d' d, f c' c, f
    | f8 f, c' g' f, c' d d, bf'
    
    \barNumberCheck 49
    | ef8 ef, bf' bf' g, ef' cf' g, ef'
    | bf' af, d bff' af, d af' af, d
    | g8 g, ef' bf' g, ef' c' g, ef'
    | bf'8 af, d bff' af, d af' af, d
    | g8 g, ef' bf' bf, g' ef' ef, bf'
    | g' d, b' f' d, g ef' c, g'
    | ef' c, gf' d' b, fs' c' c, fs
    | c'8 af, f' bf g, c af' f, d'
    
    \barNumberCheck 57
    | g8 ef, bf' bf' g, ef' cf' g, ef'
    | bf' af, d bff' af, d af' af, d
    | g8 g, ef' bf' g, ef' c' g, ef'
    | bf'8 af, d bff' af, d af' af, d
    | g8 g, ef' bf' bf, g' ef' ef, bf'
    | g'8 d, b' f' d, b' e d, b'
    | e8 cs, a' ef' c, a' c a, ef'
    | c'8 a, ef' bf' bf, ef d d, bf'
    
    \barNumberCheck 65
    | ef8 ef, bf' bf' ef,, bf' ef ef, bf'
    | a'8 ef, bf' ef ef, bf' af' ef, bf'
    | ef8 ef, bf' g' ef, bf' ef ef, bf'
    | fs'8 ef, bf' ef ef, bf' g' ef, ( bf'
  }
  | ef4 ) r r
  | \ottava 1 <ef' bf' ef>4 \ottava 0 r r
  | <ef,, g>2. \fermata
  | \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  
  \partial 4 { r4 }
  \omitTuplet
  \tuplet 3/2 {
    | ef,8 g' bf, ef, g' bf, ef, bf'' bf,
    | ef,8 ef'' g, bf, g'' bf, ef, bf'' bf,
    | ef,8 b'' b, ef, c'' c, ef, af' d,
    | ef,8 g' ef bf g' ef ef, ef' g,
    | f,8 c'' f, c c' f, f, c'' f,
    | bf, ef' f, d d' f, bf, bf' f
    | f,8 c'' f, c b' f f, c'' f,
    | bf,8 ef' af, f d' af bf, af' d,
    
    \barNumberCheck 9
    | ef,8 g' bf, ef, g' bf, ef, bf'' bf,
    | ef,8 ef'' g, bf, g'' bf, ef, bf'' bf,
    | ef,8 b'' b, ef, c'' c, ef, af' d,
    | ef,8 g' ef bf g' ef c, ef' g,
    | cf,8 ef' a, ef ef' a, cf, ef' a,
    | bf,8 d' g, a, d' fs, g, d'' g,
    | f,8 bf'' ef, f, bf' ef, c f ef
    | bf,8 ef' f, bf, d' f, bf, df' f,
    
    \barNumberCheck 17
    | af,8 cf' f, df cf' f, df, cf'' f, 
    | gf,8 bf' gf df bf' gf gf, bf' df,
    | df,8 cf'' f, af, cf' f, df, cf'' f,
    | gf,8 bf' gf df bf' gf gf, bf' df,
    | gf,8 bf' df, gf, df'' gf, gf, e'' bf
    | f,8 f'' bf, f g' bf, f f' b,
    | f8 f' c f, f' ef f, ef' a,
    | bf,8 ef' f, bf, d' f, bf, df' f,
    
    \barNumberCheck 25
    | af,8 cf' f, df cf' f, df, cf'' f, 
    | gf,8 bf' gf df bf' gf gf, bf' df,
    | df,8 cf'' f, af, cf' f, df, cf'' f,
    | gf,8 bf' gf df bf' gf gf, bf' df,
    | g,8 bf' e, bf cs' e, a, c' ef,
    | c8 ef' fs, b, d' f, d f' gs,
    | cs,8 e' g, e g' bf, ds, fs' a,
    | fs8 a' c, f, af' cf,
  }
      bf8 r
      
  \tuplet 3/2 {
    \barNumberCheck 33
    | ef,,8 g' bf, ef, g' bf, ef, bf'' bf,
    | ef,8 ef'' g, bf, g'' bf, ef, bf'' bf,
    | ef,8 b'' b, ef, c'' c, ef, af' d,
    | ef,8 g' ef bf g' ef ef, ef' g,
    | f,8 c'' f, c c' f, f, c'' f,
    | bf, ef' f, d d' f, bf, bf' f
    | f,8 c'' f, c b' f f, c'' f,
    | bf,8 ef' af, f d' af bf, af' d,
    
    \barNumberCheck 41
    | ef,8 g' bf, ef, g' bf, ef, bf'' bf,
    | ef,8 ef'' g, bf, g'' bf, ef, bf'' bf,
    | a,8 c' gf b, d' af cs, e' bf
    | ef,8 gf' c, f, a' d, g, bf' e,
    | af,8 af' f c af' f af, af' f
    | f,8 \clef treble ef'' af, ef ef' af, af, ef'' c, \clef bass
    | af,8 \clef treble af'' f c af' f \clef bass f, af' ef
    | bf, ef' af, f d' af bf, bf' af
    
    \barNumberCheck 49
    | ef,8 g' bf, ef, bf'' bf, ef, g' bf,
    | ef,8 af' bf, ef, bf'' bf, ef, bf'' bf,
    | ef,8 bf'' bf, ef, bf'' bf, ef, bf'' bf,
    | ef,8 af' bf, ef, bf'' bf, ef, bf'' bf,
    | ef,8 bf'' bf, ef, bf'' bf, g bf' ef,
    | g,8 f'' b, d, f' b, c, ef' g,
    | a,8 ef'' gf, ef ef' fs, a, ef'' fs,
    | bf,8 d' af f d' af bf, bf' af
    
    \barNumberCheck 57
    | ef,8 g' bf, ef, bf'' bf, ef, bf'' bf,
    | ef,8 af' bf, ef, bf'' bf, ef, bf'' bf,
    | ef,8 bf'' bf, ef, bf'' bf, ef, bf'' bf,
    | ef,8 af' bf, ef, bf'' bf, ef, bf'' bf,
    | ef,8 bf'' bf, ef, bf'' bf, g bf' ef,
    | g,,8 b'' f g, b' f gs, b' e,
    | a,8 cs' e, a, c' f, a, ef'' fs,
    | bf,8 ef' fs, bf, ef' g, bf,, af'' bf,
    
    \barNumberCheck 65
    | ef,8 g' bf, ef, bf'' bf, ef, g' bf,
    | ef,8 bf'' bf, ef, g' bf, ef, bf'' bf,
    | ef,8 g' bf, ef, bf'' bf, ef, g' bf,
    | ef,8 bf'' bf, ef, g' bf, ef, bf'' bf,
  }
  | ef,4 r r
  | \clef treble <g'' bf ef g>4 r r \clef bass
  | << { \crossStaff { <g, bf>2. } } \\ { <ef, bf' ef>2. \fermata } >>
  |
}

pedal = {
  \partial 4 { s4 }
  \tuplet 3/2 {
    | s2. \sd s4.
    | s2. s8 s s \su
    | s8 \sd s s \su s \sd s s \su s \sd s s \su
    | s8 \sd s s \su s4. \sd s8 s s \su
    | s8 \sd s s \su s \sd s s \su s \sd s s \su
    | s4. s \sd s8 s s \su
    | s8 \sd s s \su s4. s8 \sd s s \su
    | s8 \sd s s \su s4. \sd s8 s s \su
    
    \barNumberCheck 9
    | s2. \sd s4.
    | s2. s8 s s \su
    | s8 \sd s s \su s \sd s s \su s \sd s s \su
    | s8 \sd s s \su s4. \sd s8 s s \su
    | s8 \sd s s \su s \sd s s \su s \sd s s \su
    | s8 \sd s s \su s \sd s s \su s \sd s s \su
    | s4. \sd s8 s s \su s \sd s s \su
    | s8 \sd s s \su s \sd s s \su s \sd s s \su
    
    \barNumberCheck 17
    | \repeat unfold 4 { s8 \sd s s \su s \sd s s \su s \sd s s \su }
    | s2. \sd s8 s s \su
    | s8 \sd s s \su s \sd s s \su s \sd s s \su
    | s8 \sd s s \su s \sd s s \su s \sd s s \su
    | s8 \sd s s \su s \sd s s \su s \sd s s \su
    
    \barNumberCheck 25
    | s8 \sd s s \su s \sd s s \su s \sd s s \su
    | s4. \sd s8 s s \su s \sd s s \su
    | s8 \sd s s \su s \sd s s \su s \sd s s \su
    | s2. \sd s8 s s \su
    | s4. \sd s8 s s \su s4. \sd
    | s8 s s \su s4. \sd s8 s s\su 
    | s4. \sd s8 s s \su s4. \sd
    | s8 s s \su s4. \sd
  }
      s8 \su s
      
  \tuplet 3/2 {
    \barNumberCheck 33
    | s2. \sd s4.
    | s2. s8 s s \su
    | s8 \sd s s \su s \sd s s \su s \sd s s \su
    | s8 \sd s s \su s4. \sd s8 s s \su
    | s8 \sd s s \su s \sd s s \su s \sd s s \su
    | s8 \sd s s \su s4. \sd s8 s s \su
    | s8 \sd s s \su s \sd s s \su s \sd s s \su
    | s8 \sd s s \su s4. \sd s8 s s \su
    
    \barNumberCheck 41
    | s2. \sd s4.
    | s2. s8 s s \su
    | s8 \sd s s \su s \sd s s \su s \sd s s \su
    | s8 \sd s s \su s \sd s s \su s \sd s s \su
    | s2. \sd s8 s s \su
    | s2. \sd s8 s s \su
    | s2. \sd s8 s s \su
    | s4. \sd s8 s s \su s \sd s s \su
    
    \barNumberCheck 49
    | \repeat unfold 5 { s2. \sd s8 s s \su }
    | s4. \sd s8 s s \su s \sd s s \su
    | s8 \sd s s \su s \sd s s \su s \sd s s \su
    | s4. \sd s8 s s \su s \sd s s \su
    
    \barNumberCheck 57
    | \repeat unfold 5 { s2. \sd s8 s s \su }
    | s4. \sd s8 s s \su s \sd s s \su
    | s8 \sd s s \su s4. \sd s8 s s\su 
    | s4. \sd s8 s s \su s \sd s s \su
    
    \barNumberCheck 65
    | s2. \sd s8 s s \su
    | s4. \sd s8 s s \su s4. \sd
    | s8 s s \su s4. \sd s8 s s \su
    | s4. \sd s8 s s \su s4. \sd
  }
  | s4 \su s2
  | s4 \sd s2
  | s2 s8 s \su 
  |
}

dynamics = {
  \partial 4 { \once \omit DynamicText s4 \p \< }
  \tuplet 3/2 {
    | s2. s4.
    | s8 s s \! s2.
    | s2. \> s8 s s \!
    | s2. \> s8 s s \!
    | s2. \< s8 s s \!
    | s2. \> s8 s s \!
    | s2. \< s8 s s \!
    | s2. \> s8 s s \!
    
    \barNumberCheck 9
    | s2. \< s8 s s \!
    | s2. \< s8 s s \!
    | s2. \> s8 s s \!
    | s2. \> s8 s s \!
    | s2. \< s8 s s \!
    | s2. s4.
    | s2. s4.
    | s2. \> s8 s s \!
    
    \barNumberCheck 17
    | s2. \< s8 s s \!
    | s2. \> s8 s s \!
    | s2. \< s8 s s \!
    | s2. \> s8 s s \!
    | s2. \< s8 s s \!
    | s2. \> s8 s s \!
    | s2. s4.
    | s2. \> s8 s s \!
    
    \barNumberCheck 25
    | s2. \< s8 s s \!
    | s2. \> s8 s s \!
    | s2. \< s8 s s \!
    | s2. \> s8 s s \!
    | s2. s4. \cresc
    | s2. s4.
    | s2. s4.
    | s2.
  }
      s4 \!
      
  \tuplet 3/2 {
    \barNumberCheck 33
    | \once \omit DynamicText s2. \mf \< s4.
    | s2. s4.
    | s2. \> s8 s s \!
    | s2. \> s8 s s \!
    | s2. \< s8 s s \!
    | s2. \> s8 s s \!
    | s2. \< s8 s s \!
    | s2. \> s8 s s \!
    
    \barNumberCheck 41
    | s2. \< s4.
    | s2. s8 s s \!
    | \repeat unfold 3 { s2. s4. }
    | \repeat unfold 3 { s2. \> s8 s s \! }
    
    \barNumberCheck 49
    | s2. \< s8 s s \!
    | s2. \> s8 s s \!
    | s2. \< s8 s s \!
    | s2. \> s8 s s \!
    | s2. \< s8 s s \!
    | s2. \> s8 s s \!
    | s2. \> s8 s s \!
    | s2. \> s8 s s \!
    
    \barNumberCheck 57
    | s2. \< s8 s s \!
    | s2. \> s8 s s \!
    | s2. \< s8 s s \!
    | s2. \> s8 s s \!
    | s2. \< s4.
    | s2. s8 s s \!
    | s2. \> s4.
    | s2. s8 s s \!
    
    \barNumberCheck 65
    | s2. \cresc s4.
    | s2. s4.
    | s2. s4.
    | s2. \dim s4.
  }
  | s4 \! s2
  | s2. \ff 
  | s2. 
  |
}

#(set-global-staff-size 18) % default 20

\paper {
  ragged-last-bottom = ##f % set to false after editing 

  markup-system-spacing = 
    #'((basic-distance . 2)
       (padding . 1)) % defaults: 1, 0.5
    
  system-system-spacing =
    #'((basic-distance . 12) 
       (minimum-distance . 8)
       (padding . 1)
       (stretchability . 60)) % defaults: 12, 8, 1, 60
    
  % #(set-paper-size "letter") % for testing only
  
  % Variables not affected by scaling of paper size 
  top-margin = 12\mm % default 5
  bottom-margin = 8\mm % default 6
}

% Typeset only
\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"XIX"
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
