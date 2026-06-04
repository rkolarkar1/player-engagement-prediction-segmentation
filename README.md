# Player Engagement Prediction and Persona Segmentation

## Project Overview

This project uses the Kaggle **Predict Online Gaming Behavior Dataset** to analyse online player behaviour, create player personas, and predict player engagement level.

The project is aligned to gaming/publishing insight responsibilities such as:

- Expanding and enhancing segmentation models
- Creating customer/player personas
- Testing and validating ML models
- Exploring player behaviour data to identify meaningful trends
- Translating model outputs into practical retention and engagement recommendations

## Dataset

Dataset source:

**Kaggle: Predict Online Gaming Behavior Dataset**  
Dataset slug:

```bash
rabieelkharoua/predict-online-gaming-behavior-dataset
```

Features:

```text
PlayerID
Age
Gender
Location
GameGenre
PlayTimeHours
InGamePurchases
GameDifficulty
SessionsPerWeek
AvgSessionDurationMinutes
PlayerLevel
AchievementsUnlocked
EngagementLevel
```

Target column:

```text
EngagementLevel
```

Classes:

```text
Low
Medium
High
```

## How to Download the Dataset

### Option 1: Manual Download

1. Go to Kaggle.
2. Search for: `Predict Online Gaming Behavior Dataset`.
3. Download the CSV.
4. Place the CSV file inside the `data/` folder.

The notebook automatically detects the first CSV file inside `data/`.

### Option 2: Kaggle API

Install Kaggle API:

```bash
pip install kaggle
```

Then run:

```bash
kaggle datasets download -d rabieelkharoua/predict-online-gaming-behavior-dataset -p data --unzip
```

## Tools Used

- Python
- Pandas
- NumPy
- Matplotlib
- Scikit-learn
- Logistic Regression
- Random Forest
- Gradient Boosting
- K-Means Clustering

## Methodology

1. Load Kaggle player behaviour dataset
2. Validate expected columns
3. Conduct exploratory data analysis
4. Analyse engagement by genre, location, difficulty and purchase behaviour
5. Create player personas using K-Means clustering
6. Train multi-class classification models to predict engagement level
7. Validate models using accuracy, precision, recall, F1-score and ROC-AUC
8. Identify important engagement drivers
9. Translate outputs into business recommendations


## Repository Structure

```text
player-engagement-kaggle/
│
├── README.md
├── requirements.txt
├── portfolio_text.md
├── sql_player_engagement_analysis.sql
├── data/
│   └── place Kaggle CSV here
├── notebooks/
│   └── player_engagement_prediction_kaggle.ipynb
├── src/
│   └── helper_functions.py
└── images/
    └── generated charts after running notebook
```
