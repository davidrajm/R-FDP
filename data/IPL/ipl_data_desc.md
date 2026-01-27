# Indian Premier League (IPL) Complete Dataset

## Overview
The definitive IPL cricket dataset combines **match-level metadata** (`matches.csv`) with **ball-by-ball play data** (`deliveries.csv`), providing granular analysis of T20 cricket dynamics across 17+ seasons (2008–2025). Perfect for player performance tracking, team strategy analysis, venue effects, and predictive modeling.

**Files**: 2 CSV files  
**Total Records**: 100K+ deliveries, 1K+ matches  
**Time Coverage**: IPL 2008–2025 seasons

---

## File 1: `matches.csv` - Match Summary Data

### Dataset Structure
| Total Columns | 18 | **Records**: 1,000+ matches |
|----------------|-----|----------------------------|

### Feature Categories

#### 📅 **Match Metadata**
| Column | Type | Description | Sample |
|--------|------|-------------|--------|
| `id` | Integer | Unique match ID (links to deliveries) | 1, 2, 335599 |
| `season` | Integer | IPL year | 2008, 2017, 2024 |
| `city` | Categorical | Host city | Hyderabad, Mumbai, Bengaluru |
| `date` | Date | Match date | 05-04-2017 |
| `venue` | Categorical | Stadium name | Rajiv Gandhi Intl. Stadium |

#### 🏆 **Teams & Results**
| Column | Type | Description | Sample |
|--------|------|-------------|--------|
| `team1`, `team2` | Categorical | Competing teams | SRH vs RCB |
| `toss_winner` | Categorical | Toss winner | RCB |
| `toss_decision` | Categorical | Bat/Field | field |
| `winner` | Categorical | Match winner | Sunrisers Hyderabad |
| `result` | Categorical | Outcome type | normal, tie |
| `dl_applied` | Binary | DLS method used | 0, 1 |
| `win_by_runs` | Integer | Runs margin (chasing team loss) | 35, 15 |
| `win_by_wickets` | Integer | Wickets margin (0=chasing win) | 0, 7, 10 |

#### 🏅 **Awards & Officials**
| Column | Type | Description | Sample |
|--------|------|-------------|--------|
| `player_of_match` | Categorical | Best performer | Yuvraj Singh |
| `umpire1`, `umpire2`, `umpire3` | Categorical | Match officials | AY Dandekar |

---

## File 2: `deliveries.csv` - Ball-by-Ball Data

### Dataset Structure
| Total Columns | 21 | **Records**: 100K+ deliveries |
|----------------|-----|-------------------------------|

### Feature Categories

#### 🎯 **Ball Context**
| Column | Type | Description | Sample |
|--------|------|-------------|--------|
| `match_id` | Integer | Links to matches.csv | 1 |
| `inning` | Integer | 1st/2nd innings (1-2) | 1 |
| `over` | Integer | Over number (1-20) | 1, 2 |
| `ball` | Integer | Ball in over (1-6+) | 1, 2, 3 |
| `batting_team`, `bowling_team` | Categorical | Teams | SRH vs RCB |
| `is_super_over` | Binary | Super over ball | 0 |

#### 🏏 **Players Involved**
| Column | Type | Description | Sample |
|--------|------|-------------|--------|
| `batsman` | Categorical | Strike batsman | DA Warner |
| `non_striker` | Categorical | Non-striker | S Dhawan |
| `bowler` | Categorical | Bowler | TS Mills |
| `fielder` | Categorical | Fielder (if catch/runout) | Mandeep Singh |

#### 💥 **Runs & Extras**
| Column | Type | Description | Sample |
|--------|------|-------------|--------|
| `batsman_runs` | Integer | Runs scored by batsman | 0, 1, 2, 4, 6 |
| `extra_runs` | Integer | Wides/noball/bye total | 0, 1 |
| `wide_runs` | Integer | Wide runs | 0 |
| `bye_runs` | Integer | Byes | 0 |
| `legbye_runs` | Integer | Leg byes | 0, 1 |
| `noball_runs` | Integer | No-ball runs | 0 |
| `penalty_runs` | Integer | Penalty runs | 0 |
| `total_runs` | Integer | Ball total (bat+extra) | 0, 1, 2, 4, 6 |

#### 🛑 **Dismissals**
| Column | Type | Description | Sample |
|--------|------|-------------|--------|
| `player_dismissed` | Categorical | Dismissed batsman | DA Warner |
| `dismissal_kind` | Categorical | Dismissal type | caught, bowled, lbw |

---

