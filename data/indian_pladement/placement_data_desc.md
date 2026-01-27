# Indian Engineering Student Placement Dataset

## Overview
This dataset examines factors influencing campus placement outcomes for Indian engineering students. It combines comprehensive student profiles with actual placement results, enabling analysis of academic, skill-based, socioeconomic, and lifestyle predictors of recruitment success.

**Files**: 2 CSV files  
**Primary Records**: [N] students (from `indian_engineering_student_placement.csv`)  
**Target Records**: Placement outcomes (from `placement_targets.csv`)

---

## File 1: `indian_engineering_student_placement.csv`

### Dataset Structure
| Total Columns | Numeric | Categorical | Binary |
|---------------|---------|-------------|--------|
| 23 | 15 | 6 | 2 |

### Feature Categories & Descriptions

#### 🎓 **Academic Performance**
| Column | Type | Description | Sample Range |
|--------|------|-------------|--------------|
| `cgpa` | Float | Cumulative Grade Point Average (out of 10) | 6.86–8.74 |
| `tenth_percentage` | Float | 10th board exam percentage | 57.9–75.3 |
| `twelfth_percentage` | Float | 12th board exam percentage | 51.4–75 |
| `backlogs` | Integer | Number of failed/subject backlogs | 0–3 |
| `attendance_percentage` | Float | Average attendance % | 62.5–81.7 |

#### 💻 **Technical Skills & Experience**
| Column | Type | Description | Sample Range |
|--------|------|-------------|--------------|
| `projects_completed` | Integer | Number of academic/projects | 3–8 |
| `internships_completed` | Integer | Number of internships | 1–3 |
| `coding_skill_rating` | Integer | Self-rated coding skill (1-5) | 2–5 |
| `hackathons_participated` | Integer | Number of hackathons joined | 1–6 |
| `certifications_count` | Integer | Number of skill certifications | 1–4 |

#### 🗣️ **Soft Skills**
| Column | Type | Description | Sample Range |
|--------|------|-------------|--------------|
| `communication_skill_rating` | Integer | Self-rated communication (1-5) | 1–5 |
| `aptitude_skill_rating` | Integer | Self-rated aptitude (1-5) | 3–5 |

#### 🏠 **Socioeconomic & Background**
| Column | Type | Values | Sample |
|--------|------|--------|--------|
| `gender` | Categorical | Male, Female | Mixed |
| `branch` | Categorical | ECE, IT, CSE | ECE dominant in sample |
| `family_income_level` | Categorical | Low, Medium, High | Medium prevalent |
| `city_tier` | Categorical | Tier 1, 2, 3 | Mixed representation |
| `part_time_job` | Binary | Yes, No | Mixed |

#### ⏰ **Lifestyle & Habits**
| Column | Type | Description | Sample Range |
|--------|------|-------------|--------------|
| `study_hours_per_day` | Float | Daily study hours | 1.5–6.3 |
| `sleep_hours` | Float | Average nightly sleep | 6–8.8 |
| `stress_level` | Integer | Self-reported stress (1-10) | 2–10 |

#### 🌐 **Resources & Involvement**
| Column | Type | Values | Sample |
|--------|------|--------|--------|
| `internet_access` | Binary | Yes, No | All Yes in sample |
| `extracurricular_involvement` | Categorical | Low, Medium, High | Mixed |

---

## File 2: `placement_targets.csv`

### Target Variables
| Column | Type | Description | Sample Range |
|--------|------|-------------|--------------|
| `Student_ID` | Integer | Links to primary dataset | 1–7+ |
| `placement_status` | Categorical | Placement outcome | Placed/Not Placed |
| `salary_lpa` | Float | Annual salary offer (₹ Lakhs) | ₹10.97–17.73 LPA |

---

