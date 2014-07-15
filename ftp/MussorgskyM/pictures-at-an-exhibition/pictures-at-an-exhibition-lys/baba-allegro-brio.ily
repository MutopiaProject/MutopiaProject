%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.18.2"
\language "english"

sfcrescsf = #(make-dynamic-script #{ 
  \markup { \dynamic "sf" \normal-text { \italic "cresc." } \dynamic "sf" } 
#} )

cres = \markup { \large { \italic "cresc." } }

forceShiftOn = \override NoteColumn.force-hshift = #1.2
forceShiftOff = \override NoteColumn.force-hshift = #0
adjustSf = \once \override DynamicText.X-offset = #-1.8
adjustSfTwo = \once \override DynamicText.X-offset = #0.7
adjustSlur = \shape #'((0 . 0) (0 . 0) (0 . 0.5) (0 . 0.5)) Slur

su = \change Staff = "up"
sd = \change Staff = "down"

upperAllegroBrio = \relative c' {
  \set Score.tempoHideNote = ##t
  \tempo "Allegro con brio feroce" 4 = 144
  
  | <fs fs,>4 \ff g,
  | R2
  | <fs' fs,>8 q g,4
  | R2
  | <f' f,>4 af,8 ( \sf g )
  | R2
  | <f' f,>8 q af,8 ( \sf g )
  
  \barNumberCheck #8
  | af8 ( \sf g ) r4
  | g4 \f g
  | << { g8 af g f' } \\ { \forceShiftOn g,4 \sf g \sf } >>
  | g4 g 
  | << { g8 af g df' } \\ { \forceShiftOn g,4 \sf g \sf } >>
  | << { g8 af g f' } \\ { \forceShiftOn g,4 g } >>
  | << { g8 af g df' } \\ { \forceShiftOn g,4 g } >>
  | \adjustSf g4 \sfcrescsf g 
  
  \barNumberCheck #16
  | g4 \sf g \sf
  | << { g8 [ \sf c af-^ \sf df ] } \\ { s4 af8 r } >>
  | << { a8 [ d bf-^ \sf ef ] } \\ { s4 bf8 r } >> 
  | << { g8 [ _\cres c af-^ \sf df ] } \\ { s4 af8 r } >>
  | << { a8-^ [ \sf d bf-^ \sf ef ] } \\ { a,8 r bf r } >>
  | << { g8 [ \mf \cresc c \adjustSfTwo af-^ \sf df ] } \\ { s4 af8 r } >>
  | << { a8 [ d bf-^ \sf ef ] } \\ { s4 bf8 r } >> 
  | << { g8 [ c af-^ \sf df ] } \\ { s4 af8 r } >>
  
  \barNumberCheck #24
  | << { a8-^ [ \sf d bf-^ \sf ef ] } \\ { a,8 r bf r } >> 
  | \acciaccatura { \slurUp f'''8 } <e c e,>8 \ff r 
    \acciaccatura { \slurUp ef8 } <df af f> r
  | \acciaccatura { \slurUp d8 } <c fs, d>8 r 
    \acciaccatura { \slurUp c8 } <bf g bf,> r
  | \acciaccatura { \slurUp f8 } <e c e,>8 r 
    \acciaccatura { \slurUp ef8 } <df af f> r
  | \acciaccatura { \slurUp d8 } <c fs, d>8 r 
    \acciaccatura { \slurUp c8 } <bf g bf,> r
  \clef bass
  | \acciaccatura { \slurUp f8 } <e c e,>8 r 
    \acciaccatura { \slurUp ef8 } <df af f> r
  | \acciaccatura { \slurUp d8 } <c fs, d>8 r 
    \acciaccatura { \slurUp c8 } <bf g bf,> r
  \clef treble
  | << { g8-^ [ \sf c af-^ \sf df ] } \\ { g,8 r af r } >>
  
  \barNumberCheck #32
  | << { a8-^ [ \sf d bf-^ \sf ef ] } \\ { a,8 r bf r } >>
  | <c e g c>8 r <g' c e g>4
  | <g c e g>4 q
  | \acciaccatura { \slurUp <af af'>8 } <g g'>8 r <c, e g c>4
  | <d f af d>4 ~ q8 r 
  | <c e g c>8 r <g' c e g>4
  | <g c e g>4 q
  | \acciaccatura { \slurUp <a a'>8 } <g g'>8 r <c, e g c>4
  
  \barNumberCheck #40
  | <d fs a d>4 ~ q8 r
  | <a' ef' fs>8 \sf r <a ef' fs a>4
  | <a ef' fs a>4 q
  | <g' bf ef g>8 [ \sf <d d'> <ef ef'> <bf bf'> ]
  | <g' bf ef g>8 [ <d d'> <ef ef'> <bf bf'> ] 
  | <a ef' fs>8 \sf r <a ef' fs a>4
  | <a ef' fs a>4 q
  | <bf' ef g bf>8 \sf r <bf bf'> <f f'>
  
  \barNumberCheck #48
  | <g bf ef g>8 [ <ef ef'> <d d'> <bf bf'> ]
  | <b ds a' b>8 \sf r <ds fs b ds>4
  | <ds fs b ds>4 q
  | <g c e g>8 [ \sf <d d'> <e e'> <c c'> ]
  | <g' c e g>8 [ <d d'> <e e'> <c c'> ] 
  | <b ds a' b>8 \sf r <ds fs b ds>4
  | <ds fs b ds>4 q
  | \ottava #1 <c' e g c>8 \sf r <c c'> <g g'> \ottava #0
  
  \barNumberCheck #56
  | <a c e a>8 [ <f f'> <e e'> <c c'> ]
  | <g g,>8 r \ottava #1 <g'' g'>8 ( <d d'> )
  | <ef ef'>8 ( [ <d d'> <bf bf'> <g g'> ] )
  | <af af'>8 ( [ <ef' ef'> ) <b b'> ( <ef ef'> ] ) 
  | <d d'>8 r <g, g'> r \ottava #0
  | <g g'>4 <g g'>8 ( <d d'> )
  | <ef ef'>8 ( [ <d d'> <bf bf'> <g g'> ] )
  | <af af'>8 ( [ <ef' ef'> ) <b b'> ( <ef ef'> ] )
  
  \barNumberCheck #64
  | <d d'>8 r <g, g'> r 
  | <g g'>4 <g g'>8 <d d'> 
  | <ef ef'>8 [ <d d'> <bf bf'> <g g'> ] 
  | << { r4 <g' g'>8 <d d'> } \\ { fs,4._^ \sf r8 } >>
  | <ef' ef'>8 [ <d d'> <bf bf'> <g g'> ]
  | << { r4 <g' g'>8 <d d'> } \\ { f,4._^ \sf r8 } >>
  | <ef' ef'>8 [ <d d'> <bf bf'> <g g'> ]
  | << { r4 <g' g'>8 <d d'> } \\ { e,4._^ \sf r8 } >>
  
  \barNumberCheck #72
  | <ef' ef'>8 [ <d d'> <bf bf'> <g g'> ]
  | ef4 ( d8 ) r 
  | << { \adjustSlur <b' b'>4 ( <af'' af'>8 ) } \\ { <b,, b'>4. } >> r8
  | \ottava #1 \sd g'''16 \su g' \sd d, \su d' \sd ef, \su ef' \sd b, \su b'
  | \sd c,16 \su c' \sd g, \su g' \sd af, \su af' \sd d,, \su d'
  | \ottava #0 \sd ef,16 \su ef' \sd b, \su b' \sd c, \su c' \sd g, \su g'
  | \sd af,16 \su af' \sd d,, \su d' \sd \clef bass ef, \su ef' \sd b, \su b' 
  | \sd c,16 \su c' \sd g, \su g' \sd af, \su af' \sd d,, \su d' 
  
  \clef bass
  | \sd ef,16 \su ef' \sd b, \su b' \sd c, \su c' \sd g, \su g' 
  | \sd af, \su af' \sd d,, \su d' \sd ef, \su ef' \sd b, \su b' 
  | \sd c,16 \su c' \sd g, \su g' \sd af, \su af' \sd g, \su g'
  | \sd af, \su af' \sd g, \su g' \sd b, \su b' \sd g, \su g'
  | \sd af, \su af' \sd g, \su g' \sd b, \su b' \sd g, \su g' 
  \clef treble
  | af'4 af
  | <g' g'>4 q
  | af,4 af

  \barNumberCheck #88  
  | <g' g'>4 q
  | af,2
  | <g' g'>2
  | af,2
  | <g' g'>2
  | g4 g
  | g4 g 
  \break
}

lowerAllegroBrio = \relative c, {
  | fs4 <g g,>
  | R2
  | fs8 fs8 <g g,>4
  | R2
  | f4 <af af,>8 ( <g g,> )
  | R2
  | f8 f <af af,>8 ( <g g,> )
  
  \barNumberCheck #8
  | <af af,>8 ( <g g,> ) r4
  | <g g,>4 q
  | << { g8 af g f' } \\ { g,,8 r \forceShiftOn g'4 } >>
  | <g g,>4 q
  | << { g8 af g df' } \\ { g,,8 r \forceShiftOn g'4 } >>
  | << { g8 af g f' } \\ { \forceShiftOff g,,8 r \forceShiftOn g'4 } >>
  | << { g8 af g df' } \\ { \forceShiftOff g,,8 r \forceShiftOn g'4 } >>
  | <g g,>4 q
  
  \barNumberCheck #16
  | <g g,>4 q
  | << { <g g,>8 [ <c c,> <af af,>-^ <df df,> ] } \\ { s4 af,8 r } >>
  | << { <a' a,>8 [ <d d,> <bf bf,>-^ <ef ef,> ] } \\ { s4 bf,8 r } >>
  | << { <g' g,>8 [ <c c,> <af af,>-^ <df df,> ] } \\ { s4 af,8 r } >>
  | << { <a' a,>8-^ [ <d d,> <bf bf,>-^ <ef ef,> ] } \\ { a,,8 r bf8 r } >>
  | << { <g' g,>8 [ <c c,> <af af,>-^ <df df,> ] } \\ { s4 af,8 r } >>
  | << { <a' a,>8 [ <d d,> <bf bf,>-^ <ef ef,> ] } \\ { s4 bf,8 r } >>
  | << { <g' g,>8 [ <c c,> <af af,>-^ <df df,> ] } \\ { s4 af,8 r } >>
  
  \barNumberCheck #24
  | << { <a' a,>8-^ [ <d d,> <bf bf,>-^ <ef ef,> ] } \\ { a,,8 r bf8 r } >> 
  | <g' g,>8 [ <c c,> <af af,> <df df,> ]
  | <a a,>8 [ <d d,> <bf bf,> <ef ef,> ]
  | <g, g,>8 [ <c c,> <af af,> <df df,> ]
  | <a a,>8 [ <d d,> <bf bf,> <ef ef,> ]
  | <g, g,>8 [ <c c,> <af af,> <df df,> ]
  | <a a,>8 [ <d d,> <bf bf,> <ef ef,> ]
  | << { <g, g,>8-^ [ <c c,> <af af,>-^ <df df,> ] } \\ { g,,8 r af r } >>
  
  \barNumberCheck #32
  | << { <a' a,>8-^ [ <d d,> <bf bf,>-^ <ef ef,> ] } \\ { a,,8 r bf r } >>
  | << { g'8 ( [ fs ) g ( fs ) ] } \\ { g,8 r g r } >> 
  | << { g'8 ( [ fs ) g ( fs ) ] } \\ { g,8 r g r } >>
  | << { g'8 ( [ fs ) g ( fs ) ] } \\ { g,8 r g r } >>
  | <c' c,>8 ( [ <bf bf,> <a a,> <af af,> ] )
  | << { g8 ( [ fs ) g ( fs ) ] } \\ { g,8 r g r } >> 
  | << { g'8 ( [ fs ) g ( fs ) ] } \\ { g,8 r g r } >>
  | << { g'8 ( [ fs ) g ( fs ) ] } \\ { g,8 r g r } >>
  
  \barNumberCheck #40
  | <c' c,>8 ( [ <b b,> <bf bf,> <a a,> ] )
  | << { fs''2 ~ | fs2 } \\ { r4 <c c,> | <c, c,> <c' c,> } >>
  | << { bf'2 ~ | bf2 } \\ { r4 <g, g,> | <g, g,> <g' g,> } >>
  | << { fs'2 ~ | fs2 } \\ { r4 <c c,> | <c, c,> <c' c,> } >>
  | << { bf'2 ~ | bf2 } \\ { r4 <g, g,> | <g, g,> <g' g,> } >> % bar #48
  | << { fs'2 ~ | fs2 } \\ { r4 <a, a,> | <a, a,> <a' a,> } >>
  | << { bf'2 ~ | bf2 } \\ { r4 <e,, e,> | <e, e,> <e' e,> } >> 
  | << { fs'2 ~ | fs2 } \\ { r4 <a, a,> | <a, a,> <a' a,> } >>
  | << { c'2 ~ | c2 } \\ { r4 <e,, e,> | <e, e,> <e' e,> } >> % bar #56
  | <g, g,>8 r \clef treble g''' ( d )
  | ef8 ( [ d bf g ] )
  | af8 ( [ ef' ) b ( ef ] )
  | d8 r g, r
  \clef bass
  | <g, g'>4 <g g'>8 ( <d d'> )
  | <ef ef'>8 ( [ <d d'> <bf bf'> <g g'> ] )
  | <af af'>8 ( [ <ef' ef'> ) <b b'> ( <ef ef'> ] )
  
  \barNumberCheck #64
  | <d d'>8 r <g, g'> r 
  | <g g'>4 <g g'>8 <d d'> 
  | <ef ef'>8 [ <d d'> <bf bf'> <g g'> ]
  | << { r4 <g' g'>8 <d d'> } \\ { <fs fs,>4.-^ r8 } >>
  | <ef ef'>8 [ <d d'> <bf bf'> <g g'> ]
  | << { r4 <g' g'>8 <d d'> } \\ { <f f,>4.-^ r8 } >>
  | <ef ef'>8 [ <d d'> <bf bf'> <g g'> ]
  | << { r4 <g' g'>8 <d d'> } \\ { <e e,>4.-^ r8 } >>
  | <ef ef'>8 [ <d d'> <bf bf'> <g g'> ]
  | <ef ef'>4 ( <d d'>8 ) r
  | << { \adjustSlur <b' b'>4 ( <af'' af'>8 ) } \\ { <b,, b'>4. } >> r8
  \clef treble
  | s2 * 5
  
  \barNumberCheck #80
  | s2 * 5
  | <af af'>4 q
  | <g' g'>4 q
  | <af, af'>4 q

  \barNumberCheck #88  
  | <g' g'>4 q
  | <af, af'>2
  | <g' g'>2
  | <af, af'>2
  | <g' g'>2
  | R2
  | R2
}

globalAllegroBrio = {
  \time 2/4
  \accidentalStyle piano
}