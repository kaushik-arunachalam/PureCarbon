# PureCarbon: Deterministic Sectoral Footprint Modeling in Haskell

A capstone project for *Principles of Functional Languages* that demonstrates how purely functional programming can be applied to sustainability challenges.  
This project models **sectoral carbon footprints** using Haskell, ensuring deterministic, reproducible, and transparent emission calculations.

---

## 🌍 Project Overview
Carbon footprint estimation often suffers from inconsistent assumptions and opaque calculations.  
By leveraging Haskell’s **purity, type safety, and higher‑order functions**, this project provides:

- Deterministic emission intensity calculations (same inputs → same outputs).
- Strongly typed models for sectors, activities, and emission factors.
- Scenario simulation (e.g., efficiency improvements, renewable adoption).
- A mini DSL (domain‑specific language) for carbon accounting formulas.
- Extensible design for uncertainty modeling and parallel computation.

---

## 📂 Project Structure
CarbonFootprint/
├── Types.hs        -- Core type definitions
├── Calculator.hs   -- Emission calculations
├── Scenarios.hs    -- Scenario modeling & comparisons
├── DSL.hs          -- Mini DSL for footprint formulas
└── Main.hs         -- Entry point with examples

## ⚙️ How It Works
1. **Input Layer**: Sectoral activity data (energy consumed, tons produced, km traveled).  
2. **Mapping Layer**: Pure functions apply emission factors to each activity.  
3. **Aggregation Layer**: Results are folded into sectoral totals.  
4. **Scenario Layer**: Adjust inputs (e.g., 10% efficiency improvement) and recompute.  
5. **Output Layer**: Deterministic report of carbon intensities per sector.

---

## 🚀 Running the Project
Make sure you have GHC installed in your Codespace or local environment.

```bash
ghc Main.hs
./Main
```

---


## 🚀 Expected Output
=== Baseline Emissions ===
[(Agriculture,CarbonIntensity 250.0),
 (Manufacturing,CarbonIntensity 600.0),
 (Transport,CarbonIntensity 600.0),
 (ITServices,CarbonIntensity 120.0)]

=== Scenario: 10% Efficiency Improvement ===
[(Agriculture,CarbonIntensity 225.0),
 (Manufacturing,CarbonIntensity 540.0),
 (Transport,CarbonIntensity 540.0),
 (ITServices,CarbonIntensity 108.0)]

=== Emission Reductions (Baseline - Scenario) ===
[(Agriculture,CarbonIntensity 25.0),
 (Manufacturing,CarbonIntensity 60.0),
 (Transport,CarbonIntensity 60.0),
 (ITServices,CarbonIntensity 12.0)]

 ---

🔮 Extensions
1. Add uncertainty modeling with probability distributions.

2. Parallelize sectoral calculations using Control.Parallel.Strategies.

3. Export results to CSV/JSON for visualization in external tools.

4. Expand the DSL for richer carbon accounting formulas.

---

📌 Key Takeaways
1. Functional purity ensures reproducibility.

2. Type safety prevents unit mismatches.

3. Higher‑order functions simplify aggregation and scenario modeling.

4. Lazy evaluation makes large datasets efficient.
