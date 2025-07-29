# 📈 NIFTY-50 Index Forecasting Using ARIMA Model in R

This project involves the time-series analysis and forecasting of the NIFTY-50 stock index using the ARIMA (AutoRegressive Integrated Moving Average) model in **R**. The goal is to build a statistically sound model that can capture the temporal dynamics of the stock index and forecast its future movements based on historical data.

---

## 🔍 Project Objectives

- Import and clean historical NIFTY-50 index data
- Perform exploratory data analysis (EDA)
- Test for stationarity and transform the data as needed
- Build an optimal ARIMA model using `auto.arima()`
- Evaluate model fit using AIC, residuals, and diagnostics
- Forecast future index values and visualize the predictions

---

## 📊 Technologies & Packages Used

- **Programming Language:** R
- **Key Libraries:**
  - `quantmod` – Financial data retrieval
  - `forecast` – Time series modeling
  - `tseries` – Statistical tests like ADF
  - `ggplot2` – Data visualization

---

## 🧪 Methodology

1. **Data Collection**
   - Downloaded NIFTY-50 index data using the `quantmod` package.

2. **Data Preprocessing**
   - Cleaned and converted the data into a time series format suitable for modeling.

3. **Exploratory Data Analysis**
   - Visualized index trends and decomposed the time series into trend, seasonal, and residual components.

4. **Stationarity Testing**
   - Used the Augmented Dickey-Fuller (ADF) test to check for stationarity.
   - Differencing applied to remove non-stationarity.

5. **Model Building**
   - Used `auto.arima()` to automatically select the best-fitting ARIMA model based on AIC/BIC.
   - Analyzed model residuals for white noise behavior.

6. **Forecasting**
   - Forecasted future values of the NIFTY-50 index using the ARIMA model.
   - Plotted the forecasts with 80% and 95% confidence intervals.

---

## 📈 Forecast Output

- The ARIMA model generated forecasts that visually and statistically aligned well with the time series behavior.
- Confidence intervals indicate the expected range of index values, helping in risk-aware decision-making.

---

## 📁 Repository Structure

```bash
NIFTY-50-Index-Forecasting-Using-ARIMA-Model-in-R/
│
├── Stock Index Time-Series Forecast.Rmd   # Main R Markdown file with code and explanation
├── Stock Index Time-Series Forecast.html  # HTML output of the analysis
├── README.md                              # Project overview
