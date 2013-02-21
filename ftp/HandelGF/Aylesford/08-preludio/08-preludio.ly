\version "2.16.1"
#(set-global-staff-size 16)
\header {
  title             = "Preludio"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Allegro moderato"
  mutopiatitle      = "Preludio"
  mutopiacomposer   = "HandelGF"
  mutopiainstrument = "Harpsichord, Piano"
  date              = "18th Century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"

 footer = "Mutopia-2013/02/21-156"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key d\minor \time 4/4}


MDI =  \relative c'' {
  d16 f cis e d f a, d bes d a d bes d f, a
  g bes f a g bes e, f g a e g f a d, f
  e f e d cis d cis b a r r8 r4
  r1
  
  r
  r16 d f g a g a e f4 e
  d16 a' bes c d c d a <g bes>8-. <f a>-. <e g>4
  f16 c' d e f e f c <f, bes d>4 d'16 c d a
  
  bes d e f g f g d <a cis>4 a'16 f g a
  bes a g f e8.\prall d16 d a f a d,4
  d'8-. f-. e-. d-. a'16 f e f g f g a
  f b, a b cis b cis d a f e f g f g a
  
  f d cis d e d e f d g f g e f g a
  f g a bes <cis, g'>8 <d f>-. <cis e>-. cis'-. b-. a-.
  d16 b a b cis b cis d e f d e cis8.\prall d16
  <<{d4 r} \\ {d,8-. f-. e-. d-.}>> a'8-. cis-. b-. a-.
  
  d16 b a b cis b cis d <<{e4 r} \\ {cis8 e,16 f g f g a}>> |
  f8-. f'-. e-. d-. a'16 f e f g f g a |
  f8-. e-. <<{d4 <a cis>8-. a-. g-. a-.} \\ {f4 e8 e16 f d8 cis} \\ \\ {a'8. b16}>> |
  f16 d cis d e d e f a8 cis-. b-. a-. |
  
  d16 b a b cis b cis d 
  <<{
    f8 e16 d cis8. d16 |
    d2
  } \\ {
    a8 g <e a>4 |
    r16 a f a d,4
  }>>
  r2\fermata |
  \bar "|."
  }
  
MSI =  \relative c' {
  r1
  r
  r2 \change Staff = "up" \voiceTwo a16 \change Staff = "down" \oneVoice e f g f g f e
  d f cis e d f a, d bes d a d bes d f, d'
  
  g, bes a g f g f e d f g e a8. a16
  d,4 r r16 d' f g a g a e
  f8-. e-. d8. f16 g g, a bes c bes c g
  a8-. g-. f4 bes16 f' g a bes a bes f
  
  g8-. f-. e8. g16 a bes a g f d e f
  g a bes g a8 a,-. d4 r8 d,
  r2 \clef violin a'''8-. cis-. b-. a-.
  d,-. f-. e-. d-. \clef bass a-. cis-. b-. a-.
  
  d16 b a b cis b cis d b e d e cis8 a-.
  d,-. f-. e-. d-. a'16 f e f g f g a
  f d cis d e d e f g a bes g a8 a,-.
  d4 r \clef violin a''16 f e f g f g a
  
  f8-. g-. a8. b16 \clef bass a,,8-. cis-. b-. a-.
  d16 b a b cis b cis d cis8. d16 e8. cis16
  d16 cis d e f e f g a8-. cis-. b-. a-.
  d16 b a b cis b cis d cis8 a-. b-. cis-.
  
  f,16 d cis d e d e f d8-. g-. a-. a,-.
  <<{r4 r16 a' f a} \\ d,2>> d4 d,8 r\fermata |
  }

\score { {
  \new PianoStaff <<
    \set PianoStaff.midiInstrument = "harpsichord"
    \new Staff = "up" <<
      \Global \clef treble \MDI
    >>
    \new Staff = "down" <<
      \Global \clef bass \MSI
    >>
  >>
}

  \midi {
    \tempo 4 = 104
    }


\layout {}
}
