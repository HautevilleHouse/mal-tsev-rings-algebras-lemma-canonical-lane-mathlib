import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasLemmaCanonicalLaneLean

structure MalTsevRing where
  carrier : Type u
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  zero : carrier
  add_assoc : ∀ a b c : carrier, add (add a b) c = add a (add b c)
  add_comm : ∀ a b : carrier, add a b = add b a
  zero_add : ∀ a : carrier, add zero a = a
  add_left_inv : ∀ a : carrier, add (add a (MalTsev.neg a)) zero = zero
  mul_assoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c)
  left_distrib : ∀ a b c : carrier, mul a (add b c) = add (mul a b) (mul a c)
  right_distrib : ∀ a b c : carrier, mul (add a b) c = add (mul a c) (mul b c)

structure MalTsevAlgebra (R : MalTsevRing) where
  carrier : Type u
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  smul : R → carrier → carrier
  zero : carrier
  add_assoc : ∀ a b c : carrier, add (add a b) c = add a (add b c)
  add_comm : ∀ a b c : carrier, add a b = add b a
  zero_add : ∀ a : carrier, add zero a = a
  add_left_inv : ∀ a : carrier, add (add a (MalTsev.neg a)) zero = zero
  mul_assoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c)
  left_distrib : ∀ a b c : carrier, mul a (add b c) = add (mul a b) (mul a c)
  right_distrib : ∀ a b c : carrier, mul (add a b) c = add (mul a c) (mul b c)
  smul_add : ∀ r : R, ∀ a b : carrier, smul r (add a b) = add (smul r a) (smul r b)
  smul_mul_assoc : ∀ r : R, ∀ a b : carrier, smul r (mul a b) = mul (smul r a) b
  mul_smul_assoc : ∀ r : R, ∀ a b : carrier, mul a (smul r b) = smul r (mul a b)

end MalTsevRingsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse