\header {
  copyrightYear = "2009"
  title = "Phaéton"
  composer = "Jean Baptiste Lully"
  poet = "Philippe Quinault"
  opus = "LWV 61"
  date = "1683"
  notes = \markup \column {
    \line { Documents originaux :}
    \hspace #1
    \wordwrap { 
      \italic Phaëton, tragédie mise en musique par Monsieur de Lully.
      Christophe Ballard, Paris, 1683.
      \with-url #"http://www.library.unt.edu/music/special-collections/lully/browse/phaeton-1st-edition-1683"
      \tiny \typewriter "http://www.library.unt.edu"
    }
    \hspace #1
    \wordwrap { 
      \italic { Théâtre de Mr Quinault, } T. 5, contenant ses tragédies, comédies et opéras.
      P. Ribou, Paris, 1715.
      \with-url #"http://gallica.bnf.fr/ark:/12148/bpt6k73858n"
      \tiny \typewriter "http://gallica.bnf.fr"
    }
  }
}

\include "italiano.ly"
#(set-global-staff-size 14)
\include "common/common.ily"

\setOpus "Lully/Opera/LWV61Phaeton"
\opusTitle "Phaéton"
\include "Lully/Opera/LWV61Phaeton/common.ily"

\paper { #(define page-breaking ly:optimal-breaking) }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
  \paper { #(define page-breaking ly:minimal-breaking) }
  %% Title page
  \markup \null
  \pageBreak
  
  %% notes
  \markup \null
%{
AAEchoeur:
page xxi manquante (remplacée par page xxxi mal numérotée) = mesures 52 à 57
--> utilisation des mesures ???

AAJsaturneAstree:
page lviii manquante (mesures 73 à 79)
--> utilisation des mesures 118 à 124
%}
  \pageBreak
  
  %% Table of contents
  \markuplines \table-of-contents
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
  \paper { #(define page-breaking ly:minimal-breaking) }
  \markuplines {
    \with-line-width-ratio #0.6
    \override-lines #'(baseline-skip . 3.5) {
      \vspace #3
      \scene \line { ACTEURS DU PROLOGUE }
      \vspace #1
      \wordwrap-lines { \smallCaps Astrée, déesse, fille de Jupiter et de Thémis }
      \wordwrap-lines { Troupe de compagnes d'Astrée }
      \wordwrap-lines { \smallCaps Saturne, dieu qui régnait durant l'âge d'or }
      \wordwrap-lines { Troupe de suivants de Saturne }
      \vspace #3
      \scene \line { ACTEURS DE LA TRAGÉDIE }
      \vspace #1
      \wordwrap-lines { \smallCaps Libye, fille de Merops, roi d'Égypte }
      \wordwrap-lines { \smallCaps Théone, fille de Protée }
      \wordwrap-lines { \smallCaps Phaéton, fils du Soleil et de Clymène }
      \wordwrap-lines { \smallCaps Clymène, fille de l'Océan et de Thétys }
      \wordwrap-lines { \smallCaps Protée, dieu marin conducteur des troupeaux de Neptune }
      \wordwrap-lines { Troupe des suivants de Protée }
      \wordwrap-lines { \smallCaps Triton, dieu marin, frère de Clymène }
      \wordwrap-lines { Troupe des suivants de Triton }
      \wordwrap-lines { \smallCaps Épaphus, fils de Jupiter et de la déesse Isis }
      \wordwrap-lines { \smallCaps Merops, roi d'Égypte, qui a épousé Clymène après la mort d'une première épouse, dont il a eu Libye }
      \wordwrap-lines { Troupe d'Égyptiens et d'Égyptiennes }
      \wordwrap-lines { Un roi éthiopien, tributaire de Merops }
      \wordwrap-lines { Troupe d'Éthiopiens et d'Éthiopiennes }
      \wordwrap-lines { Un roi indien, tributaire de Merops }
      \wordwrap-lines { Troupe d'Indiens et d'Indiennes }
      \wordwrap-lines { Troupe de prêtresses de la déesse Isis }
      \wordwrap-lines { Troupe de jeunes personnes choisies pour porter des offrandes au temple d'Isis }
      \wordwrap-lines { Des furies et des fantômes terribles }
      \wordwrap-lines { \smallCaps { Les Vents } }
      \wordwrap-lines { \smallCaps { Le Soleil } }
      \wordwrap-lines { \smallCaps { Les Heures du jour } }
      \wordwrap-lines { \smallCaps {Les Saisons de l'année } }
      \wordwrap-lines { Quatre quadrilles, dont chacune accompagne une des quatres saisons }
      \wordwrap-lines { Troupe de pasteurs égyptiens }
      \wordwrap-lines { Troupe de bergères égyptiennes }
      \wordwrap-lines { \smallCaps { La déesse de la Terre } }
      \wordwrap-lines { \smallCaps Jupiter }
    }
  }
}
%%% Prologue
\bookpart {
  \actn "Prologue"
  \sceneDescription \markup \center-column {
    \wordwrap-center { Le retour de l'âge d'or. }
    \wordwrap-center {
      Le théâtre représente les jardins du palais de la déesse Astrée.
    }
  }
  \pieceTocTitle "Ouverture"
  \includeScore "AAAouverture"
  \sceneDescription \markup \wordwrap-center {
    Astrée est au milieu de ses compagnes, qui en dansant et en chantant
    tâchent de divertir cette déesse.
  }
  \pieceToc \markup { Troupe d'Astrée : \italic { Cherchons la paix dans cet asile } }
  \pieceSimpleTitle "Troupe d'Astrée dansante"
  \includeScore "AABtroupe"
  \pieceToc \markup { Astrée : \italic { Dans cette paisible retraite } }
  \includeScore "AACastree"
  \pieceToc \markup { Troupe d'Astrée : \italic { Danc ces lieux tout rit sans cesse } }
  \pieceSimpleTitle "Troupe d'Astrée dansante"
  \includeScore "AADtroupe"
  \sceneDescription \markup \wordwrap-center {
    Saturne vient trouver Astrée, pour l'inviter à retourner avec lui
    sur la Terre. Ce dieu conduit les mêmes suivants qui
    l'accompagnaient au temps de l'Âge "d'or :" les uns dansent, et
    les autres "chantent ;" et Saturne même chante avec eux.
  }
  \pieceToc \markup { Saturne, chœur : \italic { Que les mortels se réjouissent } }
  \pieceSimpleTitle "Chœur"
  \includeScore "AAEchoeur"
  \pieceToc \markup { Saturne : \italic { Un héros qui mérite une gloire immortelle } }
  \includeScore "AAFsaturne"
  \pieceToc \markup { Astrée : \italic { Jeux innocents, rassemblez-vous } }
  \includeScore "AAGastree"
  \pageBreak
  \pieceTocTitle "Air pour les suivants de Saturne"
  \includeScore "AAHair"
  \pieceTocTitle "Bourrée pour les suivants de Saturne et les suivantes d'Astrée"
  \includeScore "AAIbourree"
  \pieceToc \markup { Astrée, Saturne, chœur : \italic { On a vu ce héros terrible dans la guerre } }
  \includeScore "AAJsaturneAstree"
  \pieceNoTitle
  \reIncludeScore "AAAouverture" "AAAouverturebis"
  \actEnd \markup { FIN DU PROLOGUE }
}

%%% Acte I
\bookpart {
  \act "Acte Premier"
  \sceneDescription \markup \wordwrap-center {
    Le théâtre représente un jardin sur le devant, une grotte
    dans le milieu, et la mer dans l'éloignement.
  }
  \scene "Scène I"
  \sceneDescription \markup \wordwrap-center { \smallCaps Libye, seule. }
  \pieceToc \markup { Libye : \italic { Heureuse une âme indifférente ! } }
  \includeScore "BAAlibye"
  \scene "Scène II"
  \sceneDescription \markup \wordwrap-center \smallCaps { Théone, Libye. }
  \pieceToc \markup { Théone, Libye : \italic { Je ne vous croyais pas dans un lieu solitaire } }
  \includeScore "BBAtheoneLibye"
  \scene "Scène III"
  \sceneDescription \markup \wordwrap-center \smallCaps { Phaéton, Théone. }
  \pieceToc \markup { Phaéton, Théone : \italic { Vous passez sans me voir ? } }
  \includeScore "BCAphaetonTheone"
  \scene "Scène IV"
  \sceneDescription \markup \wordwrap-center \smallCaps { Clymène, Phaéton. }
  \pieceToc \markup { Clymène, Phaéton : \italic { Vous paraissez chagrin, mon fils } }
  \includeScore "BDAclymenePhaeton"
  \scene "Scène V"
  \sceneDescription \markup \center-column {
    \wordwrap-center {
      Protée sort de la mer, il conduit les troupeaux de Neptune,
      et il est accompagné d'une troupe de dieux marins.
    }
    \wordwrap-center { \smallCaps Protée et sa suite. }
  }
  \pieceToc \markup { Protée : \italic { Heureux qui peut voir du rivage } }
  \includeScore "BEAprotee"
  \sceneDescriptionBottom \markup \wordwrap-center {
    Protée s'endort dans la grotte, et ses suivants s'écartent
    sur le rivage, où ils vont prendre soin des troupeaux de Neptune.
  }
  \scene "Scène VI"
  \sceneDescription \markup \wordwrap-center { \smallCaps Clymène, \smallCaps Protée endormi. }
  \pieceToc \markup { Clymène : \italic { Vous avec qui le sang me lie } }
  \includeScore "BFAclymene"
  \scene "Scène VII"
  \sceneDescription \markup \center-column {
    \wordwrap-center { \smallCaps Triton, suivants de Triton, \smallCaps Protée endormi. }
    \wordwrap-center {
      Triton sort de la mer, accompagné d'une troupe de suivants, dont
      une partie fait un concert d'instruments, et l'autre partie dance.
      Ils éveillent Protée, et l'invitent à prendre part à leurs divertissements,
      Triton chante au milieu de ses suivants.
    }
  }
  \pieceToc \markup { Triton : \italic { Que Protée avec nous partage } }
  \includeScore "BGAair"
  \sceneDescription \markup \wordwrap-center {
    Les suivants de Triton continuent leurs concerts d'instruments,
    et leurs danses. Et Triton y joint une chanson qu'il chante en
    s'adressant à Protée.
  }
  \pieceToc \markup { Triton : \italic { La plaisir est nécessaire } }
  \includeScore "BGBrondeau"
  \pieceToc \markup { Protée, Triton }
  \includeScore "BGCproteeTriton"
  \sceneDescription \markup \wordwrap-center {
    Protée disparaît et se transforme successivement en tigre, en
    arbre, en dragon, en fontaine et en flame. Tandis qu'il prend ces
    formes différentes, il est sans cesse suivi et environné par les
    suivants de Triton, et Triton lui fait entendre qu'il ne le
    quittera point malgré ses transformations.
  }
  \pieceToc \markup { Triton : \italic { C'est un secret qu'il faut qu'on vous arrache } }
  \includeScore "BGDtriton"
  \scene "Scène VIII"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps { Triton, Clymène, } suivants de Triton, \smallCaps Protée.
  }
  \pieceToc \markup { Triton, Protée }
  \includeScore "BHAtritonProtee"
  \sceneDescription \markup \wordwrap-center {
    Protée après plusieurs transformations reprend enfin sa forme naturelle.
  }
  \pieceToc \markup { Protée : \italic { Le sort de Phaéton se découvre à mes yeux } }
  \includeScore "BHBprotee"
  \pieceTocTitle "Entr'acte"
  \includeScore "BHCentracte"
  \score {
    { \fractionTime \time 2/2 \clef "basse" do2~ do8 re do si, la,1 \laissezVibrer }
    \layout { ragged-right = ##t
              indent = 0 }
  }
  \actEnd \markup { FIN DU PREMIER ACTE }
}

\bookpart {
  \act "Acte Second"
  \sceneDescription \markup \wordwrap-center {
    Le théâtre change, et représente un endroit du palais du roi d'Égypte,
    orné et préparé pour une grande cérémonie.
  }
  \scene "Scène I"
  \sceneDescription \markup \wordwrap-center \smallCaps { Clymène, Phaéton. }
  \pieceToc \markup { Ritournelle }
  \includeScore "CAAritournelle"
  \pieceToc \markup { Clymène, Phaéton }
  \includeScore "CABclymenePhaeton"
  \scene "Scène II"
  \sceneDescription \markup \wordwrap-center { \smallCaps Théone, seule. }
  \pieceToc \markup { Théone : \italic { Il me fuit, l'inconstant ! } }
  \includeScore "CBAtheone"
  \scene "Scène III"
  \sceneDescription \markup \wordwrap-center \smallCaps { Libye, Théone. }
  \pieceToc \markup { Libye, Théone : \italic { Que l'incertitude est un rigoureux tourment ! } }
  \includeScore "CCAlibyeTheone"
  \scene "Scène IV"
  \sceneDescription \markup \wordwrap-center \smallCaps { Épaphus, Libye. }
  \pieceToc \markup { Libye, Épaphus : \italic { Quel malheur ! Dieux ! quelle tristesse ! } }
  \includeScore "CDAepaphusLibye"
  \scene "Scène V"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps { Libye, Merops, Clymène, Phaéton, }
    un roi éthiopien, un roi indien,
    troupe d'Égyptiens et d'Égyptiennes,
    troupe d'Éthiopiens et d'Éthiopiennes,
    troupe d'Indiens et d'Indiennes.
  }
  \pieceTocTitle "Prélude"
  \includeScore "CEAprelude"
  \pieceToc \markup { Merops, chœur : \italic { Que de tous côtés on entende } }
  \includeScore "CEBmeropsChoeur"
  \sceneDescription \markup \wordwrap-center {
    Merops, Clymène, Phaéton et Libye, se placent sur un trône,
    et les peuples témoignent leur joie par des danses, où ils
    mêlent des acclamations en faveur de Phaéton.
  }
  \pieceTocTitle "Chaconne"
  \includeScore "CECchaconne"
  \pieceTocAndTitle \markup { PETIT AIR POUR LES MÊMES } \markup { Petit air }
  \includeScore "CEDair"
  \pieceTocAndTitle \markup CHŒUR \markup { Chœur : \italic { Que de tous côtés on entende } }
  \includeScore "CEEchoeur"
  \pieceTocTitle "Entr'acte"
  \reIncludeScore "CEDair" "CEFair"
  \actEnd \markup { FIN DU DEUXIÈME ACTE }
}

\bookpart {
  \act "Acte Troisième"
  \sceneDescription \markup \wordwrap-center {
    Le théâtre change, et représente le temple d'Isis.
  }
  \scene "Scène I"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps { Théone, Phaéton, } suivants de Phaéton.
  }
  \pieceToc \markup { Théone, Phaéton : \italic { Ah ! Phaéton, est-il possible } }
  \includeScore "DAAtheonePhaeton"
  \scene "Scène II"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps Phaéton, suivants de Phaéton.
  }
  \pieceToc \markup { Phaéton : \italic { Je plains ses malheurs } }
  \includeScore "DBAphaeton"
  \scene "Scène III"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps { Épaphus, Phaéton, } suite de Phaéton.
  }
  \pieceToc \markup { Épaphus, Phaéton }
  \includeScore "DCAepaphusPhaeton"
  \scene "Scène IV"
  \sceneDescription \markup \center-column {
    \wordwrap-center {
      \smallCaps { Phaéton, Épaphus, Merops, Clymène, Libye, }
      les deux rois tributaires de Merops, troupes de peuples
      différents, troupes de jeunes égyptiens et de jeunes égyptiennes
      qu'on a pris soin de choisir et de parer magnifiquement pour porter
      de riches offrandes, troupes de prêtresses de la déesse Isis.
    }
    \wordwrap-center {
      Les jeunes égyptiens et les jeunes égyptiennes qui portent les offrandes,
      approchent du temple d'Isi en dansant.
    }
  }
  \pieceTocTitle "Marche"
  \includeScore "DDAmarche"
  \pieceTocAndTitle \markup { AIR POUR LES MÊMES } \markup { Air }
  \includeScore "DDBair"
  \pieceToc \markup { Merops, Clymène, chœur : \italic { Nous révérons votre puissance } }
  \includeScore "DDCmeropsClymeneChoeur"
  \pieceToc \markup { Phaéton, Épaphus, Merops, Clymène }
  \includeScore "DDDphaetonEpaphusMeropsClymene"
  \scene "Scène V"
  \sceneDescription \markup \wordwrap-center {
    Les portes du temple s'ouvrent, et ce lieu qui avait paru magnifique
    n'est plus qu'un gouffre effroyable qui vomit des flammes, et d'où
    sortent des furies et des fantômes terribles, qui renversent et brisent
    les offrandes, et qui menacent et écartent l'assemblée. Phaéton s'obstine
    à demeurer, et Clymène ne peut quitter son fils.
  }
  \pieceTocTitle "Entrée des Furies"
  \includeScore "DEAfuries"
  \scene "Scène VI"
  \sceneDescription \markup \wordwrap-center \smallCaps { Clymène, Phaéton. }
  \pieceToc \markup { Clymène, Phaéton }
  \includeScore "DFAclymenePhaeton"
  \pieceToc \markup { Clymène : \italic { Vous êtes son fils je le jure } }
  \includeScore "DFBclymene"
  \pieceToc \markup { Clymène, Phaéton }
  \includeScore "DFCclymenePhaeton"
  \actEnd \markup { FIN DU TROISIÈME ACTE }
}

\bookpart {
  \act "Acte Quatrième"
  \sceneDescription \markup \wordwrap-center {
    Le théâtre change, et représente le palais du Soleil.
  }
  \scene "Scène I"
  \sceneDescription \markup \wordwrap-center \smallCaps {
    Le Soleil, les Heures du jour, le Printemps, l'Éte, l'Automne, l'Hiver,
    suite des quatres saisons.
  }
  \pieceToc \markup { Chœur des heures et des saisons : \italic { Sans le dieu qui nous éclaire } }
  \includeScore "EAAchoeur"
  \pieceToc \markup { L'Automne : \italic { C'est par vous, ô Soleil ! Que le ciel s'illumine } }
  \includeScore "EABautomne"
  \pieceToc \markup { Chœur des heures et des saisons : \italic { Sans le dieu qui nous éclaire } }
  \includeScore "EACchoeur"
  \pieceToc \markup { Le Soleil }
  \includeScore "EADsoleil"
  \scene "Scène II"
  \sceneDescription \markup \center-column {
    \wordwrap-center {
      \smallCaps { Le Soleil, Phaéton, les Heures du jour, les quatre Saisons, }
      suite des quatres saisons.
    }
    \wordwrap-center {
      Les printemps et se suite dansent, et les autres saisons chantent
      avec les heures, pour témoigner qu'ils se réjouisent de l'arrivée
      du fils du Soleil dans le palais de son père.
    }
  }
  \pieceTocTitle "Premier air"
  \includeScore "EAEair"
  \pieceTocAndTitle \markup "DEUXIÈME AIR" \markup {
    Deuxième air, chœur : \italic { Dans ce palais Bravez l'envie }
  }
  \includeScore "EAFairChoeur"
  \pieceToc \markup { Chœur : \italic { Dans cette demeure charmante } }
  \includeScore "EAGchoeur"
  \pieceToc \markup { Le Soleil, Phaéton }
  \includeScore "EBAsoleilPhaeton"
  \pieceToc \markup { Le Soleil : \italic { C'est toi que j'en atteste } }
  \includeScore "EBBsoleil"
  \pieceToc \markup { Le Soleil, Phaéton }
  \includeScore "EBCsoleilPhaeton"
  \pieceToc \markup { Chœur : \italic { Allez répandre la lumière } }
  \includeScore "EBDchoeur"
  \pieceTocTitle "Entr'acte"
  \includeScore "EBEentracte"
  \actEnd \markup { FIN DU QUATRIÈME ACTE }
}

\bookpart {
  \act "Acte Cinquième"
  \sceneDescription \markup \wordwrap-center {
    Le théâtre change, et représente une campagne "agréable ;"
    la nuit se dissipe insensiblement, et cède au jour qui commence
    à "paraître ;" Phaéton assis sur le char du Soleil, s'élève à l'horizon.
  }
  \scene "Scène I"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps Clymène, et une des deux rois tributaires de Merops.
  }
  \pieceToc \markup Ritournelle
  \includeScore "FAAritournelle"
  \pieceToc \markup { Clymène : \italic { Que l'on chante, que tout réponde } }
  \includeScore "FABclymeneMerops"
  \sceneDescriptionBottom \markup \wordwrap-center {
    Clymène, transportée de joie, court de tous côtés publier
    la gloire de son fils, les peuples d'Égypte qui entendent
    sa voix s'empressent de la suivre.
  }
  \scene "Scène II"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps Épaphus, troupe de peuples qui suivent Clymène.
  }
  \pieceToc \markup { Épaphus : \italic { Dieu qui vous déclarez mon père } }
  \includeScore "FBAepaphus"
  \scene "Scène III"
  \sceneDescription \markup \wordwrap-center \smallCaps { Épaphus, Libye. }
  \pieceToc \markup { Libye, Épaphus : \italic { O rigoureux martyre ! } }
  \includeScore "FCAlibyeEpaphus"
  \scene "Scène IV"
  \sceneDescription \markup \center-column {
    \wordwrap-center {
      \smallCaps { Merops, Clymène, }
      les deux rois tributaires de Mérops, troupes de divers peuples,
      troupes de pasteurs égyptiens et de bergères égyptiennes.
    }
    \wordwrap-center {
      Merops et Clymène invitent leur suite à se réjouir
      de la gloire du héros qui doit être un jour roi d'Égypte.
      Les pasteurs égyptiens et les bergères égyptiennes dansent,
      et les autres peuples chantent.
    }
  }
  \pieceToc \markup { Clymène, Merops, chœur : \italic { Que l'on chante, que tout réponde } }
  \includeScore "FDAchoeur"
  \sceneDescription \markup \wordwrap-center {
    Les pasteurs égyptiens et les bergères égyptiennes témoignent
    leur joie en dansant, et une de ces bergères chante.
  }
  \pieceTocTitle "Bourrée pour les Égyptiens"
  \includeScore "FDBbourree"
  \pieceTocAndTitle \markup { DEUXIÈME AIR } \markup {
    Deuxième air, une bergère égyptienne : \italic { Ce beau jour ne permet qu'à l'aurore }
  }
  \includeScore "FDCair"
  \scene "Scène V"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps { Théone, Merops, Clymène, }
      les deux rois tributaires de Mérops, troupes de divers peuples,
      troupes de pasteurs égyptiens et de bergères égyptiennes.
  }
  \pieceToc \markup { Théone, Clymène : \italic { Changez ces doux concerts en des plaintes funèbres } }
  \includeScore "FEAtheoneClymene"
  \pieceToc \markup { Chœur : \italic { Dieux ! quel feu vient partout s'étendre ! } }
  \includeScore "FEBchoeur"
  \scene "Scène VI"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps { La Déesse de la Terre, Théone, Merops, Clymène, }
    les deux rois tributaires de Mérops, troupes de divers peuples,
    troupes de pasteurs égyptiens et de bergères égyptiennes.
  }
  \pieceToc \markup { Déesse de la Terre }
  \includeScore "FFAdeesse"
  \scene "Scène VII"
  \sceneDescription \markup \center-column {
    \wordwrap-center {
      \smallCaps { Phaéton, Merops, Clymène, Libye, Théone, }
      les deux rois tributaires de Mérops, troupes de divers peuples,
      troupes de pasteurs égyptiens et de bergères égyptiennes.
    }
    \wordwrap-center {
      Phaéton paraît en désordre sur le char du Soleil, qu'il ne
      peut plus conduire.
    }
  }
  \pieceToc \markup { Chœur : \italic { Ô dieu qui lance le tonnerre } }
  \includeScore "FGAchoeur"
  \scene "Scène VIII"
  \sceneDescription \markup \wordwrap-center {
    \smallCaps { Jupiter, Phaéton, Merops, Clymène, Libye, Théone, }
    les deux rois tributaires de Mérops, troupes de divers peuples,
    troupes de pasteurs égyptiens et de bergères égyptiennes.
  }
  \pieceToc \markup { Jupiter, chœur : \italic { Au bien de l'univers ta perte est nécessaire } }
  \includeScore "FHAjupiterChoeur"
  \actEnd \markup { FIN DU CINQUIÈME ET DERNIER ACTE }
}
