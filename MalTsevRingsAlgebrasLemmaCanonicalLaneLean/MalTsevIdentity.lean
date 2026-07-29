import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MalTsevRingsAlgebrasLemmaCanonicalLaneLean.MalTsevAlgebraDefinition

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasLemmaCanonicalLaneLean

structure MalTsevIdentity (A : MalTsevRing) where
  malTsevOp : A.carrier → A.carrier → A.carrier
  malTsevLaw : ∀ x y z : A.carrier, malTsevOp x y z = A.add (A.mul x y) (A.mul (A.mul z x) z)

structure SatisfiesMalTsevIdentity (A : MalTsevRing) (M : MalTsevIdentity A) : Prop where
  lawHolds : ∀ x y z : A.carrier, M.malTsevOp x y z = A.add (A.mul x y) (A.mul (A.mul z x) z)

end MalTsevRingsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse