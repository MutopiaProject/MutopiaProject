\version "2.10.0"
#(ly:set-option 'point-and-click #f)
\include "catalan.ly"

\include "1.ly"
\include "2.ly"
\include "3.ly"
\include "4.ly"
\include "5.ly"
\include "6.ly"
\include "7.ly"
\include "8.ly"
\include "9.ly"

#(set-global-staff-size 16)

\header{
  mutopiatitle = "La petite fille aux allumettes"
  mutopiacomposer = "SardainL"
  mutopiapoet = "Hans Christian Andersen"
  mutopiainstrument = "Voice (SATB)"
  date = "2007"
  source = "manuscript"
  style = "Classical"
  copyright = "Creative Commons Attribution 3.0"
  maintainer = "Ludovic Sardain"
  maintainerEmail = "ludovicsardain@hotmail.com"

  title = \markup{\override #'(font-name . "URW Chancery L"){\bigger\bigger\bigger\bigger\bigger{La petite fille aux allumettes}}}
  subtitle = \markup{\override #'(font-name . "URW Chancery L"){\bigger\bigger{conte musical pour chœur mixte, récitant, et petite fille}}}
  dedication = \markup{\raise #2.0 \override #'(font-name . "URW Chancery L"){\bigger\bigger{à Romain Mastier}}}
  composer = \markup{\raise #-2.0 \override #'(font-name . "URW Chancery L"){\bigger\bigger{paroles et musique de Ludovic Sardain}}}
  poet = \markup{\raise #-2.0 \override #'(font-name . "URW Chancery L"){\bigger\bigger{texte de Hans Christian Andersen}}}
 footer = "Mutopia-2007/12/29-1199"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

\markup{\column {" " " " " "{ \override #'(font-name . "URW Chancery L"){\bigger\justify{\bold Récitant: Il faisait effroyablement froid; il neigeait depuis le matin; il faisait déjà sombre; le soir approchait, le soir du dernier jour de l'année. Au milieu des rafales, par ce froid glacial, une pauvre petite fille marchait dans la rue: elle n'avait rien sur la tête, elle était pieds nus.}}}}}

\score {<<
	\context ChoirStaff <<
		\override Score.BarNumber   #'padding = #2
		\context Staff = "soprano" \sopranoA
				
		\context Staff = "alto" \altoA
		
		\context Staff = "tenor" \tenorA
		
		\context Staff = "basse" \basseA
		
	>>
	>>
	\midi{
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 72 4)
		}
		\context {
			\Voice
			\remove "Dynamic_performer"
		}
	}
	\layout{}
	\header{piece=\markup{\raise #-4.0 \override #'(font-name . "URW Chancery L"){\bigger\bigger\bigger\bigger{1 - Ouverture}}}}
}

\markup{\column {{ \override #'(font-name . "URW Chancery L"){\bigger\justify{\bold Récitant: Lorsqu'elle était sortie de chez elle le matin, elle portait de vieilles pantoufles beaucoup trop grandes pour elle. Aussi les perdit-elle lorsqu'elle eut à se sauver devant une file de voitures; les voitures passées, elle chercha ses chaussures; un méchant gamin s'enfuyait emportant en riant l'une des pantoufles; l'autre avait été entièrement écrasée.}}} " " " "{\override #'(font-name . "URW Chancery L"){\bigger\justify{
Voilà la malheureuse enfant n'ayant plus rien pour abriter ses pauvres petits petons. Dans son vieux tablier, elle portait des allumettes: elle en tenait à la main un paquet. Mais, ce jour, la veille du nouvel an, tout le monde était affairé; par cet affreux temps, personne ne s'arrêtait pour considérer l'air suppliant de la petite qui faisait pitié.}}} " "}}

\score {<<
	\context ChoirStaff <<
		\override Score.BarNumber   #'padding = #2
		\context Staff = "soprano" << \transpose mi fa \sopranoB>>
		\addlyrics {\parolesB }
				
		\context Staff = "alto" << \transpose mi fa \altoB >>
		\addlyrics {\paroleaB }
		
		\context Staff = "tenor" << \transpose mi fa \tenorB >>
		\addlyrics {\paroletB }
		
		\context Staff = "basse" << \transpose mi fa \basseB >>
		\addlyrics {\parolebB }
		
	>>
	>>
	\midi{
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 150 4)
		}
		\context {
			\Voice
			\remove "Dynamic_performer"
		}
	}
	\layout{}
	\header{piece=\markup{\raise #-4.0 \override #'(font-name . "URW Chancery L"){\bigger\bigger\bigger\bigger{2 - Dégage}}}}
}

\markup{\column {" "{ \override #'(font-name . "URW Chancery L"){\bigger\justify{\bold Récitant: La journée finissait, et elle n'avait pas encore vendu un seul paquet d'allumettes. Tremblant de froid et de faim, elle se traînait de rue en rue.}}} " " " "{\override #'(font-name . "URW Chancery L"){\bigger\justify{
Des flocons de neige couvraient sa longue chevelure blonde. De toutes les fenêtres brillaient des lumières: de presque toutes les maisons sortait une délicieuse odeur, celle de l'oie, qu'on rôtissait pour le festin du soir: c'était la Saint-Sylvestre. Devant cela, l’enfant suspendait ses pas.}}} " "}}

\score {<<
	\context ChoirStaff <<
		\override Score.BarNumber   #'padding = #2
		\context Staff = "soprano" << \sopranoC>>
		\addlyrics {\parolesC }
				
		\context Staff = "alto" << \altoC >>
		\addlyrics {\parolesC }
		
		\context Staff = "tenor" << \tenorC >>
		\addlyrics {\parolesC }
		
		\context Staff = "basse" << \basseC >>
		\addlyrics {\parolesC }
		
	>>
	>>
	\midi{
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 70 4)
		}
		\context {
			\Voice
			\remove "Dynamic_performer"
		}
	}
	\layout{}
	\header{piece=\markup{\raise #-4.0 \override #'(font-name . "URW Chancery L"){\bigger\bigger\bigger\bigger{3 - Seule}}}}
}

\markup{\column {{ \override #'(font-name . "URW Chancery L"){\bigger\justify{\bold Récitant: Enfin, après avoir une dernière fois offert en vain son paquet d'allumettes, l'enfant aperçoit un coin entre deux maisons, dont l'une dépasse un peu l'autre. Harassée, elle s'y assied et s'y blottit, tirant à elle ses petits pieds: mais elle grelotte et frissonne encore plus qu'avant et cependant elle n'ose rentrer chez elle. Elle n'y rapporterait pas la plus petite monnaie, et son père la battrait.}}} " " " "{\override #'(font-name . "URW Chancery L"){\bigger\justify{
L'enfant avait ses petites menottes toutes transies. «Si je prenais une allumette, se dit-elle, une seule pour réchauffer mes doigts?» C'est ce qu'elle fit. Quelle flamme merveilleuse c'était! Il sembla tout à coup à la petite fille qu'elle se trouvait devant un grand poêle en fonte, décoré d'ornements en cuivre.}}} " "}}

\score {<<
	\context ChoirStaff <<
		\override Score.BarNumber   #'padding = #2
		\context Staff = "soprano" << \sopranoD>>
		\addlyrics {\parolesD }
				
		\context Staff = "alto" << \altoD >>
		\addlyrics {\paroleaD }
		
		\context Staff = "tenor" << \tenorD >>
		\addlyrics {\paroletD }
		
		\context Staff = "basse" << \basseD >>
		\addlyrics {\parolebD }
		
	>>
	>>
	\midi{
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 180 8)
		}
		\context {
			\Voice
			\remove "Dynamic_performer"
		}
	}
	\layout{}
	\header{piece=\markup{\raise #-4.0 \override #'(font-name . "URW Chancery L"){\bigger\bigger\bigger\bigger{4 - Dansent les flammes}}}}
}

\markup{\column {{ \override #'(font-name . "URW Chancery L"){\bigger\justify{\bold Récitant: La petite allait étendre ses pieds pour les réchauffer, lorsque la petite flamme s'éteignit brusquement: le poêle disparut, et l'enfant restait là, tenant en main un petit morceau de bois à moitié brûlé.}}} " " " "{\override #'(font-name . "URW Chancery L"){\bigger\justify{
Elle frotta une seconde allumette: la lueur se projetait sur la muraille qui devint transparente. Derrière, la table était mise: elle était couverte d'une belle nappe blanche, sur laquelle brillait une superbe vaisselle de porcelaine. Au milieu, s'étalait une magnifique oie rôtie, entourée de compote de pommes: et voilà que la bête se met en mouvement et, avec un couteau et une fourchette fixés dans sa poitrine, vient se présenter devant la pauvre petite.}}} " "}}

\score {<<
	\context ChoirStaff <<
		\override Score.BarNumber   #'padding = #2
		\context Staff = "soprano" << \sopranoE >>
		\addlyrics {\parolesE }
				
		\context Staff = "alto" << \altoE >>
		\addlyrics {\paroleaE }
		
		\context Staff = "tenor" << \tenorE >>
		\addlyrics {\paroletE }
		
		\context Staff = "basse" << \basseE >>
		\addlyrics {\parolebE }
		
	>>
	>>
	\layout{}
	\midi{
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 160 8)
		}
		\context {
			\Voice
			\remove "Dynamic_performer"
		}
	}
	\header{piece=\markup{\raise #-4.0 \override #'(font-name . "URW Chancery L"){\bigger\bigger\bigger\bigger{5 - Mange-moi}}}}
}

\markup{\column {" "{ \override #'(font-name . "URW Chancery L"){\bigger\justify{\bold Récitant: Et puis plus rien: la flamme s'éteint.}}} " " " "{\override #'(font-name . "URW Chancery L"){\bigger\justify{
L'enfant prend une troisième allumette, et elle se voit transportée près d'un arbre de Noël, splendide. Sur ses branches vertes, brillaient mille bougies de couleurs: de tous côtés, pendait une foule de merveilles. }}} " "}}

\score {<<
	\context ChoirStaff <<
		\override Score.BarNumber   #'padding = #2
		\context Staff = "soprano" << \sopranoF>>
		\addlyrics {\parolesF }
				
		\context Staff = "alto" << \altoF >>
		\addlyrics {\paroleaF }
		
		\context Staff = "tenor" << \tenorF >>
		\addlyrics {\paroletF }
		
		\context Staff = "basse" << \basseF >>
		\addlyrics {\parolebF }
		
	>>
	>>
	\midi{
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 72 4)
		}
		\context {
			\Voice
			\remove "Dynamic_performer"
		}
	}
	\layout{}
	\header{piece=\markup{\raise #-4.0 \override #'(font-name . "URW Chancery L"){\bigger\bigger\bigger\bigger{6 - L'arbre}}}}
}

\markup{\column {" "{ \override #'(font-name . "URW Chancery L"){\bigger\justify{\bold Récitant: L'allumette s'éteint. L'arbre semble monter vers le ciel et ses bougies deviennent des étoiles: il y en a une qui se détache et qui redescend vers la terre, laissant une traînée de feu.}}} " " " "{\override #'(font-name . "URW Chancery L"){\bigger\justify{
«Voilà quelqu'un qui va mourir» se dit la petite. Sa vieille grand-mère, le seul être qui l'avait aimée et chérie, et qui était morte il n'y avait pas longtemps, lui avait dit que lorsqu'on voit une étoile filante, une âme monte vers le paradis. Elle frotta encore une allumette: une grande clarté se répandit et, devant l'enfant, se tenait la vieille grand-mère. }}} " "}}

\score {<<
	\context Staff = "fille" << \filleG>>
		\addlyrics {\parolefG }
	\context ChoirStaff <<
		\context Staff = "soprano" << \sopranoG>>
				
		\context Staff = "alto" << \altoG >>
		
		\context Staff = "tenor" << \tenorG >>
		
		\context Staff = "basse" << \basseG >>
		
	>>
	>>
	\midi{
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 90 4)
		}
		\context {
			\Voice
			\remove "Dynamic_performer"
		}
	}
	\layout{}
	\header{piece=\markup{\raise #-4.0 \override #'(font-name . "URW Chancery L"){\bigger\bigger\bigger\bigger{7 - Grand-mère}}}}
}

\score {<<
	\context Staff = "fille" << \filleH>>
		\addlyrics {\parolefH }
	\context ChoirStaff <<
		\override Score.BarNumber   #'padding = #2
		\context Staff = "soprano" << \sopranoH>>
		\addlyrics {\parolesH }
				
		\context Staff = "alto" << \altoH >>
		\addlyrics {\paroleaH }
		
		\context Staff = "tenor" << \tenorH >>
		\addlyrics {\paroletH }
		
		\context Staff = "basse" << \basseH >>
		\addlyrics {\parolebH }
		
	>>
	>>
	\midi{
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 60 4)
		}
		\context {
			\Voice
			\remove "Dynamic_performer"
		}
	}
	\layout{\context { \RemoveEmptyStaffContext }}
	\header{piece=\markup{\raise #-4.0 \override #'(font-name . "URW Chancery L"){\bigger\bigger\bigger\bigger{8 - Alleluia}}}}
}

\markup{\column {" "{ \override #'(font-name . "URW Chancery L"){\bigger\justify{\bold Récitant: La grand-mère prit la petite dans ses bras et elle la porta bien haut, en un lieu où il n'y avait plus ni de froid, ni de faim, ni de chagrin: c'était devant le trône de Dieu.}}} " "}}

\score {<<
	\context ChoirStaff <<
		\override Score.BarNumber   #'padding = #2
		\context Staff = "soprano" << \sopranoI>>
		\addlyrics {\parolesI }
				
		\context Staff = "alto" << \altoI >>
		\addlyrics {\parolesI }
		
		\context Staff = "tenor" << \tenorI >>
		\addlyrics {\parolesI }
		
		\context Staff = "basse" << \basseI >>
		\addlyrics {\parolesI }
		
	>>
	>>
	\layout{}
	\midi{
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 72 4)
		}
		\context {
			\Voice
			\remove "Dynamic_performer"
		}
	}
	\header{piece=\markup{\raise #-4.0 \override #'(font-name . "URW Chancery L"){\bigger\bigger\bigger\bigger{9 - Fin}}}}
}

\markup{\column {" "{ \override #'(font-name . "URW Chancery L"){\bigger\justify{\bold Récitant (pendant le silence): Le lendemain matin, cependant, les passants trouvèrent le corps de la petite; ses joues étaient rouges, elle semblait sourire; elle était morte de froid, pendant la nuit qui avait apporté à tant d'autres des joies et des plaisirs. Elle tenait dans sa petite main, toute raidie, les restes brûlés d'un paquet d'allumettes.}}} " " " "{\override #'(font-name . "URW Chancery L"){\bigger\justify{
- Quelle sottise! dit un sans-cœur. Comment a-t-elle pu croire que cela la réchaufferait? D'autres versèrent des larmes sur l'enfant; c'est qu'ils ne savaient pas toutes les belles choses qu'elle avait vues pendant la nuit du nouvel an, c'est qu'ils ignoraient que, si elle avait bien souffert, elle goûtait maintenant dans les bras de sa grand-mère la plus douce félicité.}}} " "}}

\paper {
	first-page-number = 1
	
	print-first-page-number = ##f

	top-margin = 1.5\cm
	
	bottom-margin = 1.5\cm
	
	left-margin = 2.0\cm
	
	line-width = 17.2\cm
	
	ragged-bottom = ##t
}
	
