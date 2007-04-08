\include "common/common.ily"

\header {
  %% Mutopia headers
  mutopiatitle = "Giulio Cesare"
  mutopiacomposer = "HandelGF"
  mutopiapoet = "Nicola Francesco Haym"
  mutopiaopus = "HWV 17"
  mutopiainstrument = "Dramatis Personae (Voice: 2 Sopranos, 3 Alto Castratos, Contralto, 2 Basses) and Orchestra (2 Recorders, Flute, 2 Oboes, 2 Bassoons, 4 Horns, Solo Violin, Violins, Violas, Viola da Gamba, Cellos, Harp, Theorbo (Large Lute), Continuo)"
  source = "Dover unaltered reprint of Deutschen Handelgesellschaft edition, volume 68, 1875"
  style = "Baroque"
  maintainer = "Nicolas Sceaux"
  maintainerEmail = "nicolas.sceaux@free.fr"
  maintainerWeb = "http://nicolas.sceaux.free.fr"
  lastupdated = "2006/May/01"

  title = "GIULIO CESARE"
  subtitle = "IN EGITTO"
  composer = "George Frideric Haendel"
  opus = "HWV 17"
  date = "1724"
  edition = \markup \center-align {
    \line { From the Deutsche Händelgesellschaft Edition }
    \line { Edited by Frideric Chrysander }}
  copyright = \markup \line { Copyright © 2005-2006 \maintainer }
  longcopyright = \markup \center-align {
    \line { \copyright \hspace #-1 . }
    \line { Licensed under the Creative Commons Attribution 2.5 License }
  }
  tagline = \markup { 
    \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7)
    \box \center-align {
      \small \line {
        \copyright
        \with-url #"http://nicolas.sceaux.free.fr"
        \teeny "<nicolas.sceaux.free.fr>"
        \hspace #-1 .
        Typeset using \with-url #"http://www.LilyPond.org" 
        \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org }
        #(ly:export (string-append "version " (lilypond-version))) \hspace #-1 .
      }
      \small \line { 
        Sheet music from \with-url #"http://www.MutopiaProject.org"
        \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 
                \teeny .org \hspace #0.5 }
        • \hspace #0.5 \italic Free to download, with the \italic freedom
        to distribute, modify and perform. } 
      \teeny \line { 
        Licensed under the Creative Commons Attributio 2.5 License, 
        for details see: \hspace #-0.5 
        \with-url #"http://creativecommons.org/licenses/by/2.5" 
        http://creativecommons.org/licenses/by/2.5 }
    }
  }
}
\pageBreakHack
\pageBreakNext
\includeScore "AAAouverture"
\includeScore "AABouverture"

%% Atto primo, scena I
\pageBreakNext
\includeScore "BAAcoro"
                                % Break A4
                                % Break letter
\includeScore "BABcesare"
                                % Break letter
\includeScore "BACrecit"
%% scena II
\includeScore "BBArecit"
%% scena III
\includeScore "BCArecit"
\includeScore "BCBcesare"
                                % Break A4
%% scena IV
\includeScore "BDArecit"
\includeScore "BDBcornelia"
\includeScore "BDCrecit"
                                % Break A4
\includeScore "BDDsesto"
                                % Break letter
%% scena V
\includeScore "BEArecit"
\includeScore "BEBcleopatra"
%% scena VI
\includeScore "BFArecit"
\includeScore "BFBtolomeo"
                                % Break letter
%% scena VII
\includeScore "BGAcesare"
\includeScore "BGBrecit"
\includeScore "BGCcesare"
\includeScore "BGDrecit"
\includeScore "BGEcleopatra"
\includeScore "BGFrecit"
                                % Break A4
%% scena VIII
\includeScore "BHAcornelia"
\includeScore "BHBrecit"
\includeScore "BHCsesto"
\includeScore "BHDrecit"
\includeScore "BHEcleopatra"
%% scena IX
\includeScore "BIArecit"
                                % Break A4
\includeScore "BIBcesare"
%% scena X
\includeScore "BJArecit"
%% scena XI
\includeScore "BKArecit"
                                % Break letter
\includeScore "BKBachilla"
\includeScore "BKCrecit"
                                % Break letter
\includeScore "BKDcorneliaSesto"
\markup \column {
  \vspace #4
  \fill-line  { 
    \null
    \fontsize #4 \line { Fine dell' Atto Primo. } 
    \null
  }
}

%% Atto secondo scena I
\pageBreakNext
\includeScore "CAArecit"
                                % Break A4
                                % Break letter
%% scena II
\includeScore "CBArecit"
\includeScore "CBBsinfonia"
\includeScore "CBCrecit"
\includeScore "CBDsinfonia"
                                % Break letter
\includeScore "CBErecit"
                                % Break A4
\includeScore "CBFcleopatra"
\includeScore "CBGrecit"
\includeScore "CBHrecit"
\includeScore "CBIcesare"
%% scena III
\includeScore "CCAcornelia"
\includeScore "CCBrecit"
                                % Break A4
%% scena IV
\includeScore "CDArecit"
\includeScore "CDBachilla"
\includeScore "CDCrecit"
                                % Break A4
\includeScore "CDDtolomeo"
                                % Break A4
                                % Break letter
%% scena V
\includeScore "CEArecit"
%% scena VI
\includeScore "CFArecit"
\includeScore "CFBcornelia"
\includeScore "CFCrecit"
\includeScore "CFDsesto"
%% scena VII
\includeScore "CGArecit"
\includeScore "CGBcleopatra"
                                % Break A4
                                % Break letter
\includeScore "CGCrecit"
%% scena VIII
\includeScore "CHArecit"
\includeScore "CHBcesare"
\includeScore "CHCrecit"
\includeScore "CHDcleopatra"
                                % Break letter
%% scena IX
\includeScore "CIAtolomeo"
                                % Break letter
\includeScore "CIBrecit"
                                % Break A4
%% scena X
\includeScore "CJArecit"
                                % Break letter
%% scena XI
\includeScore "CKArecit"
                                % Break A4
\includeScore "CKBsesto"
\markup \column {
  \vspace #4
  \fill-line  { 
    \null
    \fontsize #4 \line { Fine dell' Atto Secondo. }
    \null
  }
}

%% Atto terzo scena I
\pageBreakNext
\includeScore "DAArecit"
\includeScore "DABachilla"
%% scena II
\includeScore "DBAsinfonia"
\includeScore "DBBrecit"
\includeScore "DBCtolomeo"
%% scena III
\includeScore "DCArecit"
                                % Break A4
                                % Break letter
\includeScore "DCBcleopatra"
                                % Break letter
%% scena IV
\includeScore "DDArecit"
                                % Break A4
\includeScore "DDBcesare"
                                % Break letter
\includeScore "DDCrecit"
%% scena V
\includeScore "DEArecit"
\includeScore "DEBcesare"
                                % Break A4
%% scena VI
\includeScore "DFArecit"
\includeScore "DFBsesto"
%% scena VII
\includeScore "DGAcleopatra"
\includeScore "DGBrecit"
\includeScore "DGCcleopatra"
                                % Break letter
%% scena VIII
\includeScore "DHArecit"
%% scena IX
\includeScore "DIArecit"
\includeScore "DIBcornelia"
                                % Break A4
%% scena X
\includeScore "DJAsinfonia"
\includeScore "DJBrecit"
                                % Break A4
\includeScore "DJCcleopatraCesare"
\includeScore "DJDrecit"
                                % Break letter
\includeScore "DJEcoro"
\markup \column {
  \vspace #4
  \fill-line  { 
    \null
    \fontsize #4 \line { Fine dell' Opera. } 
    \null
  }
}
