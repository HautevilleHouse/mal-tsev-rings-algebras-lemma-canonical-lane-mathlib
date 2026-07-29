import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MalTsevRingsAlgebrasLemmaCanonicalLaneLean.MalTsevRingStructure

namespace HautevilleHouse
namespace MalTsevRingsAlgebrasLemmaCanonicalLaneLean

structure MalTsevCongruencePermeability where
  ring : MalTsevRing
  congruenceJoin : Prop
  congruenceMeet : Prop
  congruenceProduct : Prop
  congruentPermeability : Prop

structure MalTsevCongruencePermeabilityEvidence (C : MalTsevCongruencePermeability) where
  congruenceJoinClosed : C.congruenceJoin
  congruenceMeetClosed : C.congruenceMeet
  congruenceProductClosed : C.congruenceProduct
  congruentPermeabilityClosed : C.congruentPermeability

def MalTsevCongruencePermeabilityClosed (C : MalTsevCongruencePermeability) : Prop :=
  C.congruenceJoin ∧ C.congruenceMeet ∧ C.congruenceProduct ∧ C.congruentPermeability

theorem mal_tsev_congruence_permeability_closed_from_evidence
    (C : MalTsevCongruencePermeability) (E : MalTsevCongruencePermeabilityEvidence C) :
    MalTsevCongruencePermeabilityClosed C := by
  exact And.intro E.congruenceJoinClosed
    (And.intro E.congruenceMeetClosed
      (And.intro E.congruenceProductClosed E.congruentPermeabilityClosed))

end MalTsevRingsAlgebrasLemmaCanonicalLaneLean
end HautevilleHouse