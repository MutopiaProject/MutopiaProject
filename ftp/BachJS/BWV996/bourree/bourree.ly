% Bourreé in E minor
\version "2.12.3"

\header {
  title = "Bourrée in E Minor"
  composer = "J. S. Bach"
  mutopiacomposer = "BachJS"
  opus = "BWV996"
  date = "1700s"
  style = "Baroque"
  instrument = "Lute or Lute-Harpischord (Lautenwerk)"
  copyright = "Public Domain"
  source = "Band I: J.S. Bach: Compositionen für die Laute, Denkmäler alter Lautenkunst Wolfenbüttel: Julius Zwißlers Verlag, 1921. Plate Band I. (among other sources)"
  maintainer = "Rudy Matela"
  maintainerEmail = "rudy [dot] matela [at] gmail [dot] com"
  maintainerWeb = "http://www.larces.uece.br/~rudy/"
  moreInfo = "Other Public Domain Sheet Music: http://imslp.org/wiki/Lute_Pieces,_BWV_995-1000_(Bach,_Johann_Sebastian)"

 footer = "Mutopia-2010/02/17-1743"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

% Each variable consists of 3 bars
% Each line consists of a bar

trebleA = {
  e'8 fis
  g4   fis8 e dis4   e8 fis
  b,4  cis8 dis e4   d8 c
}
bassA = {
  g8 fis
  e4 a b a
  g fis e fis
}

trebleB = {
  b4   a8 g fis4   g8 a
  b8 a g fis e4   e'8 fis
  g4   fis8 e dis4   e8 fis
}
bassB = {
  g4 a b a
  g b  e,8 fis g fis
  e4 a b a
}

trebleC = {
  b,4   cis8 dis e4   d8 c
  b4   a8 g fis4.   g8
  g2.
}
bassC = {
  g4 fis e fis
  g c d d
  <g, b d>2.
}


% Second part starts here
trebleD = {
  b8 g
  d'4   a8 c b4   g'8 d
  e4   b8 d c4   b8 a
}
bassD = {
  g4
  fis d' g, b
  c eis, fis d'
}

trebleF = {
  gis4   a8 b c4   b8 a
  a2.    d8 a
  b4    g'8 d e4   b8 d
}
bassF = {
  e4 a, e' e,
  a8 b a g fis4  d'
  g,4 b c gis
}

trebleG = {
  a4   a'8 e fis4   cis8 e
  d4   cis8 b ais4. \prall   b8
  b2.    b'8 fis
}
bassG = {
  a4 cis d ais
  b e fis fis,
  b8 ais b cis   dis4 b
}

trebleH = {
  gis4   fis8 e a4   e8 g
  fis4    e8 d g4   d8 f
  e4    a8 e fis4  cis8 e
}
bassH = {
  e4 d cis a
  d4 c b g
  c b a fis
}

trebleI = {
  dis4 b2      e8 b
  c4   d8 a b4   c8 g
  a4   b8 fis g4  fis8 e
}
bassI = {
  b4.  c8 b a gis4
  a8 e' fis4   g,8 dis' e4
  f,8 cis' dis4   e, a
}


trebleJ = {
  dis4   e8 fis g4   fis8 e
  e2.
}
bassJ = {
  b4  a4  b2
  e,2.
}

treble = { 
  \repeat volta 2 { \trebleA \trebleB \trebleC }
  \repeat volta 2 { \trebleD \trebleF \trebleG \trebleH \trebleI \trebleJ }
}
bass = {
  \repeat volta 2 { \bassA \bassB \bassC }
  \repeat volta 2 { \bassD \bassF \bassG \bassH \bassI \bassJ }
}

commands = {
	\key e \minor
	\time 4/4
	\partial 4
	\tempo 4=132
	% Do not output tempo marking on pdf
	\set Score.tempoHideNote = ##t
}

\score {
  \new PianoStaff <<
    \new Staff \relative c' { \clef treble \commands \treble %{\bar "|."%} }
    \new Staff \relative c' { \clef bass \commands \bass }
  >>
  \layout{ }
  \midi{ }
}

