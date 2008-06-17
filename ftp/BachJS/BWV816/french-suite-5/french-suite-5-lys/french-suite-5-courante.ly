\version "2.11.46"

\header {
  title        = "French Suite V: Courante"
  composer     = "J. S. Bach (1685-1750)"
  opus         = "BWV 816"
  style        = "Baroque"
  copyright    = "Public Domain"
  enteredby    = "Joel Mayes"
  lastupdated  = "2001/July/10"
  date         = "1722"

  mutopiatitle       = "French Suite no. 5 in G major"
  mutopiacomposer    = "BachJS"
  mutopiaopus        = "BWV 816"
  mutopiainstrument  = "Harpsichord, Piano"
  mutopiasource      = "Unknown"
  maintainer         = "Joel Mayes"
  maintainerEmail    = "joel_mayes@dingoblue.net.au"

 footer = "Mutopia-2008/06/17-99"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

Global = {
   
   \key g \major
   \time 3/4
   \partial 16
}

StaffUp = {
   \change Staff = Upper
   \stemDown
   \tieDown
}

StaffDown = {
   \change Staff = Lower
   \stemUp
   \tieUp
}

StaffDownII = {
   \change Staff = Lower
   \stemDown
   \tieDown
}

VoiceI =   \relative c'''  { 
   \repeat volta 2 {
      g16 \voiceOne
      g8 fis16 e d c b a b d a c
      b8 g b d g fis
      \oneVoice
      g16 a b g d f e d e a b c
      fis,8 d r16 e d c b d a d
      g, d' fis, d' g, d' c b a g f d'
      e, d' d, d' e, d' c b a g a c
      fis, e d e fis g a b c a d a
      \voiceOne b2 \oneVoice r8 b
      e16 fis g e b e fis g dis a' g fis
      g8 e g d cis a'
      d,16 e fis d a c b a b e fis g
      cis,8 a r a16 b cis d e cis
      d e a, cis d e a, d fis, d' a e'
      d e b cis d e b d g, d' b d
      cis d e cis g b a b fis d' e, cis'
      d8 cis16 b a g fis e
      \voiceOne \set autoBeaming = ##f  d8.
   }
   \repeat volta 2 {
      fis'16
      \set autoBeaming = ##t
      fis4 \voiceOne r8 d16 e fis g a fis
      g8 fis16 e d c b a g b d f
      e d c b a fis' g a g fis g e
      dis8 b r b'16 a g fis e dis
      e8 fis16 dis e8 fis16 dis \voiceOne e4~
      e2~ e8 a
      g fis4 e8~ e16 a, e' dis
      e2~ e8 e \oneVoice
      a,8 b16 cis d e fis g a fis g e
      fis g fis e d e fis g a b c a
      b fis g d e b c g a c e, g
      fis a d, e fis g a b c d e fis
      g a d, fis g a d, g b, g' d a'
      g a e fis g a e g c, g' e g
      fis g a fis c e d c b g' a, fis'
      g8 fis16 e d c b a \voiceOne g8.
   }
}

VoiceII =  \relative c''{ \voiceThree
   \repeat volta 2 {
      s16
%      \stemUp \shiftOn
      d8 s8 s2
      s2.*6
%      \stemDown
      \voiceTwo r16 g, fis e d \StaffDown c b a g b fis a
      \oneVoice g8 e g e b' b,
      e16 fis g e cis g' b, g' a, g' fis e 
      fis8 d fis d g e
      a g16 fis e d cis b a e' g, e'
      fis,8 e fis a d fis,
      g a b g e g
      a b cis d \voiceOne r g
      fis4 fis8 a \StaffUp \voiceTwo d8.
   }
   \repeat volta 2 {
      r16
      <d' a>4 s2
      s2.*3
      s2 r8 b
      c8 d16 b c8 d16 b c8 c
      b a g4 fis
      r8  c'[ b a] g r
      s2.*7
      s2 s8.
   }
}

VoiceIII =  \relative c''{ \voiceTwo
   \tieDown
   \repeat volta 2 {
      s16
      b4 s8  d,8[ g fis]
      g fis16 e d \StaffDownII \oneVoice c b a b d a c
      b8 g b g c a
      d c16 b a g fis e d fis c fis
      b,8 a b g a b
      c b c a b c
      d c16 b a g fis e d fis a d
      g,4 s2
      s2.*6
      s2 \voiceTwo a4
      r8 d4.~ d8.
   }
   \repeat volta 2 {\oneVoice
      r16
      d'8 c16 b a g fis e d a' c, a'
      b,8 d g a b g
      c e c b c a
      b a16 g fis e dis cis b fis' a, fis'
      g, a fis a g a fis a g b e, g
      a b g b a b g b a c fis, a
      b8 cis16 dis e fis g a b8 b,
      e8 fis16 g a b cis dis e cis d b
      cis d cis b a g fis e d b' e, cis'
      d8 d,16 e fis g a b c d e fis
      g8 b, c e c a
      d c16 b a g fis e d a' c, a'
      \stemUp
      b,8 a b d g d
      c d e c a c
      d e fis g \voiceOne r c
      b4  b8[ d \StaffUp \voiceTwo g8.]
   }
}

VoiceIV  =  \relative c' { \oneVoice
   \repeat volta 2 {
      r16
      g4 s8 s4.
      s2.*14
      s2 s8.
   }
   \repeat volta 2{
      s16
      s2.*14
      s2 \voiceTwo d4
      r8 g4.~ g8.
   }
}

\score {
   \context PianoStaff <<
      \context Staff = Upper <<
         \Global
	 \clef treble
         \new Voice = "i" \VoiceI
         \new Voice = "ii" \VoiceII
         \new Voice = "iii" \VoiceIII
      >>
      \context Staff = Lower <<
         \Global
	 \clef bass
	 \new Voice = "iv" \VoiceIV
      >>
   >>
   \layout { }
   
  \midi { \context {\Score tempoWholesPerMinute = #(ly:make-moment 132 4) } }


}
