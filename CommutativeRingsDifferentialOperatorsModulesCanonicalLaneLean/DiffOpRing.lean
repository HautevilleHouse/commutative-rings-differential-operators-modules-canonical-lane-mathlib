import HautevilleHouse.CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean.AdmissibleClass
import Mathlib.RingTheory.Derivation.Basic

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

structure DifferentialOperator (R : Type u) [CommRing R] where
  order : ℕ
  symbol : R → R
  linear : Prop
  leibnizRule : Prop

structure RingOfDifferentialOperators (R : Type u) [CommRing R] where
  operators : Set (DifferentialOperator R)
  addition : operators → operators → operators
  multiplication : operators → operators → operators
  ringAxioms : Prop

structure DifferentialModule (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M]
  (D : RingOfDifferentialOperators R) where
  action : D.operators → M → M
  moduleAxioms : Prop
  leibnizRule : Prop

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse