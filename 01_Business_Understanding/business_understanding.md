#  Business Understanding & Context

###  The Client
**Independent Airbnb Portfolio Manager in Barcelona.**
The client owns and manages a portfolio of 5 to 20 short-term rental properties in Barcelona. They are looking to optimize their current pricing strategy, understand their competition, and identify the most lucrative neighborhoods for future property acquisitions.

###  The Business Problem
The client currently sets their prices based on intuition and generic market averages. They lack a data-driven understanding of how micro-location (neighbourhood), property type (entire home vs. private room), and seasonal demand interact to affect nightly rates and availability. 

**The Core Decision:** 
*"Where should I acquire my next property in Barcelona, and how should I price my existing portfolio to maximize revenue while remaining competitive?"*

###  The 5 Core Business Questions
To solve this problem, the analysis must answer these five questions:

1. **Market Supply:** Which neighbourhoods have the highest and lowest listing supply? (Where is the competition most intense?)
2. **Pricing Dynamics:** Where are advertised prices relatively high or low across the city?
3. **Room Type Competition:** How does room-type competition differ between neighbourhoods? (e.g., Are entire homes dominating Eixample while private rooms dominate Gràcia?)
4. **Market Gaps:** Which neighbourhood-room-type combinations represent potential investment opportunities (low supply + high price)?
5. **Host Premium:** Does a "Superhost" badge actually command a higher price, and does this vary by neighbourhood?

###  The Analytical Approach (The Pipeline)
To answer these questions, I built an end-to-end data pipeline using real-world data from InsideAirbnb:
1. **Data Auditing & Cleaning (Python/Pandas):** Audited over 5 million calendar records and 15,000 listings, fixed text-string corruption, and handled missing values.
2. **Data Modeling (MySQL):** Designed a relational star schema to ensure safe, non-duplicated aggregations.
3. **Exploratory Data Analysis (Python/Seaborn):** Uncovered seasonal availability trends and pricing distributions.
4. **Business Intelligence (Power BI):** Developed a 3-page interactive dashboard for the client to explore the market, compare prices against benchmarks, and visualize historical activity.

###  Key Data Limitations (What this analysis CANNOT do)
To maintain analytical integrity, it is crucial to state what the data does *not* measure:
*   **No Realized Revenue:** The data contains *advertised* nightly prices, not the actual prices paid by guests.
*   **No Confirmed Bookings:** The calendar data shows *future availability*. An "unavailable" date could be booked, blocked by the host, or seasonal maintenance.
*   **No Operating Costs:** The analysis does not account for cleaning fees, management fees, or mortgage costs, so it cannot calculate net profit.

###  Expected Business Outcome
By the end of this analysis, the client will have an interactive dashboard and a set of strategic recommendations to:
*   Identify the most profitable neighbourhoods to target for acquisition.
*   Adjust their pricing strategy based on seasonal demand (e.g., summer peaks).
*   Decide whether investing time to achieve "Superhost" status is worth the potential price premium in their specific neighborhoods.