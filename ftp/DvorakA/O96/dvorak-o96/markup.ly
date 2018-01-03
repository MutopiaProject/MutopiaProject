arco=^\markup {\italic arco}
atempo=^\markup {\italic {a tempo}}
crescmarkup=^\markup {\italic cresc.}
dacapo=^\markup {\italic {D.C. al Fine}}
dimin=^\markup {\italic dimin.}
dimmarkup=^\markup {\italic dim.}
dolce=^\markup {\italic {dolce}}
ffp = #(make-dynamic-script "ffp")
ffz = #(make-dynamic-script "ffz")
fine=^\markup {\italic Fine}
flat=^\markup { \flat}
fmoltoespressivo = \markup { \dynamic f \italic {molto espressivo}}
fpp = #(make-dynamic-script "fpp")
fzmarkup = \markup {\dynamic fz}
intempo=^\markup {\italic {in tempo}}
legato=^\markup {\italic legato}
mfespressivo = \markup { \dynamic mf \italic espressivo}
moltoespress=^\markup {\italic {molto espress.}}
moltoritard=^\markup {\italic {molto ritard.}}
moltorit=^\markup {\italic {molto rit.}}
morendo=^\markup {\italic {morendo}}
mpespressivo = \markup { \dynamic mp \italic espressivo}
pespressivo = \markup { \dynamic p \italic espressivo}
piucresc=^\markup {\italic {più cresc.}}
piuf=^\markup {\italic {più} \dynamic f}
piup=^\markup {\italic {più} \dynamic p}
pizz=^\markup {\italic pizz.}
pocoritard=^\markup {\italic {poco ritard.}}
pocorit=^\markup {\italic {poco rit.}}
ppdolce = \markup { \dynamic pp \italic dolce}
ppespressivo = \markup { \dynamic pp \italic espressivo}
ppleggiero = \markup { \dynamic pp \italic leggiero}
pstaccato = \markup { \dynamic p \italic staccato}
ritard=^\markup {\italic ritard}
rit=^\markup {\italic rit.}
ritmolto=^\markup {\italic {rit. molto}}
staccato=^\markup {\italic staccato}
stacc=^\markup {\italic stacc.}
sulG=^\markup {sul G.}
tempoI=^\markup {\italic {Tempo I.}}
trem=^\markup {\italic {trem.}}
%
dimi = #(make-music 'DecrescendoEvent
             'span-direction START
             'span-type 'text
             'span-text "dim.")
dimmolto = #(make-music 'DecrescendoEvent
             'span-direction START
             'span-type 'text
             'span-text "dim. molto")
cres = #(make-music 'CrescendoEvent
             'span-direction START
             'span-type 'text
             'span-text "cresc.")
moltocresc = #(make-music 'CrescendoEvent
             'span-direction START
             'span-type 'text
             'span-text "molto cresc.")









