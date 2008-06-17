\version "2.11.46"

\header {
  title        = "French Suite V: Loure"
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


Global = {
  
  \key g \major
  \time 6/4
  \partial 8*3
  \set PianoStaff.connectArpeggios = ##t
}

StaffUp = {
  \change Staff = Upper
  \stemDown
}

StaffDown = {
  \change Staff = Lower
  \stemUp
}

NoCut = {
  \override Grace.Stem   #'stroke-style = #'()
}
VoiceI =  \relative c'' { \voiceOne
  \repeat volta 2 {
    d8 b4
    \grace {
\override Stem   #'stroke-style = #"grace"
   \NoCut a8
  \revert Stem #'stroke-style }
 g2.~ g4. a8 b4
    a2.~ a4. b8 c4
    d4. g8 e4 c4.\prall b8 c16 a b8
    b4.\prall a8 g4 g4.\arpeggio b8 d4
    g4.\mordent a8 b4 \grace {
\override Stem   #'stroke-style = #"grace"
   \NoCut d,8
  \revert Stem #'stroke-style }
 c4. e8 a4
    dis,16 e fis g a c b a g a fis8 g2.~
    g4. e8 fis 4 a, b cis 
    d2.~ d4.
  }
  \repeat volta 2 {
    a'8 fis4
    \grace {
\override Stem   #'stroke-style = #"grace"
   \NoCut e8
  \revert Stem #'stroke-style }
 d2.~ d4. e8 fis4
    g2.~ g4. a8 b4
    c16 b a gis a8. e16 f4 \grace {
\override Stem   #'stroke-style = #"grace"
   \NoCut c8
  \revert Stem #'stroke-style }
 b4. f'8 e4
    c4.\prall b8 a4 a4~ a16 c b a e'4
    fis,4. a8 c4~ <c d,>~ d,16 fis e d b'4
    a4. e'8 a4~ a~ a16 a g fis g4
    c,16 b a g fis e' d c d4 d, e fis g2.~ g4.
  }
}

VoiceXa =  \relative c' {
  \shiftOn
  \repeat volta 2 {
   s4.
    s1.*3
    s2. d4.\arpeggio s4.
    s2. a'2 s4
    s1.*2
    a2.~ a4.
  }
  \repeat volta 2 {
    s4.
    s1.
    \stemUp \tieUp \shiftOff
    b8 \rest  d8[ b g] s1
    \revert Rest #'extra-offset
    s1.*5
    \shiftOn
    d2.~ d4.
  }
}
VoiceXb =  \relative c'' {
  \repeat volta 2 {
    s4.
    s1.*7
    s1 s8
    }
  \repeat volta 2{
    \stemUp
    \tieUp
    s4.
    s1.
    s4
    \override Stem   #'thickness = #0.0
    \override NoteHead   #'transparent  = ##t
    b4 ~
    \revert Stem #'thickness
    \revert NoteHead #'transparent
    \shiftOnn
    b~ b4  s2
    s1.*5
    s1 s8
  }
}

VoiceXc =  \relative c'' {
  \repeat volta 2 {
    s4.
    s1.*7
    s1 s8
    }
  \repeat volta 2{
    \stemUp
    \tieUp
    s4.
    s1.
    s8
    \override Stem   #'thickness = #0.0
    \override NoteHead   #'transparent  = ##t
    \override Dots   #'transparent = ##t
    d4.~
    \revert Stem #'thickness
    \revert NoteHead #'transparent
    \revert Dots #'transparent
    \shiftOn
    d4~ d4 s2
    s1.*5
    s1 s8
    }
}
VoiceII =  \relative c' { \voiceTwo
  \repeat volta 2 {
    s4.
    \StaffDown \stemDown r4 r8 d8 b4 \grace {
\override Stem   #'stroke-style = #"grace"
   \NoCut a8
  \revert Stem #'stroke-style }
 g4. fis8 g16 b \StaffUp d g
    fis2.~ fis4. g8 a4~
    a g2~ g4 fis 2
    g2. b,4.\arpeggio s
    s2. e2 s4
    s2. r4 r8 e'8 cis4 \grace {
\override Stem   #'stroke-style = #"grace"
   \NoCut b8
  \revert Stem #'stroke-style }
 a2. g4 fis e
    fis2.~ fis4.
  }
  \repeat volta 2 {
     s4.
     r4 r8 a fis4~ fis4. g8 a4
     \tieDown
     d,4. g8~ g4~ g4 s2
     \tieNeutral
     r4 r a~ a2 gis4
     a2 s1
     s1.
     s2. b2.
     s2. c,4 b a
     b2.~ b4.
   }
}

VoiceIII =  \relative c { \voiceThree
  \repeat volta 2 {
    r8 r4
    s1.
    r4 r8
    a fis4 \grace {
\override Stem   #'stroke-style = #"grace"
   \NoCut e8
  \revert Stem #'stroke-style }
 d4. d'8 c4
    b e c a16 c b a d4 d,4
    g b d g2 r4
    r16 g, a b c d e fis g b a g g4~ g16 b a g fis g e8
    fis4 dis b \stemDown r16 e g fis e d cis d e cis d e
     fis,2 s4 s \stemNeutral g a
    d4. a8 fis4 d4.
  }
  \repeat volta 2 { \stemDown
  s4.
  s1.
  s2. f'2.
  e4 f d e2.
  r4 e c a b c
  \stemNeutral
  d,8 a' d e16 fis e8 fis16 g fis8 g16 a d,8 fis \stemDown \tieDown g4~
  g8[ g fis e dis e] dis e16 fis s2
  r4 r8 fis c4 b c d
  g,4. b8 d4 g4.

  }
}

VoiceXd =  \relative c {
  \stemUp
  \repeat volta 2 {
  s4.
  s1.*6
  r8  a[ b cis d e] fis4 s2
  s1 s8
  }
  \repeat volta2 {
    r8 r4
    \stemUp \tieUp
    s2. c'2.
    b4. d8 d4~ d4. c8 d4~
    d c b~ b b e
    a,2. s2.
    s1 s4 r8 b
    c4 s2. b,8 dis e fis16 g
    a2.~ a4 g s
    s1 s8
  }
}


\score {
  \context PianoStaff <<
    \context Staff = Upper <<
      \Global
      \clef treble
      \context Voice = "i" \VoiceI
      \context Voice = "ia" \VoiceXa
      \context Voice = "ib" \VoiceXb
      \context Voice = "ic" \VoiceXc
      \context Voice = "ii" \VoiceII
    >>
    \context Staff = Lower <<
      \Global
      \clef bass
      \context Voice = "iiia" \VoiceIII
      \context Voice = "iiib" \VoiceXd
    >>
  >>
  \layout { }
  \midi { }
}
