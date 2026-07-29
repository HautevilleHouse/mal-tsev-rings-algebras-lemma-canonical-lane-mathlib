import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasLemmaCanonicalLaneLean

structure MalTsevRing where
  carrier : Type u
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  zero : carrier
  one : carrier
  addAssoc : ∀ a b c : carrier, add (add a b) c = add a (add b c)
  addComm : ∀ a b : carrier, add a b = add b a
  zeroAdd : ∀ a : carrier, add zero a = a
  addZero : ∀ a : carrier, add a zero = a
  addLeftNeg : ∀ a : carrier, ∃ b : carrier, add a b = zero
  mulAssoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c)
  oneMul : ∀ a : carrier, mul one a = a
  mulOne : ∀ a : carrier, mul a one = a
  leftDistrib : ∀ a b c : carrier, mul a (add b c) = add (mul a b) (mul a c)
  rightDistrib : ∀ a b c : carrier, mul (add a b) c = add (mul a c) (mul b c)

structure MalTsevRingAdmissibleObject where
  ring : MalTsevRing
  malTsevIdentity : Prop
  identityDerived : malTsevIdentity

structure MalTsevRingWitnessClosed (O : MalTsevRingAdmissibleObject) : Prop where
  malTsevIdentity : O.malTsevIdentity

structure MalTsevAlgebra where
  carrier : Type u
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  scalarMul : carrier → carrier → carrier
  zero : carrier
  one : carrier
  addAssoc : ∀ a b c : carrier, add (add a b) c = add a (add b c)
  addComm : ∀ a b c : carrier, add a b = add b a
  zeroAdd : ∀ a : carrier, add zero a = a
  addZero : ∀ a : carrier, add a zero = a
  addLeftNeg : ∀ a : carrier, ∃ b : carrier, add a b = zero
  mulAssoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c)
  oneMul : ∀ a : carrier, mul one a = a
  mulOne : ∀ a : carrier, mul a one = a
  leftDistrib : ∀ a b c : carrier, mul a (add b c) = add (mul a b) (mul a c)
  rightDistrib : ∀ a b c : carrier, mul (add a b) c = add (mul a c) (mul b c)
  scalarMulAssoc : ∀ a b c : carrier, scalarMul (scalarMul a b) c = scalarMul a (scalarMul b c)
  scalarMulOne : ∀ a : carrier, scalarMul a one = a

structure MalTsevAlgebraAdmissibleObject where
  algebra : MalTsevAlgebra
  malTsevAlgebraIdentity : Prop
  identityDerived : malTsevAlgebraIdentity

end MalTsevRingsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse