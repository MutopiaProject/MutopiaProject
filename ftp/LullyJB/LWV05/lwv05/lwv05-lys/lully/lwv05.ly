
\header {
  title = \markup \center-align {
    "Le ballet de la revente"
    "des habits du ballet"
    "et comédie"
  }
  composer = "Jean Baptiste Lully"
  poet = "Isaac de Benserade"
  opus = "LWV 5"
  date = "1655 - 1661 (?)"

  notes = \markup \column {
    \line { Documents originaux :}
    \null
    \wordwrap { 
      Jean-Baptiste Lully (1632-1687),
      \italic { Ballet de la Revante des habits du ballet et comédie 
                dansé devant sa Majesté } 
      "[Partition musicale manuscrite]" : fragment ;
      recueilly par Phillidor laisnée en 1690.
    }
    \with-url #"http://gallica.bnf.fr/Catalogue/noticesInd/FRBNF37745378.htm"
    \typewriter "http://gallica.bnf.fr/Catalogue/noticesInd/FRBNF37745378.htm"
    \null
    \wordwrap {
      \italic { Les plaissirs toublé } [sic] masquarade dancé devant le
      roy par Monsieur le duc de Guize lan 1657. \italic { La revantte des
      habits de ballet de la masquarade } dancé devans le roy aux
      Pallais Royal par Mr le Cardinal lan 1661 ; \italic { Le ballet
      des facheux } dancé devans le roy à Volvicontte [Vaux-le-Vicomte]
      par Mr fouquet lan 1661 ; le tout coppié et recueilly et
      mis en ordre par Philidor l'ainé,... a Versailles lan 1681.
    }
    \with-url #"http://gallica.bnf.fr/Catalogue/noticesInd/FRBNF37745519.htm"
    \typewriter "http://gallica.bnf.fr/Catalogue/noticesInd/FRBNF37745519.htm"
    \null
    \wordwrap { 
      Isaac de Benserade (1613-1691),
      \italic { Le ballet de la revente des habits du ballet et comédie }
      "[Texte imprimé]" : dansé devant le Roy.
    }
    \with-url #"http://gallica.bnf.fr/Catalogue/noticesInd/FRBNF30085077.htm"
    \typewriter "http://gallica.bnf.fr/Catalogue/noticesInd/FRBNF30085077.htm"
  }
}
\include "common/common.ily"

\currentOpus #"LWV05"

\pageBreakHack
\pageBreakNext
\includeScore "Aouverture"
%% Premiere partie
\pageBreakNext
\includeScore "Bair"
\includeScore "Cair"
\includeScore "Dcouplet"
\includeScore "Efripiere"
\includeScore "Fvieillards"
\includeScore "Gcontrefaits"
\includeScore "Hamants"
\includeScore "Isobres"
%% Deuxième partie
\pageBreakNext
\includeScore "Jpaysans"
\includeScore "Kadroits"
\includeScore "Lsoldats"
\includeScore "Mpoltrons"
\includeScore "Nvieillards"
