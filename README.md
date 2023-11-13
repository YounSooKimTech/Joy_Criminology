# Joy_Criminology
<img src="Images/American_Society_of_Criminology_logo.svg" alt="Alt Text" width="100">

- If you have any questions or feedback about the project, please don't hesitate to reach out to yk2949@columbia.edu
<br>


## Introduction:
*The sun was the same as it had been the day I'd buried Maman, and like then, my forehead especially was hurting me all the veins in it throbbing under the skin...My whole being tensed and I squeezed my hand around the revolver. -Albert Camus, The Stranger-*

This is a quotation from *Albert Camus' "The Stranger"*. Meursault killed the Arab due to the sun in his eyes.
Building upon previous research indicating a positive relationship between air pollution and general crime occurrence, our inquiry extends to the realm of hate crimes. 
Will air pollution exhibit a similar impact on hate crimes? 
Additionally, echoing Meursault's sentiments, could the magnitude of sunlight influence both general and hate crime rates?

<br>

## Data
- Pollution Data: Air pollution data from EPA on major pollutants. 
- Crime Data: General crimes (violent crimes and property crimes) and Hate Crimes from the US Federal Bureau of Investigation (FBI)
Control Variables:
- Demographic Variables (Population, Median age, percentage of male population, percentage of White population, Percentage of population who completed at least some college) and Economic Variables (Per capita income and unemployment rate)
- The data after COVID (2020~) is excluded from the study due to its deviating trend

<br>

## Model
- Mixed-effect model
- Region-level and year-fixed effect to control any unobserved heterogeneity
- To use the population as a control variable, the number of crimes used in the models are crime per 100K population

<br>

## Findings
- Sun exposure is linked to a rise in overall crime rates but correlates with a decrease in hate crimes.
- A higher percentage of White population is associated with lower violent and property crime rates but shows a positive correlation with hate crimes.
- Educational attainment is inversely related to general crime rates, while it exhibits a positive correlation with hate crime incidents.

<br>

## Data Source
- **Sun Exposure CDC**: https://ephtracking.cdc.gov/DataExplorer/
- **FBI General and Hate Crimes**: https://ucr.fbi.gov/crime-in-the-u.s
- **EPA Air quality Trend**: https://www.epa.gov/air-trends/air-quality-cities-and-counties
- **Census American Community Survey(ACS):** https://www2.census.gov/acs/downloads/Core_Tables, https://data.census.gov/ 
- **NBER CBSA to IFPS code:**: https://www.nber.org/research/data/census-core-based-statistical-area-cbsa-federal-information-processing-series-fips-county-crosswalk
