%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                       T E M P I  C O N D U C T O R S                        #
%###############################################################################
tempiMvtI = {
	\tempo "Allegro"
	s1*413
	% bar 414
	\tempo "poco rit."
	s1 s2.
	% bar 415.75
	\tempo "in tempo"
}
tempiMvtII = {
	\tempo "Andante"
}
tempiMvtIII = {
	\tempo "Vivace non troppo"
	s2*28
	% bar 29
	\tempo "poco rit."
	s2*4
	% bar 33
	\tempo "in tempo"
	s2*52 s2.*2 s1*2 s2*157
	% bar 246
	\tempo "poco rit."
	s2*4
	% bar 250
	\tempo "in tempo"
	s2*39 s2.*2 s1*2 s2*4
	% bar 297
	\tempo "Poco meno Allegro"
	s2*27
	% bar 324
	\tempo "Tempo primo"
}
%###############################################################################
%#                            T E M P I   P A R T S                            #
%###############################################################################
tempiPartMvtI = {
	\tag #'(floteI floteII oboeI oboeII klarinetI klarinetII fagottoI fagottoII
		hornI hornII hornIII hornIV trumpetI trumpetII pauken soloViolin 
		soloCello violinI violinII Bratsche violoncell kontrabass) {
		\tempo "Allegro"
	}
	s1*413
	%%%%%%%%%%%%%%%%%%%%%%
	% bar 414
	%%%%%%%%%%%%%%%%%%%%%%
	\tag #'(floteI floteII oboeI oboeII klarinetI klarinetII fagottoI fagottoII
		hornI hornII hornIII hornIV trumpetI trumpetII pauken soloViolin 
		soloCello violinI violinII Bratsche violoncell kontrabass) {
		\tempo \markup {
			\italic \medium "poco rit."
		}
	}
	s1 s2.
	%%%%%%%%%%%%%%%%%%%%%%
	% bar 415.75
	%%%%%%%%%%%%%%%%%%%%%%
	\tag #'(floteI floteII oboeI oboeII klarinetI klarinetII fagottoI fagottoII
		hornI hornII hornIII hornIV trumpetI trumpetII pauken soloViolin 
		soloCello violinI violinII Bratsche violoncell kontrabass) {
		\tempo \markup {
			\medium \italic "in tempo"
		}
	}
}
tempiPartMvtII = {
	\tag #'(floteI floteII oboeI oboeII klarinetI klarinetII fagottoI fagottoII
		hornI hornII hornIII hornIV trumpetI trumpetII pauken soloViolin 
		soloCello violinI violinII Bratsche violoncell kontrabass) {
		\tempo "Andante"
	}
}
tempiPartMvtIII = {
	\tag #'(floteI floteII oboeI oboeII klarinetI klarinetII fagottoI fagottoII
		hornI hornII hornIII hornIV trumpetI trumpetII pauken soloViolin 
		soloCello violinI violinII Bratsche violoncell kontrabass) {
		\tempo "Vivace non troppo"
	}
	s2*28
	%%%%%%%%%%%%%%%%%%%%%%
	% bar 29
	%%%%%%%%%%%%%%%%%%%%%%
	\tag #'(floteI floteII oboeI oboeII klarinetI klarinetII fagottoI fagottoII
		  trumpetI trumpetII pauken soloViolin 
		soloCello violinI violinII Bratsche violoncell kontrabass) {
		\tempo \markup {
			\medium \italic "poco rit."
		}
	}
	\tag #'(hornI hornII hornIII hornIV) {
		\tempoXoffset #-1
		\tempo \markup {
			\medium \italic "poco rit."
		}
	}
	s2*4
	%%%%%%%%%%%%%%%%%%%%%%
	% bar 33
	%%%%%%%%%%%%%%%%%%%%%%
	\tag #'(floteI floteII oboeII klarinetI klarinetII fagottoI fagottoII
		  trumpetI trumpetII pauken soloViolin 
		soloCello violinI violinII Bratsche violoncell kontrabass) {
		\tempo \markup {
			\medium \italic "in tempo"
		}
	}
	\tag #'(oboeI hornI hornII hornIII hornIV) {
		\tempoXoffset #-2
		\tempo \markup {
			\medium \italic "in tempo"
		}
	}
	s2*52 s2.*2 s1*2 s2*157
	%%%%%%%%%%%%%%%%%%%%%%
	% bar 246
	%%%%%%%%%%%%%%%%%%%%%%
	\tag #'(oboeI  klarinetI  fagottoI fagottoII
		hornIII hornIV trumpetI trumpetII pauken soloViolin 
		soloCello violinI violinII Bratsche violoncell kontrabass) {
		\tempo \markup {
			\medium \italic "poco rit."
		}
	}
	\tag #'(floteI floteII oboeII klarinetII hornI hornII) {
		\tempoXoffset #-1
		\tempo \markup {
			\medium \italic "poco rit."
		}
	}
	s2*4
	%%%%%%%%%%%%%%%%%%%%%%
	% bar 250
	%%%%%%%%%%%%%%%%%%%%%%
	\tag #'(oboeI  klarinetI  fagottoI fagottoII
		 hornIV trumpetI trumpetII pauken soloViolin 
		soloCello violinI violinII Bratsche violoncell kontrabass) {
		\tempo \markup {
			\medium \italic "in tempo"
		}
	}
	\tag #'(floteI floteII oboeII klarinetII hornI hornII hornIII) {
		\tempoXoffset #-1.5
		\tempo \markup {
			\medium \italic "in tempo"
		}
	}
	s2*39 s2.*2 s1*2 s2*4
	%%%%%%%%%%%%%%%%%%%%%%
	% bar 297
	%%%%%%%%%%%%%%%%%%%%%%
	\tag #'(floteI floteII oboeI oboeII klarinetI klarinetII fagottoI fagottoII
		hornI hornII hornIII trumpetI trumpetII pauken soloViolin 
		soloCello violinI violinII Bratsche violoncell kontrabass) {
		\tempo "Poco meno Allegro"
	}
	\tag #'(hornIV) {
		\tempo \markup {
			\column { \lower #1.5 "Poco meno" "Allegro" }
		}
	}
	s2*27
	%%%%%%%%%%%%%%%%%%%%%%
	% bar 324
	%%%%%%%%%%%%%%%%%%%%%%
	\tag #'(floteI floteII oboeI oboeII  fagottoI 
		hornI hornII hornIV trumpetI trumpetII pauken soloViolin 
		soloCello violinI violinII Bratsche violoncell kontrabass) {
		\tempo "Tempo primo"
	}
	\tag #'(klarinetI fagottoII) {
		\tempoXoffset #-3 
		\tempo \markup {
			\column { \lower #1.5 "Tempo" "primo" }
		}
	}
	\tag #'(hornIII) {
		\tempoXoffset #-1 
		\tempo \markup {
			\column { \lower #1.5 "Tempo" "primo" }
		}
	}
	\tag #'(klarinetII) {
		\tempo \markup {
			\column { \lower #1.5 "Tempo" "primo" }
		}
	}
}
