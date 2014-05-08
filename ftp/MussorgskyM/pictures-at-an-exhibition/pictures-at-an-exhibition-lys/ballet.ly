\version "2.18.2"
\language "english"

\header {
  title        = "Ballet des poussins dans leurs coques"
  composer     = "Modest Moussorgsky (1839 - 1881)"
  style        = "Romantic"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  lastupdated  = "2014/May/5"
  date         = "1874"
  source       = "Pavel Lamm (1882-1951)"

  mutopiatitle       = "Pictures at an Exhibition"
  mutopiacomposer    = "MussorgskyM"
  mutopiainstrument  = "Piano"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"
}

scherzino = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark "Scherzino."
}

trio = {
  \once
  \override Score.RehearsalMark.self-alignment-X = #LEFT
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

slurAcrossStaves = {
  \shape #'((0.1 . 0.1) (1 . 2) (1 . 3.5) (1 . 5)) Slur
}

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
    <df' f af> [ \acciaccatura { d'8 } <f, a c> ]
  | \acciaccatura { d'8 } <f, a c>8 [ \staffDown <f, a c> \staffUp
    \acciaccatura { c''8 } <f, af b> \staffDown <f, af df> ] \staffUp
  | \acciaccatura { d''8 } <f, a c>8 [ \staffDown <f, a c> \staffUp
    <df' f af> \staffDown <af b> ] \staffUp
  | r8 \acciaccatura { bf8 } <af cf> r \acciaccatura { c8 } <a df>
  | r8 \acciaccatura { ef'8 } <df ff> r \acciaccatura { f8 } <d gf>
  | r8 \acciaccatura { c8 } <bf df> r \acciaccatura { d8 }  <b ef>
  | r8 \acciaccatura { e8 } <df f> r \acciaccatura { g8 } <e gs>
  | \acciaccatura { a'8 } <gf bf>8 \mf r \acciaccatura { gs8 } <f a> r
  | \acciaccatura { as,8 } <a b>8 _\cres r \acciaccatura { b8 } <g c> r
  | \acciaccatura { e'8 } <df f>8 r \acciaccatura { cs8 } <bf d> r
  | \acciaccatura { e,8 } <df f>8 r \acciaccatura { fs8 } <e g> r
  | df'2 ~ \f \fermata
  | df8 r \acciaccatura { c8 } c,8 \sf r \break
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
  | s4 <af b>8 r
  | s2 * 2
  | df,8 [ ef e f ]
  | gf8 [ af a bf ]
  | ef,8 [ f fs g ]

  \barNumberCheck #16
  | af8 [ bf b c ]
  | c,8 [ e df f ]
  | d [ fs e g ]
  | f [ a gf bf ]
  | af [ b \slurAcrossStaves bf ( c ) ]
  | R2 \fermataMarkup
  | R2
}

highVoiceTwo = \relative c''' {
  \trio
  | f2 \startTrillSpan \ppp
  | d2 \startTrillSpan 
  | c4 \startTrillSpan d \startTrillSpan
  | c4 \startTrillSpan b \startTrillSpan ^\markup { \sharp }
  | c2 \startTrillSpan 
  | b2 \startTrillSpan ^\markup { \sharp }
  | a2 \startTrillSpan ^\markup { \natural }
  | f2 \startTrillSpan \break
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

lowVoiceTwo = \relative c {
  << \\ { f2 ~ f f ~ f } \\ \\ { f4 a gs b f b a gs } >>
  << \\ { f2 ~ f f ~ f } \\ \\ { f4 a gs b f b a gs } >>
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
          \new Voice { \voiceThree \lowerMiddleTwo }
          \new Voice { \voiceFour \lowVoiceTwo }
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
  \midi {
    \tempo 4 = 160
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

lowVoiceCoda = \relative c'' {
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
  \midi {
  }
}
    
