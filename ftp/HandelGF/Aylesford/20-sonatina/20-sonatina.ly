\version "2.16.1"
#(set-global-staff-size 16)
\header {
  title             = "Sonatina"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Allegretto"
  mutopiatitle      = "Sonatina"
  mutopiacomposer   = "HandelGF"
  mutopiainstrument = "Harpsichord, Piano"
  date              = "18th Century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"

 footer = "Mutopia-2013/02/21-169"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
  }

Global =  {\key a\minor \time 3/4}


MDI =  \relative c''' {
  \repeat volta 2 {
  \oneVoice a8-. e-. c-. a-. e'-. e,-.		% 1
  a4 r r
  a'8-. e-. c-. a-. e'-. e,-.
  a4 r r
  
  r16 e fis gis a b c d e8-. b-.			% 5
  <a c>2 <gis b>4
  r16 e fis gis a b c d e8-. b-.
  <a c>2 r4
  
  r16 e' d e \voiceOne b e a, e' gis, e' fis, e'
  \oneVoice r16 e d e \voiceOne b e a, e' gis, e' fis, e'	% 10
  \oneVoice e,4.  c'8[ b-. a-.]
  \voiceOne e'2.
  
  \oneVoice gis,16-. e' d e b e a, e' gis, e' d e
  \voiceOne c4.  f8[ e_. d_.]
  c4.  f8[ e_. d_.]										% 15
  s4. d8[ c b]
  
  a8 s4  d8[ c b]
  a8 s a'8[ g f e]
  f8 s s2
  s4 g8[ f e d]			% 20
  
  s2.
  s4 f8[ e d c]
  s4  f8[ e d c]
  s4 e8[ d c b]
  
  s2.										% 25
  s4 d8[ c b a]
  \oneVoice b4 ~ b16 g a b c d e f
  g4 ~ g16 c, d e f g a b
  
  c b a g f e d c b a g f
  e8 r <c' a'>4 <d g>							% 30
  g16 f e d c b a g f e d c
  b8 c16 d g,8 c d_. b_.
  
  \voiceOne r4.  a'8[ g f]
  e4.  a8[ g f]
  e2.									% 35
  }
  
  \oneVoice r16 c'' b c g c f, c' e, c' d, c'
  c, c' b c g c f, c' e, c' d, c'
  c,4.  a'8[ g f-.]
  \voiceOne e4.  a8[ g f_.]
  
  \oneVoice e16-. c' b c g c f, c' e, c' d, c'			% 40
  c, g' f g e g d g c, g' bes, g'
  a,4.  d8[ c bes-.]
  a4.  d8[ c bes-.]
  
  \oneVoice a16-. f' e f c f bes, f' a, f' g, f'
  <f, a>2 <e g>4							% 45
  <g bes>2 <fis a>4
  <a c>2 <gis b>4
  
  <c e>2 <b d>4
  <d f>2 <cis e>4
  <e g>2 <dis fis>4							% 50
  r16 b' a b g b fis b e, b' d,! b'
  
  \voiceOne s4  a8[ g f e]
  f8 s s2
  s4 g8[ f e d]
  e8 s s2								% 55
  
  s4 f8[ e d c]
  d8 s s2
  \oneVoice d16 gis fis gis e gis d gis c, gis' b, gis'
  c,4.  f8[ e d]
  
  c4.  f8[ e d]								% 60
  c8-. c'16 b a g f e d c b a
  gis4.  c8[ b a-.]
  gis4.  c8[ b a-.]
  
  \voiceOne e'8_. b_. gis_. e_. a_. a,_.
  \oneVoice <gis e'>4 r r						% 65
  s2.
  s4 \voiceOne c'8[ b a g] 
  
  f8 s b8[ a g f] 
  e16 c' b c a c g c f, c' e, c'
  d,16 b' a b gis b fis b e, b' d, b'					% 70
  c, a' gis a e a gis a c, a' gis a
  
  b, a' gis a e a gis a b, gis' fis gis
  \oneVoice a4 r r
  r16 a gis a e a d, a' c, a' b, a'
  a, a' gis a e a d, a' c, a' b, a'					% 75
  
  a,8 r r  f'[ e d_.]
  c4.  f8[ e d_.]
  c4 r <b e gis>
  <c e a\fermata>2.							% 79
  \bar "|."
  }
MDII =  \relative c'' {
  s2.						% 1
  s
  s
  s
  
  s
  s
  s
  s
  
  s4. \voiceTwo  a8[ gis fis]
  s4.  a8[ gis fis]				% 10
  s2.
  gis4.  c8[ b^. a^.]
  
  s2.
  a
  a						% 15
  c16^. a' gis a e a d, a' c, a' b, a'
  
  a, a' gis a e a d, a' c, a' b, a'
  a, c' b c a c g c f, c' e, c'
  f, c' b c f, c' b c f, c' b c
  f, b a b g b f b e, b' d, b'			% 20
  
  e, b' a b e, b' a b e, b' a b
  e, a g a f a e a d, a' c, a'
  d, a' g a f a e a d, a' c, a'
  d, g f g e g d g c, g' b, g'
  
  c, g' f g c, g' f g c, g' f g			% 25
  c, f e f d f c f b, f' a, f'
  s2.
  s
  
  s
  s						% 30
  s
  s
  
  c,2. ~
  c
  c						% 35
  
  %---
  
  s2.
  s
  s
  c'4. s4.
   
  s2.						% 40
  s
  s
  s
  
  s
  s						% 45
  s
  s
  
  s
  s
  s						% 50
  s
  
  c16 c' b c a c g c f, c' e, c'
  f, c' b c f, c' b c f, c' b c
  f, b a b g b f b e, b' d, b'
  e, b' a b e, b' a b e, b' a b			% 55
  
  e, a g a f a e a d, a' c, a'
  d, a' gis a d, a' gis a d, a' gis a
  s2.
  s
  
  s						% 60
  s
  s
  s
  
  gis,4 r a,
  s2.						% 65
  \oneVoice r16 b''16 a b gis b fis b e, b' d, b'
  c, e d e \voiceTwo c e b e a, e' g, e'
  
  f,16 d' c d b d a d g, d' f, d'
  e,8 r  a[ g f e]
  d r  gis[ fis e d]				% 70
  c r e r c r
  
  b r e r b r
  s2.
  s
  s						% 75
  
  s
  s
  s
  s
  }

MSI =  \relative c' {
  R2.
  a8-. e-. c-. a-. e'-. e,-.
  a4 r r
  a'8-. e-. c-. a-. e'-. e,-.
  
  a4 r r
  r16 e' fis gis a b c d e8-. b-.			% 6
  <a c>2 <gis b>4
  r16 a, b c d e fis gis a8-. a,-.
  
  \voiceOne gis'4.  c8[ b_. a_.]
  gis4.  c8[ b_. a_.]
  gis8 s4 a8[ gis fis]		%11
  e s4  a8[ gis fis]
  
  s2 b4
  s4. d,8[ c b]
  s4.  d8[ c b]
  \oneVoice a2.						% 16
  
  \voiceOne c'4. f8[ e_. d_.]
  c4.  f8[ e_. d_.]
  \oneVoice d4 d, d'
  \voiceOne r e8 d c_. b_.
  
  \oneVoice c4 c, c'					% 21
  \voiceOne r d8 c b_. a_.
  \oneVoice b4 b, b'
  \voiceOne r c8 b a_. g_.
  
  \oneVoice a4 a, a'
  \voiceOne r b8 a g_. f_.				% 26
  <g, g'>8_. d' \oneVoice g4 f
  e8 f \clef treble <e' g>4 <d f>
  
  <c e> \clef bass <f, a> g
  c16 b a g f e d c b a g f				% 30
  e2 \voiceOne d'4
  d4. e8 f4
  
  r16 c b c g c f, c' e, c' d, c'
  c, c' b c g c f, c' e, c' d, c'
  c,2.							% 35
  
  %---
  
  s2.
  s
  s4. f'8[ e d]
  c8 s4  f8[ e d]
  
  \oneVoice c4 r r					% 40
  R2.
  r16 f e f \voiceOne c f bes, f' a, f' g, f'
  f, f' e f c f bes, f' a, f' g, f'
  
  \oneVoice f,4 r r
  f'8_. c_. a_. f_. c'_. c,_.				% 45
  g''_. d_. bes_. g_. d'_. d,_.
  a''-. e-. c-. a-. e'-. e,-.
  
  c''-. g!-. e-. c-. g'-. g,-.
  d''-. a-. f-. d-. a'-. a,-.
  e''-. b-. g-. e-. b'-. b,-.				% 50
  e4 e, r
  
  \voiceOne r4  f''8[ e d_. c_.]
  \oneVoice d,4 d' d,
  \voiceOne r4  e'8[ d c_. b_.]
  \oneVoice c4 c, c'					% 55
  
  \voiceOne r4  d8[ c b_. a_.]
  \oneVoice b4 b, b'
  e,2 r4
  \voiceOne s4.  d8[ c b] 
  
  a8 s4  d8[ c b]					% 60
  \oneVoice a2 r4
  e16 e' d e \voiceOne b e a, e' gis, e' fis, e'
  e, e' d e b e a, e' gis, e' fis, e' 
  
  \oneVoice e,4 r <a e'>
  e16 e' d e b e a, e' gis,e' fis, e'			% 65
  e,2 r4
  a4  a'8[ g! f-. e-.]
  
  d4  g8[ f e-. d-.]
  c4  f8[ e d-. c-.]
  b4  e8[ d c-. b-.]					% 70
  a2 r4
  
  <e e'>2 <e e'>4
  a16 a' gis a e a d, a' c, a' b, a'
  a,4 r r
  a r r							% 75
  
  s4. \voiceOne d8[ c b]
  a s4  d8[ c b]
  a8 <e e'>_. <c c'>_. <a a'>_. e'_. <e, e'>_.
  <a\fermata a'>2. 
  }
MSII =  \relative c {
  s2.
  s
  s
  s
  
  s			% 5
  s
  s
  s
  
  e2.
  e						% 10
  e16 e' d e b e a, e' gis, e' fis, e'
  e, e' d e b e a, e' gis, e' fis, e'
  
  e,2 e4
  r16 a gis a e a d, a' c, a' b, a'
  a, a' gis a e a d, a' c, a' b, a'		% 15
  s2.
  
  a
  a
  s
  g				% 20
  
  s
  f
  s
  e
  
  s				% 25
  d
  s
  s
  
  s
  s				% 30
  s2 f,4
  g2 g4
  
  s4.  f8[ e d]
  c s4  f8[ e d]
  s2.				% 35
  
  \oneVoice R2.
  R
  r16 c'' b c \voiceTwo g c f, c' e, c' d, c'
  c, c' b c g c f, c' e, c' d, c' 
  
  s2.					% 40
  s
  s4.  bes,8[ a g]
  f s4  bes8[ a g]
  
  s2.
  s					% 45
  s
  s
  
  s
  s
  s					% 50
  s
  
  a2.
  s
  g'
  s					% 55
  
  f
  s
  s
  \oneVoice r16 a gis a \voiceTwo e a d, a' c, a' b, a'
  
  a, a' gis a e a d, a' c, a' b, a'	% 60
  s2.
  s4.  a,8[ gis fis]
  e8 s4  a8[ gis fis]
  
  s2.
  s					% 65
  s
  s
  
  s
  s
  s					% 70
  s
  
  s
  s
  s
  s					% 75
  
  a16 a' gis a e a d, a' c, a' b, a'
  a, a' gis a e a d, a' c, a' b, a'
  s2.
  s
  }

\score { {
  \new PianoStaff <<
    \set PianoStaff.midiInstrument = "harpsichord"
    \new Staff = "up" <<
      \Global \clef treble
      \new Voice=One {\MDI}
      \new Voice=Two {\voiceTwo\MDII}
    >>
    \new Staff = "down" <<
      \Global \clef bass
      \new Voice=One {\MSI}
      \new Voice=Two {\voiceTwo\MSII}
    >>
  >>
}

  \midi {
    \tempo 4 = 92
    }


\layout {}
}
