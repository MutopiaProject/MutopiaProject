\version "2.18.2"
\language "english"

\header {
  title        = "French Suite VI: Sarabande"
  composer     = "J. S. Bach (1685-1750)"
  opus         = "BWV 817"
  style        = "Baroque"
  lisense      = "Creative Commons Attribution-ShareAlike 4.0"
  copyright    = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  lastupdated  = "2014/Apr/06"
  date         = "1722"
  source       = "Bach-Gesellschaft, 1863"

  mutopiatitle       = "French Suite no. 6 in E major"
  mutopiacomposer    = "BachJS"
  mutopiaopus        = "BWV 817"
  mutopiainstrument  = "Harpsichord, Piano"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"
}

upperVoice = {
  \stemUp
  \tieUp
  \slurUp
}

lowerVoice = {
  \stemDown
  \tieDown
  \slurUp
}

neutralVoice = {
  \stemNeutral
  \tieNeutral
  \slurUp
}

staffUp = \change Staff = "upper" 
staffDown = \change Staff = "lower"
voiceFive = #(context-spec-music (make-voice-props-set 4) 'Voice)
voiceSix = #(context-spec-music (make-voice-props-set 8) 'Voice)
arpeggioConnect = \set Staff.connectArpeggios = ##t

% Repeat one

upperHighOne = \relative c'' {
  | \staffUp \upperVoice gs8. a16 fs4. ( \trill e16 fs )
  | e4 << { \voiceFive e2 } \\ { \upperVoice a2 } >>
  | a8. b16 gs4. ( \trill fs16 gs )
  | fs4 fs2
  | b8. \mordent cs16 a4. gs8
  | cs8 ds16 e e4. ds8
  | cs16 as b8 as4. b8
  
  \barNumberCheck #8
  
  | b4 << { \voiceFive fs2 } \\ { \upperVoice b2 } >>
  |
}

upperLowOne = \relative c' {
  | \staffDown \upperVoice b4 bs2
  | \staffUp \lowerVoice cs4 cs 2
  | \staffDown \upperVoice b4 \staffUp \lowerVoice e2
  | \voiceFive \upperVoice ds4 ds2
  | \voiceTwo ds4 e2
  | \voiceFive \upperVoice fs4 cs'4. b8
  | \voiceTwo e,8 ds cs ds e4 ~
  
  \barNumberCheck #8
  
  | e8 cs ds2
  |
}

lowerHighOne = \relative c' {
  | \staffDown \upperVoice gs4 gs2
  | gs4 ~ gs16 b a gs fs e ds e
  | fs4 b << { \voiceFive as } \\ { \upperVoice cs } >>
  | \staffUp \lowerVoice b4 b2
  | \staffDown \upperVoice b4 s2
  | \staffUp \lowerVoice cs4 fs4. fs8
  | \staffDown \upperVoice s4 fs,2 ~
  
  \barNumberCheck #8
  
  | fs4 fs2
  |
}

lowerLowOne = \relative c {
  | \staffDown \lowerVoice e4 ds2
  | cs2.
  | ds4 e2
  | b4 ~ b16 cs ds e fs gs a fs
  | gs4 cs b
  | as4 ~ as8 gs16 fs b4
  | gs8 e fs4 fs,
  
  \barNumberCheck #8
  
  | b4 b2
  |
}

% Repeat two

upperHighTwo = \relative c'' {
  \arpeggioConnect
  \staffUp 
  \upperVoice
  | ds8. e16 cs4. \trill bs8
  | bs4 << { \voiceFive fs'2 \arpeggio } \\ { \upperVoice a2 \arpeggio } >>  
  | gs8. a16 fs4. es8
  | es4 << { \voiceSix es2 \arpeggio } \\ { \voiceFive gs2 \arpeggio } \\ { \upperVoice b2 \arpeggio } >>
  | a8. b16 gs4. a8
  | b8. gs16 es4. fs8
  | cs8 [ a' a gs ] fs gs16 es
  
  \barNumberCheck #16
  
  | fs4 fs2
  | cs8. ds16 ds4. \trill cs16 ds
  | e4 << { \voiceFive e2 } \\ { \upperVoice gs2 } >>
  | fs4 e8 ds e cs
  | ds4. cs8 b4
  | gs'8. a16 a4. \trill gs16 a
  | b4. a16 gs fs e ds cs
  | b16 a' gs fs e4 ds8. e16
  
  \barNumberCheck #24
  
  | e4 << { \voiceFive b2 } \\ { \upperVoice e2 } >>
  |
}

upperLowTwo = \relative c'' {
  \arpeggioConnect
  \staffUp 
  \voiceFive 
  \upperVoice
  | b4 fs2
  | gs4 \voiceSix ds'2 \arpeggio 
  | \voiceFive \lowerVoice cs2 b4
  | cs4 cs2 \arpeggio
  | \upperVoice fs4 fs es
  | fs4 b,2
  | \lowerVoice r8 cs b2 ~
  
  \barNumberCheck #16
  
  | b8 gs a2
  | a4 a2
  | b4 cs2
  | ds4 cs8 b as4
  | b2 s4
  | \upperVoice e4 s2
  | e4 s2
  | \lowerVoice b4 b2 ~
  
  \barNumberCheck #24
  
  | b4 e,2
}

lowerHighTwo = \relative c' {
  \arpeggioConnect
  \staffUp 
  \lowerVoice
  | fs4 cs2
  | ds4 bs'2 \arpeggio
  | \staffDown \upperVoice gs,4 a gs8 fs
  | gs4 s2
  | \staffUp \lowerVoice cs'4 d cs
  | b4 gs2
  | s2. 
  
  \barNumberCheck #16
  
  | s2. * 5
  | \staffUp \lowerVoice b='4 e2
  | b4 cs ~ cs8 r
  | \staffDown \upperVoice s4 r8 fs,,= gs a ~
  
  \barNumberCheck #24
  
  | a8 fs gs b r4
  |
}

lowerLowTwo = \relative c' {
  \staffDown 
  \neutralVoice 
  | b4 a2
  | gs4 ~ gs16 fs ( a gs fs e fs ds )
  | \lowerVoice e2 d4
  | cs4 ~ \neutralVoice cs16 \slurDown d ( cs b a gs fs gs32 es ) \slurNeutral
  | fs4 b cs
  | d4. d8 cs b
  | a8 fs cs'4 cs,
  
  \barNumberCheck #16
  
  | fs4. fs8 a cs
  | fs4 fs, fs'
  | gs8 as as4. ^ \trill gs16 as
  | b4 e, fs
  | b,8. cs16 cs4. ^ \trill b16 cs
  | d4 cs2
  | gs8. a16 \tieDown a4 ^ \trill ~ a16 gs a fs \tieNeutral
  | ds8 e \lowerVoice b'2
  | e2 e,4
  |
}

global = { 
  \key e \major
  \time 3/4
  \accidentalStyle Score.piano-cautionary
}

upper = {
  \clef treble
  \global
  <<
    \new Voice { \repeat volta 2 { \voiceOne \upperHighOne } }
    \new Voice { \repeat volta 2 { \voiceTwo \upperLowOne } }
  >> <<
    \new Voice { \repeat volta 2 { \voiceOne \upperHighTwo } }
    \new Voice { \repeat volta 2 { \voiceTwo \upperLowTwo } }
  >>
}

lower = {
  \clef bass
  \global
  <<
    \new Voice { \repeat volta 2 { \voiceThree \lowerHighOne } }
    \new Voice { \repeat volta 2 { \voiceFour \lowerLowOne } }
  >> <<
    \new Voice { \repeat volta 2 { \voiceThree \lowerHighTwo } }
    \new Voice { \repeat volta 2 { \voiceFour \lowerLowTwo } }
  >>
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \with {
      \consists "Span_arpeggio_engraver"
    } \upper
    \new Staff = "lower" \with {
      \consists "Span_arpeggio_engraver"
    } \lower
  >>
  \layout { 
  } 
  \midi { 
    \tempo 4 = 60
  }
}