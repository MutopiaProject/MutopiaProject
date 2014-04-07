\version "2.18.2"
\language "english"

\header {
  title        = "French Suite VI: Courante"
  composer     = "J. S. Bach (1685-1750)"
  opus         = "BWV 814"
  style        = "Baroque"
  lisense      = "Creative Commons Attribution-ShareAlike 4.0"
  copyright    = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  lastupdated  = "2014/Apr/05"
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
}

lowerVoice = {
  \stemDown
  \tieDown
}

neutralVoice = {
  \stemNeutral
  \tieNeutral
}

staffUp = \change Staff = "upper" 

staffDown = \change Staff = "lower"

% Repeat one

highVoiceOne = \relative c'' {
  \staffUp \upperVoice
  \partial 16 e16 
  | e8 r r16 b cs ds e fs gs e
  | b'8 a16 gs fs e ds cs b r r8
  | r16 b' gs e cs a' fs ds b a' gs fs
  | gs16 e ds cs b a gs fs e r r8
  | \neutralVoice r16 gs' e cs as e' cs as fs e' ds cs
  | ds16 fs ds b a cs a fs ds cs' b a 
  | gs8 r r16 \upperVoice fs gs a b cs ds b
  
  \barNumberCheck #8

  | e16 r r8 r16 ds e fs gs as b gs
  | as16 fs cs r r cs as fs s4
  | s8 b16 ds ~  <ds fs>8 s8 s4
  | s8 b16 ds ~ <ds e>8 s s4
  | \neutralVoice r16 fs,=' cs' e ds cs b ds gs, cs as e
  | ds16 b' fs ds b fs' gs as b fs b e,
  | ds16 b' fs ds b fs' gs as b fs b e,
  | ds gs b ds e, ds' cs b e, cs' b as
  
  \barNumberCheck #16
  
  | \upperVoice b8 r r16 cs, ds fs ~ <fs b>8. % partial bar, -1/16
}

middleVoiceOne = \relative c' {
  \staffUp \lowerVoice
  \partial 16 r16
  | r16 e fs gs a r r8 r4
  | ds,8 r r4 r16 a' gs fs
  | gs8 e a a, ds b
  | e8 r r4 s
  | s2. * 2
  | s2 r8 ds='
  
  \barNumberCheck #8
  
  | cs16 gs' a b cs r r8 r cs,
  | fs8 r16 as fs8 r e16 gs fs e
  | ds16 fs b8 ~ b r r4
  | \staffDown \upperVoice gs,16 \staffUp \lowerVoice e' b'8 ~ b r r4
  | s2. * 4
  
  \barNumberCheck #16
  
  | s4 s8 ds,=' ~ ds8. % partial bar, -1/16
}

lowVoiceOne = \relative c' {
  \partial 16 s16
  | s2. * 3
  | s2 r16 ds cs b
  | cs8 ds cs b as fs
  | b8 b, cs fs b, ds
  | e16 b'cs ds e r r8 s4

  \barNumberCheck #8
  
  | s2. * 2
  | s4 r16 e=' ds cs b a gs a
  | gs8 s r16 a gs fs e ds cs ds
  | as8 fs b ds e fs
  | b,8 cs ds e ds cs
  | b8 cs ds e ds cs
  | b8 ds gs e fs fs,
  
  \barNumberCheck #16
  
  | r16 b ds fs b4 ~ b8. % partial bar, -1/16
}

% Repeat two

highVoiceTwo = \relative c'' {
  \upperVoice fs16 % partial bar
  | fs4 ~ <fs ds>8 r r4
  | s4 r16 bs, ds fs e ds cs ds
  | e16 gs, a e' ds a gs ds' cs gs fs cs'
  | bs4 ~ bs8 r r4
  | \neutralVoice r16 d b gs es b' gs es cs b' a gs
  | a16 fs es fs bs fs cs' fs, ds' fs, gs ds
  | e16 cs' a fs ds a' fs ds bs a' gs fs
  
  \barNumberCheck #24
  
  | e16 ds cs bs cs ds e fs gs a b a 
  | b8 r r16 fs gs a b cs d b
  | cs4 r8 a cs e
  | a2. ~ \trill
  | a16 b, fs' a gs fs e gs cs, fs ds a
  | gs16 e' b gs e b' cs ds e b e a,
  | gs16 e' b gs e b' cs ds e b e a,
  | gs b e gs a, gs' fs e a, fs' e ds  
  
  \barNumberCheck #32
  
  | e8 r r16 \upperVoice fs, gs b ~ <b e>8.
}

middleVoiceTwo = \relative c'' {
  \upperVoice s16 % partial bar
  | s2.
  | bs,16 ds fs a gs8 r r4
  | s2.
  | \lowerVoice r16 gs=' fs e ds8 s s4
  | s2. * 3
  
  \barNumberCheck #24
  
  | s2. * 8
  
  \barNumberCheck #32
  
  | \lowerVoice s4 r8 gs=' ~ gs8.
}

lowVoiceTwo = \relative c'' {
  \staffUp \lowerVoice r16 % partial bar
  | r16 e ds cs r b a gs fs e ds fs
  | bs,4 ~ bs8 s s4
  | \staffDown \neutralVoice cs8 cs, b b' a a,
  | gs8 r r16 cs' bs as gs fs es fs
  | es4 cs'8 b cs cs,
  | fs8 a ds, fs bs, bs'
  | cs8 fs, a ds, gs gs,
  
  \barNumberCheck #24
  
  | cs8 cs, r4 r
  | gs''=16 b cs ds e r r8 r4
  | r16 a=' e cs a e' cs a gs b a gs
  | fs16 fs' cs a gs cs a fs e gs fs e
  | ds8 b e gs a b
  | cs8 ds16 e gs,8 a gs fs
  | e8 fs gs a gs fs
  | e8 gs cs a b b,
  
  \barNumberCheck #32
  
  | r16 e gs b e4 ~ e8.
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
    \new Voice { \repeat volta 2 { \voiceOne \highVoiceOne } }
    \new Voice { \repeat volta 2 { \voiceTwo \middleVoiceOne } }
  >> <<
    \new Voice { \repeat volta 2 { \voiceOne \highVoiceTwo } }
    \new Voice { \repeat volta 2 { \voiceTwo \middleVoiceTwo } }
  >>
}

lower = {
  \clef bass
  \global
  \new Voice { \repeat volta 2 \lowVoiceOne }
  \new Voice { \repeat volta 2 \lowVoiceTwo }
}

\score {
  \new PianoStaff <<
    \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  >>
  \layout { 
  } 
  \midi { 
    \tempo 4 = 100
  }
}