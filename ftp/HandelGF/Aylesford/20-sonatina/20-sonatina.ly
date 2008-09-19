\version "2.10.10"
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
  lastupdated       = "2008/Sep/18"

 footer = "Mutopia-2008/09/19-169"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
  }

Global =  {\key a\minor \time 3/4}


MDI =  \relative c''' {
  %\set Score.skipTypesetting = ##t
  \repeat volta 2 {
  \stemNeutral a8-. e-. c-. a-. e'-. e,-.		% 1
  a4 r r
  a'8-. e-. c-. a-. e'-. e,-.
  a4 r r
  
  r16 e fis gis a b c d e8-. b-.			% 5
  <a c>2 <gis b>4
  r16 e fis gis a b c d e8-. b-.
  <a c>2 r4
  
  r16 e' d e \stemUp b e a, e' gis, e' fis, e'
  \stemNeutral r16 e d e \stemUp b e a, e' gis, e' fis, e'	% 10
  \stemNeutral e,4.  c'8[ b-. a-.]
  \stemUp e'2.
  
  \stemNeutral gis,16-. e' d e b e a, e' gis, e' d e
  \stemUp c4.  f8[ e_. d_.]
  c4.  f8[ e_. d_.]										% 15
  s4. \override Beam   #'positions = #'(4.5 . 4.5)  d8[ c b]
  
  a8 s4  d8[ c b]
  a8 s \override Beam   #'positions = #'(5.5 . 5.5)  a'8[ g f e]
  f8 s s2
  s4 \override Beam   #'positions = #'(5 . 5)  g8[ f e d]			% 20
  
  s2.
  s4 \override Beam   #'positions = #'(4.5 . 4.5)  f8[ e d c]
  s4  f8[ e d c]
  s4 \override Beam   #'positions = #'(4 . 4)  e8[ d c b]
  
  s2.										% 25
  s4 \override Beam   #'positions = #'(3.5 . 3.5)  d8[ c b a]
  \stemNeutral \revert Beam #'positions b4 ~ b16 g a b c d e f
  g4 ~ g16 c, d e f g a b
  
  c b a g f e d c b a g f
  e8 r <c' a'>4 <d g>							% 30
  g16 f e d c b a g f e d c
  b8 c16 d g,8 c d_. b_.
  
  \stemUp r4.  a'8[ g f]
  e4.  a8[ g f]
  e2.									% 35
  }
  %\set Score.skipTypesetting = ##f
  
  \stemNeutral r16 c'' b c g c f, c' e, c' d, c'
  c, c' b c g c f, c' e, c' d, c'
  c,4.  a'8[ g f-.]
  \stemUp e4.  a8[ g f_.]
  
  \stemNeutral e16-. c' b c g c f, c' e, c' d, c'			% 40
  c, g' f g e g d g c, g' bes, g'
  a,4.  d8[ c bes-.]
  a4.  d8[ c bes-.]
  
  \stemNeutral a16-. f' e f c f bes, f' a, f' g, f'
  <f, a>2 <e g>4							% 45
  <g bes>2 <fis a>4
  <a c>2 <gis b>4
  
  <c e>2 <b d>4
  <d f>2 <cis e>4
  <e g>2 <dis fis>4							% 50
  r16 b' a b g b fis b e, b' d,! b'
  
  \stemUp s4 \override Beam   #'positions = #'(5.5 . 5.5)  a8[ g f e]
  f8 s s2
  s4 \override Beam   #'positions = #'(5 . 5)  g8[ f e d]
  e8 s s2								% 55
  
  s4 \override Beam   #'positions = #'(4.5 . 4.5)  f8[ e d c]
  d8 s s2
  \stemNeutral \revert Beam #'positions d16 gis fis gis e gis d gis c, gis' b, gis'
  c,4.  f8[ e d]
  
  c4.  f8[ e d]								% 60
  c8-. c'16 b a g f e d c b a
  gis4.  c8[ b a-.]
  gis4.  c8[ b a-.]
  
  \stemUp e'8_. b_. gis_. e_. a_. a,_.
  <gis e'>4 r r								% 65
  s2.
  s4 \override Beam   #'positions = #'(3.5 . 3.5)  c'8[ b a g] 
  
  f8 s \override Beam   #'positions = #'(3 . 3)  b8[ a g f] 
  \revert Beam #'positions e16 c' b c a c g c f, c' e, c'
  d,16 b' a b gis b fis b e, b' d, b'					% 70
  c, a' gis a e a gis a c, a' gis a
  
  b, a' gis a e a gis a b, gis' fis gis
  a4 r r
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
  
  s4. \stemDown  a8[ gis fis]
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
  r16 b''16 a b gis b fis b e, b' d, b'
  c, e d e c e b e a, e' g, e'
  
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
  \stemDown R2.
  a8^. e^. c^. a^. e'^. e,^.
  \stemNeutral a4 r r
  \stemDown a'8^. e^. c^. a^. e'^. e,^.
  
  \stemNeutral a4 r r
  r16 e' fis gis a b c d e8-. b-.			% 6
  <a c>2 <gis b>4
  r16 a, b c d e fis gis a8-. a,-.
  
  \stemUp gis'4.  c8[ b_. a_.]
  gis4.  c8[ b_. a_.]
  gis8 s4 \override Beam   #'positions = #'(5.5 . 5.5)  a8[ gis fis]		%11
  e s4  a8[ gis fis]
  
  s2 b4
  s4. \override Beam   #'positions = #'(3.5 . 3.5)  d,8[ c b]
  s4.  d8[ c b]
  \stemNeutral a2.						% 16
  
  \stemUp c'4. \revert Beam #'positions  f8[ e_. d_.]
  c4.  f8[ e_. d_.]
  \stemNeutral d4 d, d'
  \stemUp r e8 d c_. b_.
  
  \stemNeutral c4 c, c'					% 21
  \stemUp r d8 c b_. a_.
  \stemNeutral b4 b, b'
  \stemUp r c8 b a_. g_.
  
  \stemNeutral a4 a, a'
  \stemUp r b8 a g_. f_.				% 26
  <g, g'>8_. d' \stemNeutral g4 f
  e8 f \clef treble <e' g>4 <d f>
  
  <c e> \clef bass <f, a> g
  c16 b a g f e d c b a g f				% 30
  e2 \stemUp d'4
  d4. e8 f4
  
  r16 \override Beam   #'positions = #'(2.5 . 2.5)  c b c g c f, c' e, c' d, c'
  c, c' b c g c f, c' e, c' d, c'
  c,2.							% 35
  
  %---
  
  R2.
  R
  s4. \override Beam   #'positions = #'(4.5 . 4.5)  f'8[ e d]
  c8 s4  f8[ e d]
  
  \stemNeutral \revert Beam #'positions c4 r r					% 40
  R2.
  r16 f e f \stemUp c f bes, f' a, f' g, f'
  f, f' e f c f bes, f' a, f' g, f'
  
  f,4 r r
  f'8_. c_. a_. f_. c'_. c,_.				% 45
  g''_. d_. bes_. g_. d'_. d,_.
  \stemDown a''-. e-. c-. a-. e'-. e,-.
  
  c''-. g!-. e-. c-. g'-. g,-.
  d''-. a-. f-. d-. a'-. a,-.
  e''-. b-. g-. e-. b'-. b,-.				% 50
  \stemNeutral e4 e, r
  
  \stemUp r4  f''8[ e d_. c_.]
  \stemNeutral d,4 d' d,
  \stemUp r4  e'8[ d c_. b_.]
  \stemNeutral c4 c, c'					% 55
  
  \stemUp r4  d8[ c b_. a_.]
  \stemNeutral b4 b, b'
  e,2 r4
  \stemUp s4. \override Beam   #'positions = #'(3.5 . 3.5)  d8[ c b] 
  
  a8 s4  d8[ c b]					% 60
  \revert Beam #'positions  a2 r4
  \stemUp e16 e' d e b e a, e' gis, e' fis, e'
  e, e' d e b e a, e' gis, e' fis, e' 
  
  \stemNeutral e,4 r <a e'>
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
  
  s4. \stemUp \override Beam   #'positions = #'(3.5 . 3.5)  d8[ c b]
  a s4  d8[ c b]
  \revert Beam #'positions a8 <e e'>_. <c c'>_. <a a'>_. e'_. <e, e'>_.
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
  
  s2.
  s
  r16 c'' b c g c f, c' e, c' d, c'
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
  r16 a gis a e a d, a' c, a' b, a'
  
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
  \context PianoStaff <<
    \set PianoStaff.midiInstrument = "harpsichord"
    \context Staff = "up" <<
      \override Staff.TimeSignature   #'style = #'C
      \Global \clef treble
      \context Voice=One {\voiceOne\MDI}
      \context Voice=Two {\voiceTwo\MDII}
    >>
    \context Staff = "down" <<
      \override Staff.TimeSignature   #'style = #'C
      \Global \clef bass
      \context Voice=One {\voiceOne\MSI}
      \context Voice=Two {\voiceTwo\MSII}
    >>
  >>
}

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 92 4)
      }
    }


\layout {}
}
