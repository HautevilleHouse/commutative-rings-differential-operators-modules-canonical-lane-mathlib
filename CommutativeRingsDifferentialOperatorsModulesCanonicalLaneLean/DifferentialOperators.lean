import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

structure DifferentialOperatorPackage (R : Type u) [CommRing R] (A : Type v) [CommRing A] [Algebra R A] where
  derivationModule : Type w
  [instModule : Module A derivationModule]
  universalEnvelopingAlgebra : Type w'
  [instAlgebra : Algebra R universalEnvelopingAlgebra]
  differentialOperatorOfOrderLE : Nat → derivationModule → (A →ₗ[R] A)
  linearEndomorphisms : Type w''
  [instLieRing : LieRing linearEndomorphisms]
  poincareBirkhoffWitt : Prop
  poincareBirkhoffWittClosed : poincareBirkhoffWitt

structure DifferentialOperatorEvidence
    {R : Type u} [CommRing R] {A : Type v} [CommRing A] [Algebra R A]
    (D : DifferentialOperatorPackage R A) where
  poincareBirkhoffWittClosed : D.poincareBirkhoffWitt

def DifferentialOperatorClosed
    {R : Type u} [CommRing R] {A : Type v} [CommRing A] [Algebra R A]
    (D : DifferentialOperatorPackage R A) : Prop :=
  D.poincareBirkhoffWitt

theorem differential_operator_closed_from_evidence
    {R : Type u} [CommRing R] {A : Type v} [CommRing A] [Algebra R A]
    (D : DifferentialOperatorPackage R A) (E : DifferentialOperatorEvidence D) :
    DifferentialOperatorClosed D := by
  exact E.poincareBirkhoffWittClosed

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse