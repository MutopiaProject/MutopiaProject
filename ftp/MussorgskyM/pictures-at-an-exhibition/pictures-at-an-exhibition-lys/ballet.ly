\version "2.18.2"
\language "english"

\header {
  %title        = "Ballet des poussins dans leurs coques"
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

scherzino = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark "Scherzino."
}

trio = {
  \once
  \override Score.RehearsalMark.X-offset = -0.5
  \mark "Trio"
}

daCapoAdjust = {
  \override TextScript.X-offset = -38
  \override TextScript.Y-offset = -3
}

daCapo = \markup { \italic "De Capo il Scherzino, senza Trio, e poi Coda" }
cres = \markup { \italic "cresc." }
dimin = \markup { \italic "dim" }
attacca = \markup { \italic "attacca  " }

staffUp = \change Staff = "up"
staffDown = \change Staff = "down"

highVoice = \relative c''' {
  \tempo "Vivo, leggiero."
  \scherzino
  | \acciaccatura { d8 } <f, a c>8 [ \pp \staffDown <f, a c> \staffUp
    \acciaccatura { c''8 } <f, af b> \staffDown <f, af df> ] \staffUp
  | \acciaccatura { d''8 } <f, a c>8 \staffDown <f, a c> \staffUp
    <df' f af> [ \acciaccatura { d'8 } <f, a c> ]
  | \acciaccatura { d'8 } <f, a c>8 [ \staffDown <f, a c> \staffUp
    \acciaccatura { c''8 } <f, af b> \staffDown <f, af df> ] \staffUp
  | \acciaccatura { d''8 } <f, a c>8 [ \staffDown <f, a c> \staffUp
    <df' f af> \staffDown <af b> ] \staffUp
  | r8 \acciaccatura { fs8 } <e g> r \acciaccatura { a8 } <g bf>
  | r8 \acciaccatura { b8 } <af c> r \acciaccatura { d8 } <c ef>
  | r8 \acciaccatura { f8 } <ef gf> r \acciaccatura { a8 } <gf bf>

  \barNumberCheck #8
  | r8 \acciaccatura { d'8 } <g, bf ef> r \acciaccatura { a'8 } <c, e g>
  | \acciaccatura { d8 } <f, a c>8 [ \staffDown <f, a c> \staffUp
    \acciaccatura { c''8 } <f, af b> \staffDown <f, af df> ] \staffUp
  | \acciaccatura { d''8 } <f, a c>8 \staffDown <f, a c> \staffUp
    \acciaccatura { c''8 } <f, af b> \acciaccatura { d'8 } <f, a c>
  | \acciaccatura { d'8 } <f, a c>8 [ \staffDown <f, a c> \staffUp
    \acciaccatura { c''8 } <f, af b> \staffDown <f, af df> ] \staffUp
  | \acciaccatura { d''8 } <f, a c>8 [ \staffDown <f, a c> \staffUp
    <df' f af> \staffDown <af b> ] \staffUp
  | r8 \acciaccatura { bf8 } <af cf> r \acciaccatura { c8 } <a df>
  | r8 \acciaccatura { ef'8 } <df ff> r \acciaccatura { f8 } <d gf>
  | r8 \acciaccatura { c8 } <bf df> r \acciaccatura { d8 }  <b ef>
  
  \barNumberCheck #16
  | r8 \acciaccatura { e8 } <df f> r \acciaccatura { g8 } <e gs>
  | \acciaccatura { a'8 } <gf bf>8 \mf r \acciaccatura { gs8 } <f a> r
  | \acciaccatura { as,8 } <a b>8 _\cres r \acciaccatura { b8 } <g c> r
  | \acciaccatura { e'8 } <df f>8 r \acciaccatura { cs8 } <bf d> r
  | \acciaccatura { e,8 } <df f>8 r \acciaccatura { fs8 } <e g> r
  | s2 
  | s2 
}

highVoiceMidi = \relative c''' {
  | \acciaccatura { d8 } <f, a c>8 [   <f, a c> 
    \acciaccatura { c''8 } <f, af b>  <f, af df> ] 
  | \acciaccatura { d''8 } <f, a c>8  <f, a c> 
    <df' f af> [ \acciaccatura { d'8 } <f, a c> ]
  | \acciaccatura { d'8 } <f, a c>8 [  <f, a c> 
    \acciaccatura { c''8 } <f, af b>  <f, af df> ] 
  | \acciaccatura { d''8 } <f, a c>8 [  <f, a c> 
    <df' f af>  <af b> ] 
  | r8 \acciaccatura { fs8 } <e g> r \acciaccatura { a8 } <g bf>
  | r8 \acciaccatura { b8 } <af c> r \acciaccatura { d8 } <c ef>
  | r8 \acciaccatura { f8 } <ef gf> r \acciaccatura { a8 } <gf bf>

  % bar 8
  | r8 \acciaccatura { d'8 } <g, bf ef> r \acciaccatura { a'8 } <c, e g>
  | \acciaccatura { d8 } <f, a c>8 [  <f, a c> 
    \acciaccatura { c''8 } <f, af b>  <f, af df> ] 
  | \acciaccatura { d''8 } <f, a c>8  <f, a c> 
    <df' f af> [ \acciaccatura { d'8 } <f, a c> ]
  | \acciaccatura { d'8 } <f, a c>8 [  <f, a c> 
    \acciaccatura { c''8 } <f, af b>  <f, af df> ] 
  | \acciaccatura { d''8 } <f, a c>8 [  <f, a c> 
    <df' f af>  <af b> ] 
  | r8 \acciaccatura { bf8 } <af cf> r \acciaccatura { c8 } <a df>
  | r8 \acciaccatura { ef'8 } <df ff> r \acciaccatura { f8 } <d gf>
  | r8 \acciaccatura { c8 } <bf df> r \acciaccatura { d8 }  <b ef>
  
  % bar 16
  | r8 \acciaccatura { e8 } <df f> r \acciaccatura { g8 } <e gs>
  | \acciaccatura { a'8 } <gf bf>8 \mf r \acciaccatura { gs8 } <f a> r
  | \acciaccatura { as,8 } <a b>8 _\cres r \acciaccatura { b8 } <g c> r
  | \acciaccatura { e'8 } <df f>8 r \acciaccatura { cs8 } <bf d> r
  | \acciaccatura { e,8 } <df f>8 r \acciaccatura { fs8 } <e g> r
  | s2 
  | s2 
}

lowVoice = \relative c'' {
  | \acciaccatura { s8 } s2 \unaCorda
  | s4 <af b>8 r
  | s2 * 2
  | b,8 [ c d ef ]
  | e8 [ f g af ]
  | bf8 [ cf c df ]

  \barNumberCheck #8
  | d [ ef e c ]
  | s2
  | s4 <af df>8 r
  | s2 * 2
  | df,8 [ ef e f ]
  | gf8 [ af a bf ]
  | ef,8 [ f fs g ]

  \barNumberCheck #16
  | af8 [ bf b c ]
  | c,8 [ e df f ]
  | ds [ fs e g ]
  | f [ a gf bf ]
  << { af [ b bf ( c  ] 
       \oneVoice
       | \staffUp df'2 ) ~ \f \fermata
       | df8 r \acciaccatura { c8 } c,8 \sf r \break
     } \\ {
       \oneVoice
       | s2 | R2 \fermataMarkup | R2
     }
  >>
}

lowVoiceMidi = \relative c'' {
  | \acciaccatura { s8 } s2 \unaCorda
  | s4 <af b>8 r
  | s2 * 2
  | b,8 [ c d ef ]
  | e8 [ f g af ]
  | bf8 [ cf c df ]

  % bar 8
  | d [ ef e c ]
  | s2
  | s4 <af b>8 r
  | s2 * 2
  | df,8 [ ef e f ]
  | gf8 [ af a bf ]
  | ef,8 [ f fs g ]

  % bar 16
  | af8 [ bf b c ]
  | c,8 [ e df f ]
  | d [ fs e g ]
  | f [ a gf bf ]
  << { af [ b bf ( c  ] 
       \oneVoice
       | df'2 ) ~ 
       | df8 r \acciaccatura { c8 } c,8 \sf r \break
     } \\ {
       \oneVoice
       | s2 | R2 \fermataMarkup | R2
     }
  >>
}

highVoiceTwo = \relative c''' {
  \trio
  \override TrillSpanner.X-extent = #'( 1 . 1 )
  \override TrillSpanner.Y-extent = #'( -2 . 0 )
  \override TrillSpanner.bound-details.right.padding = 1.9
  | f2 \startTrillSpan \ppp
  | d2 \startTrillSpan 
  | c4 \startTrillSpan d \startTrillSpan
  | c4 \startTrillSpan b \startTrillSpan ^\markup { \sharp }
  | c2 \startTrillSpan 
  | b2 \startTrillSpan ^\markup { \sharp }
  | a2 \startTrillSpan ^\markup { \natural }
  | f2 \startTrillSpan \break
}

highVoiceTwoMidi = \relative c''' {
  | \tuplet 3/2 { \repeat unfold 6 { f16 g } }
  | \tuplet 3/2 { \repeat unfold 6 { d16 e } }
  | \tuplet 3/2 { \repeat unfold 3 { c16 d } \repeat unfold 3 { d16 e } }
  | \tuplet 3/2 { \repeat unfold 3 { c16 d } \repeat unfold 3 { b16 cs } }
  | \tuplet 3/2 { \repeat unfold 6 { c16 d } }
  | \tuplet 3/2 { \repeat unfold 6 { b16 cs } }
  | \tuplet 3/2 { \repeat unfold 6 { a16 b } }
  | \tuplet 3/2 { \repeat unfold 6 { f16 g } }
}

upperMiddleTwo = \relative c''' {
  | d2 
  | b2
  | a4 b
  | a4 f
  | a2
  | f2
  | f2
  | df2
}

lowerMiddleTwo = \relative c' {
  \repeat unfold 8 { r8 f r f }
}

lowVoiceTwoA = \relative c {
  | f2 ~ f 
  | f2 ~ f 
  | f2 ~ f 
  | f2 ~ f
}

lowVoiceTwoB = \relative c {
  | f4 a gs b 
  | f4 b a gs
  | f4 a gs b 
  | f4 b a gs
}

highVoiceThree = \relative c''' {
  | \acciaccatura { f8 } df8-> ( c ) r c
  | \acciaccatura { c8 } b8-> ( af ) r af
  | \acciaccatura { f'8 } a,8-> ( c ) r c
  | \acciaccatura { c8 } f8-> ( af, ) r df 
  | \acciaccatura { f8 } a,-> ( bf ) r bf
  | \acciaccatura { f'8 } a,-> ( bf ) r c
  | \acciaccatura { f8 } a,-> ( bf ) r bf
  | \acciaccatura { f'8 } a,8-> ( c ) r c
}

lowerMiddleThree = \relative c' {
  | r8 f4 f8 ~
  | f8 f4 f8 ~
  | f8 f4 f8 ~
  | f8 f4 f8
  | r8 f4 f8 ~
  | f8 f4 f8 ~
  | f8 f4 f8 ~
  | f8 f4 \daCapoAdjust f8 _\daCapo
}

lowVoiceThree = \relative c {
  | \acciaccatura { s8 }  \stemDown f4 af
  | df4 b
  | f4 ef'
  | df4 b
  | f4 bf
  | df4 c 
  | f,4 df' 
  | c4 a 
}

global = {
  \key f \major
  \time 2/4
  \accidentalStyle piano
}

% No MIDI output

\bookpart {
  \header {
    subtitle = "No. 5 Ballet des poussins dans leurs coques"
  }
  \score {
    \new PianoStaff <<
      \new Staff = "up" {
        \global
        \repeat volta 2 { \highVoice }
        \repeat volta 2 {
          <<
            \new Voice { \voiceOne \highVoiceTwo }
            \new Voice { \voiceTwo \upperMiddleTwo }
          >>
        }
        \repeat volta 2 { \highVoiceThree }
      }
      \new Staff = "down" {
        \global
        \repeat volta 2 { \lowVoice }
        \repeat volta 2 {
          <<
            \new Voice { \voiceOne \lowerMiddleTwo }
            \new Voice { \voiceFour \lowVoiceTwoA }
            \new Voice { \voiceTwo \lowVoiceTwoB }
          >>
        }
        \repeat volta 2 {
          <<
            \new Voice { \voiceThree \lowerMiddleThree }
            \new Voice { \voiceFour \lowVoiceThree }
          >>
        }
      }
    >>
    \layout {
    }
  }
}

% Coda

highVoiceCoda = \relative c''' {
  | \acciaccatura { c8 } df2-^ ~ \mf
  | df4 ~ df8 r
  | \acciaccatura { c8 } df8 \p r \acciaccatura { c8 } gs-> _\dimin ( a )
  | \acciaccatura { gs'8 } <c, f a>4 \pp r _\attacca \fermata
  \bar "|."
}

highVoiceCodaMidi = \relative c''' {
  | \acciaccatura { c8 } df2-^ ~ \mf
  | df4 ~ df8 r
  | \acciaccatura { c8 } df8 \p r \acciaccatura { c8 } gs-> _\dimin ( a )
  | \acciaccatura { gs'8 } <c, f a>4 \pp r _\attacca \fermata
  \bar "|."
}

lowVoiceCoda = \relative c'' {
  | \acciaccatura { c8 } df2-^ ~
  | df4 ~ df8 r
  | \acciaccatura { c8 } df8 r \acciaccatura { c8 } gs-> ( a )
  | <f' a>4 r \fermata
}

lowVoiceCodaMidi = \relative c'' {
  | \acciaccatura { c8 } df2-^ ~
  | df4 ~ df8 r
  | \acciaccatura { c8 } df8 r \acciaccatura { c8 } gs-> ( a )
  | <f' a>4 r \fermata
}

globalCoda = {
  \key f \major
  \time 2/4
  \omit Staff.TimeSignature
}

% No MIDI output

\bookpart {
  \header {
    title = ""
    subtitle = ""
    composer = ""
  }
  \score {
    \new PianoStaff \with {
      instrumentName = #"Coda"
    }<<
      \new Staff {
        \globalCoda
        \highVoiceCoda
      }
      \new Staff {
        \globalCoda
        \lowVoiceCoda
      }
    >>
    \layout {
    }
  }
}

% MIDI output only

globalMidi = {
  \time 2/4
  \partial 2
  \skip 2
}

\score {
  <<
    {
      \globalMidi
      \repeat unfold 2 { \highVoiceMidi }
      \repeat unfold 2 {
        <<
          \new Voice { \voiceOne \highVoiceTwoMidi }
          \new Voice { \voiceTwo \upperMiddleTwo }
        >>
      }
      \repeat unfold 2 { \highVoiceThree }
      \highVoiceMidi
      \highVoiceCodaMidi
    }
    {
      \globalMidi
      \repeat unfold 2 { \lowVoiceMidi }
      \repeat unfold 2 {
        <<
          \new Voice { \voiceOne \lowerMiddleTwo }
          \new Voice { \voiceFour \lowVoiceTwoA }
          \new Voice { \voiceTwo \lowVoiceTwoB }
        >>
      }
      \repeat unfold 2 {
        <<
          \new Voice { \voiceThree \lowerMiddleThree }
          \new Voice { \voiceFour \lowVoiceThree }
        >>
      }
      \lowVoiceMidi
      \highVoiceCodaMidi
    }
  >>
  \midi {
    \tempo 4 = 160
  }
}
