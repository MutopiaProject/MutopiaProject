\include "Haendel/Oratorio/Messiah/common.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
  \header { title = "Messiah" }
  \paper { #(define page-breaking ly:minimal-breaking) }
  %% Title page
  \markup\null\pageBreak
  %% Table of contents
  \markuplines \table-of-contents
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% PART I
%%%
\partNoBreak "Part I"

\pieceTocNb "1-19" \markup { Chorus: \italic { Glory to God in the highest } }
\includeScore "ASchorus"

%%%
%%% PART II
%%%
\partNoBreak "Part II"
\pieceTocNb "2-22" \markup { Chorus: \italic { Hallelujah } }
\includeScore "BWchorus"

%%%
%%% PART III
%%%
\partNoBreak "Part III"
\pieceTocNb "3-4" \markup { Air: \italic { The trumpet shall sound } (bass) }
\includeScore "CDairBass"

\pieceTocNb "3-9" \markup { Chorus: \italic { Worthy is the Lamb } }
\includeScore "CIchorus"
\pieceTocNb "3-10" \markup { Chorus: \italic { Amen } }
\includeScore "CJchorus"
\actEnd \markup { END OF THE ORATORIO }
