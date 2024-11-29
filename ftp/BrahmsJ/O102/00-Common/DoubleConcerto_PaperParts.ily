%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                           P A P E R  S E C T I O N                          #
%###############################################################################
\paper {
%	annotate-spacing = ##t
%	indent = 0
	ragged-last-bottom = ##t
	ragged-bottom = ##t
	left-margin = 12 \mm
	first-page-number = 0
	bookTitleMarkup = \markup {
		%\override #'(baseline-skip . 3.5)
		\column {
			%\override #'(baseline-skip . 3.5)
			\column {
				\vspace #10
				\fill-line {
					%\huge \larger \larger \bold
					\fromproperty #'header:composer
				}
				\vspace #10
				\fill-line {
					%\large %\bold
					\fromproperty #'header:title
				}
				\vspace #10
				\fill-line {
					%\smaller %\bold
					\fromproperty #'header:subtitle
				}
			}
		}
	}
	oddHeaderMarkup = \markup {
		\unless \on-first-page \fill-line {
			\null
			\center-column {
				\smaller \fromproperty #'header:subsubtitle
				\fromproperty #'header:instrument
%				\vspace #2
			}
			\fromproperty #'page:page-number-string
		}
	}
	evenHeaderMarkup = \markup {
		\unless \on-first-page \fill-line {
			\fromproperty #'page:page-number-string
			\center-column {
				\smaller \fromproperty #'header:subsubtitle
				\fromproperty #'header:instrument
%				\vspace #2
			}
			\null
		}
	}
	oddFooterMarkup = \markup {
		\column {
			\fill-line {
				\if \on-page #1 \fromproperty #'header:copyright
			}
		}
	}
}
