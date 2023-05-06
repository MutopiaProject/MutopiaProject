%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                      S H O R T C U T S   S E C T I O N                      #
%###############################################################################
arco = \markup {\italic arco}
benmarc = \markup {\italic {ben marc.}}
benmarccresc = \markup {\italic {ben marc. cresc.}}
crescmarkup = \markup {\italic cresc.}
crescmolto = \markup {\italic {cresc. molto}}
crescpocoapoco = \markup {\italic {cresc. poco a poco}}
dimmarkup = \markup {\italic dim.}
div = \markup {div.}
dolce = \markup {\italic {dolce}}
espress = \markup {\italic {espress.}}
espr = \markup {\italic {espr.}}
express = \markup {\italic {express.}}
ffsempre = \markup {\dynamic ff \italic sempre}
flat = \markup { \tiny \flat}
gp = \markup {G.P.}
intempo = \markup {\italic {in tempo}}
legg = \markup {\italic legg.}
marc = \markup {\italic marc.}
marcecrescmolto = \markup {\italic {marc. e cresc. molto}}
moltocrescmark = \markup {\italic {molto cresc.}}
moltoleggieroedolce = \markup { \italic {molto leggiero e dolce}}
pizz = \markup {\italic pizz.}
pocorit = \markup {\italic {poco rit.}}
solo = \markup {Solo}
tutti = \markup {Tutti}
unis = \markup {unis.}
one = \markup {\tiny \number 1}
two = \markup {\tiny \number 2}
three = \markup {\tiny \number 3}
four = \markup {\tiny \number 4}
five = \markup {\tiny \number 5}
six = \markup {\tiny \number 6}
seven = \markup {\tiny \number 7}
eight = \markup {\tiny \number 8}
nine = \markup {\tiny \number 9}
ten = \markup {\tiny \number 10}
eleven = \markup {\tiny \number 11}
atempo = \markup {\italic {a tempo}}


esprM = \markup {\musicglyph #"scripts.espr"}
pespr = \markup {\dynamic p \musicglyph #"scripts.espr"}
ppespr = \markup {\dynamic pp \musicglyph #"scripts.espr"}


fdim = \markup {\dynamic f \italic dim.}
fespress = \markup {\dynamic f \italic espress.}
moltop = \markup {\italic molto \dynamic p}
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
piuf = \markup {\italic {più} \dynamic f}
piup = \markup {\italic {più} \dynamic p}
plegg = \markup { \dynamic p \italic legg.}
pmamarc = \markup { \dynamic p \italic {ma marc.}}
pmarc = \markup { \dynamic p \italic marc.}
pmarccresc = \markup { \dynamic p \italic { marc. cresc.}}
sempref = \markup { \italic sempre \dynamic f}
ppdolce = \markup { \dynamic pp \italic dolce }
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
omitBeam = \once \omit Beam


% fonction
mmrLength = #(define-music-function
	(length)
	(number?)
	#{
		\once \override MultiMeasureRest.space-increment = #length
	#}
)
mmrPos = #(define-music-function
	(position)
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

markEO = #(define-music-function
	(offset)
	(pair?)
	#{
		\once \override TextScript.layer = #3
		\once \override TextScript.extra-offset = #offset
		\once \override TextScript.whiteout = ##t
		\once \override TextScript.whiteout-style = #'outline
	#}
)

hairpinShorten = #(define-music-function
	(shortLength)
	(pair?)
	#{
		\once \override Hairpin.shorten-pair = #shortLength
	#}
)

tupletOffset = #(define-music-function
	(offset)
	(number?)
	#{
		\once \override TupletNumber.Y-offset = #offset 
	#}
)

dynEO = #(define-music-function
	(offset)
	(pair?)
	#{
		\once \override DynamicText.extra-offset = #offset
		\once \override DynamicText.whiteout = ##t
		\once \override DynamicText.whiteout-style = #'outline
	#}
)

stemOffset = #(define-music-function
	(offset)
	(number?)
	#{
		\once \offset length #offset Stem
	#}
)

beamOffset = #(define-music-function
	(position)
	(pair?)
	#{
		\once \offset positions #position Beam
	#}
)


hairpinEO = #(define-music-function
	(offset)
	(pair?)
	#{
		\once \override Hairpin.extra-offset = #offset
		\once \override Hairpin.whiteout = ##t
		\once \override Hairpin.whiteout-style = #'outline
	#}
)

aIIXoffset = #(define-music-function
	(offset)
	(number?)
	#{
		\once \override CombineTextScript.X-offset = #offset
	#}
)

markWhiteout = {
	\once \override Score.RehearsalMark.layer = #3
	\once \override Score.RehearsalMark.whiteout = #0.75
	\once \override Score.RehearsalMark.whiteout-style = #'outline
}

flattrillmark = \markup { 
	\hspace #1.1
	\concat { 
		\general-align #Y #CENTER {
			\musicglyph #"scripts.trill" 
			\hspace #0.45
			\tiny \flat 
		}
	}
}

trillSpanPadding = #(define-music-function
	(padding)
	(number?)
	#{
		\once \override TrillSpanner.bound-details.right.padding = #padding
	#}
)

markXoffset = #(define-music-function
	(offset)
	(number?)
	#{
		\once \override Score.RehearsalMark.self-alignment-X = #(- offset)
	#}
)

textInSlur = {
	\once \override TextScript.outside-staff-priority = ##f
	\once \override TextScript.slur-padding = #0
	%\once \override TextScript.avoid-slur = #'around
}

scriptInStaff = {
	\once \override Script.outside-staff-priority = ##f
	\once \override Script.slur-padding = #0
	%\once \override Script.avoid-slur = #'around
}


whiteoutMarkup = {
	\once \override Hairpin.layer = #4
	\once \override TextScript.layer = #3
	\once \override TextScript.whiteout = ##t
	\once \override TextScript.whiteout-style = #'outline
}



#(define my-script-alist
	(
		append `(
			("marcato"
				(script-stencil . (feta . ("dmarcato" . "umarcato")))
				(padding . 0.20)
				(avoid-slur . outside)
				;;(staff-padding . ())
				(quantize-position . #t)
				(side-relative-direction . ,DOWN))
			("staccatissimo"
				(avoid-slur . outside)
				(quantize-position . #t)
				(script-stencil . (feta . ("dstaccatissimo" . "ustaccatissimo")))
				(padding . 0.20)
				(skyline-horizontal-padding . 0.10)
				(side-relative-direction . ,DOWN)
				(toward-stem-shift . 1.0)
				(toward-stem-shift-in-column . 0.0))
		)
		default-script-alist)
)

beamGap = #(define-music-function
	(gap)
	(number?)
	#{
		\once \override Beam.auto-knee-gap = #gap
	#}
)



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%aIIOmit = \once \omit Voice.CombineTextScript

%aIIExtraOffset = #(define-music-function
%	(extraoffset)
%	(pair?)
%	#{
%		\once \override CombineTextScript.extra-offset = #extraoffset
%	#}
%)

%arpeggioPadding = #(define-music-function
%	(padding)
%	(number?)
%	#{
%		\once \override Voice.Arpeggio.padding = #padding
%	#}
%)

%beamLeftTwoRightOne = {
%	\set stemLeftBeamCount = #2
%	\set stemRightBeamCount = #1
%}

%beamLeftOneRightTwo = {
%	\set stemLeftBeamCount = #1
%	\set stemRightBeamCount = #2
%}

%setBeamTriple = { 
%	\set subdivideBeams = ##t
%	\set baseMoment = #(ly:make-moment 1/8)
%	\set beatStructure = 2,2,2
%}

%crescText = #(define-music-function
%	(cresctext)
%	(markup?)
%	#{
%		\once \set crescendoText = \markup {\italic { #cresctext } }
%		\once \set crescendoSpanner = #'text
%	#}
%)
%dimText = #(define-music-function
%	(cresctext)
%	(markup?)
%	#{
%		\once \set decrescendoText = \markup {\italic { #cresctext } }
%		\once \set decrescendoSpanner = #'text
%	#}
%)


%dynSpanYoffset = #(define-music-function
%	(offset)
%	(number?)
%	#{
%		\once \override DynamicTextSpanner.bound-details.right.Y = #offset
%	#}
%)

%InCueContext = {
%	\override Beam.beam-thickness = #0.30 % 0.30
%	\override StemTremolo.beam-thickness = #0.35 % 0.30
%	\override Beam.length-fraction = #0.67 % 0.8
%	\override Stem.length-fraction = #0.8 % 0.8
%%	\override Stem.length = #7
%%	\override Beam.length = #7
%	\set fontSize = #-3 %-3
%}

%OutCueContext = {
%	\revert Beam.beam-thickness
%	\revert StemTremolo.beam-thickness
%	\revert Beam.length-fraction
%	\revert Stem.length-fraction
%%	\override Stem.length = #7
%%	\override Beam.length = #7
%	\unset fontSize
%}


%mmrnDown = {
%	\once \override MultiMeasureRestNumber.direction = #-1 
%}

%mmrMinLength = #(define-music-function
%	(length)
%	(number?)
%	#{
%		\once \override MultiMeasureRest.minimum-length = #length
%	#}
%)

%mmrCondens = \once \override MultiMeasureRest.springs-and-rods = #ly:spanner::set-spacing-rods 

%omitMMRN = \omit MultiMeasureRestNumber


%markYoffset = #(define-music-function
%	(offset)
%	(number?)
%	#{
%		\once \override Score.RehearsalMark.Y-offset = #offset
%	#}
%)

%noteShift = #(define-music-function
%	(shift)
%	(number?)
%	#{
%		\once \override NoteColumn.force-hshift = #shift
%	#}
%)

%no = {
%	\undo \omit MultiMeasureRestNumber
%}


%ni = {
%	\omit MultiMeasureRestNumber
%}

%ottavaShorten = #(define-music-function
%	(value)
%	(pair?)
%	#{
%		\once \override Staff.OttavaBracket.shorten-pair = #value
%	#}
%)

%setSextolet = {
%	\set subdivideBeams = ##t
%	\set baseMoment = #(ly:make-moment 1/8)
%	\set beatStructure = 2,2,2,2
%	\override TupletNumber.Y-offset = #-3
%	\override TupletNumber.avoid-slur = #'ignore
%}
%unsetSextolet = {
%	\set subdivideBeams = ##f
%	\revert TupletNumber.Y-offset
%	\revert TupletNumber.avoid-slur
%}


%textOsp = #(define-music-function
%	(prio)
%	(number?)
%	#{
%		\once \override TextScript.outside-staff-priority = #prio
%	#}
%)

%tempoDown = \once \override Score.MetronomeMark.direction = #-1 

%tempoXoffset = #(define-music-function
%	(offset)
%	(number?)
%	#{
%		\once \override Score.MetronomeMark.X-offset = #offset
%	#}
%)

%tempoExtraOffset = #(define-music-function
%	(offset)
%	(pair?)
%	#{
%		\once \override Score.MetronomeMark.extra-offset = #offset
%	#}
%)
%tempoEO = #(define-music-function
%	(offset)
%	(pair?)
%	#{
%		\once \override Score.MetronomeMark.extra-offset = #offset
%	#}
%)


%tupletExtraOffset = #(define-music-function
%	(offset)
%	(pair?)
%	#{
%		\once \override TupletNumber.extra-offset = #offset 
%	#}
%)

%tupletAvoidSlur = \once \override TupletNumber.avoid-slur = #'ignore

%omitTupletNumber = \once \omit Voice.TupletNumber


%tremoloPosition = #(define-music-function
%	(position)
%	(number?)
%	#{
%		\once \override StemTremolo.Y-offset = #position
%	#}
%)

%trillSpanCustom = #(define-music-function
%	(length markup)
%	(number? markup?)
%	% function to create a trill spanner with :
%	%	- specified length
%	%	- specified markup
%	#{
%		\once \override TrillSpanner.minimum-length = #length
%		\once \override TrillSpanner.springs-and-rods = #ly:spanner::set-spacing-rods
%		\once \override Score.TrillSpanner.bound-details.left.text = #markup
%	#}
%)

%trillSpanPadding = #(define-music-function
%	(padding)
%	(number?)
%	% function to create a trill spanner with :
%	%	- specified padding to avoid overlap
%	#{
%		\once \override TrillSpanner.bound-details.right.padding = #padding
%	#}
%)


%naturaltrill = \once \override TrillSpanner.bound-details.left.text = \markup {
%	\concat { 
%		\musicglyph #"scripts.trill" \translate #'(0.5 . 1.05) \tiny \natural 
%	}
%}
%flattrill = \once \override TrillSpanner.bound-details.left.text = \markup {
%	\concat { 
%		\musicglyph #"scripts.trill" \translate #'(0.6 . 0.52) \tiny \flat 
%	}
%}
%sharptrill = \once \override TrillSpanner.bound-details.left.text = \markup {
%	\concat { 
%		\musicglyph #"scripts.trill" \translate #'(0.5 . 1.05) \tiny \sharp  
%	}
%}

%trillflat = \markup { 
%	\general-align #X #CENTER 
%	\concat { 
%		\hspace #2.4 \musicglyph #"scripts.trill" 
%		\translate #'(0.5 . 0.49) \tiny \flat 
%	}
%}



%voltaShorten = #(define-music-function
%	(shortLength)
%	(pair?)
%	#{
%		\once \override Score.VoltaBracket.shorten-pair = #shortLength
%	#}
%)

%whiteoutRehearsalMark = {
%	\override Score.StaffSymbol.layer = #4
%	\override Score.RehearsalMark.layer = #3
%	\once \override Score.RehearsalMark.whiteout = ##t
%	%\once \override Score.RehearsalMark.whiteout-style = #'outline
%}


%whiteoutDynamic = {
%	\once \override DynamicText.whiteout = ##t
%	\once \override DynamicText.whiteout-style = #'outline
%}

%whiteoutMetronomeMark = {
%	\once \override Score.MetronomeMark.whiteout = ##t
%	\once \override Score.MetronomeMark.whiteout-style = #'outline
%}

