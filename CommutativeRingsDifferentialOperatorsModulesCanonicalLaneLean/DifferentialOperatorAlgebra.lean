import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean

structure DifferentialOperatorAlgebra (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] where
  operators : Type w
  zero : operators
  one : operators
  add : operators → operators → operators
  mul : operators → operators → operators
  smul : R → operators → operators
  apply : operators → M → M
  add_assoc : ∀ a b c : operators, add (add a b) c = add a (add b c)
  zero_add : ∀ a : operators, add zero a = a
  add_zero : ∀ a : operators, add a zero = a
  add_comm : ∀ a b : operators, add a b = add b a
  mul_assoc : ∀ a b c : operators, mul (mul a b) c = mul a (mul b c)
  one_mul : ∀ a : operators, mul one a = a
  mul_one : ∀ a : operators, mul a one = a
  left_distrib : ∀ a b c : operators, mul a (add b c) = add (mul a b) (mul a c)
  right_distrib : ∀ a b c : operators, mul (add a b) c = add (mul a c) (mul b c)
  smul_add : ∀ (r : R) (a b : operators), smul r (add a b) = add (smul r a) (smul r b)
  add_smul : ∀ (r s : R) (a : operators), smul (r + s) a = add (smul r a) (smul s a)
  mul_smul : ∀ (r s : R) (a : operators), smul (r * s) a = smul r (smul s a)
  one_smul : ∀ a : operators, smul 1 a = a
  smul_mul_assoc : ∀ (r : R) (a b : operators), smul r (mul a b) = mul (smul r a) b
  mul_smul_assoc : ∀ (r : R) (a b : operators), mul a (smul r b) = smul r (mul a b)
  apply_zero : apply zero = (0 : M → M)
  apply_one : apply one = id
  apply_add : ∀ (a b : operators), apply (add a b) = apply a + apply b
  apply_mul : ∀ (a b : operators), apply (mul a b) = (apply a) ∘ (apply b)
  apply_smul : ∀ (r : R) (a : operators), apply (smul r a) = (fun m : M => r • (apply a m))

end CommutativeRingsDifferentialOperatorsModulesCanonicalLaneLean
end HautevilleHouse