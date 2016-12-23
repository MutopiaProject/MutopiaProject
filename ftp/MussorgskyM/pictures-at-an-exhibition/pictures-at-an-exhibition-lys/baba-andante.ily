%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.18.2"
\language "english"

leggiero = \markup { \large \italic "leggiero" }
ms = \markup { \large \italic "m.s." }
ten = \markup { \large \italic "ten." }
nonLegato = \markup { \large \italic "non legato" }
marc = \markup { \large \italic "marcato" }
markupFermata = \markup { \musicglyph #"scripts.dfermata" }

adjustMs = {
  \once \override TextScript.X-offset = #-3.5
  \once \override TextScript.Y-offset = #5
}
adjustFermata = {
  \once \override TextScript.X-offset = #-1
  \once \override TextScript.Y-offset = #-2
}
beamGap = \override Beam.gap-count = #4
omitDynamics = \once \omit Staff.DynamicText
noDash = \override DynamicTextSpanner.dash-period = #-1.0

#(define (myDynamics dynamic)
    (if (equal? dynamic "sf")
      0.90
      (default-dynamic-absolute-volume dynamic)))

globalAndante = {
  \omit TupletNumber
  \override TupletBracket.bracket-visibility = ##f
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'(3 3 3 3)
}

upperAndante = \relative c'' {
  \set Score.tempoHideNote = ##t
  \tempo "Andate mosso." 4 = 72
  \time 4/4
  
  | \tuplet 3/2 8 { 
    g16 ( \p e g e g e  g e g e g e  g e g e g e  g e g e g e ) 
  }
  
  | \tuplet 3/2 8 { g16 ( e g e g e  g e g e g e  g e g e g e  g e g e g e ) }
  | \tuplet 3/2 8 { g16 ( e g e g e  g e g e g e  g e g e g e  g e g e g e ) }
  | \tuplet 3/2 8 { g16 ( e g e g e  g e g e g e  g e g e g e  g e g e g e ) }
  \bar "||"
  \time 2/4
  | \tuplet 3/2 8 { g16 ( e g e g e  g e g e g e ) } 
  \bar "||"
  \time 4/4
  | \tuplet 3/2 8 { 
    fs16 ( ds fs ds fs ds  fs ds fs ds fs ds  
    fs ds fs ds fs ds  fs ds fs ds fs ds ) 
  }
  | \tuplet 3/2 8 { 
    fs16 ( ds fs ds fs ds  fs ds fs ds fs ds  
    fs ds fs ds fs ds  fs ds fs ds fs ds ) 
  } 
  | \tuplet 3/2 8 { f!16 ( d! f d f d  f d f d f d  f d f d f d  f d f d f d ) }
  \bar "||"
  \time 2/4
  | \tuplet 3/2 8 { f16 ( d f d f d  f d f d f d ) }
  \bar "||"
  
  \barNumberCheck #104
  \time 4/4
  | \tuplet 3/2 8 { e16 ( cs e cs e cs )  ds ( b ds b ds b ) }
    <a' a'>4 ( <e' e'>8 ) r 
  | \tuplet 3/2 8 { b,16 ( gs b gs b gs )  bf ( g bf g bf g ) }
    <a' a'>4 ( <e' e'>8 ) r
  | \tuplet 3/2 8 { g,,16 ( ef g ef g ef )  fs ( d fs d fs d ) }
    <a'' a'>4 ( <e' e'>8 ) r
  \bar "||"
  \time 2/4
  | r4 \tuplet 3/2 8 { g,16 ( ds g ds g ds ) } 
  \bar "||"
  \time 4/4
  | 
  << 
    { r2 \adjustMs <as' e' g>8 ^\ms <as' e' g> r4 } 
    \\ 
    { 
      \tag #'layout { \repeat tremolo 32 { g,64 e } }
      \tag #'midi   { \repeat tremolo 16 { g32 e } }
    } 
  >>
  | 
  << 
    { r2 \adjustMs <as e' g>8 ^\ms <as' e' g> r4 } 
    \\ 
    { 
      \tag #'layout { \repeat tremolo 32 { g,64 e } }
      \tag #'midi   { \repeat tremolo 16 { g32 e } }
    } 
  >>
  | 
  << { R1 } 
     \\ 
    { 
      \tag #'layout { \repeat tremolo 32 { g64 e } }
      \tag #'midi   { \repeat tremolo 16 { g32 e } }
    }  
  >>
  \bar "||"
  \time 2/4
  | 
  << { R2 } 
     \\ 
     { 
       \beamGap
       \tag #'layout { \repeat tremolo 16 { g64 e } }
       \tag #'midi   { \repeat tremolo 8  { g32 e } }
     } 
  >>
  \bar "||"
  \time 4/4
  
  \barNumberCheck #112
  | 
  << 
    { r2 \adjustMs <as e' g>8 ^\ms <as' e' g> r4 } 
    \\ 
    { 
      \beamGap 
      \tag #'layout { \repeat tremolo 16 { fs,64 ds } \repeat tremolo 16 { g64 e } }
      \tag #'midi   { \repeat tremolo 8  { fs32  ds } \repeat tremolo 8  { g32 e } }
    } 
  >>
  | 
  << 
    { r2 \adjustMs <as e' g>8 ^\ms <as' e' g> r4 } 
    \\ 
    { 
      \beamGap 
      \tag #'layout { \repeat tremolo 16 { fs,64 ds } \repeat tremolo 16 { g64 e } }
      \tag #'midi   { \repeat tremolo 8  { fs32  ds } \repeat tremolo 8  { g32 e } }
    }
  >>
  | \tag #'layout { \repeat tremolo 32 { f64 d } }
    \tag #'midi   { \repeat tremolo 16 { f32 d } }
  \bar "||"
  \time 2/4
  | \beamGap 
    \tag #'layout { \repeat tremolo 16 { f64 d } }
    \tag #'midi   { \repeat tremolo 8 { f32 d } }
  \bar "||"
  \clef bass
  | \tag #'layout { \repeat tremolo 8 { e64 \< cs }     \repeat tremolo 8 { ds b }
                    \repeat tremolo 8 { d bf }          \repeat tremolo 8 { c a } }
    \tag #'midi   { \repeat tremolo 4 { e'32 \< cs }    \repeat tremolo 4 { ds b }
                    \repeat tremolo 4 { d bf }          \repeat tremolo 4 { c a } }
  | \tag #'layout { \repeat tremolo 8 { b64 gs }        \repeat tremolo 8 { bf g }
                    \repeat tremolo 8 { a f }           \repeat tremolo 8 { gs e \! } }
    \tag #'midi   { \repeat tremolo 4 { b'32 gs }       \repeat tremolo 4 { bf g }
                    \repeat tremolo 4 { a f }           \repeat tremolo 4 { gs e } }
  | \tag #'layout { \repeat tremolo 8 { g64 \> ef }     \repeat tremolo 8 { fs d }
                    \repeat tremolo 8 { f cs }          \repeat tremolo 8 { e c \! } }
    \tag #'midi   { \repeat tremolo 4 { g'32 \f \> ef } \repeat tremolo 4 { fs d }
                    \repeat tremolo 4 { f cs }          \repeat tremolo 4 { e c \p } }
  | r2 r4 r8. \clef treble <e' e'>16 \<
  
  \barNumberCheck #120
  | \tag #'layout { <e' e'>4 \sf ~ q8 r8 r4 r8. <e, e'>16 \< }
    \tag #'midi   { <e' e'>4 -> \f ~ q8 \mf r8 r4 r8. <e, e'>16 \p \< }
  | <e' e'>4 \sf ~ q8 r8 r2
  | R1 \fermataMarkup
  \break
  \bar "||"
}

lowerAntante = \relative c' {
  | R1
  | <as as,>4 _\nonLegato <e e,>2 r4
  | <as as,>8 q <e e,>2 r4
  | <as as,>8 [ <d d,> <c c,> <d d,> ] <as as,>4 <c c,>8 <as as,>
  \time 2/4
  | <d d,>4 <c c,>8 [ <as as,> ]
  \time 4/4
  | <b b,>4 <e, e,>2 r4
  | <b' b,>8 q <e, e,>2 r4
  | <gs gs,>8 [ <c c,> <b b,> <c c,> ] <gs gs,>4 <a a,>8 <gs gs,>
  \time 2/4
  | <c c,>4 <b b,>8 [ <gs gs,> ]
  
  \barNumberCheck #104
  \time 4/4
  | <a a,>4 ( <e e,>8 ) r 
    \tuplet 3/2 8 { d'16 ( _\leggiero bf d bf d bf )  c ( a c a c a ) }
  | a,4 ( e8 ) r \tuplet 3/2 8 { a'16 ( f a f a f )  gs ( e gs e gs e ) }
  | a,4 ( e8 ) r \tuplet 3/2 8 { f'16 ( cs f cs f cs )  e ( c e c e c ) }
  \time 2/4
  | \tuplet 3/2 8 { ds16 ( b ds b ds b ) } r4 
  \time 4/4
  | <as as'>4 _\nonLegato <e e'>2 ^\ten \sustainOn 
    \tag #'layout { r4 }
    \tag #'midi   { r4 \sustainOff }
  | <as as'>8 q <e e'>2 ^\ten r4
  | <as as'>8 [ <d d'> <c c'> <d d'> ] <as as'>4 <c c'>8 <as as'>
  \time 2/4
  | <d d'>4 <c c'>8 [ <as as'> ]
  
  \barNumberCheck #112
  \time 4/4
  | <b b'>4 <e, e'>2 ^\ten \sustainOn 
    \tag #'layout { r4 }
    \tag #'midi   { r4 \sustainOff }
  | <b' b'>8 q <e, e'>2 ^\ten \sustainOn 
    \tag #'layout { r4 }
    \tag #'midi   { r4 \sustainOff }  
  | <gs gs'>8 [ <c c'> <b b'> <c c'> ] <gs gs'>4 <a a'>8 <gs gs'>
  \time 2/4
  | <c c'>4 <b b'>8 [ <gs gs'> ]
  \time 4/4
  | a2 _\marc e2
  | a,1
  | e1
  | \tag #'layout { \repeat tremolo 8 { <gs'' e>64 \p _\< c }  
                    \repeat tremolo 8 { <g ds> b }
                    \repeat tremolo 8 { <f d> _\> bf } 
                    \repeat tremolo 8 { <e, c> a } }
    \tag #'midi   { \repeat tremolo 4 { <gs e>32 \p _\< c }  
                    \repeat tremolo 4 { <g ds> b }
                    \repeat tremolo 4 { <f d> \f _\> bf } 
                    \repeat tremolo 4 { <e, c> a } }
    
  \barNumberCheck #120
  | \tag #'layout { \repeat tremolo 8 { <gs e>64 _\<  c }  
                    \repeat tremolo 8 { <g ds> b }
                    \repeat tremolo 8 { <f d> _\> bf } 
                    \repeat tremolo 8 { <e, c> a } }
    \tag #'midi   { \repeat tremolo 4 { <gs e>32 \p _\<  c }  
                    \repeat tremolo 4 { <g ds> b }
                    \repeat tremolo 4 { <f d> \f _\> bf } 
                    \repeat tremolo 4 { <e, c> a } }
  | \tag #'layout { \repeat tremolo 8 { <gs, e>64 _\pp c }  
                    \repeat tremolo 8 { <g ds> b }
                    \repeat tremolo 8 { \noDash <f d> ^\dim bf } 
                    \repeat tremolo 8 { <e, c> a } }
    \tag #'midi   { \repeat tremolo 4 { <gs e>32 _\pp c }  
                    \repeat tremolo 4 { <g ds> b }
                    \repeat tremolo 4 { <f d> ^\dim bf } 
                    \repeat tremolo 4 { <e, c> a } }
  | \tag #'layout { 
      \repeat tremolo 32 { <ds, b>64 ^\ppp \adjustFermata g _\markupFermata } }
    \tag #'midi { 
      \repeat tremolo 16 { <ds b>32 ^\ppp g } }
}
