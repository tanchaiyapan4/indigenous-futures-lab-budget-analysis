# Lab Budget Analysis Journal

## Introduction

This journal documents the analytical process, findings, and financial insights discovered throughout the Indigenous Futures Lab Budget Analysis project. The purpose of this analysis was to better understand how research funding and operational spending were distributed across multiple financial accounts and fiscal years.

The project began with multiple spreadsheets containing fragmented financial records related to grant allocations, faculty research funding, travel expenses, and operational purchases. Because the information existed across separate files and formats, it was difficult to identify overall spending behavior or evaluate long-term financial trends.

To address this issue, the datasets were combined into a centralized SQL database using MySQL. SQL queries were then used to clean, validate, and analyze the financial records before preparing the data for Power BI dashboard development.


## Key Questions Explored

Throughout the analysis, several important financial and operational questions guided the project:

- How much total funding was received across all accounts?
- How much money was spent overall?
- Which transactions represented the largest individual expenses?
- Did spending behavior vary across fiscal years?
- Were certain accounts or time periods associated with unusually high spending activity?
- How effectively could SQL and dashboard reporting improve visibility into financial activity?

In addition to technical analysis, this project also focused on communicating findings in a way that could be understood by non-technical audiences. Rather than only presenting SQL outputs, the analysis emphasizes the financial meaning behind the data and how these insights could support future budgeting decisions.


## Initial Observations

Before cleaning and analysis began, several initial patterns and challenges were observed within the raw data.

First, the financial information was spread across multiple spreadsheets with varying structures and formatting styles. Some records contained detailed transaction descriptions, while others provided only limited context regarding the purpose of expenses or funding additions.

The dataset also included a mixture of funding allocations, operational purchases, supply expenses, and research-related spending activity. Because the records originated from multiple sources, standardizing the information into a consistent structure became an important early step in the project.

Another early observation was that financial activity appeared unevenly distributed across the dataset. Certain transactions represented significantly larger dollar amounts than others, suggesting that a small number of major funding allocations or expenses may have accounted for a substantial portion of total financial activity.


## Data Cleaning & Validation

Before conducting financial analysis, the dataset required several cleaning and validation steps to improve consistency and reliability. Because the records originated from multiple spreadsheets, the data contained formatting differences, inconsistent transaction labeling, and varying levels of detail across entries.

The first step involved combining the spreadsheets into a single CSV dataset that could be imported into MySQL. A structured SQL table was then created to standardize the data fields and support more efficient querying.

Several SQL validation queries were performed during the cleaning process. These checks included identifying null transaction dates, reviewing transaction type consistency, detecting possible duplicate records, and validating deduction values. These validation steps helped confirm that the dataset could support more reliable financial analysis.

The cleaning process also highlighted the importance of structured financial data management. Even relatively small inconsistencies in formatting or labeling can reduce the effectiveness of reporting and make long-term financial analysis more difficult.


## Exploratory Analysis & Findings

The next stage of the project focused on identifying meaningful financial patterns within the dataset. SQL queries were used to examine funding activity, expense behavior, fiscal year trends, and transaction-level spending patterns.

Rather than only focusing on technical outputs, the analysis aimed to interpret what the financial activity could indicate from an operational and budgeting perspective. The findings below summarize several of the most important trends identified during the analysis.


## Findings: Overall Funding and Spending Activity

SQL aggregate queries revealed that the Indigenous Futures Lab received a total of $69,800 in funding across all accounts, while total recorded spending came to only $4.03K. This stark gap between funding received and funds spent is the most significant pattern in the dataset — the lab has utilized less than 6% of total incoming funding, which raises important questions around budget planning, grant timelines, and whether unspent funds are at risk of lapsing.

Breaking activity down by fiscal year revealed an uneven distribution. FY26 accounts for the largest share of funding received (approximately $50K) with very little corresponding spending, while FY25 holds a moderate funding total (~$17K). Nearly all recorded spending — $3.37K, or 83.74% of the total — falls under the FY25/FY26 cross-year category, with the remaining 16.26% ($0.66K) in FY26. FY24 and FY25 contribute negligibly to overall spending.

At the transaction level, the dataset shows high variance across individual expenses. With approximately 12 expense entries contributing to the $4.03K total, the mean expense sits around $336. However, the distribution is heavily right-skewed: the largest transaction — a stipend to a WGSS graduate student (~$1,800) — accounts for roughly 44% of all spending on its own and is a clear outlier. The next largest expenses, a sewing supply list (~$1,100) and DCQS/Amazon supplies (~$1,050), are also well above the mean but less extreme. The remaining transactions drop sharply in value, with most falling under $450, pulling the overall average down considerably.

These patterns suggest that a small number of transactions drive the majority of spending activity, while most individual purchases are modest in scale. The high variance and outlier behavior at the top end of the expense distribution indicate that budget concentration is real and worth monitoring, particularly for grant accountability purposes where specific spending categories may have defined limits or reporting requirements.

## Visuals explanation

### Total Funding Received:
This KPI card highlights the total amount of incoming funding recorded across all financial accounts. It provides a quick overview of the overall scale of financial support received by the Indigenous Futures Lab and establishes a baseline for comparing future spending activity.

### Total Spending:
This visualization summarizes the total amount of money spent across all recorded transactions. Comparing total spending against total funding helps evaluate how much of the available budget has already been utilized.

### Funding vs Spending by Fiscal Year:
This bar chart compares funding additions and expense deductions across different fiscal years. The visualization helps identify periods with the highest financial activity and reveals how funding and spending patterns changed over time.

### Largest Individual Expenses:
This chart highlights the highest individual expense transactions within the dataset. Identifying the largest expenses helps reveal where major portions of the budget were allocated and allows for easier detection of unusually large spending activity or financial outliers.

### Spending Distribution by Fiscal Year:
This chart visualizes how total spending was distributed across fiscal years. The distribution helps demonstrate whether expenses were concentrated within a single fiscal period or spread more evenly over time.