# Housing Prices Inferential Analysis in R

## Project Overview

This project demonstrates **inferential analysis and regression modeling** on the **Boston Housing Dataset** using **R**.  
The goal is to explore relationships between housing features (e.g., number of rooms, % lower status population, pupil–teacher ratio) and the **median house price (`MEDV`)**, and build predictive models using **linear regression**.

The analysis includes:  
- Descriptive statistics (mean, median, distribution)  
- Visualizations: histograms, scatter plots, and boxplots  
- Correlation analysis  
- Simple and multiple linear regression  
- Diagnostic plots for regression model evaluation
  
## Screenshots

<img width="397" height="375" alt="01" src="https://github.com/user-attachments/assets/d628b552-b081-4143-8d99-349a8589ec5e" />

<img width="397" height="375" alt="Rplot2" src="https://github.com/user-attachments/assets/0c6fbdc1-40e8-47f2-b5fa-c40974caae19" />

<img width="397" height="375" alt="Rplot3" src="https://github.com/user-attachments/assets/0460bae9-929a-4fde-9c4d-fc9db8d0e7ec" />

<img width="397" height="375" alt="Rplot4" src="https://github.com/user-attachments/assets/034bb211-dae1-433d-8a3d-249ce78c8c3d" />

<img width="450" height="375" alt="Rplot5" src="https://github.com/user-attachments/assets/7c21c214-c1a4-4fe5-8bfd-e9dfccca9701" />







---

## Dataset

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



---

## Analysis Steps

1. **Load libraries**: `dplyr`, `ggplot2`, `readr`  
2. **Load dataset** from CSV  
3. **Inspect dataset**: `head()`, `str()`, `summary()`  
4. **Descriptive statistics**: `summary()` for key variables (`RM`, `LSTAT`, `PTRATIO`, `MEDV`)  
5. **Data visualization**:
   - Histogram of `MEDV`  
   - Scatter plots: `RM` vs `MEDV`, `LSTAT` vs `MEDV`  
   - Boxplot: `PTRATIO` vs `MEDV`  
6. **Correlation analysis** using `cor.test()`  
7. **Regression modeling**:
   - Simple linear regression: `MEDV ~ RM`  
   - Multiple linear regression: `MEDV ~ RM + LSTAT + PTRATIO`  
8. **Diagnostic plots** to assess model assumptions  

---

## How to Run

1. Clone the repository:

```bash
git clone https://github.com/CGeethaka/Housing-Prices-Inferential-Analysis-R.git


