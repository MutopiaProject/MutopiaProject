\version "2.18.2"

#(set-global-staff-size 18)
%#(set-default-paper-size "letter")
#(ly:set-option 'relative-includes #t)

\header { maintainer = "Steve Shorter et al." }
\include "./mutopia-header.ily"

\include "./common/styles.ily"
\include "./common/definitions.ily"

%------ Cover Pages
\include "./common/cover.ily"
\include "./common/blank1.ily"
%------ Table of Contents
\include "./common/toc.ily"
%------ Introduction
\include "./common/intro.ily"
%------ Aria for 2 guitars
\include "./v00/1.7e/ariav1.7e.ily"   %-- cc-by-sa Steve Shorter and J.D. Erickson
%------ Aria for 3 guitars
\include "./v00/1.8/ariav1.8.ily"     %-- cc-by-sa Steve Shorter and J.D. Erickson
%------ Variations
\include "./v01/v01.ily"              %-- cc-by-sa Steve Shorter and J.D. Erickson
\include "./v02/v02.ily"              %-- cc-by-sa Steve Shorter and J.D. Erickson
\include "./v03/v03.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v04/v04.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v05/v05.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v06/v06.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v07/v07.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v08/v08.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v09/v09.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v10/v10.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v11/v11.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v12/v12.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v13/v13.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v14/v14.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v15/v15.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v16/v16.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v17/v17.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v18/v18.ily"              %-- cc-by-sa Steve Shorter and Benjamin Esham
\include "./v19/v19.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v20/v20.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v21/v21.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v22/v22.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v23/v23.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v24/v24.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v25/v25.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v26/v26.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v27/v27.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v28/v28.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v29/v29.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
\include "./v30/v30.ily"              %-- cc-by-sa Steve Shorter and Hajo Delzelski
%------ Ornaments guide and credits
\include "./ornaments/ornaments.ily"  %-- cc-by-sa Steve Shorter
\include "./common/ack.ily"
\include "./common/copyright.ily"
\include "./common/errata.ily"        %-- cc-by-sa Steve Shorter
\include "./common/blank1.ily"
