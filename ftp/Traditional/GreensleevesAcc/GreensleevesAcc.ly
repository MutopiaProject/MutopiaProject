% ****************************************************************************
% ****************************************************************************
% ****************************************************************************
  
% Lets scale the size a bit down to get it on two pages

#(set-global-staff-size 20)

% ****************************************************************************
% ****************************************************************************
% ****************************************************************************
  
\header {
    title = "Greensleeves"
    subtitle = "for Standard Bass Accordion"
    composer = "Traditional"

    mutopiatitle = "Greensleeves"
    mutopiacomposer = "Traditional"
    mutopiainstrument = "Accordion"

    source = "Mutopia Project"
    style = "Renaissance"
    copyright = "Public Domain"

    maintainer = "Ralf Axel Gehlert"

    maintainerEmail = "raggraebe-mutopia@Yahoo.Com"
    lastupdated = "2008/Jan/12"

    moreInfo="This piece is a simple version of the well known song for the standard bass accordion. It is an adaption of mutopias piano version."
 footer = "Mutopia-2008/01/20-1265"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.10.0"

% ****************************************************************************
% ****************************************************************************
% ****************************************************************************
  
global =  {
  \key a \minor
  \time 3/4
  s4*1
  s4*48
  \bar "||"
  s4*48
  \bar "||"
}

% ****************************************************************************
% ****************************************************************************
% ****************************************************************************

ulFis = \markup { \combine "Fis" "___" }
ulCis = \markup { \combine "Cis" "___" }
ulH = \markup { \combine "H" "__" }
  
accordionA = \context Staff \relative c''\new Voice {
  \time 3/4
    \partial 4 a4 
    c2 d4 
    e4. f8 e4 
    d2 b4 
    g4. a8 b4 
    c2 a4 
    a4. gis8 a4 
    b2 gis4 
    e2 a4 
    c2 d4 
    e4. f8 e4 
    d2 b4 
    g4. a8 b4
    c4. b8 a4 
    gis4. fis8 gis4 
    a2. 
    a2.

    g'2. g4. 
    fis8 e4 d2 b4 g4. a8 b4
    c2 a4 a4. gis8 a4 b2 gis4 e2.
    g'2. g4. fis8 e4 
    d2 b4 g4. a8 b4 
    c4. b8 a4 gis4. fis8 gis4 
    a2. a2. 
}


accBassAccC  = <e g c'>4
accBassAccE  = <e gis b>4
accBassAccEsept = <e gis d'>4
accBassAccF  = <f a c'>4
accBassAccG  = <g b d'>4
accBassAccAmLong = <a, e a c'>2._am
accBassAccAm = <e a c'>4

accBassC     = c4
accBassD     = d4
accBassE     = e,4
accBassF     = f,4
accBassG     = g,4
accBassA     = a,4
accBassB     = b,4

%\relative c 
lowerA = \context Staff  \new Voice = "bassvoice"  {
  \time 3/4
    \partial 4 r4
    \accBassA \accBassAccAm \accBassAccAm 
    \accBassE \accBassAccAm \accBassAccAm 
    \accBassG \accBassAccG \accBassAccG
    \accBassD \accBassAccG \accBassAccG 
    \accBassF \accBassAccF \accBassAccF
    \accBassC \accBassAccF \accBassAccF 
    \accBassE \accBassAccE \accBassAccE
    \accBassB \accBassAccE \accBassAccE 

    \accBassA \accBassAccAm \accBassAccAm 
    \accBassE \accBassAccAm \accBassAccAm 
    \accBassG \accBassAccG \accBassAccG
    \accBassD \accBassAccG \accBassAccG 
    \accBassF \accBassAccF \accBassAccF
    \accBassE \accBassAccEsept \accBassAccEsept
    \accBassA \accBassAccAm \accBassAccAm 
    \accBassAccAmLong

    \accBassC \accBassAccC \accBassAccC
    \accBassG \accBassAccC \accBassAccC 
    \accBassD \accBassAccG \accBassAccG
    \accBassG \accBassAccG \accBassAccG 
    \accBassF \accBassAccF \accBassAccF
    \accBassC \accBassAccF \accBassAccF 
    \accBassE \accBassAccEsept \accBassAccEsept
    \accBassB \accBassAccEsept \accBassAccEsept

    \accBassC \accBassAccC \accBassAccC
    \accBassG \accBassAccC \accBassAccC 
    \accBassD \accBassAccG \accBassAccG
    \accBassG \accBassAccG \accBassAccG 
    \accBassF \accBassAccF \accBassAccF
    \accBassE \accBassAccEsept \accBassAccEsept
    \accBassA \accBassAccAm \accBassAccAm 
    \accBassAccAmLong
}

textA = \lyricmode {
  A am am
  E am am
  G g g
  D g g
  F f f
  C f f
  E e e
  B e e

  A am am
  E am am
  G g g
  D g g
  F f f
  E "e7" "e7"
  A am am
  A

  C c c
  G c c
  D g g
  G g g
  F f f
  C f f
  E "e7" "e7"
  B "e7" "e7"

  C c c
  G c c
  D g g
  G g g
  F f f
  E "e7" "e7"
  A am am
  A

}

% ****************************************************************************
% ****************************************************************************
% ****************************************************************************
  
\score {
    \new PianoStaff <<
    \set PianoStaff.instrumentName = "Accordion"
	\new Staff = "treble" << 
	    \global 
% \set Staff.midiInstrument = "accordion"
	    \clef violin
	    \accordionA
	>>
	\new Staff = "bass" <<
	    \global
% \set Staff.midiInstrument = "accordion"
	    \clef bass
	    \lowerA
	>>
        \new Lyrics \lyricsto bassvoice \textA
    >>
    \layout {
	\context {
	    \Score
	    \override SpacingSpanner #'spacing-increment = #2
	}
    }
    
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 150 4)
      }
    }


}

% ****************************************************************************
% ****************************************************************************
% ****************************************************************************
  
%% Local Variables:
%% coding: utf-8
%% End:
