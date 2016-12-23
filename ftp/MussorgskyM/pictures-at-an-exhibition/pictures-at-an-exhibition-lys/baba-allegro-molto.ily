%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.18.2"
\language "english"

sfcrescsf = #(make-dynamic-script #{ 
  \markup { \dynamic "sf" \normal-text { \italic "cresc." } \dynamic "sf" } 
#} )
mfcresc = #(make-dynamic-script #{ 
  \markup { \dynamic "mf" \normal-text { \italic "cresc." } } 
#} )
cres = \markup { \large \italic "cresc." }
pocorit = \markup { \large \italic "poco ritardando" }
attacca = \markup { \large \italic "attacca" }

forceShiftOn = \override NoteColumn.force-hshift = #1.2
forceShiftOff = \override NoteColumn.force-hshift = #0
adjustSf = \once \override DynamicText.X-offset = #-1.8
adjustSfTwo = \once \override DynamicText.X-offset = #0.7
adjustSlur = \shape #'((0 . 0) (0 . 0) (0 . 0.5) (0 . 0.5)) Slur

su = \change Staff = "up"
sd = \change Staff = "down"
omitDynamics = \once \omit Staff.DynamicText

upperAllegroMolto = \relative c' {
  \set Score.tempoHideNote = ##t
  \tempo "Allegro molto" 4 = 144
  
  | g4 \f r
  | R2
  | g4 g
  | R2
  | g4 g
  
  \barNumberCheck #128
  | << { g8 [ af g f' ] } \\ { \forceShiftOn g,4 \sf g \sf } >>
  | g4 g 
  | << { g8 [ af g df' ] } \\ { \forceShiftOn g,4 \sf g \sf } >>
  | g4 _\cres \sf g \sf
  | g4 \sf g \sf
  | << { g8 [ _\cres \mf c af-^ \sf df ] } \\ { s4 af8 r } >>
  | << { a8 [ d bf-^ \sf ef ] } \\ { s4 bf8 r } >> 
  | << { g8 [ c af-^ \sf df ] } \\ { s4 af8 r } >>
  
  \barNumberCheck #136
  | << { a8-^ [ \sf d bf-^ \sf ef ] } \\ { a,8 r bf r } >>
  | \acciaccatura { \slurUp f'''8 } <e c e,>8 \ff r 
    \acciaccatura { \slurUp ef8 } <df af f> r
  | \acciaccatura { \slurUp d8 } <c fs, d>8 r 
    \acciaccatura { \slurUp c8 } <bf g bf,> r
  | \acciaccatura { \slurUp f8 } <e c e,>8 r 
    \acciaccatura { \slurUp ef8 } <df af f> r
  | \acciaccatura { \slurUp d8 } <c fs, d>8 r 
    \acciaccatura { \slurUp c8 } <bf g bf,> r
  | << { g,8 [ c af-^ \sf df ] } \\ { s4 af8 r } >>
  | << { a8 [ d bf-^ \sf ef ] } \\ { s4 bf8 r } >> 
  | << { g8 [ c af-^ \sf df ] } \\ { s4 af8 r } >>
  
  \barNumberCheck #144
  | << { a8-^ [ \sf d bf-^ \sf ef ] } \\ { a,8 r bf r } >>
  | <c e g c>8 r <g' c e g>4
  | <g c e g>4 q
  | \acciaccatura { \slurUp <af af'>8 } <g g'>8 r <c, e g c>4
  | <d f af d>4 ~ q8 r 
  | <c e g c>8 r <g' c e g>4
  | <g c e g>4 q
  | \acciaccatura { \slurUp <a! a'!>8 } <g g'>8 r <c, e g c>4
  
  \barNumberCheck #152
  | <d fs a d>4 ~ q8 r
  | <a' ef' fs>8 \sf r <a ef' fs a>4
  | <a ef' fs a>4 q
  | <bf' ef g bf>8 [ \sf <d, d'> <ef ef'> <bf bf'> ]
  | <g' bf ef g>8 [ <d d'> <ef ef'> <bf bf'> ] 
  | <a ef' fs>8 \sf r <a ef' fs a>4
  | <a ef' fs a>4 q
  | <bf' ef g bf>8 \sf r <bf bf'> [ <f f'> ]
  
  \barNumberCheck #160
  | <g bf ef g>8 [ <ef ef'> <d d'> <bf bf'> ]
  | <b ds a' b>8 \sf r <ds fs b ds>4
  | <ds fs b ds>4 q
  | <g c e g>8 [ \sf <d d'> <e e'> <c c'> ]
  | <g' c e g>8 [ <d d'> <e e'> <c c'> ] 
  | <b ds a' b>8 \sf r <ds fs b ds>4
  | <ds fs b ds>4 q
  | \ottava #1 <c' e g c>8 \sf r <c c'> [ <g g'> ] \ottava #0
  
  \barNumberCheck #168
  | <a c e a>8 [ <f f'> <e e'> <c c'> ]
  | <g g,>8 r \ottava #1 <g'' g'>8 ( [ <d d'> ] )
  | <ef ef'>8 ( [ <d d'> <bf bf'> <g g'> ] )
  | <af af'>8 ( [ <ef' ef'> ) <b b'> ( <ef ef'> ] ) 
  | <d d'>8 r <g, g'> r \ottava #0
  | <g g'>4 <g g'>8 ( [ <d d'> ] )
  | <ef ef'>8 ( [ <d d'> <bf bf'> <g g'> ] )
  | <af af'>8 ( [ <ef' ef'> ) <b b'> ( <ef ef'> ] )
  
  \barNumberCheck #176
  | <d d'>8 r <g, g'> r 
  | <g g'>4 <g g'>8 [ <d d'> ]
  | <ef ef'>8 [ <d d'> <bf bf'> <g g'> ] 
  | << { r4 <g' g'>8 <d d'> } \\ { fs,4._^ \sf r8 } >>
  | <ef' ef'>8 [ <d d'> <bf bf'> <g g'> ]
  | << { r4 <g' g'>8 <d d'> } \\ { f,4._^ \sf r8 } >>
  | <ef' ef'>8 [ <d d'> <bf bf'> <g g'> ]
  | << { r4 <g' g'>8 <d d'> } \\ { e,4._^ \sf r8 } >>
  
  \barNumberCheck #184
  | <ef' ef'>8 [ <d d'> <bf bf'> <g g'> ]
  | ef4 ( d8 ) r 
  | << { \adjustSlur <b' b'>4 ( <af'' af'>8 ) } \\ { <b,, b'>4. } >> r8
  \ottava #1 
  | \sd \clef treble g'''16 \su g' \sd d, \su d' \sd ef, \su ef' \sd b, \su b'
  | \sd c,16 \su c' \sd g, \su g' \sd af, \su af' \sd d,, \su d'
  | \ottava #0 \sd ef,16 \su ef' \sd b, \su b' \sd c, \su c' \sd g, \su g'
  | \sd af,16 \su af' \sd d,, \su d' \sd \clef bass ef, \su ef' \sd b, \su b' 
  | \sd c,16 \su c' \sd g, \su g' \sd af, \su af' \sd d,, \su d' 
  
  \barNumberCheck #192
  \clef bass
  | \sd ef,16 \su ef' \sd b, \su b' \sd c, \su c' \sd g, \su g' 
  | \sd af, \su af' \sd d,, \su d' \sd ef, \su ef' \sd b, \su b' 
  | \sd c,16 \su c' \sd g, \su g' \sd af, \su af' \sd g, \su g'
  | \sd af, \su af' \sd g, \su g' \sd b, \su b' \sd g, \su g'
  | \sd af, \su af' \sd g, \su g' \sd b, \su b' \sd g, \su g' 
  | \sd af, \su af' \sd g, \su g' \sd af, \su af' \sd bf, \su bf' 
  | \sd b, \su b' \sd d, \su d' \sd ef, \su ef' \sd f, \su f'
  | \sd <g, g,> \su g' \sd <af, af,> \su af' 
    \sd <bf, bf,> \su bf' \sd <b, b,> \su b'
    
  \barNumberCheck #200  
  \clef treble
  | \sd <d, d,> \su d' \sd <ef, ef,> \su ef' 
    \sd <f, f,> \su f' \sd <g, g,> \su g'
  | \sd <af, af,> \su af' \sd <bf, bf,> \su bf' 
    \sd <b, b,> \su b' \sd <d, d,> \su d'
  | \sd \clef treble <ef, ef,> \su ef' \sd <f, f,> \su f' 
    \sd <g, g,> \su g' \sd <af, af,> \su af'
  | \sd <b, b,> \su b' \sd <d, d,> \su d' 
    \sd <ef, ef,> \su ef' \sd <f, f,> \su f'
  \ottava #1
  | \sd g,, \su <g' g'> \sd af, \su <af' af'> 
    \sd bf, \su <bf' bf'> \sd b, \su <b' b'>
  | \sd d, \su <d' d'> \sd ef, \su <ef' ef'> 
    \sd f, \su <f' f'> \sd g, \su <g' g'>
  | \sd ef, \su <ef' ef'> \sd f, \su <f' f'> 
    \sd b,, \su <b' b'> \sd d, \su <d' d'>
  | \sd ef, \su <ef' ef'> \sd f, \su <f' f'> 
    \sd b,, \su <b' b'> \sd d, \su <d' d'>
  
  \barNumberCheck #208
  | \sd <ef, ef,> \su <ef' ef'> \sd <f, f,> \su <f' f'>
    \sd <f,, f,> \su <f' f'> \sd <fs, fs,> \su <fs' fs'>
  | \sd <g, g,> \su <g' g'> ^\pocorit \sd <af, af,> \su <af' af'>
    \sd <a, a,> \su <a' a'> \sd <bf, bf,> \su <bf' bf'>
  | \sd <b, b,> \su <b' b'> \sd <c, c,> \su <c' c'>
    \sd <cs, cs,> \su <cs' cs'> \sd <d, d,> \su <d' d'>
  | \sd <ef, ef,> \su <ef' ef'> \sd <f, f,> \su <f' f'>
    \sd <fs, fs,> _\attacca \su <fs' fs'> \sd <g, g,> \su <g' g'>
  \bar "|."
}

lowerAllegroMolto = \relative c {
  | \omitDynamics <g g,>4 \f r
  | R2
  | <g g,>4 q
  | R2
  | <g g,>4 q
  
  \barNumberCheck #128
  | << { g8 [ af g f' ] } \\ { g,,8 r \forceShiftOn g'4 } >>
  | <g g,>4 q
  | << { g8 [ af g df' ] } \\ { g,,8 r \forceShiftOn g'4 } >>
  | <g g,>4 q
  | <g g,>4 q
  | << { <g g,>8 [ <c c,> <af af,>-^ <df df,> ] } \\ { s4 af,8 r } >>
  | << { <a' a,>8 [ <d d,> <bf bf,>-^ <ef ef,> ] } \\ { s4 bf,8 r } >>
  | << { <g' g,>8 [ <c c,> <af af,>-^ <df df,> ] } \\ { s4 af,8 r } >>
  
  \barNumberCheck #136
  | << { <a' a,>8-^ [ <d d,> <bf bf,>-^ <ef ef,> ] } \\ { a,,8 r bf8 r } >> 
  | <g' g,>8 [ <c c,> <af af,> <df df,> ]
  | <a a,>8 [ <d d,> <bf bf,> <ef ef,> ]
  | <g, g,>8 [ <c c,> <af af,> <df df,> ]
  | <a a,>8 [ <d d,> <bf bf,> <ef ef,> ]
  | << { <g, g,>8 [ <c c,> <af af,>-^ <df df,> ] } \\ { s4 af,8 r } >>
  | << { <a' a,>8 [ <d d,> <bf bf,>-^ <ef ef,> ] } \\ { s4 bf,8 r } >>
  | << { <g' g,>8 [ <c c,> <af af,>-^ <df df,> ] } \\ { s4 af,8 r } >>
  
  \barNumberCheck #144
  | << { <a' a,>8-^ [ <d d,> <bf bf,>-^ <ef ef,> ] } \\ { a,,8 r bf8 r } >>
  | << { g'8 ( [ fs ) g ( fs ) ] } \\ { g,8 r g r } >> 
  | << { g'8 ( [ fs ) g ( fs ) ] } \\ { g,8 r g r } >>
  | << { g'8 ( [ fs ) g ( fs ) ] } \\ { g,8 r g r } >>
  | <c' c,>8 ( [ <bf bf,> <a a,> <af af,> ] )
  | << { g8 ( [ fs ) g ( fs ) ] } \\ { g,8 r g r } >> 
  | << { g'8 ( [ fs ) g ( fs ) ] } \\ { g,8 r g r } >>
  | << { g'8 ( [ fs ) g ( fs ) ] } \\ { g,8 r g r } >>
  
  \barNumberCheck #152
  | <c' c,>8 ( [ <b b,> <bf bf,> <a a,> ] )
  | << { fs''2 ~ | fs2 } \\ { r4 <c c,> | <c, c,> <c' c,> } >>
  | << { bf'2 ~ | bf2 } \\ { r4 <g, g,> | <g, g,> <g' g,> } >>
  | << { fs'2 ~ | fs2 } \\ { r4 <c c,> | <c, c,> <c' c,> } >>
  | << { bf'2 ~ | bf2 } \\ { r4 <g, g,> | <g, g,> <g' g,> } >> % 160
  | << { fs'2 ~ | fs2 } \\ { r4 <a, a,> | <a, a,> <a' a,> } >>
  | << { bf'2 ~ | bf2 } \\ { r4 <e,, e,> | <e, e,> <e' e,> } >> 
  | << { fs'2 ~ | fs2 } \\ { r4 <a, a,> | <a, a,> <a' a,> } >> % 168
  | << { c'2 ~ | c2 } \\ { r4 <e,, e,> | <e, e,> <e' e,> } >>
  | <g, g,>8 r \clef treble g''' ( d )
  | ef8 ( [ d bf g ] )
  | af8 ( [ ef' ) b ( ef ] )
  | d8 r g, r
  \clef bass
  | <g, g'>4 <g g'>8 ( <d d'> )
  | <ef ef'>8 ( [ <d d'> <bf bf'> <g g'> ] )
  | <af af'>8 ( [ <ef' ef'> ) <b b'> ( <ef ef'> ] )
  
  \barNumberCheck #176
  | <d d'>8 r <g, g'> r 
  | <g g'>4 <g g'>8 <d d'> 
  | <ef ef'>8 [ <d d'> <bf bf'> <g g'> ]
  | << { r4 <g' g'>8 <d d'> } \\ { <fs fs,>4.-^ r8 } >>
  | <ef ef'>8 [ <d d'> <bf bf'> <g g'> ]
  | << { r4 <g' g'>8 <d d'> } \\ { <f f,>4.-^ r8 } >>
  | <ef ef'>8 [ <d d'> <bf bf'> <g g'> ]
  | << { r4 <g' g'>8 <d d'> } \\ { <e e,>4.-^ r8 } >>
  
  \barNumberCheck #184
  | <ef ef'>8 [ <d d'> <bf bf'> <g g'> ]
  | <ef ef'>4 ( <d d'>8 ) r
  | << { \adjustSlur <b' b'>4 ( <af'' af'>8 ) } \\ { <b,, b'>4. } >> r8
  | s2 * 25
}

globalAllegroMolto = {
  \time 2/4
  \accidentalStyle piano
  \revert Beam.gap-count
  \set subdivideBeams = ##f
  \set baseMoment = #(ly:make-moment 1/16)
  \set beatStructure = #'(4 4)  

}