# Olympic Medal Winners Data Description

## Dataset Source
**Olympic medal winners: every one since 1896 as open data**  
[The Guardian Datablog](https://www.theguardian.com/sport/datablog/2012/jun/25/olympic-medal-winner-list-data)

## Column Descriptions

| Column | Type | Description |
|--------|------|-------------|
| `City` | Categorical | **Host city** of the Olympic Games |
| `Edition` | Categorical | **Olympic edition** (City + Year, e.g. "Athens 1896") |
| `Sport` | Categorical | **Sport** (e.g. "Aquatics", "Athletics") |
| `Discipline` | Categorical | **Specific discipline** within sport (e.g. "Swimming", "Athletics") |
| `Athlete` | Categorical | **Full name** of medal-winning athlete |
| `NOC` | Categorical | **National Olympic Committee** 3-letter code (e.g. HUN=Hungary, GRE=Greece) |
| `Gender` | Categorical | **Athlete gender** (Men/Women) |
| `Event` | Categorical | **Specific event** (e.g. "100m freestyle", "100m") |
| `Event_gender` | Categorical | **Event gender** (M=Men, W=Women) |
| `Medal` | Categorical | **Medal type** (Gold, Silver, Bronze) |

## Example Data
| City | Edition | Sport | Discipline | Athlete | NOC | Gender | Event | Event_gender | Medal |
|------|---------|-------|------------|---------|-----|--------|-------|--------------|-------|
| Athens | 1896 | Aquatics | Swimming | HAJOS, Alfred | HUN | Men | 100m freestyle | M | Gold |
| Athens | 1896 | Aquatics | Swimming | HERSCHMANN, Otto | AUT | Men | 100m freestyle | M | Silver |
| Athens | 1896 | Aquatics | Swimming | DRIVAS, Dimitrios | GRE | Men | 100m freestyle for sailors | M | Bronze |
| Athens | 1896 | Athletics | Athletics | BURKE, Thomas | USA | Men | 100m | M | Gold |
| Athens | 1896 | Athletics | Athletics | HOFMANN, Fritz | GER | Men | 100m | M | Silver |