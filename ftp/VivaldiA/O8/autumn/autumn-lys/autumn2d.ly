\version "1.7.13"
\include "figured-accidentals.ly"

VioloncelloAutumnTwo = \notes {
\clef bass 
\key d \minor 
\time 3/4

\mark "D"
\relative d {
d2._"Adagio Molto - Il Cembalo arpeggio"^"Vbriachi dormienti" ~ |
d2.^#'(lines "6") ~ |
d2.^#'(lines "6" "4") ~ |
d2.^#'(lines "4" "2") |
cis2.^#'(lines "7" "5") ~ |
cis2. ~ |
cis2. ()
c!2.^#`(lines "6" (columns "4" ,figsharp) "2") |
d2.^#`(lines "6" (columns "4" ,figsharp) "2") ()
dis2.^#'(lines "7" "5") ~ |
dis |
ais^#'(lines "7" "5") ~ |
ais () 
a!^#`(lines (columns "6" ,figsharp) (columns "4" ,figsharp) (columns "2" ,fignatural)) |
g^#'(lines "6") |
gis^#`(lines (columns ,figflat "7") "5") ~ |
gis ()
g!^#`(lines "6" (columns "4" ,figsharp) "2") |
f^#'(lines "6") |
e^#'(lines "6" "5") ~ |
e |
b'^#`(columns ,figflat "7") ~ |
b |
bes!^#'(lines "6" "4" "2")_"Sempre Piano" |
aes^#`(lines "7" (columns "5" ,figflat)) ~ |
aes^#'(lines "6") |
g^#`(lines "7" "5" (columns "3" ,fignatural)) ~ |
g ~ |
g^#`(lines "6" (columns "4" ,figsharp) "2") |
gis^#`(lines "7" "5" (columns "3" ,fignatural)) |
a^#`(columns ,figsharp) ~ |
a^#'(lines "8" "6")_"Piano" ~ |
a^#`(lines "7" "5" (columns "3" ,figsharp)) ~ |
a^#'(lines "6" "4") ~ |
a^#`(lines "5" (columns "3" ,figsharp))_"Più Piano" ~ |
a^#'(lines "6" "4") ~ |
a^#`(lines "7" "5" (columns "3" ,figsharp)) ~ |
a^#'(lines "6" "4") ~ |
a^#`(lines "5" (columns "3" ,figsharp)) ~ |
a^#'(lines "6" "4") ~ |
a^#`(lines (columns "7" ,figsharp) "5" "4") ~ |
a_"Pianissimo" ~ |
a^#`(lines "5" (columns "3" ,figsharp)) ~ |
a ~ |
a^\fermata |
}
\bar "||"
}


%\score {
%\VioloncelloAutumnTwo
%}

