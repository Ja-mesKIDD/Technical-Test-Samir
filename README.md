# Loan Default Risk Analysis

This repository contains a data analysis project focused on predicting loan default risk using a dataset that includes information about loans, borrowers, and repayments. The analysis aims to identify key factors influencing loan defaults and provide insights for better decision-making in peer-to-peer (P2P) lending.

## Project Overview

In this project, we analyze the factors contributing to loan defaults in a peer-to-peer lending environment. The dataset consists of information regarding loans, borrowers' demographic details, and their repayment behavior.

## Dataset

The analysis utilizes the following CSV files:

1. **Loans.csv**: Contains information about the loans, including loan amount, interest rate, term, and more.
2. **Borrowers.csv**: Includes personal details of the borrowers.
3. **Repayments.csv**: Provides data on loan repayments, such as the amount repaid and the repayment date.

## Exploratory Data Analysis

The project conducts an exploratory data analysis (EDA) to understand the distribution of features, identify patterns, and visualize relationships between variables. Key visualizations include:

- Correlation heatmap to explore relationships between numerical variables.
- Contingency tables and Chi-square tests to assess relationships between categorical variables (e.g., employment status and gender with default risk).

## Key Findings

- **Age and Default Risk**: Older borrowers are less likely to default on loans.
- **Loan Amount and Default Risk**: A slight negative correlation suggests larger loans may be associated with a lower default risk.
- **Interest Rate Impact**: The interest rate included in the repayment amount needs further exploration to understand its effect on default behavior.
- **Date Discrepancies**: Certain loans showed discrepancies in repayment dates, warranting further investigation.

## Statistical Tests

We performed Chi-square tests to examine the relationships between employment status and default, as well as gender and default:

- **Employment Status and Default**: p-value = 0.2173 (not statistically significant)
- **Gender and Default**: p-value = 1.0 (not statistically significant)

## Conclusion

The analysis provides preliminary insights into loan default risk. However, due to the small dataset (only 10 entries), further research with a larger dataset is necessary to draw more reliable conclusions. Future investigations should also focus on understanding the implications of interest rates and resolving discrepancies in repayment dates.
