#(set-global-staff-size 20)
\header {
  title             = "Menuet I"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Andantino"
  mutopiatitle      = "Menuet I"
  mutopiacomposer   = "HandelGF"
  mutopiainstrument = "Harpsichord, Piano"
  date              = "18th Century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"

 footer = "Mutopia-2013/02/21-157"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key d\minor \time 3/8}


MDI =  \relative c' {
  \repeat volta 2 {
  <f d'>8 a <a f'>-.
  <a e'> a <a g'>-.
  <a f'>-. <bes g'>16 f' <g, e'> d'
  <a cis> d e8 a,-.

  a16 bes <f c'!>8-. <e bes'>-.
  <f a> <g c>-. <a f'>
  <<{a-. bes16 a g a} \\ {f8 d e}>>
  f4.
  }

  \repeat volta 2 {
  <a f'>8 c <c a'>-.
  <c g'> c <c bes'>-.
  <c a'>-. bes'16 a g f
  e f g8-. <g, c>-.

  <a d>16 e' <d f>8-. <c e>-.
  <f, d'> <d' g> <a d f>-.
  <g bes e>-. <f a d>-. <e a cis>-.
  }
  \alternative {
  {<f a d>4.}
  {<f a d\fermata>4.}
  }
  \bar "|."
  }

MSI =  \relative c {
  d8-. f-. d-.
  cis-. cis'-. a-.
  d-. g,-. bes-.
  a-. a,-. g'-.

  f-. a-. g-.
  f-. e-. d-.
  c-. bes-. c-.
  f,-. f'-. e-.

  f-. a-. f-.
  e-. e'-. c-.
  f-. e-. d-.
  c-. c,-. e-.

  f-. d-. a'-.
  bes-. bes,-. f'-.
  g-. a-. a,-.

  d-. a'-. g-.
  d4._\fermata
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
\midi {}
\layout {}
}

%{
Revision history:
2002/jan/11 :  moved volta-brackets up so they don't collide with the fermata.
%}
