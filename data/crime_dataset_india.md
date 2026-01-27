# Indian Crimes Dataset

## Overview
Comprehensive crime incident dataset capturing detailed case-level information across major Indian cities. Tracks crime reporting, occurrence details, victim demographics, weapons, police response, and case resolution status for criminology, public safety, and law enforcement analytics.

**Primary File**: `crime_dataset_india.csv` (single file dataset)  
**Records**: Multi-year crime incidents across Indian metro cities  
**Structure**: 14 columns spanning incident timeline, victim profile, crime type, and resolution metrics

---

## Dataset Structure
| Total Columns | Temporal | Victim | Crime Details | Response | Outcome |
|---------------|----------|--------|---------------|----------|---------|
| 14 | 5 | 2 | 5 | 2 | 3 |

---

## Feature Categories & Descriptions

### 📅 **Temporal Information**
| Column | Type | Description | Sample |
|--------|------|-------------|--------|
| `Report Number` | Integer | Unique case identifier | 1, 2, 3... |
| `Date Reported` | DateTime | When crime was reported | 02-01-2020 00:00 |
| `Date of Occurrence` | DateTime | Actual crime date | 01-01-2020 00:00 |
| `Time of Occurrence` | DateTime | Exact time of incident | 01-01-2020 01:11 |
| `Date Case Closed` | DateTime | Resolution date (if closed) | 29-04-2020 05:00 |

### 👥 **Victim Demographics**
| Column | Type | Description | Sample |
|--------|------|-------------|--------|
| `Victim Age` | Integer | Victim age at incident | 16, 37, 48 |
| `Victim Gender` | Categorical | Victim gender | M (Male), F (Female) |

### 🔪 **Crime Characteristics**
| Column | Type | Description | Sample |
|--------|------|-------------|--------|
| `City` | Categorical | Incident city | Ahmedabad, Chennai, Delhi, Pune |
| `Crime Code` | Integer | Standardized crime code | 576, 128, 271 |
| `Crime Description` | Categorical | Crime type | IDENTITY THEFT, HOMICIDE, KIDNAPPING |
| `Weapon Used` | Categorical | Weapon involved | Blunt Object, Poison, Firearm |
| `Crime Domain` | Categorical | Broad category | Violent Crime, Other Crime |

### 👮 **Police & Resolution**
| Column | Type | Description | Sample |
|--------|------|-------------|--------|
| `Police Deployed` | Integer | Officers assigned to case | 1, 9, 13, 15, 18 |
| `Case Closed` | Binary | Resolution status | Yes, No |
| `Date Case Closed` | DateTime | Closure timestamp | 08-01-2020 21:00 |

---

