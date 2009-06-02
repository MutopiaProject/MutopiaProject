\header {
  copyrightYear = "2008"
  title = "David et Jonathas"
  subtitle = "Tragédie"
  composer = "Marc-Antoine Charpentier"
  poet = "François de Paule Bretonneau"
  opus = "H490"
  date = "1688"
  notes = \markup \column {
    \line { Documents originaux :}
    \hspace #1
    \wordwrap {
      Marc-Antoine Charpentier (1643-1704),
      \italic {
        David et Jonathas, Tragedie mise En musique par M.r 
        Charpentier Et Representée sur le Theatre du College de
        Louis le Grand le XXV. fevrier 1688. }
      Recueilli par Philidor Laisné en 1690.
      \with-url #"http://gallica.bnf.fr/notice?N=FRBNF39618321"
      \tiny \typewriter "http://gallica.bnf.fr"
    }
    \hspace #1
    \wordwrap {
      François de Paule Bretonneau (1660-1741), Marc-Antoine Charpentier (1643-1704),
      \italic {
        David et Jonathas, tragedie en musique, qui sera
        representée sur le théatre du college de Louis le Grand,
        le XXVIII. février }
      Collège de Louis-le-Grand (Paris).
      \with-url #"http://gallica.bnf.fr/notice?N=FRBNF33336938"
      \tiny \typewriter "http://gallica.bnf.fr"
    }
  }
}

\include "italiano.ly"
#(set-global-staff-size 14)
\include "common/common.ily"

\include "Charpentier/Opera/DavidEtJonathas/common.ily"
\setOpus "Charpentier/Opera/DavidEtJonathas"
\opusTitle "David et Jonathas"

\paper { #(define page-breaking ly:optimal-breaking) }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
  \paper { #(define page-breaking ly:minimal-breaking) }
%%% Title page
  \markup \null
  \pageBreak
  
%%% notes
  \markup \null
  \pageBreak
  
%%% Table of contents
  \markuplines \table-of-contents
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Prologue
\bookpart {
  \ouverture "Ouverture"
  \includeScore "AAAouverture"

  \actn "Prologue"
  \markuplines {
    \paragraph {
      Il est rapporté dans la Sainte Écriture, que Saül, voyant que le
      Ciel ne lui répondait point touchant le succès de la bataille qui se
      devait donner contre les Philistins, se déguisa et alla consulter
      une Pythonisse. Elle fit paraître Samuel, qui prédit à Saül sa mort,
      celle de ses enfants, et le couronnement de David, qu'il
      persécutait. La Pythonisse en voyant Samuel fut effrayée, le prenant
      pour un "dieu ;" et elle reconnut au même temps Saül. On suppose
      Saül chez la Pythonisse.
    }
    \vspace #3
    \title \line { ACTEURS DU PROLOGUE }
    \vspace #3
    \fill-line {
      \override #'(baseline-skip . 4) \large \column {
        \line { \smallCaps Saül, Roi des Israëlites. }
        \line \smallCaps { L'Ombre de Samuel }
        \line \smallCaps { Une Pythonisse }
        \line \smallCaps { Troupe de Démons }
      }
    }
  }
  \scene "Scène Première"
  \sceneDescription \markup { \smallCaps Saül, seul }
  \pieceToc \markup { Saül : \italic { Où suis-je ? qu'ai-je fait ? } }
  \includeScore "AABsaul"

  \scene "Scène II"
  \sceneDescription \markup \smallCaps { Saül, La Pythonisse }
  \pieceToc \markup { Saül, la Pythonisse }
  \includeScore "ABAsaulPythonisse"
  
  \scene "Scène III"
  \sceneDescription \markup \smallCaps { La Pythonisse }
  \pieceToc \markup { La Pythonisse : \italic { Retirez-vous, affreux Tonnerre. } }
  \includeScore "ACApythonisse"
  
  \scene "Scène IV"
  \sceneDescription \markup \smallCaps { L'Ombre de Samuel, Saül, La Pythonisse }
  \pieceToc \markup { L'Ombre de Samuel, Saül }
  \includeScore "ADAsaulOmbre"

  \scene "Scène V"
  \sceneDescription \markup \smallCaps { Saül, La Pythonisse }
  \pieceToc \markup { Saül : \italic { Est-ce assez ? ai-je enfin épuisé ta colère ? } }
  \includeScore "AEAsaulPythonisse"
  
  \actEnd \markup { FIN DU PROLOGUE }
}

\bookpart {
  \resetHeaders
  
  \markuplines {
    \act "DAVID ET JONATAS"
    \scene "TRAGÉDIE"
    \paragraph {
      Saül poursuivant David, perdit la bataille qu'il donna contre les
      Philistins. Jonathas, fils de Saül et ami de David, y fut
      tué. Saül se perça lui-même de son épée. La mort de Saül et celle
      de Jonathas firent avoir la couronne à David.
    }
    \vspace #1
    \paragraph {
      La scène est proche des montagnes de Gelboé, entre le camp de Saül
      et celui des Philistins.
    }
    \vspace #3
    \title \line { ACTEURS }
    \vspace #3
    \fill-line {
      \override #'(baseline-skip . 4) \large \column {
        \line { \smallCaps Saül, Roi des Israëlites. }
        \line { \smallCaps Jonathas, fils de Saül. }
        \line { \smallCaps David, persécuté par Saül. }
        \line { \smallCaps Achis, Roi des Philistins. }
        \line { \smallCaps Joadab, un des chefs de l'armée des Philistins, ennemi de David. }
        \line { Troupe de guerriers et de captifs, de peuple et de 
                pasteurs que David a délivrés. }
        \line { Chœur de la suite de Saül, d'Achis, de David, de Jonathas et de Joadab. }
      }
    }
  }
}
%%% Acte Premier
\bookpart {
  \act "Acte Premier"
  \markuplines \paragraph {
    David ayant vaincu les Amalécites est rappelé dans le camp des
    Philistins, d'où il avait été renvoyé par la jalousie des chefs de
    l'armée. Une troupe de guerriers, de captifs et de pasteurs qu'il a
    délivrés, commence par chanter ses louanges. Achis, auprès de qui il
    s'était auparavant retiré, va le recevoir hors du camp, et lui
    apprend qui là même il doit y avoir une conférence entre Saül et
    lui, pour délibérer ensemble si l'on fera la paix, ou si l'on
    donnera la bataille.
  }
  \scene "Scène Première"
  \sceneDescription \markup \wordwrap-center \smallCaps {
    Troupes de guerriers, de pasteurs et de captifs
  }
  \pieceTocTitle "Marche triomphante"
  \includeScore "BAAmarche"
  \pieceToc \markup {
    Un guerrier, chœur :
    \italic { Du plus grand des héros publions les exploits }
  }
  \includeScore "BABguerriers"
  \pieceToc \markup { Bergères : \italic { Le Ciel dans nos bois le fit naître } }
  \includeScore "BACbergers"
  \pieceToc \markup { Un guerrier, chœur : \italic { Jeune, et terrible dans la guerre } }
  \includeScore "BADguerriers"
  \pieceToc \markup { Captives : \italic { Cédons ; rien ne peut se défendre } }
  \includeScore "BAEcaptifs"
  \pieceToc \markup { Un guerrier : \italic { Le Dieu qui lance le tonnerre } }
  \includeScore "BAFguerrier"

  \scene "Scène II"
  \sceneDescription \markup \wordwrap-center \smallCaps {
    David, troupes de guerriers, de pasteurs et de captifs
  }
  \pieceToc \markup { David : \italic { Allez, le Ciel attend un légitime hommage } }
  \includeScore "BBAdavid"

  \scene "Scène III"
  \sceneDescription \markup \smallCaps David
  \pieceToc \markup {
    David : \italic { Ciel ! quel triste combat en ces lieux me rappelle ? }
  }
  \includeScore "BCAdavid"

  \scene "Scène IV"
  \sceneDescription \markup \wordwrap-center \smallCaps {
    Achis, David, troupes de guerriers, de pasteurs et de captifs
  }
  \pieceToc \markup Ritournelle
  \includeScore "BDAritournelle"
  \pieceToc \markup { Achis : \italic { Le Ciel enfin favorable à mes vœux } }
  \includeScore "BDBachis"
  \pieceToc \markup { David, Achis, chœur }
  \includeScore "BDCdavidAchis"
  \pieceToc \markup { Captifs : \italic { Après les fureurs de l'orage } }
  \includeScore "BDDcaptifs"
  \pieceTocTitle "Menuet"
  \includeScore "BDEmenuet"
  \pieceTocTitle "Prélude"
  \includeScore "BDFprelude"
  \actEnd \markup { FIN DU PREMIER ACTE }
}

%%% Acte Second
\bookpart {
  \act "Acte Second"
  \markuplines \paragraph {
    Le premier soin de David et de Jonathas est de demander à se voir
    durant la trève. Joadab jaloux de la gloire de David, et espérant de
    le faire périr plus aisément dans une bataille, s'efforce de lui
    persuader de combattre, mais en vain. Il forme le dessein d'accuser
    David auprès de Saül, de le vouloir tromper sous l'apparence d'une
    fausse paix. David et Jonathas commencent à goûter les douceurs de
    la paix, qui leur est prmise, et qui les rejoint tous deux.
  }
  \scene "Scène Première"
  \sceneDescription \markup \wordwrap-center \smallCaps { Joadab, David }
  \pieceToc \markup { Joadab : \italic { Quel inutile soin en ces lieux vous arrête ? } }
  \includeScore "CAAjoadab"
  \pieceToc \markup {
    David : \italic { Entre la paix et la victoire Un héros peut se partager }
  }
  \includeScore "CABdavid"

  \scene "Scène II"
  \sceneDescription \markup \wordwrap-center \smallCaps {
    Joadab, chœurs de la suite de David et de Jonathas.
  }
  \pieceToc \markup { Joadab : \italic { Dépit jaloux, haine cruelle } }
  \includeScore "CBAjoadab"
  \pieceToc \markup { Chœur : \italic { Tout suit vos vœux ; Cessez de craindre. } }
  \includeScore "CBBchoeur"
  \pieceToc \markup { Joadab : \italic { David, au comble de la gloire } }
  \includeScore "CBCjoadabChoeur"
  \includeScore "CBDjoadab"
  \scene "Scène III"
  \sceneDescription \markup \wordwrap-center \smallCaps {
    David, Jonathas, troupes de la suite de l'un et de l'autre.
  }
  \pieceToc \markup { Jonathas, David, chœur :
                      \italic { À votre bras vainqueur rien ne peut résister } }
  \includeScore "CCAdavidJonathas"
  \markup { [Il manque deux pages manuscrites.] }
  \actEnd \markup { FIN DU DEUXIÈME ACTE }
}

%%% Acte Troisième
\bookpart {
  \act "Acte Troisième"
  \markuplines \paragraph {
    Saül souçonnant tout de David et cherchant toujours l'occasion de
    le perdre, ajoute aisément foi à l'accusation de Joadab. Il
    demande pour dondition de la paix qu'on lui livre David. Achis sûr
    de son innocence et son protecteur, le refuse. Cependant David
    paraît devant Saül avec Jonathas. Saül lui reproche sa "trahison ;"
    David étonné et voyant que sa présence irrite Saül, se
    retire. Saül le "poursuit ;" et Joadab se réjouit de l'heureux
    succès de son accusation.
  }
  \scene "Scène Première"
  \sceneDescription \markup \wordwrap-center \smallCaps { Saül, Achis }
  \pieceToc \markup { Symphonie }
  \includeScore "DAAsymphonie"
  \pieceToc \markup { Saül, Achis : \italic { Ah ! je dois assurer et ma vie et l'empire. } }
  \includeScore "DABsaulAchis"

  \scene "Scène II"
  \sceneDescription \markup \wordwrap-center \smallCaps { Saül }
  \pieceToc \markup { Saül : \italic { Objet d'une implacable haine } }
  \includeScore "DBAsaul"

  \scene "Scène III"
  \sceneDescription \markup \wordwrap-center \smallCaps { 
    Saül, Davis, Jonathas, Joadab, troupes...
  }
  \pieceToc \markup { Jonathas, Saül, David :
                      \italic { David peut-il attendre un regard favorable ? } }
  \includeScore "DCAjonathasDavidSaul"
  \pieceToc \markup { Saül, David, Jonathas : \italic { Ah ! plus tôt dès ce jour vange-moi d'un perfide. } }
  \includeScore "DCBjonathasDavidSaulJoadab"
  \pieceTocTitle "Gigue"
  \includeScore "DDBgigue"
  \actEnd \markup { FIN DU TROISIÈME ACTE }
}

%%% Acte Quatrième
\bookpart {
  \act "Acte Quatrième"
  \markuplines \paragraph {
    Saül, d'autant plus animé contre David, qu'il le voit plus soutenu
    par le roi des Philistins, et prenant de là même de nouveaux
    soupçons, se déclare enfin pour la bataille. Achis y est fortement
    porté de son côté, apprenant le tumulte qu'il y a dans son armée,
    qui animée par les intrigues de Joadab, demande à combattre. David
    se retirant dans le camp des Philistins, est rencontré par
    Jonathas. Quelle douleur à l'un et à l'autre d'être ainsi obligés
    de se séparer. David lui déclare que bien loin de combattre contre
    Saül, il ne pensera qu'à sauver son prince et son ami.
  }
  \scene "Scène Première"
  \sceneDescription \markup \wordwrap-center \smallCaps { David. }
  \pieceTocTitle "Prélude"
  \includeScore "EAAprelude"
  \pieceToc \markup { David : \italic { Souverain juge des mortels } }
  \includeScore "EABdavid"

  \scene "Scène II"
  \sceneDescription \markup \wordwrap-center \smallCaps { Jonathas, David. }
  \pieceToc \markup { Jonathas, David : \italic { Vous me fuyez / Toujours vous me suivez } }
  \includeScore "EBAjonathasDavid"

  \scene "Scène III"
  \sceneDescription \markup \wordwrap-center \smallCaps { Jonathas, troupes d'Israëlites et de Philistins. }
  \pieceToc \markup { Jonathas, chœur : \italic {  A-t-on jamais souffert une plus rude peine ? } }
  \includeScore "ECAjonathasChoeur"

  \scene "Scène IV"
  \sceneDescription \markup \wordwrap-center \smallCaps { Saül, Achis. }
  \pieceToc \markup { Saül, Achis }
  \includeScore "EDAsaulAchis"

  \scene "Scène V"
  \sceneDescription \markup \wordwrap-center \smallCaps { Achis, Joadab, troupes. }
  \pieceToc \markup { Joadab : \italic { Enfin vous m'écoutez, Seigneur } }
  \includeScore "EEAjoadab"
  \pieceToc \markup { Achis, chœur : \italic { Courons, courons : cherchons dans les combats } }
  \includeScore "EEBachisChoeur"
  \pieceTocTitle "Rigaudon"
  \includeScore "EECrigaudon"
  \pieceTocTitle "Bourrée"
  \includeScore "EEDbourree"
  \actEnd \markup { FIN DU QUATRIÈME ACTE }
}

%%% Acte Cinquième
\bookpart {
  \act "Acte Cinquième"
  \markuplines \paragraph {

    La bataille se donne, et Saül la perd. Jonathas blessé à mort est
    rencontré par "Saül ;" quel désespoir pour ce prince et ce père
    "malheureux ?" Il retourne chercher "David :" cependant David
    paraît de son côté cherchant Jonathas. Quelle "douleur !" Jonathas
    meurt dans les bras de son ami. Saül prêt à tomber entre les mains
    des Philistins, se perce de son épée, et est rapporté dans cet
    état. Achis paraît en même temps triomphant, et apprend à David
    que les Israëlites l'ont élu pour roi. David se retire confus et
    percé de douleur.

  }
  \scene "Scène Première"
  \sceneDescription \markup \wordwrap-center \smallCaps { Jonathas, blessé. }
  \pieceTocTitle "Bruit d'armes"
  \includeScore "FAAouverture"
  \pieceToc \markup { Jonathas : \italic { Courez ; Saül attend un secours nécessaire. } }
  \includeScore "FABjonathas"

  \scene "Scène II"
  \sceneDescription \markup \wordwrap-center \smallCaps {
    Saül, Jonathas, troupe de gardes.
  }
  \pieceToc \markup { Saül, Jonathas, chœur :
                      \italic { Que vois-je ? quoi, je perds et mon fils et l'Empire ! } }
  \includeScore "FBAsaulJonathas"
  \noPageBreak \markup { [Il manque une page manuscrite.] }

  \scene "Scène III"
  \sceneDescription \markup \wordwrap-center \smallCaps {
    Jonathas, troupes de gardes et de Philistins.
  }
  \pieceToc \markup { Chœur : \italic { Victoire ! Victoire ! Tout cède à nos coups } }
  \includeScore "FCAchoeur"

  \scene "Scène IV"
  \sceneDescription \markup \wordwrap-center \smallCaps {
    Jonathas, David, troupes...
  }
  \pieceToc \markup { David, Jonathas :
                      \italic { Qu'on sauve Jonathas... allez... soins superflus ! } }
  \includeScore "FDAdavidJonathas"
  \pieceToc \markup { David, chœur : \italic { Jamais amour plus fidèle et plus tendre } }
  \includeScore "FDBdavidChoeur"

  \scene "Scène V"
  \sceneDescription \markup \wordwrap-center \smallCaps {
    Saül blessé entre les bras des soldats, David, troupes...
  }
  \pieceToc \markup { Saül, David :
                      \italic { Vois traître, et reconnais ta nouvelle victime. } }
  \includeScore "FEAdavidSaul"

  \scene "Scène dernière"
  \sceneDescription \markup \wordwrap-center \smallCaps {
    Achis, David, troupe de triomphants.
  }
  \pieceTocTitle "Marche triomphante"
  \includeScore "FFAmarche"
  \pieceToc \markup {
    Achis, David : \italic { Joignez à vos exploits l'honneur du diadème. } }
  \includeScore "FFBachisDavid"
  \pieceToc \markup {
    Chœur : \italic { Du plus grands des héros chantons, chantons la gloire. } }
  \includeScore "FFCchoeur"
  \actEnd \markup { FIN DE LA TRAGÉDIE }
}
