\header {
  copyrightYear = "2006"
  title = "Psyché"
  composer = "Jean Baptiste Lully"
  poet = \markup \column {
    \fill-line { "Quinault, Corneille," }
    \fill-line { "Bernard le Bovier de Fontenelle" }
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
      \tiny \typewriter "http://www.bibliotheques.versailles.fr"
    }
  }
}

#(ly:set-option 'use-rehearsal-numbers #t)

\include "italiano.ly"
\include "common/common14.ily"

\setOpus "Lully/Opera/LWV56Psyche"
\opusTitle "Psyché"
\include "Lully/Opera/LWV56Psyche/personnages.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Title page
\markup \null
\pageBreak

%%% notes
\markup \null
\pageBreak

%%% Table of contents
\markuplines \table-of-contents
\pageBreak
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Prologue
\ouverture "Ouverture"
\includeScore "AAAouverture"
\actn "Prologue"
\sceneDescription \markup \wordwrap-center {
  La scène représente sur le devant un lieu champêtre,
  et dans l'enfoncement un rocher percé à jour, à travers
  duquel on voit la mer en éloignement. 
  Flore paraît au milieu du théâtre, accompagnée de
  Vertumne, dieu des arbres et des fruits, et de Palaemon,
  dieu des eaux. Chacun de ces dieux conduit une troupe de
  divinités; l'un mène à sa suite des Dryades et des
  Sylvains; et l'autre des Dieux des fleuves et des 
  Naïades. 
  Flore chante ce récit pour inviter Vénus à descendre
  en terre.
}
\pieceToc \markup { Flore : \italic { Ce n'est plus le temps de la guerre }}
\includeScore "AABflore"
\pieceTocAndTitle \markup \wordwrap-center {
  Chœur des divinités de la terre et des eaux, composé de Flore,
  Nymphes, Palaemon, Vertumne, Sylvains, Faunes, Dryades et Naïades.
} \markup { Chœur : \italic { Nous goûtons une paix profonde } }
\includeScore "AACchoeur"
\pieceTocAndTitle \markup \wordwrap-center {
  Entrée de ballet composée de deux Dryades, quatre Sylvains, deux
  Fleuves et deux Naïades.
} \markup { Entrée de ballet }
\includeScore "AADritournelle"
\pieceToc \markup { Vertumne, Palaemon : \italic { Rendez-vous, beautés cruelles } }
\includeScore "AAEvertumnePalaemon"
\pieceTocTitle "Ritournelle"
\includeScore "AAFmenuet"
\pieceToc \markup { Flore : \italic { Est-on sage dans le bel âge }}
\includeScore "AAGflore"
\markup \title \fill-line {
  \line {
    On reprend le chœur 
    \italic { Nous goûtons une paix profonde }
    page \page-refII #'AACchoeur .
  }
}
\pieceToc \markup { Vénus : \italic { Pourquoi du ciel m'obliger à descendre }}
\includeScore "AAHvenus"
\pieceTocTitle "Ritournelle"
\includeScore "AAIritournelle"
\pieceToc \markup { Vénus : \italic { Mon fils, si tu plains mes malheurs }}
\includeScore "AAJvenus"

\actEnd \markup { FIN DU PROLOGUE }

%% Premier acte
\act "Acte Premier"
\scene "Scène Première"
\sceneDescription \markup \wordwrap-center {
  \smallCaps { Aglaure, Cidippe. }
}
\pieceTocTitle "Ritournelle"
\includeScore "BAAritournelle"
\pieceToc \markup { Aglaure, Cidippe }
\includeScore "BABaglaureCidippe"
%%
\scene "Scène II"
\sceneDescription \markup \column {
  \fill-line { \line \smallCaps { Aglaure, Cidippe, Lycas, } }
  \fill-line { \line { une femme affligée, deux hommes désolés. } }
}
\pieceToc \markup { Aglaure, Cidippe, Lycas }
\includeScore "BBAaglaureCidippeLycas"
\score {
  \new Staff {
    \keys re \minor
    \time 4/4
    \clef "basse" 
    sol,4 sol, la, si, | \custosNote do4
  }
  \layout {
    indent = \noindent
    ragged-right = ##t
    \context { \Staff \remove "Time_signature_engraver" }
  }
}
\pieceToc \markup Ritournelle
\includeScore "BBBritournelle"
\pieceToc \markup \italic { Deh piangete al pianto mio }
\includeScore "BBCaffliges"
\pieceToc \markup Ritournelle
\includeScore "BBDritournelle"
\pieceToc \markup \italic { Com'esser può fra voi }
\includeScore "BBEaffliges"
\pieceToc \markup Ritournelle
\includeScore "BBFritournelle"
\pieceToc \markup \italic { Ahi! ch'indarno si tarda! }
\includeScore "BBGdesolee"
%%
\scene "Scène III"
\sceneDescription \markup \wordwrap-center {
  \smallCaps { Aglaure, Cidippe, Psyché. }
}
\pieceToc \markup { Aglaure, Cidippe, Psyché }
\includeScore "BCAaglaureCidippePsyche"
%%
\scene "Scène IV"
\sceneDescription \markup \wordwrap-center {
  \smallCaps Psyché, le Roi.
}
\pieceToc \markup { Psyché, le Roi }
\includeScore "BDApsycheRoi"
\actEnd \markup { FIN DU PREMIER ACTE }

%% Deuxième acte
\act "Acte Second"
\scene "Scène Première"
\sceneDescription \markup \wordwrap-center \smallCaps { Vulcain. }
\pieceTocTitle "Symphonie"
\includeScore "CAAsymphonie"
\pieceToc \markup { Vulcain : \italic { Cyclopes, achevez ce superbe palais }}
\includeScore "CABvulcain"
%%
\scene "Scène II"
\sceneDescription \markup \wordwrap-center \smallCaps { Zéphir, Vulcain. }
\pieceToc \markup { Zéphir, Vulcain }
\includeScore "CBAvulcainZephir"
\pieceTocTitle "Air"
\includeScore "CBBair"
\pieceToc \markup { Vucain : \italic { Dépéchez, préparez ces lieux }}
\includeScore "CBCvulcain"
\pieceToc \markup "Ritournelle"
\includeScore "CBDritournelle"
%%
\scene "Scène III"
\sceneDescription \markup \wordwrap-center \smallCaps { Vénus, Vulcain. }
\pieceToc \markup Ritournelle
\includeScore "CCAritournelle"
\pieceToc \markup { Vénus, Vulcain }
\includeScore "CCBvenusVulcain"
\pieceToc \markup Ritournelle
\includeScore "CCCritournelle"
%%
\scene "Scène IV"
\sceneDescription \markup \wordwrap-center \smallCaps { Psyché. }
\pieceToc \markup { Psyché : \italic { Où suis-je ? }}
\includeScore "CDApsyche"
%%
\scene "Scène V"
\sceneDescription \markup \wordwrap-center {
  \smallCaps { Psyché, Zéphir, l'Amour, } une Nymphe.
}
\pieceTocTitle "Ritournelle"
\includeScore "CEAritournelle"
\pieceToc \markup { Psyché, une Nymphe, Zéphir, l'Amour }
\includeScore "CEBpsycheNympheZephirAmour"
%%
\scene "Scène VI"
\sceneDescription \markup \wordwrap-center {
  \smallCaps { Psyché, Zéphir, l'Amour, } trois Nymphes.
}
\pieceTocTitle "Ritournelle"
\includeScore "CFAritournelle"
\pieceToc \markup { Psyché, l'Amour }
\includeScore "CFBamourPsyche"
\pieceTocTitle "Ritournelle"
\includeScore "CFCritournelle"
\pieceToc \markup { L'Amour : \italic { Venez voir ce palais }}
\includeScore "CFDamour"
\pieceTocTitle "Air"
\includeScore "CFEair"
\pieceToc \markup { Première Nymphe : \italic { Aimable jeunesse, suivez la tendresse }}
\includeScore "CFFnymphe"
\pieceToc \markup { Deuxième et troisième Nymphes : \italic { Chacun est obligé d'aimer à son tour }}
\includeScore "CFGnymphes"
\actEnd \markup { "FIN DU SECOND ACTE" }

%% Troisième acte
\act "Acte Troisième"
\scene "Scène Première"
\sceneDescription \markup \wordwrap-center { \smallCaps Vénus. }
\pieceTocTitle "Ritournelle"
\includeScore "DAAritournelle"
\pieceToc \markup { Vénus : \italic { Pompe que ce palais de tous côtés étale }}
\includeScore "DABvenus"
%%
\scene "Scène II"
\sceneDescription \markup \wordwrap-center \smallCaps { Vénus, Psyché. }
\pieceTocAndTitle \markup "Ritournelle" \markup { Psyché : \italic { Que fais-tu, montre-toi }}
\includeScore "DBApsyche"
\pieceToc  \markup { Psyché, Vénus }
\includeScore "DBBpsycheVenus"
%%
\scene "Scène III"
\sceneDescription \markup \wordwrap-center \smallCaps { Psyché, l'Amour. }
\pieceToc \markup { Psyché, l'Amour }
\includeScore "DCApsycheAmour"
%%
\scene "Scène IV"
\sceneDescription \markup \wordwrap-center \smallCaps { Psyché. }
\pieceToc \markup { Psyché : \italic { Arrêtez cher amant }}
\includeScore "DDApsyche"
%%
\scene "Scène V"
\sceneDescription \markup \wordwrap-center \smallCaps { Vénus, Psyché. }
\pieceToc \markup { Psyché, Vénus }
\includeScore "DEApsycheVenus"
\pieceTocTitle "Ritournelle"
\includeScore "DEBritournelle"
\pieceToc \markup { Psyché : \italic { Vous m'abandonnez donc }}
\includeScore "DECpsyche"
%%
\scene "Scène VI"
\sceneDescription \markup \wordwrap-center { \smallCaps Psyché, le Fleuve. }
\pieceToc \markup { Psyché, le Fleuve }
\includeScore "DFAfleuvePsyche"
\actEnd \markup { FIN DU TROISIÈME ACTE }

%% Quatrième acte
\act "Acte Quatrième"
\scene "Scène Première"
\sceneDescription \markup \wordwrap-center { \smallCaps Psyché. }
\pieceTocTitle "Ritournelle"
\includeScore "EAAritournelle"
\pieceToc \markup { Psyché : \italic { Par quels noirs et fâcheux passages }}
\includeScore "EABpsyche"
\markup \title \fill-line {
  \line { On reprend la ritournelle page \page-refIII #'EAAritournelle . }
}
\pieceToc \markup { Psyché : \italic { N'y pensons plus mon bonheur a changé }}
\includeScore "EACpsyche"
\scene "Scène II"
\sceneDescription \markup \wordwrap-center { \smallCaps Psyché, Furies. }
\pieceToc \markup Air
\includeScore "EADair"
\pieceToc \markup { Furies : \italic { Où penses-tu porter tes pas téméraires }}
\includeScore "EAEfuries"
\pieceToc \markup { Psyché, Furies }
\includeScore "EAFpsycheFuries"
\pieceToc \markup { Furies : \italic { Cependant montrons-lui ce que ces lieux terribles }}
\includeScore "EAGfuries"
\pieceTocTitle "Air des Furies"
\includeScore "EAHair"
\includeScore "EAIair"
\pieceToc \markup { Furies : \italic { Venez venez, Nymphes de l'Achéron }}
\includeScore "EAJfuries"
\scene "Scène III"
\sceneDescription \markup \wordwrap-center { \smallCaps Psyché, Nymphes. }
\pieceToc \markup { Nymphes, Psyché : \italic { En vain ce soin vous embarrasse }}
\includeScore "EAKnymphesPsyche"
\actEnd \markup { FIN DU QUATRIÈME ACTE }

%% Cinquième acte
\act "Cinquième Acte"
\scene "Scène Première"
\sceneDescription \markup \wordwrap-center { \smallCaps Psyché. }
\pieceTocTitle "Ritournelle"
\includeScore "FAAritournelle"
\pieceToc \markup { Psyché : \italic { Si je fais vanité de ma tendresse extrême }}
\includeScore "FABpsyche"
%%
\scene "Scène II"
\sceneDescription \markup \wordwrap-center \smallCaps { Vénus, Psyché. }
\pieceToc \markup { Vénus, Psyché }
\includeScore "FBAvenusPsyche"
%%
\scene "Scène III"
\sceneDescription \markup \wordwrap-center \smallCaps { Mercure, Vénus. }
\pieceToc \markup { Mercure, Vénus }
\includeScore "FCAmercureVenus"
%%
\scene "Scène Dernière"
\pieceTocTitle "Prélude"
\includeScore "FDAprelude"
\pieceToc \markup { Jupiter, Vénus, Psyché, l'Amour }
\includeScore "FDBjupiterVenusPsycheAmour"
\pieceToc \markup { Jupiter : \italic { Aimez sans trouble et sans alarmes }}
\includeScore "FDCjupiter"
\pieceToc \markup Ritournelle
\includeScore "FDDritournelle"
\pieceToc \markup { Apollon : \italic { Unissons-nous, troupe immortelle }}
\includeScore "FDEapollon"
\pieceTocAndTitle \markup CHŒUR \markup { Chœur : \italic { Célébrons ce grand jour }}
\includeScore "FDFchoeur"
\pieceToc \markup Ritournelle
\includeScore "FDGritournelle"
\pieceToc \markup { Bacchus : \italic { Si quelque fois suivant nos douces lois }}
\includeScore "FDHbacchus"
\pieceToc \markup { Mome : \italic { Je cherche à médire sur la Terre et dans les cieux }}
\includeScore "FDImome"
\pieceToc \markup { Mars : \italic { Mes plus fiers ennemis, vaincus ou pleins d'effroi }}
\includeScore "FDJmars"
\pieceToc \markup { Chœur : \italic { Chantons les plaisirs charmants }}
\includeScore "FDKchoeur"
\pieceToc \markup Ritournelle
\includeScore "FDLritournelle"
\pieceToc \markup { Apollon : \italic { Le dieu qui nous engage à lui faire la cour }}
\includeScore "FDMapollon"
\pieceToc \markup Ritournelle
\includeScore "FDNritournelle"
\pieceToc \markup \italic { Gardez-vous, beautés sévères }
\includeScore "FDOaDeux"
\pieceTocTitle "Premier Air"
\includeScore "FDPair"
\pieceToc \markup { Bacchus : \italic { Admirons le jus de la treille }}
\includeScore "FDQbacchus"
\pieceTocTitle "Deuxième Air"
\includeScore "FDRair"
\pieceToc \markup { Silène : \italic { Bacchus veut qu'on boive à longs traits }}
\includeScore "FDSsilene"
\pieceToc \markup \italic { Voulez-vous des douceurs parfaites }
\includeScore "FDTaTrois"
\pieceTocTitle "Entrée pour la suite de Mome"
\includeScore "FDUentree"
\pieceToc \markup { Mome : \italic { Folatrons, divertissons-nous }}
\includeScore "FDVmome"
\pieceToc \markup \italic { Laissons en paix toute la terre }
\includeScore "FDWmars"
\pieceTocTitle "Prélude"
\includeScore "FDXprelude"
\pieceTocTitle "Rondeau des enseignes"
\includeScore "FDYrondeau"
\pieceTocTitle "Deuxième Air"
\includeScore "FDZair"

\markup \title \fill-line {
  \line { On reprend le chœur \italic { Chantons les plaisirs charmants }
          page \page-refIII #'FDKchoeur . }
}
\actEnd \markup { FIN DU CINQUIÈME ET DERNIER ACTE. }
