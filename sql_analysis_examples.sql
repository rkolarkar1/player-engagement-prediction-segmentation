-- SQL-style analysis examples for the Kaggle online gaming behaviour dataset

-- 1. Engagement distribution
SELECT
    EngagementLevel,
    COUNT(*) AS player_count
FROM online_gaming_behavior
GROUP BY EngagementLevel
ORDER BY player_count DESC;

-- 2. Engagement by game genre
SELECT
    GameGenre,
    EngagementLevel,
    COUNT(*) AS player_count
FROM online_gaming_behavior
GROUP BY GameGenre, EngagementLevel
ORDER BY GameGenre, player_count DESC;

-- 3. Average behaviour by engagement level
SELECT
    EngagementLevel,
    AVG(PlayTimeHours) AS avg_play_time_hours,
    AVG(SessionsPerWeek) AS avg_sessions_per_week,
    AVG(AvgSessionDurationMinutes) AS avg_session_duration,
    AVG(PlayerLevel) AS avg_player_level,
    AVG(AchievementsUnlocked) AS avg_achievements
FROM online_gaming_behavior
GROUP BY EngagementLevel;

-- 4. Purchase behaviour by engagement level
SELECT
    InGamePurchases,
    EngagementLevel,
    COUNT(*) AS player_count
FROM online_gaming_behavior
GROUP BY InGamePurchases, EngagementLevel
ORDER BY InGamePurchases, player_count DESC;

-- 5. High-potential medium engagement players
SELECT
    PlayerID,
    GameGenre,
    PlayTimeHours,
    SessionsPerWeek,
    AvgSessionDurationMinutes,
    PlayerLevel,
    AchievementsUnlocked,
    EngagementLevel
FROM online_gaming_behavior
WHERE EngagementLevel = 'Medium'
  AND SessionsPerWeek >= 3
  AND PlayerLevel >= 20
ORDER BY SessionsPerWeek DESC, PlayerLevel DESC;
