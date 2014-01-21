%{
  *************************************************************************
  * Dvořák - Symphony nr 7                                                *
  *                                                                       *
  * encodage par J.F. Lucarelli                                           *
  * 18/11/12 - 23/04/2013                                                 *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                       *
  * Fichier commun de déclarations, à insérer en tête des autres fichiers *
  *                                                                       *
  *************************************************************************
%}

\include "Common/Version.ly"

%{
  ***********************************************************************************
  *                                                                                 *
  * Marques d'expression courantes                                                  *
  *                                                                                 *
  * Ces expressions sont centrées sur le point d'attache                            *
  * Pour les justifier à gauche, utiliser "\leftDynamic" DEVANT le point d'attache  *
  * leftDynamic = \once \override DynamicText #'self-alignment-X = #-0.9            *
  *                                                                                 *
  ***********************************************************************************
%}

% I : Contenant une lettre dynamique (p, f, r, z)

% Contenant F, FF

DMFespr = \markup {\dynamic f \normal-text \italic " espr."}
Fespr = #(make-dynamic-script DMFespr)

DMFespress = \markup {\dynamic f \normal-text \italic " espress."}
Fespress = #(make-dynamic-script DMFespress)

DMFespressivo = \markup {\dynamic f \normal-text \italic " espressivo"}
Fespressivo = #(make-dynamic-script DMFespressivo)

DMFmarc = \markup {\dynamic f \normal-text \italic " marc."}
Fmarc = #(make-dynamic-script DMFmarc)

DMFsempre = \markup {\dynamic f \normal-text \italic " sempre"}
Fsempre = #(make-dynamic-script DMFsempre)

DMfpp = \markup {\dynamic fpp}
fpp = #(make-dynamic-script DMfpp)

DMPiuF = \markup {\normal-text \italic "più " \dynamic f}
PiuF = #(make-dynamic-script DMPiuF)

DMPocoF = \markup {\normal-text \italic "poco " \dynamic f}
PocoF = #(make-dynamic-script DMPocoF)

DMSempreff = \markup {\normal-text \italic "sempre " \dynamic ff}
Sempreff = #(make-dynamic-script DMSempreff)

DMSemprePiuF = \markup {\normal-text \italic "sempre più " \dynamic f}
SemprePiuF = #(make-dynamic-script DMSemprePiuF)

DMFFconForza = \markup {\dynamic ff \normal-text \italic "con forza"}
FFconForza = #(make-dynamic-script DMFFconForza)

DMFFMarcato = \markup {\dynamic ff \normal-text \italic "marcato"}
FFMarcato = #(make-dynamic-script DMFFMarcato)

DMFFRinfor = \markup {\dynamic ff \normal-text \italic "rinforzando"}
FFRinfor = #(make-dynamic-script DMFFRinfor)

DMffz = \markup {\dynamic ffz}
ffz = # (make-dynamic-script DMffz)

% Contenant MF, MP

DMMFespr = \markup {\dynamic mf \normal-text \italic " espr."}
MFespr = #(make-dynamic-script DMMFespr)

DMMFespress = \markup {\dynamic mf \normal-text \italic " espress."}
MFespress = #(make-dynamic-script DMMFespress)

DMMFespressivo = \markup {\dynamic mf \normal-text \italic " espressivo"}
MFespressivo = #(make-dynamic-script DMMFespressivo)

DMMFp = \markup {\dynamic mfp}
MFp = #(make-dynamic-script DMMFp)

DMMPespressivo = \markup {\dynamic mp \normal-text \italic " espressivo"}
MPespressivo = #(make-dynamic-script DMMPespressivo)

DMMPespress = \markup {\dynamic mp \normal-text \italic " espress."}
MPespress = #(make-dynamic-script DMMPespress)

% Contenant P, PP, PPP

DMPdolce = \markup {\dynamic p \normal-text \italic " dolce"}
Pdolce = #(make-dynamic-script DMPdolce)

DMPdolceEdEspr = \markup {\dynamic p \normal-text \italic " dolce ed espr."}
PdolceEdEspr = #(make-dynamic-script DMPdolceEdEspr)

DMPdolceElegato = \markup {\dynamic p \normal-text \italic " dolce e legato"}
PdolceElegato = #(make-dynamic-script DMPdolceElegato)

DMPdolceLegato = \markup {\dynamic p \normal-text \italic " dolce legato"}
PdolceLegato = # (make-dynamic-script DMPdolceLegato)

DMPEDolce = \markup {\dynamic p \normal-text \italic " e dolce"}
PEDolce = # (make-dynamic-script DMPEDolce)

DMPespr = \markup {\dynamic p \normal-text \italic " espr."}
Pespr = #(make-dynamic-script DMPespr)

DMPesprEDolce = \markup {\dynamic p \normal-text \italic " espr. e dolce"}
PesprEDolce = #(make-dynamic-script DMPesprEDolce)

DMPespress = \markup {\dynamic p \normal-text \italic " espress."}
Pespress = #(make-dynamic-script DMPespress)

DMPlegato = \markup {\dynamic p \normal-text \italic " legato"}
Plegato = #(make-dynamic-script DMPlegato)

DMPlegg = \markup {\dynamic p \normal-text \italic " legg."}
Plegg = #(make-dynamic-script DMPlegg)

DMPleggiero = \markup {\dynamic p \normal-text \italic " leggiero"}
Pleggiero = #(make-dynamic-script DMPleggiero)

DMPmarc = \markup {\dynamic p \normal-text \italic " marc."}
Pmarc = #(make-dynamic-script DMPmarc)

DMPmoltoEspr = \markup {\dynamic p \normal-text \italic " molto espr."}
PmoltoEspr = #(make-dynamic-script DMPmoltoEspr)

DMPPocoEspr = \markup {\dynamic p \dynamic \normal-text \italic "poco espr"}
PPocoEspr = #(make-dynamic-script DMPPocoEspr)

DMPiuP = \markup {\normal-text \italic "più " \dynamic p}
PiuP = #(make-dynamic-script DMPiuP)

DMPiuPEDolce = \markup {\normal-text \italic "più " \dynamic p \normal-text \italic " e dolce"}
PiuPEDolce = #(make-dynamic-script DMPiuPEDolce)

DMPPCrescUnPoco = \markup {\dynamic pp \normal-text \italic " cresc. un poco "}
PPCrescUnPoco = #(make-dynamic-script DMPPCrescUnPoco)

DMPPdolce = \markup {\dynamic pp \normal-text \italic " dolce"}
PPdolce = #(make-dynamic-script DMPPdolce)

DMPPespressivo = \markup {\dynamic pp \normal-text \italic " espressivo"}
PPespressivo = #(make-dynamic-script DMPPespressivo)

DMPPSempre = \markup {\dynamic pp \normal-text \italic " sempre"}
PPSempre = #(make-dynamic-script DMPPSempre)

DMPPSimplice = \markup {\dynamic pp \normal-text \italic " simplice"}
PPSimplice = #(make-dynamic-script DMPPSimplice)

DMPPPMorendo = \markup {\dynamic ppp \normal-text \italic " morendo"}
PPPMorendo = #(make-dynamic-script DMPPPMorendo)

% Contenant RF

DMrf = \markup {\dynamic rf}
rf = #(make-dynamic-script DMrf)

DMrfEspr = \markup {\dynamic rf \normal-text \italic " espr."}
rfEspr = #(make-dynamic-script DMrfEspr)

% II : Ne contenant pas de lettre dynamique (p, f, r, z)

DMPianoEDolce = \markup {\normal-text \italic "piano e dolce"}
PianoEDolce = #(make-dynamic-script DMPianoEDolce)

DMPiuDolce = \markup {\normal-text \italic "più dolce"}
PiuDolce = #(make-dynamic-script DMPiuDolce)

DMLegg = \markup {\normal-text \italic "legg."}
Legg = #(make-dynamic-script DMLegg)

DMMarc = \markup {\normal-text \italic " marc."}
Marc = # (make-dynamic-script DMMarc)

DMMarcato = \markup {\normal-text \italic " marcato"}
Marcato = # (make-dynamic-script DMMarcato)
            % ne pas confondre avec \marcato, sans majuscule, qui est une articulation

DMSempreCresc = \markup {\normal-text \italic "sempre cresc."}
SempreCresc = #(make-dynamic-script DMSempreCresc)

DMSempreDim = \markup {\normal-text \italic "sempre dim."}
SempreDim = #(make-dynamic-script DMSempreDim)

DMSemprepdolce = \markup {\normal-text \italic "sempre" \dynamic p \normal-text \italic " e dolce"}
Semprepdolce = #(make-dynamic-script DMSemprepdolce)

DMSemprePEDolce = \markup {\normal-text \italic "sempre piano e dolce"}
SemprePEDolce = #(make-dynamic-script DMSemprePEDolce)

DMPPtranq = \markup {\dynamic pp \normal-text \italic " tranquillo"}
PPtranq = #(make-dynamic-script DMPPtranq)

DMEspress = \markup {\normal-text \italic "espress."}
Espress = #(make-dynamic-script DMEspress)

DMEspressivo = \markup {\normal-text \italic" espressivo"}
Espressivo = #(make-dynamic-script DMEspressivo)

DMCrescMolto = \markup {\normal-text \italic "cresc. molto"}
CrescMolto = #(make-dynamic-script DMCrescMolto)

DMCrescPocoPoco = \markup {\normal-text \italic "cresc. poco a poco"}
CrescPocoPoco = #(make-dynamic-script DMCrescPocoPoco)

DMCrescSempre = \markup {\normal-text \italic "cresc. sempre"}
CrescSempre = #(make-dynamic-script DMCrescSempre)

DMCrescUnPoco = \markup {\normal-text \italic "cresc. un poco"}
CrescUnPoco = #(make-dynamic-script DMCrescUnPoco)

DMEsprEDolce = \markup {\normal-text \italic " espr. e dolce"}
EsprEDolce = #(make-dynamic-script DMEsprEDolce)

DMDolce = \markup {\normal-text \italic "dolce"}
Dolce = #(make-dynamic-script DMDolce)

% III : Nuances entre parenthèses ()

DMRndf = \markup{\normal-text \bold \italic "(" \dynamic f \normal-text \bold \italic ")"}
Rndf = #(make-dynamic-script DMRndf)

DMRndmf = \markup{\normal-text \bold \italic " (" \dynamic mf \normal-text \bold \italic ") "}
Rndmf = # (make-dynamic-script DMRndmf)

DMRndmp = \markup{\normal-text \bold \italic "(" \dynamic mp \normal-text \bold \italic ")"}
Rndmp = # (make-dynamic-script DMRndmp)

DMRndp = \markup{\normal-text \bold \italic "(" \dynamic p \normal-text \bold \italic ")"}
Rndp = #(make-dynamic-script DMRndp)

DMRndpp = \markup{\normal-text \bold \italic "(" \dynamic pp \normal-text \bold \italic ")"}
Rndpp = #(make-dynamic-script DMRndpp)

% IV : Contenant des crochets

% [dim]
DMbracketedDim = \markup{ \normal-text \italic "[dim]"}
bracketedDim = #(make-dynamic-script DMbracketedDim)

% [rinforzando]
DMFFbracketedRinfor = \markup {\dynamic ff \normal-text \italic "[rinforzando]"}
FFbracketedRinfor = #(make-dynamic-script DMFFbracketedRinfor)

% [FF con forza]
DMbracketedFFconForza = \markup {\normal-text \italic "[" \dynamic ff \normal-text \italic "con forza]"}
bracketedFFconForza = #(make-dynamic-script DMbracketedFFconForza)

% [Fz] con Forza
DMbracketedFzNconForza = \markup {\normal-text \italic "[" \dynamic fz \normal-text \italic "] con forza"}
bracketedFzNconForza = #(make-dynamic-script DMbracketedFzNconForza)

% ff[z]
MMFFbracketedZ = \markup {\dynamic ff \normal-text \bold \italic "[" \dynamic z  \normal-text \bold \italic "]"}
bracketedFFZ = #(make-dynamic-script MMFFbracketedZ )

% [Fz]
MMbracketedFz = \markup {\normal-text \bold \italic "[" \dynamic fz \normal-text \bold \italic "]"}
bracketedFz = #(make-dynamic-script MMbracketedFz)

% [FF]
MMbracketedFF = \markup {\normal-text \bold \italic "[" \dynamic ff \normal-text \bold \italic "]"}
bracketedFF = #(make-dynamic-script MMbracketedFF)

% [PP]
MMbracketedPP = \markup {\normal-text \bold \italic "[" \dynamic pp \normal-text \bold \italic "]"}
bracketedPP = #(make-dynamic-script MMbracketedPP)

% [P]
MMbracketedP = \markup {\normal-text \bold \italic "[" \dynamic p \normal-text \bold \italic "]"}
bracketedP = #(make-dynamic-script MMbracketedP)

% [F]
MMbracketedF = \markup {\normal-text \bold \italic "[" \dynamic f  \normal-text \bold \italic "]"}
bracketedF = #(make-dynamic-script MMbracketedF)

% [MF]
MMbracketedMF = \markup {\normal-text \bold \italic "["  \dynamic mf \normal-text \bold \italic "]"}
bracketedMF = #(make-dynamic-script MMbracketedMF)

% [MP]
MMbracketedMP = \markup {\normal-text \bold \italic "[" \dynamic mp \normal-text \bold \italic "]"}
bracketedMP = #(make-dynamic-script MMbracketedMP)

% [cresc]
MMbracketedCresc = \markup {\normal-text \bold \italic "[" \normal-text \italic "cresc." \normal-text \bold \italic "]"}
bracketedCresc = #(make-dynamic-script MMbracketedCresc)

% [sempre cresc.]
MMbracketedSempreCresc = \markup {
  \normal-text \bold \italic "[" \normal-text \italic "sempre cresc." \normal-text \bold \italic "]"}
bracketedSempreCresc = #(make-dynamic-script MMbracketedSempreCresc)

% [espressivo]
DMMFBracketedEspressivo = \markup {\dynamic mf \normal-text \italic " [espressivo]"}
MFBracketedEspressivo = #(make-dynamic-script DMMFBracketedEspressivo)

% Expressions diverses : ne sont PAS des nuances, et non influencées par les instructiuons de cadrage

PocoCrescL = \markup {\italic {"p  o  c  o     c  r  e  s  c  ."}}
CrescL = \markup {\italic {"c  r  e  s  c  ."}}

% Les expressions suivantes peuvent être utilisées sans préfixe _ ou ^
% Si un préfixe est utilisé, il a priorité sur celui utilisé dans la définition

Espr = _\markup {\normal-text \italic "espr."}
SoloDolce = _\markup {\normal-text "Solo" \normal-text \italic " dolce"}
SoloEspr = _\markup {\normal-text "Solo" \normal-text \italic " espr."}
Perdendo = _\markup {\normal-text \italic "perdendo"}
PocoPocoCresc = _\markup {\normal-text \italic "poco a poco cresc."}
Tenuto = ^\markup {\normal-text \italic "ten."}

theOne = ^\markup {\bold "1."}
theTwo = ^\markup {\bold "2."}
theThird = ^\markup {\bold "3."}
theFourth = ^\markup {\bold "4."}
Solo = ^\markup {Solo}
oneSolo = ^\markup {\bold \magnify #1.2 "1. Solo"}
thirdSolo = ^\markup {\bold \magnify #1.2 "3. Solo"}
Atwo = ^\markup {\bold \magnify #1.2 "a 2"}

Pizz = ^\markup {\italic \magnify #1.2 "pizz."}
RndPizz = ^\markup {\italic \magnify #1.2 "(pizz.)"}
Arco = ^\markup {\italic \magnify #1.2 "arco"}
RndArco = ^\markup {\italic \magnify #1.2 "(arco)"}
Div = ^\markup {\italic \magnify #1.2 "div."}
bracketedDiv = ^\markup {\italic \magnify #1.2 "[div.]"}
nonDiv = ^\markup {\italic \magnify #1.2 "non div."}
Divisi = ^\markup {\italic \magnify #1.2 "divisi"}
nonDivisi = ^\markup {\italic \magnify #1.2 "non divisi"}
Unis = ^\markup {\italic \magnify #1.2 "unis."}
granPausa = ^\markup {\italic "G.P."}
Simile = ^\markup {\italic \magnify #1.2 "simile"}

% Cadrage des nuances

leftDynamic = \once \override DynamicText #'self-alignment-X = #-0.85	% cadrage sur le bord gauche
centerDynamic = \once \override DynamicText #'self-alignment-X = #0	% centré
rightDynamic = \once \override DynamicText #'self-alignment-X = #0.85	% cadrage sur le bord droit

%{
  ************************************************************************
  *                                                                      *
  * Définitions diverses                                                 *
  *                                                                      *
  ************************************************************************
%}


soufflet = {\crescHairpin \dimHairpin}

oneMMRNumberOn = \set restNumberThreshold = #0  % Impose le nombre de mesure au dessus de tous les silences multi-mesure
oneMMRNumberOff = \set restNumberThreshold = #1 % Nombre de mesure à partir de 2 silences multi-mesure

dynamicLineSpannerStandard = \override DynamicLineSpanner #'staff-padding = #1
tupletBracketFalse = \override TupletBracket #'bracket-visibility = ##f
tupletBracketTrue = \revert TupletBracket #'bracket-visibility
hairpinToBarLineFalse = \override Hairpin #'to-barline = ##f
hairpinToBarLineTrue = \override Hairpin #'to-barline = ##t
dynamicSpannerOff = \override DynamicTextSpanner #'style = #'none
dynamicSpannerOn = \revert DynamicTextSpanner #'dash-period
ignoreNoteCollision = \override NoteColumn #'ignore-collision = ##t
notifyNoteCollision = \revert NoteColumn #'ignore-collision
tupletOff = \override Voice.TupletNumber #'stencil = ##f
tupletOn = \revert Voice.TupletNumber #'stencil
stretchDynamicText = \once \override DynamicText #'extra-spacing-width = #'(0 . 0)
bindDynamics = -\tweak #'stencil ##f \<
  % ajoute un crescendo invisible de manière à aligner des nuances diverses
  % Remplace normalement un \!
dShort = \once \override Voice.Hairpin #'minimum-length = #1
  % Permet de raccourcir au maximum le soufflet invisible créé par bindDynamics
  % Se place AVANT la note ou le silence supportant bindDynamics

% Activer les 2 instructions suivantes pour obtenir des sauts de page conformes à l'original
% sinon désactiver
%#'breakPage mBreak = \break
%#'breakPage mNoBreak = \noBreak
%#'breakPage mBreak = { }
%#'breakPage mNoBreak = { }
