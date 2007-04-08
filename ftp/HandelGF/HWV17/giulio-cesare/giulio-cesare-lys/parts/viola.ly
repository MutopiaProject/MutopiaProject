\include "parts-common.ily"

\header {
  title = "Giulio Cesare in Egitto"
  composer = "George Frideric Haendel"
  poet = "Nicola Francesco Haym"
  maintainer = "Nicolas Sceaux"

  instrument = "Viola"
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

%%%

\includePartScore #"0-01-1" #"viola"
\includePartScore #"0-01-2" #"viola"

%%%

\includePartScore #"1-01-1" #"viola"
\includePartScore #"1-01-2" #"viola"
\markup \opus Recitativo.

\markup \piece "Scena II."
\markup \opus Recitativo.

\markup \piece "Scena III."
\markup \opus Recitativo.
\markup \opus "Aria. Cesare: Empio, dirò, tu sei"

\markup \piece "Scena IV."
\markup \opus Recitativo.
\includePartScore #"1-04-2" #"viola"
\markup \opus Recitativo.
\markup \opus "Aria. Sesto: Svegliatevi nel core"

\markup \piece "Scena V."
\markup \opus Recitativo.
\includePartScore #"1-05-2" #"viola"

\markup \piece "Scena VI."
\markup \opus Recitativo.
\includePartScore #"1-06-2" #"viola"

\includePartScore #"1-07-1" #"viola"
\markup \opus Recitativo.
\includePartScore #"1-07-3" #"viola"
\markup \opus Recitativo.
\includePartScore #"1-07-5" #"viola"
\markup \opus Recitativo.

\markup \piece "Scena XIII."
\markup \opus "Aria. Cornelia: Nel tuo seno, amico sasso"
\markup \opus Recitativo.
\markup \opus "Aria. Sesto: Cara speme, questo core tu cominci a lusingar"
\markup \opus Recitativo.
\markup \opus "Aria. Cleopatra: Tu la mia stella sei, amabile speranza"

\markup \piece "Scena IX."
\markup \opus Recitativo.
\includePartScore #"1-09-2" #"viola"

\markup \piece "Scena X."
\markup \opus Recitativo.

\markup \piece "Scena XI."
\markup \opus Recitativo.
\markup \opus "Aria. Achilla: Tu sei il cor di questo core"
\markup \opus Recitativo.
\includePartScore #"1-11-4" #"viola"

%%$%%%
\pageBreakHack
\markup \piece "Atto Secondo, Scena I."
\markup \opus "Recitativo."

\markup \piece "Scena II."
\markup \opus "Recitativo."
\includePartScore #"2-02-2" #"viola"
\markup \opus "Recitativo."
\includePartScore #"2-02-4" #"viola"
\markup \opus "Recitativo."
\includePartScore #"2-02-6" #"viola"
\includePartScore #"2-02-7" #"viola"
\markup \opus "Recitativo."
\includePartScore #"2-02-9" #"viola"

\markup \piece "Scena III."
\markup \opus "Arioso. Cornelia: Deh, piangete, o mesti lumi"

\markup \piece "Scena IV."
\markup \opus "Recitativo."
\markup \opus "Aria. Achilla: Se a me non sei crudele"
\markup \opus "Recitativo."
\includePartScore #"2-04-4" #"viola"

\markup \piece "Scena V."
\markup \opus "Recitativo."

\markup \piece "Scena VI."
\markup \opus "Recitativo."
\includePartScore #"2-06-2" #"viola"
\markup \opus "Recitativo."
\includePartScore #"2-06-4" #"viola"

\markup \piece "Scena VII."
\markup \opus "Recitativo."
\markup \opus "Aria. Cleopatra: Venere bella"
\markup \opus "Recitativo."

\markup \piece "Scena VIII."
\markup \opus "Recitativo."
\markup \opus "Aria. Cesare: Al lampo dell'armi"
\includePartScore #"2-08-3" #"viola"
\includePartScore #"2-08-4" #"viola"

\markup \piece "Scena IX."
\markup \opus "Arioso. Tolomeo: Belle dee di questo core"
\markup \opus "Recitativo."

\markup \piece "Scena X."
\markup \opus "Recitativo."

\markup \piece "Scena XI."
\markup \opus "Recitativo."
\includePartScore #"2-11-2" #"viola"

%%%
\pageBreakHack
\markup \piece "Atto Terzo, Scena I."
\markup \opus "Recitativo."
\markup \opus "Aria. Achilla: Dal fulgor di questa spada"

\includePartScore #"3-02-1" #"viola"
\markup \opus "Recitativo."
\markup \opus "Aria. Tolomeo: Domerò la tua fierezza"

\markup \piece "Scena III."
\markup \opus "Recitativo."
\markup \opus "Aria. Cleopatra: Piangerò la sorte mia"

\includePartScore #"3-04-1" #"viola"
\includePartScore #"3-04-2" #"viola"
\markup \opus "Recitativo."

\markup \piece "Scena V."
\markup \opus "Recitativo."
\markup \opus "Aria. Cesare: Quel torrente che cade dal monte"

\markup \piece "Scena VI."
\markup \opus "Recitativo."
\markup \opus "Aria. Sesto: La giustizia ha già sull'arco"

\includePartScore #"3-07-1" #"viola"
\markup \opus "Recitativo."
\markup \opus "Aria. Cleopatra: Da tempeste il legno infranto"

\markup \piece "Scena VIII."
\markup \opus "Recitativo."

\markup \piece "Scena IX."
\markup \opus "Recitativo."
\markup \opus "Aria. Cornelia: Non ha più che temere"

\includePartScore #"3-10-1" #"viola"
\markup \opus "Recitativo."
\markup \opus "Duetto. Cleopatra e Cesare: Caro/Bella, più amabile beltà"
\markup \opus "Recitativo."
\includePartScore #"3-10-5" #"viola"
