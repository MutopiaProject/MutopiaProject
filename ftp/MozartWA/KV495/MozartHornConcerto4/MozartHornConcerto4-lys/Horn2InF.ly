\version "2.13.10"

\include "defs.lyi"
\include "Horn2MvtI.lyi"
\include "Horn2MvtII.lyi"
\include "Horn2MvtIII.lyi"

instrument = "Horn II in F"

mvtI = \transpose f ees {\key c \major \hornTwoMvtI}
mvtII = \transpose f ees {\key c \major \hornTwoMvtII}
mvtIII = \transpose f ees {\key c \major \hornTwoMvtIII}

\include "part.lyi"

