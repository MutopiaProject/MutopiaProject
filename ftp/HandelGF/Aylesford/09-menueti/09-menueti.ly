\version "2.16.0"
#(set-global-staff-size 20)
\header {
  title             = "Menuet I"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Andantino"
  tagline           = "Typeset using Lilypoond 1.4.10"
  mutopiatitle      = "Menuet I"
  mutopiacomposer   = "HandelGF"
  mutopiainstrument = "Harpsichord"
  date              = "18th century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"
  lastupdated       = "2002/Jan/11"

  tagline = "\\parbox{\paper-width}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/01/11-157"
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
