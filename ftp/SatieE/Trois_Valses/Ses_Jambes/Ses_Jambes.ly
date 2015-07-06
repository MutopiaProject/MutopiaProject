\version "2.19.21"
\language "english"

\header {
  title        = "Les Trois Valses Distinguées du Précieux Dégoûté"
  subtitle     = "III. Ses Jambes"
  composer     = "Erik Satie (1866-1925)"
  dedication   = "à René CHALUPT"
  style        = "Avant-garde"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  lastupdated  = "2015-Jun-21"
  date         = "1914"
  source       = "Paris: Rouart, Lerolle & Cie., 1916. Plate R.L. 10,166 & Cie."

  mutopiatitle       = "Ses Jambes"
  mutopiacomposer    = "SatieE"
  mutopiainstrument  = "Piano"
  mutopiastyle       = "Modern"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"

 footer = "Mutopia-2015/07/02-2029"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

% ------------------------------
% --- Changes from the score ---
% ------------------------------

% Bar 5: missing bass clef
% Bar 14: extra quarter rest
% Bar 34: third beat, inner voice, add same chord as second beat

% ----------------
% --- Preamble ---
% ----------------

\markup {
  \column {
    \line { \hspace #32 Le premier soin du propriétaire, quand il est arrivé à }
    \line { \hspace #30 sa ferme, doit etre de saluer ses Pénates domestiques; }
    \line { \hspace #30 puis le meme jour, s'il en a le loisir, qu'il fasse le }
    \line { \hspace #30 tour de son domaine; qu'il voie l'état des cultures; les } 
    \line { \hspace #30 travaux achevés, ceux qui ne le sont pas. }
    \line { \hspace #28 (CATON: "De ne rustica" traduction A. JEANROY et A. PEUCH) }
    \line { \null }
  }
}

% -------------------
% --- Definitions ---
% -------------------

staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

forceHShiftOne = \once \override NoteColumn.force-hshift = -1
forceHShiftTwo = \once \override NoteColumn.force-hshift = -0.3
forceHShiftThree = \once \override NoteColumn.force-hshift = -1.6

tweakF = \once \override DynamicText.extra-offset = #'(-1.75 . -4) 
tweakTempo = \once \override TextScript.extra-offset = #'(-2 . 2)
tweakFTwo = \once \override DynamicText.extra-offset = #'(0 . -4) 
tweakDanse = \once \override TextScript.extra-offset = #'(0 . -1.5)
tweakPp = \once \override DynamicText.extra-offset = #'(-3 . -2) 
tweakRest = \once \override Rest.extra-offset = #'(0.5 . 0)
tweakP = \once \override DynamicText.extra-offset = #'(-1 . -1)
tweakCombien = \once \override TextScript.extra-offset = #'(0 . 2)
tweakPTwo = \once \override DynamicText.extra-offset = #'(0 . -2.5)
tweakHairpin = \once \override Hairpin.extra-offset = #'(0 . -2.5)
tweakFThree = \once \override DynamicText.extra-offset = #'(-2 . -1)
tweakFFour = \once \override DynamicText.extra-offset = #'(0 . -1) 

shapeOne = \shape #'((0 . 1.5) (0 . 1.5) (0 . 1.5) (0 . 1.5)) Slur 
shapeTwo = \shape #'((0 . -1.25) (0 . 0) (0 . 0) (0 . 0)) Slur
shapeThree = \shape #'((0 . -0.75) (0 . -.25) (0 . 0) (0 . 0)) Slur
shapeFour = \shape #'((0 . -3) (0 . 0) (0 . 0) (0 . -3)) Slur
shapeFive = \shape #'((0 . -3) (0 . 0) (0 . 0) (0 . -2)) Slur
shapeSix = \shape #'((0 . 0) (0 . 0) (0 . 1.5) (-1 . 2)) Slur

% --- Text
fier = \markup { \upright "Il en est très fier." }
danseOne = \markup { \upright "Elles ne dansent" }
danseTwo = \markup { \upright "que des danse de choix." }
plates = \markup { \upright "Ce sont de belles jambes plates." }
noir = \markup { \upright "Le soir, elles sont vêtues de noir." }
porter = \markup { \upright "Il veut les porter sous son bras." }
glissent = \markup { \upright "Elles glissent, toutes mélancoliques." }
indig = "Les voici indignées, très en colère."
embrasse = \markup { \upright "Souvent, il les embrasse et les met à son cou." }
combien = \markup { \upright "Combien il est bon pour elles!" }
refuse = \markup { \upright "Energiquement, il refuse d'acheter des jambières." }
prison = \markup { \upright "__ Une prison! dit-il." }

% --- Musical terms
determine = \markup { \large \bold \upright "Déterminé" }
mains = "des deux mains"
rebond = "rebondissez sommairement"
toussez = "Ne toussez pas"
remuez = "remuez-vous"
continuez = "continuez, sans perdre connaissance"

% -------------
% --- Music ---
% -------------

highVoice = \relative {
  <a' d>4-> ( <cs e> <b g'> |
  <a d>4-> <cs e> <b g'> ) |
  <a c!>4-> ( < bf d> <c f> |
  <a c>4-> < bf d> <c f> ) |
  fs,8 ( gs b!4 fs!8 gs! |
  b4 e,8 fs a4 |
  e8 fs a4 ) s4 |
  s2. |
  
  \barNumberCheck 9
  s2. * 4 |
  \staffDown
  b,4 ( cs e |
  b4 cs e ) |
  \staffUp
  a4 ( b d |
  a4 b d ) |
  
  \barNumberCheck 17
  fs'8 ( a ) r4 fs!8 ( a ) |
  r4 fs8 ( a ) r4 |
  fs,8 ( a ) r4 fs!8 ( a ) |
  r4 fs8 ( a ) r4 |
  cs,2 ( fs4 ~ |
  fs4 cs 2 |
  b2 d4 ~ |
  d4 b2 ) |
  
  \barNumberCheck 25
  b8 ( g f?4 b8 g |
  f?4 b8 g f?4 ) |
  a8 ( f? e4 a8 f? |
  e4 a8 f? e4 ) |
  <a, b>4 ( <bf c> <b e> ) |
  <a b>4 ( <bf c> <b e> ) |
  \staffDown
  <g a>4 ( <gs b> <a d> ) |
  <g a>4 ( <gs b> <a d> ) |
  \staffUp
  
  \barNumberCheck 33
  r4 ( fs''8 cs' fs4 ) |
  r4 ( e,8 b'? d4 ) |
  r4 ( fs,8 cs' fs4 ) |
  r4 ( e,8 b'? d4 ) |
  b,4\rest ds,8 ( es gs4 ) | 
  b4\rest ds,8 ( es gs4 ) |
  b4\rest ds,8 ( es gs4 ) |
  b4\rest ds,8 ( es gs4 ) |
  
  % \barNumberCheck 41
  \staffDown
  \acciaccatura { <b,, b'>8 } <b fs' b>4-> ~ q8 r r4 |
  \staffUp
  \acciaccatura { <b' b'>8 } <b fs' b>4-> ~ q8 r r4 |
  \acciaccatura { <b' b'>8 } <b fs' b>4-> ~ q8 r r4 |
  \acciaccatura { <b' b'>8 } <b fs' b>4-> ~ q8 r r4 |
  <b b'>4-> <cs cs'>-. <e e'>-. |
  <b b'>4-> <cs cs'>-. <e e'>-. |
  <b b'>4-> <cs cs'>-. <e e'>-. |
  <e e'>-.-- s2 |
}

upperMiddle = \relative {
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 4
  \staffDown
  \forceHShiftOne g2. |
  \forceHShiftOne g2. |
  \staffUp
  f'!4 g a |
  f4 g a |
  
  \barNumberCheck 17
  b4 ( cs e |
  b4 cs e |
  a,4 b d |
  a4 b d ) |
  \shapeTwo e,4 ( fs a |
  e4 fs a ) |
  \shapeThree d,4 ( e g  |
  d4 e g ) |
  
  \barNumberCheck 25
  r4 b,2-> |
  b2-> b4-> |
  r4 a2-> |
  a2-> a4-> |
  s2. * 4 |
  
  \barNumberCheck 33
  s4 <bf' d> <bf! d> | 
  s4 <bf c!> q |
  s4 <bf d> <bf! d> | 
  s4 <bf c!> q |
  s2. * 4 |
  
  \barNumberCheck 41
}

lowerMiddle = \relative {
  s2. * 8 |
  
  \barNumberCheck 9
  c!8 ( d fs4 c8 d |
  fs4 c8 d fs!4 |
  c8 d fs4 c8 d |
  fs4 c8 d fs!4 ) |
  b,2 f'4\rest |
  b,2 f'4\rest |
  s2. * 2 |
  
  \barNumberCheck 17
  s2. * 4 |
  \staffUp
  b2. _~ |
  b2 \tweakRest b4\rest |
  a2. _~ |
  a2 \tweakRest a4\rest |
  \staffDown
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  \staffUp
  \shapeSix fs'2. _( |
  g2. |
  fs2. |
  g2 g,4\rest ) |
  \staffDown
  fs2_> g,4\rest |
  fs'2_> g,4\rest |
  fs'2_> g,4\rest |
  fs'2_> g,4\rest |
  
  \barNumberCheck 41
}

lowVoice = \relative {
  \clef treble
  <fs' g>4 ^( <e g> <d g> |
  <fs g>4 <e g> <d g> ) |
  <ef g>4 ^( <f! g> <d g> |
  <ef g>4 <f g> <d g> ) |
  \clef bass
  bf4 <d f!> <d e> |
  fss,4 <cs' d> <b? d> |
  <gs, gs'>4-> <fs fs'>-. <e e'>-. |
  <d d'>4-> <cs cs'>-. <b b'>-.
  
  \barNumberCheck 9
  \forceHShiftThree <bf bf'>4-> <bf! bf'!>-. \forceHShiftThree <bf! bf'!>-. |
  <bf bf'>4-> \forceHShiftThree <bf! bf'!>-. <bf! bf'!>-. |
  \forceHShiftThree <bf bf'>4-> <bf! bf'!>-. \forceHShiftThree <bf! bf'!>-. |
  <bf bf'>4-> \forceHShiftThree <bf! bf'!>-. <bf! bf'!>-. |
  \forceHShiftTwo a'2 ( e4 
  \forceHShiftTwo a2 )r4 |
  s2. * 2 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  \shapeFour fs'4 ( g _\indig a |
  fs4 g a ) |
  \shapeFive e4 ( fs g |
  e4 fs g ) |
  <g, g'>4-. <f! f'!>-. <e e'>-. |
  <d d'>4-. <c? c'?>-. <b b'>-. |
  <e e'>4-. <d d'>-. <c c'>-. |
  <e e'>2-> r4 |
  
  \barNumberCheck 33
  s2. * 4 |
  f''4\rest <b, c?> q |
  f'4\rest <b, c?> q |
  f'4\rest <b, c?> q |
  f'4\rest <b, c?> q |
  
  \barNumberCheck 41
  <b,,, b'>4-> <cs cs'>-. <e e'>-. |
  <b' b'>4-> <cs cs'>-. <e e'>-. |
  <b' b'>4-> <cs cs'>-. <e e'>-. |
  \staffUp
  <b' b'>4-> <cs cs'>-. <e e'>-. |
  <fs' gs>2-> r4 |
  <fs gs>2-> r4 |
  <fs gs>2-> r4 |
  <fs gs>4-.-- s2 |
}

% --- Dynamics, text, and musical terms

dynamicsHigh = {
  \tweakF \tweakTempo s2. \f -\determine |
  s2. * 3 |
  \tweakFTwo s2. \f 
  \tweakDanse s2 -\danseOne s4 |
  \break
  s2. -\danseTwo |
  s2. |
  
  \barNumberCheck 9
  s2. * 4 |
  \break
  s2. -\noir |
  s2. * 3 |
  
  \barNumberCheck 17
  \tweakPp s2. \pp |
  s2. * 3 |
  s4 s -\rebond s |
  s2. * 3 |
  \break
  
  \barNumberCheck 25
  \tweakP s2. \p |
  s2. * 3 |
  \tweakFFour s4 \f s-\toussez s |
  s2. * 3 |
  
  \barNumberCheck 33
  s2. \p |
  s2. * 2 |
  s2. |
  \break
  \tweakCombien s4 -\combien \tweakPTwo s \p s |
  s4 \tweakHairpin s \< s |
  s2 s4 \! |
  s2 -\refuse s4 -\remuez |
  
  \barNumberCheck 41
  s2. * 3 |
  s2. -\prison |
}

dynamics = {
  s2 s4 -\fier |
  s2. * 7 |
  
  \barNumberCheck 9
  s4 s -\plates s |
  s2. * 3 |
  s2. \p |
  s2. |
  s2. -\mains |
  s2. |
  
  \barNumberCheck 17
  s2. -\porter |
  s2. * 3 |
  s2. -\glissent |
  s2. * 3 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. -\embrasse |
  s2. * 7 |
  
  \barNumberCheck 41
  \tweakFThree s2. \f |
  s2. * 3 |
  s2. -\continuez |
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
    \tempo 4 = 208
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
    \line { \hspace #2 \bold { Ses Jambes } - His Legs }
    \line { \null }
    \line { Preamble: }
    \line { \hspace #2 The first care of the owner, when he arrived at his farm  }
    \line { \hspace #2 must be to salute his household household gods;  }
    \line { \hspace #2 then the same day, if he has leisure, he should tour }
    \line { \hspace #2 his domain, see the condition of his crops -- the work }
    \line { \hspace #2 that is completed, and that which is not. }
    \line { \hspace #2 (Caton: "About the Country" translation A. JEANROY and A. PEUCH) }
    \line { \null }
    \line { Text: }
    \line { \hspace #2 \bold \fier - He is very proud. }
    \line { \hspace #2 \bold "Elles ne dansent que des danse de choix." - They only dance the select dances. }
    \line { \hspace #2 \bold \plates - They are beautiful, thin legs. }
    \line { \hspace #2 \bold \noir - At night, they are dressed in black. }
    \line { \hspace #2 \bold \porter - He wants to carry them under his arm. }
    \line { \hspace #2 \bold \glissent - They glide, all melancholy. }
    \line { \hspace #2 \bold \indig - Here they are indignant, very angry. }
    \line { \hspace #2 \bold \embrasse - Often he embraces them and makes them run away. * }
    \line { \hspace #2 \bold \combien - How good it is for them! }
    \line { \hspace #2 \bold \refuse - Emphatically, he refuses to buy leggings. }
    \line { \hspace #2 \bold \prison - A prison! he says. }
    \line { \null }
    \line { Musical Terms: }
    \line { \hspace #2 \bold Déterminé - Determined }
    \line { \hspace #2 \bold \mains - with both hands }
    \line { \hspace #2 \bold \rebond - bounce back briefly }
    \line { \hspace #2 \bold \toussez - Do not cough }
    \line { \hspace #2 \bold \remuez - get going }
    \line { \hspace #2 \bold \continuez - continue, without losing consciousness }
    \line { \null }
    \line { Notes: }
    \line { \hspace #2 "Literally, \"makes them his neck\".  This seems to be a play on a French idiom." }
  }
}
