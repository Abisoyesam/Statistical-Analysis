* Encoding: UTF-8.
**Syntax for conducting a One Sample z Test in SPSS
** Syntax by: how2stats website

******************************************************************************************************
Research Question: Researcher at the website pingdom calculated the average age of users
social media and found that the average age of social network users in the U.S is mu=36.9
and sigma = 10. This distribution is approximately normal. You obtain a sample of n=25 users
of the social networking site Linkedin. The mean age for this sample is M=44.2 years old.

DATA LIST list / n sample_mean population_mean population_std.

BEGIN DATA
35 105 100 15
END DATA

COMPUTE mean_difference = sample_mean - population_mean.
COMPUTE square_root_n = SQRT(n).
COMPUTE standard_difference = population_std / square_root_n.
COMPUTE z_statistic = mean_difference / standard_difference.
COMPUTE chi_square = z_statistic*z_statistic.
COMPUTE p_value = SIG.CHISQ(chi_square,1).
COMPUTE cohens_d = mean_difference / population_std.
EXECUTE.
FORMATS z_statistic p_value cohens_d (f8.5).
LIST z_statistic p_value cohens_d.