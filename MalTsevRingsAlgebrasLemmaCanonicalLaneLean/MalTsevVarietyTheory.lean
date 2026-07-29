import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MalTsevRingsAlgebrasLemmaCanonicalLaneLean.MalTsevRingStructure

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasLemmaCanonicalLaneLean

structure MalTsevVariety where
  signature : Type u
  equations : List (List (Nat → Nat))
  varietyClosedUnderProducts : Prop
  varietyClosedUnderSubalgebras : Prop
  varietyClosedUnderHomomorphicImages : Prop

structure MalTsevVarietyEvidence (V : MalTsevVariety) where
  varietyClosedUnderProductsClosed : V.varietyClosedUnderProducts
  varietyClosedUnderSubalgebrasClosed : V.varietyClosedUnderSubalgebras
  varietyClosedUnderHomomorphicImagesClosed : V.varietyClosedUnderHomomorphicImages

def MalTsevVarietyClosed (V : MalTsevVariety) : Prop :=
  V.varietyClosedUnderProducts ∧ V.varietyClosedUnderSubalgebras ∧ V.varietyClosedUnderHomomorphicImages

theorem mal_tsev_variety_closed_from_evidence (V : MalTsevVariety) (E : MalTsevVarietyEvidence V) :
    MalTsevVarietyClosed V := by
  exact And.intro E.varietyClosedUnderProductsClosed
    (And.intro E.varietyClosedUnderSubalgebrasClosed E.varietyClosedUnderHomomorphicImagesClosed)

end MalTsevRingsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse