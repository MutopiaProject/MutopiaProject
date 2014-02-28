%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Définition des titres - parties séparées                            *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

% Création de l'en-pied - la variable \Part DOIT être définie précédemment



\header {
  title = \markup {\fontsize #5 \lower #6 \thisWork}
  subtitle = \markup {
    \left-align \lower #4
    \column
    \center-align {\fontsize #3.8 \lower #3 \thisOrchester \fontsize #3.8 \lower #7 \thisTonality}
  }
  composer = \markup \center-column {\fontsize #3 \lower #2 \thisComposer}
  arranger = \markup {\fontsize #1 \lower #3 \thisOpus}
  
  tagline = \markup {
    \left-align
    \column
    \center-align
    {
      \fontsize #4 \bold \override #'(box-padding . 1.0)
      \override #'(baseline-skip . 2.7) \override #'(thickness . 2.0) \box \column
      {
        \center-align {
          \line {
            \hspace #0.5 \fontsize #-4 "This music has been typeset and placed in the public domain by J.F. Lucarelli"
          }
          \line {
            \hspace #0.5 \fontsize #-4 \with-url #"http://www.espace-midi.com/lilypond/en"
            \line {\fontsize #0 \thisWebSite}
          }
          \line {\hspace #0.5 \fontsize #-4 "Unrestricted modification and redistribution is permitted and encouraged"}
          \line {\hspace #0.5 \fontsize #-4 "Copy this music and share it!"}
          \line {\hspace #0.5 \fontsize #-4 {"Send comments or remarks to " \thisAddress}}
          \italic \line {
            \hspace #0.5 \fontsize #-4
            #(string-append "Engraved with LilyPond " (lilypond-version) " (http://www.LilyPond.org)")
          }
        }
      }
    }
  }


  % Pour publication dans MUTOPIA
  mutopiatitle = "Symphony Nr. 7"
  mutopiacomposer = "DvorakA"
  mutopiaopus = "Op.70"
  mutopiainstrument = "Orchestra"
  date = "1885"
  source = "Všeschna práva vyhrnazena - Plate H 1535"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "J.F. Lucarelli"
  maintainerEmail = "j-f.lucarelli@espace-midi.com"
  maintainerWeb = "http://www.espace-midi.com/lilypond/en"
  moreInfo = "Compiled with LilyPond 2.16.2 - Unzip using the original directory structure"

 footer = "Mutopia-2014/01/18-1901"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}
