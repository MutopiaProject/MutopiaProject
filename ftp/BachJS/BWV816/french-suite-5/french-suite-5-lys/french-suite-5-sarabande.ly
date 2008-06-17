\version "2.11.46"

\header {
  title        = "French Suite V: Sarabande"
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
}

noCut = {
   \override Grace.Stem   #'stroke-style = #'()
}

VoiceI =  \relative c'' {
   \repeat volta 2 {
      b4.\mordent  c8[ a8.\prall g16]
      d'4 \grace {
\override Stem   #'stroke-style = #"grace"
  \noCut d
  \revert Stem #'stroke-style }
 e2\mordent
      \grace {
\override Stem   #'stroke-style = #"grace"
  \noCut g,8
  \revert Stem #'stroke-style }
fis4.  c'8[ b\mordent a]
      a2.
      fis'4.\mordent   g8[ e8.\prall d16]
      g4 c,4.\mordent d16 e
      a,4 d8. c16 b8. c16
      b4.\prall a8 g4
      b'4.  g8[ fis8.\prall e16]
      a4 d,4. fis8
      b,4~ b16 d cis b e g fis e
      cis4.\prall b8 a4
      g16\prall fis g8 e'4. d16 cis
      g'8 fis16 e a8. fis16 \grace {
\override Stem   #'stroke-style = #"grace"
  \noCut e8
  \revert Stem #'stroke-style }
 d4~
      d8. b16 cis4.\trill d8
      d2.
   }
   \repeat volta 2 {
      fis4. g8 a8. fis16
      d4 g4. a16 b
      e,4.  d8[ c8. b16]
      c4. b8 a4
      c'4. b16 a b8. e,16
      \grace {
\override Stem   #'stroke-style = #"grace"
  \noCut e8
  \revert Stem #'stroke-style }
 dis4.\prall e16 fis b,8. a'16
      g8. fis16 dis4.\trill e8
      e2.
      b4.\mordent  c8[ a8.\prall g16]
      f'4\mordent \grace {
\override Stem   #'stroke-style = #"grace"
  \noCut f
  \revert Stem #'stroke-style }
 e2
      d8. c32 b a'8. g16 f e d c
      e4 d16\prall c d8 c4
      \grace {
\override Stem   #'stroke-style = #"grace"
  \noCut b8
  \revert Stem #'stroke-style }
 a4.  b8[ g8.\prall fis16]
      d'4 \grace {
\override Stem   #'stroke-style = #"grace"
  \noCut d
  \revert Stem #'stroke-style }
 e2\mordent
      d,16 e fis g a b c a \times 2/3 { b[ a g]} \times 2/3 { a[ g fis]}
      g4 fis8.\prall e16 d4
      d'4.\mordent e8 c8.\prall b16
      e4 fis4.\upprall e16 fis
      g4~ g8 a16 b a fis g8
      fis4.\prall e8 d4
      c16\prall b c8 fis,4. g16 a
      d,8 e16 fis g a b c d g fis e
      \times 2/3 { d[ c b]} \times 2/3 { e[ d c]} b4 a8.\prall g16
      g2.
   }
}

VoiceII =  \relative c' { \voiceOne
   \repeat volta 2 {
      r4 g2~
      g4. g8 a b
      c4 a g~
      g8 e fis a d4
      r a2
      r8 d, g2~
      g4 fis8 e fis4
      g2.
      r8 b e4 d
      cis r8 a d4
      g,2.~
      g8 e a g fis4
      e~ e8 e a4~
      a8 d, cis4 d8 e
      fis4 e8 fis g4~
      g8 fis16 e fis4 r
   }
   \repeat volta 2 {
      r4 d'2~
      d8 d c b4.
      c4. b8 a gis
      a4 r r
      r8 c fis4 r8 b,
      r a c4 fis,
      e8 fis~ fis g a4~
      a8 g16 fis g4 r
      g2.~ g4. e8 f g
      a b c2~
      c4 b c
      fis,2.
      g2 r4
      r8 a, d4. e8
      d b' a g fis4~
      fis8 d g2~
      g8 e a2
      r8 d, r e a4~
      a8 a d c b a
      g4 a r
      r r8 c, b c
      d g~ g e fis c'~
      c b16 a b4 r
   }
}

VoiceIII =  \relative c { \voiceTwo
   \repeat volta 2 {
      g2 e'4
      b c2
      a'4 fis g
      d2 r8 d8
      c2 c4
      b4 e c
      d2.
      r4 d g,
      g'2.~
      g8 g fis2~
      fis8 fis e d cis b 
      a2 r8 d8~
      d d cis4. b8
      a4. g8 fis4~
      fis8 g a2
      d4. d8 d,4
   }
   \repeat volta 2 {
      d'2 c'4
      b2 a8 g
      r c, d4 e
      r8 e a, b c e
      a4. a8 g4
      fis4. e8 dis4
      e8 a, b2
      e4. e8 e,4
      e'4 d c
      b c2
      f4. g8 a f
      g2 c,4~
      c8 e d c b a
      b d c b a g
      fis4. fis8 g c
      d2~ d8 c
      b4. b8 a g
      c4. a8 d c
      b4 cis4. a8
      d2.
      e8 d c b a g
      fis c' b a g a
      b c d2
      g4. g8 g,4
   }
}

\score {
   \context PianoStaff <<
      \context Staff = Upper <<
         \Global
	 \clef treble
         \context Voice = "i" \VoiceI
      >>
      \context Staff = Lower <<
         \Global
	 \clef bass
	 \context Voice = "ii" \VoiceII
	 \context Voice = "iii" \VoiceIII
      >>
   >>
   \layout { }
   
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 84 4) } }


}
 



