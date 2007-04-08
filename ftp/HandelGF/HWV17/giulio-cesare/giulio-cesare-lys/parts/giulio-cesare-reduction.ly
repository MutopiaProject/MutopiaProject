\include "parts-common.ily"

\header {
  title = "Giulio Cesare in Egitto"
  composer = "George Frideric Haendel"
  poet = "Nicola Francesco Haym"
  maintainer = "Nicolas Sceaux"

  copyright = \markup { Copyright \maintainer 2005. \hspace #1.0 Licensed 
                        under the Creative Commons Attribution 2.5 License }
  tagline = \markup {
    \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7)
    \small \box \center-align {
      \line { Copyright \maintainer 2005. \hspace #1.0 Licensed 
              under the Creative Commons Attribution 2.5 License,}
      \line { for details see: 
              \with-url #"http://creativecommons.org/licenses/by/2.5" 
              http://creativecommons.org/licenses/by/2.5
              ~ Typeset using
              \with-url #"http://www.LilyPond.org" \line { \teeny www.LilyPond.org }
              #(ly:export (string-append "version " (lilypond-version))) \hspace #-1 .}
      \line { Sheet music from
              \with-url #"http://www.MutopiaProject.org" \line { \teeny www.MutopiaProject.org} \hspace #-1 ,
              free to download, modify, and perform.
            }
    }
  }
}
\usePageTweaks
%%$\cesareBaryton
%%$\tolomeoBaryton
%%$\nirenoBaryton
%%$\corneliaGClef
#(*mark-top-padding* -4)
%%$
%%$\paper { raggedbottom = ##t annotatespacing = ##t }

\includePartScore #"1-01-1" #"reduction"
\includePartScore #"1-01-2" #"reduction"
\includePartScore #"1-01-3" #"reduction"
\includePartScore #"1-02-1" #"reduction"
\includePartScore #"1-03-1" #"reduction"
\includePartScore #"1-03-2" #"reduction"
\includePartScore #"1-04-1" #"reduction"
\includePartScore #"1-04-2" #"reduction"
\includePartScore #"1-04-3" #"reduction"
\includePartScore #"1-04-4" #"reduction"
\includePartScore #"1-05-1" #"reduction"
\includePartScore #"1-05-2" #"reduction"
\includePartScore #"1-06-1" #"reduction"
\includePartScore #"1-06-2" #"reduction"
\includePartScore #"1-07-1" #"reduction"
\includePartScore #"1-07-2" #"reduction"
\includePartScore #"1-07-3" #"reduction"
\includePartScore #"1-07-4" #"reduction"
\includePartScore #"1-07-5" #"reduction"
\includePartScore #"1-07-6" #"reduction"
\includePartScore #"1-08-1" #"reduction"
\includePartScore #"1-08-2" #"reduction"
\includePartScore #"1-08-3" #"reduction"
\includePartScore #"1-08-4" #"reduction"
\includePartScore #"1-08-5" #"reduction"
\includePartScore #"1-09-1" #"reduction"
\includePartScore #"1-09-2" #"reduction"
\includePartScore #"1-10-1" #"reduction"
\includePartScore #"1-11-1" #"reduction"
\includePartScore #"1-11-2" #"reduction"
\includePartScore #"1-11-3" #"reduction"
\includePartScore #"1-11-4" #"reduction"
%%$
\includePartScore #"2-01-1" #"reduction"
\includePartScore #"2-02-1" #"reduction"
\includePartScore #"2-02-2" #"reduction"
\includePartScore #"2-02-3" #"reduction"
\markup \opus "Sinfonia."
\includePartScore #"2-02-5" #"reduction"
\includePartScore #"2-02-6" #"reduction"
#(*mark-top-padding* 2)
\includePartScore #"2-02-7" #"reduction"
#(*mark-top-padding* -4)
\includePartScore #"2-02-8" #"reduction"
\includePartScore #"2-02-9" #"reduction"
#(*mark-top-padding* 2)
\includePartScore #"2-03-1" #"reduction"
#(*mark-top-padding* -4)
\includePartScore #"2-03-2" #"reduction"
\includePartScore #"2-04-1" #"reduction"
\includePartScore #"2-04-2" #"reduction"
\includePartScore #"2-04-3" #"reduction"
\includePartScore #"2-04-4" #"reduction"
\includePartScore #"2-05-1" #"reduction"
\includePartScore #"2-06-1" #"reduction"
\includePartScore #"2-06-2" #"reduction"
\includePartScore #"2-06-3" #"reduction"
\includePartScore #"2-06-4" #"reduction"
\includePartScore #"2-07-1" #"reduction"
\includePartScore #"2-07-2" #"reduction"
\includePartScore #"2-07-3" #"reduction"
\includePartScore #"2-08-1" #"reduction"
\includePartScore #"2-08-2" #"reduction"
\includePartScore #"2-08-3" #"reduction"
\includePartScore #"2-08-4" #"reduction"
\includePartScore #"2-09-1" #"reduction"
\includePartScore #"2-09-2" #"reduction"
\includePartScore #"2-10-1" #"reduction"
\includePartScore #"2-11-1" #"reduction"
\includePartScore #"2-11-2" #"reduction"
%%$
\includePartScore #"3-01-1" #"reduction"
\includePartScore #"3-01-2" #"reduction"
\markup \piece "Scena II."
\markup \opus "Sinfonia."
\includePartScore #"3-02-2" #"reduction"
\includePartScore #"3-02-3" #"reduction"
\includePartScore #"3-03-1" #"reduction"
\includePartScore #"3-03-2" #"reduction"
\includePartScore #"3-04-1" #"reduction"
\includePartScore #"3-04-2" #"reduction"
\includePartScore #"3-04-3" #"reduction"
\includePartScore #"3-05-1" #"reduction"
\includePartScore #"3-05-2" #"reduction"
\includePartScore #"3-06-1" #"reduction"
\includePartScore #"3-06-2" #"reduction"
\includePartScore #"3-07-1" #"reduction"
\includePartScore #"3-07-2" #"reduction"
\includePartScore #"3-07-3" #"reduction"
\includePartScore #"3-08-1" #"reduction"
\includePartScore #"3-09-1" #"reduction"
\includePartScore #"3-09-2" #"reduction"
\markup \piece "Scena Ultima."
\markup \opus "Sinfonia."
\includePartScore #"3-10-2" #"reduction"
\includePartScore #"3-10-3" #"reduction"
\includePartScore #"3-10-4" #"reduction"
\includePartScore #"3-10-5" #"reduction"

\markup \fill-line {
  \null
  \override #'(linewidth . 70) \column {
    \fill-line { \huge Contents }
    \fill-line { \vspace #1 }
    \fill-line { \large \italic "Act I." }
    \fill-line { "Coro. Viva il nostre Alcide" 1 }
    \fill-line { "Aria. Cesare: Presti omai l'egizia terra" 6 }
    \fill-line { "Aria. Cesare: Empio, dirò, tu sei" 12 }
    \fill-line { "Aria. Cornelia: Priva son d'ogni conforto" 17 }
    \fill-line { "Aria. Sesto: Svegliatevi nel core" 19 }
    \fill-line { "Aria. Cleopatra: Non disperar, chi sa ?" 23 }
    \fill-line { "Aria. Tolomeo: L'empio, sleale, indegno" 28 }
    \fill-line { "Recit. Cesare: Alma del gran Pompeo" 30 }
    \fill-line { "Aria. Cesare: Non è si vago e bello" 33 }
    \fill-line { "Aria. Cleopatra: Tutto può donna Vezzosa, s'amorosa" 36 }
    \fill-line { "Aria. Cornelia: Nel tuo seno, amico sasso" 41 }
    \fill-line { "Aria. Sesto: Cara speme, questo core tu cominci a lusingar" 45 }
    \fill-line { "Aria. Cleopatra: Tu la mia stella sei, amabile speranza" 48 }
    \fill-line { "Aria. Cesare: Va tacito e nascosto, quand' avido" 52 }
    \fill-line { "Aria. Achilla: Tu sei il cor di questo core" 58 }
    \fill-line { "Aria. Sesto e Cornelia: Son nato a sospirar/Son nata a lagrimar" 62 }
    \fill-line { \vspace #1 }
    \fill-line { \large \italic "Act II." }
    \fill-line { "Aria. Cleopatra: V'adoro, pupile" 68 }
    \fill-line { "Aria. Cesare: Se in fiorito" 71 }
    \fill-line { "Arioso. Cornelia: Deh, piangete, o mesti lumi" 76 }
    \fill-line { "Aria. Achilla: Se a me non sei crudele" 79 }
    \fill-line { "Aria. Tolomeo: Sì, spietata, il tuo rigore" 83 }
    \fill-line { "Aria. Cornelia: Cessa omai di sospirare" 87 }
    \fill-line { "Aria. Sesto: Cara speme, questo core tu cominci a lusingar" 90 }
    \fill-line { "Aria. Cleopatra: Venere bella" 95 }
    \fill-line { "Aria. Cesare: Al lampo dell'armi" 102 }
    \fill-line { "Aria. Cleopatra: Se pietà di me non senti" 107 }
    \fill-line { "Arioso. Tolomeo: Belle dee di questo core" 111 }
    \fill-line { "Aria. Sesto: L'aura che spira" 116 }
    \fill-line { \vspace #1 }
    \fill-line { \large \italic "Act III." }
    \fill-line { "Aria. Achilla: Dal fulgor di questa spada" 121 }
    \fill-line { "Aria. Tolomeo: Domerò la tua fierezza" 125 }
    \fill-line { "Aria. Cleopatra: Piangerò la sorte mia" 129 }
    \fill-line { "Recit. Cesare: Dall' ondoso periglio salvo mi" 131 }
    \fill-line { "Aria. Cesare: Aure, deh, per pietà" 133 }
    \fill-line { "Aria. Cesare: Quel torrente che cade dal monte" 140 }
    \fill-line { "Aria. Sesto: La giustizia ha già sull'arco" 145 }
    \fill-line { "Recit. Cleopatra: Voi, che mie fide ancelle" 148 }
    \fill-line { "Aria. Cleopatra: Da tempeste il legno infranto" 150 }
    \fill-line { "Aria. Cornelia: Non ha più che temere" 158 }
    \fill-line { "Duetto. Cleopatra e Cesare: Caro/Bella, più amabile beltà" 163 }
    \fill-line { "Coro. Ritorni omai nel nostro core" 167 }
  }
  \null
}