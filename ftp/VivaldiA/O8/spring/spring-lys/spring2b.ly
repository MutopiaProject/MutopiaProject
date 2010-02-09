#(ly:set-option 'old-relative)
\version "2.12.3"
ViolinoSecondoSpringTwo =  {
\clef violin
\key cis \minor
\time 3/4

%% hack beam settings...
#(revert-auto-beam-setting '(end 1 32 3 4) 1 8)
#(revert-auto-beam-setting '(end 1 32 3 4) 3 8)
#(revert-auto-beam-setting '(end 1 32 3 4) 5 8)
\mark "F"
\relative e' {
 e16.[_"Largo e Pianissimo Sempre"^"Mormorio di fronde, e Piante" fis32 e16. fis32 ]   e16.[ fis32 e16. fis32 ]   e16.[ a32 gis16. fis32 ] |
e16. fis32 e16. fis32  e16. fis32 e16. fis32  e16. a32 gis16. fis32 |
e16. fis32 e16. fis32  e16. fis32 e16. fis32  e16. fis32 gis16. a32 |
bis16. cis32 bis16. cis32  bis16. cis32 bis16. cis32  bis16. e32 dis16. cis32 |
% 5
bis16. cis32 bis16. cis32  bis16. cis32 bis16. cis32  bis16. e32 dis16. cis32 |
bis16. cis32 bis16. cis32  bis16. cis32 bis16. cis32  bis16. cis32 dis16. bis!32 |
cis16. dis32 cis16. dis32  cis16. dis32 cis16. dis32  cis16. dis32 cis16. dis32 |
cis,16. dis32 cis16. dis32  cis16. dis32 cis16. dis32  cis16. dis32 cis16. dis32 |
cis'16. dis32 cis16. dis32  cis16. dis32 cis16. dis32  cis16. dis32 cis16. dis32 |
% 10
fis,8[ fis]  fis'16. gis32 fis16. gis32  fis16. gis32 fis16. gis32 |
b,16. cis32 b16. cis32  b16. cis32 b16. cis32  b16. cis32 b16. cis32 |
e,8[ e]  e'16. fis32 e16. fis32  e16. fis32 e16. fis32 |
a,16. b32 a16. b32  a16. b32 a16. b32  a16. b32 a16. b32 |
dis,8[ dis]  dis'16. e32 dis16. e32  dis16. e32 dis16. fis,32 |
% 15
gis16. a32 gis16. a32  gis16. a32 gis16. a32  gis16. a32 gis16. a32 |
ais8[ ais]  ais[ ais]  b16. cis32 b16. cis32 |
ais8[ ais]  ais[ ais]  ais[ ais] |
gis16. ais!32 gis16. ais32  gis16. ais!32 gis16. ais32  gis16. cis32 b16. ais!32 |
gis16. ais!32 gis16. ais32  gis16. ais!32 gis16. ais32  gis16. a32 gis16. fis32 |
% 20
e16. fis32 e16. fis32  e16. fis32 e16. fis32  e16. a32 gis16. fis32 |
e16. fis32 e16. fis32  e16. fis32 e16. fis32  e16. fis32 gis16. a32 |
bis16. cis32 bis16. cis32  bis16. cis32 bis16. cis32  bis16. cis32 dis16. bis!32 |
cis16. dis32 cis16. dis32  cis16. dis32 cis16. dis32  cis16. dis32 cis16. dis32 |
cis16. dis32 cis16. dis32  cis16. dis32 cis16. dis32  cis16. dis32 cis16. b32 |
% 25
a16. b32 a16. b32  a16. b32 a16. b32  a16. b32 cis16. a32 |
dis16. e32 dis16. e32  dis16. e32 dis16. e32  dis16. e32 dis16. cis32 |
bis16. cis32 bis16. cis32  bis16. cis32 bis16. cis32  bis16. cis32 dis16. bis32 |
dis8[ dis]  dis[ dis]  dis[ dis] |
e16. fis32 e16. fis32  e16. fis32 e16. fis32  e16. fis32 e16. fis32 |
% 30
fis,16. gis32 fis16. gis32  fis16. gis32 fis16. gis32  fis16. gis32 fis16. gis32 |
fis16. gis32 fis16. gis32  fis16. gis32 fis16. gis32  fis16. gis32 fis16. a32 |
gis8[ gis]  gis[ gis]  gis[ bis] |
cis16. dis32 cis16. dis32  cis16. dis32 cis16. dis32  cis16. dis32 cis16. dis32 |
fis,16. gis32 fis16. gis32  fis16. gis32 fis16. gis32  fis16. gis32 fis16. gis32 |
% 35
fis16. gis32 fis16. gis32  fis16. gis32 fis16. gis32  fis16. gis32 fis16. a32 |
gis8[ gis]  gis[ gis]  gis[ bis] |
cis16. dis32 cis16. dis32  cis16. dis32 cis16. dis32  cis16. dis32 cis16. dis32 |
cis,16. dis32 cis16. dis32  cis16. dis32 cis16. dis32  cis16. dis32 cis16. dis32 |
cis2.^\fermata
}
\bar "||"
}


%\score {
%\ViolinoSecondoSpringTwo
%}

