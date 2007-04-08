

\header {
  title = \markup \center-align { \null "Ballet de l'amour malade" \null}
  composer = "Jean Baptiste Lully"
  poet = "Francesco Buti"
  opus = "LWV 8"
  date = "1657"

  notes = \markup \column {
    \line { Documents originaux :}
    \hspace #1
    \wordwrap { 
      Jean-Baptiste Lully (1632-1687),
      \italic { Ballet royal de l'Amour malade } dansé par sa Maiesté le 17
      janvier 1657. [Partition musicale manuscrite] ; recueilly et
      copiée par Philidor laisnée en 1690.
      \with-url #"http://gallica.bnf.fr/Catalogue/noticesInd/FRBNF37745514.htm"
      \tiny \typewriter "http://gallica.bnf.fr/Catalogue/noticesInd/FRBNF37745514.htm"
    }
    \hspace #1
    \wordwrap { 
      \italic { Amour malade } [Texte imprimé], ballet du Roy. Dansé
      par Sa Majesté, le 17. jour de janvier 1657. Publication : A
      Paris, par Robert Ballard. M.DC.LVII.
      \with-url #"http://gallica.bnf.fr/Catalogue/noticesInd/FRBNF30085074.htm"
      \tiny \typewriter "http://gallica.bnf.fr/Catalogue/noticesInd/FRBNF30085074.htm"
    }
  }
}
\include "common/common.ily"

\currentOpus #"LWV08"

\pageBreakHack
\pageBreakHack

\markup \column {
  \null
  \vspace #10
  \fill-line { \null \fontsize #4 ARGUMENT. \null }
  \vspace #2
  \justify {
    Deux grands médecins, le Temps et le Dépit, après une petite consultation
    qu'ils font sur la maladie dont Amour est affligé, en présence de la Raison
    qui lui sert de garde, ordonnent pour remède le divertissement d'un ballet
    facécieux, divisé en dix entrées comme en autant de prises, après chacune 
    desquelles l'un de ces consultants chante quelques vers ; et le ballet
    achevé Amour confesse aussitôt le soulagement qu'il en a reçu.
  }
  \vspace #3
  \fill-line { \null \fontsize #3 \italic Acteurs. \null }
  \fill-line { \null \caps Amour. \null \caps "Le Temps." \null }
  \fill-line { \null \caps "La Raison." \null \caps "Le Dépis." \null }
  \vspace #36
}

\pageBreakNext
\includeScore #"AAouverture"
\pageBreakNextAFour
\includeScore #"ABritournelle"

\markup \column {
  \verTitre "La Raison fait le Prologue"

  \verCourt "Paix, paix, ne faites point de bruit,"
  \ver      "Amour, le coeur pressé d'une douleur extrême,"
  \ver      "Lui de qui tant de gens se plaignent jour et nuit,"
  \verCourt "Souffre et se plaint ici lui-même ;"
  \verCourt "Paix, paix, ne faites point de bruit."
  \null
}
\markup \column {
  \verCourt "Pour avoir enduré sans fruit"
  \ver      "Tantôt d'une âpre ardeur le violent martyre,"
  \ver      "Et tantôt les froideurs de l'objet qui le fuit,"
  \verCourt "Il est tombé dans le délire ;"
  \verCourt "Paix, paix, ne faites point de bruit."
  \null
}
\markup \column {
  \verCourt "Dans la fièvre qui le détruit,"
  \ver      "Moi, qui suis la Raison, je le garde sans cesse ;"
  \ver      "Mais le pauvre insensé croit que mon soin lui nuit"
  \verCourt "Et dit que j'ai trop de rudesse ;"
  \verCourt "Paix, paix, ne faites point de bruit."
  \null
}
\markup \column {
  \verCourt "Le Temps, médecin bien instruit,"
  \ver      "Et le triste Dépit veulent guérir sa peine ;"
  \ver      "Mais je crains en l'état où son mal est réduit"
  \verCourt "Que leur science ne soit vaine ;"
  \verCourt "Paix, paix, ne faites point de bruit."
  \null
}
\markup \column {
  \verCourt "Quel bonheur ici les conduit"
  \ver      "En faveur du malade ? il faut que j'y demeure,"
  \ver      "Pour faire à ces messieurs un fidèle récit"
  \verCourt "De ce qu'il a fait d'heure en heure ;"
  \verCourt "Paix, paix, ne faites point de bruit."
}

\includeScore #"ACritournelle"

\markup \column {
  \verTitre "Le Temps, le Dépit, la Raison."

  \personnage "Le Temps."
  \ver "Comment se porte-t-on ?"
}
\markup \column {
  \personnage "Le Dépit."
  \verInv "Comment se porte-t-on ?" "Que fait notre malade ?"
}
\markup \column {
  \personnage "La Raison."
  \ver "Son mal me semble grand, et je me persuade"
  \ver "Qu'il empire toujours."
}
\markup \column {
  \personnage "Le Temps."
  \verInv "Qu'il empire toujours." "A-t-il mangé ?"
}
\markup \column {
  \personnage "La Raison."
  \verInv "Qu'il empire toujours. A-t-il mangé ?" "Bien peu."
}
\markup \column {
  \personnage "Le Dépit."
  \ver "Dort-il ?"
}
\markup \column {
  \personnage "La Raison."
  \verInv "Dort-il ?" "Jamais."
}
\markup \column {
  \personnage "Le Temps."
  \verInv "Dort-il ? Jamais." "Il Brûle ?"
}
\markup \column {
  \personnage "La Raison."
  \verInv "Dort-il ? Jamais. Il Brûle ?" "Il est toujours en feu."
}
\markup \column {
  \personnage "Le Dépit."
  \ver "Se plaint-il quelque fois de l'ardeur qu'il endure ?"
}
\markup \column {
  \personnage "La Raison."
  \ver "Hélàs ! incessamment il se plaint et murmure !"
}
\markup \column {
  \personnage "Le Temps et le Dépit."
  \ver "C'est sans doute un grand mal que celui de l'Amour,"
  \ver "Mais jamais de ce mal on n'a perdu le jour."
}
\markup \column {
  \personnage "Le Temps."
  \verTexte {
    "Tant de lustres passées, et tant d'Olympiades"
    "Qui m'ont instruit en l'art de guérir les malades,"
    "M'ont fait voir de ceux-ci remplir les hôpitaux,"
    "Mais tous en sont sortis bien guéris de leurs maux ;"
    "Que si jadis Léandre, Héro, Tisbé, Pyrame,"
    "Ont par lui de leurs jours senti couper la trame,"
    "C'est qu'en ces premiers temps il fut plus furieux ;"
    "Mais les siècles derniers bien plus industrieux"
    "Contre ce mal cruel s'étant mis en défence"
    "Ont insensiblement calmé sa violence,"
    "Et ce qu'on estimait autrefois un tourment"
    "N'est que galanterie et divertissement."
  }
}

\markup \column {
  \personnage "Le Dépit."
  \verTexte {
    "Ceux que le peuple croit par une erreur grossière"
    "Souffrir des traits d'Amour l'atteinte la plus fière,"
    "Sont malades souvent d'excès de vanité,"
    "D'envie et d'intérêt, ou bien de volupté ;"
    "Et même quelques fois on a mis en pratique"
    "De colorer d'amour la fine Politique."
  }
}
\markup \column {
  \personnage "La Raison."
  \verTexte {
    "Et j'en connais encore qui tous pleins de santé"
    "Faignent adroitement d'être à l'extrémité,"
    "À dessein d'obtenir des dames pitoyables"
    "Certains médicaments qu'ils trouvent agréables."
  }
}
\markup \column {
  \personnage "Le Temps."
  \verTexte {
    "Tout ce déguisement que je ne puis souffrir"
    "Tôt ou tard par mes soins vient à se découvrir."
  }
}
\markup \column {
  \personnage "Tous ensembles."
  \verTexte {
    "Le grand mal ! qu'en Amour cousent ces impostures"
    "À ceux qui sont atteints d'effectives blessures !"
    "Et souvent, négligeant de véritables maux,"
    "On donne vainement recette sur recette"
    "À tel qui jouissait d'une santé parfaite."
  }
}

\includeScore #"ADritournelle"

\markup \column {
  \verTitre "Le Temps, le Dépit, la Raison, Amour dans le lit."

  \personnage "Le Temps."
  \ver "Il faut voir le malade."
}
\markup \column {
  \personnage "La Raison."
  \verInv "Il faut voir le malade." "Approchez le voilà ;"
  \ver "Mais ne l'éveillez pas, je crois qu'il dort, paix-là."
}
\markup \column {
  \personnage "Amour."
  \ver "Raison, que vainement tu crois que je someille !"
  \ver "Les yeux ouverts ou clos incessamment je veille."
}
\markup \column {
  \personnage "Le Dépit."
  \ver "Le beau malade ! et bien comment vous portez-vous ?"
}
\markup \column {
  \personnage "Amour."
  \ver "Sans doute beaucoup mieux."
}
\markup \column {
  \personnage "Le Temps."
  \verInv "Sans doute beaucoup mieux." "Tâtons un peu son pouls."
}
\markup \column {
  \personnage "Amour."
  \ver "Je me sens tout en feu, sans cesse je soupire."
}
\markup \column {
  \personnage "Le Temps tenant le bras d'Amour"
  \ver "Ô dieux ! qu'il est fréquent !"
}
\markup \column {
  \personnage "Amour."
  \verInv "Ô dieux ! qu'il est fréquent !" "Mais mon plus grand martyre"
  \ver "Vient de mille soupçons qui font naître dans moi"
  \ver "Le dessein de quitter qui me manque de foi."
}
\markup \column {
  \personnage "Le Temps."
  \verTexte {
    "Il est intermittent ; dieux ! comme il s'embarasse !"
    "D'un mal très dangeureux ce mouvement menace."
  }
}
\markup \column {
  \personnage "Le Dépit."
  \verTexte {
    "Quel pouls ! J'y reconnais dès le premier abord"
    "Toutes les qualités qui présagent la mort."
  }
}
\markup \column {
  \personnage "Le Temps."
  \ver "La tête vous fait mal ?"
}
\markup \column {
  \personnage "Amour."
  \verInv "La tête vous fait mal ?" "Je n'ai douleur aucune,"
  \ver "Et pour dire le vrai votre soin m'importune."
}
\markup \column {
  \personnage "Le Temps."
  \verTexte {
    "Le mal est dangeureux qui nous trouble à tel point"
    "Qu'au fort de ces accès nous ne le sentons point."
  }
}
\markup \column {
  \personnage "Le Dépit."
  \ver "Votre langue ?"
}

\markup \column {
  \personnage "Amour extravagant."
  \verCourt "L'objet qui captive mon âme"
  \verCourt "Nest qu'ardeur et que flame,"
  \verCourt "Ces yeux toujours étincelants"
  \verCourt "Paraissent des éclairs brûlants,"
  \verCourt "Tant leur lumière est surprenante ;"
  \verCourt "Et sa bouche haute en couleur"
  \verCourt "N'est pas moins qu'une braise ardente"
  \verCourt "Capable de brûler un coeur ;"
  \verCourt "L'objet qui captive mon âme"
  \verCourt "Nest qu'ardeur et que flame."
}
\markup \column {
  \personnage "Le Dépit."
  \verTexte {
    "Sur cette langue en feu nous voyons clairement"
    "Qu'il s'allume en son sein un grand embrasement."
  }
}
\markup \column {
  \personnage "Le Temps parlant à la Raison."
  \ver "Il est fort altéré ?"
}
\markup \column {
  \personnage "La Raison."
  \verInv "Il est fort altéré ?" "Vous pouvez bien croire,"
  \verTexte {
    "Mais loin du doux nectar qu'il désire de boire,"
    "Ce malheureux enfant n'a que l'eau de ces pleurs"
    "Pour modérer l'excès de ces vives chaleurs."
  }
}
\markup \column {
  \personnage "Amour à la Raison."
  \verTexte {
    "Apprenez, ô ma garde ! un peu trop vigilente,"
    "Que l'on ne connait pas l'ardeur qui me tourmente,"
    "On ne me traite en malade alors que je suis sain ;"
    "Cependant je médite un généreux dessein"
    "De ne plus retourner sous l'injuste puissance"
    "Qui du mal que j'endure a causé la naissance."
  }
}
\markup \column {
  \personnage "Le Temps, la Raison, le Dépit."
  \verTexte {
    "Ses pieds sont déjà froids et ce grand tremblement"
    "Marque de la nature un entier manquement."
  }
}
\markup \column {
  \personnage "Le Dépit."
  \verTexte {
    "Ce froid d'extrémité que ce malade endure"
    "Est tenu dans notre art pour un mauvais augure."
  }
}
\markup \column {
  \personnage "Le Temps, le Dépit, la Raison ensembles."
  \verCourt "Quand avec tant de vanité"
  \ver "Un pauvre amant nous dit qu'il reprend sa santé"
  \verCourt "Nous devons juger qu'il empire ;"
  \verCourt "Et quoi que son coeur irrité"
  \verCourt "Contre l'Amour lui fasse dire,"
  \verCourt "Il ne dit point la vérité."
  \ver "Quiconque est bien guéri veut bien moins le paraître,"
  \ver "Et vit en homme sain sans se vanter de l'être."
}
\markup \column {
  \personnage "Le Temps."
  \ver "Nous voilà bien instruits, consultons entre nous."
}
\markup \column {
  \personnage "Le Dépit."
  \verTexte {
    "De cette extravagance et de ce mauvais pouls,"
    "Joints avec cette haleine et courte et languissante,"
    "Je juge que ce mal est une fièvre ardente :"
    "À dire vrai pourtant j'en espère fort bien ;"
    "Car ce mal dont se rit le savant Galien"
    "Jusqu'à l'extrémité porte souvent les hommes,"
    "Mais n'en fait plus mourir dans le siècle où nous sommes."
    "De l'antimoine exprès de ma main préparé"
    "Y serait ce me semble un remède assuré,"
    "Et chassant de son sein l'humeur qui fait sa peine,"
    "Ce fâcheux mal d'amour se changerait en haine."
  }
}
\markup \column {
  \personnage "La Raison."
  \verTexte {
    "Ce ne sera jamais de mon consentement"
    "Que l'on lui fera prendre un tel médicament,"
    "Dont la force nuisible à tout ce qui respire"
    "N'appaise point un mal sans en causer un pire."
  }
}
\markup \column {
  \personnage "Le Temps."
  \verTexte {
    "Je trouve comme vous qu'ici l'on peut juger,"
    "Et que le mal est grand, et qu'il est sans danger ;"
    "Mais pour remède, au lieu de celui qu'on propose,"
    "Je voudrais tous les jours lui donner une dose"
    "D'un sirop composé de l'orgueil, des rigueurs,"
    "Des fourbes de l'objet qui cause ses douleurs,"
    "Et qu'on lui fit user de cet amer breuvage"
    "Quand on voit que son mal le presse davantage."
  }
}
\markup \column {
  \personnage "Tous trois ensembles"
  \verCourt "Cette recette assurément"
  \verCourt "Est fort sagement ordonnée"
  \verCourt "Pour guérir le dérèglement"
  \verCourt "D'une passion obstinée ;"
  \ver "C'est l'unique secret de ces fières beautés"
  \ver "Qui savent si longtemps conserver leur victoire,"
  \verCourt "De faire perdre la mémoire"
  \verCourt "De leurs insignes cruautés."
}
\markup \column {
  \personnage "Amour."
  \verCourt "Non, non, je ne veux point guérir,"
  \verCourt "Je chéris mon mal, quoi qu'extrême,"
  \verCourt "Et je me résouds à mourir"
  \verCourt "Plutôt qu'à quitter ce que j'aime ;"
  \ver "Quand je pense à l'objet de mes ardants désirs"
  \ver "Je préfère à tous biens le mal dont je soupire,"
  \verCourt "Et crois qu'en amour le martyre"
  \ver "Contente plus un coeur que les autres plaisirs."
}

\markup \column {
  \personnage "Le Temps."
  \verTexte {
    "Pendant que ce remède à loisir se dispose,"
    "On peut flater son mal de quelque peu de chose ;"
    "Faites donc un ballet court et facécieux,"
    "Mêlez-y quelques airs des plus mélodieux,"
    "Qu'on hâte le remède et que sans plus attendre"
    "Sitôt qu'il sera prêt on le lui fasse prendre."
  }
}
\markup \column {
  \personnage "Amour."
  \verCourt "Celui qui souffre constamment"
  \verCourt "Les doux ennuis que l'Amour cause,"
  \verCourt "Se persuade fortement"
  \verCourt "Qu'en amour plaisir et tourment"
  \verCourt "Ne font rien que la même chose,"
  \verCourt "Que l'on nomme différemment."
}
\markup \column {
  \personnage "Le Temps, la Raison, le Dépit."
  \ver "Préparons donc d'une main diligente"
  \verCourt "Les médicaments resolus ;"
  \ver "Celui qui peut guérir du mal qui le tourmente,"
  \ver "S'il en laisse passer l'occasion présente,"
  \ver "Souvent pour elle après fait des voeux superflus,"
  \ver "Et la voulant trouver ne l'a retrouve plus."
}

\includeScore #"AEritournelle"

%%\pageBreakNext
\includeScore #"AFouverture"
%%%%%%%%%%% Première entrée %%%%%%%%%%%%%
\pageBreakNext
\includeScore #"AGentree"
\pageBreakNextAFour
\pageBreakNextLetter
\includeScore #"AHair"
\includeScore #"AIritournelle"


\markup \column {
  \vspace #1
  \personnage "Le Dépit."
  \verTexte {
    "Sans beaucoup de difficulté"
    "Il avale ce doux breuvage ;"
    "Dans l'amoureuse infirmité"
    "Quand du remède on peut souffrir l'usage"
    "On commence d'être en santé."
  }
}

\includeScore #"AJair"
%%%%%%%%%%% Deuxième entrée %%%%%%%%%%%%%
\pageBreakNext
\includeScore #"AKentree" 
\includeScore #"ALair" 
\includeScore #"AMritournelle"

\markup \column {
  \vspace #1
  \personnage "Le Temps."
  \verCourt "Hélas ! ce n'est pas de ce jour"
  \verCourt "Que l'astrologie en amour"
  \verCourt "A prédit de fausses nouvelles !"
  \verCourt "Les astres y sont infidels ;"
  \verCourt "Et ce qui véritablement"
  \verCourt "Est caché dans le coeur des belles"
  \verCourt "Ne se voit jamais clairement."
}

%%%%%%%%%%% Troisième entrée %%%%%%%%%%%%%
\pageBreakNext
\includeScore #"ANentree"
\pageBreakNextAFour
\pageBreakNextLetter
\includeScore #"AOair"
\includeScore #"APair"
\pageBreakNextAFour
\pageBreakNextLetter
\includeScore #"AQritournelle"

\markup \column {
  \vspace #1
  \personnage "La Raison."
  \verCourt "Combien de malheureux amants"
  \ver "Qui cherchent des trésors d'amour et de constance,"
  \ver "Après mille travaux et mille égarements"
  \ver "Ne trouvent à la fin que peine et que souffrance !"
}

%%%%%%%%%%% Quatrième entrée %%%%%%%%%%%%%
\pageBreakNext
\includeScore #"ARentree"
%\pageBreakNextAFour
%\pageBreakNextLetter
\includeScore #"ASritournelle"
\includeScore #"ATritournelle"
%\pageBreakNextAFour
%\pageBreakNextLetter
\includeScore #"AUchanson"
%\pageBreakNextAFour
%\pageBreakNextLetter
\includeScore #"AVritournelle"
\includeScore #"AWdamigelle"
%\pageBreakNextAFour
%\pageBreakNextLetter
\includeScore #"AXair"

%%%%%%%%%%% Cinquième entrée %%%%%%%%%%%%%
\pageBreakNext
\includeScore #"AYentree" 
\pageBreakNextAFour
\pageBreakNextLetter
\includeScore #"AZritournelle"

\markup \column {
  \vspace #1
  \personnage "Les docteurs"
  \verCourt "Faisons raisonner jusqu'aux cieux"
  \verCourt "Les louanges de la sagesse,"
  \verCourt "Et qu'auraient pu dire de mieux"
  \verCourt "Tous les philosophes de Grèce ?"
  \verCourt "Faisons raisonner jusqu'aux cieux"
  \verCourt "Les louanges de la sagesse."
}

\includeScore #"BAair"
\pageBreakNextAFour
\pageBreakNextLetter
\includeScore #"BBair"

%%%%%%%%%%% Sixième entrée %%%%%%%%%%%%%
\pageBreakNext
\includeScore #"BCentree"
\pageBreakNextAFour
\pageBreakNextLetter
\includeScore #"BDritournelle"

\markup \column {
  \vspace #1
  \personnage "Le Temps"
  \verCourt "L'amour est une douce chasse"
  \verCourt "Où l'on s'exerce jour et nuit ;"
  \verCourt "Mais plusieurs y courent sans fruit ;"
  \verCourt "Et ce qui sause leur disgrace,"
  \verCourt "C'est qu'ils chassent à trop grand bruit."
}

%%%%%%%%%%% Septième entrée %%%%%%%%%%%%%
\pageBreakNext
\includeScore #"BEentree"
\includeScore #"BFritournelle"

\markup \column {
  \vspace #1
  \personnage "Le Dépit"
  \ver "Dieux ! que je plains un malheureux amant"
  \ver "Qui se prétend faire aimer constamment"
  \ver "D'une beauté légère et déloyale !"
  \verCourt "Vouloir faire ce changement,"
  \verCourt "C'est travailler bien vainement,"
  \verCourt "Et la pierre philosophale"
  \verCourt "Se trouverait plus aisément."
}

\pageBreakNextAFour
\pageBreakNextLetter
\includeScore #"BGair"
\includeScore #"BHritournelle"

%%%%%%%%%%% Huitième entrée %%%%%%%%%%%%%
\pageBreakNext
\includeScore #"BIentree"
\includeScore #"BJritournelle"

\markup \column {
  \vspace #1
  \personnage "La Raison"
  \verCourt "Ces Indiens que nous voyons"
  \ver "Après que le soleil a noirci leurs visages"
  \ver "Éviter avec soin l'ardeur de ses rayons,"
  \verCourt "Ne nous paraissent pas trop sages ;"
  \verCourt "Mais combien d'amants incendié"
  \ver "Semblent les imiter par leur tardive crainte,"
  \ver "Et qui des traits d'Amour veulent parer l'atteinte"
  \verCourt "Lors seulement qu'ils s'en trouvent blessés."
}

%%%%%%%%%%% Neuvième entrée %%%%%%%%%%%%%
\pageBreakNext
\includeScore #"BKentree"
\includeScore #"BLair"
\pageBreakNextAFour
\pageBreakNextLetter
\includeScore #"BMritournelle"

\markup \column {
  \vspace #1
  \personnage "Le Temps"
  \verCourt "Parmi ces galands d'importance"
  \verCourt "Qui sont jaloux jusqu'à l'excès,"
  \verCourt "Et qui pensent par leur prudence"
  \ver "Prévoir et prévenir les dangeureux succès,"
  \verCourt "Combien est-il de Jeans Doucets ?"
}
\pageBreakNextAFour
\pageBreakNextLetter
\includeScore #"BNair"

%%%%%%%%%%% Dernière entrée %%%%%%%%%%%%%
\pageBreakNext
\includeScore #"BOentree" 
\includeScore #"BPgavotte"
\includeScore #"BQsarabande"
\pageBreakNextAFour
\pageBreakNextLetter
\includeScore #"BRritournelle"

\markup \column {
  \vspace #1
  \personnage "Les paysans"
  \ver "Qui nous prendrait pour gens d'entendement"
  \verCourt "Se tromperait bien lourdement ;"
  \verCourt "Est-il sottise plus certaine"
  \verCourt "Que le mariage des gueux ?"
  \verCourt "Qui n'ont pour succès de leurs vœux"
  \verCourt "Que de faire des malheureux"
  \verCourt "Pour le mépris et pour la peine."
}

\includeScore #"BSgavotte"
\includeScore #"BTair"
\pageBreakNextAFour
\pageBreakNextLetter
\includeScore #"BUgaillarde"
\includeScore #"BVsarabande"
\includeScore #"BWritournelle"

\markup \column {
  \vspace #1
  \personnage "Amour"
  \verCourt "Oh ! Que ce divertissement"
  \ver "M'a donné dans mes maux une trève agréable !"
  \verCourt "Je sens bien depuis un moment"
  \verCourt "Que même n'étant point amant"
  \verCourt "On peut goûter un plaisir véritable."
}

\markup \column {
  \personnage "Tous ensembles"
  \verCourt "Qui désaccoutume son cœur"
  \verCourt "De penser au mal l'accable,"
  \verCourt "Contre l'amoureuse langueur"
  \verCourt "Trouve un remède incomparable ;"
  \verCourt "Nous reconnaissons chaque jour"
  \verCourt "Que les traits, les flammes, les chaînes,"
  \verCourt "Ne sont que des paroles vaines,"
  \ver "Et qu'on peut, quand on veut, guérir du mal d'amour."
}

\includeScore #"BXritournelle"
\includeScore #"BYritournelle"
\includeScore #"BZritournelle"
