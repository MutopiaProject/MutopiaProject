\version "2.11.46"

\header {
  title        = "French Suite V: Gigue"
  composer     = "J. S. Bach (1685-1750)"
  opus         = "BWV 816"
  style        = "Baroque"
  copyright    = "Public Domain"
  enteredby    = "Joel Mayes"
  lastupdated  = "2001/Jul/07"
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



Global =  {
%	\set Score.beatLength = #(ly:make-moment 1 4)
	#(override-auto-beam-setting '(end * * * *) 3 16 'Score )
	#(override-auto-beam-setting '(end * * * *) 6 16 'Score )
	#(override-auto-beam-setting '(end * * * *) 9 16 'Score )
	#(override-auto-beam-setting '(end * * * *) 12 16 'Score )

%	#(override-auto-beam-setting '(begin * * * *) 1 16  )
%	#(override-auto-beam-setting '(begin * * * *) 4 16  )
%	#(override-auto-beam-setting '(begin * * * *) 7 16  )
%	#(override-auto-beam-setting '(begin * * * *) 10 16  )

	\key g \major
	\time 12/16
	\partial 16
}

StaffUp = { % Move voice to upper stave
            % VoiceI never moves stave so
            % alway have stems  down
  \change Staff = Upper
  \stemDown
  \tieDown
}

StaffDown = { % Move VoiceII to lower stave
              % always have stems and ties up 
              % to avoid colision with VoiceIII
  \change Staff = Lower
  \stemUp
  \tieUp
}

VoiceIIIDown = { % Return VoiceIII to lower stave
                 % always have stems down to avoid
                 % colision with VoiceII
  \change Staff = Lower
  \stemDown
  \tieNeutral
}


VoiceI =  \relative c'' { \voiceOne
  \repeat volta 2 {
  \oneVoice d16 |
  g b fis g b d, g b fis g b d,
  e c g g'8 c,16 d b g g'8 b,16 \voiceOne
  c d e d e c b d g b a g
  fis8 a16 a8 a16 a8 a16 a8 a16
  d, g b b g d d fis a a fis d
   d8.[ cis\prall]  d[ fis]
  g8 a16 b8 c16 b8 a16 g8 g16
  g2.~
   g8.[ fis] g r16 r d
  e g d e g b, c8. r16 r g'
  a c g a c e, fis a e fis a cis,
  d fis cis d fis a, b d cis d e b
  cis e d e fis cis d fis e fis a g
  a8 r16 cis, e g fis8 e16 fis8 g16
  fis8 e16 d8 d16 d4.~
  d4.~ d8. cis8 b16
  a8. b8 a16 g8. a8 g16
  fis8 g16 a8 b16 cis,8 d16 e8 fis16
  g8 a16 b8 cis16 d,8 e16 fis 8 g16
  a4.~ a~
  a16 g d d'8 g,16 a fis d d'8 fis,16
  g a b a b g fis a g a cis b
  cis e g g e cis a cis e g fis e
  fis e d d e cis
  
  <<{d8.~}{s16 a8~}>> <d a>
  
  }

  \repeat volta 2 {
  s16
  s2.*7 \oneVoice
  r4. r8. r16 r g,
  fis d g fis d a' fis d g fis d a'
  fis a c d,8 b'16 g b d e,8 c'16
  a c e fis, d c b d g d \voiceOne g b
  e g b, c e g, a c fis c fis a
  dis, fis a, b dis fis, g b e b e g
  c, e gis, a c e a8 r16 r8. r16 r 
  g16 fis8.~ fis8 g16 fis8.~
  fis g~ g a~
  a b~ b4.~
  b16 gis a f dis e c gis a f dis e
  dis fis a c b dis e fis g b, e dis
  e4.~ e~ e8. r r4.
  r8. r16 e d c a d c a e'
  c a d c a e' cis e g a,8 fis'16
  d fis a b,8 g'16 e g b cis, a' g
  fis d g fis d a' fis d g fis d a'
  fis a c d,8 b'16 e, g b c,8 a'16
  e fis a b,8 g'16 c, e g a, c e
  fis, a c d, fis a c8.~ c8 c16~
  c8.~ c8 c16~ c8.~ c16 a d~
  d8.~ d16 b e~ e8.~ e16 c fis
  g8.~ g16 f d e8. r16 a, c
  b a g g a fis
  
  <<{g8.~}{s16 d8~}>> <g d>8
  \bar "|."
  }
}

VoiceII =  \relative c'' { \voiceTwo
  \tieDown
  \repeat volta2 {
  s16
  s2.*2
  r4. r8. r16 r g
  d' fis cis d fis a, d fis cis d fis a,
  b g d d'8 g,16 a fis d d'8 fis,16
  g a b a b g fis a c e d c
  b8 d16 d8 d16 d8 d16 d8 b16
  g c e e c g g b d d b g
   a8.[ a] g r 
  s2.*4
  s4. r8. r16 r a 
  a8 a16 a8 fis16 d g b b g d
  d fis a a fis a e8. e8.~
  e8 d16~ d8.~ d8 cis16~ cis8.
  r16 d8~ d16 d8 r16 a8~ a16 a8
  r16 e'8~ e16 e8 r16 b8~ b16 b8
  r16 fis' cis d fis a, d fis cis d fis a,
  b8 r16 r8. r r16 r s
  \StaffDown  e,8.[ e] d8 r16 r8.
  s2.
  \StaffUp r16 r b'' a8 g16~ g a fis~ <d fis>8
  }

  \repeat volta 2 { \oneVoice
  r16
  R2.*2
  r4. r8. r16 r d
  b g c b g d' b g c b g d'
  b d f g,8 e'16 c e g a,8 f'16
  d f a b, g' f e8. r16 r c
  a c e c a c \StaffDown fis,8 d'16 b8 a16
  g b d b g b e,8 c'16 a8.~
  a8 b16 a8.~ a8 b16 a8.~
  a16 fis a fis d g e g b g e a
  fis a c a fis a g b d  b \StaffUp \voiceTwo d g
  c, e g e c e \StaffDown fis, a c a c fis
  \StaffUp b, dis fis dis b dis \StaffDown e, g b \StaffUp g b e
  a, c e c a c \StaffUp e a c a fis a
  b8.~ b8 a16 b8.~ b8 a16
  b dis fis dis b e cis e g e cis fis
  dis fis a fis dis fis e g dis e g dis
  e8 r16 r8. r4.
  r r8. r16 r a,
  g e a g e b' g e a g e b'
  gis b d e,8 c'16 a c e d,8 d'16
  b d f gis,8. r16 r f e8.~
  e8 f16 e8. f16 cis e cis a d
  b d fis d b e cis e g e cis e
  d8 b'16 a8 cis,16 d8 b'16 a8 cis,16
  d fis a fis d g c, e g e c fis
  b, d fis d b e a, c e c a c
  d \StaffDown a fis d8 r16 \StaffUp r r 
  b''16 a8.
  d,8 b'16 a8. d,16 fis a fis8.
  e16 g b g8. fis16 a c a8.
  r16 d b g8. r16 c a fis8.
  r16 r e d8 c16 r d b~ b8
  }
}

VoiceIII =  \relative c' { \voiceTwo
  \repeat volta 2 {
  \oneVoice
  r16
  R2.*5
  r4. r8. \clef treble r8 d16
  g b fis g b d, g b fis g b d,
  e c g g'8 c,16 d  b g g'8 b,16
  c d e d e c \clef bass b d a b d g,
  c8 b16 c8 g16 a c g a c e,
  fis 8 e16 fis 8 a16 d fis cis d fis a,
  b d a b d fis, g8 e16 fis 8 g16
  a8 fis16 g8 a16 b8 cis16 d8 b16
  cis \StaffUp \voiceTwo e a \VoiceIIIDown \oneVoice r8 a,,16 d fis cis d fis a,
  d fis cis d fis a, b g d d'8 g,16
  a fis d d'8 fis,16 g a b a b g
  fis g a g a fis e fis g fis g e
  d8 e16 fis8 g16 a8 b16 cis8 d16
  e,8 fis16 g8 a16 b8 cis16 d8 e16
  fis8 g16 fis8 e16 fis8 g16 fis8 d16
  d g b b g d d fis a a fis d
  \voiceTwo  e8.[ cis8.] d8 e16 fis8 g16
  \oneVoice a cis a e a e cis e cis a b cis
  d8 g16 a8 a,16 \voiceTwo \tieDown d,8.~ d8 \tieNeutral
  }

  \repeat volta 2 {
  \oneVoice a''16
  fis d g fis d a' fis d g fis d a'
  fis a c d,8 b'16 g b d e,8 c'16
  a c e fis, d' c b g e g d b
  g8 e'16 d8 fis,16 g8 e'16 d8 fis,16
  g b d b g c a c e c a d
  b d f d b d c e g e c e
  fis,8.\voiceTwo  r16 r a b d fis d b d
  e,8. r16 r g a c e c a c 
  \tieDown d8.~ d8 cis16 d8.~ d8 cis16 \tieUp
  d8. r r4.
  R2.*3
  \oneVoice r4. r8. r16 r e
  dis b e dis b fis' dis b e dis b fis'
  dis fis a b,8 g'16 e g b cis,8 a'16
  fis a c dis, b' a g e b e b g
  c8.~ c16 b c a b c a b c
  fis, a c dis fis a g fis e b'8 b,16
  e8 c'16 b8 dis,16 e8 c'16 b8 dis,16
  e gis b gis e a fis a c a fis b
  gis b d b gis b a8.~ a8 gis16
  a8.~ a8 gis16 a8 r16 r8.
  R2.*4 
  \voiceTwo r8. r16 r 
  a, \oneVoice fis d g fis d a'
  fis d g fis d a' fis a c d,8 b'16
  g b d e,8 c'16 a c e fis, d' c
  b d g b g b c a fis d fis a
  g8 c,16 d8 d,16 \voiceTwo \tieDown g8.~ g8
  }
}

VoiceIIIExtra =  \relative c, {
  \voiceOne
  \override Staff.NoteCollision   #'merge-differently-dotted = ##t
  \repeat volta 2 {
  s16
  s2.*23
  s4. d16 fis a d8
  }

  \repeat volta 2 {
  s16
  s2.*31
  s4. g,16 b d g8
  }
}

\score {
  \context PianoStaff <<
    \context Staff = Upper <<
      \Global  
      \clef treble
      \context Voice = "i" \VoiceI
      \context Voice = "ii" \VoiceII
    >>
    \context Staff = Lower <<
      \Global
      \clef bass
      \context Voice = "iiia" \VoiceIII
      \context Voice = "iiib" \VoiceIIIExtra
    >>
  >>
  \midi { }
  \layout { }
}

