import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

structure ModuleWithConnectionPackage (R : Type u) [CommRing R] (A : Type v) [CommRing A] [Algebra R A] (M : Type w) [AddCommGroup M] [Module A M] where
  connection : A → M → M
  connectionLinearInDirection : Prop
  connectionLeibnizRule : Prop
  curvature : (A → A → M → M) → Prop
  curvatureClosed : Prop
  flatConnection : Prop
  connectionLinearInDirectionClosed : connectionLinearInDirection
  connectionLeibnizRuleClosed : connectionLeibnizRule
  curvatureClosedTerm : curvatureClosed
  flatConnectionTerm : flatConnection

structure ModuleWithConnectionEvidence
    {R : Type u} [CommRing R] {A : Type v} [CommRing A] [Algebra R A] {M : Type w} [AddCommGroup M] [Module A M]
    (C : ModuleWithConnectionPackage R A M) where
  connectionLinearInDirectionClosed : C.connectionLinearInDirection
  connectionLeibnizRuleClosed : C.connectionLeibnizRule
  curvatureClosedTerm : C.curvatureClosed
  flatConnectionTerm : C.flatConnection

def ModuleWithConnectionClosed
    {R : Type u} [CommRing R] {A : Type v} [CommRing A] [Algebra R A] {M : Type w} [AddCommGroup M] [Module A M]
    (C : ModuleWithConnectionPackage R A M) : Prop :=
  C.connectionLinearInDirection ∧ C.connectionLeibnizRule ∧ C.curvatureClosed ∧ C.flatConnection

theorem module_with_connection_closed_from_evidence
    {R : Type u} [CommRing R] {A : Type v} [CommRing A] [Algebra R A] {M : Type w} [AddCommGroup M] [Module A M]
    (C : ModuleWithConnectionPackage R A M) (E : ModuleWithConnectionEvidence C) :
    ModuleWithConnectionClosed C := by
  exact And.intro E.connectionLinearInDirectionClosed
    (And.intro E.connectionLeibnizRuleClosed
      (And.intro E.curvatureClosedTerm E.flatConnectionTerm))

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse