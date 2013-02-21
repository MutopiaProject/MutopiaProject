\version "2.16.1"
#(set-global-staff-size 20)
\header {
  title             = "Allemande"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Andante"
  mutopiatitle      = "Allemande"
  mutopiacomposer   = "HandelGF"
  mutopiainstrument = "Harpsichord, Piano"
  date              = "18th Century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"

 footer = "Mutopia-2013/02/21-166"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
  }

Global =  {\key a\minor \time 4/4 \partial 16}

% TODO: Remove the ugly extra-offset hack when lily stops colliding the rest with the flags.

MDI =  \relative c'' {
  \repeat volta 2 {
  a16
  <c, e a>4 ~ a'16 a b c b4 ~ b16 e d e
  r c d e f gis, a b gis4. e'16 d
  e a, g! a e g f e f4 ~ f16 a b c
  d g, f g d g e d e4 ~ e16 c' d e
  
  d g f g c, f b, e a, d c d b g a b
  a b c d b8.\prall c16 <e, g c>4. c'16 b |
  a g fis e dis b cis dis e fis g fis
    <<{fis32 g fis g fis16[
      \once \override Rest #'extra-offset = #'(0 . -3) % ugly hack
      r32 e]} \\ {dis!4}>> |
  e16[ b]  g8.[ e'16 fis, dis'] <g, b e>4 r8 r16 |
  }
  
  \repeat volta 2 {
  b'16
  b gis  e8.[ d'16 c b]  c[ a]  e8.[ e'16 d cis]
  d e d e \times 4/6 { f[ e f e d e]}  f[ d]  a8.[ a16 b cis]
  d e f e d c! b a b c b a g8.f16
  e g c e, d c' d, b'  c[ g]  e8.[ e16 fis g]
  
   fis[ a]  d8.[ fis,16 gis a] gis4. e'16 d
  c d32 e a,16 c b e e, b' c d32 e a,16 c b e e, b'
   c[ d32 e]  a,8.[ d16 a c]  b[ c32d]  g,8.[ c16 g bes]
   a[ gis]  a8.[ c16 b a] gis e a e ' e, c' e,
  
  d' c b a gis e e' d c b a b32 c  gis!32[ a gis a]  gis8[ r32 a]
  a16[ e]  c8.[ a'16 b, gis']  a[ e] c8 r r16
  }
  }

MSI =  \relative c' {
  r16
  
  a8-. e-. a,4 gis'8-. fis-. gis-. e-.
  a-. g!-. f!-. d-. e-. e, e' d
  cis e a a,-. d16 f a f d8 c
  b d g g,-. c16 e g e c4
  
  b8-. b'-. a-. g-. f-. fis-. g-. e-.
  f!-. d-. g-. g,-. c16 g' c b c b a g
   a8[ c b16 r16 a8] g a b b,-.
   e,8.[ b'16 e8 b]  e[ e,-.] r8 r16
  
  s16
  e'8. fis16 gis8 e-. a8. e16 a,8-. g'
  f d-. cis-. a-. d8. a16 d,4
  d'8-. e-. f-. d-. g16 a g f e f e d
  c8 e16 f g8-. g,-. c8. g'16 c8-. c,-.
  
  d8. a'16 d8-. d, e16 b' e d e d c b
  a4  gis8[ e]  a[ a,]  gis'![ e]
  a8. g!16 fis8 d g8. f16 e8 c
  f8. e16 d8 dis-.  e[-. c-.]  gis[-. a-.]
  
   d![-. f-.]  e[-. gis-.]  a[-. d,-.]  e[-. e,-.]
   a8.[ e16 a8 e]  a8.[ e16] a,8 r16
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
    \tempo 4 = 72
    }


\layout {}
}
