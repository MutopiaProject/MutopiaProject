
\header {
  copyrightYear = "2006"
  title = "Armide"
  composer = "Jean Baptiste Lully"
  poet = "Philippe Quinault"
  opus = "LWV 71"
  date = "1686"
  notes = \markup \column {
    \line { Documents originaux :}
    \hspace #1
    \wordwrap { 
      \italic Armide, tragédie lyrique mise en musique par Monsieur de Lully.
      Christophe Ballard, Paris, 1686.
      \with-url #"http://www.library.unt.edu/music/lully/Armide.pdf"
      \tiny \typewriter "http://www.library.unt.edu"
    }
  }
}

\include "common/common.ily"

\currentOpus "LWV71"
\newPage

\markup \column {
  \act \line { Au Roi }
  \vspace #2
  \huge Sire,
  \texte \justify {
    De toutes les tragédies que j'ai mises en musique voici celle dont le public
    a témoigné être le plus "satisfait :" c'est un spectacle où l'on court en 
    foule, et jusqu'ici on n'en a point vu qui ait reçu plus "d'applaudissements ;"
    cependant, c'est de tous les ouvrages que j'ai faits celui que j'estime le 
    moins heureux, puisqu'il n'a pas encore eu l'avantage de paraître devant
    Votre Majesté. Vos ordres, Sire, m'ont engagé d'y travailler avec soin et 
    avec "empressement :" un mal dangeureux dont j'ai été surpris n'a pas été 
    capable d'interrompre mon travail, et le désir ardent que j'avais de 
    l'achever dans le temps que Votre Majesté le souhaitait, m'a fait oublier 
    le péril où j'étais exposé, et m'a touché plus vivement que les plus
    violentes douleurs que j'ai souffertes. Mais que me sert-il, Sire, d'avoir
    fait tant d'efforts pour me hâter de Vous offrir ces nouveaux "concerts ?"
    Votre Majesté ne s'est pas trouvée en état de les entendre, et Elle n'en
    a voulu prendre d'autre plaisir que celui de les faire servir au 
    divertissement de Ses peuples. J'avouerai que les louanges de tout Paris
    ne me siffisent "pas ;" ce n'est qu'à Vous, Sire, que je veux consacrer
    toutes les productions de mon "génie ;" je ne puis aspirer à un moindre
    prix qu'à la gloire de Vous plaire, et sans l'approbation de Votre Majesté,
    je compte pour rien celle de tout le reste du mondre. Permettez, Sire, que
    dans l'impatience où je suis de vous offrir cet opera, je vous le présente
    sur le papier en attendant qu'il me soit permis de vous le faire voir sur
    le théâtre, et souffrez que je me serve de cette occasion pour renouveler
    la protestation d'être toute ma vie avec un zêle très ardent et un très
    profond respect, Sire, de Votre Majesté.
  }
}

\newChapter
\includeScore "AAAouverture"
\includeScore "AABgloireSagesse"
\includeScore "AACchoeur"
\newPage
\includeScore "AADgloireSagesse"
\includeScore "AAEchoeur"
\newPage
\includeScore "AAFentree"
\includeScore "AAGmenuet"
\includeScore "AAHrondeau"
\score {
  \basse { \time 3/4 la,2_"Fin de l'entrée" ~ la,8 si,8 | \custosNote do4 }
  \layout { 
    indent= \noindent
    ragged-right = ##t
  }
}
\includeScore "AAIprelude"
\includeScore "AAJgloireSagesse"
\includeScore "AAKchoeur"
\newPage
\includeScore "AALentree"
\includeScore "AAMmenuet"
\includeScore "AANmenuet"
\includeScore "AAOdeuxVoix"
\includeScore "AAPchoeur"

\markup \titre \center-align { 
  \line { FIN DU PROLOGUE }
}

\newChapter
%% Acte premier
%% scene I
\includeScore "BAAritournelle"
\includeScore "BABarmidePheniceSidonie"
\includeScore "BACarmideSidonie"
%% scene II
\includeScore "BBAarmideHidraot"
%% scene III
\includeScore "BCAritournelle"
\includeScore "BCBhidraot"
\includeScore "BCCchoeur"
\includeScore "BCDrondeau"
\includeScore "BCEphenice"
\includeScore "BCFchoeur"
\includeScore "BCGphenice"
\markup \titre \center-align { 
  \line { On reprend deux fois le chœur du rondeau
          \ref-score-page #'BCFchoeur #"page ~a." }
}
\includeScore "BCHphenice"
\markup \titre \center-align { 
  \line {
    On reprend encore deux fois le même chœur du rondeau
    \ref-score-page #'BCFchoeur #"page ~a" 
  }
  \line {
    et l'on joue la première sarabande
    \ref-score-page #'BCDrondeau #"page ~a." 
  }
  \line {
    Et ensuite la sarabande en bémol
    \ref-score-page #'BCIsarabande #"page ~a."
  }
}
\includeScore "BCIsarabande"
\includeScore "BCJsidonie"
\includeScore "BCKchoeur"
\includeScore "BCLsidonie"
\markup \titre \center-align { 
  \line { On reprend deux fois le chœur en rondeau ci-dessus
          \ref-score-page #'BCKchoeur #"page ~a." }
}
\includeScore "BCMsidonie"
\markup \titre \center-align { 
  \line { On reprend encore deux fois le chœur ci-dessus
          \ref-score-page #'BCKchoeur #"page ~a." }
  \line { Et ensuite la sarabande en bémol
          \ref-score-page #'BCIsarabande #"page ~a." }
}
%% scene IV
\includeScore "BDAarmideHidraotAronte"
\includeScore "BDBarmideHidraot"
\includeScore "BDCchoeur"
\markup \titre \center-align {
  \line {
    \column { \vspace #2 \line { ENTR'ACTE } }
    \score {
      \dessus {
        mi''4 mi''8 do''8 sol''4. sol''8 |
        sol''1 |
      }
      \layout { 
        indent= \noindent
        ragged-right = ##t
      }
    }
    \column { \vspace #2 \line { \ref-score-page #'BCAritournelle #"page ~a." } }
  }
  \null
  \line { FIN DU PREMIER ACTE }
}

\newChapter
%% Acte second
%% scene I
\includeScore "CAArenaudArtemidore"
%% scene II
\includeScore "CBAarmideHidraot"
\includeScore "CBBarmideHidraot"
%% scene III
\includeScore "CCArenaud"
%% scene IV
\includeScore "CDAnymphe"
\includeScore "CDBprelude"
\includeScore "CDCchoeur"
\includeScore "CDDair"
\includeScore "CDEair"
\includeScore "CDFbergere"
\markup \titre \center-align {
  \line { On reprend le second air en bémol
          \ref-score-page #'CDEair #"page ~a." 
          Et après le premier en bécarre
          \ref-score-page #'CDDair #"page ~a ;" }
  \line { puis la Bergère chante ce qui suit sur la finale de l'air. }
}
\includeScore "CDGbergere"
\markup \titre \column {
  \line {
    On reprend le petit chœur "\"Ah ! quelle erreur !\"" etc
    \ref-score-page #'CDCchoeur #"page ~a." 
  }
  \score {
    \basse {
      \key sol \major
      \time 4/4
      sol,2_"Fin du chœur" sol4 ~ sol16 la16 sol16 fad16 |
      mi1 |
      \custosNote mi4 
    }
    \layout { 
      indent= \noindent
      ragged-right = ##t
    }
  }
}
%% scene V
\includeScore "CEAritournelle"
\includeScore "CEBarmide"
\includeScore "CECritournelle"
\includeScore "CEDarmide"
\markup \titre \center-align {
  \line {
    \column { \vspace #2 \line { ENTR'ACTE } }
    \score {
      \dessus {
        la''4. mi''8 do''4 la'4 |
        fa''4. fa''8 fa''4. sol''8 |
        \custosNote mi''4 
      }
      \layout { 
        indent= \noindent
        ragged-right = ##t
      }
    }
    \column { \vspace #2 \line { 
      etc, comme au Prologue \ref-score-page #'AAFentree #"(page ~a.)" } }
  }
  \null
  \line { FIN DU SECOND ACTE }
}

\newChapter
%% Acte troisième
%% scene I
\includeScore "DAAarmide"
%% scene II
\includeScore "DBAarmidePheniceSidonie"
%% scene III
\includeScore "DCAarmide"
%% scene IV
\includeScore "DDAhaine"
\includeScore "DDBchoeur"
\includeScore "DDCritournelle"
\includeScore "DDDhaine"
\includeScore "DDEchoeur"
\includeScore "DDFair"
\score {
  \basse { 
    \time 2/2
    fa,2_"Fin de l'entrée" ~ fa,8 sol,8 fa,8 mi,8 |
    \custosNote re,4
  }
  \layout { 
    indent= \noindent
    ragged-right = ##t
  }
}
\includeScore "DDGarmideHaine"

\markup \titre \center-align {
  \line {
    \column { \vspace #2 \line { ENTR'ACTE } }
    \score {
      \dessus {
        \key fa \major
        \time 6/4
        \partial 4
        do''4 |
        fa'4 sol'4 la'4 sib'4 sol'4 do''4 |
        \custosNote la'4 
      }
      \layout { 
        indent= \noindent
        ragged-right = ##t
      }
    }
    \column { \vspace #2 \line { 
      \ref-score-page #'DDFair #"page ~a." } }
  }
  \null
  \line { FIN DU TROISIÈME ACTE }
}

\newChapter
%% Acte quatrième
%% scene I
\includeScore "EAAprelude"
\includeScore "EABubaldeChevalier"
\includeScore "EACubalde"
\markup \titre \center-align {
  \line { On reprend le prélude du commencement du quatrième acte
          \ref-score-page #'EAAprelude #"page ~a." }
}
\includeScore "EADchevalier"
\includeScore "EAEubaldeChevalier"
\includeScore "EAFair"
%% scene II
\includeScore "EBAlucinde"
\includeScore "EBBchoeur"
\includeScore "EBCgavotte"
\includeScore "EBDcanaries"
\includeScore "EBElucindeChevalierUbalde"
\includeScore "EBFchoeur"
\markup \titre \center-align {
  \line { On reprend l'air \italic { Voici la charmante retraite }
          \ref-score-page #'EBAlucinde #"page ~a." }
}
\includeScore "EBGlucindeChevalierUbalde"
%% scene III
\includeScore "ECAprelude"
\includeScore "ECBubaldeChevalier"
%% scene IV
\includeScore "EDAmelisseUbaldeChevalier"
\markup \titre \center-align {
  \line {
    \column { \vspace #2 \line { PRÉLUDE } }
    \score {
      \dessus {
        \key do \major
        \time 2/2
        r8 sol''8 sol''8 fa''8 mi''8 sol''8 mi''8 fa''8 
      }
      \layout { 
        indent= \noindent
        ragged-right = ##t
      }
    }
    \column { \vspace #2 \line { 
      etc \ref-score-page #'ECAprelude #"page ~a." } }
  }
}
\includeScore "EDBubaldeChevalier"
\markup \titre \center-align {
  \line {
    \column { \vspace #2 \line { ENTR'ACTE } }
    \score {
      \dessus {
        \key do \major
        \time 6/4
        \partial 1
        sol''4 mi''4 fa''4 sol''4 |
        do''4 re''4 mi''4 fa''4 fa''4 mi''4 |
        \custosNote re''4 
      }
      \layout { 
        indent= \noindent
        ragged-right = ##t
      }
    }
    \column { \vspace #2 \line { 
      \ref-score-page #'EAFair #"page ~a." } }
  }
  \null
  \line { FIN DU QUATRIÈME ACTE }
}

%% Acte cinquième
\newChapter
%% scene I
\includeScore "FAAritournelle"
\includeScore "FABarmideRenaud"
%% scene II (?)
\includeScore "FBApassacaille"
\includeScore "FBBamant"
\includeScore "FBCchoeur"
\includeScore "FBDritournelle"
\includeScore "FBEritournelle"
\includeScore "FBFamant"
\includeScore "FBGchoeur"
\includeScore "FBHritournelle"
\includeScore "FBIritournelle"
\includeScore "FBJamant"
\includeScore "FBKchoeur"
\markup \titre \center-align {
  \line { On reprend le premier récit et le premier couplet du chœur
          de la passacaille \ref-score-page #'FBBamant #"page ~a" }
  \line { jusques à ce mot \italic fin. Puis on joue la passacaille de violons 
          \ref-score-page #'FBApassacaille #"page ~a," }
  \line { et on reprend encore le premier récit et le premier couplet du chœur. }
}
\includeScore "FBLrenaud"
%% scene III
\includeScore "FCAprelude"
\includeScore "FCBrenaudUbaldeChevalier"
%% scene IV
\includeScore "FDAarmideRenaudUbladeChevalier"
%% scene V
\includeScore "FEAarmide"
\includeScore "FEBarmide"
\markup \titre \center-align {
  \line { On reprend  le prélude ci-devant \ref-score-page #'FCAprelude #"page ~a"
          et on le jour très vite, et après on prend celui qui suit. }
}
\includeScore "FECritournelle"

\markup \titre \center-align {
  \line { FIN DU CINQUIÈME ET DERNIER ACTE. }
}

%%%%%% Table des matières
\newChapter
\markup \toc-body {
  \toc-title \smallCaps "Table des Matieres"
  \toc-titleA "Prologue"
  \toc-score #'AAAouverture Ouverture
  \toc-score #'AABgloireSagesse \line {
    La Gloire, la Sagesse :
    \italic { Tout doit céder dans l'univers à l'auguste Héros }
  }
  \toc-score #'AACchoeur \line {
    Chœur : \italic { Chantons la douceur de ses lois. }
  }
  \toc-score #'AADgloireSagesse \line {
    La Gloire, la Sagesse :
    \italic { D'une égale tendresse, nous aimons le même vainqueur. }
  }
  \toc-score #'AAEchoeur \line {
    Chœur :
    \italic { Dès qu'on le voit paraître, de quel cœur n'est-il point le maître ? }
  }
  \toc-score #'AAFentree Entrée
  \toc-score #'AAGmenuet Menuet
  \toc-score #'AAHrondeau Rondeau
  \toc-score #'AAJgloireSagesse \line {
    La Gloire, la Sagesse :
    \italic { Suivons notre Héros, que rien ne nous sépare. }
  }
  \toc-score #'AAKchoeur \line {
    Chœur : \italic { Que l'éclat de son nom s'étende au bout du monde. }
  }
  \toc-score #'AALentree Entrée
  \toc-score #'AANmenuet Menuet
  \toc-score #'AAOdeuxVoix \line \italic {
    Que dans le temple de Mémoire son nom soit pour jamais gravé.
  }
}

\markup \toc-body {
  \toc-titleA "Acte Premier"
  \toc-titleB "Scène Première"
  \toc-score #'BAAritournelle Ritournelle
  \toc-score #'BABarmidePheniceSidonie \line {
    Armide, Phénice, Sidonie
  }
  \toc-titleB "Scène II"
  \toc-score #'BBAarmideHidraot \line {
    Armide, Hidraot
  }
  \toc-titleB "Scène III"
  \toc-score #'BCAritournelle Ritournelle
  \toc-score #'BCBhidraot \line {
    Hidraot : \italic { Armide est encor plus aimable Qu'elle n'est redoutable. }
  }
  \toc-score #'BCDrondeau Rondeau
  \toc-score #'BCEphenice \line {
    Phénice : \italic { Suivons Armide, et chantons sa victoire. }
  }
  \toc-score #'BCIsarabande Sarabande
  \toc-score #'BCJsidonie \line {
    Sidonie : \italic { Que la douceur d'un triomphe est extrême. }
  }
  \toc-titleB "Scène IV"
  \toc-score #'BDAarmideHidraotAronte \line {
    Aronte, Armide, Hidraot : \italic { Ô Ciel, ô disgrâce cruelle ! }
  }
  \toc-score #'BDBarmideHidraot \line {
    Armide, Hidraot : \italic { Poursuivons jusqu'au trépas. }
  }
}

\markup \toc-body {
  \toc-titleA "Acte Second"
  \toc-titleB "Scène Première"
  \toc-score #'CAArenaudArtemidore \line { Artemidore, Renaud }
  \toc-titleB "Scène II"
  \toc-score #'CBAarmideHidraot \line { Armide, Hidraot }
  \toc-titleB "Scène III"
  \toc-score #'CCArenaud \line { Renaud }
  \toc-titleB "Scène IV"
  \toc-score #'CDAnymphe \line { 
    Une Nymphe : \italic { Ah, temps heureux où l'on sait plaire. }
  }
  \toc-score #'CDCchoeur \line {
    Chœur : \italic { Ah ! quelle erreur, quelle folie ! }
  }
  \toc-score #'CDDair "Premier Air"
  \toc-score #'CDEair "Second Air"
  \toc-score #'CDFbergere \line {
    Une bergère héroïque : \italic { On s'étonnerait moins que la saison nouvelle }
  }
  \toc-score #'CDGbergere \line {
    Une bergère héroïque : \italic { Laissons au tendre amour la jeunesse en partage. }
  }
  \toc-titleB "Scène V"
  \toc-score #'CEAritournelle Ritournelle
  \toc-score #'CEBarmide \line {
    Armide : \italic { Enfin, il est en ma puissance. }
  }
  \toc-score #'CECritournelle Ritournelle
  \toc-score #'CEDarmide \line {
    Armide : \italic { Venez seconder mes désir. }
  }
}

\markup \toc-body {
  \toc-titleA "Acte Troisième"
  \toc-titleB "Scène Première"
  \toc-score #'DAAarmide \line { 
    Armide : \italic { Ah, si la liberté doit m'être ravie. }
  }
  \toc-titleB "Scène II"
  \toc-score #'DBAarmidePheniceSidonie \line {
    Armide, Phénice, Sidonie : \italic { Que ne peut point votre art. }
  }
  \toc-titleB "Scène III"
  \toc-score #'DCAarmide \line {
    Armide : \italic { Venez, Haine implacable. }
  }
  \toc-titleB "Scène IV"
  \toc-score #'DDAhaine \line {
    La Haine, chœur : \italic { Plus on connait l'Amour et plus on le déteste. }
  }
  \toc-score #'DDCritournelle Ritournelle
  \toc-score #'DDDhaine \line {
    La Haine, chœur : \italic { Amour, sors pour jamais d'un cœur qui te chasse. }
  }
  \toc-score #'DDFair Air
  \toc-score #'DDGarmideHaine \line { La Haine, Armide }
}
\markup \toc-body {
  \toc-titleA "Acte Quatrième"
  \toc-titleB "Scène Première"
  \toc-score #'EAAprelude Prélude
  \toc-score #'EABubaldeChevalier \line { 
    Ubalde, le Chevalier danois :
    \italic { Nous ne trouvons partout que des gouffres ouverts. }
  }
  \toc-score #'EACubalde \line { 
    Ubalde : \italic { Celui qui nous envoie a prévu ce danger. }
  }
  \toc-score #'EADchevalier \line {
    Le Chevalier danois : \italic { Allons chercher Renaud. }
  }
  \toc-score #'EAEubaldeChevalier \line { 
    Ubalde, le Chevalier danois :
    \italic { Redoublons nos soins. }
  }
  \toc-score #'EAFair Air
  \toc-titleB "Scène II"
  \toc-score #'EBAlucinde \line {
    Lucinde, chœur : \italic { Voici la charmante retraite de la félicité parfaite. }
  }
  \toc-score #'EBCgavotte Gavotte
  \toc-score #'EBDcanaries Canaries
  \toc-score #'EBElucindeChevalierUbalde \line {
    Lucinde, le Chevalier danois, Ubalde
  }
  \toc-score #'EBFchoeur \line {
    Chœur : \italic { Jamais dans ces beaux lieux notre attente n'est vaine. }
  }
  \toc-score #'EBGlucindeChevalierUbalde \line {
    Lucinde, le Chevalier danois, Ubalde
  }
  \toc-titleB "Scène III"
  \toc-score #'ECAprelude Prélude
  \toc-score #'ECBubaldeChevalier \line {
    Le Chevalier danois, Ubalde
  }
  \toc-titleB "Scène IV"
  \toc-score #'EDAmelisseUbaldeChevalier \line {
    Mélisse, Ubalde, le Chevalier danois
  } 
  \toc-score #'EDBubaldeChevalier \line {
    Le Chevalier danois, Ubalde
  }
}
\markup \toc-body {
  \toc-titleA "Acte Cinquième"
  \toc-titleB "Scène Première"
  \toc-score #'FAAritournelle Ritournelle
  \toc-score #'FABarmideRenaud \line { Armide, Renaud }
  \toc-titleB "Scène II"
  \toc-score #'FBApassacaille Passacaille
  \toc-score #'FBBamant \line {
    Un amant fortuné, chœur : \italic { Les plaisirs ont choisi pour asile. }
  }
  \toc-score #'FBDritournelle Ritournelle
  \toc-score #'FBFamant \line {
    Un amant fortuné, chœur : \italic { C'est l'amour qui retient dans ses chaînes. }
  }
  \toc-score #'FBHritournelle Ritournelle
  \toc-score #'FBJamant \line {
    Un amant fortuné, chœur : \italic { Jeunes cœurs, tout vous est favorable. }
  }
  \toc-score #'FBLrenaud \line {
    Renaud : \italic { Allez, éloignez-vous de moi doux plaisirs. }
  }
  \toc-titleB "Scène III"
  \toc-score #'FCAprelude Prélude
  \toc-score #'FCBrenaudUbaldeChevalier \line {
    Renaud, le Chevalier Danois, Ubalde 
  }
  \toc-titleB "Scène IV"
  \toc-score #'FDAarmideRenaudUbladeChevalier  \line {
    Armide, Renaud, le Chevalier Danois, Ubalde 
  }
  \toc-titleB "Scène V"
  \toc-score #'FEAarmide \line {
    Armide : \italic { Le perfide Renaud me fuit. }
  }
  \toc-score #'FEBarmide \line {
    Armide : \italic { Traitre, attends, je le tiens, je tiens son cœur perfide. }
  }
  \toc-score #'FECritournelle Ritournelle
}
