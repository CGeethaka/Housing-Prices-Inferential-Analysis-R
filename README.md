# Housing Prices Inferential Analysis in R

## 📌 Project Overview

This project demonstrates **inferential analysis and regression modeling** on the **Boston Housing Dataset** using **R**.  
The goal is to explore relationships between housing features (e.g., number of rooms, % lower status population, pupil–teacher ratio) and the **median house price (`MEDV`)**, and build predictive models using **linear regression**.

The analysis includes:  
- Descriptive statistics (mean, median, distribution)  
- Visualizations: histograms, scatter plots, and boxplots  
- Correlation analysis  
- Simple and multiple linear regression  
- Diagnostic plots for regression model evaluation  

---

## 📊 Dataset

**Boston Housing Dataset** ([Kaggle link](https://www.kaggle.com/datasets/schirmerchad/bostonhoustingmlnd?resource=download))  

This dataset contains **506 observations** of housing data in Boston suburbs. Each row represents a census tract, with several socio-economic and structural attributes used to predict **median home value (`MEDV`)**.  

### Features (Variables)

| Variable  | Description |
|-----------|-------------|
| `CRIM`   | Per capita crime rate by town |
| `ZN`     | Proportion of residential land zoned for lots over 25,000 sq.ft. |
| `INDUS`  | Proportion of non-retail business acres per town |
| `CHAS`   | Charles River dummy variable (1 if tract bounds river; 0 otherwise) |
| `NOX`    | Nitric oxides concentration (parts per 10 million) |
| `RM`     | Average number of rooms per dwelling |
| `AGE`    | Proportion of owner-occupied units built prior to 1940 |
| `DIS`    | Weighted distances to five Boston employment centres |
| `RAD`    | Index of accessibility to radial highways |
| `TAX`    | Full-value property-tax rate per $10,000 |
| `PTRATIO`| Pupil–teacher ratio by town |
| `B`      | 1000(Bk – 0.63)² where Bk is proportion of blacks |
| `LSTAT`  | % lower status population |
| `MEDV`   | Median value of owner-occupied homes (Target variable) |

> ⚠️ Note: Some variables such as race-related proxies (`B`) have ethical concerns. Use responsibly.

---

## 🛠 Project Structure

