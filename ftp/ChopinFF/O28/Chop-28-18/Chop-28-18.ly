%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.19.60"
\language "english"

\header {
  title = "Prélude"
  composer = "Frederic Chopin (1810-1849)"
  opus = "Op 28, No 18"
  date = "1837"
  style = "Romantic"
  source = "CFEO, http://www.chopinonline.ac.uk/cfeo/browse/pageview/73663/"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Prélude 18"
  mutopiaopus = "Op 28, No 18"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"

 footer = "Mutopia-2017/06/28-2191"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2017 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

sd = \sustainOn 
su = \sustainOff

staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

omitTuplet = {
  \omit TupletBracket
  \omit TupletNumber
}

global = {
  \key f \minor
  \time 4/4
  \accidentalStyle piano
}

rightHand = \relative {
  \global
  \clef treble
  \set Score.tempoHideNote = ##t
  \tempo "Allegro molto." 4 = 112
  
  | c'16 ^( df a bf g bf g' f f4. e8 )
  | c16 ^( df a bf g bf g' f f4. e8 )
  | c16 ( df a bf  g bf g' f  ds e bf' af  fs g df' c
  | a16 bf df' g,  c bf af g  f e g bf,  \tuplet 5/4 { b c df g, c }
  | bf16 a f gf d ef c' bf  
    <<
      { \voiceOne bf4. a8 ) }
      \new Voice { \voiceTwo r8 <c, ef> ^( q ) r }
    >>
  | f16 ( gf d ef c ef c' bf  
    <<
      { \voiceOne bf4. a8 ) }
      \new Voice { \voiceTwo r8 <c, ef> ^( q ) r }
    >>
  \oneVoice
  | f16 ( gf d ef  c ef c' bf  gs a gf' f  d ef df' c
  | \tuplet 22/16 { bf16 [ a ef' e, f gf c, df f ef 
                    df c bf a c e, f gf c, f ef df ] }
  
  \barNumberCheck 9
  | c8 [ bf ] ) <f g bf df f> _^ r df''16 ( g, af a c bf af g
  | f16 e ) r8 <g, bf df e>_^ r af''16 ( bf, af' g e df bf g
  | e16 f ) r8 <f, c' f>_^ r c'''16 ( f, fs g \tuplet 5/4 { bf af f df c }
  | c16 b ) r8 <af, b d af'>_^ r
    \tuplet 17/16 { af'''32 ( d, ef e g f d b g af f d b g af f d }
  | b16 c f ef ) <c ef af c>8_^ r
    \tuplet 3/2 { <eff' eff'>8 ( <df df'> <c c'> } \tuplet 3/2 { q q q ) }
  | b,16 ( c f e ) <c e af c>8_^ r
    \tuplet 3/2 { <eff' eff'>8 ( <df df'> <c c'> } q16 q q q )
  | b,16 ( c g' f ) <c f af c>8_. r b16 ( c bf' af ) <c, ef af c>8_. r
  | <c ef af c>8^. <c' c'>^> <e, bf' df e>^. <df' df'>^>
    <f, af df f>^. <af' af'>^> <g, df' f g>^. <g' g'>^>
  
  \barNumberCheck 17
  | <cf,, cf'>8_. r \ottava 1 <f'' f'~> f'32 ( [ ef df af f ef df af
    \ottava 0 f ef df af f ef df \staffDown af f ef df af ] )
  | \tag #'layout { f2 \trill }
    \tag #'midi { \repeat unfold 2 { \tuplet 3/2 { f16 g f g f g } } }
    \omitTuplet \tuplet 3/2 4 { e16^. [ f^. df'^. ] c^. [ g^. cf^. ]
    gf^. [ bf^. f^. ] a^. [ f^. af^. ] }
  | c,4^. \staffUp r r2
  | r2 c''2
  \set PianoStaff.connectArpeggios = ##t
  \override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
  | c1 \arpeggio \fermata |
  
  \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  
  | r2
    <<
      { r8 <g bf> ( q ) r  }
      \\
      { r8 <c,, df'> q r }
    >>
  | r2
    <<
      { r8 <g'' bf> ( q ) r  }
      \\
      { r8 <c,, df'> q r }
    >>
  | r2 r8 bf''16 ( af fs g df' c
  | a16 bf \clef treble df' g,  c bf af g  f e g bf,  
    \clef bass \tuplet 5/4 { b c df g, c }
  | bf16 a ) r8 r4 r8 <f, gf'> q r
  | r2 r8 <f gf'> q r
  | r4 r8 c''16 ( bf gs a \clef treble gf' f d ef df' c
  | \tuplet 22/16 { bf16 [ a ef' e, f gf c, df f ef \clef bass
                    df c bf a c e, f gf c, f ef df ] }
  
  \barNumberCheck 9
  | c8 [ bf ] ) <bf, bf'>_^ r df''16 ( g, af a c bf af g
  | f16 e ) r8 <bf, bf'>_^ r  \clef treble af'''16 ( bf, af' g e df bf g
  | \clef bass e16 f ) r8 <af,, af'>_^ r \clef treble c'''16 ( f, fs g 
    \tuplet 5/4 { bf af f df c }
  | c16 b ) r8 \clef bass <f,, f'>_^ r \clef treble
    \tuplet 17/16 { af''''32 ( d, ef e g f d b g af f d \clef bass b g af f d }
  | b16 c f ef ) <ef, af ef'>8_^ r
    \tuplet 3/2 { <eff' eff'>8 ( <df df'> <c c'> } \tuplet 3/2 { q q q ) }
  | b16 c f e <e, c' e>8_^ r 
    \tuplet 3/2 { <eff' eff'>8 ( <df df'> <c c'> } q16 q q q )
  | b16 ( c g' f ) <f, c' af'>8_. r b16 ( c bf' af ) <gf, af gf'>8_. r
  | <gf af gf'>8^. <c c'>^> <g g'>^. <df' df'>^>
    <af df af'>^. <af' af'>^> <bf, df bf'>^. <g' g'>^>
    
  \barNumberCheck 17
  | <cf,, cf'>8 r \clef treble <cf'' df f df'>4 \arpeggio \clef bass r2
  \voiceFour 
  | \tag #'layout { f,,,2 \trill }
    \tag #'midi { \repeat unfold 2 { \tuplet 3/2 { f16 g f g f g } } }
    \omitTuplet \tuplet 3/2 4 { e16^. [ f^. df'^. ] 
    c^. [ g^. cf^. ] gf^. [ bf^. f^. ] a^. [ f^. af^. ] }
  | c,4^. \oneVoice r r2
  | r2 
    <<
      { 
        \voiceFour <c' g'> | <f, f'>1 \fermata | 
      }
      \new Voice { 
        \voiceThree \crossStaff { <c'' g'>2 } | <c f af>1 \arpeggio |
      }
    >>
  
  \bar "|."
}

pedal = {
  | s2 s8 s \sd s \su s
  | s2 s8 s \sd s \su s
  | s1
  | s1
  | s2 s8 s \sd s \su s
  | s2 s8 s \sd s \su s
  | s1
  | s1
  
  \barNumberCheck 9
  | s4 s8 \sd s \su s2
  | s4 s8 \sd s \su s2
  | s4 s8 \sd s \su s2
  | s4 s8 \sd s \su s2
  | s4 s8 \sd s \su s4 s16 \sd s s s \su 
  | s4 s8 \sd s \su s4 s16 \sd s s s \su
  | s4 s8 \sd s \su s4 s8 \sd s \su
  | s8 \sd s \su s8 \sd s \su s8 \sd s \su s8 \sd s \su
  
  \barNumberCheck 17
  | s1 \sd
  | s2 <> \su s
  | s1
  | s2 s4 \sd s \su
  | s1 \sd |
}

dynamics = {
  | s2 \< s2 \>
  | s2 \< s2 \> 
  | s1 \< 
  | s1 \> 
  | s2 \< s2 \>
  | s2 \< s2 \> <> \!
  | s4 s2. \cresc
  | s4 s2. \!
  
  \barNumberCheck 9
  | s4 s \fz s2 \cresc
  | s4 s \fz s2 \>
  | s4 s \fz s2 \>
  | s4 s \fz s2 \> <> \!
  | s4 s \cresc s16 \> s s s \! s4
  | s2 s16 \> s s s \! s4
  | s1 \cresc
  | s1
  
  \barNumberCheck 17
  | s4 \ff s \> s2 \!
  | s1
  | s1
  | s4 s2. \fff
  | s1 |
}

#(set-global-staff-size 20)

\paper {
  ragged-last-bottom = ##f % set to false after editing 

  markup-system-spacing = 
    #'((basic-distance . 2)
       (padding . 1)) % defaults: 1, 0.5
    
  system-system-spacing =
    #'((basic-distance . 10) 
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 20)) % defaults: 12, 8, 1, 60
    
  % #(set-paper-size "letter") % for testing only
  
  % Variables not affected by scaling of paper size 
  top-margin = 12\mm % default 5
  bottom-margin = 8\mm % default 6
}

% Typeset only, no MIDI
\score {
  \keepWithTag #'layout
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"XVIII"
    \new Staff = "upper" \rightHand
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics = "pedal" \pedal 
  >>
  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
    \context {
      \PianoStaff
      \consists #Span_stem_engraver
    }
  }
}

% MIDI Only
\score {
  \keepWithTag #'midi
  <<
    \new Staff = "upper" << \rightHand \pedal \dynamics >>
    \new Staff = "lower" << \leftHand \pedal \dynamics >>
  >>
  \midi {
  }
}
