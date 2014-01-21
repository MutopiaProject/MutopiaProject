%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Construction de la couverture à insérer en en-tête du fichier de    *
  * partition directrice - modifier les proportion si modification de   *
  * set-global-staff-size                                               *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                        %%
%%      Couverture et pages de garde      %%
%%            Merci à Cécile              %%
%%                                        %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Infos générales
% Les variables suivantes sont initialisées dans le fichier Variables.ly

Compositeur = \thisComposer
Dates = \thisDates
Titre = \thisWork
FromPublisher = \thisSource
InfoRecueil = \thisOpus
DateRecueil = \thisDateOfPublication
SousTitre = \thisOrchester
Genre = "Study Score"
catalogIdentification = \thisCatalogIdentification
DateEdition = \thisDateEdition
Tonality = \thisTonality
Duration = \thisDuration

Toc = "Table of contents"

Instrument = "Orchestra"

%%%	Commandes markup pour la page de couverture
%	Titre du recueil
#(define-markup-command (couv_recueil_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 32 #:medium name)))
%	Info supplémentaire sur le recueil (n° d'Opus)
#(define-markup-command (couv_infoRecueil_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 16 #:medium name)))
%	Tonalité
#(define-markup-command (couv_infoTonality_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 16 #:medium name)))
%	Date du recueil
#(define-markup-command (couv_dateRecueil_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 16 #:medium name)))
%	Titre du morceau
#(define-markup-command (couv_title_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 30 #:medium #:smallCaps name)))
%	Sous-titre du morceau
#(define-markup-command (couv_subtitle_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 18 #:italic #:medium name)))
%	Compositeur
#(define-markup-command (couv_compositeur_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 22 name)))
%	Dates du compositeur
#(define-markup-command (couv_datesCompositeur_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 10 name)))
%	Genre
#(define-markup-command (couv_genre_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 18 name)))
%	Durée
#(define-markup-command (couv_duration layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 10 name)))

%%%	Commande de la table des matières

%	Titre du morceau
#(define-markup-command (couv_title_settings_toc layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 17 #:medium #:smallCaps name)))

#(define-markup-command (toc-line layout props label text) (symbol? markup?)
   (interpret-markup layout props(markup #:abs-fontsize 10  #:fill-line (text #:page-ref label "8" "?"))))

#(define-markup-command (Toc-Header layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 10 name)))
%	From Publisher
#(define-markup-command (couv_fromPublisher_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 8 #:medium name)))
%	Editorial
#(define-markup-command (couv_Editorial_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 8 #:medium name)))

%	Instrumentation
#(define-markup-command (instrumentation_settings layout props name) (string?)
   (interpret-markup layout props (markup #:italic #:abs-fontsize 15 #:medium name)))

%%% Création des pages spéciales

couvfromPublisher = \markup \couv_fromPublisher_settings #FromPublisher
couvinfoRecueil = \markup \couv_infoRecueil_settings #InfoRecueil
couvTonality = \markup \couv_infoTonality_settings #Tonality
couvdateRecueil = \markup \couv_dateRecueil_settings #DateRecueil
couvTitre = \markup \couv_title_settings #Titre
couvSoustitre = \markup \couv_subtitle_settings #SousTitre
couvCompositeur = \markup \couv_compositeur_settings #Compositeur
couvDates = \markup \couv_datesCompositeur_settings #Dates
couvDuration = \markup \couv_duration #Duration
couvSigle = \markup {\epsfile #X #40 #"./Common/DigiClassic.eps"}
couvVolutesI = \markup {\epsfile #X #50 #"./Common/VolutesI.eps"}
couvVolutes = \markup {\epsfile #X #50 #"./Common/Volutes.eps"}
couvSigleMini = \markup {\epsfile #X #20 #"./Common/DigiClassic.eps"}
couvGenre = \markup \couv_genre_settings #Genre

TocTitre = \markup \couv_title_settings_toc #Titre
TocLigne = \markup \Toc-Header #Toc
Instrumentation = \markup \instrumentation_settings #Instrument

CouvertureA = \markup {
  \override #'(line-width . 195)
  \column {
    \fontsize #3 \bold \override #'(box-padding . 0.0)  \override #'(thickness . 4.0)
    \box
    \column {
      \fill-line {\lower #32 \couvCompositeur}
      \fill-line {\lower #19 \couvDates}
      \fill-line {\lower #15 \couvVolutes}
      \fill-line {\lower #16 \couvTitre}
      \fill-line {\lower #16 \couvTonality}
      \fill-line {\lower #16 \couvinfoRecueil}
      \fill-line {\lower #15 \couvSoustitre}
      \fill-line {\lower #20 \draw-line #'(50 . 0)}
      \fill-line {\lower #30 \couvdateRecueil}
      \fill-line {\lower #15 \couvVolutesI}
      \fill-line {\lower #24 \couvGenre}
      \fill-line {\lower #34 \couvSigle}
      \vspace #6
   }
 }
}

%%% Table des matières

PageToc = \markup {
  \override #'(line-width . 195)
  \column {
    \fontsize #3 \override #'(box-padding . 1.0) \override #'(thickness . 4.0)
    \box
    \column {
      \fill-line {\lower #21 \couvCompositeur}
      \fill-line {\lower #20 \couvDates}
      \fill-line {\lower #22 \TocTitre}
      \fill-line {\lower #16 \couvTonality}
      \fill-line {\lower #16 \couvinfoRecueil}
      \fill-line {\lower #20 \TocLigne}
      \fill-line {\lower #8 \draw-line #'(40 . 0)}
      \fill-line {\override #'(line-width . 90) \lower #12 \toc-line #'MvmtI "I - Allergo maestoso"}
      \fill-line {\override #'(line-width . 90) \lower #10 \toc-line #'MvmtII "II - Poco adagio"}
      \fill-line {\override #'(line-width . 90) \lower #10 \toc-line #'MvmtIII "III - Scherzo - Vivace"}
      \fill-line {\override #'(line-width . 90) \lower #10 \toc-line #'MvmtIV "IV - Finale - Allegro"}
      \fill-line {\lower #12 \draw-line #'(90 . 0)}
      \fill-line {\lower #17 \couvfromPublisher}
      \fill-line {\lower #18 \couvGenre}
      \vspace #10
      \fill-line {
        " "
        \override #'(thickness . 3.0)
        \box {
          \column {
            \italic \medium \abs-fontsize #8 \thisTypesetting
            \italic \medium \abs-fontsize #8 \thisLocation
         }
       }
     }
      \vspace #3.7
   }
 }
}

%%% Page d'orchestration

PageOrch = \markup {
  \override #'(line-width . 195)
  \column {
    \fontsize #3 \override #'(box-padding . 0.0) \override #'(thickness . 4.0)
    \box
    \column {
      \fill-line {\lower #27 \TocTitre}
      \fill-line {\lower #20 \couvTonality}
      \fill-line {\lower #18 \couvinfoRecueil}
      \fill-line {\lower #12 \Instrumentation}
      \fill-line {\lower #15 \draw-line #'(45 . 0)}
      \vspace #1.5
      \fill-line {\lower #10 \abs-fontsize #12 "2 Flauti + piccolo"}
      \fill-line {\lower #10 \abs-fontsize #12 "2 Oboi"}
      \fill-line {\lower #10 \abs-fontsize #12 "2 Clarinetti"}
      \fill-line {\lower #10 \abs-fontsize #12 "2 Fagotti"}
      \fill-line {\lower #10 \abs-fontsize #12 "4 Corni"}
      \fill-line {\lower #10 \abs-fontsize #12 "2 Trombe"}
      \fill-line {\lower #10 \abs-fontsize #12 "3 Tromboni"}
      \fill-line {\lower #10 \abs-fontsize #12 "Timpani"}
      \fill-line {\lower #15 \draw-line #'(45 . 0)}
      \fill-line {\lower #12 \abs-fontsize #12 "String ensemble"}
      \fill-line {\lower #12 \couvDuration}
      \fill-line {\lower #19 \couvVolutes}
      \vspace #10
   }
 }
}

%%% Remarques éditoriales

EditorialRemark =
\markup\fill-line {
  \abs-fontsize #6.4
  % First column:
  \override #'(line-width . 95) \column {
    \vspace #3
    \line \bold \smallCaps {Editorial remarks}
    \vspace #0.4
    \justify \italic {
      This transcription is engraved from the complete edition of Dvořák's works, Series 3, Vol. 7, edited by O. Šourek
      Plate H 1535. It is also intended to be as faithful to the original as possible, including the exact position of
      dynamics, hairpins, articulations, tremolos, beams, acchordic or polyphonic notation, etc..
    }
    \vspace #0.4
    \justify \italic {
      Parenthesized or bracketed items also come from this edition, with the exception of a few cautionary accidentals,
      added to improve the readability of the parts.
    }
    \vspace #0.4
    \justify \italic {
      Some important details (missing slurs, articulations) found in the original edition (N. Simrock, 1885),
      were included, and are specified in footnotes.
    }
    \vspace #0.4
    \justify \italic {
      Trills of which the second note is altered have this alteration placed UNDER the sign of the trill according
      to the treaty of «Music Theory» by A. Danhauser (1996)
    }
    \vspace #0.4
    \justify \italic {
      Other minor changes are described below:
    }
    \vspace #0.4
    \justify \italic {
      Timpani: trillspanners have been extended on several bars in place of interruptions on each bar in the
      reference edition, and this apart from a change of note or variation in dynamics (sFz ...)

    }
    \vspace #0.4
    \justify \italic {
      Violins: some octaviation symbols have been added for better readability.
    }
    \vspace #0.4
    \justify \italic {
      Cello: in the reference score, music with treble clef are transposed up for an octave. In this
      embodiment, these excerpts are written in the C key without transposing, according to modern usage.
    }
    \vspace #0.4
    \justify \italic {
      The first movement has the rehearsal mark «I», usually omitted in other scores, but present in the score
      of 1885. This marker was placed here for a better match between different versions (parts and conductor score).

    }
    \vspace #0.4
    \justify \italic {
      The second movement includes only A, B and C markers. The item D is found in some editions. It has been
      included in this version.
    }
    \vspace #0.4
    \justify \italic {
      In the third movement, the pick-up first bar is fully counted, contrary to usage. We have taken this feature
      to better match existing scores.
    }
    \vspace #0.4
    \justify \italic {
      Movement 4 last bars : several editions among which the 1885 edition indicate a FF. We have chosen the FFz from
      our reference edition.
    }
    \vspace #0.4
    \justify \italic {
      Movement 4 last bars : several editions whose 1885 edition indicate a FF. We have chosen the FFZ
      from our reference edition.
    }
    \vspace #0.4
    \justify \italic {
      Movement 4 strings, 178-180 bars : all editions show an 'Arco' playing. However, the pizzicato appears to
      be more logical, as confirmed by many interpretations. The information corresponding to this second version
      is bracketed.
    }
    \vspace #1
  }

  % Second column
  \abs-fontsize #6.4
  \override #'(line-width . 95) 
  \column {
    \vspace #2.2
    \line \bold \smallCaps {Notes éditoriales}
    \vspace #0.4
    \justify \italic {
      Cette transcription est réalisée à partir de l'édition complète de l'œuvre de Dvořák, série 3, vol. 7,
      éditée par O. Šourek, Plate H 1535.
      Elle se veut aussi fidèle que possible à l'originale, et ce y compris la position exacte des nuances,
      des soufflets, des articulations, des trémolos, des ligatures, la notation polyphonique ou accordique, etc.
    }
    \vspace #0.4
    \justify \italic {
      Les items placés entre parenthèses ou entre crochets proviennent également de l'édition originale,
      à l'exception de quelques altérations de précaution, ajoutées pour améliorer la lisibilité des parties.
    }
    \vspace #0.4
    \justify \italic {
      Quelques détails importants, trouvés dans l'édition originale (N. Simrock, 1885), ont été repris
      (liaisons ou articulations manquantes,...) et sont spécifiées dans les notes de bas de page
    }
    \vspace #0.4
    \justify \italic {
      Les trilles dont la seconde note est altérée voient cette altération placée SOUS le signe du trille,
      conformément au traité de la «Théorie de la musique» de A. Danhauser (1996)
    }
    \vspace #0.4
    \justify \italic {
      D'autres modifications mineures sont décrites ci-après :
    }
    \vspace #0.4
    \justify \italic {
      Timbales : les extenseurs de trilles ont été étendus sur plusieurs mesures là où ils étaient interrompus
      sur chaque barre dans l'édition de référence, et ceci en dehors des cas de changement de note ou
      de variation de nuance (sFz, ... )
    }
    \vspace #0.4
    \justify \italic {
      Violons : des symboles d'octaviation ont été ajouté pour assurer une meilleure lisibilité.
    }
    \vspace #0.4
    \justify \italic {
      Violoncelle : dans la partition de référence, les passages en clef de sol sont transposés à l'octave supérieure.
      Dans cette réalisation, ces passages sont repris en clef d'ut sans transposition, selon l'usage moderne.
    }
    \vspace #0.4
    \justify \italic {
      Le premier mouvement comporte le repère «I», habituellement omis dans d'autres partitions - mais présent
      dans la partition de 1885.
      Ce repère a été repris ici, pour une meilleure correspondance entre différentes versions.
    }
    \vspace #0.4
    \justify \italic {
      Le second mouvement ne comprend que les repères A, B et C. Le repère D se retrouve dans certaines éditions.
      Il a été repris dans cette version.
    }
    \vspace #0.4
    \justify \italic {
      Dans le troisième mouvement, la mesure de la levée initiale est comptée intégralement, contrairement à l'usage.
      Nous avons repris cette particularité pour une meilleure correspondance avec les partitions existantes.
    }
    \vspace #0.4
    \justify \italic {
      Mouvement 3, mesure 163-164, cors I à IV : les indications de sextolet sont supprimées car incorrectes
    }
    \vspace #0.4
    \justify \italic {
      Mouvement 4, dernière mesures : plusieurs éditions dont l'édition de 1885 indiquent un FF. Nous
      avons retenu le FFz de notre édition de référence.

    }
    \vspace #0.4
    \justify \italic {
      Mouvement 4, cordes, mesures 178-180 : toutes les éditions indiquent un jeu avec l'archet. Toutefois le
      pizzicato apparait comme plus logique, ainsi que le confirment de nombreuses interprétations.
      Les indications correspondant à cette seconde version sont indiquées entre parenthèse.
    }
    \vspace #1
  }
}

%%% Couverture 3

CouvertureC =
\markup\fill-line {
  \abs-fontsize #8
  % First column:
  \override #'(line-width . 95) \column {

    \line \bold \caps {The Mutopia project}
    \vspace #1.5
    \justify {\bold
      http://www.mutopiaproject.org/
    }
    \justify \italic {
      DigiClassic scores (Conductor, parts and study format)
      participate in the Mutopia project which aiming
      at online Internet old scores fallen into the public domain,
      with a print quality problems rarely achieved so far.
    }
    \vspace #1.5
    \justify \italic {
      The scores are taken from the original website
      http://imslp.org/, wich includes nearly 60,000 works
      and more than 220,000 free scores (dec. 2012).
    }
    \vspace #1.5
    \justify \italic {
      DigiClassic uses free software LilyPond for a print quality
      worthy of the engraving masters of the nineteenth century.
    }
    \vspace #1.5
    \justify \italic {
      The scores are as faithful as possible to the originals.
      However, these old scores often show slight differences or
      inconsistencies, which are corrected as logically as possible
      (phrasing, dynamics, sometimes mistakes on notes or durations,
      indication or not of tuplet numbers).
    }
    \vspace #1.5
    \justify \italic {
      The quotations in parts also come (if available) from original scores,
      which entrusts the book an excellent read.
    }
    \vspace #1.5
    \justify \italic {
      The differences between the parts and the conducting score
      are kept, optimized, either for the player, or for the conductor.
    }
    \vspace #1.5
    \justify \italic {
      Despite numerous re-readings, errors may exist in copies.
      If in doubt, check the scores on the IMSLP website,
      references to the publisher and number plate being provided with each score.
    }
    \vspace #1.5
    \justify \italic {
      If you find any improvements, please mail
      j-f.lucarelli@espace-midi.com for your comments and advice
    }
    \vspace #1
  }

  % Second column
  \abs-fontsize #8
  \override #'(line-width . 95)
  \column {
    \line \bold \caps {Le projet Mutopia}
    \vspace #1.5
   \justify {\bold
      http://www.mutopiaproject.org/
    }
    \justify \italic {
      Les partitions DigiClassic (Conductrices, parties et format d'étude) participent
      au projet Mutopia qui a pour but la publication sur Internet de partitions du domaine public
      avec une qualité rarement atteinte à ce jour.
    }
    \vspace #1.5
    \justify \italic {
      Les partitions de départ sont puisées sur le site http://imslp.org/, qui inclut environ 60.000 œuvres
      et plus de 220.000 paritions libres de droit (décembre 2012).
    }
    \vspace #1.5
    \justify \italic {
      Les partitions DigiClassic sont gravées à l'aide du logiciel libre LilyPond pour une qualité d'impression
      digne des maîtres de la gravure du XIXe siècle.
    }
    \vspace #1.5
    \justify \italic {
      Les partitions sont correspondent les plus fidèlement possible aux travaux originaux.
      Cependant, ces anciennes réalisations montrent souvent de légères différences ou
      incohérences, qui sont corrigées aussi logiquement que possible
      (phrasé, la dynamique, parfois des erreurs sur les notes ou les durées,
      spécification ou non des chiffres relatifs aux triolets, ...).
    }
    \vspace #1.5
    \justify \italic {
      Dans les parties séparées, les citations d'autres instruments, qui assurent
      une lecture confortable à l'exécutant, proviennent également(si disponible) des partitions originales.
    }
    \vspace #1.5
    \justify \italic {
      Les différences entre les parties et la conductrice
       sont maintenues autant que possible, optimisées, soit pour l'exécutant ou pour le dirigeant.
    }
    \vspace #1.5
    \justify \italic {
       Malgré de nombreuses relectures, des erreurs peuvent exister dans les copies.
       En cas de doute, vérifiez les partitions sur le site IMSLP, la références de l'éditeur et du numéro
       de plaque étant fournie avec chaque partition.
    }
    \vspace #1.5
    \justify \italic {
      Si vous trouvez des inexactitudes, corrections ou améliorations à apporter à ces partitions,
      envoyez-moi vos commentaires et conseils à l'adresse j-f.lucarelli @ espace-midi.com
    }
    \vspace #1
  }
}


% Couverture 4

\include "Common/Catalog.ly"

blocTitre = \markup {
  \column {
    \abs-fontsize #10 \bold {
      \fill-line {\lower #6 \line {\thisComposer "  (" \thisDates ")"}}
      \fill-line {\lower #6 \line {\thisWork "  -  " \thisTonality "  -  " \InfoRecueil}}
      \fill-line {\lower #6 \SousTitre}
      \fill-line {\lower #14 \couvSigleMini}
   }
 }
}

blocAvailable = \markup {
  \hspace #15
  \abs-fontsize #8
  \column {
    \bold "Also available on http://www.espace-midi.com/lilypond/en :"
    "-   Source Code (for LilyPond Software)"
    "-   Conductor score"
    "-   Parts scores : "
    \italic "Flauti I, II, Oboi I, II, Clarinette I, II, Fagotti I, II, Corni I, II, III, IV"
    \italic "Trombe I, II, Tromboni I, II, III, Timpani, Violino I, II, Viola, Violoncello, Contrabasso"
 }
}

blocLilypond = \markup {
  \abs-fontsize #9 \italic
  \column {
    \fill-line {"LilyPond is a free Software available"}
    \fill-line {"under GNU License"}
 }
}

blocPermission = \markup {
  \bold \override #'(box-padding . 3.0)
  \override #'(thickness . 4.0)
  \box \column {
    \center-align {
      \line {
        "This music has been typeset and placed in the public domain"
     }
      \line {
        "(under GNU license) by J.F. Lucarelli"
     }
      \line {
        \with-url #"http://www.espace-midi.com/lilypond/en" \thisWebSite
     }
      \line {
        "Unrestricted modification and redistribution is permitted and encouraged."
     }
      \line {
        "Copy this music and share it!"
     }
      \line {
        "Send comments or remarks to " \thisAddress
     }
      \line {\italic
        #(string-append "Engraved with LilyPond " (lilypond-version))
     }
      \line {\italic
        "http://www.LilyPond.org"
     }
   }
 }
}

blocIdentification = \markup {
  \abs-fontsize #7
  \column {
    \hspace #6
    \concat {
      "    "
      \catalogIdentification
      "    "
      \DateEdition
   }
    \vspace #1
 }
}

%%% Page 4

Pocket_Catalog = \markup {
    \override #'(line-width . 180 )
    \Catalog
}

CouvertureD = \markup {
  \column {
    \override #'(box-padding . 0.0)
    \override #'(thickness . 4.0)
    \box \override #'(box-padding . 3.0) {
      \column {
        \fontsize #3 \bold
        \fill-line {
          \lower #4
          \blocTitre
       }
        \fill-line {
          \lower #7
          \blocAvailable
       }
        \fill-line {
          \lower #7
          \blocLilypond
       }
        \lower #20
        \fill-line {\Pocket_Catalog}
        \fill-line {
          \lower #5
          \blocPermission
       }
%        \lower #1
        \blocIdentification
        \null
     }
   }
 }
}

