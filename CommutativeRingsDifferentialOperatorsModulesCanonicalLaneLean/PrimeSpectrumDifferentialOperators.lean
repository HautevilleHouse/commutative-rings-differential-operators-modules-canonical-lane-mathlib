import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

structure PrimeSpectrumDifferentialOperatorsPackage where
  commutativeRing : Type u
  primeIdealSet : Set (Ideal commutativeRing)
  sheafOfRings : Type v
  differentialOperatorSheaf : Type w
  ringStructure : CommRing commutativeRing
  sheafStructure : Sheaf CommRing commutativeRing primeIdealSet sheafOfRings
  operatorSheafStructure : SheafCommAlg commutativeRing differentialOperatorSheaf
  idealsDistinguishPoints : Prop
  differentialOperatorsLocalized : Prop
  riemannRochVariantComputed : Prop

structure PrimeSpectrumDifferentialOperatorsEvidence (P : PrimeSpectrumDifferentialOperatorsPackage) where
  idealsDistinguishPointsClosed : P.idealsDistinguishPoints
  differentialOperatorsLocalizedClosed : P.differentialOperatorsLocalized
  riemannRochVariantComputedClosed : P.riemannRochVariantComputed

def PrimeSpectrumDifferentialOperatorsClosed (P : PrimeSpectrumDifferentialOperatorsPackage) : Prop :=
  P.idealsDistinguishPoints ∧ P.differentialOperatorsLocalized ∧ P.riemannRochVariantComputed

theorem prime_spectrum_differential_operators_closed_from_evidence
    (P : PrimeSpectrumDifferentialOperatorsPackage)
    (E : PrimeSpectrumDifferentialOperatorsEvidence P) :
    PrimeSpectrumDifferentialOperatorsClosed P := by
  exact And.intro E.idealsDistinguishPointsClosed
    (And.intro E.differentialOperatorsLocalizedClosed E.riemannRochVariantComputedClosed)

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse
