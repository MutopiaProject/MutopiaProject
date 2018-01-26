\version "2.18.2"

globalMvtUn = {
	\time 4/4
	\key f \major
	\set Score.markFormatter = #format-mark-box-numbers
	\compressFullBarRests
	\tempo "Allegro ma non troppo." 4 = 112
}
%-----------------------------------------------------------------------
globalMvtDeux = {
	\time 6/8
	\key f \major
	\set Score.markFormatter = #format-mark-box-numbers
	\compressFullBarRests
	\tempo "Lento" 8 = 112
}
%-----------------------------------------------------------------------
globalMvtTrois = {
	\time 3/4
	\key f \major
	\set Score.markFormatter = #format-mark-box-numbers
	\compressFullBarRests
	\tempo "Molto Vivace" 2. = 72
}
%-----------------------------------------------------------------------
globalMvtQuatre = {
	\time 2/4
	\key f \major
	\set Score.markFormatter = #format-mark-box-numbers
	\compressFullBarRests
	\tempo "Vivace ma non troppo." 4 = 152
}
