%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.19.34"
\language "english"

\paper {
  % --- Set these to false after all editing is finished
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  ragged-right = ##f
}

\header {
  title = "Keyboard Sonata in G Major"
  composer = "Domenico Scarlatti (1685-1757)"
  opus = "K.455"
  date = ""
  style = "Baroque"
  source = "Italian Digital Library www.internetculturale.it"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiacomposer = "ScarlattiD"
  mutopiainstrument = "Piano"

 footer = "Mutopia-2016/01/25-2104"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

%--------Definitions

%------------Music

% --- First repeat, both hands

voltaOneUpper = \relative {
  | d'''4 d, r8 d e c
  | d'4 d, r8 d e c
  | d'4 d,8 d' d c d, c'
  | c8 b d, b' b a c, a'
  | a8 g b, g' g fs a, fs'
  | g8 d b g b d g b
  | d8 d, d d' d c d, c'
  | c8 b d, b' b a c, a'
  | a8 g b, g' g fs a, fs'
  | g8 d b g r2
  
    \barNumberCheck 11
  | d'8 c c b b a a g
  | fs2 r
  | d'8 c c b b a a g
  | d' cs cs d d cs cs d
  | d cs cs d d cs cs d
  | d cs cs d d cs cs d
  | d cs cs d d cs cs d
  | cs2. a'4
  | fs2. \prall e8 d
  | e2. a4
  | fs2. \prall e8 d 
  | e4 a fs e8 d
  | a4 a' fs e8 d
  | a8 a a a a a a a
  
    \barNumberCheck 25
  | d8 a a a a a a a
  | e'8 a, a a a a a a
  | fs'8 a, a a a a a a
  | g'8 a, a a a a a a
  | a'8 a, a a b' b, b b
  | cs'8 cs, cs cs d' d, d d
  | e8 b' g e fs a d, cs
  | d8 a a a a a a a
  | e'8 a, a a a a a a
  | fs'8 a, a a a a a a
  | g'8 a, a a a a a a
  | a'8 a, a a b' b, b b
  | cs'8 cs, cs cs d' d, d d
  | e8 b' g e fs a d, cs
  
    \barNumberCheck 39
  | d8 d' fs, a a g g e
  | fs8 d' fs, a a g g e
  | fs8 d fs, a a g g e
  | fs8 d' fs, a a g g e
  | fs8 d' b g fs d' e, cs'
  | d8 a fs d e g a cs
  | d8 a fs d e g a cs
  | d16 [ a fs d ] e8 cs' d16 [ a fs d ] e8 cs'
  | \grace { cs8 } d1
}

voltaOneLower = \relative {
    \clef treble
  | g'4 a b c
  | g4 a b c
  | g4 b a fs
  | g4 \clef bass g, d' d,
  | g4 g, d' d,
  | g,1
  | \clef treble r4 b''' a fs 
  | g4 \clef bass g, d' d,
  | g4 g, d' d,
  | g,4 r d'''8 b g d
  
    \barNumberCheck 11
  | g,2 c'2
  | d8 c c b b a a g
  | fs2 g2
  | \clef treble << { fs'4 s s2 } \\ { d4 e fs d } >>
  | << { g4 s s2 } \\ { e4 fs g e } >>
  | << { a4 s s2 } \\ { fs4 g a fs } >>
  | gs4 a b gs
  | a8 gs gs a a gs gs a
  | \clef bass d,8 cs cs d d cs cs d
  | a8 gs gs a a gs gs a
  | d,8 cs cs d d cs cs d
  | a8 b cs a d e fs g 
  | a8 b cs a d e fs g
  | \parenthesize a4 a, a a
  
    \barNumberCheck 25
  | << { a2 s } \\ { fs4 e fs d } >>
  | << { a'1 } \\ { cs,4 b cs a } >>
  | << { a'1 } \\ { d,4 e fs d } >>
  | e4 fs g e
  | fs4 d g g,
  | a'4 g fs d
  | g4 e a a,
  | d4 e fs d
  | << { a'1 } \\ { cs,4 b cs a } >>
  | << { a'1 } \\ { d,4 e fs d } >>
  | e4 fs g e
  | fs4 d g g,
  | a'4 g fs d
  | g4 e a a,
  
    \barNumberCheck 39
  | d4 d' e a,
  | d,4 d' e a, 
  | d,4 fs e a,
  | d,4 fs' e a,
  | d4 g, a a,
  | d1
  | <d fs a d>1
  | <d fs a d>2 <d fs a d>2
  | <d fs a d>1
}

% --- Second repeat, both hands

voltaTwoUpper = \relative {
    \barNumberCheck 48
  | a''4 a, r8 a b g
  | a'4 a, r8 a b g
  | a'8 a, b g a' a, b g
  | a'8 g g fs fs e e ds
  | b'4 b, r8 b c a
  | b'4 b, r8 b c a
  | b'8 b, c a b' b, c a
  | b'8 a a gs gs f f e
  | e8 d d c c b b a
  | gs2 r
  | e'8 d d c c b b a
  
    \barNumberCheck 59
  | gs8 e e e e e e e
  | a8 e e e e e e e
  | b'8 e, e e e e e e
  | c'8 e, e e e e e e
  | c'8 f, f f f f f f
  | e'8 g, g g g g g g
  | g'8 bf, bf bf bf bf bf bf
  | g'8 bf, bf bf bf bf bf bf
  | bf'8 d, d d d d d d
  | bf'8 d, d d d d d d
  | ef'8 g, g g g g g g
  | ef'8 g, g g g g g g
  | d'8 f, f f c' f, f f
  | b8 af g f ef d c b
  
    \barNumberCheck 73
  | \repeat unfold 6 { c'8 c, c c c c c c }
  | c'8 c, c c c' c, c c
  | c'8 c, c c b' b, b b
  | a'8 a, a a g' g, g g
  | fs'8 e d c b a b cs
  | d8 d d d d d d d
  
    \barNumberCheck 84
  | g8 d d d d d d d
  | a'8 d, d d d d d d
  | b'8 d, d d d d d d
  | c'8 d, d d d d d d
  | d'8 d, d d d d d d
  | e'8 e, e e fs' fs, fs fs
  | g'8 g, g g g' fs e d
  | c8 a b c b g fs a
  
    \barNumberCheck 92
  | g8 d, d d d d d d
  | a'8 d, d d d d d d
  | b'8 d, d d d d d d
  | c'8 d, d d d d d d
  | d'8 d, d d d d d d
  | e'8 e, e e fs' fs, fs fs
  | g'8 g, g g g' fs e d
  | c8 a b c b g fs a
  
    \barNumberCheck 100
  | g8 g' b, d d c c a
  | b8 g' b, d d c c a 
  | b8 g b, d d c c a
  | b8 g' b, d d c c a
  | b8 g' e c b g' a, fs'
  | g8 d b g a c d fs
  | g8 d b g a c d fs 
  | g16 [ d b g ] a8 fs' g16 [ d b g ] a8 fs'
  | \appoggiatura { fs16 } g1
}

voltaTwoLower = \relative {
    \barNumberCheck 48
    \clef treble
  | d'4 e fs g
  | d4 e fs g
  | << { fs4 g fs g } \\ { d2 d } >>
  | << { fs2 <e a> } \\ { d2 c } >>
  | << { fs2 g } \\ { b,4 ds e2 } >>
  | << { fs2 g } \\ { b,4 ds e2 } >>
  | << { fs4 g fs g } \\ { ds e ds e } >>
  | << { fs4 b2. ~ | b4 a2. } \\ { ds,4 b e d | c2. d4 } >>
  | \clef bass e8 d d c c b b a
  | gs2 a
  
    \barNumberCheck 59
  | e4 e, e' d
  | << { e1 } \\ { c4 b c a } >>
  | << { e'1 } \\ { gs,4 fs gs e } >>
  | a'4 a, a' g
  | f,4 f' e d
  | c4 c' e, c
  | g4 g' g f
  | ef,4 ef' g ef
  | bf4 bf' d bf
  | bf,4 af' g f
  | ef4 ef, ef' d
  | c4 d ef c
  | f4 g af f
  | g4 g, r2
  
    \barNumberCheck 73
  | << { c'1 } \\ { c,4 d e c } >>
  | << { c'1 } \\ { f,4 g af f } >>
  | << { c'1 } \\ { e,4 d e c } >>
  | << { c'1 } \\ { f,4 g af f } >>
  | << { c'1 } \\ { ef,4 d ef c } >>
  | << { c'1 } \\ { d,4 e! fs! d } >>
  | << { c'1 } \\ { ef,4 d ef c } >>
  | fs!4 d g g,
  | c4 d e c
  | d4 fs g e
  | d4 d, d'' c
  
    \barNumberCheck 84
  | << { d1 } \\ { b4 a b g } >>
  | << { d'1 } \\ { fs,4 e fs d } >>
  | << { d'1 } \\ { g,4 a b g } >>
  | a4 b c a
  | << { d1 } \\ { b4 a b g } >>
  | c4 a d c
  | b4 a b g
  | c4 c, d d,
  
    \barNumberCheck 92
  | g4 a b g
  | fs4 e fs d
  | g4 a b g
  | a4 b c a
  | << { g'1 } \\ { b,4 a b g } >>
  | c4 a d c
  | << { g'1 } \\ { b,4 a b g } >>
  | c4 a d d,
  
    \barNumberCheck 100
  | g4 g'' a d,
  | g,4 g' a d,
  | g,,4 g' a d,
  | g,4 g' a d,
  | g,4 c d d,
  | g1
  | g1
  | <g, g'>2 q
  | <g g'>1
}

%-------Typeset music 

global = {
  \time 2/2
  \key g \major
}

upperStaff = {
  \clef treble
  \global
  \tempo "Allegro" 
  \repeat volta 2 { \voltaOneUpper \pageBreak }
  \repeat volta 2 { \voltaTwoUpper }
}

lowerStaff = {
  \clef bass
  \global
  \repeat volta 2 { \voltaOneLower \pageBreak }
  \repeat volta 2 { \voltaTwoLower }
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" { \upperStaff }
    \new Staff = "lower" { \lowerStaff } 
  >>
  \layout {
  }
  \midi {
    \tempo 2 = 120
  }
}
