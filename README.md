# 📈 NIFTY-50 Index Forecasting Using ARIMA Model in R

This project presents a complete time-series analysis and forecasting pipeline for the **NIFTY-50** stock index using the **ARIMA (AutoRegressive Integrated Moving Average)** model in **R**. The objective is to build a robust and statistically sound model that captures the temporal dynamics of the index and provides accurate short- to medium-term forecasts based on historical price data.

---

## 🎯 Project Objectives

* ✅ Import and clean historical NIFTY-50 index data
* ✅ Perform comprehensive Exploratory Data Analysis (EDA)
* ✅ Test for stationarity and transform the data accordingly
* ✅ Build and tune an optimal ARIMA model using `auto.arima()`
* ✅ Evaluate model fit using AIC, residual diagnostics, and white noise tests
* ✅ Forecast future index values and visualize prediction intervals

---

## 📊 Technologies & Packages Used

**Programming Language:**

* R (RStudio recommended)

**Primary Packages:**

* [`quantmod`](https://cran.r-project.org/web/packages/quantmod/index.html): Financial data retrieval
* [`forecast`](https://pkg.robjhyndman.com/forecast/): Time series modeling and forecasting
* [`tseries`](https://cran.r-project.org/web/packages/tseries/index.html): Statistical testing (ADF test)


---

## 🔬 Methodology

1. **📥 Data Collection**

   * Pulled historical NIFTY-50 data directly from Yahoo Finance using `quantmod::getSymbols()`.

2. **🧹 Data Preprocessing**

   * Converted the data into a time series object, handled missing values, and focused on adjusted closing prices.

3. **📈 Exploratory Data Analysis (EDA)**

   * Visualized long-term index trends
   * Decomposed the series into trend, seasonality, and residuals for deeper insight

4. **🧾 Stationarity Testing**

   * Conducted the Augmented Dickey-Fuller (ADF) test
   * Applied appropriate differencing to remove trends and stabilize variance

5. **⚙️ Model Building**

   * Leveraged `auto.arima()` to identify the best ARIMA(p,d,q) configuration
   * Evaluated residuals using ACF, PACF, QQ plots, and the Ljung-Box test to ensure model adequacy

6. **📤 Forecasting**

   * Generated 30-day forecasts with 80% and 95% confidence intervals
   * Visualized forecasts against historical data for intuitive interpretation

---

## 📉 Forecast Output & Insights

* The model produces forecasts that align with observed patterns in the index, offering a strong fit.
* Confidence intervals provide a quantitative measure of uncertainty, aiding in risk-aware financial planning.
* The output supports use cases such as investment strategy evaluation, volatility assessment, and academic research.

---

## 📁 Repository Structure

```bash
NIFTY-50-Index-Forecasting-Using-ARIMA-Model-in-R/
│
├── Stock Index Time-Series Forecast.Rmd   # Main R Markdown file containing analysis and code
├── README.md                              # Project documentation and overview
```

> 📝 Note: The `.html` output file has been excluded from the repository. You can generate it by knitting the `.Rmd` file in RStudio.
