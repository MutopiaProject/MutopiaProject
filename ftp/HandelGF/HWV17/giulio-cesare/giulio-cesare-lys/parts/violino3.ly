\include "parts-common.ily"

\header {
  title = "Giulio Cesare in Egitto"
  composer = "George Frideric Haendel"
  poet = "Nicola Francesco Haym"
  maintainer = "Nicolas Sceaux"

  instrument = "Violino III"
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

\includePartScore #"0-01-1" #"violino3"
\includePartScore #"0-01-2" #"violino3"

%%%

\includePartScore #"1-01-1" #"oboe2-violino3"
\includePartScore #"1-01-2" #"tutti2"
\markup \opus Recitativo.

\markup \piece "Scena II."
\markup \opus Recitativo.

\markup \piece "Scena III."
\markup \opus Recitativo.
\includePartScore #"1-03-2" #"tutti-violini"

\markup \piece "Scena IV."
\markup \opus Recitativo.
\includePartScore #"1-04-2" #"violino2"
\markup \opus Recitativo.
\includePartScore #"1-04-4" #"violino2"

\markup \piece "Scena V."
\markup \opus Recitativo.
\includePartScore #"1-05-2" #"violini-unisoni"

\markup \piece "Scena VI."
\markup \opus Recitativo.
\includePartScore #"1-06-2" #"violino2"

\includePartScore #"1-07-1" #"violino2"
\markup \opus Recitativo.
\includePartScore #"1-07-3" #"tutti-violini"
\markup \opus Recitativo.
\includePartScore #"1-07-5" #"tutti-violini"
\markup \opus Recitativo.

\includePartScore #"1-08-1" #"violino2"
\markup \opus Recitativo.
\includePartScore #"1-08-3" #"tutti-violini"
\markup \opus Recitativo.
\includePartScore #"1-08-5" #"tutti-violini"

\markup \piece "Scena IX."
\markup \opus Recitativo.
\includePartScore #"1-09-2" #"violino2"

\markup \piece "Scena X."
\markup \opus Recitativo.

\markup \piece "Scena XI."
\markup \opus Recitativo.
\includePartScore #"1-11-2" #"violini-unisoni"
\markup \opus Recitativo.
\includePartScore #"1-11-4" #"violino2"
%{
%%%
\pageBreakHack
\markup \piece "Atto Secondo, Scena I."
\markup \opus "Recitativo."

\markup \piece "Scena II."
\markup \opus "Recitativo."
\includePartScore #"2-02-2" #"violino1"
\markup \opus "Recitativo."
\includePartScore #"2-02-4" #"violino1"
\markup \opus "Recitativo."
\includePartScore #"2-02-6" #"violino1"
\includePartScore #"2-02-7" #"violino1"
\markup \opus "Recitativo."
\includePartScore #"2-02-9" #"violino1"

\markup \piece "Scena III."
\markup \opus "Arioso. Cornelia: Deh, piangete, o mesti lumi"

\markup \piece "Scena IV."
\markup \opus "Recitativo."
\includePartScore #"2-04-2" #"violino1"
\markup \opus "Recitativo."
\includePartScore #"2-04-4" #"violino1"

\markup \piece "Scena V."
\markup \opus "Recitativo."

\markup \piece "Scena VI."
\markup \opus "Recitativo."
\includePartScore #"2-06-2" #"violino1"
\markup \opus "Recitativo."
\includePartScore #"2-06-4" #"violino1"

\markup \piece "Scena VII."
\markup \opus "Recitativo."
\includePartScore #"2-07-2" #"violino1"
\markup \opus "Recitativo."

\markup \piece "Scena VIII."
\markup \opus "Recitativo."
\includePartScore #"2-08-2" #"violino1"
\includePartScore #"2-08-3" #"violino1"
\includePartScore #"2-08-4" #"violino1"

\markup \piece "Scena IX."
\includePartScore #"2-09-1" #"violino1"
\markup \opus "Recitativo."

\markup \piece "Scena X."
\markup \opus "Recitativo."

\markup \piece "Scena XI."
\markup \opus "Recitativo."
\includePartScore #"2-11-2" #"violino1"

%%%
\pageBreakHack
\markup \piece "Atto Terzo, Scena I."
\markup \opus "Recitativo."
\includePartScore #"3-01-2" #"violino1"

\includePartScore #"3-02-1" #"violino1"
\markup \opus "Recitativo."
\includePartScore #"3-02-3" #"violino1"

\markup \piece "Scena III."
\markup \opus "Recitativo."
\includePartScore #"3-03-2" #"violino1"

\includePartScore #"3-04-1" #"violino1"
\includePartScore #"3-04-2" #"violino1"
\markup \opus "Recitativo."

\markup \piece "Scena V."
\markup \opus "Recitativo."
\includePartScore #"3-05-2" #"violino1"

\markup \piece "Scena VI."
\markup \opus "Recitativo."
\includePartScore #"3-06-2" #"violino1"

\includePartScore #"3-07-1" #"violino1"
\markup \opus "Recitativo."
\includePartScore #"3-07-3" #"violino1"

\markup \piece "Scena VIII."
\markup \opus "Recitativo."

\markup \piece "Scena IX."
\markup \opus "Recitativo."
\includePartScore #"3-09-2" #"violino1"

\includePartScore #"3-10-1" #"violino1"
\markup \opus "Recitativo."
\includePartScore #"3-10-3" #"violino1"
\markup \opus "Recitativo."
\includePartScore #"3-10-5" #"violino1"
%}