\version "2.14.0"

\header {
  title = "Symphony No. 9 in E minor"
  subtitle = "From the New World"
  composer = "Antonín Dvořák"
  mutopiacomposer = "DvorakA"
  % arranger is printed just once, where opus is printed before each movement
  arranger = "Op. 95 (1893)"
  mutopiaopus = "Op. 95"
  mutopiainstrument = "Orchestra"
  source = "N. Simrock GmbH (1894)"
    % Plate 10140, IMSLP #41074-41083
  % checked against miniature score Simrock Plate 11892 (1908)
  % -- no editor identified on either plate"
  style = "Romantic"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Keith OHara"

 footer = "Mutopia-2011/10/03-1793"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2011. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "english.ly"

% Settings common to all movements
commonConductor = {
  #(set-accidental-style 'modern 'Score)
  \tag #'part \set Score.countPercentRepeats = ##t
  \override Score.PercentRepeat #'transparent = ##t
  \tag #'part \override Score.PercentRepeatCounter #'padding = #1.0
  \set Score.quotedCueEventTypes = #'(note-event rest-event tie-event
  beam-event tuplet-span-event trill-span-event
  articulation-event tremolo-event)
  \override Score.MetronomeMark #'break-align-symbols
  = #'(time-signature key-signature)
  \override Score.KeySignature #'break-align-anchor-alignment = #RIGHT
  \tag #'part \override Score.RehearsalMark #'extra-spacing-width = #'(0 . 0)
  \tag #'part \override Score.Hairpin #'to-barline =##f
  \tag #'part \compressFullBarRests
  \tag #'part \override Score.NonMusicalPaperColumn #'page-break-permission
  = ##f
  \override Score.Hairpin #'minimum-length = #4
  \override Score.TextScript #'whiteout = ##t
  \override Score.CombineTextScript #'whiteout = ##t
  \override Score.RehearsalMark #'padding = #2.0
  \set Score.markFormatter = #format-mark-box-numbers
  \tag #'score \override Score.DynamicText #'extra-spacing-width = ##f
  \override Score.InstrumentName #'self-alignment-X = #RIGHT
  \override Score.InstrumentName #'padding = #1.0
  \once\override Score.SpacingSpanner #'spacing-increment = #0.8
}

% If we include slurs with cue notes (quotedCueEventTypes above)
%  then sometimes we need to finish broken slurs in the CueVoice
stopSlurSpan = {}
%stopSlurSpan = #(make-span-event 'SlurEvent STOP)

% Page breaks for parts are in the .notes.ly files
% Breaks for the score are in percussion.notes.ly
partPageBreak = \tag #'part \pageBreak
scoreBreak = \tag #'score \break

inE = <<
  \tag#'part \mark "in E"
  \tag#'score s1*0^\markup\whiteout\pad-around#0.3 \large\halign #1.5 "in E"
>>
inC = <<
  \tag#'part \mark "in C"
  \tag#'score s1*0^\markup\whiteout\pad-around#0.3 \large\halign #1.5 "in C"
>>
inF = <<
  \tag#'part \mark "in F"
  \tag#'score s1*0^\markup\whiteout\pad-around#0.3 \large\halign #1.5 "in F"
>>
inB = <<
  \tag#'part \mark \markup\concat{"in B"\flat}
  \tag#'score s1*0^\markup\whiteout\pad-around#0.3 \large\halign #1.5
    \concat{"in B"\flat}
>>
inA = <<
  \tag#'part \mark "in A"
  \tag#'score s1*0^\markup\whiteout\pad-around#0.3 \large\halign #1.5 "in A"
>>
inEf = <<
  \tag#'part \mark \markup\concat{"in E"\flat}
  \tag#'score s1*0^\markup\whiteout\pad-around#0.3 \large\halign #1.5
    \concat{"in E"\flat}
>>

ub = -\tag #'part \upbow
db = -\tag #'part \downbow
arco = -\tweak #'self-alignment-X #1.0 -\markup\whiteout\pad-around#0.3 "arco"
pizz = -\tweak #'self-alignment-X #1.0 -\markup\whiteout\pad-around#0.3 "pizz."
div = -\tweak #'self-alignment-X #1.0 -\markup\whiteout\pad-around#0.3 "div."

ffz = #(make-dynamic-script "ffz")
fpp = #(make-dynamic-script "fpp")
fzp = #(make-dynamic-script "fzp")
puf = #(make-dynamic-script (markup #:normal-text #:italic "più" #:dynamic "f"))

#(set! absolute-volume-alist
  (append
    '(
      ("ffz" . 1.0)
      ("fz" . 0.9)
      ("fzp" . 0.68)
      ("fp" . 0.65)
    )
  absolute-volume-alist))

% Shorthand for labeled cues
%  use this as \cueWhile "violin1" "strings" #UP R1
cueWhile =
#(define-music-function
   (parser location instrument name dir music)
   (string? string? ly:dir? ly:music?)
    #{
      \cueDuring $instrument #$dir {
        \once \override TextScript #'direction = $dir
        \tag #'part s1*0-\markup { \tiny $name }
        $music
      }
    #}
  )
%  use this as \trCueWhile "violin1" "strings" #UP d, R1
trCueWhile =
#(define-music-function
   (parser location instrument name dir mc music)
   (string? string? ly:dir? ly:music? ly:music?)
    #{
      \transposedCueDuring $instrument #$dir $mc {
        \once \override TextScript #'direction = $dir
        \tag #'part s1*0-\markup { \tiny $name }
        $music
      }
    #}
  )

% used in a second ending in the Scherzo
thinSkip = {
  \once\override Score.SpacingSpanner #'spacing-increment = #0.1
  \newSpacingSection
  s2.
  \revert Score.SpacingSpanner #'spacing-increment
  \newSpacingSection
}

incrementBarNumber = {
  \applyContext #(lambda (x) (ly:context-set-property!
  (ly:context-property-where-defined x 'currentBarNumber)
  'currentBarNumber
  (+ (ly:context-property x 'currentBarNumber) 1)
  ))
}

decrementBarNumber = {
  \applyContext #(lambda (x) (ly:context-set-property!
  (ly:context-property-where-defined x 'currentBarNumber)
  'currentBarNumber
  (- (ly:context-property x 'currentBarNumber) 1)
  ))
}

% Hide dynamics in one voice for partcombine, for when the parts have
% slightly different rhythms, but not different enough for separate
% dynamics markings
scoreDynamicsOff =
  \tag #'score {
    \override DynamicText #'stencil = #point-stencil
    \override Hairpin #'stencil = #point-stencil
  }
%scoreDynamicsOn =
%  \tag #'score {
%    \revert DynamicText #'stencil
%    \revert Hairpin #'stencil
%  }

% Bar numbers of the rehearsal marks, for \barNumberCheck
allegroMolto = 24
rehearsalOne = 59
rehearsalTwo = 77
rehearsalThree = 91
rehearsalFour = 121
rehearsalFive = 149
rehearsalSix = 181
rehearsalSeven = 213
rehearsalEight = 245
rehearsalNine = 277
rehearsalTen = 308
rehearsalEleven = 342
rehearsalTwelve = 374
rehearsalThirteen = 400

OnemL = 21
TwomL = 46
ThreemL = 64
FourmL = 90
FivemL = 101

OnemS = 49
TwomS = 99
ThreemS = 123
FourmS = 154
FivemS = 192
SixmS = 239
SevenmS = 270

OnemF = 34
TwomF = 44
ThreemF = 68
FourmF = 92
FivemF = 122
SixmF = 144
SevenmF = 168
EightmF = 190
NinemF = 214
TenmF = 251
ElevenmF = 275
TwelvemF = 299
MenoMossomF = 327

