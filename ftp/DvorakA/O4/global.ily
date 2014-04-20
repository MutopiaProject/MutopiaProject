\version "2.18.0"

dimin = \dim
morendo = \markup {\italic morendo}
pmoltoess = \markup \line {\dynamic p \normal-text \italic {molto espress.}}
mfmoltoess = \markup \line {\dynamic mf \normal-text \italic {molto espress.}}
ppdolce = \markup {\hspace #3.5 pp \normal-text \italic dolce}
ppdolcedyn = #(make-dynamic-script ppdolce)
pppritardmarkup = \markup {ppp \normal-text \italic ritard.}
pppritard = #(make-dynamic-script pppritardmarkup)
