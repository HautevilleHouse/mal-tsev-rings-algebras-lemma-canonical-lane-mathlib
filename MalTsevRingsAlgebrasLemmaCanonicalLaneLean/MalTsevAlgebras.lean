import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasLemmaCanonicalLaneLean

structure MalTsevAlgebraPackage {R : Type u} [CommRing R] where
  carrier : Type v
  module : Module R carrier
  malTsevProduct : carrier → carrier → carrier
  bilinearity : Prop
  antiCommutativity : Prop
  malTsevIdentity : Prop
  admissibleClosure : AdmissibleClass

structure MalTsevAlgebraEvidence {R : Type u} [CommRing R] (A : MalTsevAlgebraPackage R) where
  bilinearityClosed : A.bilinearity
  antiCommutativityClosed : A.antiCommutativity
  malTsevIdentityClosed : A.malTsevIdentity
  admissibleClosureClosed : admittedClosure A.admissibleClosure

def MalTsevAlgebraClosed {R : Type u} [CommRing R] (A : MalTsevAlgebraPackage R) : Prop :=
  A.bilinearity ∧ A.antiCommutativity ∧ A.malTsevIdentity ∧ admittedClosure A.admissibleClosure

theorem mal_tsev_algebra_closed_from_evidence {R : Type u} [CommRing R] (A : MalTsevAlgebraPackage R) (E : MalTsevAlgebraEvidence A) :
    MalTsevAlgebraClosed A := by
  exact And.intro E.bilinearityClosed (And.intro E.antiCommutativityClosed (And.intro E.malTsevIdentityClosed E.admissibleClosureClosed))

end MalTsevRingsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse