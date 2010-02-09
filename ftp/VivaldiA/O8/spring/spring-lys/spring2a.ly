#(ly:set-option 'old-relative)
\version "2.12.3"
ViolinoPrimoSpringTwo =  {
\clef violin
\key cis \minor
\time 3/4

%% hack beam settings...
#(revert-auto-beam-setting '(end 1 32 3 4) 1 8)
#(revert-auto-beam-setting '(end 1 32 3 4) 3 8)
#(revert-auto-beam-setting '(end 1 32 3 4) 5 8)
\mark "F"
\relative e' {
 gis16.[_"Largo e Pianissimo Sempre"^"Mormorio di frondi, e piante" a32 gis16. a32 ]   gis16.[ a32 gis16. a32 ]   gis16.[ cis32 b16. a32 ] |
gis16. a32 gis16. a32  gis16. a32 gis16. a32  gis16. cis32 b16. a32 |
gis16. a32 gis16. a32  gis16. a32 gis16. a32  gis16. a32 bis16. cis32 |
dis16. e32 dis16. e32  dis16. e32 dis16. e32  dis16. gis32 fis16. e32 |
dis16. e32 dis16. e32  dis16. e32 dis16. e32  dis16. gis32 fis16. e32 |
dis16. e32 dis16. e32  dis16. e32 dis16. e32  dis16. e32 fis16. dis32 |
e16. fis32 e16. fis32  e16. fis32 e16. fis32  e16. fis32 e16. fis32 |
e,16. fis32 e16. fis32  e16. fis32 e16. fis32  e16. fis32 e16. fis32 |
e'16. fis32 e16. fis32  e16. fis32 e16. fis32  e16. fis32 e16. fis32 |
dis16. e32 dis16. e32  dis16. e32 dis16. e32  dis16. e32 dis16. e32 |
dis16. e32 dis16. e32  dis16. e32 dis16. e32  dis16. e32 dis16. e32 |
cis16. dis32 cis16. dis32  cis16. dis32 cis16. dis32  cis16. dis32 cis16. dis32 |
cis16. dis32 cis16. dis32  cis16. dis32 cis16. dis32  cis16. dis32 cis16. dis32 |
bis16. cis32 bis16. cis32  bis16. cis32 bis16. cis32  bis16. cis32 bis16. dis32 |
e16. fis32 e16. fis32  e16. fis32 e16. fis32  e16. fis32 e16. fis32 |
dis16. e32 dis16. e32  dis16. e32 dis16. e32  dis16. e32 dis16. e32 |
dis16. e32 dis16. e32  dis16. e32 dis16. e32  dis16. e32 dis16. cis32 |
b16. cis32 b16. cis32  b16. cis32 b16. cis32  b16. e32 dis16. cis32 |
b16. cis32 b16. cis32  b16. cis32 b16. cis32  b16. cis32 b16. a32 |
gis16. a32 gis16. a32  gis16. a32 gis16. a32  gis16. cis32 b16. a32 |
gis16. a32 gis16. a32  gis16. a32 gis16. a32  gis16. a32 bis16. cis32 |
dis16. e32 dis16. e32  dis16. e32 dis16. e32  dis16. e32 fis16. dis32 |
e16. fis32 e16. fis32  e16. fis32 e16. fis32  e16. fis32 e16. fis32 |
e16. fis32 e16. fis32  e16. fis32 e16. fis32  e16. fis32 e16. dis32 |
cis16. dis32 cis16. dis32  cis16. dis32 cis16. dis32  cis16. dis32 e16. cis32 |
fis16. gis32 fis16. gis32  fis16. gis32 fis16. gis32  fis16. gis32 fis16. e32 |
dis16. e32 dis16. e32  dis16. e32 dis16. e32  dis16. e32 fis16. dis32 |
gis16. a32 gis16. a32  gis16. a32 gis16. a32  gis16. a32 gis16. a32 |
gis16. a32 gis16. a32  gis16. a32 gis16. a32  gis16. a32 gis16. a32 |
a,16. b32 a16. b32  a16. b32 a16. b32  a16. b32 a16. cis32 |
dis16. e32 dis16. e32  dis16. e32 dis16. e32  dis16. e32 dis16. e32 |
cis16. dis32 cis16. dis32  bis16. cis32 bis16. cis32  bis16. cis32 bis16. dis32 |
e16. fis32 e16. fis32  e16. fis32 e16. fis32  e16. fis32 e16. fis32 |
a,16. b32 a16. b32  a16. b32 a16. b32  a16. b32 a16. cis32 |
dis16. e32 dis16. e32  dis16. e32 dis16. e32  dis16. e32 dis16. e32 |
cis16. dis32 cis16. dis32  bis16. cis32 bis16. cis32  bis16. cis32 bis16. dis32 |
e16. fis32 e16. fis32  e16. fis32 e16. fis32  e16. fis32 e16. fis32 |
e,16. fis32 e16. fis32  e16. fis32 e16. fis32  e16. fis32 e16. fis32 |
e2.^\fermata
}
\bar "||"
}


%\score {
%\ViolinoPrimoSpringTwo
%}

