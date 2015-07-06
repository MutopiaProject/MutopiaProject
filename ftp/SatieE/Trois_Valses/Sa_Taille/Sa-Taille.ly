\version "2.19.21"
\language "english"

\header {
  title        = "Les Trois Valses Distinguées du Précieux Dégoûté"
  subtitle     = "I. Sa Taille"
  composer     = "Erik Satie (1866-1925)"
  dedication   = "à Roland MANUEL"
  style        = "Avant-garde"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  lastupdated  = "2015-Jun-12"
  date         = "1914"
  source       = "Paris: Rouart, Lerolle & Cie., 1916. Plate R.L. 10,166 & Cie."

  mutopiatitle       = "Sa Taille"
  mutopiacomposer    = "SatieE"
  mutopiainstrument  = "Piano"
  mutopiastyle       = "Modern"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"

 footer = "Mutopia-2015/06/22-2021"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

% ------------------------------
% --- Changes from the score ---
% ------------------------------

% Bar 12: third beat, s/b gs (sharp is on the a space)
% Bars 46, 47: <f a> s/b dotted half notes

% ----------------
% --- Preamble ---
% ----------------

\markup {
  \column {
    \line { \hspace #32 Ceux qui nuisent à la réputation ou à la }
    \line { \hspace #30 fortune des autres, plutôt que de perdre un }
    \line { \hspace #30 bon mot, méritent une peine infamante. }
    \line { \hspace #32 Cela n'a pas été dit, et je l'ose dire. } 
    \line { \hspace #32 "(La BRUYERE: \"Les Caractères\" ou Les" }
    \line { \hspace #30 moeurs de ce siècle, d'après l'édition de M.M.}
    \line { \hspace #30 G. SERVOIS et A. REBELLIAU) }
    \line { \null }
  }
}

% -------------------
% --- Definitions ---
% -------------------

staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

forceHShift = \once \override NoteColumn.force-hshift = -1.7
forceHShiftTwo = \once \override NoteColumn.force-hshift = -1
forceHShiftThree = \override NoteColumn.force-hshift = 0.25

octaveUp = {
  \ottava #1
  \set Staff.ottavation = #"8"
}
octaveBack = \ottava #0

tweakPp = \once \override DynamicText.extra-offset = #'(-1.5 . -2.5) 
tweakP = \once \override DynamicText.extra-offset = #'(-1.25 . -1.75) 
tweakReprendre = \once \override TextScript.extra-offset = #'(-2 . -3) 
tweakRest = \once \override Rest.extra-offset = #'(1 . 0) 
tweakChante = \once \override TextScript.extra-offset = #'(0 . 4) 
tweakPpTwo = \once \override DynamicText.extra-offset = #'(-3.75 . -3.75) 
tweakF = \once \override DynamicText.extra-offset = #'(3 . -5) 
tweakVif = \once \override TextScript.extra-offset = #'(6 . 1) 
tweakOsera = \once \override TextScript.extra-offset = #'(0 . -1.5) 
tweakAttendez = \once \override TextScript.extra-offset = #'(-1 . -1) 
tweakGommeux = \once \override TextScript.extra-offset = #'(-1 . -3)
tweakFf = \once \override DynamicText.extra-offset = #'(-3 . -6) 
tweakHairpin = \once \override Hairpin.extra-offset = #'(0 . -4) 

shapeOne = { \shape #'((0 . 1.5) (0 . 1.5) (0 . 1.5) (0 . 1.5)) Slur }
shapeTwo = { \shape #'((0 . 0.5) (0 . 0.75) (0 . 0.75) (0 . 0.5)) Tie }

% --- Text
regarde = "(il se regarde)" 
fredonne = \markup { \upright "Il fredonne un air du XVe siècle." }
puis = \markup { \upright "Puis, il s'adresse un compliment tout rempli de mesure." }
osera = \markup { \upright "Qui osera dire qu'il n'est pas le plus beau?" }
coeur = \markup { \upright "Son coeur n'est-il pas tendre?" }
prend = \markup { \upright "Il se prend par la taille." }
raviss = \markup { \upright "C'est pour lui un ravissement." }
jolie = \markup { \upright "Que dira la jolie marquise?" }
elle = \markup { \upright "Elle luttera, mais sera vaincue." }
oui = \markup { \upright "Oui, madame." }
ecrit = \markup { \upright "N'est-ce pas écrit?" }

% --- Musical terms
pasVite = "Pas vite"
chante = \markup { \italic chanté }
attendez = \markup { \upright \bold "Attendez" }
plusLent = "Plus lent"
reprendre = \markup { \italic "reprendre" }
rallUnPeu = "rallentir un peu"
percez = "Percez"
restez = \markup { \center-column { Restez "(un rien)" } }
plusVif = "plus vif"
droit = "droit devant vous"
gommeux = "gommeux"
sec = \markup { \italic "sec" }

% -------------
% --- Music ---
% -------------

highVoice = \relative {
  \tempo \pasVite
  s4 <b d>8 ( <cs e> <ds fs>4 ) |
  s4 <b d?>8 ( <cs e> <ds fs>4 ) |
  s4 <a c?>8 ( <b d!> <cs e>4 ) |
  s4 <a c?>8 ( <b? d> <cs e>4 ) |
  s2. * 5 |
  
  \barNumberCheck 10
  \tempo \plusLent
  \octaveUp
  \tweakPp <d'' e>4 ^\pp ( <cs a'> <b e> |
  d8 bf c d <bf e?>4 ) |
  << 
    { 
      g'4\rest <e, g>8 <fs a> <gs b>4 | 
      a'8\rest <a, a'>-. q4-> s | 
    } 
    \\ 
    { 
      a4\rest \forceHShift d,?8 ds \forceHShift f!4 |
      b4\rest \forceHShift <fs g!> <fs g> |
    } 
  >>
  \octaveBack
  \tweakP \shapeOne <a, d>4 ^\p ( <g b> <a d> |
  <g b> <a d> <g b> ) |
  d'8 ( a <g e'>4 <fs b> |
  <e c'>4 g8 d <c a'>4 ) |
  
  \barNumberCheck 18
  f!2. (
  a2. |
  f2. |
  a2 ) r4 |
  fs''4 r fs-> ~ ( |
  fs8 e gs4. e8 |
  d4 ) r d-> ~ ( |
  d8 cs d4. cs8 |
  fs4 ) r fs-> ~ ( |
  fs8 e gs4. e8 |
  d4. c!8 d4 ~ |
  d8 c! d4 ) r |
  
  \barNumberCheck 30
  s2. * 6 |
  <d g>4 ( <c e> <d g> |
  <c e>4 <d g> <c e> |
  <d g>4 <c e> <d g> |
  <c e>4 <d g> <c e> ) |
  
  \barNumberCheck 40
  d8 ( a <g e'>4 <fs b> |
  <e c'>4 g8 d <c a'>4 ) |
  d8 ( a <g e'>4 <fs b> |
  <e c'>4 g8 d <c a'>4 ) |
}

upperMiddle = \relative {
  s4 \forceHShift a8 as \forceHShift c4 |
  s4 \forceHShift a?8 as \forceHShift c4 |
  s4 \forceHShift g8 gs \forceHShift bf4 |
  s4 \forceHShift g?8 gs \forceHShift bf4 |
  s2. * 5 |
  
  \barNumberCheck 10
  \octaveUp
  d'4 <gs a> <fs a> |
  a,4 <f'! g!> <df g> |
  c2-> r4 |
  e2-> r4 |
  b,8 ( cs d4 e |
  f!4 e8 d cs4 ) |
  s2. * 2 |
  
  \barNumberCheck 18
  r4 <gs d'>2 |
  r4 <a cs>2 |
  r4 <gs d'>2 |
  r4 <a cs> q |
  \repeat unfold 8 { b'4 ^( a gs ) | }
  
  \barNumberCheck 30
  s2. * 6 |
  e'8 ( fs g4 a |
  b4 a8 g fs4 |
  e8 fs g4 a |
  b4 a8 g fs4 ) |
  
  \barNumberCheck 40
  <c e>4 ( <b d> <a c> |
  <g b>4 <f! a> <e g> ) |
  <c e>4 ( <b d> <a c> |
  \staffDown
  <g b>4 <f! a> <e g> ) |
  \staffUp
  s2. * 4 |
}

lowerMiddle = \relative {
  s2. * 4 |
  s4 <df ef>-.-- <df! ef!>-.-- |
  s4 <bf df>-.-- <bf! df!>-.-- |
  s4 << { <cs e!>8 <ds fs> <es gs>4 } 
        \\ 
        { \forceHShift b!8 bs \forceHShift d!4 } >> |
  s4 << { <cs e!>8 <ds fs> <es gs>4 } 
        \\ 
        { \forceHShift b!8 bs \forceHShift d!4 } >> |
  s2. |
  
  \barNumberCheck 10
  s2. * 8 |
  
  \barNumberCheck 18
  s2. * 4 |
  \staffUp 
  \repeat unfold 8 { cs'2_> \tweakRest g4\rest | }
  \staffDown
  
  \barNumberCheck 30
   <<
    {
      c4\rest <b, d>8 ( <cs e> <ds fs>4 ) |
    }
    \\
    {
      d4\rest \forceHShift a8 as \forceHShift c4 |
    }
  >>
  \repeat unfold 3 {
    <<
      {
        c'4\rest <b, d?>8 ( <cs e> <ds fs>4 ) |
      }
      \\
      {
        d4\rest \forceHShift a?8 as \forceHShift c4 |
      }
    >>
  }
  s2. * 6 |
  
  \barNumberCheck 40
  s2. * 4 |
  <<
    {
      <ef g b?>2.-> ( |
      <f a>2. ~ |
      q2. ~ |
      q4 ) s2 |
    }
    \\
    {
      \forceHShiftTwo \shapeTwo c2. ~ |
      \forceHShiftTwo \shapeTwo c2. ~ |
      \forceHShiftTwo \shapeTwo c2. ~ |
      \forceHShiftTwo c4 s2 |
    }
  >>
}

lowVoice = \relative {
  g2-> r4 |
  g2-> r4 |
  f!2-> r4 |
  f2-> r4 |
  g,?4 ( \forceHShift \tweakChante c _\chante g |
  f8 df ef f g4 |
  a?2-> ) r4 |
  a2-> r4 |
  s2. |
  
  \barNumberCheck 10
  s2. * 6 |
  \staffUp
  <c'! e>4 ( <b d> <a c> |
  \staffDown
  <g b>4 <f! a> <e g> ) |
  
  \barNumberCheck 18
  <d,, d'>2 <e e'>4 |
  <f f'>2 <g g'>4 |
  <d d'>2 <e e'>4 |
  <f f'>2 r4 |
  s2. * 8 |
  
  \barNumberCheck 30
  \repeat unfold 4 { g'2-> r4 | }
  s2. * 6 |
  
  \barNumberCheck 40
  s2. * 4 |
  \forceHShiftThree
  <c,, c'>4-. <d d'>-. <e? e'?>-. |
  <f f'>4-. <c c'>-. <f f'>-. |
  <c c'>4-. <f f'>-. <c c'>-. |
  <f f'>-. _\sec s2 |
}

% --- Dynamics, text, and musical terms

dynamicsHigh = {
  s2 s4 -\regarde
  s2. * 8 |
  
  \barNumberCheck 10
  s2. * 4 |
  \tweakOsera s4 -\osera \tweakReprendre s -\reprendre s |
  s2. * 3 |
  
  \barNumberCheck 18
  s2. * 4 |
  \tweakPpTwo s2 \pp s4 -\percez |
  s2. * 7 |
  
  \barNumberCheck 30
  s2. * 5 |
  \tweakF \tweakVif s2. \f -\plusVif |
  s2. * 4 |
  
  \barNumberCheck 40
  s2. -\droit
}

dynamics = {
  s2. * 4 |
  s2. -\fredonne |
  s2. * 3 |
  \tweakAttendez s2. -\attendez
  \break
  
  \barNumberCheck 10
  s2. -\puis 
  s2. * 3 |
  \break
  s2. * 4 |
  \break
  
  \barNumberCheck 18
  s4 \p s -\coeur s |
  s2. * 2 |
  s2. -\rallUnPeu |
  s2. -\prend |
  s2. * 2 |
  s2. -\raviss |
  s2. * 4 |
  
  \barNumberCheck 30
  s4 \pp s -\jolie s |
  s2. * 3 |
  s2. -\restez |
  s2. |
  s2. -\elle |
  s2. * 3 |
  
  \barNumberCheck 40
  s2. -\oui |
  s2. * 3 |
  \tweakFf s4 \ff -\ecrit \tweakGommeux s2 -\gommeux
  \tweakHairpin s4 \< s2 |
  s2 s4 \!
}

% -----------------------
% --- Layout and MIDI ---
% -----------------------

global = {
  \key c \major
  \time 3/4
}

upper = {
  \global
  \clef treble
  <<
    \new Voice { \voiceOne \highVoice }
    \new Voice { \voiceTwo \upperMiddle }
  >>
  \pageBreak
}

lower = {
  \global
  \clef bass
  <<
    \new Voice { \voiceThree \lowerMiddle }
    \new Voice { \voiceFour \lowVoice }
  >>
  \pageBreak
}

\paper {
  top-margin = 8\mm                              %-minimum top-margin: 8mm
  top-markup-spacing.basic-distance = #5         %-dist. from bottom of top margin to the first markup/title
  markup-system-spacing.basic-distance = #6      %-dist. from header/title to first system
  top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
  last-bottom-spacing.basic-distance = #11       %-pads music from copyright block
  
  % --- Set these to false after all editing is finished
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  ragged-right = ##f
}

\score {
  \new PianoStaff <<
    \new Dynamics { \global \dynamicsHigh }
    \new Staff = "upper" \upper
    \new Dynamics { \global \dynamics }
    \new Staff = "lower" \lower
  >>
  \layout { 
    \context {
      \Score
      \hide BarLine
      \hide SpanBar
      \remove "Bar_number_engraver"
    }
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
  } 
}

\include "articulate.ly"

\score {
  \articulate <<
    \new PianoStaff <<
      \new Staff ="upper" \upper
      \new Staff = "lower" \lower
    >>
  >>
  \midi { 
    \tempo 4 = 144
  }
}

% --------------------
% --- Translations ---
% --------------------

\markup {
  \column {
    \line { Translations by \with-url #"http://translate.google.com" { "Google Translate" } and some research }
    \line { \null }
    \line { Title: }
    \line { \hspace #2 \bold { Les Trois Valses Distinguées du Précieux Dégoûté } - Three Distinguished Waltzes of a Precious Fop }
    \line { \null }
    \line { Subtitle: }
    \line { \hspace #2 \bold { Sa Taille } - His Waist }
    \line { \null }
    \line { Preamble: }
    \line { \hspace #2 Those who damage the reputation or fortune of others, rather than losing a good word, deserve  }
    \line { \hspace #2 ignominious punishment. This has not been said, and I dare to say. (The BRUYERE "The Characters" }
    \line { \hspace #2 or The Mores of This Century, according to the edition of Messrs. C. SERVOIS and A. REBELLIAU) }
    \line { \null }
    \line { Text: }
    \line { \hspace #2 \bold \regarde - he looks at himself }
    \line { \hspace #2 \bold \fredonne - He hums a tune from the fifteenth century. }
    \line { \hspace #2 \bold \puis }
    \line { \hspace #4 Then he addresses himself with a restrained compliment. }
    \line { \hspace #2 \bold \osera - Who shall say that he is not the best? }
    \line { \hspace #2 \bold \coeur - Is not his heart soft? }
    \line { \hspace #2 \bold \prend - He takes himself by the waist. }
    \line { \hspace #2 \bold \raviss - He is delighted. }
    \line { \hspace #2 \bold \jolie - What will the pretty Marquise say? }
    \line { \hspace #2 \bold \elle - She will struggle but be defeated. }
    \line { \hspace #2 \bold \ecrit - Is it not written? }
    \line { \null }
    \line { Musical Terms: }
    \line { \hspace #2 \bold \pasVite - Not fast }
    \line { \hspace #2 \bold \chante - sung }
    \line { \hspace #2 \bold \attendez - Wait }
    \line { \hspace #2 \bold \plusLent - Slower }
    \line { \hspace #2 \bold \reprendre - resume (a tempo) }
    \line { \hspace #2 \bold \rallUnPeu - slow down a bit }
    \line { \hspace #2 \bold \percez - Break through }
    \line { \hspace #2 \bold { Restez (un rien) } - Stay (a bit) }
    \line { \hspace #2 \bold \plusVif - brighter }
    \line { \hspace #2 \bold \droit - straight ahead }
    \line { \hspace #2 \bold \gommeux - gummy }
    \line { \hspace #2 \bold \sec - dry }
  }
}
