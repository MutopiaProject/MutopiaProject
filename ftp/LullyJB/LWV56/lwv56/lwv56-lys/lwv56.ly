\header {
  copyrightYear = "2006"
  title = \markup \center-align { Psyché }
  
  composer = "Jean Baptiste Lully"
  poet = \markup \center-align {
    "Quinault, Corneille,"
    "Bernard le Bovier de Fontenelle"
  }
  opus = "LWV 56"
  date = "1678"
  %% manuscrit: 1690-1702
  notes = \markup \column {
    \line { Documents originaux :}
    \hspace #1
    \wordwrap { 
      Jean-Baptiste Lully (1632-1687), 
      \italic { Psiche} \hspace #-1 , Tragedie Representée
      par l'accademie
      Royalle de Musique. Copie de Philidor l'aîné.
      \with-url #"http://www.bibliotheques.versailles.fr/ClientBookLineVVER/recherche/NoticesDetaillees.asp?iNotice=9"
      \tiny \typewriter "http://www.bibliotheques.versailles.fr/"
    }
  }
}


\include "common/common.ily"
\include "LWV56/personnages.ily"

\currentOpus "LWV56"

\newPage
\newChapter
\includeScore "AAouverture"
\newChapter
\includeScore "ABflore"
\includeScore "ACchoeur"
\newPage
\includeScore "ADritournelle"
\includeScore "AEvertumnePalaemon"
\includeScore "AFmenuet"
\includeScore "AGflore"
\markup \huge \fill-line { 
  \line { On reprend le chœur 
          \italic { Nous goûtons une paix profonde. } }
}
\includeScore "AHvenus"
\includeScore "AIritournelle"
\includeScore "AJvenus"

\markup \huge \fill-line { 
  \line { Fin du prologue }
}

%% Premier acte
\newChapter
\includeScore "BAAritournelle"
\includeScore "BABaglaureCidippe"

\includeScore "BBAaglaureCidippeLycas"
\score {
  \newStaff {
    \key re \minor
    \time 4/4
    \clef bass 
    sol,4 sol, la, si, | \custosNote do1 |
  }
  \layout {
    indent = \noindent
    ragged-right = ##t
    \context { \Staff \remove "Time_signature_engraver" }
  }
}
\includeScore "BBBritournelle"
\includeScore "BBCaffliges"
\includeScore "BBDritournelle"
\includeScore "BBEaffliges"
\includeScore "BBGdesolee"

\includeScore "BCAaglaureCidippePsyche"

\includeScore "BDApsycheRoi"

%% Deuxième acte
\newChapter
\includeScore "CAAsymphonie"
\includeScore "CABvulcain"

\includeScore "CBAvulcainZephir"
\includeScore "CBBair"
\includeScore "CBCvulcain"
\includeScore "CBDritournelle"

\includeScore "CCAritournelle"
\includeScore "CCBvenusVulcain"
\includeScore "CCCritournelle"

\includeScore "CDApsyche"

\includeScore "CEAritournelle"
\includeScore "CEBpsycheNympheZephirAmour"

\includeScore "CFAritournelle"
\includeScore "CFBamourPsyche"
\includeScore "CFCritournelle"
\includeScore "CFDamour"
\includeScore "CFEair"
\includeScore "CFFnymphe"
\includeScore "CFGnymphes"

%% Troisième acte
\newChapter
\includeScore "DAAritournelle"
\includeScore "DABvenus"

\includeScore "DBApsyche"
\includeScore "DBBpsycheVenus"

\includeScore "DCApsycheAmour"

\includeScore "DDApsyche"

\includeScore "DEApsycheVenus"
\includeScore "DEBritournelle"
\includeScore "DECpsyche"

\includeScore "DFAfleuvePsyche"

%% Quatrième acte
\newChapter
\includeScore "EAAritournelle"
\includeScore "EABpsyche"
\markup \titre "On reprend la ritournelle"
\includeScore "EACpsyche"
\includeScore "EADair"
\includeScore "EAEfuries"
\includeScore "EAFpsycheFuries"
\includeScore "EAGfuries"
\includeScore "EAHair"
\includeScore "EAIair"
\includeScore "EAJfuries"
\includeScore "EAKnymphesPsyche"

%% Cinquième acte
\newChapter
\includeScore "FAAritournelle"
\includeScore "FABpsyche"

\includeScore "FBAvenusPsyche"

\includeScore "FCAmercureVenus"

\includeScore "FDAprelude"
\includeScore "FDBjupiterVenusPsycheAmour"
\includeScore "FDCjupiter"
\includeScore "FDDritournelle"
\includeScore "FDEapollon"
\includeScore "FDFchoeur"
\includeScore "FDGritournelle"
\includeScore "FDHbacchus"
\includeScore "FDImome"
\includeScore "FDJmars"
\includeScore "FDKchoeur"
\includeScore "FDLritournelle"
\includeScore "FDMapollon"
\includeScore "FDNritournelle"
\includeScore "FDOaDeux"
\includeScore "FDPair"
\includeScore "FDQbacchus"
\includeScore "FDRair"
\includeScore "FDSsilene"
\includeScore "FDTaTrois"
\includeScore "FDUentree"
\includeScore "FDVmome"
\includeScore "FDWmars"
\includeScore "FDXprelude"
\includeScore "FDYrondeau"
\includeScore "FDZair"

\markup \huge \fill-line { 
  \line { On reprend le chœur 
          \italic { Chantons les plaisirs charmants. } }
