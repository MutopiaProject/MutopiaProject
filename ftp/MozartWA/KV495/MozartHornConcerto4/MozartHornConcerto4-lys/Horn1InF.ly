\version "2.13.10"

\include "defs.lyi"
\include "Horn1MvtI.lyi"
\include "Horn1MvtII.lyi"
\include "Horn1MvtIII.lyi"

instrument = "Horn I"

mvtI = \transpose f ees {\key c \major \hornOneMvtI}
mvtII = \transpose f ees {\key c \major \hornOneMvtII}
mvtIII = \transpose f ees {\key c \major \hornOneMvtIII}

\include "part.lyi"

