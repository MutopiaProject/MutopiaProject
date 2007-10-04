
\include "common/common.ily"
\include "common/parts.ily"
\include "LWV71/parts.ily"
\include "LWV71/part-titling.ily"
\currentOpus "LWV71" "Armide"

\header {
  copyrightYear = "2006"
  title = "Armide"
  composer = "Jean Baptiste Lully"
  poet = "Philippe Quinault"
  opus = "LWV 71"
  date = "1686"
  instrument = #(*instrument*)
}

%%% Title page
\markup \null

%%% Second page, left blank
\pageBreak
\markup \null

%%% Table of contents
\pageBreak
\markuplines \table-of-contents

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Prologue
\prologue "Prologue"
\piece "AAAouverture" "Ouverture"
\air "AABgloireSagesse" \markup { La Gloire, la Sagesse : \italic { Tout doit céder dans l'univers à l'auguste Héros } }
  \partPageBreak #'(basse-continue)
\air "AACchoeur" \markup { Chœur : \italic { Chantons la douceur de ses lois. } }
\air "AADgloireSagesse" \markup { La Gloire, la Sagesse : \italic { D'une égale tendresse, nous aimons le même vainqueur. } }
\air "AAEchoeur" \markup { Chœur : \italic { Dès qu'on le voit paraître, de quel cœur n'est-il point le maître ? } }
\piece "AAFentree" "Entrée"
  \partPageBreak #'(dessus1 dessus2)
\piece "AAGmenuet" "Menuet"
  \partPageBreak #'(haute-contre basse basse-continue)
\piece "AAHrondeau" "Rondeau"
\piece "AAIprelude" "Prélude"
\air "AAJgloireSagesse" \markup { La Gloire, la Sagesse : \italic { Suivons notre Héros, que rien ne nous sépare. } }
  \partPageBreak #'(basse-continue)
\air "AAKchoeur" \markup { Chœur : \italic { Que l'éclat de son nom s'étende au bout du monde. } }
  \partPageBreak #'(basse)
\piece "AALentree" "Entrée"
\includeScore "AAMmenuet"
\piece "AANmenuet" "Menuet"
\air "AAOdeuxVoix" \markup \italic { Que dans le temple de Mémoire son nom soit pour jamais gravé. }
  \partPageBreak #'(basse dessus1 dessus2)
\pieceNoToc "AAPchoeur" "CHŒUR"
\actEnd \markup { FIN DU PROLOGUE }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Acte premier
%% scene I
\act "Acte Premier" "Scène Première" \markup \smallCaps { Armide, Phenice, Sidonie }
\air "BAAritournelle" \markup Ritournelle
\air "BABarmidePheniceSidonie" \markup { Armide, Phénice, Sidonie }
\includeScore "BACarmideSidonie"
%% scene II
\scene "Scène II" \markup \wordwrap-center {
  \smallCaps Hidraot, suite d'Hidraot,
  \smallCaps Armide, \smallCaps Phenice,
  \smallCaps Sidonie
}
\air "BBAarmideHidraot" \markup { Armide, Hidraot }
%% scene III
\scene "Scène III" \markup \null
\air "BCAritournelle" \markup Ritournelle
  \partPageBreak #'(haute-contre basse-continue)
\air "BCBhidraot" \markup { Hidraot, chœur : \italic { Armide est encor plus aimable Qu'elle n'est redoutable. } }
  \partPageBreak #'(taille quinte basse)
\pieceNoToc "BCCchoeur" "CHŒUR"
  \partPageBreak #'(dessus1 dessus2 haute-contre)
\piece "BCDrondeau" "Rondeau"
\air "BCEphenice" \markup { Phénice, chœur : \italic { Suivons Armide, et chantons sa victoire. } }
\pieceNoToc "BCFchoeur" "CHŒUR EN RONDEAU"
\includeScore "BCGphenice" 
\markup \titre \line {
  On reprend deux fois le chœur du rondeau
  page \page-ref #'BCFchoeur "00" "?" \hspace #-1 .
}
\includeScore "BCHphenice" 
\markup \titre \wordwrap-center { 
  On reprend encore deux fois le même chœur du rondeau
  page \page-ref #'BCFchoeur "00" "?"
  et l'on joue la première sarabande
  page \page-ref #'BCDrondeau "00" "?" \hspace #-1 .
  Et ensuite la sarabande en bémol
  page \page-ref #'BCIsarabande "00" "?" \hspace #-1 .
}
  \partPageBreak #'(haute-contre)
\piece "BCIsarabande" "Sarabande"
\air "BCJsidonie" \markup { Sidonie, chœur : \italic { Que la douceur d'un triomphe est extrême. } }
\pieceNoToc "BCKchoeur" "CHŒUR EN RONDEAU"
\includeScore "BCLsidonie"
\markup \titre \line {
  On reprend deux fois le chœur en rondeau
  page \page-ref #'BCKchoeur "00" "?" \hspace #-1 .
}
\includeScore "BCMsidonie"
\markup \titre \wordwrap-center { 
  On reprend encore deux fois le chœur ci-dessus
  \page-ref #'BCKchoeur "00" "?" \hspace #-1 .
  Et ensuite la sarabande en bémol
  \page-ref #'BCIsarabande "00" "?" \hspace #-1 .
}
  \partPageBreak #'(basse-continue)
%% scene IV
\scene "Scène IV" \markup { \smallCaps Aronte, et les acteurs de la scène précédente. }
\air "BDAarmideHidraotAronte" \markup { Aronte, Armide, Hidraot : \italic { Ô Ciel, ô disgrâce cruelle ! } }
\air "BDBarmideHidraot" \markup { Armide, Hidraot, chœur : \italic { Poursuivons jusqu'au trépas. } }
\pieceNoToc "BDCchoeur" "CHŒUR"
\markup \titre \fill-line {
  \line { On reprend la ritournelle page
          \page-ref #'BCAritournelle "00" "?" \hspace #-1 . }
}
\actEnd \markup { FIN DU PREMIER ACTE }

  \partDoublePageBreak #'(taille quinte)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Acte second
%% scene I
\act "Acte Second" "Scène Première" \markup \column {
  \fill-line { "Le théâtre change et représente une île agréable." }
  \fill-line { \line \smallCaps { Artemidore, Renaud. } }
}
\air "CAArenaudArtemidore" \markup { Artemidore, Renaud }
%% scene II
\scene "Scène II" \markup \smallCaps { Hidraot, Armide }
\air "CBAarmideHidraot" \markup { Armide, Hidraot }
  \partPageBreak #'(basse-continue)
\includeScore "CBBarmideHidraot"
  \partPageBreak #'(dessus1 dessus2 haute-contre taille quinte basse)
%% scene III
\scene "Scène III" \markup { \smallCaps Renaud, seul. }
\air "CCArenaud" \markup Renaud
  \partPageBreak #'(basse-continue)
%% scene IV
\scene "Scène IV" \markup \column {
  \fill-line { "Une nymphe des eaux." }
  \fill-line { "Troupe de bergers et bergères héroïques." }
}
\air "CDAnymphe" \markup { Une Nymphe : \italic { Ah, temps heureux où l'on sait plaire. } }
\pieceNoToc "CDBprelude" "PRÉLUDE"
\airTitre "CDCchoeur" \markup { CHŒUR DE BERGERS ET BERGÈRES HÉROÏQUES }
\markup { Chœur : \italic { Ah ! quelle erreur, quelle folie ! } }
\piece "CDDair" "Premier Air"
  \partPageBreak #'(dessus1 dessus2)
\piece "CDEair" "Second Air"
  \partPageBreak #'(haute-contre taille quinte)
\air "CDFbergere" \markup { Une bergère héroïque : \italic { On s'étonnerait moins que la saison nouvelle } }
\markup \titre \wordwrap-center {
  On reprend le second air en bémol page \page-ref #'CDEair "000" "?" \hspace #-1 .
  Et après le premier en bécarre page \page-ref #'CDDair "000" "?" \hspace #-1 .
  puis la Bergère chante ce qui suit sur la finale de l'air.
}
\air "CDGbergere" \markup { Une bergère héroïque : \italic { Laissons au tendre amour la jeunesse en partage. } }
\markup \titre \column {
  \wordwrap-center {
    On reprend le petit chœur \italic { Ah ! quelle erreur ! } etc
    page \page-ref #'CDCchoeur "000" "?" \hspace #-1 .
  }
  \fill-line {
    \score {
      \newSmallStaff <<
        \basse {
          \key sol \major
          \time 4/4
          sol,2^"Fin du chœur"-"Basse continue" sol4 ~ sol16 la16 sol16 fad16 |
          mi1 | \custosNote mi4 
        }
      >>
      \layout { 
        indent= \noindent
        ragged-right = ##t
      }
    }
  }
}
  \partPageBreak #'(basse-continue)
%% scene V
\scene "Scène V" \markup {
  \smallCaps Armide, \smallCaps Renaud endormi.
}
\air "CEAritournelle" \markup Ritournelle
\air "CEBarmide" \markup { Armide : \italic { Enfin, il est en ma puissance. } }
\air "CECritournelle" \markup Ritournelle
\air "CEDarmide" \markup { Armide : \italic { Venez seconder mes désir. } }
\noPageBreak
\markup \titre \column {
  \fill-line {
    \line { On reprend l'entrée page \page-ref #'AAFentree "000" "?" 
            \hspace #-1 . }
  }
}
\actEnd \markup { "FIN DU SECOND ACTE" }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Acte troisième
%% scene I
\act "Acte Troisième" "Scène Première" \markup \column {
  \fill-line { \line { Le théâtre change et représente un désert. } }
  \fill-line { \line { \smallCaps Armide, seule. } }
}
\air "DAAarmide" \markup { Armide : \italic { Ah, si la liberté doit m'être ravie. } }
  \partPageBreak #'(basse-continue)
%% scene II
\scene "Scène II" \markup \smallCaps { Armide, Phenice, Sidonie }
\air "DBAarmidePheniceSidonie" \markup { Armide, Phénice, Sidonie : \italic { Que ne peut point votre art. } }
  \partPageBreak #'(dessus1 dessus2 basse)
%% scene III
\scene "Scène III" \markup { \smallCaps Armide, seule. }
\air "DCAarmide" \markup { Armide : \italic { Venez, Haine implacable. } }
  \partPageBreak #'(dessus1 dessus2 haute-contre basse basse-continue)
%% scene IV
\scene "Scène IV" \markup \wordwrap-center { \smallCaps Armide, \smallCaps { La Haine, } Suite de la Haine. }
\air "DDAhaine" \markup { La Haine, chœur : \italic { Plus on connait l'Amour et plus on le déteste. } }
  \partPageBreak #'(taille quinte)
\pieceNoToc "DDBchoeur" "CHŒUR"
  \partPageBreak #'(basse basse-continue)
\air "DDCritournelle" \markup Ritournelle
  \partPageBreak #'(taille dessus1 dessus2)
\air "DDDhaine" \markup { La Haine, chœur : \italic { Amour, sors pour jamais d'un cœur qui te chasse. } }
  \partPageBreak #'(haute-contre)
\includeScore "DDEchoeur"
\piece "DDFair" "Air"
\score {
  \newSmallStaff {
    \basse { 
      \time 2/2
      fa,2^"Fin de l'entrée"-"Basse continue" ~ fa,8 sol,8 fa,8 mi,8 |
      \custosNote re,4
    }
  }
  \layout { 
    indent= \noindent
    ragged-right = ##t
  }
}
  \partPageBreak #'(taille quinte)
\air "DDGarmideHaine" \markup { La Haine, Armide }
\noPageBreak
\markup \titre \fill-line {
  \line { On reprend l'air page \page-ref #'DDFair "000" "?" \hspace #-1 . }
}
\actEnd \markup { FIN DU TROISIÈME ACTE }

  \partDoublePageBreak #'(taille quinte)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Acte quatrième
%% scene I
\act "Acte Quatrième" "Scène Première" \markup \smallCaps { Ubalde, Le Chevalier Danois }
\air "EAAprelude" \markup Prélude
\air "EABubaldeChevalier" \markup { Ubalde, le Chevalier danois : \italic { Nous ne trouvons partout que des gouffres ouverts. } }
\air "EACubalde" \markup { Ubalde : \italic { Celui qui nous envoie a prévu ce danger. } }
\markup \titre \wordwrap-center {
  On reprend le prélude du commencement du quatrième acte
  page \page-ref #'EAAprelude "000" "?" \hspace #-1 .
}
  \partPageBreak #'(basse-continue)
\air "EADchevalier" \markup { Le Chevalier danois : \italic { Allons chercher Renaud. } }
\air "EAEubaldeChevalier" \markup { Ubalde, le Chevalier danois : \italic { Redoublons nos soins. } }
\piece "EAFair" "Air"
%% scene II
\scene "Scène II" \markup { \smallCaps Lucinde, \smallCaps Ubalde, et \smallCaps { Le Chevalier Danois } }
\air "EBAlucinde" \markup { Lucinde, chœur : \italic { Voici la charmante retraite de la félicité parfaite. } }
\pieceNoToc "EBBchoeur" "CHŒUR"
\piece "EBCgavotte" "Gavotte"
  \partPageBreak #'(haute-contre taille quinte basse)
\piece "EBDcanaries" "Canaries"
  \partPageBreak #'(basse-continue)
\air "EBElucindeChevalierUbalde" \markup { Lucinde, le Chevalier danois, Ubalde }
\airTitre "EBFchoeur" \markup CHŒUR \markup { Chœur : \italic { Jamais dans ces beaux lieux notre attente n'est vaine. } }
\markup \titre \wordwrap-center {
  On reprend l'air \italic { Voici la charmante retraite }
  page \page-ref #'EBAlucinde "000" "?" \hspace #-1 .
}
\air "EBGlucindeChevalierUbalde" \markup { Lucinde, le Chevalier danois, Ubalde }
  \partPageBreak #'(basse-continue)
%% scene III
\scene "Scène III" \markup \smallCaps { Ubalde, Le Chevalier Danois }
\piece "ECAprelude" "Prélude"
\air "ECBubaldeChevalier" \markup { Le Chevalier danois, Ubalde }
%% scene IV
\scene "Scène IV" \markup { \smallCaps Melisse, \smallCaps Ubalde, et \smallCaps { Le Chevalier Danois } }
\air "EDAmelisseUbaldeChevalier" \markup { Mélisse, Ubalde, le Chevalier danois }
\markup \titre \fill-line {
  \line { On reprend le prélude page \page-ref #'ECAprelude "000" "?"
          \hspace #-1 . }
}
  \partPageBreak #'(basse-continue)
\air "EDBubaldeChevalier" \markup { Le Chevalier danois, Ubalde }
\markup \titre \fill-line {
  \line { On reprend l'air page \page-ref #'EAFair "000" "?" \hspace #-1 . }
}
\actEnd \markup { FIN DU QUATRIÈME ACTE }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Acte cinquième
%% scene I
\act "Acte Cinquième" "Scène Première" \markup \column {
  \fill-line { \line { Le théâtre change et représente le palais enchanté d'Armide. } }
  \fill-line { \line \smallCaps { Renaud, Armide. } }
}
\pieceNoToc "FAAritournelle" "Ritournelle"
\air "FABarmideRenaud" \markup { Armide, Renaud }
  \partPageBreak #'(basse-continue)
%% scene II (?)
\scene "Scène II" \markup \null
\piece "FBApassacaille" "Passacaille"
\air "FBBamant" \markup { Un amant fortuné, chœur : \italic { Les plaisirs ont choisi pour asile. } }
  \partPageBreak #'(taille)
\includeScore "FBCchoeur"
\air "FBDritournelle" \markup Ritournelle
  \partPageBreak #'(basse)
\includeScore "FBEritournelle"
  \partPageBreak #'(basse-continue)
\air "FBFamant" \markup { Un amant fortuné, chœur : \italic { C'est l'amour qui retient dans ses chaînes. } }
  \partPageBreak #'(haute-contre quinte)
\includeScore "FBGchoeur"
\air "FBHritournelle" \markup Ritournelle
\includeScore "FBIritournelle"
  \partPageBreak #'(basse-continue)
\air "FBJamant" \markup { Un amant fortuné, chœur : \italic { Jeunes cœurs, tout vous est favorable. } }
\includeScore "FBKchoeur"
\markup \titre \wordwrap-center {
  On reprend le premier récit et le premier couplet du chœur
  de la passacaille page \page-ref #'FBBamant "000" "?"
  jusques à ce mot \italic fin. Puis on joue la passacaille de violons 
  page \page-ref #'FBApassacaille "000" "?" \hspace #-1 ,
  et on reprend encore le premier récit et le premier couplet du chœur.
}
\air "FBLrenaud" \markup { Renaud : \italic { Allez, éloignez-vous de moi doux plaisirs. } }
  \partPageBreak #'(haute-contre)
%% scene III
\scene "Scène III" \markup \smallCaps { Renaud, Ubalde, le Chevalier Danois. }
\air "FCAprelude" \markup Prélude
\air "FCBrenaudUbaldeChevalier" \markup { Renaud, le Chevalier Danois, Ubalde }
%% scene IV
\scene "Scène IV" \markup \smallCaps { Armide, Renaud, Ubalde, le Chevalier Danois. }
\air "FDAarmideRenaudUbladeChevalier" \markup { Armide, Renaud, le Chevalier Danois, Ubalde }
  \partPageBreak #'(haute-contre taille basse basse-continue)
%% scene V
\scene "Scène V" \markup { \smallCaps Armide, seule. }
\air "FEAarmide" \markup { Armide : \italic { Le perfide Renaud me fuit. } }
\air "FEBarmide" \markup { Armide : \italic { Traitre, attends, je le tiens, je tiens son cœur perfide. } }
\markup \titre \wordwrap-center {
  On reprend  le prélude ci-devant page \page-ref #'FCAprelude "000" "?"
  et on le joue très vite, et après on prend celui qui suit.
}
\air "FECritournelle" \markup Ritournelle
\actEnd \markup { FIN DU CINQUIÈME ET DERNIER ACTE. }
