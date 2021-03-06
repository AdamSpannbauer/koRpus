% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wrapper_functions_lex.div.R
\name{MTLD}
\alias{MTLD}
\title{Lexical diversity: Measure of Textual Lexical Diversity (MTLD)}
\usage{
MTLD(txt, factor.size = 0.72, min.tokens = 9, detailed = FALSE,
  char = FALSE, MA = FALSE, steps = 1, ...)
}
\arguments{
\item{txt}{An object of either class \code{\link[koRpus]{kRp.tagged-class}} or \code{\link[koRpus]{kRp.analysis-class}},
      containing the tagged text to be analyzed.}

\item{factor.size}{A real number between 0 and 1, defining the MTLD factor size.}

\item{min.tokens}{An integer value,
      how many tokens a full factor must at least have to be considered for the MTLD-MA result.}

\item{detailed}{Logical,
      whether full details of the analysis should be calculated. It defines
if all factors should be kept in the object. This slows down calculations considerably.}

\item{char}{Logical,
      defining whether data for plotting characteristic curves should be calculated.}

\item{MA}{Logical,
      defining whether the newer moving-average algorithm (MTLD-MA) should be calculated.}

\item{steps}{An integer value for MTLD-MA, defining the step size for the moving window,
      in tokens. The original proposal
uses an incremet of 1. If you increase this value, computation will be faster,
      but your value can only remain a good estimate if
the text is long enough.}

\item{...}{Further valid options for the main function,
      see \code{\link[koRpus:lex.div]{lex.div}} for details.}
}
\value{
An object of class \code{\link[koRpus]{kRp.TTR-class}}.
}
\description{
This is just a convenient wrapper function for \code{\link[koRpus:lex.div]{lex.div}}.
}
\details{
This function calculates the measure of textual lexical diversity (MTLD; see McCarthy & Jarvis,
      2010). In contrast to
\code{\link[koRpus:lex.div]{lex.div}},
      which by default calculates all possible measures and
their progressing characteristics, this function will only calculate the MTLD value,
      and characteristics are
off by default.

If you set \code{MA=TRUE},
      the newer MTLD-MA (moving-average method) is used instead of the classic MTLD.
}
\examples{
\dontrun{
MTLD(tagged.text)
}
}
\references{
McCarthy, P. M. & Jarvis, S. (2010). MTLD, vocd-D,
      and HD-D: A validation study of sophisticated approaces to lexical diversity assessment.
   \emph{Behaviour Research Methods}, 42(2), 381--392.
}
\seealso{
\code{\link[koRpus:kRp.POS.tags]{kRp.POS.tags}},
 \code{\link[koRpus]{kRp.tagged-class}}, \code{\link[koRpus]{kRp.TTR-class}}
}
\keyword{LD}
