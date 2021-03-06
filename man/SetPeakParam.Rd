% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parameters_db.R, R/spectra_processing.R
\name{SetPeakParam}
\alias{SetPeakParam}
\title{Set parameters for peak profiling and parameters optimization}
\usage{
SetPeakParam(
  platform = "general",
  Peak_method = "centWave",
  RT_method = "loess",
  mzdiff,
  snthresh,
  bw,
  ppm,
  min_peakwidth,
  max_peakwidth,
  noise,
  prefilter,
  value_of_prefilter,
  fwhm,
  steps,
  sigma,
  peakBinSize,
  max,
  criticalValue,
  consecMissedLimit,
  unions,
  checkBack,
  withWave,
  profStep,
  minFraction,
  minSamples,
  maxFeatures,
  mzCenterFun,
  integrate,
  extra,
  span,
  smooth,
  family,
  fitgauss,
  polarity,
  perc_fwhm,
  mz_abs_iso,
  max_charge,
  max_iso,
  corr_eic_th,
  mz_abs_add,
  rmConts
)

SetPeakParam(
  platform = "general",
  Peak_method = "centWave",
  RT_method = "loess",
  mzdiff,
  snthresh,
  bw,
  ppm,
  min_peakwidth,
  max_peakwidth,
  noise,
  prefilter,
  value_of_prefilter,
  fwhm,
  steps,
  sigma,
  peakBinSize,
  max,
  criticalValue,
  consecMissedLimit,
  unions,
  checkBack,
  withWave,
  profStep,
  minFraction,
  minSamples,
  maxFeatures,
  mzCenterFun,
  integrate,
  extra,
  span,
  smooth,
  family,
  fitgauss,
  polarity,
  perc_fwhm,
  mz_abs_iso,
  max_charge,
  max_iso,
  corr_eic_th,
  mz_abs_add,
  rmConts
)
}
\arguments{
\item{platform}{Character, specify the LC-MS platform used in pratice, including "UPLC-Q/E",
"UPLC-Q/TOF","UPLC-T/TOF","UPLC-Ion_Trap","UPLC-Orbitrap","UPLC-G2S","HPLC-Q/TOF","HPLC-Ion_Trap","HPLC-Orbitrap","HPLC-S/Q". 
Default is "general", which is a more common option for all platform. If the platform is not listed above, please use this one.}

\item{Peak_method}{Character, specify the algorithm to perform peak detection. "centwave" 
to use the CentWave algorithm, and "matchedFilter" to use the MatchedFilter algorithm.}

\item{RT_method}{Character, specify the algorithm to perform tetention time alignment, including "loess" and "obiwarp".
Default is "loess".}

\item{mzdiff}{Numeric, specify the minimum m/z difference for signals to be considered as 
different features when retention times are overlapping.}

\item{snthresh}{Numeric, specify the signal to noise threshold.}

\item{bw}{Numeric, specify the band width (sd or half width at half maximum) of gaussian 
smoothing kernel to be applied during peak grouping.}

\item{ppm}{Numeric, specify the mass error in ppm.}

\item{min_peakwidth}{Numeric, specify the minimum peak width in seconds.Only work for 'centWave'.}

\item{max_peakwidth}{Numeric, specify the maximum peak width in seconds.Only work for 'centWave'.}

\item{noise}{Numeric, specify the noise level for peaking picking.Only work for 'centWave'.}

\item{prefilter}{Numeric, specify the scan number threshold for prefilter.Only work for 'centWave'.}

\item{value_of_prefilter}{Numeric, specify the scan abundance threshold for prefilter. Only work for 'centWave'.}

\item{fwhm}{numeric specifying the full width at half maximum of matched filtration gaussian model peak. Only work for 'matchedFilter'.}

\item{steps}{numeric defining the number of bins to be merged before filtration. Only work for 'matchedFilter'.}

\item{sigma}{numeric specifying the standard deviation (width) of the matched filtration model peak. Only work for 'matchedFilter'.}

\item{profStep}{numeric defining the bin size (in mz dimension) to be used for the profile matrix generation. Only work for 'obiwarp'.}

\item{minFraction}{Numeric, specify fraction of samples in each group that contain the feature for it to be grouped.}

\item{minSamples}{Numeric, specify minimum number of sample(s) in each group that contain the feature for it to be included.}

\item{maxFeatures}{Numeric, specify the maximum number of features to be identified.}

\item{...}{Other parameters, including max,extra,span,smooth,family,fitgauss, verbose.columns,mzCenterFun,integrate. Usually don't 
need to change.}
}
\description{
This function sets all the parameters used for downstream
pre-processing of user's raw MS data based on specific LC-MS platform or parameters optimization.
The database will be under an real-time update based on the progress in this field.

SetPeakParam, used to set the peak param
}
\author{
Zhiqiang Pang \email{zhiqiang.pang@mail.mcgill.ca}, Jasmine Chong \email{jasmine.chong@mail.mcgill.ca},
Mai Yamamoto \email{yamamoto.mai@mail.mcgill.ca}, and Jeff Xia \email{jeff.xia@mcgill.ca}
McGill University, Canada
License: GNU GPL (>= 2)

Zhiqiang Pang
}
