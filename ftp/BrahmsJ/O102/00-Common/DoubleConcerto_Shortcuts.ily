%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                      S H O R T C U T S   S E C T I O N                      #
%###############################################################################
arco=^\markup {\italic arco}
benmarc=^\markup {\italic {ben marc.}}
benmarccresc = ^\markup {\italic {ben marc. cresc.}}
crescmarkup=^\markup {\italic cresc.}
crescmolto=^\markup {\italic {cresc. molto}}
crescpocoapoco=^\markup {\italic {cresc. poco a poco}}
dimmarkup=^\markup {\italic dim.}
div=^\markup {div.}
dolce=^\markup {\italic {dolce}}
espress=^\markup {\italic {espress.}}
espr=^\markup {\italic {espr.}}
express=^\markup {\italic {express.}}
ffsempre = \markup {\dynamic ff \italic sempre}
flat=^\markup { \tiny \flat}
gp = ^\markup {G.P.}
intempo=^\markup {\italic {in tempo}}
legg=^\markup {\italic legg.}
marc = ^\markup {\italic marc.}
marcecrescmolto=^\markup {\italic {marc. e cresc. molto}}
moltocrescmark=^\markup {\italic {molto cresc.}}
moltoleggieroedolce=^\markup { \italic {molto leggiero e dolce}}
pizz=^\markup {\italic pizz.}
pocorit=^\markup {\italic {poco rit.}}
solo=^\markup {Solo}
tutti=^\markup {Tutti}
one=^\markup {\tiny \number 1}
two=^\markup {\tiny \number 2}
three=^\markup {\tiny \number 3}
four=^\markup {\tiny \number 4}
five=^\markup {\tiny \number 5}
six=^\markup {\tiny \number 6}
seven=^\markup {\tiny \number 7}
eight=^\markup {\tiny \number 8}
nine=^\markup {\tiny \number 9}
ten=^\markup {\tiny \number 10}
eleven=^\markup {\tiny \number 11}
atempo=^\markup {\italic {a tempo}}


esprM = ^\markup {\musicglyph #"scripts.espr"}
pespr = ^\markup {\dynamic p \musicglyph #"scripts.espr"}
ppespr = ^\markup {\dynamic pp \musicglyph #"scripts.espr"}


fdim = \markup {\dynamic f \italic dim.}
fespress = \markup {\dynamic f \italic espress.}
moltop = ^\markup {\italic molto \dynamic p}
pdolcesempre = \markup { \dynamic p \italic {dolce sempre}}
pf = \markup { \concat { \dynamic p \dynamic f } }
pocof = \markup { \italic poco \dynamic f}
pocofmadolce = \markup { \italic poco \dynamic f \italic {ma dolce}}
ppdim = \markup { \dynamic pp \italic dim.}
psempre = \markup {\dynamic p \italic sempre }
fbenmarc = \markup { \dynamic f \italic {ben marc.}}
fespr = \markup { \dynamic f \italic espr.}
ffmarc = \markup { \dynamic ff \italic {marc.}}
fmarc = \markup { \dynamic f \italic marc.}
fsemprepiu = \markup { \dynamic f \italic {sempre più}}
mfcresc = \markup { \dynamic mf \italic cresc.}
mfdim = \markup {\dynamic mf \italic dim.}
pcresc = \markup { \dynamic p \italic cresc.}
pcrescmolto = \markup { \dynamic p \italic {cresc. molto}}
pdim = \markup { \dynamic p \italic dim.}
pdolce = \markup { \dynamic p \italic dolce}
piuf=^\markup {\italic {più} \dynamic f}
piup=^\markup {\italic {più} \dynamic p}
plegg = \markup { \dynamic p \italic legg.}
pmamarc = \markup { \dynamic p \italic {ma marc.}}
pmarc = \markup { \dynamic p \italic marc.}
pmarccresc = \markup { \dynamic p \italic { marc. cresc.}}
sempref = \markup { \italic sempre \dynamic f}
ppdolce = \markup { \dynamic pp \italic dolce }
unis=^\markup {unis.}
ppsempre = \markup { \dynamic pp \italic {sempre}}

crescD = #(make-dynamic-script (markup #:normal-text #:italic "cresc."))
dimD = #(make-dynamic-script (markup #:normal-text #:italic "dim."))
fbenmarcD = #(make-dynamic-script (markup #:dynamic "f" #:normal-text #:italic "ben marc."))
fesprD = #(make-dynamic-script (markup #:dynamic "f" #:normal-text #:italic "espr."))
ffmarcD = #(make-dynamic-script (markup #:dynamic "ff" #:normal-text #:italic "marc."))
fmarcD = #(make-dynamic-script (markup #:dynamic "f" #:normal-text #:italic "marc."))
fdimD = #(make-dynamic-script (markup #:dynamic "f" #:normal-text #:italic "dim."))
fsemprepiuD = #(make-dynamic-script (markup #:dynamic "f" #:normal-text #:italic "sempre più"))
mfcrescD = #(make-dynamic-script (markup #:dynamic "mf" #:normal-text #:italic "cresc."))
mfdimD = #(make-dynamic-script (markup #:dynamic "mf" #:normal-text #:italic "dim."))
pcrescD = #(make-dynamic-script (markup #:dynamic "p" #:normal-text #:italic "cresc."))
pcrescmoltoD = #(make-dynamic-script (markup #:dynamic "p" #:normal-text #:italic "cresc. molto"))
pdimD = #(make-dynamic-script (markup #:dynamic "p" #:normal-text #:italic "dim."))
ppdimD = #(make-dynamic-script (markup #:dynamic "pp" #:normal-text #:italic "dim."))
pdolceD = #(make-dynamic-script (markup #:dynamic "p" #:normal-text #:italic "dolce"))
piufD = #(make-dynamic-script (markup #:normal-text #:italic "più" #:dynamic "f"))
piupD = #(make-dynamic-script (markup #:normal-text #:italic "più" #:dynamic "p"))
pleggD = #(make-dynamic-script (markup #:dynamic "p" #:normal-text #:italic "legg."))
pmamarcD = #(make-dynamic-script (markup #:dynamic "p" #:normal-text #:italic "ma marc."))
pmarcD = #(make-dynamic-script (markup #:dynamic "p" #:normal-text #:italic "marc."))
semprefD = #(make-dynamic-script (markup #:normal-text #:italic "sempre" #:dynamic "f"))
pocofD = #(make-dynamic-script (markup #:normal-text #:italic "poco" #:dynamic "f"))
ppsempreD = #(make-dynamic-script (markup #:dynamic "pp" #:normal-text #:italic "sempre"))

fpp = #(make-dynamic-script "fpp")
rf = #(make-dynamic-script "rf")
pfD = #(make-dynamic-script "pf")

noFlag = \once \omit Flag

% fonction
MmrLength = #(define-music-function
	(parser location length)
	(number?)
	#{
		\once \override MultiMeasureRest #'minimum-length = #length
	#}
)
mmrPos = #(define-music-function
	(parser location position)
	(number?)
	#{
		\once \override MultiMeasureRest.staff-position = #(- position 2)
	#}
)
no = #(define-music-function
	(parser location)
	()
	#{
		%\set Voice.restNumberThreshold = #0
		\undo \omit MultiMeasureRestNumber
	#}
)
ni = #(define-music-function
	(parser location)
	()
	#{
		%\set Voice.restNumberThreshold = #1
		\omit MultiMeasureRestNumber
	#}
)
textPriority = #(define-music-function
	(parser location priority)
	(number?)
	#{
		\once \override TextScript.script-priority = #priority
	#}
)
