"""
Helper functions for Player Engagement Prediction and Persona Segmentation.

Dataset expected:
Kaggle: rabieelkharoua/predict-online-gaming-behavior-dataset

Expected columns:
PlayerID, Age, Gender, Location, GameGenre, PlayTimeHours, InGamePurchases,
GameDifficulty, SessionsPerWeek, AvgSessionDurationMinutes, PlayerLevel,
AchievementsUnlocked, EngagementLevel
"""

from pathlib import Path
import pandas as pd


def find_csv_file(data_dir: str = "../data") -> Path:
    """Find the first CSV file inside the data directory."""
    data_path = Path(data_dir)
    csv_files = list(data_path.glob("*.csv"))

    if not csv_files:
        raise FileNotFoundError(
            f"No CSV file found in {data_path.resolve()}. "
            "Download the Kaggle dataset and place the CSV inside the data folder."
        )

    return csv_files[0]


def validate_columns(df: pd.DataFrame, required_columns: list) -> None:
    """Validate that required columns exist in the dataframe."""
    missing = [col for col in required_columns if col not in df.columns]

    if missing:
        raise ValueError(
            "Missing required columns: "
            + ", ".join(missing)
            + "\nAvailable columns: "
            + ", ".join(df.columns)
        )


def engagement_distribution(df: pd.DataFrame, target_col: str = "EngagementLevel") -> pd.DataFrame:
    """Return count and percentage distribution of engagement classes."""
    counts = df[target_col].value_counts().rename("player_count")
    pct = (df[target_col].value_counts(normalize=True) * 100).round(2).rename("percentage")
    return pd.concat([counts, pct], axis=1)
