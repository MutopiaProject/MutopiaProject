\version "2.18.2"
paperOFF = { \set Score.skipTypesetting = ##t }
paperON = { \set Score.skipTypesetting = ##f }

barRest =  { s1 }

myBreak = { \break }

%% Hide note heads
hh  = { \override NoteHead.transparent = ##t }
uhh = { \revert NoteHead.transparent }
ohh = { \once\override NoteHead.transparent = ##t  }
% ohh = { \once\override NoteColumn.force-hshift = #1 }

% hide note entirely (stem up)
ohnu = {
    \once\override NoteHead.transparent = ##t
    \once\override Stem.transparent = ##t
    \once\override Stem.direction = #1
    \once\override Beam.transparent = ##t
}
% hide note entirely (stem down)
ohnd = {
    \once\override NoteHead.transparent = ##t
    \once\override Stem.transparent = ##t
    \once\override Stem.direction = #-1
    \once\override Beam.transparent = ##t
}


%% Force clashing note columns ('line up')
ignoreClash = \once \override NoteColumn.ignore-collision = ##t
lu  = { \override NoteColumn.force-hshift = #0 \ignoreClash }
ulu = { \revert NoteColumn.force-hshift }
olu = { \once\override NoteColumn.force-hshift = #0 \ignoreClash }

%% Change staff
csrh = { \change Staff = "rh" }
cslh = { \change Staff = "lh" }

%% simpler sustain commands
sd  =  { s8\sustainOn }
su  =  { s8\sustainOff }
sud =  { s8\sustainOff\sustainOn }

%% Dyn Text Spanners
setDimSpanner = {
  \override TextSpanner.bound-details.left.text = \markup { \left-align \italic "dim." }
  \override TextSpanner.direction = -1 %down
  \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
  \override TextSpanner.padding = #3.8
}
setCrescSpanner = {
  \override TextSpanner.bound-details.left.text = \markup { \italic "cresc." }
  \override TextSpanner.direction = -1 %down
  \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
  \override TextSpanner.padding = #3.8
}

%% tuplets
hideTupletBracket = \override TupletBracket.bracket-visibility = ##f
showTupletBracket = \revert TupletBracket.bracket-visibility
tupletNumberDown = \once \override TupletNumber.Y-offset = #-0.6

%% positioning
posDynTxtA = \once \override DynamicText.extra-offset = #'(0 . -0.8)
posDynSpanA = \once \override DynamicTextSpanner.extra-offset = #'(0 . -1.5)
posTxtScriptA = \once \override TextScript.extra-offset = #'(2 . 1)
posTxtScriptB = \once\override TextScript.extra-offset = #'(-4 . 0)
posHairpinA = \once \override Hairpin.extra-offset = #'(0 . -1.4)
beamFlattenA = \once \override Beam.damping = #+inf.0
beamFlattenB = \once\override Beam.damping = #5

%% labels
txtSostenuto = \markup { \override #'( baseline-skip . 1.6 )
                  \column { \bold \large "Sostenuto" 
                            \line { \hspace #4 \italic "con espressione e semplice" }
                  }
} 