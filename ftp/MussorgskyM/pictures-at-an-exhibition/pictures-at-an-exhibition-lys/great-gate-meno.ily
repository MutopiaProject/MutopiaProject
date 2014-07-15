%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.18.2"
\language "english"

simile = \markup { \large \italic "simile" }
pocoRal = \markup { \large \italic "poco a poco rallentando" }

tupletOff = {
  \omit TupletBracket
  \omit TupletNumber
}
tupletOn = {
  \undo \omit TupletBracket
  \undo \omit TupletNumber
}

noDash = \override DynamicTextSpanner.dash-period = #-1.0

menoUpper = \relative c'' {
  \tempo "Meno messo, sempre maestoso"
  
  \tupletUp
  | \tuplet 3/2 { <ef g bf ef>2 \ff <bf, ef> <ef' ef'> }
  | \tuplet 3/2 { <bf, ef>2 <ef' g bf ef> <bf, ef> }
  \tupletOff
  | \tuplet 3/2 { <f'' bf d f>2 _\simile <d, f> <f' f'> }
  | \tuplet 3/2 { <d, f>2 <f' bf d f> <d, f> }
  | \tuplet 3/2 { <g' bf ef g>2 <g, bf ef> <g' g'> }
  | \tuplet 3/2 { <ef g c ef>2 <ef, g c> <g' g'> }
  
  \barNumberCheck #120
  | \tuplet 3/2 { <f bf d f>2 <bf,, d> <d f> }
  | \tuplet 3/2 { <f bf>2 <bf d> <d f> }
  | <g, ef' g>2 <bf ef bf'>
  | <f bf f'>2 <ef bf' ef>
  \tupletOn
  | \tuplet 3/2 { <d bf' d>2 <bf d> <d g> }
  | \tuplet 3/2 { <f bf>2 <bf d> <d f> }
  | <g, ef' g>2 <bf ef bf'>
  | <f bf f'>2 <ef bf' ef>
  
  \barNumberCheck #128
  | \tuplet 3/2 { <d bf' d>2 <bf d> <d g> }
  | \tuplet 3/2 { <f af bf>2 <af bf d> <bf d f> }
  | \tuplet 3/2 { <ef af ef'>2 <ef,, af ef'> <ef'' af ef'> }
  | <d af' d>2 <bf ef bf'>
  | \tuplet 3/2 { <c ef c'>2 <ef,, af ef'> <c'' ef c'> }
  | <af ef' af>2 <c ef c'>
  | <bf ef bf'>2 <bf, ef bf'>
  | <af' bf af'>2 <g bf g'>
  
  \barNumberCheck #136
  | \tuplet 3/2 { <f c' ef f>2 \mf q q }
  | \tuplet 3/2 { <f c' ef f>2 q q } 
  \tupletOff
  | \tuplet 3/2 { <g bf d g>2 _\simile q q }
  | \tuplet 3/2 { <g bf d g>2 q q }
  | \tuplet 3/2 { <bf df g bf>2 q q }
  | \tuplet 3/2 { <af cf ef af>2 q q }
  | \tuplet 3/2 { <af ef' af>2 q q }
  | \tuplet 3/2 { <af eff' af>2 q q }
  
  \barNumberCheck #144
  | \tuplet 3/2 { <af df af'>2 \cresc q q }
  | \tuplet 3/2 { <aff df aff'>2 q q }
  | \tuplet 3/2 { <gf df' gf>2 q q }
  | \tuplet 3/2 { <f c' f>2 q <f ef' f> }
  | \tuplet 3/2 { <f' bf ef f>2 \f <f, bf ef f> <f' bf ef f> }
  | \tuplet 3/2 { <f, af ef' f>2 <f' af ef' f> <f, af ef' f> }
  | \tuplet 3/2 { <f' bf ef f>2 <f, bf ef f> <f' bf ef f> }
  | \tuplet 3/2 { <f, cf' ef f>2 <f' cf' ef f> <f, cf' ef f> }
  
  \barNumberCheck #152
  | \tuplet 3/2 { <f' bf ef f>2 \cresc <f, bf ef f> <f' bf ef f> }
  | \tuplet 3/2 { <f, a ef' f>2 <f' a ef' f> <f, a ef' f> }
  | \tuplet 3/2 { <f' bf ef f>2 <f, bf ef f> <f' bf ef f> }
  | \tuplet 3/2 { <f, c' ef f>2 <f' c' ef f> <f, c' ef f> }
  \tupletOn
  | \tuplet 3/2 { <g' ef' g>1 ^\pocoRal <g, ef' g>2 ~ }
  | \tuplet 3/2 { q2 <g, ef' g>1 }
  | <cf ef gf cf>2 <df gf bf df>
  | \tuplet 3/2 { <g' ef' g>1 <g, ef' g>2 ~ }
  
  \barNumberCheck #160
  | \tuplet 3/2 { q2 <g, ef' g>1 }
  | <c ef g c>2 <d f bf d>
  \bar "||"
  \tempo "Grave, sempre allargando."
  \defaultTimeSignature
  \time 4/4
  | \acciaccatura { ef,8 } <ef ef' g bf ef>1 \ff \fermata
  | \acciaccatura { ef8 } <ef f' bf d f>1 \fermata
  | \acciaccatura { ef8 } <ef g' bf ef g>1 
  | <ef' g c ef>2 <g c ef g>
  | \acciaccatura { ef,8 } <ef f' bf d f>1
  | <bf' bf'>1-^
  
  \barNumberCheck #168
  | \acciaccatura { <c ef>8 } <af' c ef af>1 \fermata
  | \acciaccatura { <d, g>8 } <bf' d g bf>1 \fermata
  | <g' bf ef g>2 <ef, g bf>
  | <g' bf ef g>2 <ef, g bf>
  \clef bass
  | <ef, ef'>1-^ ~
  | q
  | ef2 ~ ef4 r \fermata
  \bar "|."
}

menoLower = \relative c, {
  \tupletUp
  | \tuplet 3/2 { <g bf ef g>2 <ef'' g> <g,, g'> }
  | \tuplet 3/2 { <ef'' g>2 <g,, bf ef g> <ef'' g> }
  \tupletOff
  | \tuplet 3/2 { <f,, bf d f>2 <d'' bf'> <f,, f'> }
  | \tuplet 3/2 { <d'' bf'>2 <f,, bf d f> <d'' bf'> }
  | \tuplet 3/2 { <ef,, g bf ef>2 <g'' bf ef> <ef,, ef'> }
  | \tuplet 3/2 { <c' ef g c>2 <ef' g c> <ef, ef'> }
  
  \barNumberCheck #120
  | \tuplet 3/2 { <d f bf d>2 <d' f> <f bf> }
  \clef treble
  | \tuplet 3/2 { <bf d>2 <d f> <f bf> }
  \clef bass
  | <ef,, bf' ef>2 <g ef' g>
  | <d g d'>2 <c g' c>
  \tupletOn
  | \tuplet 3/2 { <bf g' bf>2 <d' g> <g bf> }
  \clef treble
  | \tuplet 3/2 { <bf d>2 <d f> <f bf> }
  \clef bass
  | <ef,, bf' ef>2 <g ef' g>
  | <d g d'>2 <c g' c>
  
  \barNumberCheck #128
  | \tuplet 3/2 { <bf g' bf>2 <d' g> <g bf> }
  | \tuplet 3/2 { <af bf d>2 \clef treble <bf d f> <d f af> }
  | \tuplet 3/2 { <c af' c>2 \clef bass <c,, af' c> <c' af' c> }
  | <bf ef bf'>2 <g ef' g>
  | \tuplet 3/2 { <af ef' af>2 <c, af' c> <af' ef' af> }
  | <f c' f>2 <af c af'>
  | <g ef' g>2 <g, ef' g>
  | <f' bf f'>2 <ef bf' ef>
  
  \barNumberCheck #136
  | \tuplet 3/2 { <af, af'>2 <af' af'> <af, af'> }
  | \tuplet 3/2 { <af' af'>2 <af, af'> <af' af'> }
  \tupletOff
  | \tuplet 3/2 { <bf, bf'>2 <bf' bf'> <bf, bf'> }
  | \tuplet 3/2 { <bf' bf'>2 <bf, bf'> <bf' bf'> }
  | \tuplet 3/2 { <bf, bf'>2 <bf' bf'> <bf, bf'> }
  | \tuplet 3/2 { <cf' cf'>2 <cf, cf'> <cf' cf'> }
  | \tuplet 3/2 { <cf, cf'>2 <cf' cf'> <cf, cf'> }
  | \tuplet 3/2 { <bf' bf'>2 <bf, bf'> <bf' bf'> }
  
  \barNumberCheck #144
  | \tuplet 3/2 { <bff, bff'>2 <bff' bff'> <bff, bff'> }
  | \tuplet 3/2 { <bff' bff'>2 <bff, bff'> <bff' bff'> }
  | \tuplet 3/2 { <bff, bff'>2 <bff' bff'> <bff, bff'> }
  | \tuplet 3/2 { <a' a'>2 <a, a'> <a' a'> }
  | \tuplet 3/2 { <bf, bf'>2 <bf' bf'> <bf, bf'> }
  | \tuplet 3/2 { <cf' cf'>2 <cf, cf'> <cf' cf'> }
  | \tuplet 3/2 { <bf, bf'>2 <bf' bf'> <bf, bf'> }
  | \tuplet 3/2 { <af' af'>2 <af, af'> <af' af'> }
  
  \barNumberCheck #152
  | \tuplet 3/2 { <bf, bf'>2 <bf' bf'> <bf, bf'> }
  | \tuplet 3/2 { <c' c'>2 <c, c'> <c' c'> }
  | \tuplet 3/2 { <bf, bf'>2 <bf' bf'> <bf, bf'> }
  | \tuplet 3/2 { <a' a'>2 <a, a'> <a' a'> }
  | \tuplet 3/2 { <bf, bf'>2 <d' d'> <ef ef'> }
  | \tuplet 3/2 { <d, d'>2 <ef ef'> <bf bf'> }
  | <cf' ef gf>2 <gf df' gf>
  | \tuplet 3/2 { <bf, bf'>2 <d' d'> <ef ef'> }
  
  \barNumberCheck #160
  | \tuplet 3/2 { <d, d'>2 <ef ef'> <bf bf'> }
  | <c' ef g>2 <bf f' bf>
  \defaultTimeSignature
  \time 4/4
  | \acciaccatura { <ef,, ef' ~>8 } <ef ef' g bf ef g>1 \fermata
  | \acciaccatura { <ef ef' ~>8 } <ef ef' f bf d f>1 \fermata
  | \acciaccatura { <ef ef' ~>8 } <ef ef' g bf ef>1 
  | <c' ef g c>2 <ef g c ef>
  | \acciaccatura { <ef, ef' ~>8 } <ef ef' d f bf d>1
  | <bf' bf'>1-^
  
  \barNumberCheck #168
  | \slurUp \acciaccatura { <f'' af>8 } <f,, f'>1 _\fermata
  | \slurUp \acciaccatura { <g'' bf>8 } <g,, g'>1 _\fermata
  | <ef ef'>2 <g'' bf>
  | <ef,, ef'>2 <g'' bf>
  | \repeat tremolo 16 { ef,,32 ef' }
  | \repeat tremolo 16 { ef,32 ef' }
  | <ef, ef'>2 ~ q4 r \fermata
}

menoGlobal = {
  \key ef \major
  \numericTimeSignature
  \time 2/2
  \accidentalStyle piano
  \noDash
}