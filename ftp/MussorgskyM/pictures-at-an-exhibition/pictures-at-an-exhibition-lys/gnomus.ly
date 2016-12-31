\version "2.18.2"
\language "english"

\header {
  %title        = "No 1. Gnomus"
  composer     = "Modest Moussorgsky (1839 - 1881)"
  style        = "Romantic"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  date         = "1874"
  source       = "Pavel Lamm"

  mutopiatitle       = "Pictures at an Exhibition"
  mutopiacomposer    = "MussorgskyM"
  mutopiainstrument  = "Piano"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"

 footer = "Mutopia-2016/12/31-475"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

sempreVivo = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark "Sempre vivo" 
}
menoVivo = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark  "Meno vivo" 
}
pesante = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark  "Poco meno mosso, pesante" 
}
vivo = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark  "Vivo" 
}
menoMosso = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark  "Meno mosso" 
}
pocoAccel = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark "Poco a poco accelerando"
}
veloc = \markup { \italic "velocissimo" }
forza = \markup { \italic "con tutta forza" }
noDash = \override DynamicTextSpanner.dash-period = #-1.0

upper = {
  \time 3/4
  \clef bass
  \sempreVivo 
  | cf'8 ( \ff ef d cf' bf d )
  | gf2. ~ \sf \fermata
  | gf2 ~ gf8 r
  \menoVivo 
  | cf'8 ( \p ef d cf' bf d )
  | gf2. ~
  | gf2.
  \sempreVivo 
  | cf'8 ( \ff ef eff cf' bf df )
  
  \barNumberCheck #8
  
  | ff4 \sf bf8 ( cf ef4 ) \sf
  | bf8 ( bf, ) d4 ( \sf bf,8 ) r
  | \clef treble <bf bf'>4 \sf <bf'' bf'''> \sf r \fermata
  | \clef bass cf'8 ( \ff ef d cf' bf d )
  | gf2. ~ \sf \fermata
  | gf2 ~ gf8 r
  | cf'8 ( ef eff cf' bf df )
  | ff4 \sf bf8 ( cf ef4 ) \sf
  
  \barNumberCheck #16
  
  | bf8 ( bf, ) d4 ( \sf bf,8 ) r
  | \clef treble <bf bf'>4 \sf <bf' bf''> \sf <bf'' bf'''> \sf 
  | R2. \fermataMarkup
  
  \repeat volta 2 {
    | \acciaccatura s8 <gf'' bf'' f'''>4 \sf <gf'' bf'' ef'''>2 ~ \sf
    | q4 ~ q8 r r4 \break
    | <ef'' gf'' df'''>4 \sf <ef'' gf'' c'''> \sf ~ q8 r
    | <cf'' ef'' af''>4 \sf <cf'' ef'' gf''> \sf ~ q8 r
    | \acciaccatura s8 <gf' bf' f''>4 \sf <gf' bf' ef''>2 ~ \sf
    
    % Prevent bar number check warnings when unfolding repeats
    \tag #'midi { \set Score.currentBarNumber = #24 }
    \barNumberCheck #24
    
    | q4 ~ q8 r r4
    | <ef' gf' df''>4 \sf <ef' gf' c''> \sf ~ q8 r
    | <cf' ef' af'>4 \sf <cf' ef' gf'> \sf ~ q8 r
    | r4 \acciaccatura cf'8 bf4 \clef bass \acciaccatura cf8 bf,4
    | R2. \fermataMarkup
  }
  \break
  
  \clef bass
  | cf'8 ( ef d cf' bf d )
  | gf2 \sf \acciaccatura cf8 bf,4 ~
  | bf,8 r r4 r4 \fermata
  
  \barNumberCheck #32
  
  | cf'8 ( ef eff cf' bf df )
  | ff4 \sf bf8 ( cf ef4 ) \sf
  | bf8 ( bf, ) d4 ( \sf bf,8 ) r
  | r4 \acciaccatura cf'8 bf4 \acciaccatura cf8 bf,4
  | cf2. \sf \> (
  | bf,4 ) r \! r \fermata \break
  
  \time 4/4
  \clef treble
  \bar "||"
  \pesante 
  | ef2 \mf <a a'>
  | ef2 <bf bf'>
  
  \barNumberCheck #40
  
  | ef2 <ef' ef''>4 <eff' eff''>
  | <ff' ff''>2 <ef' ef''>
  | ef4 <ef' ef''> <eff' eff''> <gf' gf''>
  | <f' f''>4 <bf bf'> <f' f''>2
  | <gf' gf''>4 ( <f' f''> <bf bf'> ) <f' f''> \break
  
  \clef bass
  \time 3/4
  \bar "||"
  \vivo 
  | cf'8 ( \ff ef d cf' bf d )
  | gf4 r r \fermata
  
  \clef treble
  \time 4/4
  \bar "||"
  \pesante 
  | ef2 \mf <a a'>
  
  \barNumberCheck #48
  
  | ef2 <bf bf'>
  | ef2 <f' f''>4 <ff' ff''>
  | <af' af''>2 <aff' aff''>
  | ef4 <f' f''> <ff' ff''> <af' af''>
  | <aff' aff''>4 <df' df''> <aff' aff''>2
  | <af' af''>4 ( <aff' aff''> <df' df''> ) <aff' aff''>
  
  \time 3/4
  \bar "||"
  \vivo 
  | ff'8 \ff ( af aff ff' ef' aff
  | cf'4 ) r r \fermata
  
  \barNumberCheck #56
  
  \time 4/4
  \bar "||"
  \menoMosso 
  | af2 \mf <d' d''>
  | af2 <ef' ef''>
  
  \time 3/4
  \bar "||"
  \vivo 
  | cf''8 \ff ( ef' d' cf'' bf' ef' 
  | gf'4 ) r r \fermata
  
  \time 4/4
  \bar "||"
  \menoMosso 
  | \acciaccatura <ef' ef''>8 <ef'' ef'''>2 \ff
    <eff'' eff'''>4 <gf'' gf'''>
  | <f'' f'''>4 <bf' bf''> <ff'' ff'''>2
  | <ef'' ef'''>2 <d'' d'''>4 <af' af''>
  | <df'' df'''>4 <gf' gf''> <c'' c'''>2
  
  \barNumberCheck #64
  
  | <cf'' cf'''>2 <bf' bf''>4 <ef' ef''>
  | <bff' bff''>2 <af' af''>4 <d' d''>
  | \acciaccatura <ef' ef''>8 <ef'' ef'''>2 <eff'' eff'''>
  | <df'' df'''>2 <c'' c'''>
  | <cf'' cf'''>2 <bf' bf''>
  | <bff' bff''>2 <af' af''>
  | <aff' aff''>2 <gf' gf''>
  | <f' f''>2 <ff' ff''>4 r
  
  \barNumberCheck #72
  
  \time 3/4
  \bar "||"
  \pocoAccel
  | R2. 
  | R2. * 3
  | <gf'' bf'' f'''>4 <gf'' bf'' ef'''>2
  | R2.
  | <ef'' gf'' df'''>4 <ef'' gf'' c'''> ~ q8 r
  | <cf'' ef'' af''>4 <cf'' ef'' gf''> ~ q8 r
  
  \barNumberCheck #80
  
  | <gf' bf' f''>4 <gf' bf' ef''>2
  | R2.
  | <ef' gf' df''>4 <ef' gf' c''> ~ q8 r
  | <cf' ef' af'>4 <cf' ef' gf'> ~ q8 r
  \clef bass
  | <gf bf f'>4 <gf bf ef'> ~ q8 r
  | R2.
  | <ef gf df'>4 <ef gf c'> ~ q8 r
  | R2.
  
  \barNumberCheck #88
  
  \clef treble
  | <ef' gf' df''>4 <ef' gf' c''> ~ q8 r
  | R2.
  \sempreVivo
  | <af' cf'' ef''>4 \f <af' cf'' ef'' ff''> ~ q8 r
  | R2.
  | <af' cf'' ef''>2 \ff <af' cf'' ef'' ff''>4 ~
  | q2 r4 \fermata
  \relative c'' {
    | r4 r cf _ \forza
    | bf8 ^ \veloc f gf a bf cf
    
    \barNumberCheck #96
    
    | a8 bf d ef f gf
    | f8 d ef d gf a
    | bf8 cf a bf d ef
    | <gf bf, ef,>8 r r4 r \fermata
    | \bar "|."
  }
}

lower = {
  \time 3/4
  \clef bass
  
  | cf8 ( ef, d, cf bf, d, )
  | gf,2. ~ _ \fermata
  | gf,2 ~ gf,8 r
  | cf8 ( ef, d, cf bf, d, )
  | gf,2. ~
  | gf,2.
  | cf8 ( ef, eff, cf bf, df, )
  
  \barNumberCheck #8
  
  | ff,4 bf,8 ( cf, ef,4 )
  | bf,8 ( bf,, ) d,4 ( bf,,8 ) r
  | bf,4 \clef treble bf' r \fermata
  | \clef bass cf8 ( ef, d, cf bf, d, )
  | gf,2. ~ _ \fermata
  | gf,2 ~ gf,8 r
  | cf8 ( ef, eff, cf bf, df, )
  | ff,4 bf,8 ( cf, ef,4 )
  
  \barNumberCheck #16
  
  | bf,8 ( bf,, ) d,4 ( bf,,8 ) r
  | bf,4 bf \clef treble bf'
  | R2. \fermataMarkup 
  \clef bass
  
  \repeat volta 2 {
    | \acciaccatura ef,,8 ef,4 ef,2 ~
    | ef,2.
    | a,2.
    | gf2.
    | \acciaccatura ef,,8 ef,4 ef,2 ~
    
    % Prevent bar number check warnings when unfolding repeats
    \tag #'midi { \set Score.currentBarNumber = #24 }
    \barNumberCheck #24
    
    | ef,2.
    | a,2.
    | gf2.
    | r4 \acciaccatura cf8 bf,4 \acciaccatura cf,8 bf,,4
    | R2. \fermataMarkup
  }
  
  | cf8 ( ef, d, cf bf, d, )
  | gf,2 \acciaccatura cf,8 bf,,4 ~
  | bf,,8 r r4 r \fermata
  
  \barNumberCheck #32
  
  | cf8 ( ef, eff, cf bf, df, )
  | ff,4 bf,8 ( cf, ef,4 )
  | bf,8 ( bf,, ) d,4 ( bf,,8 ) r
  | r4 \acciaccatura cf8 bf,4 \acciaccatura cf,8 bf,,4
  | cf,2. (
  | bf,,4 ) r r \fermata 
  
  \time 4/4
  | <ef, ef,,>2 <a, a,,>
  | <ef, ef,,>2 <bf, bf,,>
  
  \barNumberCheck #40
  
  | <ef, ef,,>2 <c c,>4 <cf cf,>
  | <df df,>2 <c c,>
  | <ef, ef,,>4 <c c,> <cf cf,> <ef ef,>
  | <d d,>4 <gf, gf,,> <d d,>2
  | <ef ef,>4 ( <eff eff,> <gf, gf,,> ) <eff eff,>
  
  \time 3/4
  | cf8 ( ef, d, cf bf, d, )
  | gf4 r r \fermata
  
  \time 4/4
  | <ef, ef,,>2 <a, a,,>
  
  \barNumberCheck #48
  
  | <ef, ef,,>2 <bf, bf,,>
  | <ef, ef,,>2 <df df,>4 <c c,>
  | <ff ff,>2 <ef ef,>
  | <ef, ef,,>4 <df df,> <c c,> <ff ff,>
  | <ef ef,>4 <bff, bff,,> <ef ef,>2
  | <ff ff,>4 ( <ef ef,> <bff, bff,,> ) <ef ef,>
  
  \time 3/4
  | ff8 ( af, aff, ff ef aff,
  | cf4 ) r r \fermata
  
  \barNumberCheck #56
  
  \time 4/4
  | <af, af,,>2 <d d,>
  | <af, af,,>2 <ef ef,>
  
  \time 3/4
  | cf'8 ( ef d cf' bf ef 
  | gf4 ) r r \fermata
  
  \time 4/4
  | \acciaccatura <ef ef,>8 <ef, ef,,>4 r <ef' ef>2
  | <eff' eff>2 <df' df>
  | <c' c>2 <cf cf'>
  | <bf bf,>2 <bff bff,>
  
  \barNumberCheck #64
  
  | <af af,>2 <g g,>
  | <gf gf,>2 <f f,>
  | \acciaccatura <ef ef,>8 <ef, ef,,>2 <ff ff,>4 <cf cf'>
  | <bf bf,>4 <ef ef,> <bff bff,>2
  | <af af,>2 <g g,>4 <df df,>
  | <c c,>4 <gf gf,> <f f,>2
  | <ff ff,>4 <cf cf,> <ef ef,>2
  | <eff eff,>4 <bf, bf,,> <df df,> r
  
  \barNumberCheck #72
  
  \time 3/4
  \tag #'layout {
    | ef,?2. ^ \p \startTrillSpan ^ \< ~
    | ef,2 \tuplet 6/4 { 
      ef,16 \stopTrillSpan ( [ e, f, gf, g, af, \! ] ) 
    }
    | a,2. ^ \f \startTrillSpan ~
    | a,2 \tuplet 6/4 {
      bff,16 ^ \dim \stopTrillSpan ( [ af, aff, gf, f, ff, ] )
    }
    | ef,2. ^ \p \startTrillSpan  ~
    | ef,2 \tuplet 6/4 { 
      ef,16 \stopTrillSpan ( [ e, f, gf, g, af, ] ) 
    }
    | a,2. \startTrillSpan ~
    | a,2 \tuplet 6/4 {
      bff,16 \stopTrillSpan ( [ af, aff, gf, f, ff, ] )
    }    
  }
  
  \tag #'midi {
    | \repeat unfold 6 { ef,16 f, }
    | \repeat unfold 4 { ef,16 f, } \tuplet 6/4 { 
      ef,16 ( [ e, f, gf, g, af, ] ) 
    }  
    | \repeat unfold 6 { a,16 bf, }
    | \repeat unfold 4 { a,16 bf, } \tuplet 6/4 {
      bff,16 ( [ af, aff, gf, f, ff, ] )
    }
    | \repeat unfold 6 { ef,16 f, }
    | \repeat unfold 4 { ef,16 f, } \tuplet 6/4 { 
      ef,16 ( [ e, f, gf, g, af, ] ) 
    }  
    | \repeat unfold 6 { a,16 bf, }
    | \repeat unfold 4 { a,16 bf, } \tuplet 6/4 {
      bff,16 ( [ af, aff, gf, f, ff, ] )
    }          
  }
  
  \barNumberCheck #80
  
  \tag #'layout {
    | ef,2. \startTrillSpan  ~
    | ef,2 \tuplet 6/4 { 
      ef,16 \stopTrillSpan ( [ e, f, gf, g, af, ] ) 
    }
    | a,2. \startTrillSpan ~
    | a,2 \tuplet 6/4 {
      bff,16 \stopTrillSpan ( [ af, aff, gf, f, ff, ] )
    }
    | ef,2. \startTrillSpan  ~
    | ef,2 \tuplet 6/4 { 
      ef,16 ^ \cresc \stopTrillSpan ( [ e, f, gf, g, af, ] ) 
    }
    | a,2. ^ \mf \startTrillSpan ~
    | \tuplet 11/12 {  
      a,16 ^ \< \stopTrillSpan ( [ bf, b, c df d ef f gf g af \! ] ) 
    }
  }
  
  \tag #'midi {
    | \repeat unfold 6 { ef,16 f, }
    | \repeat unfold 4 { ef,16 f, } \tuplet 6/4 { 
      ef,16 ( [ e, f, gf, g, af, ] ) 
    }  
    | \repeat unfold 6 { a,16 bf, }
    | \repeat unfold 4 { a,16 bf, } \tuplet 6/4 {
      bff,16 ( [ af, aff, gf, f, ff, ] )
    }
    | \repeat unfold 6 { ef,16 f, }
    | \repeat unfold 4 { ef,16 f, } \tuplet 6/4 { 
      ef,16 ( [ e, f, gf, g, af, ] ) 
    }  
    | \repeat unfold 6 { a,16 bf, }
    | \tuplet 11/12 {
      bff,16 ( [ bf, b, c df d ef f gf g af ] )
    }          
  }  
  
  \barNumberCheck #88

  \tag #'layout {
    | a2. ^ \cresc \startTrillSpan (
    | bff2. ) \stopTrillSpan  
  }
  
  \tag #'midi {
    | \repeat unfold 6 { a16 bf }
    | \repeat unfold 6 { a16 bf }
  }
  
  | <af cf' ef'>4 \! <af cf' ef' ff'> ~ q8 r
  | R2.
  | <af cf' ef'>2 <af cf' ef' ff'>4 ~
  | q2 r4 \fermata
  \relative c'' {
    | R2.
    | gf8 d ef cf bf d
    
    \barNumberCheck #96
    
    | ef8 d cf bf a bf
    | a8 f gf d ef cf
    | bf8 a cf bf f gf
    | <ef bf' gf'>8 r r4 r \fermata
  }
}

global = {
  \key ef \minor
  \accidentalStyle piano
  \noDash
}

\bookpart {
  \header {
    subtitle = "No 1. Gnomus"
  }
  \score {
    \keepWithTag #'layout
    \new PianoStaff 
    <<
      \new Staff = "up" {
        \global
        \upper
      }
      \new Staff = "down" {
        \global
        \lower
      }
    >>
    \layout {
    }
  }
}

% MIDI only
\score {
  \keepWithTag #'midi
  \unfoldRepeats {
    \new PianoStaff 
    <<
      \new Staff = "up" {
        \global
        \upper
      }
      \new Staff = "down" {
        \global
        \lower
      }
    >>
  }
  \midi { 
    \tempo 4 = 230
  }
}
