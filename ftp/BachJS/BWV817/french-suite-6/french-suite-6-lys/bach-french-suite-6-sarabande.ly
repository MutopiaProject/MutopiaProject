\version "2.18.2"
\language "english"

\header {
  title        = "French Suite VI: Sarabande"
  composer     = "J. S. Bach (1685-1750)"
  opus         = "BWV 817"
  style        = "Baroque"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
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

 footer = "Mutopia-2014/04/27-1935"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
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
  | gs8. a16 fs4. ( \trill e16 fs )
  | e4 << { a2 } \\ \\ { e2 } >>
  | a8. b16 gs4. ( \trill fs16 gs )
  | << { fs4 fs2 } \\ \\ { ds4 ds2 } >>
  | b'8. \mordent cs16 a4. gs8
  | << { cs8 ds16 e e4. ds8 } \\ \\ { fs,4 cs'4. b8 } >>
  | cs16 as b8 as4. b8
  
  \barNumberCheck #8
  
  | b4 << { b2 } \\ \\ { fs2 } >>
  |
}

upperLowOne = \relative c' {
  | s2.
  | cs4 cs2
  | s4 e2
  | b4 b2
  | ds4 e2
  | cs4 fs4. fs8
  | e8 ds cs ds e4 ~
  
  \barNumberCheck #8
  
  | e8 cs ds2
  |
}

lowerHighOne = \relative c' {
  | << { b4 bs2 } \\ \\ { gs4 gs2 } >>
  | gs4 ~ gs16 b a gs fs e ds e
  | << { b'4 b cs } \\ \\ { fs,4 s as } >>
  | s2.
  | b4 s2
  | s2.
  | s4 fs2 ~
  
  \barNumberCheck #8
  
  | fs4 fs2
  |
}

lowerLowOne = \relative c {
  | e4 ds2
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
  | << { ds8. e16 cs4. \trill bs8 } \\ \\ { b4 fs2 } >>
  | 
  << { bs4 a'2 \arpeggio } \\ \\ 
     { gs,4 fs'2 \arpeggio } \\ \\ 
     { s4 ds2 \arpeggio} 
  >>  
  | gs8. a16 fs4. es8
  | es4 
  << { b'2 \arpeggio } \\ \\ 
     { gs2 \arpeggio } \\ \\ 
     { es2 \arpeggio } 
  >>
  | << { a8. b16 gs4. a8 } \\ \\ { fs4 fs es } >>
  | << { b'8. gs16 es4. fs8 } \\ \\ { fs4 b,2 } >>
  | cs8 [ a' a gs ] fs gs16 es
  
  \barNumberCheck #16
  
  | fs4 fs2
  | cs8. ds16 ds4. \trill cs16 ds
  | e4 << { gs2 } \\ \\ { e2 } >>
  | fs4 e8 ds e cs
  | ds4. cs8 b4
  | << { gs'8. a16 a4. \trill gs16 a } \\ \\ { e4 s2 } >>
  | << { b'4. a16 gs fs e ds cs } \\ \\ { e4 s2 } >>
  | b16 a' gs fs e4 ds8. e16
  
  \barNumberCheck #24
  
  | e4 << { e2 } \\ \\ { b2 } >>
  |
}

upperLowTwo = \relative c' {
  \arpeggioConnect
  | fs4 cs2
  | ds4 bs'2 \arpeggio 
  | cs2 b4
  | cs4 cs2 \arpeggio
  | cs4 d cs
  | b4 gs2
  | r8 cs b2 ~
  
  \barNumberCheck #16
  
  | b8 gs a2
  | a4 a2
  | b4 cs2
  | ds4 cs8 b as4
  | b2 s4
  | b4 e2
  | b4 cs4 ~ cs8 r
  | b4 b2 ~
  
  \barNumberCheck #24
  
  | b4 e,2
}

lowerHighTwo = \relative c' {
  \arpeggioConnect
  | s2. * 2
  | gs=4 a gs8 fs
  | gs4 s2
  | s2. * 3 
  
  \barNumberCheck #16
  
  | s2. * 5
  | s2.
  | s2.
  | s4 r8 fs= gs a ~
  
  \barNumberCheck #24
  
  | a8 fs gs b r4
  |
}

lowerLowTwo = \relative c' {
  | b4 a2
  | gs4 ~ gs16 fs ( a gs fs e fs ds )
  | e2 d4
  | cs4 ~ \stemUp cs16 \slurDown d ( cs b a gs fs gs32 es ) \neutralVoice
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
  | ds8 e \voiceTwo b'2
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
