import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

structure DifferentialOperatorRing (R : Type u) [CommRing R] where
  carrier : Type v
  ring : Ring carrier
  algebra : Algebra R carrier
  derivation : R → carrier
  derivationLinear : ∀ (r s : R), derivation (r + s) = derivation r + derivation s
  derivationLeibniz : ∀ (r s : R), derivation (r * s) = derivation r * algebra.algebraMap s + algebra.algebraMap r * derivation s
  diffOpComposition : carrier → carrier → carrier
  compositionAssoc : ∀ (P Q S : carrier), diffOpComposition (diffOpComposition P Q) S = diffOpComposition P (diffOpComposition Q S)
  compositionDistribLeft : ∀ (P Q S : carrier), diffOpComposition (P + Q) S = diffOpComposition P S + diffOpComposition Q S
  compositionDistribRight : ∀ (P Q S : carrier), diffOpComposition P (Q + S) = diffOpComposition P Q + diffOpComposition P S
  compositionSMul : ∀ (r : R) (P Q : carrier), diffOpComposition (algebra.algebraMap r * P) Q = algebra.algebraMap r * diffOpComposition P Q

def DifferentialOperatorRingClosed (R : Type u) [CommRing R] (D : DifferentialOperatorRing R) : Prop :=
  D.derivationLinear ∧ D.derivationLeibniz ∧ D.compositionAssoc ∧ D.compositionDistribLeft ∧ D.compositionDistribRight ∧ D.compositionSMul

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse
