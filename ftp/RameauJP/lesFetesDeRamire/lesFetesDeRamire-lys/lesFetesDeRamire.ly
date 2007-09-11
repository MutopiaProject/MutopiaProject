\header {
  copyrightYear = "2007"
  title = "Les Fêtes de Ramire"
  composer = "Jean-Philippe Rameau"
  poet = "Voltaire"
  date = "1745"

  notes = \markup \column {
    \line { Documents originaux :}
    \null
    \wordwrap {
      \italic { LE TEMPLE DE LA GLOIRE, } FESTE donnée a Versailles le 27
      Novembre 1745. Remise au Theatre de l'Academie Royale de Musique le 
      19 Avril 1746, la Musique de M. Rameau.
      \italic { LES FESTES DE RAMIRE } Mise en Musique Par Monsieur Rameau,
      1746.
    }
    \with-url #"http://www.bibliotheques.versailles.fr/simclient/Integration/DOSSIERSDOCS_VERSAILLES/DossiersDoc/voirDossManuscrit.asp?INSTANCE=DOSSIERSDOCS_VERSAILLES&DOSS=BKDD_BMVMsmus_000021_MSMUS131" \typewriter "http://www.bibliotheques.versailles.fr"
  }
}

\include "common/common.ily"
\include "lesFetesDeRamire/titling.ily"
\include "lesFetesDeRamire/personnages.ily"
\currentOpus "lesFetesDeRamire" "Les Fêtes de Ramire"
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

%%% Table of contents
\pageBreak
\markuplines \table-of-contents

%% Ouverture
\act "Les Fêtes de Ramire" \markup \wordwrap-center {
  Le théâtre représente une prison
}
\ouverture "AAouverture" "Ouverture"
\includeScore "ABouverture"
\includeScore "ACouverture"

%% scene I
\scene "Scène Première" \markup \wordwrap-center {
  \smallCaps Fatime, \smallCaps Isbe, confidente de Fatime.
}
\air "BAfatime" \markup { Fatime : \italic { Ô mort, vient terminer les douleurs de ma vie } }
\air "BBfatimeIsbe" \markup { Fatime, Isbe }

%% scene II
\scene "Scène II" \markup \wordwrap-center {
  \smallCaps Fatime, \smallCaps Isbe, Chœurs et troupes de guerriers.
}
\air "CAguerrier" \markup { Un guerrier, chœur : \italic { Jeune beauté, cessez de vous plaindre } }
\pieceNoToc "CBchoeur" "CHŒUR"
\piece "CCentree" "Entrée des guerriers"
\air "CDguerrier" \markup { Un guerrier : \italic { Lorsque Vénus vient embellir la Terre } }
\piece "CEtrio" "Air en trio"
\air "CFguerriers" \markup { Deux guerriers : \italic { Si quelque tiran vous oprime } }
\air "CGsymphonie" \markup Symphonie
\air "CHchoeur" \markup { Chœur : \italic { À votre présence tout doit s'enflammer } }
\air "CIpassepied" \markup Passepied

%% scene III
\scene "Scène III" \markup \wordwrap-center \smallCaps { Fatime, Isbe. }
\air "DAfatimeIsbe" \markup { Fatime, Isbe }

%% scene IV
\scene "Scène IV" \markup \wordwrap-center {
  \smallCaps { Fatime, Isbe, } chœur et troupe de Bohémiens, de Bohémiennes,
  de devins et de devineresses, qui entrent en dansant.
}
\piece "EAentree" "Entrée des Bohémiens"
\air "EBdevin" \markup { Un devin : \italic { Nous enchaînons le temps } }
\markup \titre \fill-line {
  \line \vcenter {
    \line { On reprend l'Entrée des Bohémiens }
    \score {
      { \key la \major \solUn dod''4. re''8 mi''4 la' | si' la' \custosNote si' }
      \layout { indent= \noindent ragged-right = ##t }
    }
    \line { page \page-ref #'EAentree "00" "?" \hspace #-1 . }
  }
}
\air "ECdevin" \markup { Le devin : \italic { L'astre éclatant et doux de la fille de l'onde } }
\piece "EDmenuet" "Premier menuet"
\piece "EEmenuet" "Deuxième menuet"
\piece "EFtambourin" "Tambourin"

%% scene V
\scene "Scène V" \markup \wordwrap-center \smallCaps { Fatime, Isbe. }
\air "FAisbeFatime" \markup { Fatime, Isbe }

%% scene VI
\scene "Scène VI" \markup \wordwrap-center \smallCaps { Ramire, Fatime, Isbe. }
\air "GAramireFatime" \markup { Ramire, Fatime }
\markup \titre \wordwrap-center {
  Une troupe paraît au fond du théâtre, sous la forme des Grâces,
  des Amours, des Plaisirs et des Jeux.
}
\air "GBramire" \markup { Ramire : \italic { Grâces, Plaisirs, Amours } }
\includeScore "GCramire"

%% scene VII
\scene "Scène Dernière" \markup \wordwrap-center {
  Chœur et troupe de la suite de Ramire,
  sous la forme des Grâces, des Amours et des Plaisirs,
  et les acteurs précédents 
}
\piece "HAsarabande" "Sarabande en rondeau"
\airTitre "HBgraces" "Trio des trois Graces" \markup {  Trio des trois Grâces : \italic { La nature en vous formant } }
\piece "HCgavotte" "Gavotte en rondeau"
\air "HDgrace" \markup { Une Grâce : \italic { Echo, voix errante } }
\markup \titre \fill-line {
  \line \vcenter {
    \line { On reprend la gavotte }
    \score {
      { \key do \minor \time 2/2 \solUn
        do''2 mib''8 ( re'' ) do'' ( si' )|
        \appoggiatura si' do''4. fa''8 \custosNote mib''4 }
      \layout { indent= \noindent ragged-right = ##t }
    }
    \line { page \page-ref #'HCgavotte "00" "?" \hspace #-1 .  }
  }
}
\air "HEariette" \markup { La même Grâce : \italic { Vents furieux, tristes tempêtes } }
\piece "HFmenuet" "Premier menuet"
\piece "HGmenuet" "Deuxième menuet"
\air "HHgrace" \markup { La même Grâce : \italic { Non, le plus grand empire ne peut remplir un cœur } }
\piece "HIgavotte" "Gavotte vive"
\air "HJgrace" \markup { Une autre Grâce, chœur : \italic { Beauté fière, objet charmant } }
\pieceNoToc "HKchoeur" "CHŒUR"
\air "HLramire" \markup { Ramire : \italic { Le pardonnerez-vous cet amour qui m'enchaîne } }
\air "HMfatime" \markup { Fatime : \italic { Ah ! n'est-ce pas assez des maux que j'ai soufferts } }
\markup \titre \wordwrap-center {
  Fatime donne la main à Ramire, une nouvelle troupe
  des suivants de Ramire se joint aux autres
}
\entree "Entrée des Français"
\piece "HNchaconne" "Chaconne"
\airTitre "HOduo" "Duo" \markup { Duo, chœur : { Amour, dieu charmant } }
\piece "HPchaconne" "Chaconne"
\air "HQramire" \markup { Ramire, chœur : \italic { Mars, Amour, sont nos dieux } }
\piece "HRchaconne" "Deuxième chaconne"
\air "HSramire" \markup { Ramire, chœur : \italic { La gloire toujours nous appelle } }
\piece "HTchaconne" "Chaconne"
\airTitre "HUramireGuerrier" "Duo" \markup { Ramire, un guerrier : \italic { À jamais sans partage unissez vos droits } }
\piece "HVsarabande" "Sarabande"
\piece "HWgavotte" "Première gavotte"
\piece "HXgavotte" "Deuxième gavotte"
\markup \titre \wordwrap-center {
  On reprend la première gavotte.
}
\air "HYramire" \markup { Ramire : \italic { Ces beaux nœuds, peuples heureux } }
\piece "HZAmusette" "Musette"
\piece "HZBtambourin" "Premier tambourin"
\piece "HZCtambourin" "Deuxième tambourin"
\markup \titre \column {
  \fill-line { 
    \line \vcenter {
      \line { Le premier tambourin se reprend }
      \score {
        { \key re \major \time 2/4 \solUn
          \partial 4  re''8 fad''16 sol'' |
          la''4 re''8 sol''16 la'' |
          \custosNote si'' }
        \layout { indent= \noindent ragged-right = ##t }
      }
    }
  }
  \vspace #2
  \fill-line { FIN }
}
