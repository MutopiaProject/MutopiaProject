\version "2.18.2"
\language "english"

\header {
  title        = "French Suite VI: Allemande"
  composer     = "J. S. Bach (1685-1750)"
  opus         = "BWV 817"
  style        = "Baroque"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  lastupdated  = "2014/Apr/02"
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

% Repeat 1

highVoiceOne = \relative c'' {
  \partial 16 b16
  | gs16 ( a b e ) e, e' fs, e' gs, ( a b e ) e, e' fs, e' 
  | gs,16 ( e' fs gs ) a, ( gs' fs e ) ds ( e fs b ) b, b' d, b'
  | cs,16 ds e a a, a' cs, a' b, a' e gs a, b cs fs
  | gs,16 e' b e fs, gs a ds e4 ~ e16 gs ds fs
  | e16 ds cs e gs cs, e b as gs fs as cs fs, e' fs,
  | ds'16 cs b ds fs b, ds a gs fs e fs b e, ds' e,
  | cs'16 ds e gs fs e ds cs b' as gs fs e ds e cs
  
  \barNumberCheck #8
  
  | ds8. \prall e16 cs8. \mordent b16 b8 fs' ds fs16 as,
  | b8 ds16 gs, a8 b16 fs gs8 e'4 cs8
  | as8 fs'4 ds8 b gs' ~ gs16 as b gs
  | e16 ds e8 ~ e16 gs fs e ds cs b gs' b,8 as16. b32
  | b16 cs ds fs b fs ds fs b,4. r16 \break % partial, -1/16
}

lowVoiceOne = \relative c {
  \partial 16 r16
  | r8 e gs b e e, gs b
  | e ds cs a b a gs e
  | a8 gs fs e ds e cs a
  | b8 gs a b r16 e, gs b e8 bs
  | cs8 gs' e cs fs fs, as cs
  | b8 fs' ds b e e, gs b
  | e8 cs ds e fs gs as fs
  
  \barNumberCheck #8
  
  | b8 e, fs fs, b16 cs ds fs b fs b e,
  | ds16 e fs b b, b' ds, b' e, fs gs cs cs, cs' e, cs'
  | fs,16 gs as ds ds, ds' fs, ds' gs, as b e e, e' gs, e'
  | as,16 b cs fs fs, fs' as, fs' b,8 gs e fs
  | b2 ~ b16 fs ds fs b,8. \break % partial, -1/16
}

% Repeat two

highVoiceTwo = \relative c'' {
    fs16 % partial bar
  | ds16 e fs b b, b'cs, b' ds, e fs b b, b' cs, b'
  | ds,16 fs gs a b, a' gs fs gs fs e gs b, gs' gs, gs'
  | as,16 bs cs fs ds fs bs, fs' e ds cs e gs, e' e, e'
  
  \barNumberCheck #16
  
  | fs,16 gs a d b d gs, d' cs a b cs fs cs a' cs,
  | d16 e fs a d, fs a, d fs, e d fs a fs d' a
  | ds16 e fs a ds, fs bs, ds fs, e ds fs bs fs ds' bs
  | gs'16 fs e gs cs, gs' a, gs' fs e ds fs bs, fs' gs, fs'
  | e16 ds cs e gs, cs ds bs cs8 gs'16 e cs8 e16 gs,
  | a8 cs16 a fs8 a16 cs, ds8 fs'16 ds b8 ds16 fs,
  | gs8 b16 gs e8 gs16 b, cs8 a'4 fs8
  | ds8 b'4 gs8 e cs' ~ cs16 ds e cs
  
  \barNumberCheck #24
  
  | a gs a8 ~ a16 cs b a gs fs e cs' fs,8. \trill e16
  | e16 ( fs gs a ) b e, d' e, cs' b a cs e a, cs gs
  | fs16 ( gs as b ) cs fs, e' fs, ds' cs b ds fs ds a' fs
  | ds16 e fs a gs fs e ds b' a gs fs e ds cs b
  | e16 b cs a gs e' fs, ds' e4. r16 % partial, -1/16
}

lowVoiceTwo = \relative c {
    r16 % partial bar
  | r8 b ds fs b b, ds fs
  | b8 fs ds b e e, r e'' ~
  | e8 ds16 cs bs8 gs cs cs, r cs' ~
  
  \barNumberCheck #16
  
  | cs8 b16 a gs8 e a a, r a'16 g 
  | fs8 a16 g fs8 fs, r a'16 g fs8 a16 g
  | fs8 fs, r fs'16 gs a8 fs ds gs16 fs
  | e8 gs16 fs e8 fs16 e ds8 fs16 e ds8 e16 ds 
  | cs8 fs gs gs, cs16 ( ds e gs ) cs gs cs e,
  | fs16 ( gs a cs ) a cs fs, a b, ( cs ds fs ) b fs b ds,
  | e16 ( fs gs b ) gs b e, gs a, ( b cs fs ) fs, fs' a, fs'
  | b,16 ( cs ds gs ) gs, gs' b, gs' cs, ( ds e a ) a, a' cs, a'
  
  \barNumberCheck #24
  
  | ds,16 ( e fs b ) b, b' ds, b' e,8 cs a b
  | e,8 b'' gs e a a, cs e
  | as,8 cs' as fs b b, ds fs
  | b,8 fs' ds b a a' r fs
  | gs8 a b b, e16 e, gs b e8. % partial, -1/16
}

global = { 
  \key e \major
  \time 4/4
  \accidentalStyle Score.piano-cautionary
}

upper = {
  \clef treble
  \global
  \new Voice { \repeat volta 2 \highVoiceOne }
  \new Voice { \repeat volta 2 \highVoiceTwo }
}

lower = {
  \clef bass
  \global
  \new Voice { \repeat volta 2 \lowVoiceOne }
  \new Voice { \repeat volta 2 \lowVoiceTwo }
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { 
  } 
  \midi { 
    \tempo 4 = 80
  }
}
