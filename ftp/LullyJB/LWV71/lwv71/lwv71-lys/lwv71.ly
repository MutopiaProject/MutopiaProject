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
\include "LWV71/titling.ily"
\currentOpus "LWV71" "Armide"
%{
#(define-public (include-score parser name)
  (collect-music-for-book
   parser
   (make-music 'Music
    'page-marker #t
    'page-label (string->symbol name)))
  (add-toplevel-markup parser (markup #:box #:line ("Score" name)))
  (make-music 'Music 'void #t))
%}
%%% Title page
\markup \null

%%% 2nd page: notes
\pageBreak
\markup \null

%% Préface
%{
\pageBreak
\markuplines \override-lines #'(baseline-skip . 2) \column-lines {
  \act \line { Au Roi }
  \vspace #2
  \huge Sire,
  \override-lines #'(baseline-skip . 1) \justified-lines {
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
%}

%%% Table of contents
\pageBreak
\markuplines \table-of-contents

%%% Prologue
\prologue "Prologue"
\piece "AAAouverture" "Ouverture"
\air "AABgloireSagesse" \markup { La Gloire, la Sagesse : \italic { Tout doit céder dans l'univers à l'auguste Héros } }
\cosmeticPageBreak #'all
\air "AACchoeur" \markup { Chœur : \italic { Chantons la douceur de ses lois. } }
\cosmeticPageBreak #'all
\air "AADgloireSagesse" \markup { La Gloire, la Sagesse : \italic { D'une égale tendresse, nous aimons le même vainqueur. } }
\cosmeticPageBreak #'all
\air "AAEchoeur" \markup { Chœur : \italic { Dès qu'on le voit paraître, de quel cœur n'est-il point le maître ? } }
\cosmeticPageBreak #'all
\piece "AAFentree" "Entrée"
\piece "AAGmenuet" "Menuet"
\piece "AAHrondeau" "Rondeau"
\piece "AAIprelude" "Prélude"
\air "AAJgloireSagesse" \markup { La Gloire, la Sagesse : \italic { Suivons notre Héros, que rien ne nous sépare. } }
\air "AAKchoeur" \markup { Chœur : \italic { Que l'éclat de son nom s'étende au bout du monde. } }
\cosmeticPageBreak #'all
\piece "AALentree" "Entrée"
\includeScore "AAMmenuet"
\piece "AANmenuet" "Menuet"
\air "AAOdeuxVoix" \markup \italic { Que dans le temple de Mémoire son nom soit pour jamais gravé. }
\pieceNoToc "AAPchoeur" "CHŒUR"
\actEnd \markup { FIN DU PROLOGUE }

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
\air "BCBhidraot" \markup { Hidraot, chœur : \italic { Armide est encor plus aimable Qu'elle n'est redoutable. } }
\pieceNoToc "BCCchoeur" "CHŒUR"
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
%% scene IV
\scene "Scène IV" \markup { \smallCaps Aronte, et les acteurs de la scène précédente. }
\air "BDAarmideHidraotAronte" \markup { Aronte, Armide, Hidraot : \italic { Ô Ciel, ô disgrâce cruelle ! } }
\air "BDBarmideHidraot" \markup { Armide, Hidraot, chœur : \italic { Poursuivons jusqu'au trépas. } }
\pieceNoToc "BDCchoeur" "CHŒUR"
\markup \titre \fill-line {
  \line \vcenter {
    "ENTR'ACTE"
    \score {
      \dessus { mi''4 mi''8 do''8 sol''4. sol''8 | sol''1 | }
      \layout { indent= \noindent ragged-right = ##t }
    }
    \line { page \page-ref #'BCAritournelle "00" "?" \hspace #-1 . }
  }
}
\actEnd \markup { FIN DU PREMIER ACTE }

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
\includeScore "CBBarmideHidraot"
%% scene III
\scene "Scène III" \markup { \smallCaps Renaud, seul. }
\air "CCArenaud" \markup Renaud
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
\piece "CDEair" "Second Air"
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
      \basse {
        \key sol \major
        \time 4/4
        sol,2_"Fin du chœur" sol4 ~ sol16 la16 sol16 fad16 |
        mi1 | \custosNote mi4 
      }
      \layout { 
        indent= \noindent
        ragged-right = ##t
      }
    }
  }
}
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
    \line \vcenter {
      ENTR'ACTE
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
      etc,
    }
  }
  \fill-line {
    \line { comme au Prologue page \page-ref #'AAFentree "000" "?" \hspace #-1 . }
  }
}
\actEnd \markup { "FIN DU SECOND ACTE" }

%% Acte troisième
%% scene I
\act "Acte Troisième" "Scène Première" \markup \column {
  \fill-line { \line { Le théâtre change et représente un désert. } }
  \fill-line { \line { \smallCaps Armide, seule. } }
}
\air "DAAarmide" \markup { Armide : \italic { Ah, si la liberté doit m'être ravie. } }
%% scene II
\scene "Scène II" \markup \smallCaps { Armide, Phenice, Sidonie }
\air "DBAarmidePheniceSidonie" \markup { Armide, Phénice, Sidonie : \italic { Que ne peut point votre art. } }
%% scene III
\scene "Scène III" \markup { \smallCaps Armide, seule. }
\air "DCAarmide" \markup { Armide : \italic { Venez, Haine implacable. } }
%% scene IV
\scene "Scène IV" \markup \wordwrap-center { \smallCaps Armide, \smallCaps { La Haine, } Suite de la Haine. }
\air "DDAhaine" \markup { La Haine, chœur : \italic { Plus on connait l'Amour et plus on le déteste. } }
\pieceNoToc "DDBchoeur" "CHŒUR"
\air "DDCritournelle" \markup Ritournelle
\air "DDDhaine" \markup { La Haine, chœur : \italic { Amour, sors pour jamais d'un cœur qui te chasse. } }
\includeScore "DDEchoeur"
\piece "DDFair" "Air"
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
\air "DDGarmideHaine" \markup { La Haine, Armide }
\noPageBreak
\markup \titre \fill-line {
  \line \vcenter {
    ENTR'ACTE
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
    \line { page \page-ref #'DDFair "000" "?" \hspace #-1 . }
  }
}
\actEnd \markup { FIN DU TROISIÈME ACTE }

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
\air "EADchevalier" \markup { Le Chevalier danois : \italic { Allons chercher Renaud. } }
\air "EAEubaldeChevalier" \markup { Ubalde, le Chevalier danois : \italic { Redoublons nos soins. } }
\piece "EAFair" "Air"
%% scene II
\scene "Scène II" \markup { \smallCaps Lucinde, \smallCaps Ubalde, et \smallCaps { Le Chevalier Danois } }
\air "EBAlucinde" \markup { Lucinde, chœur : \italic { Voici la charmante retraite de la félicité parfaite. } }
\cosmeticPageBreak #'all
\pieceNoToc "EBBchoeur" "CHŒUR"
\cosmeticPageBreak #'all
\piece "EBCgavotte" "Gavotte"
\piece "EBDcanaries" "Canaries"
\air "EBElucindeChevalierUbalde" \markup { Lucinde, le Chevalier danois, Ubalde }
\cosmeticPageBreak #'all
\airTitre "EBFchoeur" \markup CHŒUR \markup { Chœur : \italic { Jamais dans ces beaux lieux notre attente n'est vaine. } }
\markup \titre \wordwrap-center {
  On reprend l'air \italic { Voici la charmante retraite }
  page \page-ref #'EBAlucinde "000" "?" \hspace #-1 .
}
\cosmeticPageBreak #'all
\air "EBGlucindeChevalierUbalde" \markup { Lucinde, le Chevalier danois, Ubalde }
%% scene III
\scene "Scène III" \markup \smallCaps { Ubalde, Le Chevalier Danois }
\piece "ECAprelude" "Prélude"
\air "ECBubaldeChevalier" \markup { Le Chevalier danois, Ubalde }
%% scene IV
\scene "Scène IV" \markup { \smallCaps Melisse, \smallCaps Ubalde, et \smallCaps { Le Chevalier Danois } }
\air "EDAmelisseUbaldeChevalier" \markup { Mélisse, Ubalde, le Chevalier danois }
\markup \titre \line \vcenter {
  PRÉLUDE
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
  \line { etc page \page-ref #'ECAprelude "000" "?" \hspace #-1 . }
}
\air "EDBubaldeChevalier" \markup { Le Chevalier danois, Ubalde }
\markup \titre \line \vcenter {
  ENTR'ACTE
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
  \line { page \page-ref #'EAFair "000" "?" \hspace #-1 . }
}
\actEnd \markup { FIN DU QUATRIÈME ACTE }

%% Acte cinquième
%% scene I
\act "Acte Cinquième" "Scène Première" \markup \column {
  \fill-line { \line { Le théâtre change et représente le palais enchanté d'Armide. } }
  \fill-line { \line \smallCaps { Renaud, Armide. } }
}
\pieceNoToc "FAAritournelle" "Ritournelle"
\air "FABarmideRenaud" \markup { Armide, Renaud }
%% scene II (?)
\scene "Scène II" \markup \null
\piece "FBApassacaille" "Passacaille"
\air "FBBamant" \markup { Un amant fortuné, chœur : \italic { Les plaisirs ont choisi pour asile. } }
\cosmeticPageBreak #'all
\includeScore "FBCchoeur"
\cosmeticPageBreak #'all
\air "FBDritournelle" \markup Ritournelle
\includeScore "FBEritournelle"
\air "FBFamant" \markup { Un amant fortuné, chœur : \italic { C'est l'amour qui retient dans ses chaînes. } }
\cosmeticPageBreak #'all
\includeScore "FBGchoeur"
\cosmeticPageBreak #'all
\air "FBHritournelle" \markup Ritournelle
\includeScore "FBIritournelle"
\air "FBJamant" \markup { Un amant fortuné, chœur : \italic { Jeunes cœurs, tout vous est favorable. } }
\cosmeticPageBreak #'all
\includeScore "FBKchoeur"
\markup \titre \wordwrap-center {
  On reprend le premier récit et le premier couplet du chœur
  de la passacaille page \page-ref #'FBBamant "000" "?"
  jusques à ce mot \italic fin. Puis on joue la passacaille de violons 
  page \page-ref #'FBApassacaille "000" "?" \hspace #-1 ,
  et on reprend encore le premier récit et le premier couplet du chœur.
}
\cosmeticPageBreak #'all
\air "FBLrenaud" \markup { Renaud : \italic { Allez, éloignez-vous de moi doux plaisirs. } }
%% scene III
\scene "Scène III" \markup \smallCaps { Renaud, Ubalde, le Chevalier Danois. }
\air "FCAprelude" \markup Prélude
\air "FCBrenaudUbaldeChevalier" \markup { Renaud, le Chevalier Danois, Ubalde }
%% scene IV
\scene "Scène IV" \markup \smallCaps { Armide, Renaud, Ubalde, le Chevalier Danois. }
\air "FDAarmideRenaudUbladeChevalier" \markup { Armide, Renaud, le Chevalier Danois, Ubalde }
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
